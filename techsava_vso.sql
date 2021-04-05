-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2020 at 09:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techsava_vso`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_roles`
--

CREATE TABLE `access_roles` (
  `access_role_id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_roles`
--

INSERT INTO `access_roles` (`access_role_id`, `user_type_id`, `created_on`, `updated_on`, `module_id`) VALUES
(1, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 1),
(2, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 1),
(3, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 1),
(4, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 1),
(5, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 2),
(6, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 2),
(7, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 2),
(8, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 2),
(9, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 3),
(10, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 3),
(11, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 3),
(12, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 3),
(13, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 4),
(14, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 4),
(15, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 4),
(16, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 4),
(17, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 5),
(18, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 5),
(19, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 5),
(20, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 5),
(21, 1, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 6),
(22, 2, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 6),
(23, 3, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 6),
(24, 4, '2020-04-25 11:52:00', '2020-04-25 11:52:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `AdmissionId` int(11) NOT NULL,
  `AdmissionNo` varchar(100) NOT NULL,
  `RegistrationId` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `DOA` varchar(10) DEFAULT NULL,
  `AdmissionTestMarks` int(11) NOT NULL,
  `DateDepositPaid` int(11) NOT NULL,
  `DOTest` int(11) DEFAULT NULL,
  `DORecords` int(11) DEFAULT NULL,
  `DOE` varchar(10) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL,
  `clubs` varchar(100) DEFAULT NULL,
  `activities` varchar(100) DEFAULT NULL,
  `transport` varchar(100) DEFAULT NULL,
  `exit_comments` text NOT NULL,
  `transcript_comments` text NOT NULL,
  `bbf` varchar(20) NOT NULL DEFAULT '0',
  `show_bbf` int(11) NOT NULL,
  `CurrentSession` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`AdmissionId`, `AdmissionNo`, `RegistrationId`, `Remarks`, `DOA`, `AdmissionTestMarks`, `DateDepositPaid`, `DOTest`, `DORecords`, `DOE`, `house`, `clubs`, `activities`, `transport`, `exit_comments`, `transcript_comments`, `bbf`, `show_bbf`, `CurrentSession`) VALUES
(3, '493X', 39, '', '1473109200', 0, 0, 0, 0, '1475303520', '197', '199', 'Little Einsteins, Swimming', '206', '', '', '-14500', 0, 'Year 9'),
(8, '486', 43, '', '1473109200', 0, -10800, 0, -10800, '1475305620', '', '', '', '', '', '', '0', 0, 'Year 9'),
(10, '507', 45, '', '1441659600', 0, -10800, 0, 1456174800, '1475305680', '195', '208', '', '206', '', '', '500', 0, 'Year 9'),
(11, '505', 44, '', '1441659600', 0, -10800, 0, 1456174800, '1475305680', '195', '211', 'Nil', '206', '', '', '-62500', 0, 'Year 9'),
(12, '500', 46, '', '1473109200', 0, -10800, 0, 1456174800, '1475305740', '198', '213', 'Coding and Robotics', '207', '', '', '-309000', 0, 'Year 9'),
(16, '526X', 49, '', '1473109200', 0, -10800, 0, 1456174800, '1475306280', '197', '199', 'Scouts,', '207', 'Craig is an extremely brilliant boy.He is hardworking and has met his expected goals. He has a wide circle of friends and is always ready to assist everyone at all times. We will surely miss him in our class. Keep the fire burning  Craig, we wish you well.', '', '0', 0, 'Year 9'),
(18, '502', 51, '', '1441659600', 0, 0, 0, 0, '1475307300', '196', '213', 'Piano', '207', '', '', '0', 0, 'Year 9'),
(19, '508', 52, '', '1473109200', 0, 0, 0, 0, '1475307420', '196', '199', 'Scouts,Tennis', '207', '', '', '0', 0, 'Year 9'),
(22, '512', 104, '', '1473109200', 0, 0, 0, 0, '1475307660', '198', '200', 'nil', '206', '', '', '0', 1, 'Year 9'),
(23, '428888', 82, '', '1441659600', 0, -10800, 0, -10800, '1475308560', '', '', '', '', '', '', '0', 0, 'Year 9'),
(24, '479', 63, '', '1441659600', 0, -10800, 0, -10800, '1475308620', '197', '209', 'nil', '207', '', '', '-240000', 0, NULL),
(25, '451X', 64, '', '1441659600', 0, -10800, 0, -10800, '1475308680', '198', '320', 'Scouts, Team Taining', '207', 'Alexander is an enthusiastic student who especially enjoys opportunities to choose and report back on his own learning activities. He listens carefully and contributes to class lessons. He is a pleasant, easy-going pupil who has enjoyed many aspects of his studies. He has great potential to soar to great heights. We will surely miss him. \n', '', '0', 1, NULL),
(26, '487', 109, '', '1473109200', 0, 0, 0, 0, '1475309640', '196', '331', 'nil', '207', '', '', '0', 0, NULL),
(27, '533', 110, '', '1473109200', 0, 0, 0, 0, '1475309760', '196', '343', '', '207', '', '', '0', 1, NULL),
(32, '516', 113, '', '1473109200', 0, 0, 0, 0, '1475310060', '195', '343', 'Nil', '207', '', '', '0', 0, NULL),
(35, '513X', 115, '', '1473109200', 0, 0, 0, 0, '1475310240', '198', '199', 'Little Einsteins, Swimming', '207', 'Jayson is a pleasant boy who makes friends with great ease. He works well in class and has made good progress especially his last year with us. He loves outdoor games and excels in them. We wish all the best and we will surely miss him.', '', '0', 0, NULL),
(36, '504X', 60, 'Sibling discount Piano', '1441659600', 0, 0, NULL, NULL, '1475310300', '196', '208', 'Piano', '207', '', '', '0', 0, NULL),
(37, '488', 117, '', '1473109200', 0, 0, 0, 0, '1475310420', '195', '208', 'Roller blading,Ballet', '207', 'Njeri has made fantastic progress in all areas of the curriculum during her time in Year 2. She has a wonderful ability to self-motivate and has\ntherefore met targets time and time again. An extremely admirable quality that Njeri processes is her ability never to become disheartened if she\nmakes a mistake but instead uses it as a learning tool to progress further this shows that she is a great self-manager. Njeri is an extremely popular\nmember of the class due to her kind and mature nature. All the best in Year 3!', '', '0', 0, NULL),
(40, 'C7', 58000, '', '1473109200', 0, 0, NULL, NULL, '1475311080', '', '', '', '', '', '', '0', 0, NULL),
(41, '514X', 116, '', '1473109200', 0, 0, 0, 0, '1475311260', '197', '208', 'Little Einsteins', '207', '', '', '0', 0, NULL),
(42, '510', 38, 'Sibling discount', '1473109200', 0, 0, 0, 0, '1475311560', '197', '200', 'Roller blading,', '207', '', '', '0', 0, NULL),
(45, '511', 41, '', '1473109200', 0, 0, 0, 0, '1475312400', '195', '208', 'nil', '207', '', '', '0', 0, NULL),
(46, '495', 42, '', '1473109200', 0, 0, 0, 0, '1475312520', '198', '200', 'Roller blading,Ballet', '207', 'Umutesi is confident and enjoys speaking in front of the class or taking on a leadership role within group work. She is a supportive leader,\ninspiring her peers and always has a positive attitude throughout the day. Umutesi has been awarded house points for being the most helpful girl\nin the class and for having the neatest locker during the term. Well done Umutesi, I wish you continued success as you move into Year 3.', '', '0', 0, NULL),
(48, '421r', 35, '', '1441659600', 0, -10800, 0, -10800, '1475314020', '', '', '', '', '', '', '0', 0, NULL),
(49, '501', 127, '', '1473109200', 0, 0, 0, 0, '1475315100', '196', '200', 'Art&Craft', '207', 'It has been a wonderful year teaching and getting to know Wangui! She is a delightful child and is very expressive about all topics discussed in our\nclass, its always wonderful to listen to her contributions. She is self motivated and always works to the best of her abilities. I wish her all the best in\nYear 3.\n', 'Craig has been an excellent student throughout the year. He is very responsible and turns in assignments in time. However, sometimes Craig tends to work too quickly, which results in him making errors. I have truly enjoyed being Craigâ€™s teacher and I wish him all the best in year three.', '0', 0, NULL),
(50, '522', 128, '', '1473109200', 0, 0, 0, 0, '1475315220', '196', '200', 'Roller blading', '207', '', '', '-4500', 0, NULL),
(51, '509l', 130, '', '1473109200', 0, -10800, 0, -10800, '1475318520', '', '', '', '', '', '', '0', 0, NULL),
(53, '529X', 133, '', '1473109200', 0, 0, 0, 0, '1476193740', '196', '199', 'Scouts,Swimming', '206', '', '', '0', 0, NULL),
(54, '167', 134, '', '1315256400', 0, -10800, 0, -10800, '1476248580', '198', '216', 'Swimming', '205', 'Ayden is polite to adults and peers in and out of the classroom. He arrives at school each day with a smile, ready to learn. Your constant cooperation and help in class is highly appreciated. However, there is need to be more attentive in the Mandarin lesson.', '', '-700', 0, NULL),
(55, '371X', 135, '', '1410210000', 0, -10800, 0, -10800, '1476249300', '197', '216', '', '207', 'Claire is a polite and hardworking student. She is well groomed and has great respect for teachers and fellow students. She has enthusiastically been participating in class activities like Bible study, PSHE and Morning Devotions. She was very active in Chapel presentation for the year 8 class. She has strong leadership skills and is very eloquent. Her social skills are excellent.', '', '-29100', 0, NULL),
(56, '174', 136, '', '1315256400', 0, -10800, 0, -10800, '1476249360', '197', '349', 'Trumpet, Soccer', '207', '', '', '-500', 0, NULL),
(57, '353', 137, '', '1398718800', 0, -10800, 0, -10800, '1476249420', '198', '216', 'Drums,Rollerblading,Soccer,Cricket', '207', 'Isaac is kind, caring, and friendly. His character makes him a role model to his classmates. He uses common sense to solve problems\nindependently and in a positive manner. He is respectful to others. However, there is need to portray the same in all lessons.\n', '', '0', 0, NULL),
(58, '197', 138, '', '1348434000', 0, -10800, 0, -10800, '1476249480', '196', '349', 'Soccer', '207', '', '', '0', 0, NULL),
(59, '273', 139, '', '1357592400', 0, -10800, 0, -10800, '1476249480', '195', '216', 'Orchestra', '207', '', '', '0', 0, NULL),
(60, '498', 140, '', '1473109200', 0, -10800, 0, -10800, '1476249540', '196', '349', 'Rounders', '207', '', '', '0', 0, NULL),
(61, '136', 141, '', '1283806800', 0, -10800, 0, -10800, '1476249540', '197', '218', 'Drums,Band,Swimming', '206', 'Paa kow cooperates generally and consistently with other students. He is a hard worker who is committed to doing his best. He has worked\ntirelessly this term to better his grades. However, he needs to show more respect for his peers and teachers.\n', '', '0', 0, NULL),
(62, '157X', 142, '', '1315256400', 0, -10800, 0, -10800, '1476249600', '196', '288', 'Soccer', '205', '', '', '-27510', 0, NULL),
(63, '159', 143, '', '1315256400', 0, -10800, 0, -10800, '1476249600', '195', '216', 'Clarinet,Orchestra,Swimming', '206', '', '', '0', 0, NULL),
(65, '416', 144, '', '1441659600', 0, -10800, 0, -10800, '1476251520', '198', '216', 'Soccer,Swimming,Guitar,Band', '205', 'Caelan is a dedicated student. He is considerate towards his peers at all times and continues to make a positive contribution to the class through\ncheerfulness, enthusiasm and perseverance. He is a valued member of the class and i am very proud of his achievements.', '', '87616.05', 0, NULL),
(66, '89X', 145, '', '1283806800', 0, -10800, 0, -10800, '1476251520', '197', '216', 'Nil', '207', '', '', '0', 0, NULL),
(67, '247', 146, '', '1346706000', 0, -10800, 0, -10800, '1476251580', '195', '218', 'Soccer', '206', '', '', '0', 0, NULL),
(68, '528', 147, '', '1473109200', 0, -10800, 0, -10800, '1476251580', '197', '216', 'Soccer', '207', '', 'Ethan is diligent and a capable student who is eager to learn new skills and always tries hard to do his best. Well done Ethan!\n\nMr. Atsiaya\nYear 4B\nClass Teacher', '5500', 0, NULL),
(69, '156XX', 148, '', '1303938000', 0, -10800, 0, -10800, '1476251580', '196', '218', 'Nil', '206', '', '', '60500', 0, NULL),
(70, '401X', 149, '', '1428354000', 0, -10800, 0, -10800, '1476251640', '196', '321', 'Soccer', '207', 'Jude is a friendly within and outside the class.He is an enthusiastic student who has potential in many areas of school life and has good working habits which include diligence, competence as well as a team player.\nWe have enjoyed having him in the school.', '', '-237125', 0, NULL),
(71, '467', 150, '', '1442178000', 0, -10800, 0, -10800, '1476251640', '196', '216', 'Guitar,Band Club,Makerfuse', '207', 'Kyle is a friendly student. He is considerate towards his peers at all times and continues to make a positive contribution to the class through\ncheerfulness, enthusiasm and perseverance. He is a valued member of the class and we are very proud of his achievements.\n', '', '0', 0, NULL),
(72, '90X', 151, '', '1283806800', 0, -10800, 0, -10800, '1476251760', '195', '328', 'Nil', '207', '', '', '-24300', 0, NULL),
(73, '248', 152, '', '1346706000', 0, -10800, 0, -10800, '1476251760', '198', '218', 'Flite,Swimming,Soccer,Rounders', '206', '', '', '0', 0, NULL),
(74, '484', 153, '', '1462222800', 0, -10800, 0, -10800, '1476251820', '198', '199', 'Swimming', '206', '', '', '25450', 0, NULL),
(75, '79', 156, '', '1252357200', 0, -10800, 0, -10800, '1476252120', '196', '216', 'Rounders,Soccer', '206', '', '', '0', 0, NULL),
(76, '85', 157, '', '1252357200', 0, -10800, 0, -10800, '1476252180', '198', '218', 'Soccer', '207', 'Jason has improved steadily. There has been a noticeable improvement in his study habits this reporting period, which is very encouraging. I am\nhoping this recent interest and improvement will continue.', '', '-35000', 0, NULL),
(77, '497', 158, '', '1473109200', 0, -10800, 0, -10800, '1476252180', '195', '216', 'Cricket,Soccer', '207', 'Johan is a delightful and polite student. He has made significant progress in his social interaction and habits. He is a valued member of the class\nand we are very proud of his achievements.\n', '', '-280000', 0, NULL),
(78, '466', 159, '', '1442178000', 0, -10800, 0, -10800, '1476252240', '195', '218', 'Drums,Band,', '207', 'Kevin always approaches lessons with a positive learning attitude. He is an enthusiastic student. He contributes thoughtfully to class discussions.\nHe is particularly doing well in his class work. An excellent term with great progress being made', '', '0', 0, NULL),
(79, '80X', 160, '', '1283806800', 0, -10800, 0, -10800, '1476252300', '196', '218', 'Makerfuse,Trupmpet', '207', 'Muriithi is a very friendly member of the class. He is courteous and shows good manners inside and outside classroom. His sense of responsibility is now evident. I have continued to enjoy having him in my class. Keep up Muriithi!', '', '-8000', 0, NULL),
(80, '107', 161, '', '1283806800', 0, -10800, 0, -10800, '1476252360', '195', '218', 'Cricket,Soccer', '206', 'Kobina is a delightful and polite student. He has made significant progress in his social interaction and habits. He is a valued member of the class\nand we are very proud of his achievements in general.\n', '', '0', 0, NULL),
(81, '400', 162, '', '1422306000', 0, -10800, 0, -10800, '1476252420', '196', '199', 'Makerfuse', '207', 'Steven is a delightful and polite student. He has made significant progress in his social interaction and habits. He is a valued member of the class\nand we are very proud of his achievements in general.', '', '0', 0, NULL),
(82, '55', 163, '', '1220302800', 0, 0, 0, 0, '1476253200', '197', '217', 'Cricket,Soccer', '206', '', '', '0', 0, NULL),
(83, '373', 164, '', '1410210000', 0, 0, 0, 0, '1476253200', '198', '218', 'Guitar,Rounders,Soccer', '207', '', '', '0', 0, NULL),
(84, '60', 165, '', '1241470800', 0, 0, 0, 0, '1476253260', '198', '217', 'Soccer,Cricket,Swimming.', '206', '', '', '400', 0, NULL),
(85, '59', 166, '', '1252357200', 0, -10800, 0, -10800, '1476253260', '196', '217', 'Soccer,Cricket,Swimming.', '207', '', '', '0', 0, NULL),
(86, '440', 65, '', '1390165200', 0, 0, NULL, NULL, '1476253260', '195', '200', 'Golf,Scouts', '207', '', '', '0', 0, NULL),
(87, '52', 167, '', '1473109200', 0, 0, 0, 0, '1476253260', '197', '216', 'nil', '207', '', '', '0', 0, NULL),
(88, '435', 66, '', '1441659600', 0, 0, NULL, NULL, '1476253320', '197', '329', 'Scouts', '207', '', '', '-190500', 0, NULL),
(89, '37', 168, '', '1202158800', 0, -10800, 0, -10800, '1476253320', '195', '217', 'Rounders,Soccer', '206', '', '', '239450', 0, NULL),
(90, '196', 169, '', '1326142800', 0, -10800, 0, -10800, '1476253320', '197', '217', 'Rounders,Soccer', '207', '', '', '-16000', 0, NULL),
(91, '62', 170, '', '1232917200', 0, 0, 0, 0, '1476253320', '197', '217', 'Drums,Cricket,Swimming', '207', '', '', '-40000', 1, NULL),
(92, '417X', 68, '', '1441659600', 0, 0, NULL, NULL, '1476253320', '196', '288', 'Little Einsteins,Swimming', '207', '', '', '0', 0, NULL),
(93, '32', 171, '', '1188853200', 0, 0, 0, 0, '1476253380', '195', '217', 'Cricket', '207', 'Furaha is a highly motivated student with an intellect and a foundation that has prepared him well for the challenges he may encounter. I see no reason that he will be anything other than an excellent addition to your program, and I therefore recommend him without reservation.', '', '66588', 1, NULL),
(94, '442', 69, '', '1378155600', 0, 0, NULL, NULL, '1476253380', '197', '200', 'N/A', '207', '', '', '0', 0, NULL),
(95, '396', 172, '', '1420491600', 0, 0, 0, 0, '1476253380', '197', '217', 'Rounders,Soccer', '207', 'Jane is a highly motivated and respectful student with a foundation that has prepared her well for the challenges she may encounter. I see no reason that she will be anything other than an excellent addition to your program, and I therefore recommend her without reservation.', '', '0', 1, NULL),
(96, '151', 173, '', '1283806800', 0, -10800, 0, -10800, '1476253380', '195', '217', 'Violin,Rounders Soccer', '206', 'Aba is a highly motivated and respectful student with a foundation that has prepared her well for the challenges she may encounter. I see no reason that she will be anything other than an excellent addition to your program, and I therefore recommend her without reservation.', '', '-11100', 0, NULL),
(97, '391', 174, '', '1420491600', 0, -10800, 0, -10800, '1476253440', '197', '217', 'Rounders,Soccer', '207', 'Sheela is a highly motivated and respectful student with a foundation that has prepared her well for the challenges she may encounter. I see no reason that she will be anything other than an excellent addition to your program, and I therefore recommend her without reservation.', '', '0', 0, NULL),
(98, '450', 70, '', '1441659600', 0, 0, NULL, NULL, '1476253440', '197', '211', 'Scouts', '206', '', '', '0', 0, NULL),
(99, '430', 72, '', '1441659600', 0, 0, NULL, NULL, '1476253500', '197', '208', 'Scouts,Tae kwon do', '204', '', '', '0', 0, NULL),
(101, '441X', 75, '', '1364504400', 0, 0, NULL, NULL, '1476253620', '197', '329', 'Scouts,Team Training', '207', '', '', '-800', 0, NULL),
(102, '446', 77, '', '1420491600', 0, 0, NULL, NULL, '1476253620', '198', '209', 'Ballet', '207', '', '', '0', 0, NULL),
(103, '406', 81, '', '1441659600', 0, 0, NULL, NULL, '1476253680', '197', '209', 'Arts&Craft', '206', '', '', '0', 0, NULL),
(104, '520', 47, '', '1473109200', 0, 0, NULL, NULL, '1476253740', '198', '208', 'Arts&Craft,Scouts,Rollerblading,Tennis', '206', '', '', '-500', 0, NULL),
(105, '478', 76, '', '1420491600', 0, 0, NULL, NULL, '1476253800', '197', '209', 'Arts&Craft,Swimming', '205', '', '', '-1100', 0, NULL),
(106, '403', 83, '', '1441659600', 0, 0, NULL, NULL, '1476253860', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(108, '480X', 84, '', '1441659600', 0, 0, NULL, NULL, '1476253920', '197', '288', 'Swimming, Team Training', '206', '', '', '-462500', 0, NULL),
(109, '381', 85, '', '1441659600', 0, 0, NULL, NULL, '1476254100', '195', '200', 'Tennis', '207', 'Jaykie is a jovial and popular character in class and likes working in groups but rarely participates even in class discussions. She is a friendly and\nhappy girl and relates well with her peers.She has a good handwriting but needs close follow-up so as to complete tasks and assignments given.At\ntimes she becomes chatty and forgets to complete tasks given which can be detrimental to her performance. Keep on improving Jaykie', '', '0', 0, NULL),
(110, '455', 86, '', '1420491600', 0, 0, NULL, NULL, '1476254160', '197', '200', 'Ballet,', '206', '', 'jfkjasdfljasldflasdflj', '-8500', 0, NULL),
(111, '412', 88, '', '1441659600', 0, 0, NULL, NULL, '1476254220', '196', '208', 'Piano', '206', '', '', '0', 0, NULL),
(112, '410', 89, '', '1441659600', 0, 0, NULL, NULL, '1476254220', '197', '200', 'Arts&Craft,', '207', '', '', '0', 0, NULL),
(113, '471', 90, '', '1452546000', 0, 0, NULL, NULL, '1476254280', '198', '209', 'Piano', '207', '', '', '0', 0, NULL),
(117, '404', 92, '', '1441659600', 0, 0, NULL, NULL, '1476254400', '198', '199', 'Drums,', '207', 'Nathan has a very positive attitude towards school which is reflected in the standard of the work he has continued to portray.He is a happy and\npopular character in class and I have thoroughly enjoyed having him in my class. He has been a good student throughout the year and has\ncontinued to make progress in all areas of his academic work. He has always behaved well and he should keep up the excellent performance. I\nwish him all the best as he joins year 4.\n', 'Njeri has made fantastic progress in all areas of the curriculum during her time in Year 2. She has a wonderful ability to self-motivate and has\ntherefore met targets time and time again. An extremely admirable quality that Njeri processes is her ability never to become disheartened if she\nmakes a mistake but instead uses it as a learning tool to progress further this shows that she is a great self-manager. Njeri is an extremely popular\nmember of the class due to her kind and mature nature. All the best in Year 3!', '-4000', 0, NULL),
(118, '460', 94, '', '1441659600', 0, 0, NULL, NULL, '1476254460', '196', '200', 'Rollerblading,Piano', '206', '', '', '0', 0, NULL),
(120, '436', 95, '', '1441659600', 0, 0, NULL, NULL, '1476254520', '198', '208', 'Tennis', '205', 'Sophie is a happy girl full of energy.She excels in sports and outdoor activities.Sophie is a great illustrator and enjoys drawing.In class she was average but is capable of better if she settles and concentrates on the tasks given.She was working on her social skill,with help from the teachers.', '', '0', 0, NULL),
(121, '465X', 96, '', '1441832400', 0, 0, NULL, NULL, '1476254580', '195', '214', 'Scouts, Hockey, Soccer', '206', '', '', '0', 0, NULL),
(122, '378', 98, '', '1441659600', 0, 0, NULL, NULL, '1476254580', '198', '199', 'Tae kwon do', '207', '', '', '0', 0, NULL),
(123, '532', 175, '', '1473109200', 0, 0, NULL, NULL, '1476255480', '196', '288', 'Drums', '207', '', '', '0', 0, NULL),
(124, '384X', 176, '', '1410210000', 0, 0, NULL, NULL, '1476256080', '198', '213', 'Tae Kwon do, Team Training, Swimming', '205', '', '', '0', 0, NULL),
(125, '383X', 177, '', '1410210000', 0, 0, NULL, NULL, '1476256380', '198', '214', 'Scouts,Violin', '205', 'Lauren Muturi is very delightful  girl who is hardworking and diligent in completing her class work.\nShe is always ready to learn,eager and passionate. We wish her  all the best. \n', '', '0', 0, NULL),
(126, '365', 187, '', '1410210000', 0, 0, NULL, NULL, '1476256620', '197', '331', 'Scouts, Team Training', '207', '', '', '-2', 0, NULL),
(127, '213', 178, '', '1346706000', 0, -10800, 0, -10800, '1476256980', '197', '213', 'Arts&Craft,Swimming', '207', '', '', '-253992', 0, NULL),
(128, '361', 201, '', '1410210000', 0, 0, NULL, NULL, '1476256980', '195', '213', 'Violin,Scouts, Team Training, Coding and Robotics', '206', '', '', '0', 0, NULL),
(129, '256', 179, '', '1346706000', 0, -10800, 0, -10800, '1476257040', '198', '213', 'Rounders', '206', '', '', '0', 0, NULL),
(130, '249X', 181, '', '1346706000', 0, -10800, 0, -10800, '1476257040', '197', '288', 'Soccer', '205', '', '', '-6000', 0, NULL),
(131, '216X', 182, '', '1346706000', 0, -10800, 0, -10800, '1476257040', '195', '321', 'Makerfuse, Soccer', '207', '', '', '0', 0, NULL),
(132, '224', 183, '', '1357592400', 0, -10800, 0, -10800, '1476257040', '198', '210', 'Nil', '207', '', '', '0', 0, NULL),
(133, '350', 202, '', '1410210000', 0, 0, NULL, NULL, '1476257100', '195', '214', 'Soccer', '207', '', '', '4000', 0, NULL),
(134, '223', 184, '', '1346706000', 0, -10800, 0, -10800, '1476257100', '197', '348', 'Soccer', '207', '', '', '-238050', 0, NULL),
(135, '397', 185, '', '1420491600', 0, -10800, 0, -10800, '1476257100', '197', '213', 'Trumphet,Tennis', '', '', '', '0', 0, NULL),
(136, '222', 186, '', '1346706000', 0, -10800, 0, -10800, '1476257100', '196', '350', 'Soccer', '206', '', '', '-19405', 0, NULL),
(137, '179', 188, '', '1346706000', 0, -10800, 0, -10800, '1476257160', '197', '210', 'Golf,Tae kwo do,Soccer,Cricket', '207', 'Hawi Omuodo   joined this school on   25/03/2011   and was enrolled in Year 6.  and left on    06/01/2017   having satisfactorily completed ', '', '0', 0, NULL),
(138, '481X', 189, '', '1346706000', 0, -10800, 0, -10800, '1476257160', '196', '326', 'Soccer, Piano', '207', 'Henry Kamau is a very hardworking student who is diligent in completing his class work.\nHe also enjoys soccer and is very good team player.We wish him all the best. We will surely miss him.', '', '-182000', 0, NULL),
(139, '227', 190, '', '1346706000', 0, -10800, 0, -10800, '1476257160', '197', '326', ' Soccer', '207', '', '', '0', 0, NULL),
(140, '288', 191, '', '1367269200', 0, -10800, 0, -10800, '1476257160', '195', '213', 'Orchestra,Scouts', '207', '', '', '0', 0, NULL),
(141, '218', 192, '', '1346706000', 0, -10800, 0, -10800, '1476257220', '197', '210', 'Soccer', '207', '', '', '0', 0, NULL),
(142, '210', 193, '', '1346706000', 0, -10800, 0, -10800, '1476257220', '197', '348', 'Soccer', '207', '', '', '0', 0, NULL),
(143, '475X', 194, '', '1452546000', 0, -10800, 0, -10800, '1476257220', '196', '327', 'Makerfuse, Soccer', '207', '', '', '0', 0, NULL),
(144, '237', 36, '', '1473109200', 0, -10800, 0, -10800, '1476257280', '', '', '', '', '', '', '0', 0, NULL),
(145, '182', 196, '', '1315256400', 0, -10800, 0, -10800, '1476257280', '197', '210', 'Soccer,', '207', '', 'Tuja is good.', '39350', 0, NULL),
(146, '183', 197, '', '1317070800', 0, -10800, 0, -10800, '1476257280', '196', '350', 'Soccer', '207', '', '', '0', 0, NULL),
(148, '219', 199, '', '1315256400', 0, -10800, 0, -10800, '1476257340', '197', '350', 'Soccer', '205', '', '', '-9300', 0, NULL),
(149, '352X', 203, '', '1315256400', 0, 0, NULL, NULL, '1476257340', '197', '214', 'Piano,Scouts, Team Training, Swimming', '205', '', '', '0', 0, NULL),
(150, '226', 200, '', '1346706000', 0, 1179349200, 0, 2322000, '1476257400', '196', '210', 'Rollerblading,Soccer', '207', '', '', '0', 0, NULL),
(151, '344X', 204, '', '1410210000', 0, 0, NULL, NULL, '1476257460', '198', '319', 'Team Training', '207', 'Selah is punctual and ready to learn.She is very organised and keeps her studying areas neat. \nSelah is also a very social and fun student who is liked by all her classmates. We will surely miss her.', 'Munene is an enthusiastic learner who seems to enjoy school. He responds appropriately when corrected and guided. He is an enthusiastic\nstudent who shows potential in many areas of his school life. He is courteous and shows good manners inside and outside classroom.', '0', 0, NULL),
(152, '372', 206, '', '1410210000', 0, 0, NULL, NULL, '1476258960', '198', '212', 'Ballet', '207', '\nZahra Is a very friendly and talkative girl.', '', '40000', 0, NULL),
(153, '411', 207, '', '1441659600', 0, 0, NULL, NULL, '1476259080', '195', '213', 'Violin', '206', '', '', '0', 0, NULL),
(155, '447', 209, '', '1453064400', 0, 0, NULL, NULL, '1476259560', '195', '213', 'Scouts,Ballet', '207', '', '', '0', 0, NULL),
(156, '469', 210, '', '1473109200', 0, 0, NULL, NULL, '1476260460', '198', '212', 'Tae kwon do', '207', 'Denis is disarmingly honest! He is very reliable and gets along well with his peers. I have enjoyed having him in my class! I wish him luck as he moves to the next class.\n', '', '0', 0, NULL),
(157, '386', 211, '', '1410210000', 0, 0, NULL, NULL, '1476260520', '197', '213', 'Coding and Robotics, Guitar', '207', '', '', '-10000', 0, NULL),
(158, '351', 212, '', '1357592400', 0, 0, NULL, NULL, '1476260580', '198', '214', 'Soccer', '207', 'Jada is a pleasant girl who enjoys being in the company of her peers. She is very respectful. It has been my joy to see her blossom in the last one\nyear. I wish her the best as she moves to the next class.', '', '0', 0, NULL),
(159, '342', 213, '', '1410210000', 0, 0, NULL, NULL, '1476260760', '196', '288', '', '206', '', '', '0', 0, NULL),
(160, '375X', 214, '', '1410210000', 0, 0, NULL, NULL, '1476260880', '196', '213', 'Piano,Scouts,Art&Craft, Swimming,Team Training', '206', '', '', '-3000', 0, NULL),
(161, '390', 215, '', '1410210000', 0, 0, NULL, NULL, '1476261000', '195', '213', 'Piano,Scouts, Team Training, Coding and Robotics', '206', '', '', '-9500', 0, NULL),
(162, '292', 216, '', '1378760400', 0, 0, NULL, NULL, '1476261060', '198', '212', 'Ballet', '207', '', '', '0', 0, NULL),
(163, '395X', 217, '', '1410814800', 0, 0, NULL, NULL, '1476261180', '196', '211', 'Soccer', '207', '', '', '0', 0, NULL),
(164, '415', 218, '', '1441659600', 0, 0, NULL, NULL, '1476261240', '196', '213', 'Scouts, Coding and Robotics', '207', '', '', '-193000', 0, NULL),
(165, '348', 219, '', '1315256400', 0, 0, NULL, NULL, '1476265680', '198', '213', 'Violin, Coding and Robotics', '207', '', '', '0', 0, NULL),
(166, '268X', 220, '', '1357592400', 0, 0, NULL, NULL, '1476265860', '197', '329', 'Scouts, Art &Craft, Team Training', '207', '', '', '0', 0, NULL),
(167, '269X', 221, '', '1357678800', 0, 0, NULL, NULL, '1476265920', '197', '319', 'Team Training', '207', '', '', '-13000', 0, NULL),
(168, '296X', 222, '', '1378760400', 0, 0, NULL, NULL, '1476266040', '198', '320', 'Hockey', '205', '', '', '-950', 0, NULL),
(169, '301', 223, '', '1378760400', 0, 0, NULL, NULL, '1476266100', '195', '210', 'Scouts', '205', '', '', '0', 0, NULL),
(170, '420X', 224, '', '1441659600', 0, -10800, 0, -10800, '1476266220', '196', '319', 'Little Einsteins', '207', '', '', '0', 0, NULL),
(171, '499', 225, '', '1473109200', 0, 0, NULL, NULL, '1476266340', '197', '326', 'Soccer', '207', '', '', '0', 0, NULL),
(172, '468', 226, '', '1452546000', 0, 0, NULL, NULL, '1476266520', '196', '326', 'Soccer, Guitar', '207', '', '', '0', 0, NULL),
(173, '272', 227, '', '1378760400', 0, 0, NULL, NULL, '1476267300', '198', '212', 'Soccer,Rounders,Violin', '207', '', '', '0', 0, NULL),
(174, '473', 228, '', '1453064400', 0, 0, NULL, NULL, '1476268500', '198', '211', 'Soccer', '206', '', '', '0', 0, NULL),
(175, '485', 229, '', '1462222800', 0, 0, NULL, NULL, '1476269520', '196', '210', 'Rollerblading,Soccer', '206', '', '', '0', 0, NULL),
(176, '291', 230, '', '1367269200', 0, 0, NULL, NULL, '1476271500', '197', '212', 'Scouts,Rounders', '205', '', '', '0', 0, NULL),
(177, '360', 231, '', '1410210000', 0, 0, NULL, NULL, '1476271740', '195', '212', 'Cricket', '207', 'Mbugua is a highly motivated student who participates in class activities with creativity and a great deal of enthusiasm. His willingness to lead\norganize, and inspire others is well noted. Keep it up Mbugua!\n', 'Lauren Muturi is very delightful girl who is hardworking and diligent in completing her class work. She is always ready to learn,eager and passionate. We wish her all the best.kkkk', '0', 0, NULL),
(178, '295', 233, '', '1378760400', 0, 0, NULL, NULL, '1476271980', '196', '326', 'Soccer', '207', '', '', '-20000', 0, NULL),
(179, '312', 234, '', '1378760400', 0, 0, NULL, NULL, '1476272100', '197', '326', 'Soccer, Trumpet', '207', '', '', '0', 0, NULL),
(180, '334', 235, '', '1378155600', 0, 0, NULL, NULL, '1476272700', '195', '211', 'Orchestra,', '207', '', '', '0', 0, NULL),
(181, '314', 236, '', '1378760400', 0, 0, NULL, NULL, '1476272880', '197', '349', 'Rounders', '206', '', '', '-300800', 0, NULL),
(182, '316', 237, '', '1378760400', 0, 0, NULL, NULL, '1476273120', '198', '213', 'Scouts,Tae Kwon do,Hockey', '205', '', '', '-1000', 0, NULL),
(183, '236', 238, '', '1346706000', 0, 0, NULL, NULL, '1476273180', '196', '349', 'Rounders', '207', '', '', '500', 0, NULL),
(184, '257', 239, '', '1346706000', 0, 0, NULL, NULL, '1476273300', '196', '212', 'N/A', '207', '', '', '0', 0, NULL),
(185, '482', 240, '', '1461704400', 0, 0, NULL, NULL, '1476273660', '197', '349', ' Rounders', '205', '', '', '-3650', 0, NULL),
(186, '530', 1, '', '1473109200', 0, 0, NULL, NULL, '1476277620', '196', '288', 'Soccer', '207', '', '', '-114500', 0, NULL),
(187, '531X', 242, '', '1473368400', 0, 0, NULL, NULL, '1476277800', '198', '213', 'Nil', '207', '', '', '0', 0, NULL),
(188, '486.', 132, '', '1473109200', 0, 0, 0, 0, '1477031400', '198', '342', 'Arts &Craft ', '206', '', '', '0', 0, NULL),
(189, '426XX', 246, 'admitted', '1473282000', 0, 0, NULL, NULL, '1477032420', '195', '210', 'Nil', '207', '', 'Henry Kamau is a very hardworking student who is diligent in completing his class work.\nHe also enjoys soccer and is very good team player.We wish him all the best. We will surely miss him.', '0', 0, NULL),
(190, '421', 247, 'RERMARKS', '1441659600', 0, 0, NULL, NULL, '1477032600', '198', '213', 'Scouts,Coding and Robotics', '205', '', '', '-109500', 0, NULL),
(194, '336', 232, '', '1378760400', 0, 0, NULL, NULL, '1477294740', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(195, '336.', 274, '', '1378674000', 0, 0, NULL, NULL, '1478511720', NULL, NULL, NULL, NULL, 'good student', '', '0', 0, NULL),
(197, '341', 205, '', '1410210000', 0, 0, NULL, NULL, '1478674680', '198', '213', 'Scouts', '206', '', '', '0', 0, NULL),
(198, '403X', 180, '', '1441659600', 0, 0, NULL, NULL, '1478674920', '195', '213', 'Guitar, Swimming', '207', '', '', '0', 0, NULL),
(210, '237.', 195, '', '1346706000', 0, 0, NULL, NULL, '1478675520', '196', '349', 'Rounders', '207', '', '', '0', 0, NULL),
(211, '000', 280, '', '1478811600', 0, 0, NULL, NULL, '1478865900', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(212, '536X', 292, '', '1479157200', 0, 0, NULL, NULL, '1479281040', '195', '320', 'Soccer, Team Training', '207', '', '', '-195551', 0, NULL),
(213, '535X', 293, '', '1479157200', 0, 0, NULL, NULL, '1479282840', '197', '327', 'Soccer', '207', '', '', '-155931', 0, NULL),
(214, '354', 294, '', '1479243600', 0, 0, NULL, NULL, '1479283800', '198', '288', '', '206', '', '', '-23501', 0, NULL),
(217, '428', 301, '', '1441659600', 0, 0, NULL, NULL, '1479906600', '196', '199', 'Golf', '207', '', '', '0', 0, NULL),
(219, '343', 308, '', '1389042000', 0, 0, NULL, NULL, '1479911520', '', '', '', '', 'good', '', '0', 0, NULL),
(220, '340', 313, '.', '1389646800', 0, 0, NULL, NULL, '1480079700', NULL, NULL, NULL, NULL, 'good', '', '0', 0, NULL),
(222, '326X', 314, '.', '1441659600', 0, 0, NULL, NULL, '1480685580', '195', '330', '', '206', '', '', '-11700', 0, NULL),
(223, '409', 315, '.', '1441659600', 0, 0, NULL, NULL, '1480686180', '196', '208', 'Arts&Craft', '207', '', '', '0', 0, NULL),
(224, '472X', 316, '.', '1452546000', 0, 0, NULL, NULL, '1480686840', '197', '288', 'Little Einsteins, Swimming', '207', '', 'She demonstrates true enthusiasm in her school work. Her efforts reflect in  the the high grades and she also displays the values of teamwork by assisting others in class. We wish Elsie all the best and we will truly miss her.\n\nMr Eric Kinyanjui\nYear 6 \nClass Teacher', '-151250', 0, NULL),
(225, '443', 317, '', '1420491600', 0, 0, NULL, NULL, '1480687440', '198', '209', 'Tennis', '207', '', '', '0', 0, NULL),
(226, '413', 318, '.', '1441659600', 0, 0, NULL, NULL, '1480688160', '195', '211', 'Violin, Coding and Robotics, Arts &Craft, Scouts', '206', '', '', '-29824', 0, NULL),
(227, '418', 319, '.', '1441659600', 0, 0, NULL, NULL, '1480746360', '196', '208', 'N/A', '207', '', '', '0', 0, NULL),
(228, '405', 320, '.', '1441659600', 0, 0, NULL, NULL, '1480747080', '195', '199', 'Guitar,Golf', '207', 'Benjamin has had a good year and has continued to make progress in all areas of his work. He is a happy and popular character in the class and I\nhave thoroughly enjoyed having him in my class. His handwriting and presentation of work is excellent. However, he has difficulty thinking out\nideas and putting them into progressive piece of writing. He also at times gets distracted and forgets to complete tasks given.We will surely miss\nhis charming and friendly character and wish him all the best as he joins year 4.\n', '', '0', 0, NULL),
(229, '509', 321, '.', '1473109200', 0, 0, NULL, NULL, '1480917960', '195', '288', 'Coding and Robotics', '206', '', '', '0', 0, NULL),
(232, '537X', 323, '', '1479416400', 0, 0, NULL, NULL, '1480929180', '196', '214', 'Skating,Tennis,Scouts', '206', '', '', '0', 0, NULL),
(233, '448', 324, '.', '1441659600', 0, 0, NULL, NULL, '1481609400', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(234, '447.', 325, '.', '1441659600', 0, 0, NULL, NULL, '1481612400', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(235, '408', 326, '.', '1441659600', 0, 0, NULL, NULL, '1481613240', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(236, '368', 329, '.', '1398373200', 0, 0, NULL, NULL, '1481621280', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(237, '453', 330, '.', '1421010000', 0, 0, NULL, NULL, '1481623020', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(238, '407', 331, '.', '1424638800', 0, 0, NULL, NULL, '1481626680', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(239, '419', 339, '.', '1441659600', 0, 0, NULL, NULL, '1481632380', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(240, '437', 340, '.', '1433365200', 0, 0, NULL, NULL, '1481633280', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(242, '425', 342, '.', '1441659600', 0, 0, NULL, NULL, '1481697480', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(243, '477', 344, '', '1441659600', 0, 0, NULL, NULL, '1481699100', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(244, '364', 347, '', '1399410000', 0, 0, NULL, NULL, '1481701500', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(246, '328', 349, '.', '1421010000', 0, 0, NULL, NULL, '1481704380', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(247, '357', 350, '.', '1393362000', 0, 0, NULL, NULL, '1481705520', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(248, '313', 354, '.', '1378674000', 0, 0, NULL, NULL, '1481713440', '', '', '', '', '', '', '0', 0, NULL),
(250, '459', 359, '.', '1410123600', 0, 0, NULL, NULL, '1481784120', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(251, '310X', 353, '.', '1388955600', 0, 0, NULL, NULL, '1481784480', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(252, '337', 362, '.', '1379538000', 0, 0, NULL, NULL, '1481787360', '', '', '', '', '', '', '0', 0, NULL),
(253, '476', 363, '.', '1452027600', 0, 0, NULL, NULL, '1481790240', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(254, '355', 364, '.', '1398286800', 0, 0, NULL, NULL, '1481791620', '', '', '', '', '', '', '0', 0, NULL),
(255, '124', 367, '.', '1294693200', 0, 0, NULL, NULL, '1481798940', '', '', '', '', '', '', '0', 0, NULL),
(256, '287', 368, '.', '1410123600', 0, 0, NULL, NULL, '1481801220', '', '', '', '', '', '', '0', 0, NULL),
(257, '370', 371, '.', '1410210000', 0, 0, NULL, NULL, '1481868300', '', '', '', '', '', '', '0', 0, NULL),
(258, '322', 375, '.', '1370984400', 0, 0, NULL, NULL, '1481875080', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(259, '262', 376, '.', '1347224400', 0, 0, NULL, NULL, '1481877180', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(260, '274', 377, '.', '1357506000', 0, 0, NULL, NULL, '1481878740', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(261, '51', 378, '.', '1315429200', 0, 0, NULL, NULL, '1481879640', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(263, 'C20X', 300, '.', '1483995600', 0, 0, NULL, NULL, '1483954140', '', '', '', '', '', '', '0', 1, NULL),
(267, '539', 380, '.', '1483995600', 0, 0, NULL, NULL, '1483959060', '196', '268', 'N/A', '206', '', '', '0', 0, NULL),
(273, '541', 386, '', '1485896400', 0, 0, NULL, NULL, '1487236500', '197', '288', 'Soccer, Guitar', '205', '', '', '', 0, NULL),
(278, '621', 438, '', '1473627600', 0, 0, NULL, NULL, '1490687580', '196', '332', 'Drums', '205', '', '', '0', 0, NULL),
(281, '562X', 442, '', '1420491600', 0, 0, NULL, NULL, '1490694420', '195', '208', 'Little Einsteins', '207', '', '', '0', 0, NULL),
(282, '557', 443, '', '1473109200', 0, 0, NULL, NULL, '1490697240', '195', '199', 'Tae Kwon do, Art &Craft', '205', '', '', '0', 0, NULL),
(283, '554', 444, '', '1473109200', 0, 0, NULL, NULL, '1490698680', '197', '208', '', '206', '', '', '-38380', 0, NULL),
(284, '553X', 446, '', '1420491600', 0, 0, NULL, NULL, '1490767560', '197', '199', 'Little Einsteins, Tae kwon do, Scouts', '207', '', '', '0', 0, NULL),
(285, 'C19', 447, '', '1430686800', 0, 0, NULL, NULL, '1490768280', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(287, '563', 449, '', '1483995600', 0, 0, NULL, NULL, '1490768940', '196', '199', 'Tae Kwon do, Art &Craft, Coding and Robotics,Scouts, Violin', '205', '', '', '0', 0, NULL),
(288, '555', 450, '', '1441659600', 0, 0, NULL, NULL, '1490769180', '198', '340', 'Coding and Robotics', '207', '', '', '-5600', 0, NULL),
(290, '617', 455, '', '1485896400', 0, 0, NULL, NULL, '1490789340', '196', '290', '', '205', '', '', '-242500', 0, NULL),
(292, '556', 476, '', '1461704400', 0, 0, NULL, NULL, '1492676100', '195', '340', 'Scouts, Piano', '207', '', '', '-10000', 0, NULL),
(293, 'C12X', 482, '', '1465160400', 0, 0, NULL, NULL, '1494398700', NULL, NULL, NULL, NULL, '', '', '2000', 0, NULL),
(294, '620', 483, '', '1473109200', 0, 0, NULL, NULL, '1494399480', '198', '290', 'Guitar', '204', '', '', '0', 0, NULL),
(295, '627', 485, '', '1473109200', 0, 0, NULL, NULL, '1494401400', '198', '199', 'Piano', '205', '', '', '-33000', 0, NULL),
(296, 'C21', 486, '', '1483995600', 0, 0, NULL, NULL, '1494407520', '', '', 'Tae Kwon do, Ballet', '205', '', '', '-1645500', 0, NULL),
(297, 'C10', 488, '', '1473109200', 0, 0, NULL, NULL, '1494408180', '', '', 'Ballet', '', '', '', '0', 0, NULL),
(298, 'C17X', 487, '', '1473109200', 0, 0, NULL, NULL, '1494408240', '', '', 'Little Einsteins', '', '', '', '0', 0, NULL),
(299, 'C18', 489, '', '1473109200', 0, 0, NULL, NULL, '1494408480', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(301, 'C9', 491, '', '1473109200', 0, 0, NULL, NULL, '1494409560', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(304, '543X', 527, '', '1496610000', 0, 0, NULL, NULL, '1496135160', '195', '319', 'Scouts', '207', 'She is an enthusiastic member of the class who especially enjoys opportunities to choose and report back on her own learning activities. She is a delightful child and is growing in maturity and has steadily gained in confidence.\nShe also demonstrates a high level of skill and understanding across a range of games activities cooperates well with other children when playing in a group or team. We wish Amy all the best.\n', '', '-72800', 0, NULL),
(306, 'C30X', 534, '', '1496696400', 0, 0, NULL, NULL, '1496733000', '', '', '', '207', '', '', '0', 0, NULL),
(307, 'C29X', 537, '', '1496696400', 0, 0, NULL, NULL, '1496733360', '', '', '', '207', '', '', '0', 0, NULL),
(309, 'C31', 539, '', '1496869200', 0, 0, NULL, NULL, '1496916240', '', '', '', '', '', '', '0', 0, NULL),
(312, '367', 529, '', '1392584400', 0, 0, NULL, NULL, '1497591300', '195', '288', 'Coding and Robotics', '207', '', '', '0', 0, NULL),
(319, '546', 554, '', '1500843600', 0, 0, NULL, NULL, '1500888720', '', '', '', '', '', '', '0', 0, NULL),
(320, '545', 555, '', '1500843600', 0, 0, NULL, NULL, '1500889140', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(322, '549', 414, '', '1500843600', 0, 0, NULL, NULL, '1500889260', '198', '208', 'Coding and Robotics', '207', '', '', '-154500', 0, NULL),
(323, '550', 389, '', '1500843600', 0, 0, NULL, NULL, '1500889320', '196', '340', 'Tae Kwon do, Coding and Robotics,Scouts', '207', '', '', '0', 0, NULL),
(325, '552', 406, '', '1500843600', 0, 0, NULL, NULL, '1500889380', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(326, '560', 556, '', '1500843600', 0, 0, NULL, NULL, '1500890820', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(328, '616X', 550, '', '1500843600', 0, 0, NULL, NULL, '1500899520', '', '', '', '206', '', '', '-244000', 0, NULL),
(329, '618', 463, '', '1500843600', 0, 0, NULL, NULL, '1500899760', '197', '', 'Tae Kwon do', '205', '', '', '0', 0, NULL),
(330, 'C36', 533, '', '1500843600', 0, 0, NULL, NULL, '1500899820', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(331, '622', 404, '', '1500843600', 0, 0, NULL, NULL, '1500899940', '198', '199', 'Rollerblading', '', '', '', '0', 0, NULL),
(334, 'C40X', 393, '', '1500843600', 0, 0, NULL, NULL, '1500900300', '', '', 'Tae Kwon do, Art &Craft', '', '', '', '-175000', 0, NULL),
(335, 'C38X', 559, '', '1500930000', 0, 0, NULL, NULL, '1500970320', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(336, 'C39X', 560, '', '1500930000', 0, 0, NULL, NULL, '1500970380', '', '', '', '207', '', '', '0', 0, NULL),
(339, '490', 562, '', '1501016400', 0, 0, NULL, NULL, '1501054260', '195', '199', 'Nil', '207', '', '', '-23500', 0, NULL),
(340, '491', 563, '', '1501016400', 0, 0, NULL, NULL, '1501054560', '198', '199', 'Nil', '205', '', '', '0', 0, NULL),
(341, '492', 565, '', '1501016400', 0, 0, NULL, NULL, '1501054920', '196', '294', 'Nil', '', '', '', '0', 0, NULL),
(342, '525X', 566, '', '1501016400', 0, 0, NULL, NULL, '1501055160', '195', '199', 'Little Einsteins, Swimming', '205', '', '', '0', 0, NULL),
(343, '523', 567, '', '1501016400', 0, 0, NULL, NULL, '1501055220', '197', '211', '', '206', '', '', '0', 0, NULL),
(344, '496X', 568, '', '1501016400', 0, 0, NULL, NULL, '1501055340', '195', '208', 'Swimming, Ballet', '207', '', '', '-385700', 0, NULL),
(345, '506', 569, '', '1501016400', 0, 0, NULL, NULL, '1501055580', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(346, '524X', 570, '', '1501016400', 0, 0, NULL, NULL, '1501055700', '195', '199', 'Art &Craft/Scouts', '207', '', '', '0', 0, NULL),
(347, '503', 571, '', '1501016400', 0, 0, NULL, NULL, '1501055820', '195', '342', 'Scouts, Piano', '205', '', '', '0', 0, NULL),
(348, '542X', 572, '', '1501016400', 0, 0, NULL, NULL, '1501056960', '195', '289', '', '207', 'Ava is a polite and well-mannered girl who takes correction positively.\nShe is a pleasant, friendly and helpful student who endeavors to do well all the time and comprehends her school work well.\nWe wish Ava all the best.', '', '0', 0, NULL),
(349, '540', 573, '', '1501016400', 0, 0, NULL, NULL, '1501059660', '197', '342', '', '205', '', '', '-147600', 0, NULL),
(350, '534X', 575, '', '1501016400', 0, 0, NULL, NULL, '1501059780', '198', '199', 'Tennis,Skating', '207', '', '', '0', 0, NULL),
(351, '494X', 576, '', '1473109200', 0, 0, NULL, NULL, '1501487880', '195', '199', 'Little Einsteins', '206', '', '', '0', 0, NULL),
(353, '517', 578, '', '1473109200', 0, 0, NULL, NULL, '1501488240', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(354, '538X', 579, '', '1483995600', 0, 0, NULL, NULL, '1501488360', '197', '199', 'Drums', '207', '', '', '0', 0, NULL),
(355, '445X', 580, '', '1389042000', 0, 0, NULL, NULL, '1501489380', '198', '213', 'Scouts,Team Training', '205', '', '', '0', 0, NULL),
(356, '566', 581, '', '1504558800', 0, 0, NULL, NULL, '1501491300', '197', '213', 'Scouts', '206', '', '', '0', 0, NULL),
(358, '568', 454, '', '1504558800', 0, 0, NULL, NULL, '1501664280', '196', '326', 'Soccer, Piano', '207', '', '', '-5685500', 0, NULL),
(359, '567', 532, '', '1504558800', 0, 0, NULL, NULL, '1501664340', '197', '343', '', '', '', '', '0', 0, NULL),
(360, 'C43X', 452, '', '1504558800', 0, 0, NULL, NULL, '1501664580', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(362, 'C44', 582, '', '1504558800', 0, 0, NULL, NULL, '1501676820', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(363, 'C41X', 583, '', '1504558800', 0, 0, NULL, NULL, '1501741440', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(364, 'C42', 584, '', '1504558800', 0, 0, NULL, NULL, '1501742100', '', '', 'Rollerblading', '', '', '', '-97500', 0, NULL),
(366, '571', 586, '', '1504558800', 0, 0, NULL, NULL, '1503923940', '196', '350', 'Soccer', '206', '', '', '0', 0, NULL),
(368, 'C45', 585, '', '1504558800', 0, 0, NULL, NULL, '1504010760', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(369, '573', 588, '', '1504558800', 0, 0, NULL, NULL, '1504011300', '198', '290', 'Arts &Craft ', '205', '', '', '0', 0, NULL),
(370, '626', 589, '', '1504558800', 0, 0, NULL, NULL, '1504011660', '198', '213', 'Coding and Robotics', '', '', '', '0', 0, NULL),
(371, '559', 591, '', '1504558800', 0, 0, NULL, NULL, '1504097460', '198', '199', 'Coding and Robotics, Arts &Craft', '206', '', '', '0', 0, NULL),
(372, '515', 590, '', '1456088400', 0, 0, NULL, NULL, '1504172640', '196', '342', 'Coding and Robotics', '207', '', '', '0', 0, NULL),
(373, '489X', 592, '', '1473109200', 0, 0, NULL, NULL, '1504172760', '198', '199', 'Nil', '207', 'Benga is very social and interacts well with his peers. He participates well in class discussions as he is also a very good team player. Benga has so much potential and we wish him well.\nWe will surely miss him.', '', '0', 0, NULL),
(375, '569', 594, '', '1504558800', 0, 0, NULL, NULL, '1504173180', '197', '288', 'Coding and Robotics', '206', '', '', '-15100', 0, NULL),
(377, '570', 596, '', '1504558800', 0, 0, NULL, NULL, '1504173780', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(378, '575X', 597, '', '1504558800', 0, 0, NULL, NULL, '1504516380', '198', '326', 'Hockey', '206', '', '', '0', 0, NULL),
(379, '576X', 598, '', '1504558800', 0, 0, NULL, NULL, '1504516560', '195', '272', '', '206', '', '', '0', 0, NULL),
(380, '577X', 599, '', '1504558800', 0, 0, NULL, NULL, '1504600440', '198', '288', 'Hockey', '', '', '', '0', 0, NULL),
(381, '572', 600, '', '1504558800', 0, 0, NULL, NULL, '1504600560', '197', '348', ' Soccer', '205', '', '', '0', 0, NULL),
(383, '574', 602, '', '1504558800', 0, 0, NULL, NULL, '1504693680', '196', '348', 'Soccer', '207', '', '', '0', 0, NULL),
(384, '578', 603, '', '1504645200', 0, 0, NULL, NULL, '1504695000', '196', '347', 'Rounders', '207', '', '', '0', 0, NULL),
(385, 'C8', 607, '', '1473109200', 0, 0, NULL, NULL, '1504774620', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(386, 'C4', 606, '', '1473109200', 0, 0, NULL, NULL, '1504774620', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(387, '619', 605, '', '1473109200', 0, 0, NULL, NULL, '1504774680', '198', '199', '', '206', '', '', '0', 0, NULL),
(388, 'C32X', 604, '', '1473109200', 0, 0, NULL, NULL, '1504774680', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(389, 'C47', 608, '', '1504558800', 0, 0, NULL, NULL, '1504848900', '', '', 'Arts &Craft ', '', '', '', '0', 0, NULL),
(391, 'C48', 610, '', '1504558800', 0, 0, NULL, NULL, '1505117280', '', '', '', '205', '', '', '0', 0, NULL),
(392, '579', 611, '', '1505336400', 0, 0, NULL, NULL, '1505382420', '198', '288', 'Coding and Robotics, Scouts', '206', '', '', '0', 0, NULL),
(395, 'C35X', 632, '', '1504558800', 0, 0, NULL, NULL, '1508832180', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(396, '623', 634, '', '1541019600', 0, 0, NULL, NULL, '1517899320', '197', '332', 'Tae Kwon do, Rollerblading', '', '', '', '0', 0, NULL),
(397, '580', 643, '', '1510174800', 0, 0, NULL, NULL, '1517899440', '196', '340', 'Coding and Robotics, Piano', '', '', '', '0', 0, NULL),
(398, '583', 644, '', '1515445200', 0, 0, NULL, NULL, '1517899500', '197', '213', '', '', '', '', '0', 0, NULL),
(400, '581', 616, '', '1507237200', 0, 0, NULL, NULL, '1517899680', '198', '211', '', '', '', '', '0', 0, NULL),
(401, '625', 680, '', '1490389200', 0, 0, NULL, NULL, '1518170700', '195', '199', 'Tennis, Coding', '', '', '', '-13500', 0, NULL),
(402, '534', 684, '', '1518555600', 0, 0, NULL, NULL, '1518609060', '198', '329', 'Tennis', '', '', '', '0', 0, NULL),
(403, '584', 655, '', '1520456400', 0, 0, NULL, NULL, '1520918040', '197', '343', '', '', '', '', '0', 0, NULL),
(405, 'C50', 694, '', '1520542800', 0, 0, NULL, NULL, '1520935620', '', '', 'Ballet', '', '', '', '0', 0, NULL),
(406, 'C51', 654, '', '1523826000', 0, 0, NULL, NULL, '1523864760', '', '', 'Rollerblading, Art', '', '', '', '0', 0, NULL),
(407, '588', 708, '', '1523480400', 0, 0, NULL, NULL, '1523950560', '195', '290', '', '', '', '', '0', 0, NULL),
(411, '585', 716, '', '1521061200', 0, 0, NULL, NULL, '1524209160', '196', '329', 'Tennis', '206', '', '', '0', 0, NULL);
INSERT INTO `admission` (`AdmissionId`, `AdmissionNo`, `RegistrationId`, `Remarks`, `DOA`, `AdmissionTestMarks`, `DateDepositPaid`, `DOTest`, `DORecords`, `DOE`, `house`, `clubs`, `activities`, `transport`, `exit_comments`, `transcript_comments`, `bbf`, `show_bbf`, `CurrentSession`) VALUES
(412, '624', 717, '', '1518037200', 0, 0, NULL, NULL, '1524209880', '198', '199', 'Tennis, Rollerblading,Coding and Robotics', '205', '', '', '0', 0, NULL),
(413, '628', 720, '', '1527454800', 0, 0, NULL, NULL, '1527510300', '195', '199', '', '', '', '', '0', 0, NULL),
(414, '601', 456, '', '1530651600', 0, 0, NULL, NULL, '1532937720', '197', '332', '', '', '', '', '0', 0, NULL),
(416, '590', 732, '', '1530651600', 0, 0, NULL, NULL, '1532938080', '196', '329', '', '206', '', '', '0', 0, NULL),
(417, '600', 639, '', '1530651600', 0, 0, NULL, NULL, '1532943360', '196', '', 'Piano', '', '', '', '0', 0, NULL),
(418, '596', 647, '', '1536008400', 0, 0, NULL, NULL, '1532943420', '195', '199', 'Coding and Robotics, Drums', '', '', '', '0', 0, NULL),
(419, '597X', 693, '', '1536008400', 0, 0, NULL, NULL, '1532943480', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(420, '598', 664, '', '1536008400', 0, 0, NULL, NULL, '1532943540', '196', '199', 'Tae Kwon do, Coding and Robotics, Saxophone', '206', '', '', '0', 0, NULL),
(421, '599', 626, '', '1536008400', 0, 0, NULL, NULL, '1532943660', '198', '290', 'Piano', '204', '', '', '0', 0, NULL),
(422, 'C58', 731, '', '1536008400', 0, 0, NULL, NULL, '1532943720', NULL, NULL, NULL, NULL, '', '', '-6550', 0, NULL),
(423, '593', 699, '', '1536008400', 0, 0, NULL, NULL, '1532944020', '195', '199', 'Rollerblading, Violin', '205', '', '', '0', 0, NULL),
(424, 'C55', 689, '', '1530651600', 0, 0, NULL, NULL, '1532944500', '', '', 'Tae Kwon do', '205', '', '', '-15050', 0, NULL),
(425, 'C54', 730, '', '1536008400', 0, 0, NULL, NULL, '1532944740', '', '', '', '206', '', '', '0', 0, NULL),
(427, 'C60', 690, '', '1536008400', 0, 0, NULL, NULL, '1534248480', '', '', '', '206', '', '', '0', 0, NULL),
(428, '592', 700, '', '1536008400', 0, 0, NULL, NULL, '1534248840', '195', '329', 'Coding and Robotics', '205', '', '', '-120400', 0, NULL),
(431, '589', 735, '', '1536008400', 0, 0, NULL, NULL, '1534249560', '195', '', '', '206', '', '', '0', 0, NULL),
(432, '594', 736, '', '1536008400', 0, 0, NULL, NULL, '1534249800', '196', '288', 'Tennis, Art', '206', '', '', '0', 0, NULL),
(433, 'C56', 737, '', '1536008400', 0, 0, NULL, NULL, '1534250040', '', '', '', '205', '', '', '0', 0, NULL),
(434, 'C57', 738, '', '1536008400', 0, 0, NULL, NULL, '1534250460', '', '', 'Arts &Craft , Rollerblading', '205', '', '', '0', 0, NULL),
(436, 'C61', 740, '', '1536008400', 0, 0, NULL, NULL, '1534250940', '', '', 'Arts &Craft ', '206', '', '', '0', 0, NULL),
(437, 'C59', 741, '', '1536008400', 0, 0, NULL, NULL, '1534251180', '', '', 'Rollerblading', '', '', '', '0', 0, NULL),
(438, '595', 742, '', '1536008400', 0, 0, NULL, NULL, '1534251420', '', '', '', '', '', '', '0', 0, NULL),
(440, '607', 671, '', '1536008400', 0, 0, NULL, NULL, '1534313820', '195', '332', '', '206', '', '', '-2500', 0, NULL),
(441, '614X', 676, '', '1536008400', 0, 0, NULL, NULL, '1534314000', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(442, '610X', 673, '', '1536008400', 0, 0, NULL, NULL, '1534314060', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(443, '615X', 672, '', '1536008400', 0, 0, NULL, NULL, '1534314240', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(445, '606', 677, '', '1536008400', 0, 0, NULL, NULL, '1534314420', '195', '199', ' Coding and Robotics', '207', '', '', '0', 0, NULL),
(446, '605', 659, '', '1536008400', 0, 0, NULL, NULL, '1534314480', '195', '199', 'Rollerblading', '206', '', '', '0', 0, NULL),
(447, '604', 679, '', '1536008400', 0, 0, NULL, NULL, '1534314600', '197', '', 'Drums', '', '', '', '-4400', 0, NULL),
(448, '612', 743, '', '1536008400', 0, 0, NULL, NULL, '1534315920', '197', '', '', '', '', '', '0', 0, NULL),
(449, '591', 744, '', '1536008400', 0, 0, NULL, NULL, '1534316280', '197', '290', 'Flute', '207', '', '', '0', 0, NULL),
(450, '630', 746, '', '1536008400', 0, 0, NULL, NULL, '1534324200', '196', '199', 'Coding and Robotics', '', '', '', '0', 0, NULL),
(452, '582', 747, '', '1515445200', 0, 0, NULL, NULL, '1534427580', '198', '199', 'Coding and Robotics', '205', '', '', '0', 0, NULL),
(453, '547', 748, '', '1499202000', 0, 0, NULL, NULL, '1534427760', '196', '199', 'Guitar', '', '', '', '0', 0, NULL),
(454, '548', 749, '', '1499029200', 0, 0, NULL, NULL, '1534427820', '196', '340', 'Tae Kwon do, Coding and Robotics,Scouts', '', '', '', '0', 0, NULL),
(455, '561', 750, '', '1534366800', 0, 0, NULL, NULL, '1534427880', '196', '332', 'Coding and Robotics, Drums', '337', '', '', '-5650', 0, NULL),
(456, '551', 751, '', '1504558800', 0, 0, NULL, NULL, '1534428000', '197', '199', 'Coding and Robotics, Piano', '205', '', '', '0', 0, NULL),
(457, '544', 752, '', '1504558800', 0, 0, NULL, NULL, '1534428060', '195', '340', 'Violin ', '', '', '', '-16000', 0, NULL),
(458, '558', 753, '', '1504645200', 0, 0, NULL, NULL, '1534428120', '197', '332', 'Coding and Robotics, Drums', '', '', '', '0', 0, NULL),
(459, 'C5X', 754, '', '1534366800', 0, 0, NULL, NULL, '1534428240', NULL, NULL, NULL, NULL, '', '', '0', 0, NULL),
(460, '565', 755, '', '1483995600', 0, 0, NULL, NULL, '1534428360', '197', '340', 'Coding and Robotics', '206', '', '', '0', 0, NULL),
(461, '527', 756, '', '1475096400', 0, 0, NULL, NULL, '1534428420', '195', '342', 'Clarinet', '', '', '', '-11500', 0, NULL),
(463, '631', 759, '', '1536008400', 0, 0, NULL, NULL, '1535984460', '197', '349', 'Rounders', '', '', '', '0', 0, NULL),
(464, '632', 760, '', '1536008400', 0, 0, NULL, NULL, '1536057660', '196', '288', 'Soccer', '207', '', '', '0', 0, NULL),
(465, 'C70', 764, '', '1536526800', 0, 0, NULL, NULL, '1536569160', '', '', 'Arts &Craft', '', '', '', '0', 0, NULL),
(466, 'C73', 765, '', '1536008400', 0, 0, NULL, NULL, '1536732480', NULL, NULL, NULL, NULL, '', '', '-11000', 0, NULL),
(467, 'C72', 762, '', '1536008400', 0, 0, NULL, NULL, '1536917340', NULL, NULL, NULL, NULL, '', '', '-150', 0, NULL),
(468, 'C71', 763, '', '1536008400', 0, 0, NULL, NULL, '1536917400', '', '', 'Ballet', '', '', '', '0', 0, NULL),
(469, 'C74', 766, '', '1536526800', 0, 0, NULL, NULL, '1537168020', '', '', 'Tae Kwon do,Rollerblading, Ballet', '', '', '', '0', 0, NULL),
(470, 'C75', 767, '', '1536008400', 0, 0, NULL, NULL, '1537169700', '', '', 'Ballet', '', '', '', '-21500', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `app_id` int(11) NOT NULL,
  `app_name` varchar(120) DEFAULT NULL,
  `app_version` varchar(10) DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT 1,
  `url` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`app_id`, `app_name`, `app_version`, `is_current`, `url`) VALUES
(1, 'vso', 'V5', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backuprestore`
--

CREATE TABLE `backuprestore` (
  `BackUpRestoreId` int(11) NOT NULL,
  `BackUpRestoreType` varchar(20) NOT NULL,
  `BackUpRestoreDate` varchar(20) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `CalendarId` int(11) NOT NULL,
  `CalendarStatus` varchar(10) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `StartTime` varchar(20) NOT NULL,
  `EndTime` varchar(20) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `DLU` varchar(20) NOT NULL,
  `DOD` varchar(20) NOT NULL,
  `DODUsername` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `CircularId` int(11) NOT NULL,
  `Title` varchar(10000) NOT NULL,
  `Circular` text NOT NULL,
  `DateReleased` varchar(10) NOT NULL,
  `CircularStatus` varchar(10) NOT NULL,
  `Username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`CircularId`, `Title`, `Circular`, `DateReleased`, `CircularStatus`, `Username`) VALUES
(1, 'Schools Closing Date', '<p><span style=\"font-family:georgia,serif;\"><span style=\"font-size:12px;\"><strong>The schools will be required to close by 23rd March 2020</strong></span></span><br />&nbsp;</p>', '1586333580', 'Active', 'masteruser');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassId` int(11) NOT NULL,
  `Session` varchar(10) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `ClassStatus` varchar(10) NOT NULL,
  `DOE` varchar(10) NOT NULL,
  `DOL` varchar(10) NOT NULL,
  `report_format` varchar(100) NOT NULL DEFAULT 'split_table',
  `special_report` varchar(100) NOT NULL DEFAULT 'split_table',
  `general_info` int(2) NOT NULL DEFAULT 0,
  `class_teacher` varchar(100) NOT NULL,
  `lower_upper` varchar(100) NOT NULL DEFAULT 'lower',
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassId`, `Session`, `ClassName`, `ClassStatus`, `DOE`, `DOL`, `report_format`, `special_report`, `general_info`, `class_teacher`, `lower_upper`, `priority`) VALUES
(1, '2016-2017', 'Year 1', 'Active', '1472639640', '', 'split_table', 'split_table', 0, '', 'lower', 1),
(2, '2016-2017', 'Year 2', 'Active', '1472639640', '1477917840', 'split_table', 'split_table', 1, '', 'lower', 2),
(3, '2016-2017', 'Year 3', 'Active', '1472639640', '1535449500', 'split_table', 'split_table', 1, '', 'lower', 3),
(4, '2016-2017', 'Year 4', 'Active', '1472639640', '1481092200', 'split_table', 'split_table', 1, '', 'lower', 4),
(5, '2016-2017', 'Year 5', 'Active', '1472639640', '', 'split_table', 'split_table', 0, '', 'lower', 5),
(6, '2016-2017', 'Year 6', 'Active', '1472639640', '', 'split_table', 'split_table', 0, '', 'lower', 6),
(7, '2016-2017', 'Year 7', 'Active', '1472639640', '1479540960', 'single_table', 'single_table', 0, '', 'upper', 7),
(8, '2016-2017', 'Year 8', 'Active', '1472639700', '1479985560', 'single_table', 'single_table', 0, '', 'upper', 8),
(9, '2016-2017', 'Year 9', 'Active', '1472639700', '1479985620', 'single_table', 'single_table', 0, '', 'upper', 9),
(10, '2016-2017', 'Year 10', 'Active', '1472639700', '1479985560', 'single_table', 'single_table', 0, '', 'upper', 10),
(11, '2016-2017', 'Year 11', 'Active', '1472639760', '1479985560', 'single_table', 'single_table', 0, '', 'upper', 11),
(12, '2016-2017', 'Year 12', 'Active', '1472639760', '', 'split_table', 'split_table', 0, '', 'upper', 12),
(13, '2016-2017', 'Year 13', 'Active', '1472639760', '', 'split_table', 'split_table', 0, '', 'upper', 13),
(14, '2016-2017', 'PRE SCHOOL', 'Active', '1472805480', '', 'split_table', 'split_table', 0, '', 'upper', 0),
(29, '2015-2016', 'Year 2', 'Active', '1479818280', '1479818400', 'split_table', 'split_table', 1, '', 'lower', 0),
(30, '2015-2016', 'Year 5', 'Active', '1479818340', '1479818400', 'split_table', 'split_table', 1, '', 'lower', 0),
(31, '2017-2018', 'year 1', 'Active', '1505217240', '', 'split_table', 'split_table', 1, '', 'lower', 0),
(32, '2018-2019', 'SPARROW ', 'Active', '1536301680', '1536302040', 'split_table', 'split_table', 1, '', 'lower', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coach_notes`
--

CREATE TABLE `coach_notes` (
  `id` int(11) NOT NULL,
  `coach_id` varchar(120) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `longitude` varchar(120) DEFAULT NULL,
  `lattitude` varchar(120) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach_notes`
--

INSERT INTO `coach_notes` (`id`, `coach_id`, `notes`, `visit_date`, `longitude`, `lattitude`, `image`) VALUES
(5, '70', 'The center looks good and organized', '2019-12-31', '1.0678945', '0.0678945', NULL),
(6, '70', 'The center looks good and organized', '2019-12-31', '1.0678945', '0.0678945', NULL),
(7, '70', 'The center looks good and organized', '2019-12-31', '1.0678945', '0.0678945', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` int(11) NOT NULL,
  `county_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `county_name`) VALUES
(1, 'Kisumu'),
(2, 'Kilifi'),
(3, 'Migori'),
(4, 'Isiolo'),
(5, 'Garissa'),
(6, 'BARINGO');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Path` varchar(100) NOT NULL,
  `Document` int(11) NOT NULL,
  `Detail` varchar(100) NOT NULL,
  `UniqueId` int(11) NOT NULL,
  `DOE` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`Id`, `Title`, `Path`, `Document`, `Detail`, `UniqueId`, `DOE`, `session`, `term`) VALUES
(1, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18753243.pdf', 141, 'StudentProgressReport', 39, '1481230800', '2016-2017', 1),
(2, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13990554.pdf', 141, 'StudentProgressReport', 645, '1481230800', '2016-2017', 1),
(4, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1103686.pdf', 141, 'StudentProgressReport', 109, '1486501200', '2016-2017', 1),
(5, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19674900.pdf', 141, 'StudentProgressReport', 110, '1488142800', '2016-2017', 1),
(6, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11568710.pdf', 141, 'StudentProgressReport', 592, '1481230800', '2016-2017', 1),
(7, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15135284.pdf', 141, 'StudentProgressReport', 578, '1481230800', '2016-2017', 1),
(8, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19688345.pdf', 141, 'StudentProgressReport', 113, '1481230800', '2016-2017', 1),
(9, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18245011.pdf', 141, 'StudentProgressReport', 576, '1481230800', '2016-2017', 1),
(10, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1230093.pdf', 141, 'StudentProgressReport', 115, '1481230800', '2016-2017', 1),
(11, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14787994.pdf', 141, 'StudentProgressReport', 117, '1485118800', '2016-2017', 1),
(12, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14428742.pdf', 141, 'StudentProgressReport', 116, '1481230800', '2016-2017', 1),
(13, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15323261.pdf', 141, 'StudentProgressReport', 38, '1481230800', '2016-2017', 1),
(14, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19857909.pdf', 141, 'StudentProgressReport', 590, '1481230800', '2016-2017', 1),
(15, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11409716.pdf', 141, 'StudentProgressReport', 41, '1481230800', '2016-2017', 1),
(16, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18805668.pdf', 141, 'StudentProgressReport', 42, '1481230800', '2016-2017', 1),
(17, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11861631.pdf', 141, 'StudentProgressReport', 127, '1481230800', '2016-2017', 1),
(18, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16311529.pdf', 141, 'StudentProgressReport', 128, '1481230800', '2016-2017', 1),
(19, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11531268.pdf', 141, 'StudentProgressReport', 104, '1496178000', '2016-2017', 1),
(20, 'Special Report 2016-2017', 'Special Report 2016-2017272369457.pdf', 175, 'StudentSpecialReport', 109, '1511211600', '2016-2017', 1),
(21, 'Special Report 2016-2017', 'Special Report 2016-2017500671437.pdf', 175, 'StudentSpecialReport', 39, '1511211600', '2016-2017', 1),
(22, 'Special Report 2016-2017', 'Special Report 2016-2017204101642.pdf', 175, 'StudentSpecialReport', 110, '1511211600', '2016-2017', 1),
(23, 'Special Report 2016-2017', 'Special Report 2016-201716509055.pdf', 175, 'StudentSpecialReport', 104, '1492462800', '2016-2017', 1),
(24, 'Special Report 2016-2017', 'Special Report 2016-2017242.pdf', 175, 'StudentSpecialReport', 645, '1477861200', '2016-2017', 1),
(25, 'Special Report 2016-2017', 'Special Report 2016-2017106.pdf', 175, 'StudentSpecialReport', 592, '1477861200', '2016-2017', 1),
(26, 'Special Report 2016-2017', 'Special Report 2016-2017264.pdf', 175, 'StudentSpecialReport', 578, '1477861200', '2016-2017', 1),
(27, 'Special Report 2016-2017', 'Special Report 2016-2017710327178.pdf', 175, 'StudentSpecialReport', 113, '1511211600', '2016-2017', 1),
(28, 'Special Report 2016-2017', 'Special Report 2016-2017587.pdf', 175, 'StudentSpecialReport', 576, '1477861200', '2016-2017', 1),
(29, 'Special Report 2016-2017', 'Special Report 2016-2017505706837.pdf', 175, 'StudentSpecialReport', 115, '1511211600', '2016-2017', 1),
(30, 'Special Report 2016-2017', 'Special Report 2016-2017611.pdf', 175, 'StudentSpecialReport', 117, '1477861200', '2016-2017', 1),
(31, 'Special Report 2016-2017', 'Special Report 2016-2017646484410.pdf', 175, 'StudentSpecialReport', 116, '1511211600', '2016-2017', 1),
(32, 'Special Report 2016-2017', 'Special Report 2016-2017158.pdf', 175, 'StudentSpecialReport', 38, '1477861200', '2016-2017', 1),
(33, 'Special Report 2016-2017', 'Special Report 2016-2017592.pdf', 175, 'StudentSpecialReport', 590, '1477861200', '2016-2017', 1),
(34, 'Special Report 2016-2017', 'Special Report 2016-2017290.pdf', 175, 'StudentSpecialReport', 41, '1477861200', '2016-2017', 1),
(35, 'Special Report 2016-2017', 'Special Report 2016-2017476.pdf', 175, 'StudentSpecialReport', 42, '1477861200', '2016-2017', 1),
(36, 'Special Report 2016-2017', 'Special Report 2016-2017358001368.pdf', 175, 'StudentSpecialReport', 127, '1499893200', '2016-2017', 1),
(37, 'Special Report 2016-2017', 'Special Report 2016-2017382.pdf', 175, 'StudentSpecialReport', 128, '1477861200', '2016-2017', 1),
(38, 'Special Report 2016-2017', 'Special Report 2016-2017416.pdf', 175, 'StudentSpecialReport', 163, '1478638800', '2016-2017', 1),
(39, 'Special Report 2016-2017', 'Special Report 2016-2017955.pdf', 175, 'StudentSpecialReport', 164, '1480712400', '2016-2017', 1),
(40, 'sample', 'sample-StudentProgressReport-265.docx', 141, 'StudentProgressReport', 265, '1478002800', '2015-2016', 1),
(41, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15479466.pdf', 141, 'StudentProgressReport', 758, '1481230800', '2016-2017', 1),
(42, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15764279.pdf', 141, 'StudentProgressReport', 178, '1511902800', '2016-2017', 1),
(43, 'Special Report 2016-2017', 'Special Report 2016-2017578.pdf', 175, 'StudentSpecialReport', 758, '1480626000', '2016-2017', 1),
(45, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1595295.pdf', 141, 'StudentProgressReport', 84, '1481230800', '2016-2017', 1),
(46, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1187.pdf', 141, 'StudentProgressReport', 97, '1480453200', '2016-2017', 1),
(47, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15691092.pdf', 141, 'StudentProgressReport', 175, '1481230800', '2016-2017', 1),
(48, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18083235.pdf', 141, 'StudentProgressReport', 85, '1481230800', '2016-2017', 1),
(49, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18830714.pdf', 141, 'StudentProgressReport', 86, '1481230800', '2016-2017', 1),
(50, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15475939.pdf', 141, 'StudentProgressReport', 88, '1481230800', '2016-2017', 1),
(51, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13055103.pdf', 141, 'StudentProgressReport', 90, '1481230800', '2016-2017', 1),
(52, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12707365.pdf', 141, 'StudentProgressReport', 580, '1481230800', '2016-2017', 1),
(53, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17623756.pdf', 141, 'StudentProgressReport', 89, '1481230800', '2016-2017', 1),
(54, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12006284.pdf', 141, 'StudentProgressReport', 98, '1481230800', '2016-2017', 1),
(55, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15369532.pdf', 141, 'StudentProgressReport', 92, '1481230800', '2016-2017', 1),
(56, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17881996.pdf', 141, 'StudentProgressReport', 94, '1481230800', '2016-2017', 1),
(57, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16419688.pdf', 141, 'StudentProgressReport', 477, '1481230800', '2016-2017', 1),
(58, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15334125.pdf', 141, 'StudentProgressReport', 96, '1481230800', '2016-2017', 1),
(59, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12738420.pdf', 141, 'StudentProgressReport', 497, '1486674000', '2016-2017', 1),
(60, 'End Term Report', 'End-Term-Report-StudentProgressReport-203.docx', 141, 'StudentProgressReport', 203, '1479115320', '2014-2015', 1),
(61, 'Progress Report 2015-2016 Term 2', 'Progress-Report-2015-2016-Term-2-StudentProgressReport-203.docx', 141, 'StudentProgressReport', 203, '1479115800', '2015-2016', 2),
(62, 'Progress Report 2015-2016 Term 3', 'Progress-Report-2015-2016-Term-3-StudentProgressReport-203.xls', 141, 'StudentProgressReport', 203, '1479115980', '2015-2016', 3),
(63, 'Progress Report 2015-2016 Term 3 (P2)', 'Progress-Report-2015-2016-Term-3-P2-StudentProgressReport-203.xls', 141, 'StudentProgressReport', 203, '1479116040', '2015-2016', 3),
(64, 'Progress Report 2015-2016 Term 3 (P3)', 'Progress-Report-2015-2016-Term-3-P3-StudentProgressReport-203.xls', 141, 'StudentProgressReport', 203, '1479116100', '2015-2016', 3),
(70, 'Progress Report 2013-2014 Term 2', 'Progress-Report-2013-2014-Term-2-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479290760', '2013-2014', 2),
(71, 'Progress Report 2013-2014 Term 3', 'Progress-Report-2013-2014-Term-3-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479290820', '2013-2014', 3),
(72, 'Progress Report 2014-2015 Term 1', 'Progress-Report-2014-2015-Term-1-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291180', '2014-2015', 1),
(73, 'Progress Report 2014-2015 Term 2', 'Progress-Report-2014-2015-Term-2-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291240', '2014-2015', 2),
(74, 'Progress Report 2014-2015 Term 3', 'Progress-Report-2014-2015-Term-3-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291240', '2014-2015', 3),
(75, 'Progress Report 2015-2016 Term 1', 'Progress-Report-2015-2016-Term-1-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291300', '2015-2016', 1),
(76, 'Progress Report 2015-2016 Term 2', 'Progress-Report-2015-2016-Term-2-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291360', '2015-2016', 2),
(77, 'Progress Report 2015-2016 Term 3', 'Progress-Report-2015-2016-Term-3-StudentProgressReport-298.docx', 141, 'StudentProgressReport', 298, '1479291420', '2015-2016', 3),
(78, 'Progress Report 2013-2014 Term 1', 'Progress-Report-2013-2014-Term-1-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293340', '2013-2014', 1),
(79, 'Progress Report 2013-2014 Term 2', 'Progress-Report-2013-2014-Term-2-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293400', '2013-2014', 2),
(82, 'Progress Report 2014-2015 Term 2', 'Progress-Report-2014-2015-Term-2-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293520', '2014-2015', 2),
(83, 'Progress Report 2014-2015 Term 3', 'Progress-Report-2014-2015-Term-3-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293580', '2014-2015', 3),
(84, 'Progress Report 2015-2016 Term 1', 'Progress-Report-2015-2016-Term-1-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293580', '2015-2016', 1),
(85, 'Progress Report 2015-2016 Term 2', 'Progress-Report-2015-2016-Term-2-StudentProgressReport-274.docx', 141, 'StudentProgressReport', 274, '1479293640', '2015-2016', 2),
(86, 'Progress Report 2015-2016 Term 3', 'Progress-Report-2015-2016-Term-3-StudentProgressReport-274.xls', 141, 'StudentProgressReport', 274, '1479293700', '2015-2016', 3),
(87, 'Progress Report 2015-2016 Term 3 (P2)', 'Progress-Report-2015-2016-Term-3-P2-StudentProgressReport-274.xls', 141, 'StudentProgressReport', 274, '1479293700', '2015-2016', 3),
(93, '2015-2016 T1 YR 2C', '2015-2016-T1-YR-2C-StudentProgressReport-65.pdf', 141, 'StudentProgressReport', 65, '1479390780', '2015-2016', 1),
(94, '2015-2016 T2 YR 2C', '2015-2016-T2-YR-2C-StudentProgressReport-65.pdf', 141, 'StudentProgressReport', 65, '1479391020', '2015-2016', 2),
(95, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12602758.pdf', 141, 'StudentProgressReport', 144, '1486674000', '2016-2017', 1),
(97, '2013-2014 T1 Yr 2B', '2013-2014-T1-Yr-2B-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479793560', '2013-2014', 1),
(99, '2013-2014 T2 Yr 2B', '2013-2014-T2-Yr-2B-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479793860', '2013-2014', 2),
(100, '2013-2014 T3 Yr 2B', '2013-2014-T3-Yr-2B-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479793920', '2013-2014', 3),
(101, '2014-2015 T1 Yr 3A', '2014-2015-T1-Yr-3A-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479793980', '2014-2015', 1),
(102, '2014-2015 T2 Yr 3A', '2014-2015-T2-Yr-3A-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479794040', '2014-2015', 2),
(103, '2014-2015 T3 Yr 3A', '2014-2015-T3-Yr-3A-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479794040', '2014-2015', 3),
(104, '2015-2016 T1 Yr 4B', '2015-2016-T1-Yr-4B-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479794160', '2015-2016', 1),
(106, 'YEAR 4B', 'YEAR-4B-StudentProgressReport-274.pdf', 141, 'StudentProgressReport', 274, '1479816480', '2015-2016', 2),
(107, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17969899.pdf', 141, 'StudentProgressReport', 223, '1481230800', '2016-2017', 1),
(108, 'YEAR 10', 'YEAR-10-StudentProgressReport-298.pdf', 141, 'StudentProgressReport', 298, '1479909540', '2015-2016', 1),
(109, 'YEAR 10.', 'YEAR-10-StudentProgressReport-298.pdf', 141, 'StudentProgressReport', 298, '1479909600', '2015-2016', 2),
(110, 'YEAR 10..', 'YEAR-10-StudentProgressReport-298.pdf', 141, 'StudentProgressReport', 298, '1479909660', '2015-2016', 3),
(111, 'Progress Report 2015-2016 Term1', 'Progress Report 2015-2016 Term11000.pdf', 141, 'StudentProgressReport', 569, '1479934800', '2015-2016', 1),
(112, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11078720.pdf', 141, 'StudentProgressReport', 156, '1481230800', '2016-2017', 1),
(113, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16541825.pdf', 141, 'StudentProgressReport', 163, '1481230800', '2016-2017', 1),
(114, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17890497.pdf', 141, 'StudentProgressReport', 165, '1481230800', '2016-2017', 1),
(115, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term126865.pdf', 141, 'StudentProgressReport', 168, '1486674000', '2016-2017', 1),
(116, 'Progress_Report_2015-2016_Term3', 'Progress_Report_2015-2016_Term3674.pdf', 141, 'StudentProgressReport', 22, '1479934800', '2015-2016', 3),
(117, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11892290.pdf', 141, 'StudentProgressReport', 136, '1530565200', '2016-2017', 1),
(118, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18065074.pdf', 141, 'StudentProgressReport', 135, '1517950800', '2016-2017', 1),
(119, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14372427.pdf', 141, 'StudentProgressReport', 225, '1481230800', '2016-2017', 1),
(120, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16036805.pdf', 141, 'StudentProgressReport', 224, '1481230800', '2016-2017', 1),
(121, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13809839.pdf', 141, 'StudentProgressReport', 157, '1490562000', '2016-2017', 1),
(122, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15512732.pdf', 141, 'StudentProgressReport', 158, '1490562000', '2016-2017', 1),
(123, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11117325.pdf', 141, 'StudentProgressReport', 159, '1481230800', '2016-2017', 1),
(124, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15446761.pdf', 141, 'StudentProgressReport', 161, '1497474000', '2016-2017', 1),
(125, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12533361.pdf', 141, 'StudentProgressReport', 162, '1481230800', '2016-2017', 1),
(126, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11752936.pdf', 141, 'StudentProgressReport', 529, '1481230800', '2016-2017', 1),
(127, 'YEAR 8', 'YEAR-8-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079460', '2013-2014', 2),
(128, 'YEAR 8.', 'YEAR-8-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079520', '2013-2014', 3),
(129, 'YEAR 9', 'YEAR-9-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079520', '2014-2015', 1),
(130, 'YEAR 9.', 'YEAR-9-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079580', '2014-2015', 2),
(131, 'YEAR 9..', 'YEAR-9-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079580', '2014-2015', 3),
(132, 'YEAR 10', 'YEAR-10-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079580', '2015-2016', 1),
(133, 'YEAR 10.', 'YEAR-10-StudentProgressReport-313.pdf', 141, 'StudentProgressReport', 313, '1480079640', '2015-2016', 2),
(134, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19162766.pdf', 141, 'StudentProgressReport', 142, '1481230800', '2016-2017', 1),
(135, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1616054.pdf', 141, 'StudentProgressReport', 164, '1481230800', '2016-2017', 1),
(136, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19226983.pdf', 141, 'StudentProgressReport', 166, '1481230800', '2016-2017', 1),
(137, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17625587.pdf', 141, 'StudentProgressReport', 137, '1481230800', '2016-2017', 1),
(138, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19928585.pdf', 141, 'StudentProgressReport', 148, '1481230800', '2016-2017', 1),
(139, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11899212.pdf', 141, 'StudentProgressReport', 145, '1481230800', '2016-2017', 1),
(140, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14100974.pdf', 141, 'StudentProgressReport', 146, '1481230800', '2016-2017', 1),
(141, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19752118.pdf', 141, 'StudentProgressReport', 147, '1481230800', '2016-2017', 1),
(142, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1322749.pdf', 141, 'StudentProgressReport', 160, '1481230800', '2016-2017', 1),
(143, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19465268.pdf', 141, 'StudentProgressReport', 170, '1481230800', '2016-2017', 1),
(144, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1548746.pdf', 141, 'StudentProgressReport', 171, '1481230800', '2016-2017', 1),
(145, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15733123.pdf', 141, 'StudentProgressReport', 138, '1481230800', '2016-2017', 1),
(146, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14461448.pdf', 141, 'StudentProgressReport', 139, '1481230800', '2016-2017', 1),
(147, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15909719.pdf', 141, 'StudentProgressReport', 141, '1483995600', '2016-2017', 1),
(148, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1300580.pdf', 141, 'StudentProgressReport', 150, '1481230800', '2016-2017', 1),
(149, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11678282.pdf', 141, 'StudentProgressReport', 184, '1485118800', '2016-2017', 1),
(150, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14006337.pdf', 141, 'StudentProgressReport', 186, '1528923600', '2016-2017', 1),
(151, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11863133.pdf', 141, 'StudentProgressReport', 188, '1481230800', '2016-2017', 1),
(152, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1638753.pdf', 141, 'StudentProgressReport', 189, '1528059600', '2016-2017', 1),
(153, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12569102.pdf', 141, 'StudentProgressReport', 194, '1517864400', '2016-2017', 1),
(154, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16050912.pdf', 141, 'StudentProgressReport', 199, '1481230800', '2016-2017', 1),
(155, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14867816.pdf', 141, 'StudentProgressReport', 200, '1481230800', '2016-2017', 1),
(156, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term118088.pdf', 141, 'StudentProgressReport', 220, '1517950800', '2016-2017', 1),
(157, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15388937.pdf', 141, 'StudentProgressReport', 1, '1481230800', '2016-2017', 1),
(158, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14097713.pdf', 141, 'StudentProgressReport', 149, '1481230800', '2016-2017', 1),
(159, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17174965.pdf', 141, 'StudentProgressReport', 151, '1529355600', '2016-2017', 1),
(160, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1436180.pdf', 141, 'StudentProgressReport', 152, '1481230800', '2016-2017', 1),
(161, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19016875.pdf', 141, 'StudentProgressReport', 153, '1481230800', '2016-2017', 1),
(162, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13622931.pdf', 141, 'StudentProgressReport', 68, '1481230800', '2016-2017', 1),
(163, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1299.pdf', 141, 'StudentProgressReport', 80, '1480280400', '2016-2017', 1),
(164, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17119976.pdf', 141, 'StudentProgressReport', 235, '1481230800', '2016-2017', 1),
(165, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14476685.pdf', 141, 'StudentProgressReport', 227, '1481230800', '2016-2017', 1),
(166, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1919394.pdf', 141, 'StudentProgressReport', 229, '1481230800', '2016-2017', 1),
(167, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18437328.pdf', 141, 'StudentProgressReport', 240, '1481230800', '2016-2017', 1),
(168, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14309651.pdf', 141, 'StudentProgressReport', 246, '1511730000', '2016-2017', 1),
(169, 'Special Report 2016-2017', 'Special Report 2016-2017272.pdf', 175, 'StudentSpecialReport', 220, '1480280400', '2016-2017', 1),
(170, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15691575.pdf', 141, 'StudentProgressReport', 45, '1481230800', '2016-2017', 1),
(171, 'Special Report 2016-2017', 'Special Report 2016-2017920.pdf', 175, 'StudentSpecialReport', 166, '1480366800', '2016-2017', 1),
(172, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19482269.pdf', 141, 'StudentProgressReport', 46, '1481230800', '2016-2017', 1),
(173, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15681532.pdf', 141, 'StudentProgressReport', 563, '1481230800', '2016-2017', 1),
(174, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15158919.pdf', 141, 'StudentProgressReport', 566, '1481230800', '2016-2017', 1),
(175, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11937055.pdf', 141, 'StudentProgressReport', 49, '1481230800', '2016-2017', 1),
(176, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1253883.pdf', 141, 'StudentProgressReport', 567, '1481230800', '2016-2017', 1),
(177, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1161550.pdf', 141, 'StudentProgressReport', 51, '1481230800', '2016-2017', 1),
(178, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17992953.pdf', 141, 'StudentProgressReport', 52, '1481230800', '2016-2017', 1),
(179, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1551834.pdf', 141, 'StudentProgressReport', 132, '1481230800', '2016-2017', 1),
(180, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15828204.pdf', 141, 'StudentProgressReport', 63, '1486501200', '2016-2017', 1),
(181, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18634905.pdf', 141, 'StudentProgressReport', 64, '1484686800', '2016-2017', 1),
(182, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1556510.pdf', 141, 'StudentProgressReport', 209, '1481230800', '2016-2017', 1),
(183, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19645422.pdf', 141, 'StudentProgressReport', 177, '1541624400', '2016-2017', 1),
(184, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17122786.pdf', 141, 'StudentProgressReport', 205, '1541624400', '2016-2017', 1),
(185, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12450218.pdf', 141, 'StudentProgressReport', 206, '1496178000', '2016-2017', 1),
(186, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11464476.pdf', 141, 'StudentProgressReport', 140, '1530565200', '2016-2017', 1),
(187, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14186060.pdf', 141, 'StudentProgressReport', 143, '1481230800', '2016-2017', 1),
(188, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12372283.pdf', 141, 'StudentProgressReport', 293, '1481230800', '2016-2017', 1),
(189, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18029982.pdf', 141, 'StudentProgressReport', 176, '1541624400', '2016-2017', 1),
(190, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18318650.pdf', 141, 'StudentProgressReport', 169, '1531429200', '2016-2017', 1),
(191, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1743701.pdf', 141, 'StudentProgressReport', 221, '1481230800', '2016-2017', 1),
(192, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18694870.pdf', 141, 'StudentProgressReport', 292, '1481230800', '2016-2017', 1),
(193, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16562707.pdf', 141, 'StudentProgressReport', 172, '1481230800', '2016-2017', 1),
(194, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17939354.pdf', 141, 'StudentProgressReport', 173, '1531429200', '2016-2017', 1),
(195, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17383737.pdf', 141, 'StudentProgressReport', 174, '1481230800', '2016-2017', 1),
(196, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1674856.pdf', 141, 'StudentProgressReport', 568, '1481230800', '2016-2017', 1),
(197, 'Special Report 2016-2017', 'Special Report 2016-2017417869724.pdf', 175, 'StudentSpecialReport', 157, '1500670800', '2016-2017', 1),
(198, 'Special Report 2016-2017', 'Special Report 2016-2017690527896.pdf', 175, 'StudentSpecialReport', 135, '1500238800', '2016-2017', 1),
(199, 'Special Report 2016-2017', 'Special Report 2016-2017915.pdf', 175, 'StudentSpecialReport', 221, '1480453200', '2016-2017', 1),
(200, 'Progress_Report_2015-2016_Term1', 'Progress_Report_2015-2016_Term1898.pdf', 141, 'StudentProgressReport', 563, '1480453200', '2015-2016', 1),
(201, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18100776.pdf', 141, 'StudentProgressReport', 239, '1481230800', '2016-2017', 1),
(202, 'Special Report 2016-2017', 'Special Report 2016-2017957854983.pdf', 175, 'StudentSpecialReport', 529, '1490648400', '2016-2017', 1),
(203, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12036524.pdf', 141, 'StudentProgressReport', 65, '1481230800', '2016-2017', 1),
(204, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16991540.pdf', 141, 'StudentProgressReport', 47, '1481230800', '2016-2017', 1),
(205, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12907814.pdf', 141, 'StudentProgressReport', 187, '1541624400', '2016-2017', 1),
(206, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17979328.pdf', 141, 'StudentProgressReport', 294, '1541624400', '2016-2017', 1),
(207, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13702412.pdf', 141, 'StudentProgressReport', 222, '1529528400', '2016-2017', 1),
(208, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18993826.pdf', 141, 'StudentProgressReport', 226, '1481230800', '2016-2017', 1),
(209, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16562868.pdf', 141, 'StudentProgressReport', 183, '1481230800', '2016-2017', 1),
(210, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15047033.pdf', 141, 'StudentProgressReport', 179, '1481230800', '2016-2017', 1),
(211, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12002109.pdf', 141, 'StudentProgressReport', 190, '1481230800', '2016-2017', 1),
(212, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16146542.pdf', 141, 'StudentProgressReport', 193, '1481230800', '2016-2017', 1),
(213, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18169696.pdf', 141, 'StudentProgressReport', 198, '1481230800', '2016-2017', 1),
(214, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18102407.pdf', 141, 'StudentProgressReport', 192, '1484168400', '2016-2017', 1),
(215, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18686923.pdf', 141, 'StudentProgressReport', 530, '1481230800', '2016-2017', 1),
(216, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19378325.pdf', 141, 'StudentProgressReport', 318, '1489698000', '2016-2017', 1),
(217, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16379045.pdf', 141, 'StudentProgressReport', 181, '1481230800', '2016-2017', 1),
(218, 'Special Report 2016-2017', 'Special Report 2016-2017814265873.pdf', 175, 'StudentSpecialReport', 170, '1486933200', '2016-2017', 1),
(219, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12309499.pdf', 141, 'StudentProgressReport', 242, '1481230800', '2016-2017', 1),
(220, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12775005.pdf', 141, 'StudentProgressReport', 571, '1481230800', '2016-2017', 1),
(221, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16466928.pdf', 141, 'StudentProgressReport', 320, '1503954000', '2016-2017', 1),
(222, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19867653.pdf', 141, 'StudentProgressReport', 562, '1481230800', '2016-2017', 1),
(223, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11387084.pdf', 141, 'StudentProgressReport', 319, '1503954000', '2016-2017', 1),
(224, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14571418.pdf', 141, 'StudentProgressReport', 210, '1481230800', '2016-2017', 1),
(225, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1564908.pdf', 141, 'StudentProgressReport', 211, '1543525200', '2016-2017', 1),
(226, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11169845.pdf', 141, 'StudentProgressReport', 212, '1481230800', '2016-2017', 1),
(227, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1296242.pdf', 141, 'StudentProgressReport', 185, '1481230800', '2016-2017', 1),
(228, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11771715.pdf', 141, 'StudentProgressReport', 570, '1481230800', '2016-2017', 1),
(229, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11915176.pdf', 141, 'StudentProgressReport', 60, '1521752400', '2016-2017', 1),
(230, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18235345.pdf', 141, 'StudentProgressReport', 182, '1529528400', '2016-2017', 1),
(231, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18916759.pdf', 141, 'StudentProgressReport', 316, '1481230800', '2016-2017', 1),
(232, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19137702.pdf', 141, 'StudentProgressReport', 234, '1481230800', '2016-2017', 1),
(233, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16983062.pdf', 141, 'StudentProgressReport', 238, '1503954000', '2016-2017', 1),
(234, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18756177.pdf', 141, 'StudentProgressReport', 565, '1481230800', '2016-2017', 1),
(235, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15209498.pdf', 141, 'StudentProgressReport', 569, '1481230800', '2016-2017', 1),
(236, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1151815.pdf', 141, 'StudentProgressReport', 756, '1481230800', '2016-2017', 1),
(237, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12755851.pdf', 141, 'StudentProgressReport', 66, '1529614800', '2016-2017', 1),
(238, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12206499.pdf', 141, 'StudentProgressReport', 69, '1481230800', '2016-2017', 1),
(239, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12912384.pdf', 141, 'StudentProgressReport', 70, '1481230800', '2016-2017', 1),
(240, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12623106.pdf', 141, 'StudentProgressReport', 72, '1481230800', '2016-2017', 1),
(241, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13583969.pdf', 141, 'StudentProgressReport', 314, '1481230800', '2016-2017', 1),
(242, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16251788.pdf', 141, 'StudentProgressReport', 75, '1481230800', '2016-2017', 1),
(243, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14641496.pdf', 141, 'StudentProgressReport', 76, '1481230800', '2016-2017', 1),
(244, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19247846.pdf', 141, 'StudentProgressReport', 77, '1481230800', '2016-2017', 1),
(245, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18888453.pdf', 141, 'StudentProgressReport', 247, '1481230800', '2016-2017', 1),
(246, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18416274.pdf', 141, 'StudentProgressReport', 315, '1503954000', '2016-2017', 1),
(247, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11723560.pdf', 141, 'StudentProgressReport', 81, '1481230800', '2016-2017', 1),
(248, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11904915.pdf', 141, 'StudentProgressReport', 317, '1503954000', '2016-2017', 1),
(249, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15630525.pdf', 141, 'StudentProgressReport', 228, '1481230800', '2016-2017', 1),
(250, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13370411.pdf', 141, 'StudentProgressReport', 233, '1503954000', '2016-2017', 1),
(251, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16610678.pdf', 141, 'StudentProgressReport', 236, '1503954000', '2016-2017', 1),
(252, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term171496.pdf', 141, 'StudentProgressReport', 237, '1503954000', '2016-2017', 1),
(253, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1761039.pdf', 141, 'StudentProgressReport', 213, '1481230800', '2016-2017', 1),
(254, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19945861.pdf', 141, 'StudentProgressReport', 214, '1481230800', '2016-2017', 1),
(255, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18299804.pdf', 141, 'StudentProgressReport', 215, '1481230800', '2016-2017', 1),
(256, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16833149.pdf', 141, 'StudentProgressReport', 216, '1481230800', '2016-2017', 1),
(257, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19335860.pdf', 141, 'StudentProgressReport', 195, '1481230800', '2016-2017', 1),
(258, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14029532.pdf', 141, 'StudentProgressReport', 196, '1481230800', '2016-2017', 1),
(259, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17524168.pdf', 141, 'StudentProgressReport', 197, '1481230800', '2016-2017', 1),
(260, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14048262.pdf', 141, 'StudentProgressReport', 217, '1481230800', '2016-2017', 1),
(261, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14754248.pdf', 141, 'StudentProgressReport', 323, '1541624400', '2016-2017', 1),
(262, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12313085.pdf', 141, 'StudentProgressReport', 180, '1541624400', '2016-2017', 1),
(263, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19650156.pdf', 141, 'StudentProgressReport', 230, '1481230800', '2016-2017', 1),
(264, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term16216037.pdf', 141, 'StudentProgressReport', 231, '1481230800', '2016-2017', 1),
(265, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17180846.pdf', 141, 'StudentProgressReport', 191, '1490302800', '2016-2017', 1),
(266, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14624256.pdf', 141, 'StudentProgressReport', 201, '1541624400', '2016-2017', 1),
(267, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18736699.pdf', 141, 'StudentProgressReport', 202, '1541624400', '2016-2017', 1),
(268, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15080215.pdf', 141, 'StudentProgressReport', 203, '1481230800', '2016-2017', 1),
(269, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term15563493.pdf', 141, 'StudentProgressReport', 204, '1541624400', '2016-2017', 1),
(270, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13848177.pdf', 141, 'StudentProgressReport', 207, '1481230800', '2016-2017', 1),
(271, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17704545.pdf', 141, 'StudentProgressReport', 218, '1481230800', '2016-2017', 1),
(272, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18043557.pdf', 141, 'StudentProgressReport', 219, '1481230800', '2016-2017', 1),
(273, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12111646.pdf', 141, 'StudentProgressReport', 133, '1481230800', '2016-2017', 1),
(277, 'YEAR 2A', 'YEAR-2A-StudentProgressReport-324.docx', 141, 'StudentProgressReport', 324, '1481610120', '2015-2016', 2),
(278, 'YEAR 2A.', 'YEAR-2A-StudentProgressReport-324.docx', 141, 'StudentProgressReport', 324, '1481610300', '2015-2016', 1),
(283, 'YEAR 2A.,', 'YEAR-2A-StudentProgressReport-324.xls', 141, 'StudentProgressReport', 324, '1481611200', '2015-2016', 3),
(284, 'YEAR 2A..,', 'YEAR-2A-StudentProgressReport-324.xls', 141, 'StudentProgressReport', 324, '1481611200', '2015-2016', 3),
(285, 'YEAR 2A...,', 'YEAR-2A-StudentProgressReport-324.xls', 141, 'StudentProgressReport', 324, '1481611260', '2015-2016', 3),
(286, 'YEAR 2B', 'YEAR-2B-StudentProgressReport-325.docx', 141, 'StudentProgressReport', 325, '1481612100', '2015-2016', 1),
(287, 'YEAR 2B.', 'YEAR-2B-StudentProgressReport-325.docx', 141, 'StudentProgressReport', 325, '1481612580', '2015-2016', 2),
(288, 'YEAR 2B', 'YEAR-2B-StudentProgressReport-326.docx', 141, 'StudentProgressReport', 326, '1481613420', '2015-2016', 1),
(289, 'YEAR 2B,', 'YEAR-2B-StudentProgressReport-326.docx', 141, 'StudentProgressReport', 326, '1481613540', '2015-2016', 2),
(290, 'YEAR 2 A', 'YEAR-2-A-StudentProgressReport-329.docx', 141, 'StudentProgressReport', 329, '1481620740', '2015-2016', 2),
(291, 'YEAR 2 A', 'YEAR-2-A-StudentProgressReport-330.docx', 141, 'StudentProgressReport', 330, '1481623140', '2015-2016', 1),
(292, 'YEAR 2 A.', 'YEAR-2-A-StudentProgressReport-330.docx', 141, 'StudentProgressReport', 330, '1481623320', '2015-2016', 2),
(293, 'YEAR 2 A', 'YEAR-2-A-StudentProgressReport-331.docx', 141, 'StudentProgressReport', 331, '1481626800', '2015-2016', 1),
(294, 'YEAR 2 A.', 'YEAR-2-A-StudentProgressReport-331.docx', 141, 'StudentProgressReport', 331, '1481626920', '2015-2016', 2),
(295, 'YEAR 2 C', 'YEAR-2-C-StudentProgressReport-339.docx', 141, 'StudentProgressReport', 339, '1481632500', '2015-2016', 1),
(296, 'YEAR 2 C.', 'YEAR-2-C-StudentProgressReport-339.docx', 141, 'StudentProgressReport', 339, '1481632560', '2015-2016', 2),
(297, 'YEAR 2 C.,', 'YEAR-2-C-StudentProgressReport-340.docx', 141, 'StudentProgressReport', 340, '1481633400', '2015-2016', 1),
(298, 'YEAR 2 C,', 'YEAR-2-C-StudentProgressReport-340.docx', 141, 'StudentProgressReport', 340, '1481633640', '2015-2016', 2),
(299, 'YEAR 2 C,,', 'YEAR-2-C-StudentProgressReport-341.docx', 141, 'StudentProgressReport', 341, '1481696880', '2015-2016', 1),
(300, 'YEAR 2 C..', 'YEAR-2-C-StudentProgressReport-341.docx', 141, 'StudentProgressReport', 341, '1481697000', '2015-2016', 2),
(301, 'YEAR 2 C', 'YEAR-2-C-StudentProgressReport-342.docx', 141, 'StudentProgressReport', 342, '1481697600', '2015-2016', 1),
(302, 'YEAR 2 C,', 'YEAR-2-C-StudentProgressReport-342.docx', 141, 'StudentProgressReport', 342, '1481697660', '2015-2016', 2),
(303, 'YEAR 2 A', 'YEAR-2-A-StudentProgressReport-344.docx', 141, 'StudentProgressReport', 344, '1481700000', '2015-2016', 1),
(304, 'YEAR 2 A.', 'YEAR-2-A-StudentProgressReport-344.docx', 141, 'StudentProgressReport', 344, '1481700060', '2015-2016', 2),
(305, 'YEAR 3 A', 'YEAR-3-A-StudentProgressReport-347.docx', 141, 'StudentProgressReport', 347, '1481701620', '2014-2015', 1),
(306, 'YEAR 3 B', 'YEAR-3-B-StudentProgressReport-348.docx', 141, 'StudentProgressReport', 348, '1481703000', '2015-2016', 2),
(307, 'YEAR 3 B', 'YEAR-3-B-StudentProgressReport-349.docx', 141, 'StudentProgressReport', 349, '1481704860', '2015-2016', 2),
(308, 'YEAR 3 B,', 'YEAR-3-B-StudentProgressReport-350.docx', 141, 'StudentProgressReport', 350, '1481705580', '2015-2016', 2),
(309, 'YEAR 4 A', 'YEAR-4-A-StudentProgressReport-354.docx', 141, 'StudentProgressReport', 354, '1481713560', '2015-2016', 2),
(310, 'Year 4 A', 'Year-4-A-StudentProgressReport-356.docx', 141, 'StudentProgressReport', 356, '1481781960', '2015-2016', 1),
(311, 'Year 4 A', 'Year-4-A-StudentProgressReport-353.docx', 141, 'StudentProgressReport', 353, '1481784600', '2014-2015', 1),
(312, 'Year 4 A.', 'Year-4-A-StudentProgressReport-353.docx', 141, 'StudentProgressReport', 353, '1481784660', '2014-2015', 2),
(313, 'Year 5 A', 'Year-5-A-StudentProgressReport-362.doc', 141, 'StudentProgressReport', 362, '1481787480', '2014-2015', 1),
(314, 'Year 5 A.', 'Year-5-A-StudentProgressReport-362.doc', 141, 'StudentProgressReport', 362, '1481787540', '2014-2015', 2),
(315, 'Year 5 B', 'Year-5-B-StudentProgressReport-363.doc', 141, 'StudentProgressReport', 363, '1481790300', '2015-2016', 2),
(316, 'Year 6', 'Year-6-StudentProgressReport-367.docx', 141, 'StudentProgressReport', 367, '1481799060', '2015-2016', 2),
(317, 'Year 6.', 'Year-6-StudentProgressReport-367.docx', 141, 'StudentProgressReport', 367, '1481799720', '2015-2016', 1),
(318, 'Year 8', 'Year-8-StudentProgressReport-368.docx', 141, 'StudentProgressReport', 368, '1481802420', '2015-2016', 1),
(319, 'Year 8.', 'Year-8-StudentProgressReport-368.docx', 141, 'StudentProgressReport', 368, '1481802540', '2015-2016', 2),
(320, 'Year 8', 'Year-8-StudentProgressReport-371.docx', 141, 'StudentProgressReport', 371, '1481868360', '2014-2015', 1),
(321, 'Year 8,', 'Year-8-StudentProgressReport-371.docx', 141, 'StudentProgressReport', 371, '1481868420', '2014-2015', 2),
(322, 'Year 7', 'Year-7-StudentProgressReport-373.docx', 141, 'StudentProgressReport', 373, '1481870520', '2015-2016', 2),
(323, 'Year 7.', 'Year-7-StudentProgressReport-373.docx', 141, 'StudentProgressReport', 373, '1481870640', '2015-2016', 1),
(324, 'Year 4 B', 'Year-4-B-StudentProgressReport-358.doc', 141, 'StudentProgressReport', 358, '1481873880', '2015-2016', 1),
(325, 'Year 4 B,', 'Year-4-B-StudentProgressReport-358.doc', 141, 'StudentProgressReport', 358, '1481874000', '2015-2016', 2),
(326, 'Year 7', 'Year-7-StudentProgressReport-375.docx', 141, 'StudentProgressReport', 375, '1481876100', '2015-2016', 1),
(327, 'Year 7,', 'Year-7-StudentProgressReport-375.docx', 141, 'StudentProgressReport', 375, '1481876160', '2015-2016', 2),
(328, 'Year 7', 'Year-7-StudentProgressReport-376.docx', 141, 'StudentProgressReport', 376, '1481877240', '2015-2016', 1),
(329, 'Year 7.', 'Year-7-StudentProgressReport-376.docx', 141, 'StudentProgressReport', 376, '1481877360', '2015-2016', 2),
(330, 'Year 9', 'Year-9-StudentProgressReport-377.docx', 141, 'StudentProgressReport', 377, '1481878800', '2015-2016', 1),
(331, 'Year 9.', 'Year-9-StudentProgressReport-377.docx', 141, 'StudentProgressReport', 377, '1481878860', '2015-2016', 2),
(332, 'Year 9', 'Year-9-StudentProgressReport-378.docx', 141, 'StudentProgressReport', 378, '1481879820', '2015-2016', 2),
(333, 'Year 9.', 'Year-9-StudentProgressReport-378.docx', 141, 'StudentProgressReport', 378, '1481879880', '2015-2016', 1),
(336, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29094776.pdf', 141, 'StudentProgressReport', 192, '1490821200', '2016-2017', 2),
(337, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2105817.pdf', 141, 'StudentProgressReport', 159, '1490907600', '2016-2017', 2),
(338, 'Special Report 2016-2017', 'Special Report 2016-2017841107688.pdf', 175, 'StudentSpecialReport', 169, '1484082000', '2016-2017', 1),
(339, 'Special Report 2016-2017', 'Special Report 2016-2017166237048.pdf', 175, 'StudentSpecialReport', 524, '1484600400', '2016-2017', 1),
(340, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17638558.pdf', 141, 'StudentProgressReport', 524, '1484859600', '2016-2017', 1),
(341, 'Special Report 2016-2017', 'Special Report 2016-2017560434279.pdf', 175, 'StudentSpecialReport', 497, '1493672400', '2016-2017', 1),
(342, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23881450.pdf', 141, 'StudentProgressReport', 157, '1490907600', '2016-2017', 2),
(343, 'Special Report 2016-2017', 'Special Report 2016-2017454104338.pdf', 175, 'StudentSpecialReport', 158, '1490994000', '2016-2017', 2),
(344, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23244340.pdf', 141, 'StudentProgressReport', 231, '1490821200', '2016-2017', 2),
(345, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22724568.pdf', 141, 'StudentProgressReport', 178, '1492981200', '2016-2017', 2),
(346, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22706092.pdf', 141, 'StudentProgressReport', 524, '1490821200', '2016-2017', 2),
(347, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26511274.pdf', 141, 'StudentProgressReport', 181, '1520888400', '2016-2017', 2),
(348, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23282137.pdf', 141, 'StudentProgressReport', 530, '1490821200', '2016-2017', 2),
(349, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29964723.pdf', 141, 'StudentProgressReport', 246, '1490821200', '2016-2017', 2),
(350, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25824779.pdf', 141, 'StudentProgressReport', 318, '1490821200', '2016-2017', 2),
(351, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26573524.pdf', 141, 'StudentProgressReport', 323, '1517950800', '2016-2017', 2),
(352, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2847421.pdf', 141, 'StudentProgressReport', 529, '1490821200', '2016-2017', 2),
(353, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21829323.pdf', 141, 'StudentProgressReport', 220, '1498683600', '2016-2017', 2),
(354, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26510609.pdf', 141, 'StudentProgressReport', 497, '1492981200', '2016-2017', 2),
(355, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22175441.pdf', 141, 'StudentProgressReport', 144, '1498683600', '2016-2017', 2),
(356, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28842614.pdf', 141, 'StudentProgressReport', 168, '1497560400', '2016-2017', 2),
(357, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27682170.pdf', 141, 'StudentProgressReport', 169, '1490907600', '2016-2017', 2),
(358, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28957235.pdf', 141, 'StudentProgressReport', 170, '1490907600', '2016-2017', 2),
(359, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26632507.pdf', 141, 'StudentProgressReport', 173, '1490907600', '2016-2017', 2),
(360, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29015223.pdf', 141, 'StudentProgressReport', 221, '1490821200', '2016-2017', 2),
(361, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23751200.pdf', 141, 'StudentProgressReport', 104, '1492462800', '2016-2017', 2),
(362, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24547418.pdf', 141, 'StudentProgressReport', 110, '1492981200', '2016-2017', 2),
(363, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25036834.pdf', 141, 'StudentProgressReport', 645, '1490821200', '2016-2017', 2),
(364, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27576615.pdf', 141, 'StudentProgressReport', 242, '1490821200', '2016-2017', 2),
(365, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21094912.pdf', 141, 'StudentProgressReport', 226, '1490821200', '2016-2017', 2),
(366, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22485217.pdf', 141, 'StudentProgressReport', 229, '1490821200', '2016-2017', 2),
(367, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term267206.pdf', 141, 'StudentProgressReport', 236, '1490821200', '2016-2017', 2),
(368, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25793805.pdf', 141, 'StudentProgressReport', 235, '1490821200', '2016-2017', 2),
(369, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22384797.pdf', 141, 'StudentProgressReport', 225, '1490821200', '2016-2017', 2),
(370, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26573267.pdf', 141, 'StudentProgressReport', 147, '1490907600', '2016-2017', 2);
INSERT INTO `documents` (`Id`, `Title`, `Path`, `Document`, `Detail`, `UniqueId`, `DOE`, `session`, `term`) VALUES
(371, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23479930.pdf', 141, 'StudentProgressReport', 148, '1490907600', '2016-2017', 2),
(372, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29633521.pdf', 141, 'StudentProgressReport', 149, '1520888400', '2016-2017', 2),
(373, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29120576.pdf', 141, 'StudentProgressReport', 153, '1490907600', '2016-2017', 2),
(374, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24116469.pdf', 141, 'StudentProgressReport', 152, '1490907600', '2016-2017', 2),
(375, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21364389.pdf', 141, 'StudentProgressReport', 151, '1520888400', '2016-2017', 2),
(376, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27213719.pdf', 141, 'StudentProgressReport', 136, '1520888400', '2016-2017', 2),
(377, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25148237.pdf', 141, 'StudentProgressReport', 137, '1490907600', '2016-2017', 2),
(378, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26934511.pdf', 141, 'StudentProgressReport', 138, '1520888400', '2016-2017', 2),
(379, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27806921.pdf', 141, 'StudentProgressReport', 140, '1520888400', '2016-2017', 2),
(380, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25787994.pdf', 141, 'StudentProgressReport', 141, '1490907600', '2016-2017', 2),
(381, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21039409.pdf', 141, 'StudentProgressReport', 142, '1520888400', '2016-2017', 2),
(382, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21147493.pdf', 141, 'StudentProgressReport', 143, '1490907600', '2016-2017', 2),
(383, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2979685.pdf', 141, 'StudentProgressReport', 174, '1490907600', '2016-2017', 2),
(384, 'Special Report 2016-2017', 'Special Report 2016-2017683891640.pdf', 175, 'StudentSpecialReport', 246, '1490130000', '2016-2017', 2),
(385, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26362906.pdf', 141, 'StudentProgressReport', 135, '1490907600', '2016-2017', 2),
(386, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24941912.pdf', 141, 'StudentProgressReport', 293, '1520888400', '2016-2017', 2),
(387, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26237855.pdf', 141, 'StudentProgressReport', 567, '1490821200', '2016-2017', 2),
(388, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2139294.pdf', 141, 'StudentProgressReport', 578, '1490821200', '2016-2017', 2),
(389, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21169626.pdf', 141, 'StudentProgressReport', 592, '1490821200', '2016-2017', 2),
(390, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26569012.pdf', 141, 'StudentProgressReport', 109, '1490994000', '2016-2017', 2),
(391, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24169309.pdf', 141, 'StudentProgressReport', 227, '1490821200', '2016-2017', 2),
(392, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2143729.pdf', 141, 'StudentProgressReport', 161, '1490907600', '2016-2017', 2),
(393, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27193730.pdf', 141, 'StudentProgressReport', 150, '1490907600', '2016-2017', 2),
(394, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21361948.pdf', 141, 'StudentProgressReport', 145, '1520888400', '2016-2017', 2),
(395, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25492049.pdf', 141, 'StudentProgressReport', 211, '1499374800', '2016-2017', 2),
(396, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29880166.pdf', 141, 'StudentProgressReport', 81, '1490821200', '2016-2017', 2),
(397, 'Special Report 2016-2017', 'Special Report 2016-2017674702698.pdf', 175, 'StudentSpecialReport', 3, '1490648400', '2016-2017', 3),
(398, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23657119.pdf', 141, 'StudentProgressReport', 64, '1490821200', '2016-2017', 2),
(399, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27224568.pdf', 141, 'StudentProgressReport', 66, '1490821200', '2016-2017', 2),
(400, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29769571.pdf', 141, 'StudentProgressReport', 47, '1490821200', '2016-2017', 2),
(401, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24672272.pdf', 141, 'StudentProgressReport', 68, '1490821200', '2016-2017', 2),
(402, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21778269.pdf', 141, 'StudentProgressReport', 70, '1490821200', '2016-2017', 2),
(403, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25933331.pdf', 141, 'StudentProgressReport', 88, '1490821200', '2016-2017', 2),
(404, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21470546.pdf', 141, 'StudentProgressReport', 72, '1490821200', '2016-2017', 2),
(405, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21086177.pdf', 141, 'StudentProgressReport', 314, '1490821200', '2016-2017', 2),
(406, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26077485.pdf', 141, 'StudentProgressReport', 75, '1490821200', '2016-2017', 2),
(407, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21203063.pdf', 141, 'StudentProgressReport', 76, '1490821200', '2016-2017', 2),
(408, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22525467.pdf', 141, 'StudentProgressReport', 60, '1520456400', '2016-2017', 2),
(409, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21653957.pdf', 141, 'StudentProgressReport', 77, '1490821200', '2016-2017', 2),
(410, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2146618.pdf', 141, 'StudentProgressReport', 247, '1490821200', '2016-2017', 2),
(411, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28381356.pdf', 141, 'StudentProgressReport', 212, '1490821200', '2016-2017', 2),
(412, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28321261.pdf', 141, 'StudentProgressReport', 213, '1490821200', '2016-2017', 2),
(413, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22071288.pdf', 141, 'StudentProgressReport', 315, '1490821200', '2016-2017', 2),
(414, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24520825.pdf', 141, 'StudentProgressReport', 320, '1490821200', '2016-2017', 2),
(415, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26252425.pdf', 141, 'StudentProgressReport', 84, '1490821200', '2016-2017', 2),
(416, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29323545.pdf', 141, 'StudentProgressReport', 175, '1490821200', '2016-2017', 2),
(417, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26285727.pdf', 141, 'StudentProgressReport', 85, '1490821200', '2016-2017', 2),
(418, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2564467.pdf', 141, 'StudentProgressReport', 63, '1490821200', '2016-2017', 2),
(419, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29533133.pdf', 141, 'StudentProgressReport', 86, '1490821200', '2016-2017', 2),
(420, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28853121.pdf', 141, 'StudentProgressReport', 89, '1490821200', '2016-2017', 2),
(421, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23857041.pdf', 141, 'StudentProgressReport', 90, '1490821200', '2016-2017', 2),
(422, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2797769.pdf', 141, 'StudentProgressReport', 317, '1490821200', '2016-2017', 2),
(423, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25449939.pdf', 141, 'StudentProgressReport', 580, '1490821200', '2016-2017', 2),
(424, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27322357.pdf', 141, 'StudentProgressReport', 92, '1490821200', '2016-2017', 2),
(425, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27567513.pdf', 141, 'StudentProgressReport', 94, '1490821200', '2016-2017', 2),
(426, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26149422.pdf', 141, 'StudentProgressReport', 316, '1490821200', '2016-2017', 2),
(427, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28192923.pdf', 141, 'StudentProgressReport', 96, '1490821200', '2016-2017', 2),
(428, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22839209.pdf', 141, 'StudentProgressReport', 98, '1490821200', '2016-2017', 2),
(429, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26070875.pdf', 141, 'StudentProgressReport', 573, '1490821200', '2016-2017', 2),
(430, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29290485.pdf', 141, 'StudentProgressReport', 116, '1490821200', '2016-2017', 2),
(431, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22553782.pdf', 141, 'StudentProgressReport', 113, '1490821200', '2016-2017', 2),
(432, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21650250.pdf', 141, 'StudentProgressReport', 576, '1490821200', '2016-2017', 2),
(433, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25979041.pdf', 141, 'StudentProgressReport', 115, '1490821200', '2016-2017', 2),
(434, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25149289.pdf', 141, 'StudentProgressReport', 38, '1490821200', '2016-2017', 2),
(435, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2343738.pdf', 141, 'StudentProgressReport', 39, '1490821200', '2016-2017', 2),
(436, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27915647.pdf', 141, 'StudentProgressReport', 127, '1490821200', '2016-2017', 2),
(437, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23208264.pdf', 141, 'StudentProgressReport', 128, '1490821200', '2016-2017', 2),
(438, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22786509.pdf', 141, 'StudentProgressReport', 45, '1490821200', '2016-2017', 2),
(439, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22834274.pdf', 141, 'StudentProgressReport', 46, '1520456400', '2016-2017', 2),
(440, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23749856.pdf', 141, 'StudentProgressReport', 477, '1490821200', '2016-2017', 2),
(441, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25125997.pdf', 141, 'StudentProgressReport', 215, '1490821200', '2016-2017', 2),
(442, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27413798.pdf', 141, 'StudentProgressReport', 758, '1490821200', '2016-2017', 2),
(443, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25644444.pdf', 141, 'StudentProgressReport', 563, '1490821200', '2016-2017', 2),
(444, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2498997.pdf', 141, 'StudentProgressReport', 133, '1520456400', '2016-2017', 2),
(445, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25107733.pdf', 141, 'StudentProgressReport', 566, '1490821200', '2016-2017', 2),
(446, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26996731.pdf', 141, 'StudentProgressReport', 117, '1490821200', '2016-2017', 2),
(447, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2753414.pdf', 141, 'StudentProgressReport', 42, '1490821200', '2016-2017', 2),
(448, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24242605.pdf', 141, 'StudentProgressReport', 41, '1490821200', '2016-2017', 2),
(449, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29161156.pdf', 141, 'StudentProgressReport', 49, '1520370000', '2016-2017', 2),
(450, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23757476.pdf', 141, 'StudentProgressReport', 51, '1490821200', '2016-2017', 2),
(451, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27776712.pdf', 141, 'StudentProgressReport', 132, '1519160400', '2016-2017', 2),
(452, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2611296.pdf', 141, 'StudentProgressReport', 568, '1490821200', '2016-2017', 2),
(453, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27449910.pdf', 141, 'StudentProgressReport', 569, '1490821200', '2016-2017', 2),
(454, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2191097.pdf', 141, 'StudentProgressReport', 571, '1490821200', '2016-2017', 2),
(455, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2227384.pdf', 141, 'StudentProgressReport', 756, '1490821200', '2016-2017', 2),
(456, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25122102.pdf', 141, 'StudentProgressReport', 562, '1490821200', '2016-2017', 2),
(457, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22072120.pdf', 141, 'StudentProgressReport', 176, '1490821200', '2016-2017', 2),
(458, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24156468.pdf', 141, 'StudentProgressReport', 177, '1517950800', '2016-2017', 2),
(459, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21454852.pdf', 141, 'StudentProgressReport', 180, '1490821200', '2016-2017', 2),
(460, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27155874.pdf', 141, 'StudentProgressReport', 203, '1490821200', '2016-2017', 2),
(461, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22366389.pdf', 141, 'StudentProgressReport', 294, '1490821200', '2016-2017', 2),
(462, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29907458.pdf', 141, 'StudentProgressReport', 205, '1490821200', '2016-2017', 2),
(463, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26150529.pdf', 141, 'StudentProgressReport', 210, '1490821200', '2016-2017', 2),
(464, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24027301.pdf', 141, 'StudentProgressReport', 187, '1490821200', '2016-2017', 2),
(465, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2862008.pdf', 141, 'StudentProgressReport', 217, '1490821200', '2016-2017', 2),
(466, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23781628.pdf', 141, 'StudentProgressReport', 219, '1490821200', '2016-2017', 2),
(467, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24906649.pdf', 141, 'StudentProgressReport', 201, '1490821200', '2016-2017', 2),
(468, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25868944.pdf', 141, 'StudentProgressReport', 222, '1529528400', '2016-2017', 2),
(469, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22643839.pdf', 141, 'StudentProgressReport', 224, '1490821200', '2016-2017', 2),
(470, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21942031.pdf', 141, 'StudentProgressReport', 1, '1490821200', '2016-2017', 2),
(471, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26509254.pdf', 141, 'StudentProgressReport', 386, '1490821200', '2016-2017', 2),
(472, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22191027.pdf', 141, 'StudentProgressReport', 52, '1519160400', '2016-2017', 2),
(473, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25191385.pdf', 141, 'StudentProgressReport', 237, '1490821200', '2016-2017', 2),
(474, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23238435.pdf', 141, 'StudentProgressReport', 202, '1490821200', '2016-2017', 2),
(475, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2134840.pdf', 141, 'StudentProgressReport', 292, '1490821200', '2016-2017', 2),
(476, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27175197.pdf', 141, 'StudentProgressReport', 240, '1490821200', '2016-2017', 2),
(477, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25735302.pdf', 141, 'StudentProgressReport', 207, '1490821200', '2016-2017', 2),
(478, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27896939.pdf', 141, 'StudentProgressReport', 182, '1528318800', '2016-2017', 2),
(479, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28335218.pdf', 141, 'StudentProgressReport', 186, '1490821200', '2016-2017', 2),
(480, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25732849.pdf', 141, 'StudentProgressReport', 189, '1528059600', '2016-2017', 2),
(481, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26457874.pdf', 141, 'StudentProgressReport', 194, '1517864400', '2016-2017', 2),
(482, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24135137.pdf', 141, 'StudentProgressReport', 191, '1490821200', '2016-2017', 2),
(483, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29739600.pdf', 141, 'StudentProgressReport', 193, '1490821200', '2016-2017', 2),
(484, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24855943.pdf', 141, 'StudentProgressReport', 195, '1490821200', '2016-2017', 2),
(485, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28919669.pdf', 141, 'StudentProgressReport', 196, '1490821200', '2016-2017', 2),
(486, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28725518.pdf', 141, 'StudentProgressReport', 199, '1490821200', '2016-2017', 2),
(487, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25412301.pdf', 141, 'StudentProgressReport', 204, '1490821200', '2016-2017', 2),
(488, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2809814.pdf', 141, 'StudentProgressReport', 200, '1490821200', '2016-2017', 2),
(489, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25435905.pdf', 141, 'StudentProgressReport', 139, '1490907600', '2016-2017', 2),
(490, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22141270.pdf', 141, 'StudentProgressReport', 206, '1490821200', '2016-2017', 2),
(491, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term23710883.pdf', 141, 'StudentProgressReport', 380, '1495573200', '2016-2017', 2),
(492, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28842890.pdf', 141, 'StudentProgressReport', 570, '1520283600', '2016-2017', 2),
(493, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28545177.pdf', 141, 'StudentProgressReport', 158, '1490907600', '2016-2017', 2),
(494, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21205215.pdf', 141, 'StudentProgressReport', 565, '1490821200', '2016-2017', 2),
(495, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26782334.pdf', 141, 'StudentProgressReport', 162, '1490907600', '2016-2017', 2),
(496, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27121353.pdf', 141, 'StudentProgressReport', 590, '1490821200', '2016-2017', 2),
(497, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21206207.pdf', 141, 'StudentProgressReport', 146, '1490907600', '2016-2017', 2),
(498, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25412299.pdf', 141, 'StudentProgressReport', 184, '1490821200', '2016-2017', 2),
(499, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21114725.pdf', 141, 'StudentProgressReport', 185, '1490821200', '2016-2017', 2),
(500, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22407753.pdf', 141, 'StudentProgressReport', 190, '1490821200', '2016-2017', 2),
(501, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26077135.pdf', 141, 'StudentProgressReport', 197, '1490821200', '2016-2017', 2),
(502, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24339123.pdf', 141, 'StudentProgressReport', 234, '1490821200', '2016-2017', 2),
(503, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29410496.pdf', 141, 'StudentProgressReport', 233, '1490821200', '2016-2017', 2),
(504, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24521579.pdf', 141, 'StudentProgressReport', 171, '1490907600', '2016-2017', 2),
(505, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2482505.pdf', 141, 'StudentProgressReport', 172, '1490907600', '2016-2017', 2),
(506, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25707612.pdf', 141, 'StudentProgressReport', 243, '1490821200', '2016-2017', 2),
(507, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24660766.pdf', 141, 'StudentProgressReport', 248, '1490821200', '2016-2017', 2),
(508, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26235516.pdf', 141, 'StudentProgressReport', 238, '1490821200', '2016-2017', 2),
(509, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25611476.pdf', 141, 'StudentProgressReport', 244, '1490821200', '2016-2017', 2),
(510, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24684135.pdf', 141, 'StudentProgressReport', 319, '1490821200', '2016-2017', 2),
(511, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term29809467.pdf', 141, 'StudentProgressReport', 245, '1490821200', '2016-2017', 2),
(512, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24997420.pdf', 141, 'StudentProgressReport', 251, '1490821200', '2016-2017', 2),
(513, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22422285.pdf', 141, 'StudentProgressReport', 218, '1490821200', '2016-2017', 2),
(514, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term24807918.pdf', 141, 'StudentProgressReport', 250, '1490821200', '2016-2017', 2),
(515, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27344130.pdf', 141, 'StudentProgressReport', 214, '1490821200', '2016-2017', 2),
(516, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25471182.pdf', 141, 'StudentProgressReport', 216, '1490821200', '2016-2017', 2),
(517, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2187918.pdf', 141, 'StudentProgressReport', 255, '1490821200', '2016-2017', 2),
(518, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27953459.pdf', 141, 'StudentProgressReport', 254, '1490821200', '2016-2017', 2),
(519, 'Special Report 2016-2017', 'Special Report 2016-2017279039466.pdf', 175, 'StudentSpecialReport', 63, '1490821200', '2016-2017', 2),
(520, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term26654884.pdf', 141, 'StudentProgressReport', 258, '1490907600', '2016-2017', 2),
(521, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2694758.pdf', 141, 'StudentProgressReport', 259, '1490907600', '2016-2017', 2),
(522, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term25825229.pdf', 141, 'StudentProgressReport', 257, '1490907600', '2016-2017', 2),
(523, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2318257.pdf', 141, 'StudentProgressReport', 256, '1490907600', '2016-2017', 2),
(524, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27364454.pdf', 141, 'StudentProgressReport', 260, '1490907600', '2016-2017', 2),
(525, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21452459.pdf', 141, 'StudentProgressReport', 261, '1490907600', '2016-2017', 2),
(526, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term28002308.pdf', 141, 'StudentProgressReport', 160, '1490907600', '2016-2017', 2),
(527, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term2737841.pdf', 141, 'StudentProgressReport', 271, '1490907600', '2016-2017', 2),
(534, 'Special Report 2016-2017', 'Special Report 2016-2017836183660.pdf', 175, 'StudentSpecialReport', 159, '1492462800', '2016-2017', 2),
(542, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-174.docx', 141, 'StudentProgressReport', 174, '1492603980', '2015-2016', 1),
(543, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-174.pdf', 141, 'StudentProgressReport', 174, '1492604100', '2015-2016', 2),
(544, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-174.pdf', 141, 'StudentProgressReport', 174, '1492604160', '2015-2016', 3),
(545, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37121702.pdf', 141, 'StudentProgressReport', 524, '1495054800', '2016-2017', 3),
(546, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37351177.pdf', 141, 'StudentProgressReport', 110, '1500238800', '2016-2017', 3),
(547, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22617926.pdf', 141, 'StudentProgressReport', 134, '1520888400', '2016-2017', 2),
(548, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-206.pdf', 141, 'StudentProgressReport', 206, '1495536780', '2015-2016', 2),
(549, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-206.pdf', 141, 'StudentProgressReport', 206, '1495547340', '2014-2015', 3),
(550, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-206.pdf', 141, 'StudentProgressReport', 206, '1495547400', '2014-2015', 2),
(551, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-206.pdf', 141, 'StudentProgressReport', 206, '1495547400', '2014-2015', 1),
(553, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495704660', '2015-2016', 1),
(554, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495704720', '2015-2016', 2),
(555, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495704900', '2015-2016', 3),
(556, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495704960', '2015-2016', 1),
(557, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495705020', '2015-2016', 2),
(558, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495705080', '2015-2016', 3),
(559, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-172.pdf', 141, 'StudentProgressReport', 172, '1495705140', '2015-2016', 1),
(560, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-172.pdf', 141, 'StudentProgressReport', 172, '1495705140', '2015-2016', 2),
(561, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-172.pdf', 141, 'StudentProgressReport', 172, '1495705200', '2015-2016', 3),
(562, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495705260', '2015-2016', 1),
(563, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495705320', '2015-2016', 2),
(564, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495705320', '2015-2016', 3),
(565, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495705440', '2015-2016', 1),
(566, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495705500', '2015-2016', 2),
(567, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495705560', '2015-2016', 3),
(568, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495707120', '2015-2016', 1),
(569, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495707120', '2015-2016', 2),
(570, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495707240', '2015-2016', 3),
(571, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495708080', '2014-2015', 1),
(572, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495708140', '2014-2015', 2),
(573, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1495708200', '2014-2015', 3),
(574, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495708800', '2014-2015', 1),
(575, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495708860', '2014-2015', 2),
(576, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1495708920', '2014-2015', 3),
(577, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-174.pdf', 141, 'StudentProgressReport', 174, '1495708980', '2014-2015', 2),
(578, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-174.pdf', 141, 'StudentProgressReport', 174, '1495709100', '2014-2015', 3),
(579, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495710660', '2014-2015', 1),
(580, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495710720', '2014-2015', 2),
(581, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1495711080', '2014-2015', 3),
(582, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495711440', '2014-2015', 1),
(583, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495711500', '2014-2015', 2),
(584, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1495711560', '2014-2015', 3),
(588, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495712160', '2014-2015', 1),
(589, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495712220', '2014-2015', 2),
(590, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1495712220', '2014-2015', 3),
(591, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term22207796.pdf', 141, 'StudentProgressReport', 95, '1496178000', '2016-2017', 2),
(592, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14026952.pdf', 141, 'StudentProgressReport', 95, '1496178000', '2016-2017', 1),
(593, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18762725.pdf', 141, 'StudentProgressReport', 134, '1496178000', '2016-2017', 1),
(594, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496830260', '2013-2014', 1),
(595, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496830320', '2013-2014', 1),
(596, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496830380', '2013-2014', 1),
(597, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496830440', '2013-2014', 1),
(598, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496830500', '2013-2014', 1),
(599, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496830620', '2013-2014', 2),
(600, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496830740', '2013-2014', 2),
(601, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496830800', '2013-2014', 2),
(602, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496831040', '2013-2014', 2),
(603, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496831820', '2013-2014', 2),
(604, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496831880', '2013-2014', 3),
(605, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496831940', '2013-2014', 3),
(606, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496832000', '2013-2014', 3),
(607, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496832060', '2013-2014', 3),
(608, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496832120', '2013-2014', 3),
(609, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496836200', '2012-2013', 1),
(610, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496836260', '2012-2013', 1),
(611, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496836380', '2012-2013', 1),
(612, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496836500', '2012-2013', 1),
(613, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496836560', '2012-2013', 2),
(614, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496836620', '2012-2013', 2),
(615, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496836740', '2012-2013', 2),
(616, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496836740', '2012-2013', 2),
(617, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496836860', '2012-2013', 2),
(618, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496836920', '2012-2013', 3),
(619, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496837100', '2012-2013', 3),
(620, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496837160', '2012-2013', 3),
(621, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496837220', '2012-2013', 3),
(622, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496837400', '2012-2013', 3),
(623, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496841660', '2011-2012', 1),
(624, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496841840', '2011-2012', 1),
(625, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496841900', '2011-2012', 1),
(626, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496841960', '2011-2012', 1),
(627, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-172.pdf', 141, 'StudentProgressReport', 172, '1496906040', '2014-2015', 2),
(629, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-172.pdf', 141, 'StudentProgressReport', 172, '1496906520', '2014-2015', 3),
(630, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-70.pdf', 141, 'StudentProgressReport', 70, '1496907180', '2015-2016', 1),
(631, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-70.pdf', 141, 'StudentProgressReport', 70, '1496907240', '2015-2016', 2),
(632, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-169.pdf', 141, 'StudentProgressReport', 169, '1496914140', '2011-2012', 3),
(633, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496914200', '2011-2012', 3),
(634, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496914200', '2011-2012', 3),
(635, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496914260', '2011-2012', 3),
(636, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496914320', '2011-2012', 3),
(637, 'Progress Report_2010-2011_Term1', 'Progress-Report2010-2011Term1-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496921880', '2010-2011', 1),
(638, 'Progress Report_2010-2011_Term1', 'Progress-Report2010-2011Term1-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496922000', '2010-2011', 1),
(639, 'Progress Report_2010-2011_Term1', 'Progress-Report2010-2011Term1-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496922060', '2010-2011', 1),
(640, 'Progress Report_2010-2011_Term1', 'Progress-Report2010-2011Term1-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496922180', '2010-2011', 1),
(641, 'Progress Report_2010-2011_Term2', 'Progress-Report2010-2011Term2-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496922780', '2010-2011', 2),
(642, 'Progress Report_2010-2011_Term2', 'Progress-Report2010-2011Term2-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496922900', '2010-2011', 2),
(643, 'Progress Report_2010-2011_Term2', 'Progress-Report2010-2011Term2-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496923080', '2010-2011', 2),
(644, 'Progress Report_2010-2011_Term2', 'Progress-Report2010-2011Term2-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496923500', '2010-2011', 2),
(645, 'Progress Report_2010-2011_Term3', 'Progress-Report2010-2011Term3-StudentProgressReport-171.pdf', 141, 'StudentProgressReport', 171, '1496924400', '2010-2011', 3),
(646, 'Progress Report_2010-2011_Term3', 'Progress-Report2010-2011Term3-StudentProgressReport-173.pdf', 141, 'StudentProgressReport', 173, '1496924460', '2010-2011', 3),
(647, 'Progress Report_2010-2011_Term3', 'Progress-Report2010-2011Term3-StudentProgressReport-168.pdf', 141, 'StudentProgressReport', 168, '1496924460', '2010-2011', 3),
(648, 'Progress Report_2010-2011_Term3', 'Progress-Report2010-2011Term3-StudentProgressReport-170.pdf', 141, 'StudentProgressReport', 170, '1496924580', '2010-2011', 3),
(649, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31562123.pdf', 141, 'StudentProgressReport', 579, '1528405200', '2016-2017', 3),
(650, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-159.pdf', 141, 'StudentProgressReport', 159, '1497861780', '2015-2016', 1),
(651, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-159.pdf', 141, 'StudentProgressReport', 159, '1497862140', '2015-2016', 2),
(652, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-159.pdf', 141, 'StudentProgressReport', 159, '1497862200', '2015-2016', 3),
(653, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-150.pdf', 141, 'StudentProgressReport', 150, '1497862740', '2015-2016', 1),
(654, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-150.pdf', 141, 'StudentProgressReport', 150, '1497862800', '2015-2016', 2),
(655, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-150.pdf', 141, 'StudentProgressReport', 150, '1497862920', '2015-2016', 3),
(656, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-144.pdf', 141, 'StudentProgressReport', 144, '1497863940', '2015-2016', 1),
(657, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-144.pdf', 141, 'StudentProgressReport', 144, '1497864000', '2015-2016', 2),
(658, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-144.pdf', 141, 'StudentProgressReport', 144, '1497864060', '2015-2016', 3),
(659, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871380', '2015-2016', 1),
(660, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871500', '2015-2016', 2),
(661, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871620', '2015-2016', 3),
(662, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871680', '2014-2015', 1),
(663, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871740', '2014-2015', 2),
(664, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871800', '2014-2015', 3),
(665, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871860', '2013-2014', 1),
(666, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871920', '2013-2014', 2),
(667, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871920', '2013-2014', 3),
(668, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-161.pdf', 141, 'StudentProgressReport', 161, '1497871980', '2012-2013', 1),
(669, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31643270.pdf', 141, 'StudentProgressReport', 246, '1500238800', '2016-2017', 3),
(670, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38605708.pdf', 141, 'StudentProgressReport', 318, '1499374800', '2016-2017', 3),
(671, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33103695.pdf', 141, 'StudentProgressReport', 323, '1499979600', '2016-2017', 3),
(672, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38705839.pdf', 141, 'StudentProgressReport', 220, '1500238800', '2016-2017', 3),
(673, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33405382.pdf', 141, 'StudentProgressReport', 178, '1499374800', '2016-2017', 3),
(674, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38724760.pdf', 141, 'StudentProgressReport', 135, '1500238800', '2016-2017', 3),
(675, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37946983.pdf', 141, 'StudentProgressReport', 321, '1528405200', '2016-2017', 3),
(676, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942720', '2015-2016', 1),
(677, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942780', '2015-2016', 2),
(678, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942840', '2015-2016', 3),
(679, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942900', '2014-2015', 1),
(680, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942900', '2014-2015', 2),
(681, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497942960', '2014-2015', 3),
(682, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-137.pdf', 141, 'StudentProgressReport', 137, '1497943080', '2013-2014', 3),
(683, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497943260', '2015-2016', 1),
(684, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497943320', '2015-2016', 2),
(685, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497943800', '2015-2016', 3),
(686, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-139.docx', 141, 'StudentProgressReport', 139, '1497943860', '2014-2015', 1),
(687, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497943920', '2014-2015', 2),
(688, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497943980', '2014-2015', 3),
(689, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497944160', '2013-2014', 1),
(690, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497944220', '2013-2014', 2),
(691, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497944400', '2013-2014', 3),
(694, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497944880', '2012-2013', 2),
(695, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-139.pdf', 141, 'StudentProgressReport', 139, '1497944940', '2012-2013', 3),
(696, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946440', '2015-2016', 1),
(697, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946440', '2015-2016', 2),
(698, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946500', '2015-2016', 3),
(699, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946560', '2014-2015', 1),
(700, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946620', '2014-2015', 2),
(701, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497946680', '2014-2015', 3),
(702, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497951240', '2013-2014', 1),
(703, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497953520', '2013-2014', 2),
(704, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1497953640', '2013-2014', 3),
(705, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1498034760', '2012-2013', 1);
INSERT INTO `documents` (`Id`, `Title`, `Path`, `Document`, `Detail`, `UniqueId`, `DOE`, `session`, `term`) VALUES
(706, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1498034820', '2012-2013', 2),
(707, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1498034880', '2012-2013', 3),
(708, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1498035240', '2011-2012', 1),
(709, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-143.pdf', 141, 'StudentProgressReport', 143, '1498035300', '2011-2012', 3),
(710, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498035360', '2015-2016', 1),
(711, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498035840', '2015-2016', 2),
(712, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498035900', '2015-2016', 3),
(713, 'Progress Report_2014-2015_Term1', 'Progress-Report2014-2015Term1-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036140', '2014-2015', 1),
(714, 'Progress Report_2014-2015_Term2', 'Progress-Report2014-2015Term2-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036200', '2014-2015', 2),
(715, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036260', '2014-2015', 3),
(716, 'Progress Report_2013-2014_Term1', 'Progress-Report2013-2014Term1-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036500', '2013-2014', 1),
(717, 'Progress Report_2013-2014_Term2', 'Progress-Report2013-2014Term2-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036620', '2013-2014', 2),
(718, 'Progress Report_2013-2014_Term3', 'Progress-Report2013-2014Term3-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036620', '2013-2014', 3),
(719, 'Progress Report_2012-2013_Term1', 'Progress-Report2012-2013Term1-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036680', '2012-2013', 1),
(720, 'Progress Report_2012-2013_Term2', 'Progress-Report2012-2013Term2-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036740', '2012-2013', 2),
(721, 'Progress Report_2012-2013_Term3', 'Progress-Report2012-2013Term3-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498036800', '2012-2013', 3),
(722, 'Progress Report_2011-2012_Term1', 'Progress-Report2011-2012Term1-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498039620', '2011-2012', 1),
(723, 'Progress Report_2011-2012_Term3', 'Progress-Report2011-2012Term3-StudentProgressReport-141.pdf', 141, 'StudentProgressReport', 141, '1498039680', '2011-2012', 3),
(724, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39802266.pdf', 141, 'StudentProgressReport', 210, '1530565200', '2016-2017', 3),
(725, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38163482.pdf', 141, 'StudentProgressReport', 211, '1499374800', '2016-2017', 3),
(726, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33920972.pdf', 141, 'StudentProgressReport', 221, '1499374800', '2016-2017', 3),
(727, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35793558.pdf', 141, 'StudentProgressReport', 137, '1499374800', '2016-2017', 3),
(728, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36427054.pdf', 141, 'StudentProgressReport', 144, '1521838800', '2016-2017', 3),
(729, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33988333.pdf', 141, 'StudentProgressReport', 157, '1507842000', '2016-2017', 3),
(730, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31091872.pdf', 141, 'StudentProgressReport', 161, '1499720400', '2016-2017', 3),
(731, 'Special Report 2016-2017', 'Special Report 2016-2017333403299.pdf', 175, 'StudentSpecialReport', 144, '1498770000', '2016-2017', 3),
(732, 'Special Report 2016-2017', 'Special Report 2016-2017321077129.pdf', 175, 'StudentSpecialReport', 145, '1498770000', '2016-2017', 3),
(733, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39794333.pdf', 141, 'StudentProgressReport', 134, '1528405200', '2016-2017', 3),
(734, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34917196.pdf', 141, 'StudentProgressReport', 139, '1499374800', '2016-2017', 3),
(735, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33738579.pdf', 141, 'StudentProgressReport', 527, '1499374800', '2016-2017', 3),
(736, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34302153.pdf', 141, 'StudentProgressReport', 64, '1499374800', '2016-2017', 3),
(737, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36182367.pdf', 141, 'StudentProgressReport', 88, '1499374800', '2016-2017', 3),
(738, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39613945.pdf', 141, 'StudentProgressReport', 66, '1499374800', '2016-2017', 3),
(739, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39908152.pdf', 141, 'StudentProgressReport', 529, '1530565200', '2016-2017', 3),
(740, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38882996.pdf', 141, 'StudentProgressReport', 645, '1500238800', '2016-2017', 3),
(741, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31777763.pdf', 141, 'StudentProgressReport', 39, '1500238800', '2016-2017', 3),
(742, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36301384.pdf', 141, 'StudentProgressReport', 576, '1500238800', '2016-2017', 3),
(743, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35110352.pdf', 141, 'StudentProgressReport', 113, '1528405200', '2016-2017', 3),
(744, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36629263.pdf', 141, 'StudentProgressReport', 116, '1500238800', '2016-2017', 3),
(745, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33475522.pdf', 141, 'StudentProgressReport', 115, '1500238800', '2016-2017', 3),
(746, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36719994.pdf', 141, 'StudentProgressReport', 109, '1511211600', '2016-2017', 3),
(747, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33100239.pdf', 141, 'StudentProgressReport', 578, '1500238800', '2016-2017', 3),
(748, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33586446.pdf', 141, 'StudentProgressReport', 42, '1500238800', '2016-2017', 3),
(749, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39633359.pdf', 141, 'StudentProgressReport', 128, '1500238800', '2016-2017', 3),
(750, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38563150.pdf', 141, 'StudentProgressReport', 233, '1500238800', '2016-2017', 3),
(751, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32340466.pdf', 141, 'StudentProgressReport', 592, '1500238800', '2016-2017', 3),
(752, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36266132.pdf', 141, 'StudentProgressReport', 38, '1500238800', '2016-2017', 3),
(753, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39747871.pdf', 141, 'StudentProgressReport', 127, '1500238800', '2016-2017', 3),
(754, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33560315.pdf', 141, 'StudentProgressReport', 117, '1499374800', '2016-2017', 3),
(755, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35829112.pdf', 141, 'StudentProgressReport', 590, '1500238800', '2016-2017', 3),
(756, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32003491.pdf', 141, 'StudentProgressReport', 237, '1500238800', '2016-2017', 3),
(757, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33961650.pdf', 141, 'StudentProgressReport', 41, '1500238800', '2016-2017', 3),
(758, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3755910.pdf', 141, 'StudentProgressReport', 243, '1500238800', '2016-2017', 3),
(759, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38433857.pdf', 141, 'StudentProgressReport', 573, '1500238800', '2016-2017', 3),
(760, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31364242.pdf', 141, 'StudentProgressReport', 238, '1500238800', '2016-2017', 3),
(761, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34147815.pdf', 141, 'StudentProgressReport', 236, '1500238800', '2016-2017', 3),
(762, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3276241.pdf', 141, 'StudentProgressReport', 572, '1535403600', '2016-2017', 3),
(763, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39605914.pdf', 141, 'StudentProgressReport', 248, '1500238800', '2016-2017', 3),
(764, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38700119.pdf', 141, 'StudentProgressReport', 63, '1499374800', '2016-2017', 3),
(765, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37969665.pdf', 141, 'StudentProgressReport', 81, '1499374800', '2016-2017', 3),
(766, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33873645.pdf', 141, 'StudentProgressReport', 247, '1499374800', '2016-2017', 3),
(767, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36178919.pdf', 141, 'StudentProgressReport', 77, '1499374800', '2016-2017', 3),
(768, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37572785.pdf', 141, 'StudentProgressReport', 76, '1499374800', '2016-2017', 3),
(769, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35137287.pdf', 141, 'StudentProgressReport', 75, '1499374800', '2016-2017', 3),
(770, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34920293.pdf', 141, 'StudentProgressReport', 314, '1499374800', '2016-2017', 3),
(771, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3848836.pdf', 141, 'StudentProgressReport', 47, '1499374800', '2016-2017', 3),
(772, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3836286.pdf', 141, 'StudentProgressReport', 162, '1499720400', '2016-2017', 3),
(773, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36076715.pdf', 141, 'StudentProgressReport', 176, '1499374800', '2016-2017', 3),
(774, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39050675.pdf', 141, 'StudentProgressReport', 180, '1499374800', '2016-2017', 3),
(775, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34071681.pdf', 141, 'StudentProgressReport', 187, '1499374800', '2016-2017', 3),
(776, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33777200.pdf', 141, 'StudentProgressReport', 201, '1499374800', '2016-2017', 3),
(777, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32766226.pdf', 141, 'StudentProgressReport', 215, '1530565200', '2016-2017', 3),
(778, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33841705.pdf', 141, 'StudentProgressReport', 207, '1499374800', '2016-2017', 3),
(779, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32143784.pdf', 141, 'StudentProgressReport', 203, '1499374800', '2016-2017', 3),
(780, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38302485.pdf', 141, 'StudentProgressReport', 158, '1499720400', '2016-2017', 3),
(781, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33399218.pdf', 141, 'StudentProgressReport', 140, '1499374800', '2016-2017', 3),
(782, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31885018.pdf', 141, 'StudentProgressReport', 141, '1499374800', '2016-2017', 3),
(783, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33151885.pdf', 141, 'StudentProgressReport', 138, '1499374800', '2016-2017', 3),
(784, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37186036.pdf', 141, 'StudentProgressReport', 293, '1499374800', '2016-2017', 3),
(785, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39860050.pdf', 141, 'StudentProgressReport', 142, '1499374800', '2016-2017', 3),
(786, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35410855.pdf', 141, 'StudentProgressReport', 258, '1499374800', '2016-2017', 3),
(787, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33011868.pdf', 141, 'StudentProgressReport', 136, '1521838800', '2016-2017', 3),
(788, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39063141.pdf', 141, 'StudentProgressReport', 259, '1499374800', '2016-2017', 3),
(789, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37826660.pdf', 141, 'StudentProgressReport', 143, '1499374800', '2016-2017', 3),
(790, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38351160.pdf', 141, 'StudentProgressReport', 224, '1499374800', '2016-2017', 3),
(791, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35809473.pdf', 141, 'StudentProgressReport', 227, '1499374800', '2016-2017', 3),
(792, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39559524.pdf', 141, 'StudentProgressReport', 225, '1499374800', '2016-2017', 3),
(793, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32442476.pdf', 141, 'StudentProgressReport', 226, '1499374800', '2016-2017', 3),
(794, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35539312.pdf', 141, 'StudentProgressReport', 234, '1499979600', '2016-2017', 3),
(795, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31885577.pdf', 141, 'StudentProgressReport', 222, '1529528400', '2016-2017', 3),
(796, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3470777.pdf', 141, 'StudentProgressReport', 235, '1499979600', '2016-2017', 3),
(797, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3345127.pdf', 141, 'StudentProgressReport', 229, '1499374800', '2016-2017', 3),
(798, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3613183.pdf', 141, 'StudentProgressReport', 240, '1499374800', '2016-2017', 3),
(799, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33375016.pdf', 141, 'StudentProgressReport', 231, '1499374800', '2016-2017', 3),
(800, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39959569.pdf', 141, 'StudentProgressReport', 1, '1499374800', '2016-2017', 3),
(801, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3211552.pdf', 141, 'StudentProgressReport', 204, '1499374800', '2016-2017', 3),
(802, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34204789.pdf', 141, 'StudentProgressReport', 292, '1499374800', '2016-2017', 3),
(803, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3204787.pdf', 141, 'StudentProgressReport', 386, '1499374800', '2016-2017', 3),
(804, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37545731.pdf', 141, 'StudentProgressReport', 242, '1499374800', '2016-2017', 3),
(805, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34699104.pdf', 141, 'StudentProgressReport', 146, '1499374800', '2016-2017', 3),
(806, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32185735.pdf', 141, 'StudentProgressReport', 145, '1499374800', '2016-2017', 3),
(807, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38137124.pdf', 141, 'StudentProgressReport', 150, '1499374800', '2016-2017', 3),
(808, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36783884.pdf', 141, 'StudentProgressReport', 149, '1499374800', '2016-2017', 3),
(809, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38849729.pdf', 141, 'StudentProgressReport', 148, '1499374800', '2016-2017', 3),
(810, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39039893.pdf', 141, 'StudentProgressReport', 153, '1499374800', '2016-2017', 3),
(811, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35405150.pdf', 141, 'StudentProgressReport', 257, '1499374800', '2016-2017', 3),
(812, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37661488.pdf', 141, 'StudentProgressReport', 151, '1499374800', '2016-2017', 3),
(813, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39941869.pdf', 141, 'StudentProgressReport', 147, '1499374800', '2016-2017', 3),
(814, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33550266.pdf', 141, 'StudentProgressReport', 152, '1499374800', '2016-2017', 3),
(815, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35351220.pdf', 141, 'StudentProgressReport', 256, '1499374800', '2016-2017', 3),
(816, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38637527.pdf', 141, 'StudentProgressReport', 218, '1530565200', '2016-2017', 3),
(817, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35497581.pdf', 141, 'StudentProgressReport', 160, '1499720400', '2016-2017', 3),
(818, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33776635.pdf', 141, 'StudentProgressReport', 260, '1499720400', '2016-2017', 3),
(819, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32059037.pdf', 141, 'StudentProgressReport', 261, '1499720400', '2016-2017', 3),
(820, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35158558.pdf', 141, 'StudentProgressReport', 159, '1499720400', '2016-2017', 3),
(821, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39446840.pdf', 141, 'StudentProgressReport', 89, '1499374800', '2016-2017', 3),
(822, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36782233.pdf', 141, 'StudentProgressReport', 580, '1499374800', '2016-2017', 3),
(823, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37215437.pdf', 141, 'StudentProgressReport', 84, '1499374800', '2016-2017', 3),
(824, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37393462.pdf', 141, 'StudentProgressReport', 90, '1499374800', '2016-2017', 3),
(825, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39316898.pdf', 141, 'StudentProgressReport', 94, '1499374800', '2016-2017', 3),
(826, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31618988.pdf', 141, 'StudentProgressReport', 96, '1499374800', '2016-2017', 3),
(827, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31730828.pdf', 141, 'StudentProgressReport', 85, '1499374800', '2016-2017', 3),
(828, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33062694.pdf', 141, 'StudentProgressReport', 98, '1499374800', '2016-2017', 3),
(829, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35067227.pdf', 141, 'StudentProgressReport', 175, '1499374800', '2016-2017', 3),
(830, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35145771.pdf', 141, 'StudentProgressReport', 245, '1499374800', '2016-2017', 3),
(831, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37092330.pdf', 141, 'StudentProgressReport', 320, '1499374800', '2016-2017', 3),
(832, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35952064.pdf', 141, 'StudentProgressReport', 316, '1499374800', '2016-2017', 3),
(833, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34335559.pdf', 141, 'StudentProgressReport', 317, '1499374800', '2016-2017', 3),
(834, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34872535.pdf', 141, 'StudentProgressReport', 92, '1499374800', '2016-2017', 3),
(835, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38010663.pdf', 141, 'StudentProgressReport', 86, '1499374800', '2016-2017', 3),
(836, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36835150.pdf', 141, 'StudentProgressReport', 45, '1499979600', '2016-2017', 3),
(837, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35630551.pdf', 141, 'StudentProgressReport', 567, '1499979600', '2016-2017', 3),
(838, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36145.pdf', 141, 'StudentProgressReport', 46, '1499979600', '2016-2017', 3),
(839, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33772349.pdf', 141, 'StudentProgressReport', 570, '1499979600', '2016-2017', 3),
(840, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37071823.pdf', 141, 'StudentProgressReport', 52, '1499979600', '2016-2017', 3),
(841, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38795046.pdf', 141, 'StudentProgressReport', 565, '1499979600', '2016-2017', 3),
(842, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37912365.pdf', 141, 'StudentProgressReport', 756, '1499979600', '2016-2017', 3),
(843, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3170522.pdf', 141, 'StudentProgressReport', 51, '1499979600', '2016-2017', 3),
(844, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term37093797.pdf', 141, 'StudentProgressReport', 49, '1512939600', '2016-2017', 3),
(845, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33614007.pdf', 141, 'StudentProgressReport', 568, '1499979600', '2016-2017', 3),
(846, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38394013.pdf', 141, 'StudentProgressReport', 569, '1499979600', '2016-2017', 3),
(847, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34579250.pdf', 141, 'StudentProgressReport', 758, '1499979600', '2016-2017', 3),
(848, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31961196.pdf', 141, 'StudentProgressReport', 562, '1499979600', '2016-2017', 3),
(849, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35311731.pdf', 141, 'StudentProgressReport', 566, '1499979600', '2016-2017', 3),
(850, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31418709.pdf', 141, 'StudentProgressReport', 563, '1499979600', '2016-2017', 3),
(851, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39968229.pdf', 141, 'StudentProgressReport', 60, '1499979600', '2016-2017', 3),
(852, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35739731.pdf', 141, 'StudentProgressReport', 571, '1499979600', '2016-2017', 3),
(853, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34949753.pdf', 141, 'StudentProgressReport', 132, '1499979600', '2016-2017', 3),
(854, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39296928.pdf', 141, 'StudentProgressReport', 133, '1499979600', '2016-2017', 3),
(855, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39596665.pdf', 141, 'StudentProgressReport', 294, '1499374800', '2016-2017', 3),
(856, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35157228.pdf', 141, 'StudentProgressReport', 181, '1499374800', '2016-2017', 3),
(857, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36966246.pdf', 141, 'StudentProgressReport', 182, '1528318800', '2016-2017', 3),
(858, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31143048.pdf', 141, 'StudentProgressReport', 184, '1499374800', '2016-2017', 3),
(859, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33271750.pdf', 141, 'StudentProgressReport', 185, '1499374800', '2016-2017', 3),
(860, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3953284.pdf', 141, 'StudentProgressReport', 186, '1499720400', '2016-2017', 3),
(861, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38578579.pdf', 141, 'StudentProgressReport', 189, '1499374800', '2016-2017', 3),
(862, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35496007.pdf', 141, 'StudentProgressReport', 194, '1499374800', '2016-2017', 3),
(863, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32417779.pdf', 141, 'StudentProgressReport', 190, '1499374800', '2016-2017', 3),
(864, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3199974.pdf', 141, 'StudentProgressReport', 191, '1499374800', '2016-2017', 3),
(865, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39533485.pdf', 141, 'StudentProgressReport', 192, '1499720400', '2016-2017', 3),
(866, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32890424.pdf', 141, 'StudentProgressReport', 205, '1499374800', '2016-2017', 3),
(867, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31491952.pdf', 141, 'StudentProgressReport', 193, '1499374800', '2016-2017', 3),
(868, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39977843.pdf', 141, 'StudentProgressReport', 195, '1499374800', '2016-2017', 3),
(869, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3644345.pdf', 141, 'StudentProgressReport', 68, '1499374800', '2016-2017', 3),
(870, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term3532455.pdf', 141, 'StudentProgressReport', 70, '1499374800', '2016-2017', 3),
(871, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33927000.pdf', 141, 'StudentProgressReport', 72, '1499374800', '2016-2017', 3),
(872, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38589192.pdf', 141, 'StudentProgressReport', 177, '1499374800', '2016-2017', 3),
(873, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36741788.pdf', 141, 'StudentProgressReport', 196, '1499374800', '2016-2017', 3),
(874, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33105776.pdf', 141, 'StudentProgressReport', 197, '1499374800', '2016-2017', 3),
(875, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31585084.pdf', 141, 'StudentProgressReport', 199, '1499374800', '2016-2017', 3),
(876, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31041900.pdf', 141, 'StudentProgressReport', 200, '1499374800', '2016-2017', 3),
(877, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term39808365.pdf', 141, 'StudentProgressReport', 315, '1499374800', '2016-2017', 3),
(878, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35161522.pdf', 141, 'StudentProgressReport', 244, '1499374800', '2016-2017', 3),
(879, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34858208.pdf', 141, 'StudentProgressReport', 254, '1499374800', '2016-2017', 3),
(880, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36095054.pdf', 141, 'StudentProgressReport', 255, '1499374800', '2016-2017', 3),
(881, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term35860148.pdf', 141, 'StudentProgressReport', 251, '1499374800', '2016-2017', 3),
(882, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38801467.pdf', 141, 'StudentProgressReport', 214, '1499374800', '2016-2017', 3),
(883, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term32687220.pdf', 141, 'StudentProgressReport', 212, '1499374800', '2016-2017', 3),
(884, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31122408.pdf', 141, 'StudentProgressReport', 217, '1530565200', '2016-2017', 3),
(885, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term31506586.pdf', 141, 'StudentProgressReport', 213, '1530565200', '2016-2017', 3),
(886, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term36620516.pdf', 141, 'StudentProgressReport', 216, '1530565200', '2016-2017', 3),
(887, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term38212301.pdf', 141, 'StudentProgressReport', 219, '1499374800', '2016-2017', 3),
(888, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term34351857.pdf', 141, 'StudentProgressReport', 250, '1499374800', '2016-2017', 3),
(889, 'Special Report 2016-2017', 'Special Report 2016-2017831749323.pdf', 175, 'StudentSpecialReport', 137, '1499893200', '2016-2017', 3),
(890, 'Special Report 2017-2018', 'Special Report 2017-2018854508236.pdf', 175, 'StudentSpecialReport', 76, '1500670800', '2017-2018', 1),
(891, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-162.pdf', 141, 'StudentProgressReport', 162, '1500882000', '2014-2015', 3),
(892, 'Progress Report_2015-2016_Term1', 'Progress-Report2015-2016Term1-StudentProgressReport-162.pdf', 141, 'StudentProgressReport', 162, '1500883680', '2015-2016', 1),
(893, 'Progress Report_2015-2016_Term2', 'Progress-Report2015-2016Term2-StudentProgressReport-162.pdf', 141, 'StudentProgressReport', 162, '1500883800', '2015-2016', 2),
(894, 'Progress Report_2015-2016_Term3', 'Progress-Report2015-2016Term3-StudentProgressReport-162.pdf', 141, 'StudentProgressReport', 162, '1500883860', '2015-2016', 3),
(895, 'Progress Report_2014-2015_Term3', 'Progress-Report2014-2015Term3-StudentProgressReport-160.pdf', 141, 'StudentProgressReport', 160, '1500883980', '2014-2015', 3),
(896, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term18918181.pdf', 141, 'StudentProgressReport', 325, '1503954000', '2016-2017', 1),
(897, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11215290.pdf', 141, 'StudentProgressReport', 289, '1503954000', '2016-2017', 1),
(898, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term19766884.pdf', 141, 'StudentProgressReport', 275, '1503954000', '2016-2017', 1),
(899, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14531898.pdf', 141, 'StudentProgressReport', 322, '1503954000', '2016-2017', 1),
(900, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term17792274.pdf', 141, 'StudentProgressReport', 321, '1529269200', '2016-2017', 1),
(901, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term14007450.pdf', 141, 'StudentProgressReport', 324, '1503954000', '2016-2017', 1),
(902, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term13633416.pdf', 141, 'StudentProgressReport', 248, '1503954000', '2016-2017', 1),
(903, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term12643210.pdf', 141, 'StudentProgressReport', 281, '1503954000', '2016-2017', 1),
(904, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term1375175.pdf', 141, 'StudentProgressReport', 287, '1503954000', '2016-2017', 1),
(905, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11996596.pdf', 141, 'StudentProgressReport', 280, '1503954000', '2016-2017', 1),
(906, 'Progress_Report_2016-2017_Term1', 'Progress_Report_2016-2017_Term11477684.pdf', 141, 'StudentProgressReport', 243, '1503954000', '2016-2017', 1),
(907, 'Other Documents_2016-2017_Term3', 'Other-Documents2016-2017Term3-StudentProgressReport-161.pdf', 176, 'StudentProgressReport', 161, '1504005840', '2016-2017', 3),
(908, 'Other Documents_2016-2017_Term3', 'Other-Documents2016-2017Term3-StudentProgressReport-141.pdf', 176, 'StudentProgressReport', 141, '1504005900', '2016-2017', 3),
(911, 'Other Documents_2016-2017_Term3', 'Other-Documents2016-2017Term3-StudentProgressReport-139.pdf', 176, 'StudentProgressReport', 139, '1504007340', '2016-2017', 3),
(912, 'Other Documents_2016-2017_Term3', 'Other-Documents2016-2017Term3-StudentProgressReport-227.pdf', 176, 'StudentProgressReport', 227, '1504007340', '2016-2017', 3),
(913, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1348255.pdf', 141, 'StudentProgressReport', 627, '1512507600', '2017-2018', 1),
(914, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18466340.pdf', 141, 'StudentProgressReport', 233, '1543525200', '2017-2018', 1),
(915, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15459744.pdf', 141, 'StudentProgressReport', 236, '1543525200', '2017-2018', 1),
(916, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13274293.pdf', 141, 'StudentProgressReport', 237, '1512507600', '2017-2018', 1),
(917, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11001266.pdf', 141, 'StudentProgressReport', 238, '1512507600', '2017-2018', 1),
(918, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16194534.pdf', 141, 'StudentProgressReport', 243, '1512507600', '2017-2018', 1),
(919, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12316442.pdf', 141, 'StudentProgressReport', 248, '1512507600', '2017-2018', 1),
(920, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17676319.pdf', 141, 'StudentProgressReport', 754, '1512507600', '2017-2018', 1),
(921, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18982951.pdf', 141, 'StudentProgressReport', 442, '1512507600', '2017-2018', 1),
(922, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16810622.pdf', 141, 'StudentProgressReport', 449, '1512507600', '2017-2018', 1),
(923, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13960565.pdf', 141, 'StudentProgressReport', 750, '1512507600', '2017-2018', 1),
(924, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19621010.pdf', 141, 'StudentProgressReport', 752, '1512507600', '2017-2018', 1),
(925, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18567343.pdf', 141, 'StudentProgressReport', 748, '1522098000', '2017-2018', 1),
(926, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19511158.pdf', 141, 'StudentProgressReport', 749, '1512507600', '2017-2018', 1),
(927, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14468327.pdf', 141, 'StudentProgressReport', 414, '1512507600', '2017-2018', 1),
(928, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13647181.pdf', 141, 'StudentProgressReport', 389, '1512507600', '2017-2018', 1),
(929, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17733686.pdf', 141, 'StudentProgressReport', 751, '1512680400', '2017-2018', 1),
(930, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13154676.pdf', 141, 'StudentProgressReport', 755, '1512507600', '2017-2018', 1),
(931, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19850784.pdf', 141, 'StudentProgressReport', 753, '1512507600', '2017-2018', 1),
(932, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16133810.pdf', 141, 'StudentProgressReport', 591, '1521493200', '2017-2018', 1),
(933, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14007557.pdf', 141, 'StudentProgressReport', 443, '1512507600', '2017-2018', 1),
(934, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15483240.pdf', 141, 'StudentProgressReport', 599, '1521752400', '2017-2018', 1),
(935, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12974030.pdf', 141, 'StudentProgressReport', 579, '1515531600', '2017-2018', 1),
(936, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1176763.pdf', 141, 'StudentProgressReport', 444, '1522098000', '2017-2018', 1),
(937, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11587450.pdf', 141, 'StudentProgressReport', 588, '1521493200', '2017-2018', 1),
(938, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15353553.pdf', 141, 'StudentProgressReport', 476, '1512507600', '2017-2018', 1),
(939, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15686161.pdf', 141, 'StudentProgressReport', 446, '1512507600', '2017-2018', 1),
(940, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13943477.pdf', 141, 'StudentProgressReport', 450, '1541970000', '2017-2018', 1),
(941, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1302178.pdf', 141, 'StudentProgressReport', 109, '1542834000', '2017-2018', 1),
(942, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11658854.pdf', 141, 'StudentProgressReport', 66, '1543525200', '2017-2018', 1),
(943, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18908801.pdf', 141, 'StudentProgressReport', 318, '1541624400', '2017-2018', 1),
(944, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11443116.pdf', 141, 'StudentProgressReport', 84, '1541624400', '2017-2018', 1),
(945, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12849836.pdf', 141, 'StudentProgressReport', 562, '1512507600', '2017-2018', 1),
(946, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13750320.pdf', 141, 'StudentProgressReport', 571, '1512507600', '2017-2018', 1),
(947, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12653628.pdf', 141, 'StudentProgressReport', 39, '1512507600', '2017-2018', 1),
(948, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14175997.pdf', 141, 'StudentProgressReport', 532, '1512507600', '2017-2018', 1),
(949, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17920130.pdf', 141, 'StudentProgressReport', 756, '1512507600', '2017-2018', 1),
(950, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19981997.pdf', 141, 'StudentProgressReport', 565, '1512507600', '2017-2018', 1),
(951, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1728771.pdf', 141, 'StudentProgressReport', 590, '1536786000', '2017-2018', 1),
(952, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11214562.pdf', 141, 'StudentProgressReport', 570, '1512507600', '2017-2018', 1),
(953, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14921467.pdf', 141, 'StudentProgressReport', 568, '1512507600', '2017-2018', 1),
(954, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18125188.pdf', 141, 'StudentProgressReport', 115, '1512507600', '2017-2018', 1),
(955, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15865587.pdf', 141, 'StudentProgressReport', 321, '1543352400', '2017-2018', 1),
(956, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14714579.pdf', 141, 'StudentProgressReport', 758, '1512507600', '2017-2018', 1),
(957, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15306561.pdf', 141, 'StudentProgressReport', 567, '1512507600', '2017-2018', 1),
(958, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18018997.pdf', 141, 'StudentProgressReport', 113, '1512507600', '2017-2018', 1),
(959, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18999734.pdf', 141, 'StudentProgressReport', 45, '1512507600', '2017-2018', 1),
(960, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1668657.pdf', 141, 'StudentProgressReport', 46, '1512507600', '2017-2018', 1),
(961, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11620711.pdf', 141, 'StudentProgressReport', 116, '1512507600', '2017-2018', 1),
(962, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19175193.pdf', 141, 'StudentProgressReport', 566, '1512507600', '2017-2018', 1),
(963, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14475040.pdf', 141, 'StudentProgressReport', 563, '1512507600', '2017-2018', 1),
(964, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11178860.pdf', 141, 'StudentProgressReport', 70, '1541624400', '2017-2018', 1),
(965, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19645422.pdf', 141, 'StudentProgressReport', 314, '1512507600', '2017-2018', 1),
(966, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1577724.pdf', 141, 'StudentProgressReport', 75, '1541624400', '2017-2018', 1),
(967, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16933290.pdf', 141, 'StudentProgressReport', 586, '1536526800', '2017-2018', 1),
(968, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16330628.pdf', 141, 'StudentProgressReport', 454, '1520888400', '2017-2018', 1),
(969, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16074001.pdf', 141, 'StudentProgressReport', 189, '1520888400', '2017-2018', 1),
(970, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16529278.pdf', 141, 'StudentProgressReport', 145, '1527022800', '2017-2018', 1),
(971, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13368278.pdf', 141, 'StudentProgressReport', 135, '1515099600', '2017-2018', 1),
(972, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17627801.pdf', 141, 'StudentProgressReport', 247, '1541624400', '2017-2018', 1),
(973, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12552930.pdf', 141, 'StudentProgressReport', 580, '1541624400', '2017-2018', 1),
(974, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17959189.pdf', 141, 'StudentProgressReport', 598, '1512680400', '2017-2018', 1),
(975, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17391313.pdf', 141, 'StudentProgressReport', 136, '1512680400', '2017-2018', 1),
(976, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13002103.pdf', 141, 'StudentProgressReport', 138, '1512680400', '2017-2018', 1),
(977, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19818134.pdf', 141, 'StudentProgressReport', 597, '1512680400', '2017-2018', 1),
(978, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1820925.pdf', 141, 'StudentProgressReport', 140, '1512680400', '2017-2018', 1),
(979, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18229548.pdf', 141, 'StudentProgressReport', 142, '1512680400', '2017-2018', 1),
(980, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11275286.pdf', 141, 'StudentProgressReport', 293, '1512680400', '2017-2018', 1),
(981, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19420224.pdf', 141, 'StudentProgressReport', 148, '1512507600', '2017-2018', 1),
(982, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12579172.pdf', 141, 'StudentProgressReport', 149, '1512507600', '2017-2018', 1),
(983, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12651797.pdf', 141, 'StudentProgressReport', 151, '1512507600', '2017-2018', 1),
(984, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1682389.pdf', 141, 'StudentProgressReport', 181, '1521752400', '2017-2018', 1),
(985, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17975361.pdf', 141, 'StudentProgressReport', 182, '1520888400', '2017-2018', 1),
(986, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1630819.pdf', 141, 'StudentProgressReport', 184, '1520888400', '2017-2018', 1),
(987, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1489537.pdf', 141, 'StudentProgressReport', 186, '1520888400', '2017-2018', 1),
(988, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16138997.pdf', 141, 'StudentProgressReport', 600, '1520888400', '2017-2018', 1),
(989, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16720299.pdf', 141, 'StudentProgressReport', 194, '1520888400', '2017-2018', 1),
(990, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15618114.pdf', 141, 'StudentProgressReport', 190, '1520888400', '2017-2018', 1),
(991, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18455050.pdf', 141, 'StudentProgressReport', 193, '1520888400', '2017-2018', 1),
(992, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19206012.pdf', 141, 'StudentProgressReport', 195, '1521752400', '2017-2018', 1),
(993, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17719650.pdf', 141, 'StudentProgressReport', 197, '1520888400', '2017-2018', 1),
(994, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16481065.pdf', 141, 'StudentProgressReport', 199, '1520888400', '2017-2018', 1),
(995, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19579205.pdf', 141, 'StudentProgressReport', 573, '1512507600', '2017-2018', 1),
(996, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1594812.pdf', 141, 'StudentProgressReport', 645, '1512507600', '2017-2018', 1),
(997, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18358319.pdf', 141, 'StudentProgressReport', 178, '1512334800', '2017-2018', 1),
(998, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12166005.pdf', 141, 'StudentProgressReport', 246, '1512507600', '2017-2018', 1),
(999, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14463749.pdf', 141, 'StudentProgressReport', 529, '1543525200', '2017-2018', 1),
(1000, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13576387.pdf', 141, 'StudentProgressReport', 572, '1535922000', '2017-2018', 1),
(1001, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15046882.pdf', 141, 'StudentProgressReport', 592, '1535922000', '2017-2018', 1),
(1002, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11852011.pdf', 141, 'StudentProgressReport', 110, '1522011600', '2017-2018', 1),
(1003, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12360078.pdf', 141, 'StudentProgressReport', 49, '1512507600', '2017-2018', 1),
(1004, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14754248.pdf', 141, 'StudentProgressReport', 576, '1512507600', '2017-2018', 1),
(1005, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13410388.pdf', 141, 'StudentProgressReport', 51, '1512507600', '2017-2018', 1),
(1006, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16786210.pdf', 141, 'StudentProgressReport', 132, '1512507600', '2017-2018', 1),
(1007, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12064392.pdf', 141, 'StudentProgressReport', 594, '1512507600', '2017-2018', 1),
(1008, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18790405.pdf', 141, 'StudentProgressReport', 60, '1512507600', '2017-2018', 1),
(1009, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15684331.pdf', 141, 'StudentProgressReport', 240, '1542834000', '2017-2018', 1),
(1010, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19204487.pdf', 141, 'StudentProgressReport', 527, '1543525200', '2017-2018', 1),
(1011, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18044629.pdf', 141, 'StudentProgressReport', 176, '1543525200', '2017-2018', 1),
(1012, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14889732.pdf', 141, 'StudentProgressReport', 214, '1543525200', '2017-2018', 1),
(1013, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13822944.pdf', 141, 'StudentProgressReport', 177, '1518987600', '2017-2018', 1),
(1014, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11720188.pdf', 141, 'StudentProgressReport', 581, '1543525200', '2017-2018', 1),
(1015, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16633638.pdf', 141, 'StudentProgressReport', 180, '1543525200', '2017-2018', 1),
(1016, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12826340.pdf', 141, 'StudentProgressReport', 215, '1512507600', '2017-2018', 1),
(1017, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15809135.pdf', 141, 'StudentProgressReport', 596, '1512334800', '2017-2018', 1),
(1018, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1581691.pdf', 141, 'StudentProgressReport', 64, '1541624400', '2017-2018', 1),
(1019, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16396845.pdf', 141, 'StudentProgressReport', 220, '1543525200', '2017-2018', 1),
(1020, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17543581.pdf', 141, 'StudentProgressReport', 221, '1543525200', '2017-2018', 1),
(1021, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13613309.pdf', 141, 'StudentProgressReport', 242, '1542834000', '2017-2018', 1),
(1022, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13171764.pdf', 141, 'StudentProgressReport', 222, '1542834000', '2017-2018', 1),
(1023, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19326545.pdf', 141, 'StudentProgressReport', 224, '1543525200', '2017-2018', 1),
(1024, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1658588.pdf', 141, 'StudentProgressReport', 225, '1543525200', '2017-2018', 1),
(1025, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14643175.pdf', 141, 'StudentProgressReport', 226, '1543525200', '2017-2018', 1),
(1026, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1138925.pdf', 141, 'StudentProgressReport', 1, '1512507600', '2017-2018', 1),
(1027, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18804136.pdf', 141, 'StudentProgressReport', 603, '1512507600', '2017-2018', 1),
(1028, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15073430.pdf', 141, 'StudentProgressReport', 386, '1512507600', '2017-2018', 1),
(1029, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11429995.pdf', 141, 'StudentProgressReport', 234, '1512507600', '2017-2018', 1),
(1030, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1674760.pdf', 141, 'StudentProgressReport', 294, '1512507600', '2017-2018', 1),
(1031, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17739789.pdf', 141, 'StudentProgressReport', 218, '1512507600', '2017-2018', 1),
(1032, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14696270.pdf', 141, 'StudentProgressReport', 204, '1512507600', '2017-2018', 1),
(1033, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term16061490.pdf', 141, 'StudentProgressReport', 217, '1512507600', '2017-2018', 1),
(1034, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14107035.pdf', 141, 'StudentProgressReport', 602, '1542834000', '2017-2018', 1);
INSERT INTO `documents` (`Id`, `Title`, `Path`, `Document`, `Detail`, `UniqueId`, `DOE`, `session`, `term`) VALUES
(1035, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term120529.pdf', 141, 'StudentProgressReport', 292, '1512507600', '2017-2018', 1),
(1036, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19389710.pdf', 141, 'StudentProgressReport', 102, '1512421200', '2017-2018', 1),
(1037, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15125915.pdf', 141, 'StudentProgressReport', 147, '1512421200', '2017-2018', 1),
(1038, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17221653.pdf', 141, 'StudentProgressReport', 68, '1512507600', '2017-2018', 1),
(1039, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14238857.pdf', 141, 'StudentProgressReport', 47, '1512421200', '2017-2018', 1),
(1040, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15861315.pdf', 141, 'StudentProgressReport', 316, '1515531600', '2017-2018', 1),
(1041, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15278182.pdf', 141, 'StudentProgressReport', 96, '1516827600', '2017-2018', 1),
(1042, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13633449.pdf', 141, 'StudentProgressReport', 205, '1543525200', '2017-2018', 1),
(1043, 'Special Report 2016-2017', 'Special Report 2016-2017162506187.pdf', 175, 'StudentSpecialReport', 323, '1512421200', '2016-2017', 3),
(1044, 'Special Report 2016-2017', 'Special Report 2016-2017864990248.pdf', 175, 'StudentSpecialReport', 176, '1512421200', '2016-2017', 3),
(1045, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15571732.pdf', 141, 'StudentProgressReport', 175, '1512507600', '2017-2018', 1),
(1046, 'Special Report 2016-2017', 'Special Report 2016-2017756195093.pdf', 175, 'StudentSpecialReport', 205, '1512421200', '2016-2017', 3),
(1047, 'Special Report 2016-2017', 'Special Report 2016-2017811431904.pdf', 175, 'StudentSpecialReport', 204, '1512421200', '2016-2017', 3),
(1048, 'Special Report 2016-2017', 'Special Report 2016-2017298217843.pdf', 175, 'StudentSpecialReport', 207, '1512421200', '2016-2017', 3),
(1049, 'Special Report 2016-2017', 'Special Report 2016-2017911499033.pdf', 175, 'StudentSpecialReport', 180, '1512421200', '2016-2017', 3),
(1050, 'Special Report 2016-2017', 'Special Report 2016-2017927520760.pdf', 175, 'StudentSpecialReport', 177, '1512421200', '2016-2017', 3),
(1051, 'Special Report 2016-2017', 'Special Report 2016-2017385437073.pdf', 175, 'StudentSpecialReport', 187, '1512421200', '2016-2017', 3),
(1052, 'Special Report 2016-2017', 'Special Report 2016-2017487426809.pdf', 175, 'StudentSpecialReport', 201, '1512421200', '2016-2017', 3),
(1053, 'Special Report 2016-2017', 'Special Report 2016-2017339050359.pdf', 175, 'StudentSpecialReport', 294, '1512421200', '2016-2017', 3),
(1054, 'Special Report 2016-2017', 'Special Report 2016-2017442413386.pdf', 175, 'StudentSpecialReport', 214, '1512421200', '2016-2017', 3),
(1055, 'Special Report 2016-2017', 'Special Report 2016-2017503845264.pdf', 175, 'StudentSpecialReport', 215, '1512421200', '2016-2017', 3),
(1056, 'Special Report 2016-2017', 'Special Report 2016-2017237640457.pdf', 175, 'StudentSpecialReport', 216, '1512421200', '2016-2017', 3),
(1057, 'Special Report 2016-2017', 'Special Report 2016-2017147399987.pdf', 175, 'StudentSpecialReport', 217, '1512421200', '2016-2017', 3),
(1058, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1795903.pdf', 141, 'StudentProgressReport', 323, '1517950800', '2017-2018', 1),
(1059, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11383308.pdf', 141, 'StudentProgressReport', 211, '1543525200', '2017-2018', 1),
(1060, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term12822983.pdf', 141, 'StudentProgressReport', 213, '1512507600', '2017-2018', 1),
(1061, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18245720.pdf', 141, 'StudentProgressReport', 187, '1543525200', '2017-2018', 1),
(1062, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11495601.pdf', 141, 'StudentProgressReport', 201, '1512507600', '2017-2018', 1),
(1063, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18359845.pdf', 141, 'StudentProgressReport', 611, '1512507600', '2017-2018', 1),
(1064, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13774731.pdf', 141, 'StudentProgressReport', 203, '1512507600', '2017-2018', 1),
(1065, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15192131.pdf', 141, 'StudentProgressReport', 219, '1512507600', '2017-2018', 1),
(1066, 'Special Report 2016-2017', 'Special Report 2016-2017822265643.pdf', 175, 'StudentSpecialReport', 219, '1512421200', '2016-2017', 1),
(1067, 'Special Report 2016-2017', 'Special Report 2016-2017374267641.pdf', 175, 'StudentSpecialReport', 218, '1512421200', '2016-2017', 1),
(1068, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19874891.pdf', 141, 'StudentProgressReport', 235, '1512507600', '2017-2018', 1),
(1069, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19509022.pdf', 141, 'StudentProgressReport', 24, '1512507600', '2017-2018', 1),
(1070, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15147580.pdf', 141, 'StudentProgressReport', 244, '1512507600', '2017-2018', 1),
(1071, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19139186.pdf', 141, 'StudentProgressReport', 133, '1512507600', '2017-2018', 1),
(1072, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13987418.pdf', 141, 'StudentProgressReport', 245, '1512507600', '2017-2018', 1),
(1073, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term15711794.pdf', 141, 'StudentProgressReport', 353, '1512507600', '2017-2018', 1),
(1074, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11305.pdf', 141, 'StudentProgressReport', 251, '1512507600', '2017-2018', 1),
(1075, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13498575.pdf', 141, 'StudentProgressReport', 250, '1512507600', '2017-2018', 1),
(1076, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1699477.pdf', 141, 'StudentProgressReport', 254, '1512507600', '2017-2018', 1),
(1077, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term17961325.pdf', 141, 'StudentProgressReport', 255, '1512507600', '2017-2018', 1),
(1078, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term19664341.pdf', 141, 'StudentProgressReport', 258, '1512594000', '2017-2018', 1),
(1079, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1513033.pdf', 141, 'StudentProgressReport', 259, '1512594000', '2017-2018', 1),
(1080, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term13868106.pdf', 141, 'StudentProgressReport', 256, '1512680400', '2017-2018', 1),
(1081, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term18397072.pdf', 141, 'StudentProgressReport', 257, '1512680400', '2017-2018', 1),
(1082, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term11647564.pdf', 141, 'StudentProgressReport', 160, '1515013200', '2017-2018', 1),
(1083, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term1620139.pdf', 141, 'StudentProgressReport', 260, '1512507600', '2017-2018', 1),
(1084, 'Progress_Report_2017-2018_Term1', 'Progress_Report_2017-2018_Term14292258.pdf', 141, 'StudentProgressReport', 261, '1512507600', '2017-2018', 1),
(1085, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23551365.pdf', 141, 'StudentProgressReport', 96, '1525726800', '2017-2018', 2),
(1086, 'Special Report 2017-2018', 'Special Report 2017-2018661926304.pdf', 175, 'StudentSpecialReport', 529, '1517950800', '2017-2018', 2),
(1087, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27534427.pdf', 141, 'StudentProgressReport', 55, '1517950800', '2017-2018', 2),
(1088, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28628067.pdf', 141, 'StudentProgressReport', 643, '1522098000', '2017-2018', 2),
(1089, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26428580.pdf', 141, 'StudentProgressReport', 748, '1522098000', '2017-2018', 2),
(1090, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21445557.pdf', 141, 'StudentProgressReport', 591, '1528405200', '2017-2018', 2),
(1091, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2130686.pdf', 141, 'StudentProgressReport', 450, '1522098000', '2017-2018', 2),
(1092, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21206629.pdf', 141, 'StudentProgressReport', 529, '1522184400', '2017-2018', 2),
(1093, 'Special Report 2017-2018', 'Special Report 2017-2018740478542.pdf', 175, 'StudentSpecialReport', 109, '1519333200', '2017-2018', 2),
(1094, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22717098.pdf', 141, 'StudentProgressReport', 749, '1522098000', '2017-2018', 2),
(1095, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22459860.pdf', 141, 'StudentProgressReport', 750, '1522270800', '2017-2018', 2),
(1096, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term21246603.pdf', 141, 'StudentProgressReport', 321, '1520456400', '2016-2017', 2),
(1097, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21979256.pdf', 141, 'StudentProgressReport', 476, '1522098000', '2017-2018', 2),
(1098, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21722324.pdf', 141, 'StudentProgressReport', 181, '1522184400', '2017-2018', 2),
(1099, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2953663.pdf', 141, 'StudentProgressReport', 197, '1530478800', '2017-2018', 2),
(1100, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21368050.pdf', 141, 'StudentProgressReport', 189, '1530478800', '2017-2018', 2),
(1101, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28558799.pdf', 141, 'StudentProgressReport', 184, '1530478800', '2017-2018', 2),
(1102, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21892900.pdf', 141, 'StudentProgressReport', 444, '1522098000', '2017-2018', 2),
(1103, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28225581.pdf', 141, 'StudentProgressReport', 194, '1530478800', '2017-2018', 2),
(1104, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26667509.pdf', 141, 'StudentProgressReport', 588, '1522098000', '2017-2018', 2),
(1105, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26510359.pdf', 141, 'StudentProgressReport', 747, '1522098000', '2017-2018', 2),
(1106, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29525194.pdf', 141, 'StudentProgressReport', 414, '1530133200', '2017-2018', 2),
(1107, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27180458.pdf', 141, 'StudentProgressReport', 203, '1522184400', '2017-2018', 2),
(1108, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29886181.pdf', 141, 'StudentProgressReport', 214, '1522184400', '2017-2018', 2),
(1109, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28987528.pdf', 141, 'StudentProgressReport', 177, '1522184400', '2017-2018', 2),
(1110, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25686467.pdf', 141, 'StudentProgressReport', 180, '1522184400', '2017-2018', 2),
(1111, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29666172.pdf', 141, 'StudentProgressReport', 443, '1522098000', '2017-2018', 2),
(1112, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22374420.pdf', 141, 'StudentProgressReport', 684, '1522184400', '2017-2018', 2),
(1113, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26698023.pdf', 141, 'StudentProgressReport', 136, '1530478800', '2017-2018', 2),
(1114, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24875696.pdf', 141, 'StudentProgressReport', 318, '1522184400', '2017-2018', 2),
(1115, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23071371.pdf', 141, 'StudentProgressReport', 64, '1522184400', '2017-2018', 2),
(1116, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term291933.pdf', 141, 'StudentProgressReport', 84, '1522184400', '2017-2018', 2),
(1117, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2191105.pdf', 141, 'StudentProgressReport', 70, '1522184400', '2017-2018', 2),
(1118, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23637111.pdf', 141, 'StudentProgressReport', 314, '1522184400', '2017-2018', 2),
(1119, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28374797.pdf', 141, 'StudentProgressReport', 75, '1522184400', '2017-2018', 2),
(1120, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26715111.pdf', 141, 'StudentProgressReport', 247, '1522184400', '2017-2018', 2),
(1121, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26100244.pdf', 141, 'StudentProgressReport', 580, '1522184400', '2017-2018', 2),
(1122, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27404435.pdf', 141, 'StudentProgressReport', 446, '1522098000', '2017-2018', 2),
(1123, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23780224.pdf', 141, 'StudentProgressReport', 316, '1522184400', '2017-2018', 2),
(1124, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26286077.pdf', 141, 'StudentProgressReport', 66, '1522184400', '2017-2018', 2),
(1125, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25029184.pdf', 141, 'StudentProgressReport', 68, '1522184400', '2017-2018', 2),
(1126, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21014997.pdf', 141, 'StudentProgressReport', 175, '1522184400', '2017-2018', 2),
(1127, 'Special Report 2017-2018', 'Special Report 2017-2018358459537.pdf', 175, 'StudentSpecialReport', 151, '1521752400', '2017-2018', 2),
(1128, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25993748.pdf', 141, 'StudentProgressReport', 321, '1522098000', '2017-2018', 2),
(1129, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28909106.pdf', 141, 'StudentProgressReport', 46, '1522098000', '2017-2018', 2),
(1130, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29343023.pdf', 141, 'StudentProgressReport', 758, '1522098000', '2017-2018', 2),
(1131, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27099289.pdf', 141, 'StudentProgressReport', 45, '1522098000', '2017-2018', 2),
(1132, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23716449.pdf', 141, 'StudentProgressReport', 573, '1522098000', '2017-2018', 2),
(1133, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21865132.pdf', 141, 'StudentProgressReport', 572, '1522098000', '2017-2018', 2),
(1134, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27830112.pdf', 141, 'StudentProgressReport', 592, '1522098000', '2017-2018', 2),
(1135, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25917156.pdf', 141, 'StudentProgressReport', 576, '1522098000', '2017-2018', 2),
(1136, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23820198.pdf', 141, 'StudentProgressReport', 51, '1522098000', '2017-2018', 2),
(1137, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21962473.pdf', 141, 'StudentProgressReport', 132, '1522098000', '2017-2018', 2),
(1138, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23350579.pdf', 141, 'StudentProgressReport', 594, '1522098000', '2017-2018', 2),
(1139, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22888589.pdf', 141, 'StudentProgressReport', 60, '1522098000', '2017-2018', 2),
(1140, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24922993.pdf', 141, 'StudentProgressReport', 187, '1522184400', '2017-2018', 2),
(1141, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2926810.pdf', 141, 'StudentProgressReport', 151, '1530478800', '2017-2018', 2),
(1142, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25732238.pdf', 141, 'StudentProgressReport', 145, '1530478800', '2017-2018', 2),
(1143, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27934167.pdf', 141, 'StudentProgressReport', 138, '1530478800', '2017-2018', 2),
(1144, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23688680.pdf', 141, 'StudentProgressReport', 193, '1530478800', '2017-2018', 2),
(1145, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25790521.pdf', 141, 'StudentProgressReport', 586, '1530478800', '2017-2018', 2),
(1146, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22881266.pdf', 141, 'StudentProgressReport', 454, '1530478800', '2017-2018', 2),
(1148, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22365570.pdf', 141, 'StudentProgressReport', 442, '1522098000', '2017-2018', 2),
(1149, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22332310.pdf', 141, 'StudentProgressReport', 449, '1522098000', '2017-2018', 2),
(1150, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22243817.pdf', 141, 'StudentProgressReport', 751, '1522098000', '2017-2018', 2),
(1151, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28316514.pdf', 141, 'StudentProgressReport', 752, '1522098000', '2017-2018', 2),
(1152, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25991307.pdf', 141, 'StudentProgressReport', 753, '1522098000', '2017-2018', 2),
(1153, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22318578.pdf', 141, 'StudentProgressReport', 186, '1530478800', '2017-2018', 2),
(1154, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25332193.pdf', 141, 'StudentProgressReport', 754, '1522098000', '2017-2018', 2),
(1155, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23534277.pdf', 141, 'StudentProgressReport', 755, '1522098000', '2017-2018', 2),
(1156, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29722318.pdf', 141, 'StudentProgressReport', 389, '1522098000', '2017-2018', 2),
(1157, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29235306.pdf', 141, 'StudentProgressReport', 600, '1530478800', '2017-2018', 2),
(1158, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27131330.pdf', 141, 'StudentProgressReport', 190, '1530478800', '2017-2018', 2),
(1159, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27079150.pdf', 141, 'StudentProgressReport', 195, '1530478800', '2017-2018', 2),
(1160, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term257451.pdf', 141, 'StudentProgressReport', 199, '1530478800', '2017-2018', 2),
(1161, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2835877.pdf', 141, 'StudentProgressReport', 110, '1530651600', '2017-2018', 2),
(1162, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28357709.pdf', 141, 'StudentProgressReport', 597, '1530478800', '2017-2018', 2),
(1163, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23493082.pdf', 141, 'StudentProgressReport', 140, '1530478800', '2017-2018', 2),
(1164, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26982724.pdf', 141, 'StudentProgressReport', 142, '1530478800', '2017-2018', 2),
(1165, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22273111.pdf', 141, 'StudentProgressReport', 293, '1530478800', '2017-2018', 2),
(1166, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23548008.pdf', 141, 'StudentProgressReport', 599, '1530478800', '2017-2018', 2),
(1167, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27423354.pdf', 141, 'StudentProgressReport', 149, '1530478800', '2017-2018', 2),
(1168, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26476793.pdf', 141, 'StudentProgressReport', 109, '1522098000', '2017-2018', 2),
(1169, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22888895.pdf', 141, 'StudentProgressReport', 563, '1522098000', '2017-2018', 2),
(1170, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29853836.pdf', 141, 'StudentProgressReport', 566, '1522098000', '2017-2018', 2),
(1171, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28081247.pdf', 141, 'StudentProgressReport', 113, '1522098000', '2017-2018', 2),
(1172, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24454900.pdf', 141, 'StudentProgressReport', 567, '1522098000', '2017-2018', 2),
(1173, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term215646.pdf', 141, 'StudentProgressReport', 115, '1522098000', '2017-2018', 2),
(1174, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29148340.pdf', 141, 'StudentProgressReport', 39, '1522098000', '2017-2018', 2),
(1175, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2890498.pdf', 141, 'StudentProgressReport', 616, '1522098000', '2017-2018', 2),
(1176, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2721753.pdf', 141, 'StudentProgressReport', 571, '1522098000', '2017-2018', 2),
(1177, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29897167.pdf', 141, 'StudentProgressReport', 568, '1522098000', '2017-2018', 2),
(1178, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26089869.pdf', 141, 'StudentProgressReport', 590, '1536786000', '2017-2018', 2),
(1179, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24726785.pdf', 141, 'StudentProgressReport', 532, '1522098000', '2017-2018', 2),
(1180, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22106197.pdf', 141, 'StudentProgressReport', 213, '1522184400', '2017-2018', 2),
(1181, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29303049.pdf', 141, 'StudentProgressReport', 221, '1522184400', '2017-2018', 2),
(1182, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26191177.pdf', 141, 'StudentProgressReport', 176, '1522184400', '2017-2018', 2),
(1183, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26687038.pdf', 141, 'StudentProgressReport', 211, '1522184400', '2017-2018', 2),
(1184, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24323688.pdf', 141, 'StudentProgressReport', 581, '1522184400', '2017-2018', 2),
(1185, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24363662.pdf', 141, 'StudentProgressReport', 201, '1522184400', '2017-2018', 2),
(1186, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24567804.pdf', 141, 'StudentProgressReport', 215, '1522184400', '2017-2018', 2),
(1187, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27430677.pdf', 141, 'StudentProgressReport', 205, '1522184400', '2017-2018', 2),
(1188, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28767519.pdf', 141, 'StudentProgressReport', 218, '1522184400', '2017-2018', 2),
(1189, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29472404.pdf', 141, 'StudentProgressReport', 204, '1522184400', '2017-2018', 2),
(1190, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22482746.pdf', 141, 'StudentProgressReport', 611, '1522184400', '2017-2018', 2),
(1191, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26144490.pdf', 141, 'StudentProgressReport', 644, '1522098000', '2017-2018', 2),
(1192, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2532868.pdf', 141, 'StudentProgressReport', 220, '1522184400', '2017-2018', 2),
(1193, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2519747.pdf', 141, 'StudentProgressReport', 219, '1522184400', '2017-2018', 2),
(1194, 'Special Report 2017-2018', 'Special Report 2017-2018288726878.pdf', 175, 'StudentSpecialReport', 684, '1522098000', '2017-2018', 2),
(1195, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24961441.pdf', 141, 'StudentProgressReport', 294, '1522184400', '2017-2018', 2),
(1196, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22157766.pdf', 141, 'StudentProgressReport', 527, '1528405200', '2017-2018', 2),
(1197, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29049473.pdf', 141, 'StudentProgressReport', 242, '1522184400', '2017-2018', 2),
(1198, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21844382.pdf', 141, 'StudentProgressReport', 222, '1522184400', '2017-2018', 2),
(1199, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22958773.pdf', 141, 'StudentProgressReport', 224, '1522184400', '2017-2018', 2),
(1200, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26675748.pdf', 141, 'StudentProgressReport', 225, '1522184400', '2017-2018', 2),
(1201, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22028690.pdf', 141, 'StudentProgressReport', 226, '1522184400', '2017-2018', 2),
(1202, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27022393.pdf', 141, 'StudentProgressReport', 1, '1522184400', '2017-2018', 2),
(1203, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26517377.pdf', 141, 'StudentProgressReport', 603, '1522184400', '2017-2018', 2),
(1204, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23706684.pdf', 141, 'StudentProgressReport', 386, '1522184400', '2017-2018', 2),
(1205, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27926538.pdf', 141, 'StudentProgressReport', 234, '1522184400', '2017-2018', 2),
(1206, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29888317.pdf', 141, 'StudentProgressReport', 233, '1526245200', '2017-2018', 2),
(1207, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26813673.pdf', 141, 'StudentProgressReport', 236, '1522184400', '2017-2018', 2),
(1208, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2802311.pdf', 141, 'StudentProgressReport', 602, '1522184400', '2017-2018', 2),
(1209, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27594540.pdf', 141, 'StudentProgressReport', 238, '1522184400', '2017-2018', 2),
(1210, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23702412.pdf', 141, 'StudentProgressReport', 292, '1522184400', '2017-2018', 2),
(1211, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23924863.pdf', 141, 'StudentProgressReport', 240, '1522184400', '2017-2018', 2),
(1212, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term22744256.pdf', 141, 'StudentProgressReport', 237, '1522098000', '2017-2018', 2),
(1213, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26887824.pdf', 141, 'StudentProgressReport', 243, '1522098000', '2017-2018', 2),
(1214, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21225242.pdf', 141, 'StudentProgressReport', 248, '1522098000', '2017-2018', 2),
(1215, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27343406.pdf', 141, 'StudentProgressReport', 235, '1522098000', '2017-2018', 2),
(1216, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21718052.pdf', 141, 'StudentProgressReport', 24, '1522098000', '2017-2018', 2),
(1217, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term27275358.pdf', 141, 'StudentProgressReport', 116, '1522098000', '2017-2018', 2),
(1218, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21775114.pdf', 141, 'StudentProgressReport', 244, '1522098000', '2017-2018', 2),
(1219, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term28802916.pdf', 141, 'StudentProgressReport', 562, '1522098000', '2017-2018', 2),
(1220, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29990541.pdf', 141, 'StudentProgressReport', 565, '1522098000', '2017-2018', 2),
(1221, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26783159.pdf', 141, 'StudentProgressReport', 655, '1522098000', '2017-2018', 2),
(1222, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23348749.pdf', 141, 'StudentProgressReport', 53, '1522098000', '2017-2018', 2),
(1223, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29913950.pdf', 141, 'StudentProgressReport', 245, '1522098000', '2017-2018', 2),
(1224, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term2393111.pdf', 141, 'StudentProgressReport', 246, '1522098000', '2017-2018', 2),
(1225, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term23951716.pdf', 141, 'StudentProgressReport', 250, '1522184400', '2017-2018', 2),
(1226, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25405428.pdf', 141, 'StudentProgressReport', 254, '1522184400', '2017-2018', 2),
(1227, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25631235.pdf', 141, 'StudentProgressReport', 255, '1522184400', '2017-2018', 2),
(1228, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29254225.pdf', 141, 'StudentProgressReport', 148, '1522184400', '2017-2018', 2),
(1229, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term21740328.pdf', 141, 'StudentProgressReport', 260, '1522184400', '2017-2018', 2),
(1230, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term24385937.pdf', 141, 'StudentProgressReport', 261, '1522184400', '2017-2018', 2),
(1231, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term25801506.pdf', 141, 'StudentProgressReport', 259, '1522184400', '2017-2018', 2),
(1232, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term29308541.pdf', 141, 'StudentProgressReport', 258, '1522184400', '2017-2018', 2),
(1233, 'Progress_Report_2017-2018_Term2', 'Progress_Report_2017-2018_Term26151203.pdf', 141, 'StudentProgressReport', 182, '1530478800', '2017-2018', 2),
(1234, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35338296.pdf', 141, 'StudentProgressReport', 643, '1530651600', '2017-2018', 3),
(1235, 'Progress_Report_2016-2017_Term3', 'Progress_Report_2016-2017_Term33795176.pdf', 141, 'StudentProgressReport', 104, '1528405200', '2016-2017', 3),
(1236, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36093530.pdf', 141, 'StudentProgressReport', 599, '1530738000', '2017-2018', 3),
(1237, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34487246.pdf', 141, 'StudentProgressReport', 145, '1530738000', '2017-2018', 3),
(1238, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3795293.pdf', 141, 'StudentProgressReport', 149, '1530738000', '2017-2018', 3),
(1239, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35642221.pdf', 141, 'StudentProgressReport', 151, '1530738000', '2017-2018', 3),
(1240, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37346457.pdf', 141, 'StudentProgressReport', 321, '1530651600', '2017-2018', 3),
(1241, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39111723.pdf', 141, 'StudentProgressReport', 591, '1530651600', '2017-2018', 3),
(1242, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35612011.pdf', 141, 'StudentProgressReport', 708, '1530651600', '2017-2018', 3),
(1243, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3532257.pdf', 141, 'StudentProgressReport', 444, '1530651600', '2017-2018', 3),
(1244, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35408174.pdf', 141, 'StudentProgressReport', 588, '1530651600', '2017-2018', 3),
(1245, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38012589.pdf', 141, 'StudentProgressReport', 476, '1530651600', '2017-2018', 3),
(1246, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34597098.pdf', 141, 'StudentProgressReport', 446, '1530651600', '2017-2018', 3),
(1247, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32252667.pdf', 141, 'StudentProgressReport', 450, '1530651600', '2017-2018', 3),
(1248, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37232943.pdf', 141, 'StudentProgressReport', 443, '1530651600', '2017-2018', 3),
(1249, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31062600.pdf', 141, 'StudentProgressReport', 136, '1530738000', '2017-2018', 3),
(1250, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35558916.pdf', 141, 'StudentProgressReport', 597, '1530738000', '2017-2018', 3),
(1251, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39847428.pdf', 141, 'StudentProgressReport', 586, '1530738000', '2017-2018', 3),
(1252, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32814744.pdf', 141, 'StudentProgressReport', 142, '1530738000', '2017-2018', 3),
(1253, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33042688.pdf', 141, 'StudentProgressReport', 138, '1530738000', '2017-2018', 3),
(1254, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38457796.pdf', 141, 'StudentProgressReport', 186, '1530738000', '2017-2018', 3),
(1255, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31326551.pdf', 141, 'StudentProgressReport', 140, '1530738000', '2017-2018', 3),
(1256, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31643902.pdf', 141, 'StudentProgressReport', 293, '1530738000', '2017-2018', 3),
(1257, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3250303.pdf', 141, 'StudentProgressReport', 454, '1530651600', '2017-2018', 3),
(1258, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39509022.pdf', 141, 'StudentProgressReport', 182, '1530738000', '2017-2018', 3),
(1259, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33232793.pdf', 141, 'StudentProgressReport', 184, '1530738000', '2017-2018', 3),
(1260, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35762753.pdf', 141, 'StudentProgressReport', 189, '1530738000', '2017-2018', 3),
(1261, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31062295.pdf', 141, 'StudentProgressReport', 600, '1530651600', '2017-2018', 3),
(1262, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33292907.pdf', 141, 'StudentProgressReport', 194, '1530738000', '2017-2018', 3),
(1263, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37773050.pdf', 141, 'StudentProgressReport', 190, '1530738000', '2017-2018', 3),
(1264, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31249044.pdf', 141, 'StudentProgressReport', 193, '1530738000', '2017-2018', 3),
(1265, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33873293.pdf', 141, 'StudentProgressReport', 195, '1530651600', '2017-2018', 3),
(1266, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37385516.pdf', 141, 'StudentProgressReport', 197, '1530738000', '2017-2018', 3),
(1267, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38756839.pdf', 141, 'StudentProgressReport', 199, '1530651600', '2017-2018', 3),
(1268, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33627956.pdf', 141, 'StudentProgressReport', 748, '1530651600', '2017-2018', 3),
(1269, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3497471.pdf', 141, 'StudentProgressReport', 110, '1530651600', '2017-2018', 3),
(1270, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3377244.pdf', 141, 'StudentProgressReport', 318, '1530738000', '2017-2018', 3),
(1271, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33977958.pdf', 141, 'StudentProgressReport', 529, '1530738000', '2017-2018', 3),
(1272, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35252245.pdf', 141, 'StudentProgressReport', 220, '1530738000', '2017-2018', 3),
(1273, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39141932.pdf', 141, 'StudentProgressReport', 684, '1530738000', '2017-2018', 3),
(1274, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3178289.pdf', 141, 'StudentProgressReport', 527, '1530738000', '2017-2018', 3),
(1275, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31261860.pdf', 141, 'StudentProgressReport', 109, '1530651600', '2017-2018', 3),
(1276, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31575549.pdf', 141, 'StudentProgressReport', 113, '1530651600', '2017-2018', 3),
(1277, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32831527.pdf', 141, 'StudentProgressReport', 567, '1530651600', '2017-2018', 3),
(1278, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36257699.pdf', 141, 'StudentProgressReport', 115, '1530651600', '2017-2018', 3),
(1279, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32967622.pdf', 141, 'StudentProgressReport', 568, '1530651600', '2017-2018', 3),
(1280, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37934167.pdf', 141, 'StudentProgressReport', 590, '1536786000', '2017-2018', 3),
(1281, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33964532.pdf', 141, 'StudentProgressReport', 756, '1530651600', '2017-2018', 3),
(1282, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36371823.pdf', 141, 'StudentProgressReport', 532, '1530651600', '2017-2018', 3),
(1283, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35739562.pdf', 141, 'StudentProgressReport', 39, '1530651600', '2017-2018', 3),
(1284, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33271852.pdf', 141, 'StudentProgressReport', 571, '1530651600', '2017-2018', 3),
(1285, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37769388.pdf', 141, 'StudentProgressReport', 616, '1530651600', '2017-2018', 3),
(1286, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32575510.pdf', 141, 'StudentProgressReport', 747, '1530651600', '2017-2018', 3),
(1287, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3249388.pdf', 141, 'StudentProgressReport', 414, '1530651600', '2017-2018', 3),
(1288, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39292674.pdf', 141, 'StudentProgressReport', 749, '1530651600', '2017-2018', 3),
(1289, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35973913.pdf', 141, 'StudentProgressReport', 750, '1530651600', '2017-2018', 3),
(1290, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38674144.pdf', 141, 'StudentProgressReport', 442, '1530651600', '2017-2018', 3),
(1291, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34463444.pdf', 141, 'StudentProgressReport', 449, '1530651600', '2017-2018', 3),
(1292, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35487207.pdf', 141, 'StudentProgressReport', 751, '1530651600', '2017-2018', 3),
(1293, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3384567.pdf', 141, 'StudentProgressReport', 752, '1530651600', '2017-2018', 3),
(1294, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32342074.pdf', 141, 'StudentProgressReport', 753, '1530651600', '2017-2018', 3),
(1295, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3450173.pdf', 141, 'StudentProgressReport', 754, '1530651600', '2017-2018', 3),
(1296, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32724116.pdf', 141, 'StudentProgressReport', 755, '1530651600', '2017-2018', 3),
(1297, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37938744.pdf', 141, 'StudentProgressReport', 389, '1530651600', '2017-2018', 3),
(1298, 'Progress_Report_2015-2016_Term3', 'Progress_Report_2015-2016_Term37915858.pdf', 141, 'StudentProgressReport', 359, '1530565200', '2015-2016', 3),
(1299, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33306638.pdf', 141, 'StudentProgressReport', 655, '1530651600', '2017-2018', 3),
(1300, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32061951.pdf', 141, 'StudentProgressReport', 644, '1530651600', '2017-2018', 3),
(1301, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34473819.pdf', 141, 'StudentProgressReport', 758, '1530651600', '2017-2018', 3),
(1302, 'Progress_Report_2016-2017_Term2', 'Progress_Report_2016-2017_Term27669911.pdf', 141, 'StudentProgressReport', 411, '1530565200', '2016-2017', 2),
(1303, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33536413.pdf', 141, 'StudentProgressReport', 45, '1530651600', '2017-2018', 3),
(1304, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33417101.pdf', 141, 'StudentProgressReport', 46, '1530651600', '2017-2018', 3),
(1305, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3277156.pdf', 141, 'StudentProgressReport', 716, '1530738000', '2017-2018', 3),
(1306, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36478929.pdf', 141, 'StudentProgressReport', 573, '1530651600', '2017-2018', 3),
(1307, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35551287.pdf', 141, 'StudentProgressReport', 572, '1530651600', '2017-2018', 3),
(1308, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3581691.pdf', 141, 'StudentProgressReport', 592, '1530651600', '2017-2018', 3),
(1309, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31992378.pdf', 141, 'StudentProgressReport', 576, '1530651600', '2017-2018', 3),
(1310, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36734030.pdf', 141, 'StudentProgressReport', 51, '1530651600', '2017-2018', 3),
(1311, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37854219.pdf', 141, 'StudentProgressReport', 132, '1530651600', '2017-2018', 3),
(1312, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38927720.pdf', 141, 'StudentProgressReport', 594, '1530651600', '2017-2018', 3),
(1313, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36816420.pdf', 141, 'StudentProgressReport', 60, '1530651600', '2017-2018', 3),
(1314, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38450778.pdf', 141, 'StudentProgressReport', 66, '1530738000', '2017-2018', 3),
(1315, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36956786.pdf', 141, 'StudentProgressReport', 68, '1530738000', '2017-2018', 3),
(1316, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37738264.pdf', 141, 'StudentProgressReport', 175, '1530738000', '2017-2018', 3),
(1317, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3391280.pdf', 141, 'StudentProgressReport', 316, '1530738000', '2017-2018', 3),
(1318, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37120039.pdf', 141, 'StudentProgressReport', 96, '1530738000', '2017-2018', 3),
(1319, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35952248.pdf', 141, 'StudentProgressReport', 64, '1530738000', '2017-2018', 3),
(1320, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31619185.pdf', 141, 'StudentProgressReport', 84, '1530824400', '2017-2018', 3),
(1321, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37340049.pdf', 141, 'StudentProgressReport', 70, '1530738000', '2017-2018', 3),
(1322, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32770498.pdf', 141, 'StudentProgressReport', 75, '1530738000', '2017-2018', 3),
(1323, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32419886.pdf', 141, 'StudentProgressReport', 247, '1530738000', '2017-2018', 3),
(1324, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39950262.pdf', 141, 'StudentProgressReport', 580, '1530738000', '2017-2018', 3),
(1325, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36531719.pdf', 141, 'StudentProgressReport', 176, '1530738000', '2017-2018', 3),
(1326, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36319643.pdf', 141, 'StudentProgressReport', 211, '1530738000', '2017-2018', 3),
(1327, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36694972.pdf', 141, 'StudentProgressReport', 213, '1530738000', '2017-2018', 3),
(1328, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37906093.pdf', 141, 'StudentProgressReport', 214, '1530738000', '2017-2018', 3),
(1329, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31668619.pdf', 141, 'StudentProgressReport', 581, '1530738000', '2017-2018', 3),
(1330, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32942295.pdf', 141, 'StudentProgressReport', 180, '1530738000', '2017-2018', 3),
(1331, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31927382.pdf', 141, 'StudentProgressReport', 187, '1530738000', '2017-2018', 3),
(1332, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36939698.pdf', 141, 'StudentProgressReport', 201, '1530738000', '2017-2018', 3),
(1333, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33526343.pdf', 141, 'StudentProgressReport', 215, '1530738000', '2017-2018', 3),
(1334, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32959383.pdf', 141, 'StudentProgressReport', 611, '1530738000', '2017-2018', 3),
(1335, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39261854.pdf', 141, 'StudentProgressReport', 203, '1530738000', '2017-2018', 3),
(1336, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39830035.pdf', 141, 'StudentProgressReport', 204, '1530651600', '2017-2018', 3),
(1337, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32432397.pdf', 141, 'StudentProgressReport', 218, '1530738000', '2017-2018', 3),
(1338, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34163486.pdf', 141, 'StudentProgressReport', 219, '1530651600', '2017-2018', 3),
(1339, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term38787963.pdf', 141, 'StudentProgressReport', 294, '1530738000', '2017-2018', 3),
(1340, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37927454.pdf', 141, 'StudentProgressReport', 205, '1530738000', '2017-2018', 3),
(1341, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37510930.pdf', 141, 'StudentProgressReport', 221, '1530738000', '2017-2018', 3),
(1342, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33901367.pdf', 141, 'StudentProgressReport', 222, '1530738000', '2017-2018', 3),
(1343, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32889505.pdf', 141, 'StudentProgressReport', 224, '1530738000', '2017-2018', 3),
(1344, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36981808.pdf', 141, 'StudentProgressReport', 225, '1530738000', '2017-2018', 3),
(1345, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33561435.pdf', 141, 'StudentProgressReport', 226, '1530738000', '2017-2018', 3),
(1346, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37981464.pdf', 141, 'StudentProgressReport', 1, '1530738000', '2017-2018', 3),
(1347, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36664457.pdf', 141, 'StudentProgressReport', 603, '1530738000', '2017-2018', 3),
(1348, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31501704.pdf', 141, 'StudentProgressReport', 386, '1530738000', '2017-2018', 3),
(1349, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32418055.pdf', 141, 'StudentProgressReport', 234, '1530738000', '2017-2018', 3),
(1350, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36266853.pdf', 141, 'StudentProgressReport', 233, '1530738000', '2017-2018', 3),
(1351, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35890609.pdf', 141, 'StudentProgressReport', 236, '1530738000', '2017-2018', 3),
(1352, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term39725370.pdf', 141, 'StudentProgressReport', 602, '1530738000', '2017-2018', 3),
(1353, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3508761.pdf', 141, 'StudentProgressReport', 238, '1530738000', '2017-2018', 3),
(1354, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36733420.pdf', 141, 'StudentProgressReport', 292, '1530738000', '2017-2018', 3),
(1355, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32057984.pdf', 141, 'StudentProgressReport', 240, '1530738000', '2017-2018', 3),
(1356, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37322351.pdf', 141, 'StudentProgressReport', 237, '1530651600', '2017-2018', 3),
(1357, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34055465.pdf', 141, 'StudentProgressReport', 243, '1530651600', '2017-2018', 3),
(1358, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3322928.pdf', 141, 'StudentProgressReport', 248, '1530651600', '2017-2018', 3),
(1359, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3996078.pdf', 141, 'StudentProgressReport', 24, '1530651600', '2017-2018', 3),
(1360, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34756689.pdf', 141, 'StudentProgressReport', 116, '1530651600', '2017-2018', 3),
(1361, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3614952.pdf', 141, 'StudentProgressReport', 244, '1530651600', '2017-2018', 3),
(1362, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34930927.pdf', 141, 'StudentProgressReport', 562, '1530651600', '2017-2018', 3),
(1363, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36507918.pdf', 141, 'StudentProgressReport', 563, '1530651600', '2017-2018', 3),
(1364, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term32075072.pdf', 141, 'StudentProgressReport', 566, '1530651600', '2017-2018', 3),
(1365, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term35784113.pdf', 141, 'StudentProgressReport', 246, '1530651600', '2017-2018', 3);
INSERT INTO `documents` (`Id`, `Title`, `Path`, `Document`, `Detail`, `UniqueId`, `DOE`, `session`, `term`) VALUES
(1366, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37421523.pdf', 141, 'StudentProgressReport', 353, '1530651600', '2017-2018', 3),
(1367, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term37231417.pdf', 141, 'StudentProgressReport', 565, '1530651600', '2017-2018', 3),
(1368, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term33673423.pdf', 141, 'StudentProgressReport', 314, '1530738000', '2017-2018', 3),
(1369, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3111462.pdf', 141, 'StudentProgressReport', 254, '1530738000', '2017-2018', 3),
(1370, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36238780.pdf', 141, 'StudentProgressReport', 255, '1530738000', '2017-2018', 3),
(1371, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term3100477.pdf', 141, 'StudentProgressReport', 181, '1530738000', '2017-2018', 3),
(1372, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34588249.pdf', 141, 'StudentProgressReport', 257, '1530738000', '2017-2018', 3),
(1373, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term31723545.pdf', 141, 'StudentProgressReport', 256, '1530738000', '2017-2018', 3),
(1374, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34967544.pdf', 141, 'StudentProgressReport', 260, '1530738000', '2017-2018', 3),
(1375, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term36241526.pdf', 141, 'StudentProgressReport', 261, '1530738000', '2017-2018', 3),
(1376, 'Progress_Report_2017-2018_Term3', 'Progress_Report_2017-2018_Term34844266.pdf', 141, 'StudentProgressReport', 250, '1530738000', '2017-2018', 3),
(1377, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15694400.pdf', 141, 'StudentProgressReport', 591, '1543784400', '2018-2019', 1),
(1378, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19324714.pdf', 141, 'StudentProgressReport', 220, '1543784400', '2018-2019', 1),
(1379, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17477669.pdf', 141, 'StudentProgressReport', 318, '1543784400', '2018-2019', 1),
(1380, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16446889.pdf', 141, 'StudentProgressReport', 659, '1543525200', '2018-2019', 1),
(1381, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1641499.pdf', 141, 'StudentProgressReport', 44, '1543525200', '2018-2019', 1),
(1382, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19622231.pdf', 141, 'StudentProgressReport', 586, '1543784400', '2018-2019', 1),
(1383, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17895719.pdf', 141, 'StudentProgressReport', 684, '1543784400', '2018-2019', 1),
(1384, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19922188.pdf', 141, 'StudentProgressReport', 321, '1543784400', '2018-2019', 1),
(1385, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14214141.pdf', 141, 'StudentProgressReport', 529, '1543784400', '2018-2019', 1),
(1386, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13658166.pdf', 141, 'StudentProgressReport', 213, '1543784400', '2018-2019', 1),
(1387, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12626164.pdf', 141, 'StudentProgressReport', 201, '1543784400', '2018-2019', 1),
(1388, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12491901.pdf', 141, 'StudentProgressReport', 187, '1543784400', '2018-2019', 1),
(1389, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13527869.pdf', 141, 'StudentProgressReport', 679, '1543784400', '2018-2019', 1),
(1390, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13898010.pdf', 141, 'StudentProgressReport', 455, '1543784400', '2018-2019', 1),
(1391, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1675371.pdf', 141, 'StudentProgressReport', 716, '1543784400', '2018-2019', 1),
(1392, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13681967.pdf', 141, 'StudentProgressReport', 732, '1543784400', '2018-2019', 1),
(1393, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11134614.pdf', 141, 'StudentProgressReport', 240, '1543784400', '2018-2019', 1),
(1394, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17621393.pdf', 141, 'StudentProgressReport', 581, '1543784400', '2018-2019', 1),
(1395, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15852161.pdf', 141, 'StudentProgressReport', 218, '1543784400', '2018-2019', 1),
(1396, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15014842.pdf', 141, 'StudentProgressReport', 215, '1543784400', '2018-2019', 1),
(1397, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19349736.pdf', 141, 'StudentProgressReport', 219, '1543784400', '2018-2019', 1),
(1398, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18461763.pdf', 141, 'StudentProgressReport', 211, '1543784400', '2018-2019', 1),
(1399, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11579516.pdf', 141, 'StudentProgressReport', 611, '1543784400', '2018-2019', 1),
(1400, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13312131.pdf', 141, 'StudentProgressReport', 205, '1543784400', '2018-2019', 1),
(1401, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19097076.pdf', 141, 'StudentProgressReport', 763, '1542920400', '2018-2019', 1),
(1402, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14655381.pdf', 141, 'StudentProgressReport', 762, '1542920400', '2018-2019', 1),
(1403, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18507840.pdf', 141, 'StudentProgressReport', 66, '1543784400', '2018-2019', 1),
(1404, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11120272.pdf', 141, 'StudentProgressReport', 700, '1543784400', '2018-2019', 1),
(1405, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14108255.pdf', 141, 'StudentProgressReport', 747, '1543784400', '2018-2019', 1),
(1406, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17857575.pdf', 141, 'StudentProgressReport', 184, '1543784400', '2018-2019', 1),
(1407, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1388229.pdf', 141, 'StudentProgressReport', 643, '1543784400', '2018-2019', 1),
(1408, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18606707.pdf', 141, 'StudentProgressReport', 750, '1543784400', '2018-2019', 1),
(1409, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1293939.pdf', 141, 'StudentProgressReport', 110, '1543525200', '2018-2019', 1),
(1410, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12664613.pdf', 141, 'StudentProgressReport', 226, '1543784400', '2018-2019', 1),
(1411, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16634248.pdf', 141, 'StudentProgressReport', 414, '1543784400', '2018-2019', 1),
(1412, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11805018.pdf', 141, 'StudentProgressReport', 136, '1543784400', '2018-2019', 1),
(1413, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1575283.pdf', 141, 'StudentProgressReport', 753, '1543784400', '2018-2019', 1),
(1414, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11329297.pdf', 141, 'StudentProgressReport', 720, '1543870800', '2018-2019', 1),
(1415, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14390515.pdf', 141, 'StudentProgressReport', 573, '1543525200', '2018-2019', 1),
(1416, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11322889.pdf', 141, 'StudentProgressReport', 138, '1543784400', '2018-2019', 1),
(1417, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17287869.pdf', 141, 'StudentProgressReport', 140, '1543784400', '2018-2019', 1),
(1418, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17388872.pdf', 141, 'StudentProgressReport', 532, '1543525200', '2018-2019', 1),
(1419, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17340964.pdf', 141, 'StudentProgressReport', 743, '1543525200', '2018-2019', 1),
(1420, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15962928.pdf', 141, 'StudentProgressReport', 46, '1543784400', '2018-2019', 1),
(1421, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18995157.pdf', 141, 'StudentProgressReport', 454, '1543784400', '2018-2019', 1),
(1422, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18998208.pdf', 141, 'StudentProgressReport', 186, '1543784400', '2018-2019', 1),
(1423, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12403103.pdf', 141, 'StudentProgressReport', 51, '1543525200', '2018-2019', 1),
(1424, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18041578.pdf', 141, 'StudentProgressReport', 590, '1543525200', '2018-2019', 1),
(1425, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15413667.pdf', 141, 'StudentProgressReport', 756, '1543525200', '2018-2019', 1),
(1426, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13260562.pdf', 141, 'StudentProgressReport', 760, '1543784400', '2018-2019', 1),
(1427, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13710956.pdf', 141, 'StudentProgressReport', 571, '1543784400', '2018-2019', 1),
(1428, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18658887.pdf', 141, 'StudentProgressReport', 109, '1543525200', '2018-2019', 1),
(1429, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16664152.pdf', 141, 'StudentProgressReport', 113, '1543525200', '2018-2019', 1),
(1430, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18129460.pdf', 141, 'StudentProgressReport', 567, '1543525200', '2018-2019', 1),
(1431, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19321357.pdf', 141, 'StudentProgressReport', 132, '1543784400', '2018-2019', 1),
(1432, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1219484.pdf', 141, 'StudentProgressReport', 594, '1543784400', '2018-2019', 1),
(1433, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15453641.pdf', 141, 'StudentProgressReport', 616, '1543784400', '2018-2019', 1),
(1434, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term125716.pdf', 141, 'StudentProgressReport', 655, '1543784400', '2018-2019', 1),
(1435, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13815316.pdf', 141, 'StudentProgressReport', 600, '1543784400', '2018-2019', 1),
(1436, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17075793.pdf', 141, 'StudentProgressReport', 190, '1543784400', '2018-2019', 1),
(1437, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17961630.pdf', 141, 'StudentProgressReport', 193, '1543784400', '2018-2019', 1),
(1438, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14820769.pdf', 141, 'StudentProgressReport', 195, '1543784400', '2018-2019', 1),
(1439, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1326895.pdf', 141, 'StudentProgressReport', 197, '1543784400', '2018-2019', 1),
(1440, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15979406.pdf', 141, 'StudentProgressReport', 759, '1543784400', '2018-2019', 1),
(1441, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1653095.pdf', 141, 'StudentProgressReport', 199, '1543784400', '2018-2019', 1),
(1442, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12566661.pdf', 141, 'StudentProgressReport', 225, '1543784400', '2018-2019', 1),
(1443, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17982075.pdf', 141, 'StudentProgressReport', 1, '1543784400', '2018-2019', 1),
(1444, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14027087.pdf', 141, 'StudentProgressReport', 603, '1543784400', '2018-2019', 1),
(1445, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15273300.pdf', 141, 'StudentProgressReport', 386, '1543784400', '2018-2019', 1),
(1446, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18852654.pdf', 141, 'StudentProgressReport', 234, '1543784400', '2018-2019', 1),
(1447, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17613459.pdf', 141, 'StudentProgressReport', 233, '1543784400', '2018-2019', 1),
(1448, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18479461.pdf', 141, 'StudentProgressReport', 236, '1543784400', '2018-2019', 1),
(1449, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15422821.pdf', 141, 'StudentProgressReport', 602, '1543784400', '2018-2019', 1),
(1450, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12636539.pdf', 141, 'StudentProgressReport', 238, '1543784400', '2018-2019', 1),
(1451, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12843733.pdf', 141, 'StudentProgressReport', 68, '1543525200', '2018-2019', 1),
(1452, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17735822.pdf', 141, 'StudentProgressReport', 175, '1543784400', '2018-2019', 1),
(1453, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16539958.pdf', 141, 'StudentProgressReport', 70, '1543784400', '2018-2019', 1),
(1454, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18474884.pdf', 141, 'StudentProgressReport', 247, '1543784400', '2018-2019', 1),
(1455, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13935848.pdf', 141, 'StudentProgressReport', 463, '1543784400', '2018-2019', 1),
(1456, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term15736816.pdf', 141, 'StudentProgressReport', 182, '1543525200', '2018-2019', 1),
(1457, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14010304.pdf', 141, 'StudentProgressReport', 746, '1543784400', '2018-2019', 1),
(1458, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17106613.pdf', 141, 'StudentProgressReport', 605, '1543784400', '2018-2019', 1),
(1459, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16114585.pdf', 141, 'StudentProgressReport', 483, '1543784400', '2018-2019', 1),
(1460, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13157117.pdf', 141, 'StudentProgressReport', 671, '1543784400', '2018-2019', 1),
(1461, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16485642.pdf', 141, 'StudentProgressReport', 438, '1543784400', '2018-2019', 1),
(1462, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17861237.pdf', 141, 'StudentProgressReport', 664, '1543784400', '2018-2019', 1),
(1463, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18999429.pdf', 141, 'StudentProgressReport', 717, '1543784400', '2018-2019', 1),
(1464, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term17990008.pdf', 141, 'StudentProgressReport', 527, '1543525200', '2018-2019', 1),
(1465, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11711339.pdf', 141, 'StudentProgressReport', 647, '1543784400', '2018-2019', 1),
(1466, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18719916.pdf', 141, 'StudentProgressReport', 748, '1543784400', '2018-2019', 1),
(1467, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term13842474.pdf', 141, 'StudentProgressReport', 749, '1543784400', '2018-2019', 1),
(1468, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11929213.pdf', 141, 'StudentProgressReport', 751, '1543784400', '2018-2019', 1),
(1469, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14654770.pdf', 141, 'StudentProgressReport', 752, '1543784400', '2018-2019', 1),
(1470, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16485032.pdf', 141, 'StudentProgressReport', 755, '1543784400', '2018-2019', 1),
(1471, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12942600.pdf', 141, 'StudentProgressReport', 708, '1543784400', '2018-2019', 1),
(1472, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16036773.pdf', 141, 'StudentProgressReport', 444, '1543784400', '2018-2019', 1),
(1473, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12416225.pdf', 141, 'StudentProgressReport', 588, '1543784400', '2018-2019', 1),
(1474, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11375374.pdf', 141, 'StudentProgressReport', 476, '1543784400', '2018-2019', 1),
(1475, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term1342762.pdf', 141, 'StudentProgressReport', 449, '1543784400', '2018-2019', 1),
(1476, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term14015796.pdf', 141, 'StudentProgressReport', 699, '1543784400', '2018-2019', 1),
(1477, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19543808.pdf', 141, 'StudentProgressReport', 450, '1543784400', '2018-2019', 1),
(1478, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term12650576.pdf', 141, 'StudentProgressReport', 389, '1543784400', '2018-2019', 1),
(1479, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16471911.pdf', 141, 'StudentProgressReport', 589, '1543784400', '2018-2019', 1),
(1480, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18404701.pdf', 141, 'StudentProgressReport', 485, '1543784400', '2018-2019', 1),
(1481, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16247019.pdf', 141, 'StudentProgressReport', 639, '1543784400', '2018-2019', 1),
(1482, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term11621321.pdf', 141, 'StudentProgressReport', 443, '1543784400', '2018-2019', 1),
(1483, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term19860244.pdf', 141, 'StudentProgressReport', 736, '1543784400', '2018-2019', 1),
(1484, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term16325441.pdf', 141, 'StudentProgressReport', 294, '1543784400', '2018-2019', 1),
(1485, 'Progress_Report_2018-2019_Term1', 'Progress_Report_2018-2019_Term18283253.pdf', 141, 'StudentProgressReport', 328, '1543870800', '2018-2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dr_dailyreport`
--

CREATE TABLE `dr_dailyreport` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `applications` varchar(255) DEFAULT '0',
  `enquiry` varchar(255) DEFAULT '0',
  `unconditional` varchar(255) DEFAULT '0',
  `conditional` varchar(255) DEFAULT '0',
  `depositpaid` varchar(255) DEFAULT NULL,
  `enrolled` varchar(255) DEFAULT '0',
  `visagranted` varchar(255) DEFAULT '0',
  `visaprocessing` varchar(255) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dr_dailyreport`
--

INSERT INTO `dr_dailyreport` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `applications`, `enquiry`, `unconditional`, `conditional`, `depositpaid`, `enrolled`, `visagranted`, `visaprocessing`) VALUES
('79a6f293-ff19-f9bb-54e6-5ef36e71c27a', NULL, '2020-06-24 15:18:24', '2020-06-25 15:44:46', '6fe37590-f8fd-b49b-0ec1-5eba88331f8f', '6fe37590-f8fd-b49b-0ec1-5eba88331f8f', NULL, 0, '', '0', '0', '0', '0', '0', '0', '0', '0'),
('75cf4f28-c36b-598a-c7bb-5ef4c29f4c32', NULL, '2020-06-25 15:29:44', '2020-06-25 15:39:40', '6fe37590-f8fd-b49b-0ec1-5eba88331f8f', '28e29afd-7498-54c9-0016-5eba54f941b1', NULL, 0, '', '0', '0', '0', '0', '0', '0', '0', '0'),
('b0cc3d39-b041-52c1-4107-5ef4c471ebbb', NULL, '2020-06-25 15:37:33', '2020-06-25 15:46:15', '28e29afd-7498-54c9-0016-5eba54f941b1', '28e29afd-7498-54c9-0016-5eba54f941b1', 'Bernald Lukalo -  looking into studying in the USA a Radiography course ,sent the  student universities offering his course ,list of documents needed ,waiting for the feedback.\nCynthia wangui - Contacted the student she is from the campaign , the student promised to call back since she was busy.\n Cynthia Njeri – contacted the student parent, said he was engaged I should contact him tomorrow in the morning.\nMercy Langat - Talked to the student, the student shared her documents  to look for university and get back to her before launching the application, also shared our consent form with the student.\nDiana Njeri – sent list of university offering the course as requested by the student.\nBurundi Facebook leads - sent emails  15 emails but copied Winfred on  the same.\nDavy stephane Ninziza – contacted the student about the Student Visa. \n\nCRM- updated all leads from social media and also sent emails respectfully.\n\n', 0, '', '35', '7', '5', '21', '0', '2', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `e_learning_media`
--

CREATE TABLE `e_learning_media` (
  `id` int(11) NOT NULL,
  `class` varchar(120) DEFAULT NULL,
  `file_name` varchar(120) DEFAULT NULL,
  `file_size` varchar(120) DEFAULT NULL,
  `file_url` varchar(120) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `CohortId` int(11) DEFAULT 1,
  `category` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_learning_media`
--

INSERT INTO `e_learning_media` (`id`, `class`, `file_name`, `file_size`, `file_url`, `file_type`, `session`, `description`, `uploaded_on`, `CohortId`, `category`) VALUES
(1, '37', 'Screenshot from 2020-04-08 12-31-35.png', '300621', 'localhost/school/upload/Screenshot from 2020-04-08 12-31-35.png', 'image/png', '2016-2017', 'we have a content uploaded', '2020-04-14 11:04:06', 1, NULL),
(2, '37', 'Screenshot from 2020-03-31 12-42-08.png', '126693', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', 'image/png', '2016-2017', 'bhdbjnjdnjs', '2020-04-14 11:19:22', 1, NULL),
(3, 'Year 13', 'Screenshot from 2020-03-31 12-42-08.png', '126693', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', 'image/png', '2016-2017', 'hhhhrr', '2020-04-14 15:19:53', 1, NULL),
(4, 'Year 9', 'e449db9d491f05595643e8d17b2bd36e', '50321', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36e', 'image/jpeg', '2016-2017', 'fegege', '2020-04-30 19:08:30', 1, NULL),
(5, 'Year 9', '41b586905e6233e72b076191f8bf9512', '7618', 'localhost/vso/upload/41b586905e6233e72b076191f8bf9512', 'image/png', '2016-2017', 'added a screenshot', '2020-04-30 19:14:28', 1, NULL),
(6, 'Year 9', '7313fc603df31bbcffab7b3de414a19dArray', '1906', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dArray', 'image/png', '2016-2017', 'final upload', '2020-04-30 19:16:57', 1, NULL),
(7, 'Year 9', 'e449db9d491f05595643e8d17b2bd36eArray', '50321', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36eArray', 'image/jpeg', '2016-2017', 'bhdbjnjdnjs', '2020-04-30 19:19:05', 1, NULL),
(8, 'Year 9', '7313fc603df31bbcffab7b3de414a19dpng', '1906', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dpng', 'image/png', '2016-2017', 'knjnjefnjfnj', '2020-04-30 19:36:10', 1, NULL),
(9, 'Year 9', '7313fc603df31bbcffab7b3de414a19d.png', '1906', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19d.png', 'image/png', '2016-2017', 'njfnjvfnjn', '2020-04-30 19:37:04', 1, NULL),
(10, '2020-GROUP A', 'e480e5c72158aed767840dbe3c2edbcc.pdf', '31247', 'localhost/vso/upload/e480e5c72158aed767840dbe3c2edbcc.pdf', 'application/pdf', '2016-2017', 'Tjn ckjwnfjwnj', '2020-06-13 12:25:06', 1, NULL),
(11, 'Cohort 4', 'francis_chege_cover_letter.pdf', '31247', 'localhost/vso/uploads/francis_chege_cover_letter.pdf', 'application/pdf', '2016-2017', 'jdjnjnd', '2020-07-18 05:53:34', 1, NULL),
(12, 'Cohort 4', '09-Short-Jokes-Anyone-Can-Remember-nicole-fornabaio-rd.webp', '33998', 'localhost/vso/uploads/09-Short-Jokes-Anyone-Can-Remember-nicole-fornabaio-rd.webp', 'image/webp', '2016-2017', 'Kiswahili tests', '2020-08-05 13:07:01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `generalsetting`
--

CREATE TABLE `generalsetting` (
  `Id` int(11) NOT NULL,
  `CurrentSession` varchar(10) NOT NULL,
  `current_term` int(11) NOT NULL,
  `BackUpPath` varchar(100) NOT NULL,
  `SchoolStartDate` varchar(20) NOT NULL,
  `SchoolName` varchar(500) NOT NULL,
  `SchoolAddress` text NOT NULL,
  `City` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `PIN` varchar(6) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `AlternateMobile` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Landline` varchar(12) NOT NULL,
  `Fax` varchar(12) NOT NULL,
  `DateOfEstablishment` varchar(100) NOT NULL,
  `Board` varchar(100) NOT NULL COMMENT 'school motto',
  `AffiliatedBy` varchar(100) NOT NULL,
  `RegistrationNo` varchar(100) NOT NULL,
  `AffiliationNo` varchar(100) NOT NULL,
  `DOE` varchar(20) NOT NULL,
  `DOEUsername` varchar(100) NOT NULL,
  `DOL` varchar(20) NOT NULL,
  `DOLUsername` varchar(100) NOT NULL,
  `kcpe_end` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generalsetting`
--

INSERT INTO `generalsetting` (`Id`, `CurrentSession`, `current_term`, `BackUpPath`, `SchoolStartDate`, `SchoolName`, `SchoolAddress`, `City`, `District`, `PIN`, `State`, `Country`, `Mobile`, `AlternateMobile`, `Email`, `Landline`, `Fax`, `DateOfEstablishment`, `Board`, `AffiliatedBy`, `RegistrationNo`, `AffiliationNo`, `DOE`, `DOEUsername`, `DOL`, `DOLUsername`, `kcpe_end`) VALUES
(1, '2016-2017', 2, '', '1451595600', 'Education For Life Project', 'P. O. BOX 735-00606,NAIROBI', 'Nairobi', '', '', 'Kenya', 'Kenya', '0789707871', '0735324124', 'jacqueline@vso.org', '', '', '1136062800', 'Raising the next generation of leaders to serve the nations', 'HERINE', '', '', '1438339560', '', '1584702120', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `HeaderId` int(11) NOT NULL,
  `HRType` varchar(10) NOT NULL,
  `HeaderTitle` varchar(1000) NOT NULL,
  `HeaderContent` text NOT NULL,
  `HeaderDefault` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`HeaderId`, `HRType`, `HeaderTitle`, `HeaderContent`, `HeaderDefault`) VALUES
(1, '14', 'Header', '<p>Header here</p>', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `LanguageId` int(11) NOT NULL,
  `LanguageName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`LanguageId`, `LanguageName`) VALUES
(1, '?????'),
(2, 'Dutch'),
(3, 'German'),
(4, 'Portuguese'),
(5, 'Spanish'),
(6, 'French');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationId` int(11) NOT NULL,
  `LocationName` varchar(100) NOT NULL,
  `CalledAs` varchar(100) NOT NULL,
  `LocationStatus` varchar(10) NOT NULL,
  `DOD` varchar(20) NOT NULL,
  `DODUsername` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationId`, `LocationName`, `CalledAs`, `LocationStatus`, `DOD`, `DODUsername`) VALUES
(1, 'Kitchen', 'Kitchen', 'Active', '', ''),
(2, 'Dining', 'Dining Hall', 'Active', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `masterentry`
--

CREATE TABLE `masterentry` (
  `MasterEntryId` int(11) NOT NULL,
  `MasterEntryStatus` varchar(10) NOT NULL,
  `MasterEntryName` varchar(100) NOT NULL,
  `MasterEntryValue` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterentry`
--

INSERT INTO `masterentry` (`MasterEntryId`, `MasterEntryStatus`, `MasterEntryName`, `MasterEntryValue`, `priority`) VALUES
(1, 'Active', 'AccountType', 'Cash', 0),
(2, 'Active', 'AccountType', 'Bank', 0),
(3, 'Active', 'AssignTo', 'Student', 0),
(4, 'Active', 'AssignTo', 'Staff', 0),
(5, 'Active', 'BookPurpose', 'Issue', 0),
(6, 'Active', 'BookPurpose', 'Reference', 0),
(7, 'Active', 'Gender', 'Male', 0),
(8, 'Active', 'Gender', 'Female', 0),
(9, 'Active', 'OtherAssignTo', 'Missing', 0),
(10, 'Active', 'OtherAssignTo', 'Damage', 0),
(11, 'Active', 'Resolution', '800x600', 0),
(12, 'Active', 'SalaryHeadType', 'Earning', 0),
(13, 'Active', 'SalaryHeadType', 'Deduction', 0),
(14, 'Active', 'HeaderFooter', 'Header', 0),
(15, 'Active', 'HeaderFooter', 'Footer', 0),
(16, 'Active', 'RouteTo', 'To Home', 0),
(17, 'Active', 'RouteTo', 'To School', 0),
(18, 'Active', 'AssignTo', 'Location', 0),
(19, 'Active', 'AssignTo', 'Other', 0),
(20, 'Active', 'GradingPoint', '1', 0),
(21, 'Active', 'GradingPoint', '2', 0),
(22, 'Active', 'GradingPoint', '3', 0),
(23, 'Active', 'GradingPoint', '4', 0),
(24, 'Active', 'GradingPoint', '5', 0),
(25, 'Active', 'GradingPoint', '6', 0),
(26, 'Active', 'GradingPoint', '7', 0),
(27, 'Active', 'GradingPoint', '8', 0),
(28, 'Active', 'GradingPoint', '9', 0),
(30, 'Active', 'IncomeAccount', 'Fee', 0),
(31, 'Active', 'ExpenseAccount', 'P.E', 0),
(32, 'Active', 'ExpenseAccount', 'BUS', 0),
(33, 'Active', 'ExpenseAccount', 'Loans & Shares', 0),
(34, 'Active', 'ExpenseAccount', 'MOTOR VEHICLE', 0),
(38, 'Active', 'UserType', 'administrator', 0),
(39, 'Active', 'CoScholasticPart', 'Self-awarenes', 0),
(40, 'Active', 'CoScholasticPart', 'Problem Solving', 0),
(41, 'Active', 'CoScholasticPart', 'Decision Making', 0),
(42, 'Active', 'CoScholasticPart', 'Critical Thinking', 0),
(43, 'Active', 'CoScholasticPart', 'Mathematics', 0),
(44, 'Active', 'CoScholasticPart', 'English', 0),
(45, 'Active', 'CoScholasticPart', 'Kiswahili', 0),
(48, 'Active', 'UserType', 'Snr Teacher', 0),
(49, 'Active', 'UserType', 'FRONT OFFICE', 0),
(50, 'Active', 'UserType', 'Facilitator', 1),
(51, 'Active', 'StockType', 'Cooking Flour', 0),
(52, 'Active', 'StockType', 'Cooking Oil', 0),
(53, 'Active', 'Unit', 'Kg', 0),
(54, 'Active', 'Unit', 'Ltrs', 0),
(55, 'Active', 'Unit', 'boxes', 0),
(56, 'Active', 'Unit', 'Cans', 0),
(57, 'Active', 'ExpenseAccount', 'Kitchen Expense', 0),
(58, 'Active', 'StaffPosition', 'Management', 0),
(59, 'Active', 'StaffPosition', 'Educator Facilitator', 0),
(75, 'Active', 'ExpenseAccount', 'MEDICAL', 0),
(76, 'Active', 'ExpenseAccount', 'BES', 0),
(77, 'Active', 'ExpenseAccount', 'SES', 0),
(78, 'Active', 'ExpenseAccount', 'LT&T', 0),
(79, 'Active', 'ExpenseAccount', 'EW&C', 0),
(80, 'Active', 'ExpenseAccount', 'RMI', 0),
(81, 'Active', 'ExpenseAccount', 'GIFTS & DONATIONS', 0),
(82, 'Active', 'ExpenseAccount', 'CONT/ADM', 0),
(83, 'Active', 'ExpenseAccount', 'DEVPT', 0),
(84, 'Active', 'ExpenseAccount', 'COMPUTER', 0),
(85, 'Active', 'ExpenseAccount', 'EXAM', 0),
(86, 'Active', 'ExpenseAccount', 'NSSF', 0),
(87, 'Active', 'ExpenseAccount', 'NHIF', 0),
(88, 'Active', 'ExpenseAccount', 'NEW BUILDING', 0),
(89, 'Active', 'ExpenseAccount', 'MISC', 0),
(90, 'Active', 'ExpenseAccount', 'PTA', 0),
(91, 'Active', 'ExpenseAccount', 'GRATUITY', 0),
(92, 'Active', 'ExpenseAccount', 'WAGES', 0),
(93, 'Active', 'ExpenseAccount', 'MOTOR V. INSURANCE', 0),
(94, 'Active', 'ExamActivityType', 'C.A.T', 0),
(100, 'Active', 'UserType', 'DEP H/TEACHER', 0),
(101, 'Active', 'ExpenseAccount', 'food supply', 0),
(102, 'Active', 'UserType', 'print outs & school bell', 0),
(103, 'Active', 'ExpenseAccount', 'Lunch on a journey', 0),
(104, 'Active', 'UserType', '263520', 0),
(105, 'Active', 'ExpenseAccount', '263520', 0),
(106, 'Active', 'ExpenseAccount', 'Computer Repairs', 0),
(107, 'Active', 'ExpenseAccount', 'UNIFORM', 0),
(108, 'Active', 'ExpenseAccount', 'REMEDIAL', 0),
(111, 'Active', 'TerminationReason', 'Tranferred to another school', 0),
(112, 'Active', 'TerminationReason', 'Indiscpline', 0),
(113, 'Active', 'TerminationReason', 'Wrong entry', 0),
(114, 'Active', 'Category', 'Receipt', 0),
(123, 'Active', 'Nationality', 'Kenyan', 0),
(124, 'Active', 'Nationality', 'German', 0),
(125, 'Active', 'Language', 'English', 0),
(126, 'Active', 'Language', 'Kiswahili', 0),
(127, 'Active', 'FeeType', 'Transport', 8),
(128, 'Active', 'FeeType', 'Health', 5),
(129, 'Active', 'FeeType', 'Caution Fee', 2),
(130, 'Active', 'FeeType', 'Reg/Assesment', 1),
(131, 'Active', 'FeeType', 'Lunch/Snacks', 4),
(132, 'Active', 'FeeType', 'School Fees', 3),
(133, 'Active', 'FeeType', 'Math Whizz', 6),
(134, 'Active', 'ExamActivityType', 'Mid-Term  Exam', 0),
(135, 'Active', 'ExamActivityType', 'Spelling Test', 0),
(136, 'Active', 'ExamActivityType', 'End-Term Exam', 1),
(137, 'Active', 'ExamActivityType', 'Effort', 0),
(138, 'Active', 'ExamActivityType', 'Participation', 0),
(139, 'Active', 'ExamActivityType', 'Class Work', 0),
(140, 'Active', 'ExamActivityType', 'Quiz', 0),
(141, 'Active', 'StudentsDocuments', 'Progress Report', 0),
(142, 'Active', 'ExamActivityType', 'Assignments', 0),
(145, 'Active', 'FeeType', 'Extra Curricular Activities', 9),
(154, 'Active', 'SubjectPriority', '1', 0),
(155, 'Active', 'SubjectPriority', '2', 0),
(156, 'Active', 'SubjectPriority', '3', 0),
(157, 'Active', 'SubjectPriority', '4', 0),
(158, 'Active', 'SubjectPriority', '5', 0),
(159, 'Active', 'SubjectPriority', '6', 0),
(160, 'Active', 'SubjectPriority', '7', 0),
(161, 'Active', 'SubjectPriority', '8', 0),
(162, 'Active', 'SubjectPriority', '9', 0),
(163, 'Active', 'SubjectPriority', '10', 0),
(164, 'Active', 'ExamActivityType', 'Project', 0),
(165, 'Active', 'UserType', 'academic director', 0),
(166, 'Active', 'ExamActivityType', 'Presentation', 0),
(167, 'Active', 'ExamActivityType', 'Assessment', 0),
(168, 'Active', 'ExamActivityType', 'Homework', 0),
(169, 'Active', 'ExamActivityType', 'Typing Skill', 0),
(170, 'Active', 'ExamActivityType', 'Skills', 0),
(171, 'Active', 'ExamActivityType', 'Manner and Courtesy', 0),
(172, 'Active', 'ExamSubActivityType', 'Spellings', 0),
(173, 'Active', 'ExamSubActivityType', 'Grammar', 0),
(174, 'Active', 'ExamSubActivityType', 'Comprehension', 0),
(175, 'Active', 'StudentsDocuments', 'Special Report', 0),
(176, 'Active', 'StudentsDocuments', 'Other Documents', 0),
(177, 'Active', 'ExamActivityType', 'Attendance', 0),
(178, 'Active', 'ExamActivityType', 'Attitude', 0),
(179, 'Active', 'ExamActivityType', 'Project 1', 0),
(180, 'Active', 'ExamActivityType', 'Presentation 1', 0),
(181, 'Active', 'ExamActivityType', 'Project 2', 0),
(182, 'Active', 'ExamActivityType', 'Presentation 2', 0),
(183, 'Active', 'ExamActivityType', 'Project 3', 0),
(184, 'Active', 'ExamActivityType', 'Presentation 3', 0),
(185, 'Active', 'UserType', 'Part timer', 0),
(187, 'Active', 'ExamActivityType', 'Studio Work/ Projects', 0),
(188, 'Active', 'ExamActivityType', 'Class Participation', 0),
(189, 'Active', 'ExamActivityType', 'Effort/ Attitude', 0),
(190, 'Active', 'ExamActivityType', 'Craftsmanship', 0),
(191, 'Active', 'ExamActivityType', 'Final Project', 0),
(192, 'Active', 'ExamActivityType', 'Paper 2', 0),
(193, 'Active', 'ExamActivityType', 'Paper 4', 0),
(194, 'Active', 'ExamActivityType', 'Practical Paper 5', 0),
(195, 'Active', 'House', 'Kifaru(Purple)', 0),
(196, 'Active', 'House', 'Ndovu(Red)', 0),
(197, 'Active', 'House', 'Twiga(Yellow)', 0),
(198, 'Active', 'House', 'Nyati(Green)', 0),
(199, 'Active', 'Clubs', 'Soccer', 0),
(200, 'Active', 'Clubs', 'Dance', 0),
(201, 'Active', 'BloodGroup', 'A', 0),
(202, 'Active', 'BloodGroup', 'A+', 0),
(203, 'Active', 'Language', 'f', 0),
(204, 'Active', 'Transport', 'A.M.', 0),
(205, 'Active', 'Transport', 'P.M.', 0),
(206, 'Active', 'Transport', 'A.M/P.M.', 0),
(207, 'Active', 'Transport', 'N/A', 0),
(208, 'Active', 'Clubs', 'Swimming', 0),
(209, 'Active', 'Clubs', 'Recycling', 0),
(210, 'Active', 'Clubs', 'Hockey&Cricket', 0),
(211, 'Active', 'Clubs', 'Young Famers', 0),
(212, 'Active', 'Clubs', 'Handiwork', 0),
(213, 'Active', 'Clubs', 'Cookery', 0),
(214, 'Active', 'Clubs', 'Story Telling', 0),
(215, 'Active', 'Clubs', 'News', 0),
(216, 'Active', 'Clubs', 'MSMUN', 0),
(217, 'Active', 'Clubs', 'EAMUN', 0),
(218, 'Active', 'Clubs', 'Sports', 0),
(219, 'Active', 'Clubs', 'Band', 0),
(220, 'Active', 'ExamActivityType', 'Pre-Mock Exam', 0),
(221, 'Active', 'ExamSubActivityType', 'Paper 2', 0),
(222, 'Active', 'ExamSubActivityType', 'Paper 3', 0),
(223, 'Active', 'ExamSubActivityType', 'Paper 1', 0),
(224, 'Active', 'ExamSubActivityType', 'Paper 4', 0),
(225, 'Active', 'ExamSubActivityType', 'Paper 5', 0),
(226, 'Active', 'Nationality', 'British', 0),
(227, 'Active', 'BloodGroup', 'B', 0),
(228, 'Active', 'BloodGroup', 'B+', 0),
(229, 'Active', 'Language', 'Amharic', 0),
(230, 'Active', 'Nationality', 'Ethiopian', 0),
(231, 'Active', 'ExamActivityType', 'Practical Performance', 0),
(232, 'Active', 'BloodGroup', 'O+', 0),
(233, 'Active', 'Language', 'Dutch', 0),
(234, 'Active', 'Nationality', 'Dutch/Rwandese', 0),
(235, 'Active', 'Nationality', 'Congolese', 0),
(236, 'Active', 'Language', 'French', 0),
(237, 'Active', 'Nationality', 'AMERICAN', 0),
(238, 'Active', 'Nationality', 'Dutch', 0),
(239, 'Active', 'Nationality', 'Australian', 0),
(240, 'Active', 'ExamActivityType', 'Paper 1', 0),
(241, 'Active', 'ExamActivityType', 'Paper 3', 0),
(242, 'Active', 'ExamActivityType', 'Paper 5', 0),
(243, 'Active', 'ExamSubActivityType', 'Listen', 0),
(244, 'Active', 'ExamSubActivityType', 'Reading', 0),
(245, 'Active', 'ExamSubActivityType', 'Speaking', 0),
(246, 'Active', 'ExamSubActivityType', 'Writing', 0),
(247, 'Active', 'ExamSubActivityType', 'Participation', 0),
(248, 'Active', 'ExamSubActivityType', 'Manners/Courtesy', 1),
(249, 'Active', 'Nationality', 'Ghananian', 0),
(250, 'Active', 'ExamActivityType', 'Theory', 0),
(251, 'Active', 'ExamActivityType', 'Practical', 0),
(252, 'Active', 'Nationality', 'Pakistani', 0),
(253, 'Active', 'Nationality', 'French', 0),
(254, 'Active', 'UserType', 'Coach', 1),
(255, 'Active', 'BloodGroup', 'AB', 0),
(256, 'Active', 'Nationality', 'Chad', 0),
(257, 'Active', 'Language', 'Akan', 0),
(258, 'Active', 'Nationality', 'Ugandan', 0),
(259, 'Active', 'Nationality', 'Korean', 0),
(260, 'Active', 'Language', 'Korean', 0),
(261, 'Active', 'Nationality', 'Guinean', 0),
(262, 'Active', 'BloodGroup', 'O', 0),
(263, 'Active', 'Nationality', 'Cameroonian', 0),
(264, 'Active', 'Nationality', 'Rwandese', 0),
(265, 'Active', 'Language', 'Urdu', 0),
(266, 'Active', 'Nationality', 'Nigerian', 0),
(267, 'Active', 'Nationality', 'Italian', 0),
(268, 'Active', 'Clubs', 'Rugby & TableTennis', 0),
(269, 'Active', 'Clubs', 'Hockey & Rounders', 0),
(270, 'Active', 'Clubs', 'Sound & Lightening', 0),
(271, 'Active', 'Clubs', 'Enviroment', 0),
(272, 'Active', 'Clubs', 'Mixed Media', 0),
(273, 'Active', 'FeeType', 'Year Book', 7),
(274, 'Active', 'IncomeAccount', 'Miscellanious', 0),
(275, 'Active', 'ExamSubActivityType', 'Mock Exam', 0),
(276, 'Active', 'ExamActivityType', 'Mock Exam', 0),
(277, 'Active', 'FeeType', 'Other Fees', 10),
(278, 'Active', 'Language', 'Portuguese', 0),
(279, 'Active', 'Nationality', 'Angolan', 0),
(280, 'Active', 'IncomeAccount', 'Caution money', 1),
(281, 'Active', 'ExamActivityType', 'Paper 6', 1),
(282, 'Active', 'ExamSubActivityType', 'Paper 6', 1),
(283, 'Active', 'ExamActivityType', 'Group Project', 1),
(284, 'Active', 'TerminationReason', 'Moved to another class', 1),
(285, 'Active', 'Nationality', 'Canadian', 1),
(286, 'Active', 'ExamActivityType', 'Q.C.A Exam 1', 1),
(287, 'Active', 'ExamActivityType', 'Q.C.A Exam 2', 1),
(288, 'Active', 'Clubs', 'BasketBall', 1),
(289, 'Active', 'Clubs', 'Sewing', 1),
(290, 'Active', 'Clubs', 'Indoor Games', 1),
(291, 'Active', 'Clubs', 'Drama', 1),
(292, 'Active', 'Nationality', 'Iranian', 1),
(293, 'Active', 'Language', 'Persian', 1),
(294, 'Active', 'Clubs', 'Wildlife', 1),
(295, 'Active', 'Nationality', 'Tanzanian/Kenyan', 1),
(296, 'Active', 'ExamActivityType', 'Scientific Enquiry', 1),
(297, 'Active', 'ExamActivityType', 'Mental math', 1),
(298, 'Active', 'Nationality', 'Sierra Leonean', 1),
(299, 'Active', 'Nationality', 'Burundi', 1),
(300, 'Active', 'Clubs', 'Mechanics', 1),
(301, 'Active', 'ExamActivityType', 'Writing', 1),
(302, 'Active', 'ExamActivityType', 'Reading', 1),
(303, 'Active', 'ExamActivityType', 'Map work', 1),
(304, 'Active', 'ExamActivityType', 'Speaking', 1),
(305, 'Active', 'ExamActivityType', 'Bi-weekly test', 1),
(306, 'Active', 'ExamActivityType', 'C.A.T 1', 1),
(307, 'Active', 'ExamActivityType', 'C.A.T 2', 1),
(308, 'Active', 'ExamActivityType', 'C.A.T 3', 1),
(309, 'Active', 'ExamActivityType', 'C.A.T 4', 1),
(311, 'Active', 'UserType', 'COORDINATORS', 1),
(312, 'Active', 'SubjectPriority', 'Listening', 1),
(313, 'Active', 'ExamActivityType', 'Listening', 1),
(315, 'Active', 'UserType', 'HEAD OF SUBJECT', 1),
(316, 'Active', 'StaffPosition', 'Coach', 1),
(317, 'Active', 'ExamActivityType', 'Creative writing', 1),
(318, 'Active', 'ExamActivityType', 'Reading and writing', 1),
(319, 'Active', 'Clubs', 'Netball', 1),
(320, 'Active', 'Clubs', 'Rugby', 1),
(321, 'Active', 'Clubs', 'Table Tennis', 1),
(322, 'Active', 'Clubs', 'Table Tennis,MSMUN', 1),
(323, 'Active', 'Clubs', 'MSMUN, MAKERFUSE', 1),
(324, 'Active', 'Clubs', 'Table Tennis, Makerfuse', 1),
(325, 'Active', 'Clubs', 'Soccer, Swimming', 1),
(326, 'Active', 'Clubs', 'MSMUN, Basketball', 1),
(327, 'Active', 'Clubs', 'MSMUN, Mechanics', 1),
(328, 'Active', 'Clubs', 'MSMUN, Mixed Media', 1),
(329, 'Active', 'Clubs', 'Tag Ruby', 1),
(330, 'Active', 'Clubs', 'Tag Ruby, Basketball', 1),
(331, 'Active', 'Clubs', 'Nil', 1),
(332, 'Active', 'Clubs', 'Young Dolphines', 1),
(333, 'Active', 'Nationality', 'Danish/Kenyan', 1),
(334, 'Active', 'Language', 'Italian', 1),
(335, 'Active', 'Language', 'Italian, English', 1),
(336, 'Active', 'Transport', 'Friday PM', 1),
(337, 'Active', 'Transport', 'Mon-Wed PM', 1),
(338, 'Active', 'Language', 'Shona', 1),
(339, 'Active', 'Nationality', 'Zimbabwean', 1),
(340, 'Active', 'Clubs', 'Planet Heroes', 1),
(341, 'Active', 'Clubs', 'Coding and Robotics', 1),
(342, 'Active', 'Clubs', 'Smash Netball', 1),
(343, 'Active', 'Clubs', 'Rugby/Cricket', 1),
(344, 'Active', 'Clubs', 'Tennis', 1),
(345, 'Active', 'Nationality', 'Liberian', 1),
(346, 'Active', 'Nationality', 'Malawian', 1),
(347, 'Active', 'Clubs', 'Dance To Fitness', 1),
(348, 'Active', 'Clubs', 'Ping Pong', 1),
(349, 'Active', 'Clubs', 'MSMUN, Dance To Fitness', 1),
(350, 'Active', 'Clubs', 'MSMUN, Pingpong', 1),
(351, 'Active', 'ExamActivityType', 'End Term Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `masterentrycategory`
--

CREATE TABLE `masterentrycategory` (
  `MasterEntryCategoryId` int(11) NOT NULL,
  `MasterEntryCategoryName` varchar(100) NOT NULL,
  `MasterEntryCategoryValue` varchar(100) NOT NULL,
  `Permission` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterentrycategory`
--

INSERT INTO `masterentrycategory` (`MasterEntryCategoryId`, `MasterEntryCategoryName`, `MasterEntryCategoryValue`, `Permission`) VALUES
(1, 'Gender', 'Gender', 'Webmaster'),
(2, 'Account Type', 'AccountType', 'Webmaster'),
(3, 'User Type', 'UserType', ''),
(4, 'Fee Type', 'FeeType', ''),
(5, 'Distance', 'Distance', ''),
(7, 'Exam Activity Type', 'ExamActivityType', ''),
(8, 'Staff Position', 'StaffPosition', ''),
(9, 'Route Stoppage', 'RouteStoppage', ''),
(10, 'Enquiry Response', 'EnquiryResponse', ''),
(11, 'Reference', 'Reference', ''),
(12, 'Enquiry Type', 'EnquiryType', ''),
(13, 'Nationality', 'Nationality', ''),
(14, 'Category', 'Category', ''),
(15, 'Blood Group', 'BloodGroup', ''),
(16, 'Students Documents', 'StudentsDocuments', ''),
(17, 'Resolution', 'Resolution', 'Webmaster'),
(18, 'Complaint Type', 'ComplaintType', ''),
(19, 'Guest Visiting Purpose', 'GuestVistingPurpose', ''),
(20, 'Salary Head Type', 'SalaryHeadType', 'Webmaster'),
(21, 'Income Account', 'IncomeAccount', ''),
(22, 'Expense Account', 'ExpenseAccount', ''),
(23, 'Print Category', 'PrintCategory', 'Webmaster'),
(24, 'Book Purpose', 'BookPurpose', 'Webmaster'),
(25, 'Co Scholastic Part', 'CoScholasticPart', ''),
(26, 'Grading Point', 'GradingPoint', 'Webmaster'),
(27, 'Staff Documents', 'StaffDocuments', ''),
(28, 'Stock Type', 'StockType', ''),
(29, 'Unit', 'Unit', ''),
(30, 'Assign To', 'AssignTo', 'Webmaster'),
(31, 'Other Assign To', 'OtherAssignTo', 'Webmaster'),
(32, 'Header Footer', 'HeaderFooter', 'Webmaster'),
(33, 'Route To', 'RouteTo', 'Webmaster'),
(34, 'Termination Reason', 'TerminationReason', ''),
(35, 'Language', 'Language', ''),
(36, 'House', 'House', ''),
(37, 'Clubs', 'Clubs', ''),
(38, 'Transport', 'Transport', ''),
(39, 'SubjectPriority', 'SubjectPriority', ''),
(40, 'SubActivityType', 'ExamSubActivityType', '');

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `id` int(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `admid` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `teacher_in_charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `misc`
--

INSERT INTO `misc` (`id`, `session`, `admid`, `no`, `date`, `event_name`, `role`, `remarks`, `teacher_in_charge`) VALUES
(1, '2016-2017', 21, 1, '20/10/2016', 'MY EVENT', 'PATRON', '', 'Mr Dasol'),
(2, '2016-2017', 208, 1, '03/03/2016', 'asdasd', 'asdasd', 'asdasd', 'Dasol Chun'),
(3, '2016-2017', 164, 1, '03/03/2016', 'adsf', 'asdf', 'asdf', 'Bronwynne Van Rijn'),
(4, '2016-2017', 168, 1, '03/03/2016', 'adsdfasdf', 'dasfasdf', 'jhgjh', 'Nancy Maloba'),
(5, '2016-2017', 110, 1, '11/01/2017', 'sdf', 'sadfsdafasi have done this and that something dfasdfsadfasdfsadfasdf', 'sadfsdafasdfasdfsadfasdfsadfasdf', 'Dasol Chun'),
(6, '2016-2017', 134, 1, '11/01/2017', 'sdfdfjasdjfpajsdfpojapsdfjpoajsdfpojaspdfjpasjdfpojads', 'sdfg', 'fgsf', 'Dasol Chun'),
(7, '2016-2017', 157, 1, '12/03/2017', 'ccc', 'uu', 'uu', 'Timothy Matheri'),
(8, '2016-2017', 104, 1, '24/01/2017', 'ff', 'ff', 'ff', 'Sarah Kiarie'),
(9, '2016-2017', 175, 1, '07/07/2017', 'Most disciplined', '', '', 'Leah Kimanga'),
(10, '2016-2017', 316, 1, '07/07/2017', 'Perfect attendance', '', '', 'Leah Kimanga'),
(11, '2016-2017', 90, 1, '07/07/2017', 'Well groomed boy', '', '', 'Leah Kimanga'),
(12, '2016-2017', 84, 1, '07/07/2017', 'Best actor', '', '', 'Leah Kimanga'),
(13, '2016-2017', 204, 1, '30/01/2017', 'Pen Licence Award', 'Exceptional cursive writing ', ' ', 'Sarah Kiarie'),
(14, '2016-2017', 207, 1, '30/01/2017', 'Pen Licence Certificate ', 'Exceptional Cursive writing ', 'Improvement on writing skills', 'Sarah Kiarie'),
(15, '2016-2017', 176, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing ', 'Exceptional cursive writing ', 'Sarah Kiarie'),
(16, '2016-2017', 177, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing ', 'Exceptional cursive writing ', 'Sarah Kiarie'),
(17, '2016-2017', 180, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing ', 'Exceptional cursive writing ', 'Sarah Kiarie'),
(18, '2016-2017', 187, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(19, '2016-2017', 201, 1, '30/01/2017', 'Pen Licence Award', 'Exceptional cursive writing ', '', 'Sarah Kiarie'),
(20, '2016-2017', 205, 1, '30/01/2017', 'Pen Licence certificate ', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(21, '2016-2017', 210, 1, '30/01/2017', 'Pen Licence Award ', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(22, '2016-2017', 212, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(23, '2016-2017', 214, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing ', '', 'Sarah Kiarie'),
(24, '2016-2017', 215, 1, '30/01/2017', 'Pen Licence Award', 'Exceptional cursive writing ', '', 'Sarah Kiarie'),
(25, '2016-2017', 216, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(26, '2016-2017', 217, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(27, '2016-2017', 218, 1, '30/01/2017', 'Pen Licence certificate ', 'Exceptional cursive writing', '', 'Sarah Kiarie'),
(28, '2016-2017', 219, 1, '30/01/2017', 'Pen Licence certificate', 'Exceptional cursive writing', '', 'Sarah Kiarie');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`, `created_on`, `updated_on`) VALUES
(1, 'Administration', '2020-04-25 10:53:22', '2020-04-25 10:53:22'),
(2, 'Attendance', '2020-04-25 10:53:22', '2020-04-25 10:53:22'),
(3, 'Reporting', '2020-04-25 10:53:22', '2020-04-25 10:53:22'),
(4, 'Staff Management', '2020-04-25 10:53:22', '2020-04-25 10:53:22'),
(5, 'Content Upload', '2020-04-25 10:53:22', '2020-04-25 10:53:22'),
(6, 'User Management', '2020-04-25 10:53:22', '2020-04-25 10:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `mun`
--

CREATE TABLE `mun` (
  `id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `evaluation` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `place` varchar(255) NOT NULL,
  `admid` int(11) NOT NULL,
  `session` varchar(20) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `coordinator` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mun`
--

INSERT INTO `mun` (`id`, `no`, `evaluation`, `date`, `place`, `admid`, `session`, `rating`, `remarks`, `coordinator`, `duration`, `roles`) VALUES
(2, 1, '', '20/10/2016', 'MUN PLACE', 21, '2016-2017', 'excellent', 'mun remarks', 'co-ordinator', '', ''),
(3, 1, 'dfasdf', '03/03/2016', 'dsafasdf', 164, '2016-2017', 'excellent', 'sdfasdf', 'asdf', '', ''),
(4, 3, 'asdf', '03/03/2016', 'dsafasdf', 164, '2016-2017', 'satisfactory', 'sdfasdf', 'asdf', '', ''),
(5, 4, 'asdf', '03/03/2016', 'dsafasdf', 164, '2016-2017', 'concern', 'sdfasdf', 'asdf', '', ''),
(6, 2, 'asdf', '03/03/2016', 'dsafasdf', 164, '2016-2017', 'good', 'sdfasdf', 'asdf', '', ''),
(7, 2, 'sdfasdfasdf', '03/03/2016', 'jhgjhgjh', 168, '2016-2017', 'excellent', 'dasdfasdf', 'asdf', '', ''),
(8, 1, 'fdgdgf', '03/03/2016', 'jhgjhgjh', 168, '2016-2017', 'excellent', 'dasdfasdf', 'asdf', '', ''),
(9, 5, 'sdf', '11/01/217', 'sf', 134, '2016-2017', 'satisfactory', 'sadf', 'sadf', '', ''),
(10, 1, 'sdf', '11/01/217', 'sf', 134, '2016-2017', 'satisfactory', 'sadf', 'sadf', '', ''),
(11, 3, 'sdf', '11/01/217', 'sf', 134, '2016-2017', 'satisfactory', 'sadf', 'sadf', '', ''),
(12, 2, 'sdf', '11/01/217', 'sf', 134, '2016-2017', 'satisfactory', 'sadf', 'sadf', '', ''),
(13, 4, 'sdf', '11/01/217', 'sf', 134, '2016-2017', 'satisfactory', 'sadf', 'sadf', '', ''),
(14, 2, 'Punctuality ', '21/01/2017', 'United Nation Office, Nairobi', 135, '2016-2017', 'good', 'Claire excelled in MSMUN this year. No doubt she will build on her experience in the coming MUN events and activities.Well done.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(15, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 135, '2016-2017', 'good', 'Claire excelled in MSMUN this year. No doubt she will build on her experience in the coming MUN events and activities.Well done.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(16, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 135, '2016-2017', 'good', 'Claire excelled in MSMUN this year. No doubt she will build on her experience in the coming MUN events and activities.Well done.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(17, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 135, '2016-2017', 'good', 'Claire excelled in MSMUN this year. No doubt she will build on her experience in the coming MUN events and activities.Well done.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(18, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 135, '2016-2017', 'good', 'Claire excelled in MSMUN this year. No doubt she will build on her experience in the coming MUN events and activities.Well done.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(19, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 136, '2016-2017', 'good', 'Gabriel made a great effort for a first time appearance in MUN. He is expected to do better in the coming MUN events and activities.', 'Mr. J. Maina', ' 3 Months', 'Delegates'),
(20, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 136, '2016-2017', 'good', 'Gabriel made a great effort for a first time appearance in MUN. He is expected to do better in the coming MUN events and activities.', 'Mr. J. Maina', ' 3 Months', 'Delegates'),
(21, 4, 'Resolution writing', '21/01/2017', 'United Nation Office, Nairobi', 136, '2016-2017', 'good', 'Gabriel made a great effort for a first time appearance in MUN. He is expected to do better in the coming MUN events and activities.', 'Mr. J. Maina', ' 3 Months', 'Delegates'),
(22, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 136, '2016-2017', 'good', 'Gabriel made a great effort for a first time appearance in MUN. He is expected to do better in the coming MUN events and activities.', 'Mr. J. Maina', ' 3 Months', 'Delegates'),
(23, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 136, '2016-2017', 'good', 'Gabriel made a great effort for a first time appearance in MUN. He is expected to do better in the coming MUN events and activities.', 'Mr. J. Maina', ' 3 Months', 'Delegates'),
(24, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 137, '2016-2017', 'good', 'Isaac did well for his first MUN appearance and benefited a great deal from the enriching experience. ', 'Mr. J. Maina', '3 Months', 'Delegate'),
(25, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 137, '2016-2017', 'good', 'Isaac did well for his first MUN appearance and benefited a great deal from the enriching experience. ', 'Mr. J. Maina', '3 Months', 'Delegate'),
(26, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 137, '2016-2017', 'good', 'Isaac did well for his first MUN appearance and benefited a great deal from the enriching experience. ', 'Mr. J. Maina', '3 Months', 'Delegate'),
(27, 3, 'Team work', '21/01/2017', 'United Nation Office, Nairobi', 137, '2016-2017', 'good', 'Isaac did well for his first MUN appearance and benefited a great deal from the enriching experience. ', 'Mr. J. Maina', '3 Months', 'Delegate'),
(28, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 137, '2016-2017', 'good', 'Isaac did well for his first MUN appearance and benefited a great deal from the enriching experience. ', 'Mr. J. Maina', '3 Months', 'Delegate'),
(29, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 139, '2016-2017', 'satisfactory', 'Moses certainly did well for a first time participation in MUN. In future he can be more focused in doing good research as well as writing good resolutions.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(30, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 139, '2016-2017', 'satisfactory', 'Moses certainly did well for a first time participation in MUN. In future he can be more focused in doing good research as well as writing good resolutions.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(31, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 139, '2016-2017', 'satisfactory', 'Moses certainly did well for a first time participation in MUN. In future he can be more focused in doing good research as well as writing good resolutions.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(32, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 139, '2016-2017', 'concern', 'Moses certainly did well for a first time participation in MUN. In future he can be more focused in doing good research as well as writing good resolutions.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(33, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 139, '2016-2017', 'satisfactory', 'Moses certainly did well for a first time participation in MUN. In future he can be more focused in doing good research as well as writing good resolutions.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(34, 1, 'Participation', '21/01/2017', '', 140, '2016-2017', 'excellent', 'Nissi certainly benefited a great deal from her experience in this years MUN activities and events. She needs to focus her energy towards writing of excellent resolutions in future.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(35, 4, 'Resolution Writing', '21/01/2017', '', 140, '2016-2017', 'good', 'Nissi certainly benefited a great deal from her experience in this years MUN activities and events. She needs to focus her energy towards writing of excellent resolutions in future.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(36, 2, 'Punctuality', '21/01/2017', '', 140, '2016-2017', 'excellent', 'Nissi certainly benefited a great deal from her experience in this years MUN activities and events. She needs to focus her energy towards writing of excellent resolutions in future.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(37, 3, 'Team Work', '21/01/2017', '', 140, '2016-2017', 'excellent', 'Nissi certainly benefited a great deal from her experience in this years MUN activities and events. She needs to focus her energy towards writing of excellent resolutions in future.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(38, 5, 'Personal Conduct', '21/01/2017', '', 140, '2016-2017', 'excellent', 'Nissi certainly benefited a great deal from her experience in this years MUN activities and events. She needs to focus her energy towards writing of excellent resolutions in future.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(39, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 141, '2016-2017', 'concern', 'Paa Kow could certainly do better with an opportunity like MUN. In the coming events he should focus his energy towards writing quality resolutions.', '', '3 Months', 'Delegate'),
(40, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 141, '2016-2017', 'satisfactory', 'Paa Kow could certainly do better with an opportunity like MUN. In the coming events he should focus his energy towards writing quality resolutions.', '', '3 Months', 'Delegate'),
(41, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 141, '2016-2017', 'concern', 'Paa Kow could certainly do better with an opportunity like MUN. In the coming events he should focus his energy towards writing quality resolutions.', '', '3 Months', 'Delegate'),
(42, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 141, '2016-2017', 'concern', 'Paa Kow could certainly do better with an opportunity like MUN. In the coming events he should focus his energy towards writing quality resolutions.', '', '3 Months', 'Delegate'),
(43, 4, 'Resolution writing', '21/01/2017', 'United Nation Office, Nairobi', 141, '2016-2017', 'concern', 'Paa Kow could certainly do better with an opportunity like MUN. In the coming events he should focus his energy towards writing quality resolutions.', '', '3 Months', 'Delegate'),
(44, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 143, '2016-2017', 'good', 'Shani certainly benefited from the MUN activities and events of this year. She should focus her energy towards good quality resolution writing and preparation.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(45, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 143, '2016-2017', 'good', 'Shani certainly benefited from the MUN activities and events of this year. She should focus her energy towards good quality resolution writing and preparation.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(46, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 143, '2016-2017', 'good', 'Shani certainly benefited from the MUN activities and events of this year. She should focus her energy towards good quality resolution writing and preparation.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(47, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 143, '2016-2017', 'good', 'Shani certainly benefited from the MUN activities and events of this year. She should focus her energy towards good quality resolution writing and preparation.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(48, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 143, '2016-2017', 'good', 'Shani certainly benefited from the MUN activities and events of this year. She should focus her energy towards good quality resolution writing and preparation.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(49, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 144, '2016-2017', 'excellent', 'Caelen certainly excelled not only in writing but also in  presenting and successfully lobbying for his resolution. Keep it up Caelen!', 'Mr. J. Maina', ' 3 Months', 'Ambassador'),
(50, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 144, '2016-2017', 'excellent', 'Caelen certainly excelled not only in writing but also in  presenting and successfully lobbying for his resolution. Keep it up Caelen!', 'Mr. J. Maina', ' 3 Months', 'Ambassador'),
(51, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 144, '2016-2017', 'excellent', 'Caelen certainly excelled not only in writing but also in  presenting and successfully lobbying for his resolution. Keep it up Caelen!', 'Mr. J. Maina', ' 3 Months', 'Ambassador'),
(52, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 144, '2016-2017', 'excellent', 'Caelen certainly excelled not only in writing but also in  presenting and successfully lobbying for his resolution. Keep it up Caelen!', 'Mr. J. Maina', ' 3 Months', 'Ambassador'),
(53, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 144, '2016-2017', 'excellent', 'Caelen certainly excelled not only in writing but also in  presenting and successfully lobbying for his resolution. Keep it up Caelen!', 'Mr. J. Maina', ' 3 Months', 'Ambassador'),
(54, 1, 'Participation', '21/01/2017', 'successfully', 145, '2016-2017', 'good', 'Tuja has excelled in the last two MUN seasons. He should focus his energy and time in writing quality resolutions and carrying out thorough research in his are of interest.', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(55, 4, 'Resolution Writing', '21/01/2017', 'successfully', 145, '2016-2017', 'good', 'Tuja has excelled in the last two MUN seasons. He should focus his energy and time in writing quality resolutions and carrying out thorough research in his are of interest.', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(56, 3, 'Team Work', '21/01/2017', 'successfully', 145, '2016-2017', 'good', 'Tuja has excelled in the last two MUN seasons. He should focus his energy and time in writing quality resolutions and carrying out thorough research in his are of interest.', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(57, 2, 'Punctuality', '21/01/2017', 'successfully', 145, '2016-2017', 'good', 'Tuja has excelled in the last two MUN seasons. He should focus his energy and time in writing quality resolutions and carrying out thorough research in his are of interest.', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(58, 5, 'Pesonal Conduct', '21/01/2017', 'successfully', 145, '2016-2017', 'good', 'Tuja has excelled in the last two MUN seasons. He should focus his energy and time in writing quality resolutions and carrying out thorough research in his are of interest.', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(59, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 147, '2016-2017', 'good', 'Jayden certainly made a good effort in this years MUN events and activities. In the coming days, he should focus his energy towards good research and quality resolution writing.', 'Mr. J. Maina', '3 Month', 'Delegate'),
(60, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 147, '2016-2017', 'good', 'Jayden certainly made a good effort in this years MUN events and activities. In the coming days, he should focus his energy towards good research and quality resolution writing.', 'Mr. J. Maina', '3 Month', 'Delegate'),
(61, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 147, '2016-2017', 'good', 'Jayden certainly made a good effort in this years MUN events and activities. In the coming days, he should focus his energy towards good research and quality resolution writing.', 'Mr. J. Maina', '3 Month', 'Delegate'),
(62, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 147, '2016-2017', 'good', 'Jayden certainly made a good effort in this years MUN events and activities. In the coming days, he should focus his energy towards good research and quality resolution writing.', 'Mr. J. Maina', '3 Month', 'Delegate'),
(63, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 147, '2016-2017', 'good', 'Jayden certainly made a good effort in this years MUN events and activities. In the coming days, he should focus his energy towards good research and quality resolution writing.', 'Mr. J. Maina', '3 Month', 'Delegate'),
(64, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 150, '2016-2017', 'satisfactory', 'Kyle has done well in the last two MUN seasons. In the coming days, he would do better by focusing his time and energy towards good research as well as resolution writing. ', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(65, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 150, '2016-2017', 'satisfactory', 'Kyle has done well in the last two MUN seasons. In the coming days, he would do better by focusing his time and energy towards good research as well as resolution writing. ', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(66, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 150, '2016-2017', 'satisfactory', 'Kyle has done well in the last two MUN seasons. In the coming days, he would do better by focusing his time and energy towards good research as well as resolution writing. ', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(67, 2, 'Punctuality', '21/01/2017', 'United Nation Office, Nairobi', 150, '2016-2017', 'satisfactory', 'Kyle has done well in the last two MUN seasons. In the coming days, he would do better by focusing his time and energy towards good research as well as resolution writing. ', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(68, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 150, '2016-2017', 'satisfactory', 'Kyle has done well in the last two MUN seasons. In the coming days, he would do better by focusing his time and energy towards good research as well as resolution writing. ', 'Mr. J. Maina', '3 Months', 'Ambassador'),
(69, 1, 'Participation', '21/01/2017', 'United Nation Office, Nairobi', 151, '2016-2017', 'satisfactory', 'Munene has done well in this years MUN activities and events. He should now focus his energy towards good research as well as resolution writing.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(70, 4, 'Resolution Writing', '21/01/2017', 'United Nation Office, Nairobi', 151, '2016-2017', 'satisfactory', 'Munene has done well in this years MUN activities and events. He should now focus his energy towards good research as well as resolution writing.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(71, 2, 'Punctuation', '21/01/2017', 'United Nation Office, Nairobi', 151, '2016-2017', 'satisfactory', 'Munene has done well in this years MUN activities and events. He should now focus his energy towards good research as well as resolution writing.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(72, 3, 'Team Work', '21/01/2017', 'United Nation Office, Nairobi', 151, '2016-2017', 'satisfactory', 'Munene has done well in this years MUN activities and events. He should now focus his energy towards good research as well as resolution writing.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(73, 5, 'Personal Conduct', '21/01/2017', 'United Nation Office, Nairobi', 151, '2016-2017', 'satisfactory', 'Munene has done well in this years MUN activities and events. He should now focus his energy towards good research as well as resolution writing.', 'Mr. J. Maina', '3 Months', 'Delegate'),
(74, 1, 'etrrtrt', '18/04/2017', 'nairobi', 157, '2016-2017', 'excellent', 'sdfgfdfgdfgfdfgdgdfgdfg\nmjjmjmjhjm htgt rhfdhfhf dgdfbf]\nrffbfn  fnhfnhf \nfnfnhnh ffnf', 'vfdegfeed', '5', 'ti');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `NoteId` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `UniqueId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Content` text NOT NULL,
  `Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`NoteId`, `Username`, `UniqueId`, `Name`, `Content`, `Date`) VALUES
(1, 'masteruser', 1, 'ManageAccounts', 'Main account', '1438623120'),
(2, 'Nyambura', 1175, 'Income', 'No child&#39;s name', '1499402880'),
(3, 'Nyambura', 1590, 'Income', 'Creche lunches', '1510584060'),
(4, 'Nyambura', 1657, 'Income', 'Karl ', '1512539220'),
(5, 'Nyambura', 1657, 'Income', 'Karl and Karani Steinbeck', '1512539220');

-- --------------------------------------------------------

--
-- Table structure for table `pagename`
--

CREATE TABLE `pagename` (
  `PageNameId` int(11) NOT NULL,
  `PageName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagename`
--

INSERT INTO `pagename` (`PageNameId`, `PageName`) VALUES
(1, 'MasterEntry'),
(2, 'ManageUser'),
(3, 'ManageAccounts'),
(4, 'ManageClass'),
(5, 'ManageSubject'),
(6, 'ManageExam'),
(7, 'ManageSCArea'),
(8, 'Payment'),
(9, 'MarksSetup'),
(10, 'ExamReport'),
(11, 'ManageSubActivity'),
(12, 'SpecialReport'),
(13, 'ExamReportSpecial'),
(14, 'ExamReportVerification'),
(15, 'Registration'),
(16, 'Admission'),
(17, 'AdmissionReport'),
(18, 'StudyingReport'),
(19, 'StudentsLeft'),
(20, 'RegistrationReport'),
(21, 'GenerateTranscript'),
(22, 'UpdateFee'),
(23, 'PrintExamReportt'),
(24, 'PrintExamReport'),
(25, 'PrintExamReportSingle'),
(26, 'PrintExamReportSingle'),
(27, 'TermFee'),
(28, 'Promotion'),
(29, 'Term Promotion'),
(30, 'TermFeeTemp'),
(31, 'PaymentTemp'),
(32, 'Temporary Invoice'),
(33, 'ManageFee'),
(34, 'Income'),
(35, 'Other Payments'),
(36, 'Miscellaneous Invoicing'),
(39, 'Fee Payments'),
(40, 'GenerateTranscript'),
(41, 'GenerateTranscript');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `username`, `password`) VALUES
(1, 'masteruser', '2016son');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `PermissionId` int(11) NOT NULL,
  `UserType` int(11) NOT NULL,
  `PermissionString` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`PermissionId`, `UserType`, `PermissionString`) VALUES
(1, 49, '16,17,10,13,40,21,3,4,6,7,5,2,9,1,8,28,15,20,12,19,18,29,27,22'),
(2, 48, '4,6,7,5,9,11'),
(3, 100, ''),
(4, 38, '17,10,14,39,34,3,4,6,33,7,5,2,9,1,36,35,8,31,15,12,32,27,30,22'),
(5, 50, '10,4,6,11,5,9'),
(6, 254, '10,13,4,6,11,5,9,23,12'),
(7, 310, '10,13,12'),
(8, 311, '10,13,14,12'),
(9, 315, '10,13,14,12');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `PhotoId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Path` varchar(100) NOT NULL,
  `Document` int(11) NOT NULL,
  `Detail` varchar(100) NOT NULL,
  `UniqueId` int(11) NOT NULL,
  `DOE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printoption`
--

CREATE TABLE `printoption` (
  `PrintOptionId` int(11) NOT NULL,
  `PrintCategory` int(11) NOT NULL,
  `Width` decimal(10,0) NOT NULL,
  `HeaderId` varchar(10) NOT NULL,
  `FooterId` varchar(10) NOT NULL,
  `PrintOptionStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `RegistrationId` int(11) NOT NULL,
  `Session` varchar(10) DEFAULT NULL,
  `FirstSession` varchar(20) DEFAULT NULL,
  `FirstTerm` int(11) DEFAULT NULL,
  `FirstSection` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `StudentName` varchar(100) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `FatherMobile` varchar(10) DEFAULT NULL,
  `FatherOfficePhone` varchar(20) DEFAULT NULL,
  `FatherDateOfBirth` varchar(10) DEFAULT NULL,
  `FatherEmail` varchar(100) DEFAULT NULL,
  `FatherQualification` varchar(100) DEFAULT NULL,
  `FatherOccupation` varchar(100) DEFAULT NULL,
  `FatherDesignation` varchar(100) DEFAULT NULL,
  `FatherOrganization` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `GuardianName` varchar(255) DEFAULT NULL,
  `KenyanGuardian` varchar(255) DEFAULT NULL,
  `MotherMobile` varchar(10) DEFAULT NULL,
  `MotherOfficePhone` varchar(20) DEFAULT NULL,
  `MotherDateOfBirth` varchar(10) DEFAULT NULL,
  `MotherEmail` varchar(100) DEFAULT NULL,
  `MotherQualification` varchar(100) DEFAULT NULL,
  `MotherOccupation` varchar(100) DEFAULT NULL,
  `MotherDesignation` varchar(100) DEFAULT NULL,
  `MotherOrganization` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `SectionId` int(11) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `DOR` varchar(20) DEFAULT NULL,
  `DOAcceptance` int(11) DEFAULT NULL,
  `DOE` varchar(20) DEFAULT NULL,
  `Landline` varchar(12) DEFAULT NULL,
  `AlternateMobile` varchar(10) DEFAULT NULL,
  `PresentAddress` text DEFAULT NULL,
  `PermanentAddress` text DEFAULT NULL,
  `BloodGroup` int(11) DEFAULT NULL,
  `Caste` int(11) DEFAULT NULL COMMENT 'Nationality',
  `Category` varchar(100) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Nationality` int(11) DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `ParentsPassword` varchar(100) DEFAULT NULL,
  `StudentsPassword` varchar(100) DEFAULT NULL,
  `DOL` varchar(10) DEFAULT NULL,
  `DOLUsername` varchar(100) DEFAULT NULL,
  `DOD` varchar(10) DEFAULT NULL,
  `DODUsername` varchar(100) DEFAULT NULL,
  `DateOfTermination` varchar(10) DEFAULT NULL,
  `TermTerminated` varchar(20) DEFAULT NULL,
  `SessionTerminated` varchar(20) DEFAULT NULL,
  `TerminationReason` varchar(10) DEFAULT NULL,
  `TerminationRemarks` text DEFAULT NULL,
  `DOT` varchar(10) DEFAULT NULL,
  `kcpe` int(11) DEFAULT 0,
  `borderday` char(1) DEFAULT 'D',
  `EmergencyName` varchar(255) DEFAULT NULL,
  `EmergencyRelationship` varchar(255) DEFAULT NULL,
  `EmergencyPhone` varchar(20) DEFAULT NULL,
  `EmergencyOfficePhone` varchar(20) DEFAULT NULL,
  `EmergencyEmail` varchar(255) DEFAULT NULL,
  `EmergencyAddress` varchar(255) DEFAULT NULL,
  `LastClass` int(11) DEFAULT NULL,
  `PreviousSchool` varchar(255) DEFAULT NULL,
  `SpecialRemarks` text DEFAULT NULL,
  `DOTest` int(11) DEFAULT NULL,
  `DateDepositPaid` int(11) DEFAULT NULL,
  `DORecords` int(11) DEFAULT NULL,
  `TestMarks` varchar(255) DEFAULT NULL,
  `DOA` int(11) DEFAULT NULL,
  `Term` int(11) DEFAULT NULL,
  `maths` int(11) DEFAULT NULL,
  `science` int(11) DEFAULT NULL,
  `english` int(11) DEFAULT NULL,
  `english2` int(11) DEFAULT NULL,
  `maths2` int(11) DEFAULT NULL,
  `science2` int(11) DEFAULT NULL,
  `DateOfRejoining` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(1, '2018-2019', '2016-2017', 1, 38, 'Studying', 'Jesse Mburu Muchiri', 'N/A', '', '', '', '', '', 'N/A', '', 'N/A', 'Jane Muchiri', '', 'Mother', '0721353823', '721353823', '', 'muchiri.jane@gmail.com', '', 'Advisor  of Cabinet Secretary', '', 'G.O.K', '0721353823', 40, '1183496400', '1472739780', 1473109200, '1472734440', '', '', 'P.O.BOX 63506 00619', 'P.O.BOX 63506 00619', 1, 123, '', 7, 0, '125', 'masteruser', '618417', '81921997', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Steve and Rachel', 'Grandparents', '722266316', '722285064', 'redhillsprings2gmail.com', 'Ngumba Estate', 0, '', '', 0, 1473109200, 1473022800, '', 0, 0, 65, 63, 60, 0, 0, 0, NULL),
(9, '2016-2017', '', 0, 0, 'Deleted', 'Elianna Githere', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 47, '12/7/2013', '', 0, '', '', '', '', '', 0, 0, '', 8, 0, NULL, '', '', '', '', '', '1478674740', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(35, '2016-2017', '', 0, 0, 'Deleted', 'Mich Obare', 'Alois G. Obare', '0720-44000', '', '', '', '', '', '', '', 'Caroline Nyagaya ', 'N/A', '', '0728-41733', '', '', '', '', '', '', '', '', 33, '-10800', '1441659600', 0, '', '', '', '', '', 1, 123, '', 8, 0, '125', '', '', '', '', '', '1477906560', 'masteruser', '1475269200', NULL, '', '113', '/', '1475314260', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(36, '2016-2017', '', 0, 0, 'Deleted', 'Njeri Wanjiku Maina', 'Maina Kigundu', '0722-87547', '', '', '', '', '', '', '', 'Ruth Kamunyu', '', '', '0721-21203', '', '', '', '', '', '', '', '', 33, '1136840400', '1476452520', 0, '', '', '', '', '', 1, 1, '', 8, 0, '', '', '', '', '', '', '1477906740', 'masteruser', '1477256400', '1', '', '113', '.', '1477297380', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(38, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Rehema Makokha Mangeni', 'Edwin  Mangeni', '733996707', '', '', 'edmangeni@gmail.com', '', 'Conflict Expert', 'Conflict Expert', 'IGAD', 'Julia Shisia', '', '', '733245418', '', '', 'jnshisia@gmail.com', '', 'Insuarance', 'Insuarance', 'ECB', '733245418', 34, '1273870800', '1463432400', 0, '', '', '733996707', '25259-00100 nrb', '25259-00100 nrb', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504680120', 0, 'D', 'Rose Shisia', 'Sister to mum', '721547645', '', '', 'Athi River', 33, '', '', 0, 0, 0, '', 0, 0, 64, 0, 74, 0, 0, 0, NULL),
(39, '2018-2019', '2016-2017', 1, 33, 'Terminated', 'Ryan Baraka David', 'David Adhiambo', '721274580', '', '', 'davidodhiambo@gmail.com', '', 'Engineer', 'Engineer', 'Safaricom Ltd', 'Albertina Sachombe', '', 'Both Parents', '721672260', '', '', 'davidodhiambo@gmail.com', '', 'Banker', 'Banker', 'KCB', '721672260', 37, '1274821200', '1461877200', 1461877200, '', '', '722003483', '24591-00100', '24591-00100', 228, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536307920', 0, 'D', 'Lucy Sachombe', 'aunt', '710730558', '', '', 'Muthaiga North-Balozi estate house no 131', 34, '', 'Admitted', 0, -10800, -10800, '', 0, 0, 64, 0, 72, 0, 0, 0, NULL),
(41, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Tijara Nabwire Mangeni', 'Edwin  Mangeni', '733996707', '', '', 'edmangeni@gmail.com', '', 'Conflict Expert', 'Conflict Expert', 'IGAD', 'Julia Shisia', '', '', '733245418', '', '', 'jnshisia@gmail.com', '', 'Insuarance', 'Insuarance', 'ECB', '733245418', 34, '1273870800', '1463432400', -10800, '', '204981000', '', '25259-00100', '25259-00100', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504680120', 0, 'D', 'Rose Shisia', 'Sister to mum', '721547645', '', '', 'Athi River', 33, '', '', 0, -10800, -10800, '', 0, 0, 76, 0, 92, 0, 0, 0, NULL),
(42, '2016-2017', '2016-2017', 1, 33, 'Terminated', 'Reine Umutesi  Akimana Wijnants', 'N/A', '', '', '', '', '', '', 'N/A', 'N/A', 'Jeannette Wijnants', '', 'Parent', '701723074', '', '', 'jwijnants10@gmail.com', '', 'Chief Child Protection', 'Chief Child Protection', 'Unicef', '701723074', 33, '1253826000', '1465938000', 1465938000, '', '', '708032755', '61 Mae Ridge Runda', '61 Mae Ridge Runda', 232, 234, '', 8, 0, '233', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500620520', 0, 'D', 'Aminul & Sharmina Islam', 'Colleague/Friend', '704133080', '207621219', 'aislam@unicef.org', 'Unicef Gigiri', 33, '', 'No support needed.', 0, 1473109200, 1465938000, '', 0, 0, 93, 0, 68, 0, 0, 0, NULL),
(43, '2016-2017', '', 0, 0, 'Deleted', 'Abeiku Owusu Biney', 'Alex Owusu Biney', '73435796', '', '', '', '', '', '', '', 'Jackie Owusu Biney', '', '', '0736-96519', '', '', '', '', '', '', '', '', 32, '-10800', '1473109200', 0, '', '', '', '', '', 1, 1, '', 7, 0, '', '', '', '', '', '', '1477905780', 'masteruser', '1475269200', NULL, '', '113', '.', '1475318640', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(44, '2018-2019', '2015-2016', 1, 30, 'Studying', 'Abigail Wanjiru Wagura', 'Joseph Wagura', '0722615256', '', '', '', '', 'Doctor', '', 'Self-employed', 'Beth Kimani', '', 'Mother', '0722615256', '0722615256', '', 'liz.kimani@yahoo.com', '', 'Businesslady', '', 'Self-employed', '0722615256', 37, '1163624400', '1441573200', 1441573200, '', '', '0722603253', '102432-00100 Nrb', '102432-00100 Nrb', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'D', 'Dr. Wagura Karaya', 'Father', '0722603253', '', 'fk_mwangi@yahoo.com', 'Nairobi', 0, '', '', 0, 1441659600, 1441573200, '', 0, 0, 72, 0, 0, 0, 0, 0, 4),
(45, '2017-2018', '2015-2016', 1, 30, 'Studying', 'Alanie Wacuka Duijndam', 'Donald Duijndam', '713083300', '', '', 'rduijndam@yahoo.com', '', 'Consultant', 'Consultant', 'Dutch Flower Group', 'Margaret Ndichu', '', 'Mother', '713083300', '', '', 'magsndichu@gmail.com', '', 'Businesslady', 'Businesslady', 'Self-employed', '713083300', 35, '1264107600', '1430773200', 1430773200, '', '', '713083300', '729-00621 V.M', '729-00621 V.M', 1, 238, '', 8, 0, '125', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Florence Kamundi', 'Aunt', '722795734', '', '', 'Kiambu', 0, '', '', 0, 1441659600, 1430773200, '', 0, 0, 98, 0, 98, 0, 0, 0, NULL),
(46, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Amani Russell Davis ', 'Darren Davis', '0790150256', '790150256', '', 'dr.darrendavis@gmail.com', '', 'Scientist', '', 'Illumuna', 'Linda Davis', '', 'Both Parents', '0717727103', '717727103', '', 'kulinda.davis@gmail.com', '', 'Scientist', '', 'Smart cook energy', '0717727103', 36, '1254862800', '1456174800', 1456174800, '', '', '0790150256', '58197 NBO 002001', '58197 NBO 002001', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Nellie Ndaki', 'Grandmother', '722700892', '', 'delliekeya@gmail.com', 'D S BELLWAY GARDENS KILELESHWA', 0, '', '', 0, 1473109200, 1456174800, '', 0, 0, 76, 0, 74, 0, 0, 0, NULL),
(47, '2017-2018', '2016-2017', 1, 34, 'Terminated', 'Chloe Wanjiru Okwirry', 'Isaac Okwirry', '722718071', '722718071', '', 'okwirryisaac@gmail.com', '', 'General Manager', '', 'Intersecurity services limited', 'Fiona Wahu', '.', 'Mother', '723204277', '723204277', '', 'mfyona@gmail.com', '', 'Farmer/Business lady', '', 'Self-Employed', '723204277', 37, '1243458000', '1471986000', 1471986000, '', '', '', 'P.O.BOX 16031-00100 Nrb', 'P.O.BOX 16031-00100 Nrb', 228, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504679040', 0, 'D', 'Sylvia Firth', 'Aunty', '704055542', '716786092', 'sylvia.firth@peoplefitafrica.com', 'Edenville #J7', 34, '', '', 0, 1473109200, 1471986000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(49, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Craig Bundi Gachanja Kamau', 'Wilson Kamau', '705114169', '', '', 'wkamau@kengen.co.ke', '', 'Strategic Planner', 'Strategic Planner', 'KENGEN', 'Miriam Kamau', '', 'Both Parents', '722748047', '', '', 'miriambbkamau@yahoo.com', '', 'Accountant', 'Accountant', 'Self-employed', '722748047', 35, '1264885200', '1456174800', 1456174800, '', '', '705114169', '48072-00100 GPO Nrb', '48072-00100 GPO Nrb', 202, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1512594000', '1', '2017-2018', '111', 'Nathaniel is a pleasant, quiet boy who loves reading. He is focused and excels in all his classwork. He has great general knowledge, which comes from reading a wide variety of books. He has excellent morals and social skills. It was great having him in my class. I wish him the best in his next class.', '1512657900', 0, 'D', 'Mr Thomas Bundi', 'Grandfather', '0733715214/072320094', '', '', '', 34, '', '', 0, 1473109200, 1456174800, '', 0, 0, 100, 0, 94, 0, 0, 0, NULL),
(51, '2018-2019', '2016-2017', 1, 30, 'Studying', 'Joy  Wanjiku Wanyoike', 'John Wanyoike', '0722872177', '0722872177', '', 'jowan@africaonline.co.ke', '', 'Accounts Consultant', '', 'Self-Employed', 'Nancy Wambui', '', 'Both Parents', '0722772451', '0722772451', '', 'gitonganancy70@gmail.com', '', 'Cateress', '', 'Self-Empoyed', '0722772451', 36, '1245186000', '1437339600', 1437339600, '', '', '0733601049', '74819-00200', '74819-00200', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Victor Muriithi', 'Brother', '0714402545', '', '', '74819-00200', 0, '', '', 0, 1441659600, 1437339600, '', 0, 0, 88, 0, 84, 0, 0, 0, NULL),
(52, '2016-2017', '2016-2017', 1, 32, 'Terminated', 'Kiama Wakagia Waimiri', 'Justus Waimiri', '722353242', '722353242', '', 'waimirik@gmail.com', '', 'Communications', 'Communications', 'Water for the World', 'Daisy Waimiri', '', 'Both Parents', '722739581', '0722739581	', '', 'dwaimiri@hotmail.com', '', 'Social Worker', 'Social Worker', 'World Challenge', '722739581', 32, '1259355600', '1456174800', 1456174800, '', '', '722353242', '1551-00100 Nrb', '1551-00100 Nrb', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537120', 0, 'D', 'Michael Waimiri', 'Uncle', '734500382', '', 'mwaimiri@gmail.com', 'Westlands', 32, '', '', 0, 1473109200, 1456174800, '', 0, 0, 80, 0, 90, 0, 0, 0, NULL),
(60, '2018-2019', '2015-2016', 1, 30, 'Terminated', 'Tannia Wairimu Njeru', 'Simon Njeru', '722672263', '', '', 'askaga@gmail.com', '', 'Director', '', 'Skaga Ltd', 'Grace Njeru', '', 'Both Parents', '723371539', '', '', 'askaga@gmail.com', '', 'Director', '', 'Skaga Ltd', '723371539', 36, '1278536400', '1425589200', 1425589200, '', '', '', 'P.O. BOX 14975-00800 Nrb', 'P.O. BOX 14975-00800 Nrb', 202, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308580', 0, 'D', 'Etta Ligale', 'Aunty', '722513613', '', 'etta@avenuehealthcare.com', 'Avenue Healthcare ,Parklands', 35, '', '', 0, 1425589200, 1425589200, '', 0, 0, 80, 0, 68, 0, 0, 0, NULL),
(63, '2016-2017', '2015-2016', 1, 33, 'Studying', 'Alexander David Haydter', 'David Haydter', '700881957', '203636653', '', 'dfhaydter@hotmail.com', '', '', '', 'US Embassy', 'Desislava Haydter', '', 'Both Parents', '700930436', '700930436', '', 'desislava22@yahoo.com', '', '', '', 'US Embassy', '700930436', 34, '1192309200', '1430773200', 1430686800, '', '', '', '', '', 1, 237, '', 7, 0, '233', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lucie Hall', 'Family Friend', '727214882', '', 'marialvciacasey@yahoo.com', 'Rosslyn Ridge Gigiri #36', 0, '', '', 0, 1441659600, 1430773200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(64, '2018-2019', '2012-2013', 1, 48, 'Terminated', 'Alexander Obwaya Jensen', 'Lars Jensen', '722513039', '722513039', '', 'lmikkeljensen@gmail.com', '', 'Chief of section', '', 'UN', 'Gladys Jensen', '', 'Both Parents', '727683389', '727683389', '', 'serenitygeissy@yahoo.co.uk', '', 'Businesslady', '', 'Self-Employed', '726866127', 38, '1241211600', '1321218000', 1321218000, '', '', '', 'P.O. BOX 1362- 00606', 'P.O. BOX 1362- 00606', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1530824400', '1', '2018-2019', '111', '....', '1536041880', 0, 'D', 'Sarah Kemunto', 'Grandmother', '729625056', '', '', 'P.O.BOX 60184-00200', 36, '', 'Admitted', 0, 1326142800, 1321218000, '', 0, 0, 68, 0, 52, 0, 0, 0, NULL),
(65, '2016-2017', '2014-2015', 1, 30, 'Terminated', 'Amara Gichuhi', 'Henry Gichuhi', '0700-65202', '', '', '', '', '', '', '', 'Faith Gichuhi', '', 'Both Parents', '0722-46826', '', '', '', '', '', '', '', '', 34, '1239138000', '1389646800', 1389646800, '', '', '', '', '', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483686360', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 34, '', '', 0, 1390165200, 1389646800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(66, '2018-2019', '2015-2016', 1, 32, 'Studying', 'Benjamin Kamau Kamau', 'Daniel kamau', '723333754', '0723333754', '', 'danielkamaukarega@gmail.com', '', 'Pastorial Care Services', '', 'Bonjour Publishers', 'Irene Kagwe', '', 'Both Parents', '714590018', '714590018', '', 'irenekarega@yahoo.com', '', 'Administrator', '', 'UN', '714590018', 38, '1230066000', '1437339600', 1437339600, '', '', '738757369', 'P.O.BOX 756-00621', 'P.O.BOX 756-00621', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Joseph Karega', 'Uncle', '722210889', '', '', 'Kahawa Sukari', 0, '', '', 0, 1441659600, 1437339600, '', 0, 0, 36, 0, 86, 0, 0, 0, NULL),
(68, '2018-2019', '2015-2016', 1, 33, 'Terminated', 'Ethan Njuguna  Ikere', 'Francis Ikere', '724434217', '202102503', '', 'ikerefn@gmail.com', '', 'Architect', '', 'Shelter solutions Ltd', 'Teresa Odula', '', 'Both Parents', '735765869', '', '', '', '', 'Architect', '', 'Self-Employed', '735765869', 38, '1252357200', '1416171600', 1416171600, '', '', '', 'P.O.BOX 17095-00100 Nrb', 'P.O.BOX 17095-00100 Nrb', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479740', 0, 'D', 'Dr Carolyne Odula', 'Aunty', '722780889', '', 'callieodulla@gmail.com', 'Lavington Solo Villa#4', 37, '', '', 0, 1441659600, 1416171600, '', 0, 0, 90, 0, 98, 0, 0, 0, NULL),
(69, '2016-2017', '2013-2014', 1, 47, 'Terminated', 'Ezer Lee', 'Kyung Bae Lee', '0722-52653', '', '', '', '', '', '', '', 'Young Me Lee', '', 'Both Parents', '0721-54856', '', '', '', '', '', '', '', '', 34, '1227646800', '1378155600', 1378155600, '', '', '', '', '', 1, 259, '', 8, 0, '260', '', '', '', '', '', '', '', '1483650000', '2', '2016-2017', '111', '.', '1484639160', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 34, '', '', 0, 1378155600, 1377982800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(70, '2018-2019', '2015-2016', 1, 32, 'Studying', 'Jessica Blessing van Rijn', 'Stef Van Rijn', '0711635892', '0711635892', '', 'sbvanrijn@yahoo.com', '', 'N/A', '', 'N/A', 'Bronwynne Van Rijn', '', 'Both Parents', '0711741627', '0711741627', '', 'bcvanrijn@yahoo.com', '', 'Teacher', '', 'SON', '0711741627', 38, '1234990800', '1441659600', 1441659600, '', '', '', 'P.O.BOX 248-00621 Nrb', 'P.O.BOX 248-00621 Nrb', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Margret', 'Aunty', '713176586', '', '', 'Nil', 0, '', 'Admitted', 0, 1441659600, 1441659600, '', 0, 0, 84, 0, 94, 0, 0, 0, NULL),
(71, '2016-2017', '', 0, 0, 'Deleted', 'Khloe Njuguna', 'Edward Njuguna', '0736-41981', '', '', '', '', '', '', '', 'Elizabeth Njuguna', NULL, '', '0722-67229', '', '', '', '', '', '', '', '', 34, '8-Mar-09', '', 0, '', '', '', '', '', 0, 0, '', 8, 0, NULL, '', '', '', '', '', '1478524200', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(72, '2016-2017', '2015-2016', 1, 33, 'Terminated', 'Kirsten Kamau', 'Erastus Kamau maina', '722998405', '715856931', '', 'emaina@gmail.com', '', 'Accountant', '', 'PWC', 'Margawi kamau', '', 'Both Parents', '728720518', '274000', '', 'maggieokamau@gmail.com', '', 'Banker', '', 'Barcleys Bank', '728720518', 34, '1219870800', '1441659600', 1441573200, '', '', '', 'P.O.BOX 56511-00200 Nrb', 'P.O.BOX 56511-00200 Nrb', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537120', 0, 'D', 'Esther Omollo', 'Aunt', '722246289', '', '', 'Delta Plains Mombasa Road', 34, '', '', 0, 1441659600, 1441573200, '', 0, 0, 80, 0, 88, 0, 0, 0, NULL),
(75, '2018-2019', '2013-2014', 1, 48, 'Terminated', 'Luka Njuguna Takatoh', 'Mitsuo Takatoh', '729093970', '202725120', '', 'seusyuubin@yahoo.com', '', 'Administrator', '', 'Nagasaki University', 'Susan Takatoh', '', 'Mother', '724234479', '202213975', '', 'kazehshop@gmail.com', '', 'Reporter', '', 'Asahi Shimbun JP', '724234479', 38, '1224104400', '1364418000', 1364418000, '', '', '', 'P.O.BOX 1889-00621 Nrb', 'P.O.BOX 1889-00621 Nrb', 1, 259, '', 7, 0, '125', '', '', '', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308700', 0, 'D', 'Jannet', 'Nanny', '714470909', '205203227', '', '', 36, '', 'Admitted', 0, 1364418000, 1364418000, '', 0, 0, 72, 0, 88, 0, 0, 0, NULL),
(76, '2016-2017', '2014-2015', 2, 30, 'Terminated', 'Makena Wairimu Karuingi', 'George Kabugi', '722747477', '', '', '', '', 'Businessman', '', 'Self-Employed', 'Tabitha Waruingi', '', 'Both Parents', '722365831', '4232401', '', 'twambui@gmail.com', '', 'Assistant Admin', '', 'UNHCR', '722365831', 34, '1229634000', '1409000400', 1409000400, '', '', '', 'P.O.BOX 8672-00100', 'P.O.BOX 8672-00100', 232, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537300', 0, 'D', 'Mr & Mrs Waruingi', 'Grandparents', '722888508', '722323972', '', 'Ridgeways,kigwa lane', 34, '', '', 0, 1420491600, 1409000400, '', 0, 0, 98, 0, 100, 0, 0, 0, NULL),
(77, '2017-2018', '2014-2015', 2, 30, 'Terminated', 'Maya Njoki Gichane', 'Donald Gichane', '722509709', '202186002', '', 'donald@elpisfarms.com', '', 'Businessman', '', 'Self-Employed', 'Nancy Gichane', '', 'Both Parents', '726940030', '', '', 'marura23@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '726940030', 37, '1227733200', '1411333200', 1411333200, '', '', '', 'P.O.BOX 2214-00606 Nrb', 'P.O.BOX 2214-00606 Nrb', 232, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2017-2018', '111', '.', '1504157580', 0, 'D', 'Mr & Mrs Julian Kyula', 'Uncle,Aunt', '723179316', '734783782', 'akyula@gmail.com', 'Ndege gardens#14 Karen', 34, '', '', 0, 1420491600, 1411333200, '', 0, 0, 94, 0, 100, 0, 0, 0, NULL),
(79, '2016-2017', '', 0, 0, 'Deleted', 'Ruby Njoroge', 'Elijah Njoroge', '0753-46106', '', '', '', '', '', '', '', 'Njoki Chege', NULL, '', '0722-61719', '', '', '', '', '', '', '', '', 34, '15/4/2009', '', 0, '', '', '', '', '', 0, 0, '', 8, 0, NULL, '', '', '', '', '', '1478675520', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(81, '2016-2017', '2015-2016', 1, 33, 'Terminated', 'Zuri Wangari Gitahi', 'Philip Gitahi', '736154684', '703039052', '', 'pgitahi@gmail.com', '', 'Account Manager', '', 'SAP', 'Brenda Gacheru', '', 'Both Parents', '723499416', '207623496', '', 'brenda.gacheru@unhabitat.org', '', 'Programme Assistant', '', 'UN Habitat', '723499416', 34, '1251666000', '1425848400', 1425934800, '', '', '', 'P.O.BOX 30030-00100', 'P.O.BOX 30030-00100', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537300', 0, 'D', 'Mary Wangari', 'Grandmother', '721405130', '733803762', '', 'Ngong', 34, '', '', 0, 1425934800, 1425934800, '', 0, 0, 72, 0, 88, 0, 0, 0, NULL),
(84, '2018-2019', '2015-2016', 1, 33, 'Terminated', 'Fredrick Kirumba Kanja', 'Christopher Kanja', '722761057', '722761057', '', 'kanja.evans@gmail.com', '', 'Businnessman', '', 'Self-Employed', 'Anne Kirumba', '', 'Mother', '722892060', '206967455', '', 'anne.kirumba@gmail.com', '', 'HR Practitioner', '', 'Toyota Kenya Ltd', '722892060', 38, '1257541200', '1425848400', 1425848400, '', '', '', 'P.O.BOX 4148-00506 Nrb', 'P.O.BOX 4148-00506 Nrb', 202, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308640', 0, 'D', 'Ian Kirumba', 'Uncle', '722605529', '', 'ian.kirumba@gmail.com', 'New Donholm', 36, '', 'Admitted', 0, 1441659600, 1425848400, '', 0, 0, 100, 0, 100, 0, 0, 0, NULL),
(85, '2016-2017', '2015-2016', 1, 32, 'Terminated', 'Jaykie Minerva Monono', 'N/A', '', '', '', '', '', 'N/A', '', 'N/A', 'Ruphina Monono', '', 'Mother', '706044049', '207625342', '', 'rnmbua@yahoo.com', '', 'Political Advisor', '', 'UN', '706044049', 35, '1219006800', '1404162000', 1424206800, '', '', '', 'P.O.BOX 67578 Nrb', 'P.O.BOX 67578 Nrb', 1, 237, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537360', 0, 'D', 'Wailumba Mbedza', 'Caregiver', '725152294', '', '', '46 Lobelia Drive Wispers,Gigiri Nrb', 35, '', '', 0, 1441659600, 1424206800, '', 0, 0, 52, 0, 72, 0, 0, 0, NULL),
(86, '2016-2017', '2014-2015', 2, 30, 'Terminated', 'Jessica Waithera  Njuguna', 'Timothy Kuria', '722678720', '722678720', '', 'tkuria@yahoo.com', '', 'Banker', '', 'KCB', 'Rose Njuguna', '', 'Both Parents', '725801001', '2774000', '', 'rcwanjiru@yahoo.com', '', 'Banker', '', 'Chase Bank Ltd', '725801001', 35, '1245272400', '1405371600', 1405371600, '', '', '', 'P.O.BOX 13848 Nrb', 'P.O.BOX 13848 Nrb', 227, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537420', 0, 'D', 'Musili Kivvitu', 'Uncle', '722671200', '', 'musili@easy.com', 'Kilimani Nrb', 35, '', '', 0, 1420491600, 1405371600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(88, '2017-2018', '2015-2016', 1, 32, 'Terminated', 'Kezaabu Kainembabazi', 'Paul Katarikawe', '771621039', '752685039', '', 'apuulik@yahoo.com', '', 'Businnessman', '', 'Self-Employed', 'Geraldine Kaligurwa', '', 'Both Parents', '706362883', '732192106', '', 'gkaligirwa@gmail.com', '', 'Banker/Journalist', '', 'PTA Bank', '706362883', 36, '1240520400', '1432069200', 1432155600, '', '', '', 'P.O.BOX 5076 Kampala', 'P.O.BOX 5076 Kampala', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504678020', 0, 'D', 'Margaret Kihumuro', 'Grandparent', '772670345', '733188609', 'mkihumuro@gmail.com', 'CBK apartment state hse,Crescent ,Kilimani', 35, '', '', 0, 1441659600, 1432155600, '', 0, 0, 80, 0, 92, 0, 0, 0, NULL),
(89, '2017-2018', '2015-2016', 1, 33, 'Terminated', 'Kisa Mia Amimo', 'Japheth Amimo', '733738255', '713462963', '', 'jamimo35@yahoo.com', '', 'Wellness consultant', '', 'Wellness Solutions', 'Ailsa Buckley', '', 'Both Parents', '733788313', '733788313', '', 'ailsa.buckley@swisscontact.co.ke', '', 'Contant', '', 'Swiss Contact', '733788313', 37, '1241298000', '1424034000', 1424206800, '', '', '', 'P.O.BOX 1051-00100', 'P.O.BOX 1051-00100', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1504157700', 0, 'D', 'Jackie Christie', 'Godmother', '', '736878464', '', 'Nil', 35, '', '', 0, 1441659600, 1424206800, '', 0, 0, 72, 0, 40, 0, 0, 0, NULL),
(90, '2017-2018', '2015-2016', 1, 63, 'Terminated', 'Kors Maluki Ukumu ', 'Charles Ukumu', '722768661', '722768661', '', 'ukumu2002@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Phylis Ukumu', '', 'Both Parents', '722748362', '722748362', '', 'ukumuphyllis@gmail.com', '', 'Businesslady', '', 'Self-Employed', '722748362', 36, '1246395600', '1449694800', 1449694800, '', '', '', 'P.O.BOX 24476-00100', 'P.O.BOX 24476-00100', 202, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504680180', 0, 'D', 'Tracy Mutua', 'Aunt', '723024311', 'Nil', 'Nil', 'Nairobi', 35, '', '', 0, 1452546000, 1449694800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(92, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Nathan  varghesse Cherian', 'Pulipra Cherian Varghese', '733700336', '733700336', '', 'moncy17@gmail.com', '', 'Sytem Engineer', '', 'Gestalt Gild', 'Anpu Aley Alex', '', 'Both Parents', '715757522', '715757522', '', 'anpualex@gmail.com', '', 'Nil', '', 'Nil', '715757522', 35, '1235163600', '1429218000', 1429218000, '', '', '', 'Nil', 'Nil', 1, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1500584400', '1', '2016-2017', '111', '.', '1500639360', 0, 'D', 'Judy Sara Sunil', 'Family Friend', '735270486', '', '', '', 35, '', '', 0, 1441659600, 1429218000, '', 0, 0, 54, 0, 80, 0, 0, 0, NULL),
(93, '2016-2017', '', 0, 0, 'Deleted', 'Nathaneal Beyene', 'Yoseph Beyene', '0733-50435', '', '', '', '', '', '', '', 'Elizabeth Beyene', NULL, '', '0731-97544', '', '', '', '', '', '', '', '', 35, '15/4/2009', '', 0, '', '', '', '', '', 0, 0, '', 7, 0, NULL, '', '', '', '', '', '1478523780', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(94, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Omobolanle Seni-Alabede', 'Olaseni Alabede', '719241584', '719241584', '', 'olaseni_alabede@mastercard.com', '', 'Salesman', '', 'Mastercard EA', 'Temitope Seni-Alabede', '', 'Both Parents', '', '', '', 'tiyiola@yahoo.com', '', 'Product Manager', '', 'Mastercard Labs', '719241584', 35, '1222981200', '1435006800', 1435006800, '', '', '', 'Nil', 'Nil', 1, 266, '', 8, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537420', 0, 'D', 'Anthony Karingi', 'Friend', '722796344', '', 'anthony_karingi@mastercard.com', 'Eldama Ravine Rd Tsavo block 2ND FLOOR', 35, '', '', 0, 1441659600, 1435006800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(95, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Sophie Anne Muthama', 'N/A', '', '', '', '', '', '', '', 'Nil', 'Naomi Kathule', '', 'Mother', '712848758', '719726621', '', 'naomikathule@gmail.com', '', 'Consultant', '', 'Self-Employed', '712848758', 35, '1236632400', '1424811600', 1424206800, '', '', '', 'P.O.BOX 58511-00200', 'P.O.BOX 58511-00200', 1, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1490907600', '2', '2016-2017', '111', '.', '1495522980', 0, 'D', 'Alice Mulimi', 'Aunty', '724292295', '207120906', 'ALICE.MUTHAMA@GMAIL.COM', 'Sandalewood,Riverside Olive A4', 35, '', '', 0, 1441659600, 1424206800, '', 0, 0, 76, 0, 78, 0, 0, 0, 18),
(96, '2018-2019', '2015-2016', 1, 32, 'Terminated', 'Thenjiwe Unamba-Oparah', 'Chukukere Unamba', '721999142', '721999142', '', 'kenjika@gmail.com', '', 'Consultant', '', 'Self-Employed', 'Wangui Unamba', '', 'Both Parents', '719277018', '719277081', '', 'wangui.muchiri@gmail.com', '', 'Communications', '', 'G.O.K', '719277018', 38, '1236546000', '1441746000', 1441746000, '', '', '', 'P.O.BOX 21173-0505', 'P.O.BOX 21173-0505<br />\r\n', 262, 123, '', 8, 0, '125', '', '', '', '', '', '', '', '1530824400', '2', '2017-2018', '111', '...', '1536654960', 0, 'D', 'Joe Muchiri', 'Uncle', '722702007', '', 'JOE.MUCHIRI@GMAIL.COM', 'Menelik Flats,Kilimani', 37, '', '', 0, 1441832400, 1441746000, '', 0, 0, 98, 0, 86, 0, 0, 0, NULL),
(98, '2017-2018', '2015-2016', 1, 33, 'Terminated', 'Willem Claessen', 'Ombati Claessen', '0722-20414', '', '', '', '', '', '', '', 'Jane Claessen', '', 'Both Parents', '0722-52635', '', '', '', '', '', '', '', '', 37, '1215982800', '1409605200', 1424638800, '', '', '', '', '', 232, 123, '', 7, 0, '125', '', '', '', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1504157400', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 35, '', '', 0, 1441659600, 1424638800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(104, '2016-2017', '2016-2017', 1, 33, 'Terminated', 'Alexander Hallengren', 'David Hallengren', '722512349', '721586394', '', 'dhallengren@usaid.gov', 'n/a', 'US Diplomat', 'US Diplomat', 'USAID/US Embassy', 'Charlotte Hallengren', 'Charlotte Hallengren', '', '704880282', '723571193', '', 'c.hallengren@gmail.com', 'n/a', 'Retired Army Officer', 'Retired Amy Officer', 'American Army', '704880282', 33, '1200862800', '1471813200', -10800, '1475307600', '', '722512349', '1306 Eagle Park St Runda', '1306 Eagle Park St Runda', 202, 237, '', 7, 0, '125', 'masteruser', '599685', '62888183', '', '', '', '', '1490907600', '2', '2016-2017', '111', '.', '1496911620', 0, 'D', 'Guia Manginsay', 'House keeper', '704873994', '721352438', '', '1306 Eagle Park St Runda', 33, '', '', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, 8),
(109, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Aliza Amin jiwa', 'Amin Jiwa', '722585060', '', '', 'amjiwa@gmail.com', '', 'Businessman', '', 'N/A', 'Shamsah Jiwa', '', 'Mother', '723410219', '', '', 'jiwashama@gmail.com', '', 'N/A', '', 'N/A', '723410219', 37, '1225141200', '1473109200', 1421010000, '1475309400', '', '722585060', ' 6/A Karizma court 2nd Parklands', ' 6/A Karizma court 2nd Parklands', 202, 123, '', 8, 0, '125', 'masteruser', '630804', '27734680', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Salim Sorathia', 'Uncle', '734950600', '', 'shamirasalim@gmail.com', 'houseof manji villas,', 0, '', 'Admitted', 0, -10800, -10800, '', 0, 0, 88, 0, 96, 0, 0, 0, NULL),
(110, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Arjun Chudasama ', 'Jay Chudasama', '0730016145', '0730016145', '', 'jaychudasama782@gmail.com', '', 'Chief Finance Officer', '', 'Zuku', 'Neha Chudasama	', '', 'Both Parents', '0732012751', '0732012751', '', 'nehachudasama2071@gmail.com', '', 'N/A', '', 'N/A', '0732012751', 37, '1258664400', '1473109200', 1473109200, '1475309700', '', '0730016145', '', '', 1, 226, '', 7, 0, '125', 'masteruser', '354882', '46394958', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Nidhee Datt', 'Friend', '0788171878', '', '', '', 0, '', 'Admitted', 0, -10800, -10800, '', 0, 0, 60, 0, 60, 0, 0, 0, NULL),
(113, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Gurdit Singh Rupra', 'Amritpal Rupra	', '733590584', '733590584', '', 'amro_rupra@hotmail.com', '', 'Businessman', '', 'Self-employed', 'Sundeep Kaur	', '', 'Both Parents', '734545680', '734545680', '', 'sandip_hunjan@hotmail.com', '', 'Sales Admin Manager', '', 'Toyota Kenya Limited', '734545680', 37, '1272834000', '1454965200', 1457643600, '1475310060', '', '733590584', '33192-00600 Nrb', '33192-00600 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '556509', '68370361', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Paramjit Kaur Rupra', 'Grandmother', '733387679', '', 'Nil', '4th Parklands Avenue.Parklands', 0, '', 'Admitted', 0, -10800, -10800, '', 0, 0, 88, 0, 74, 0, 0, 0, NULL),
(115, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Jayson Malinga', 'Kevin Malinga	', '723919403', '', '', 'kmalinga2005@gmail.com', '', 'Businessman', 'Businessman', 'Self-employed', 'Keziah Malinga	', '', 'Both Parents', '722298036', '', '', 'ghazikeziah2@gmail.com', '', 'Businesslady', 'Businesslady', 'Self-employed', '722298036', 34, '1266872400', '1455829200', 1457643600, '1475310240', '', '', '12678-00400 ', '12678-00400 ', 232, 123, '', 7, 0, '126', 'masteruser', '981103', '14974060', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479860', 0, 'D', 'Farida Ghazi', 'Aunt', '723272466', '', 'fahzi@yahoo.com', 'South C', 34, '', 'Admitted\r\n', 0, -10800, -10800, '', 0, 0, 52, 0, 62, 0, 0, 0, NULL),
(116, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'David Mburu Githere ', 'James Mburu			', '720729535', '', '', 'githere.james@gmail.com', 'Shelter Investments Limited', 'Operations Manager', 'Operations Manager', 'Shelter Investments Limited', 'Yvonne Nduku', '', 'Both Parents', '723951722', '', '', 'ykimeu@gmail.com', '', 'Director', 'Director', 'Angels at Home', '723951722', 34, '1255381200', '1456088400', 1457643600, '1475310360', '', '720729535', '56839-00200 Nrb', '56839-00200 Nrb', 228, 123, '', 7, 0, '125', 'masteruser', '992337', '29291992', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479920', 0, 'D', 'Cathrine Githere', 'Grandmother', '722523134', '', '', 'Ridgeways Estate,Nairobi', 34, '', 'Amittted', 0, 1454274000, -10800, '', 0, 0, 96, 0, 96, 0, 0, 0, NULL),
(117, '2016-2017', '2016-2017', 1, 33, 'Terminated', 'Njeri  Wanjiku Maina', 'Maina Kigundu		', '722875474', '', '', 'mkigundu@gmail.com', '', 'Banker', '', 'Barclays Bank', 'Ruth Kamunyu', '', '', '721212031', '', '', 'ruth.kamunyu@ke.nestle.com', '', 'Accountant', '', 'NESTLE EAR lTD', '721212031', 33, '1288040400', '1473282000', -10800, '1475310420', '', '722875474', '<br />\r\n28979-00200 Nrb', '28979-00200 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '648849', '48973999', '', '', '', '', '1499634000', '3', '2016-2017', '111', '.', '1499668020', 0, 'D', 'Ruth Kigundu', 'Grandmother', '0722720636/073492233', '', '', '29 Grevillea Grove,Westlands', 33, '', '', 0, -10800, -10800, '', 0, 0, 60, 0, 82, 0, 0, 0, NULL),
(127, '2016-2017', '2016-2017', 1, 33, 'Terminated', 'Wangui Kangai Mwihia', 'David Mwihia		', '702200158', '', '', 'davidmwihia@yahoo.com', '', 'Banker', 'Banker', 'Citibank', 'Kananu Mithika', '', '', '702200165', '', '', 'kananumithika@yahoo.com', '', 'Accountant', 'Accountant', 'Bamburi Cement', '702200165', 33, '1272402000', '1390856400', 0, '1475315040', '202711221', '702200158', '40847-00100 Nrb', '40847-00100 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '511355', '37004394', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500536340', 0, 'D', 'Kathleen Mwihia', 'Grandmother', '717485333', '', '', 'Muiri Rd,Karen No 6', 33, '', '', 0, 0, 0, '', 0, 0, 88, 0, 100, 0, 0, 0, NULL),
(128, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Wendy  Wanjiru Mungai', 'Geoffrey Mungai	', '722410932', '', '', '', '', 'Businessman', 'Businessman', 'Self-employed', 'Irene Mungai	', '', '', '722811181', '', '', 'wairimu.mungai@yahoo.com', '', 'Businesslady', 'Businesslady', 'Self-employed', '722811181', 34, '1277413200', '1456606800', -10800, '1475315160', '', '722410932', '70707-00400 Nrb', '70707-00400 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '839544', '77261047', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504702140', 0, 'D', 'N/A', 'N/A', 'N/A', '', 'N/A', 'N/A', 33, '', '', 0, -10800, -10800, '', 0, 0, 92, 0, 76, 0, 0, 0, NULL),
(129, '2016-2017', '', 0, 0, 'Deleted', 'Kukuwa Owusu-Biney.', 'Alex Owusu Biney	', '', '', '', '', '', '', '', '', 'Jackie Owusu Biney	', '', '', '', '', '', '', '', '', '', '', '736965198', 32, '', '1473109200', 0, '1475318100', '', '', '', '', 1, 1, '', 8, 0, '', 'masteruser', '933999', '22271728', '', '', '1477906560', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(130, '2016-2017', '', 0, 0, 'Deleted', 'Abeiku Owusu-Biney', 'Alex Owusu Biney	', '', '', '', '', '', '', '', '', 'Jackie Owusu Biney	', '', '', '', '', '', '', '', '', '', '', '0736-96519', 33, '', '1473109200', 0, '1475318400', '', '', '', '', 1, 1, '', 7, 0, '', 'masteruser', '433297', '82526245', '', '', '1477905780', 'masteruser', '1476997200', '1', '', '113', '.', '1477036500', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(132, '2018-2019', '2016-2017', 1, 32, 'Studying', 'Kukuwa Nhyira Owusu-Biney', 'Alex Owusu Biney	', '734357967', '734357967', '', 'bineya@gmail.com', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu Biney	', '', 'Both Parents', '736965198', '0736965198	', '', 'owusubineyj@gmail.com', '', 'Bussinesslady', '', 'Self-Empoyed', '736965198', 37, '1322082000', '1456174800', 1456174800, '1476191460', '', '734357967', '47074-00100 Unep', '47074-00100 Unep', 1, 249, '', 8, 0, '257', 'masteruser', '200360', '17121887', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Giffy Nafrrah', 'Aunt', '712082711', '', '', 'N/A', 0, '', '', 0, 1473109200, 1454274000, '', 0, 0, 68, 0, 88, 0, 0, 0, NULL),
(133, '2017-2018', '2016-2017', 1, 32, 'Terminated', 'Mohammad Owais Imran', 'Imran Rehman', '', '', '', '', '', 'Bussinessman', 'Bussinessman', 'Self-Employed', 'Noreen Khalid', '', 'Mother', '795901308', '795901308', '', 'miraimran@yahoo.com', '', 'Bussinesslady', 'Bussinesslady', 'Self-Employed', '795901308', 35, '1253653200', '1472677200', 1472677200, '1476193740', '', '705805313', '', '', 232, 252, '', 7, 0, '125', 'masteruser', '538134', '40989685', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1537430460', 0, 'D', 'Shezmin Gilani', 'Aunt', '721229092', '', 'shezgilani@gmail.com', 'Chandni Court Hse no 9', 35, '', '', 0, 1473109200, 1472677200, '', 0, 0, 50, 0, 90, 0, 0, 0, NULL),
(134, '2016-2017', '2011-2012', 1, 33, 'Terminated', 'Ayden Nduya  Muthama-Ojwang', 'James Ojwang', '726366206', '726366206', '', '', '', 'Businessman', '', 'Self-Employed', 'Naomi Muthama', '', 'Mother', '735546554', '735546554', '', 'naomimuthama@yahoo.co.ke', '', 'Businesslady', '', 'Self-Employed', '735546554', 40, '1107982800', '1300050000', 1300050000, '1476248460', '', '', 'P.O.BOX 58511-00200', 'P.O.BOX 58511-00200', 1, 123, '', 7, 0, '125', 'masteruser', '447442', '91092834', '', '', '', '', '1490907600', '2', '2016-2017', '111', '.', '1495523040', 0, 'D', 'Alice Muthama', 'Aunt', '724292291', '7120365', '', 'Redhill Rd Gigiri Nairobi #58', 40, '', '', 0, 1315256400, 1300050000, '', 0, 0, 60, 0, 30, 0, 0, 0, 18),
(135, '2017-2018', '2014-2015', 1, 38, 'Terminated', 'Claire Weru', 'Stephen Weru', '', '202215088', '', 'stevemuthuma@gmail.com', '', 'Economist', '', 'Hashi Energy', 'Judy Weru', '', 'Both Parents', '722396565', '723396565', '', 'jhuihu2003@yahoo.com', '', 'Event Organizer', '', 'Self', '722396565', 41, '1115326800', '1403211600', 1403211600, '1476248940', '', '', 'P.O.BOX 13555-00800', 'P.O.BOX 13555-00800', 1, 123, '', 8, 0, '125', 'masteruser', '881594', '35795898', '', '', '', '', '1515358800', '2', '2017-2018', '111', 'Claire is a polite and hardworking student. She is well groomed and has great respect for teachers and fellow students. She has enthusiastically been participating in class activities like Bible study, PSHE and Morning Devotions. She was very active in Chapel presentation for year 8 class. She has strong leadership skills and is very eloquent. Her social skills are excellent.', '1515393660', 0, 'D', 'Catherine Hiuhu', 'Aunt', '722399780', '', 'cathyhiuhu@hotmail.com', 'Golf Course  Estate Hse No 133', 41, '', 'Admitted', 0, 1410210000, 1403211600, '', 0, 0, 40, 70, 58, 0, 0, 0, NULL),
(136, '2018-2019', '2011-2012', 1, 33, 'Studying', 'Gabriel Ireri Kanjama', 'Gilbert Kanjama', '722510516', '0722510516', '', 'spsoft@africaonline.co.ke', '', 'System Consultant', '', 'Nil', 'Wangeci Kanjama', '', 'Both Parents', '722540553', '0722540553', '', 'wkanjama@gmail.com', '', 'Accountant', '', 'Nil', '722540553', 42, '1136322000', '1300050000', 1300050000, '1476249000', '', '', 'Nil', 'Nil', 1, 123, '', 7, 0, '125', 'masteruser', '720919', '11884155', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Kingori Gathinji', 'Uncle', '720720504', '', 'Nil', 'Nil', 0, '', '', 0, 1315256400, 1300050000, '', 0, 0, 64, 0, 79, 0, 0, 0, NULL),
(137, '2016-2017', '2013-2014', 3, 36, 'Terminated', 'Isaac Nguri Mugweru', 'Benson Mugweru', '722581314', '708962167', '', 'bnmugweru@gmail.com', '', 'Businessman', '', 'Self-Employed', 'Elizabeth Njagi', '', 'Both Parents', '718788789', '714226868', '', 'elizmugweru@gmail.com', '', 'Businesslady', '', 'Self-Employed', '718788789', 40, '1094850000', '1398114000', 1398114000, '1476249000', '', '', 'P.O.BOX 6621-00100', 'P.O.BOX 6621-00100', 202, 123, '', 7, 0, '125', 'masteruser', '660467', '40456848', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500375240', 0, 'D', 'Catherine Nguri', 'Aunt', '722846665', '', 'cnwnguri@gmail.com ', 'Muranga Rd Kahawa Sukari Estate', 40, '', '', 0, 1398718800, 1361480400, '', 0, 0, 47, 0, 48, 0, 0, 0, NULL),
(138, '2018-2019', '2011-2012', 3, 33, 'Studying', 'John Mburu', '-', '', '', '', '', '', '', '', '', 'Lucy Mburu', '', 'Mother', '0722134465', '0722134465', '', 'lu8554844@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '0722134465', 42, '1101416400', '1335214800', 1335214800, '1476249060', '', '', 'P.O.BOX 43845-00100 NAIROBI', 'P.O.BOX 43845-00100 NAIROBI', 1, 237, '', 7, 0, '125', 'masteruser', '579113', '24565124', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Peter Chege', 'Uncle', '0722760336', '', '', '', 0, '', 'Admitted', 0, 1335214800, 1335214800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(139, '2016-2017', '2012-2013', 1, 34, 'Terminated', 'Mose Moses Chung', 'WonJoong Chung', '735766879', 'Nil', '', 'voiceke@gmail.com', '', 'Sales/Missionary', '', 'LG Electronics', 'Lydia Chung ', '', 'Both Parents', '737104655', 'Nil', '', 'lydiake7@gmail.com', '', 'Missionary', '', 'Nil', '737104655', 40, '1101330000', '1357506000', 1357506000, '1476249060', '', '', 'P.O.BOX 505-00606 Nairobi', 'P.O.BOX 505-00606 Nairobi', 1, 259, '', 7, 0, '260', 'masteruser', '112634', '32497253', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653640', 0, 'D', 'Paulin Kim', 'Mission Co-Worker', '725404279', '', 'Nil', 'Mamlaka Rd', 40, '', '', 0, 1357592400, 1357506000, '', 0, 0, 79, 0, 88, 0, 0, 0, NULL),
(140, '2018-2019', '2016-2017', 1, 40, 'Studying', 'Nissi Faith Keza', 'Adalbert Rutaisire', '0770019097', '0795741644', '', 'adalbert.rutaisire@sc.com', '', 'Banker', '', 'Standard Chartered Bank', 'Chantal Rutaisire', '', 'Both Parents', '0795121247', '795121247', '', 'chantalhaba@yahoo.com', '', 'N/A', '', 'N/A', '0795121247', 42, '1137099600', '1469653200', 1469739600, '1476249120', '', '', 'P.O.BOX3003 Nairobi', 'P.O.BOX3003 Nairobi', 1, 258, '', 8, 0, '125', 'masteruser', '696914', '74588623', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Clara Kenyana', 'Family Friend', '0771870552', '', '', '', 0, '', 'No assessment test issued.', 0, 1473109200, 1469653200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(141, '2016-2017', '2010-2011', 1, 30, 'Terminated', 'Paa Kow Danquah Owusu-Biney', 'Alex Owusu-Biney', '734357967', '734357967', '', 'alex.owusu-biney@unep.org', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu-Biney', '', 'Both Parents', '736965198', '736965198', '', 'jasiagodo@yahoo.com', '', 'Training Specialist', '', '', '736965198', 40, '1120683600', '1277326800', 1245790800, '1476249120', '', '', 'P.O.BOX 47074-00100', 'P.O.BOX 47074-00100', 1, 249, '', 7, 0, '257', 'masteruser', '446343', '40621643', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653520', 0, 'D', 'Nana Oye Nettey', 'Family Friend', '733723933', '', 'nanaoye57@yahoo.com', 'Brookside Groove #5', 40, '', '', 0, 1283806800, 1277326800, '', 0, 0, 80, 0, 100, 0, 0, 0, NULL),
(142, '2018-2019', '2011-2012', 1, 33, 'Terminated', 'Ray Steve Muchiri', 'Kevin Muchiri', '717295952', '722257907', '', 'kevin@autohousegroup.com', '', 'Businessman', '', 'Self-Employed', 'Millicent Kihika', '', 'Both Parents', '701533653', '701533653', '', 'mkare2009@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '701533653', 42, '1097528400', '1300222800', 1300222800, '1476249180', '', '', 'P.O.BOX 70337 Nairobi', 'P.O.BOX 70337 Nairobi', 1, 237, '', 7, 0, '125', 'masteruser', '398251', '29495239', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1537425660', 0, 'D', 'Millicent Kihika', 'Mother', '722257907', '', 'mkare2009@yahoo.com', 'Brookside westlands', 38, '', '', 0, 1315256400, 1300222800, '', 0, 0, 0, 0, 30, 0, 0, 0, NULL),
(143, '2016-2017', '2011-2012', 1, 33, 'Terminated', 'Shani  Danielle Wairimu Mungai  ', '-', '', '', '', '', '', '', '', '', 'Patricia Wanjiru', '', 'Mother', '732442230', '728442230', '', 'p.w.mungai@gmail.com', '', 'Businesslady', '', 'Self-Employed', '728442230', 40, '1111525200', '1304629200', 1304629200, '1476249240', '', '', 'P.O.BOX 66035 00800', 'P.O.BOX 66035 00800', 228, 123, '', 8, 0, '125', 'masteruser', '989892', '58743591', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537840', 0, 'D', 'Juliet Githere', 'Aunt', '701017031', '', 'julietwathiga@yahoo.com', '', 40, '', '', 0, 1315256400, 1304197200, '', 0, 0, 30, 0, 20, 0, 0, 0, NULL),
(144, '2016-2017', '2015-2016', 1, 40, 'Terminated', 'Caelan Steven Mutuma', 'Stephen Mwiti (Grandpa)', '715403203', '0715403203	', '', '', '', '', '', '', 'Margaret Mwiti (Grandma)', '', 'Grand parents', '724798161', '724798161', '', '', '', '', '', '', '724798161', 41, '1069016400', '1430341200', 1430341200, '1476249660', '', '', '', '', 232, 123, '', 7, 0, '125', 'masteruser', '735476', '73127441', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537900', 0, 'D', 'Mildred Mwiti', 'Aunt', '', '', 'makenamwiti2gmail.com', 'Nil', 41, '', '', 0, 1441659600, 1430341200, '', 0, 0, 0, 0, 65, 66, 0, 0, NULL),
(145, '2017-2018', '2010-2011', 1, 33, 'Terminated', 'Harrison Tuja Kionga', 'Jack Kionga', '722798357', '', '', '', '', '', '', '', 'Joy Tuja Kionga', '', 'Both Parents', '720970810', '', '', '', '', '', '', '', '720970810', 42, '1056056400', '1242853200', 1283720400, '1476249720', '', '', '1678-000606', '1678-000606', 1, 123, '', 7, 0, '125', 'masteruser', '178497', '29745178', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535478960', 0, 'D', 'Irene Mwakesi', 'Aunt', '733367420', '722367420', 'irene.mwakesi@unon.org', 'Balozi Estate/UN Gigiri', 42, '', 'Admitted', 0, 1283806800, 1283720400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(146, '2016-2017', '2012-2013', 1, 36, 'Terminated', 'Jabali Waita', 'Nzuki Waita', '', '', '', '', '', '', '', '', 'Wariko Waita', '', 'Both Parents', '', '', '', '', '', '', '', '', '0700-18620', 41, '1070830800', '1342040400', 1342040400, '1476249720', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '321868', '91235656', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537900', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 41, '', '', 0, 1346706000, 1342040400, '', 0, 0, 79, 0, 62, 0, 0, 0, NULL),
(147, '2017-2018', '2016-2017', 1, 41, 'Terminated', 'Jayden Mugo Chege', 'peter mugo', '', '', '', '', '', '', '', '', 'winnie chege', '', 'Both Parents', '', '', '', '', '', '', '', '', '0722-83313', 42, '1077483600', '1472590800', 1451595600, '1476249780', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '116012', '50446166', '', '', '', '', '1505422800', '3', '2016-2017', '111', '.', '1506087360', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, '', '', 0, 1473109200, 1472590800, '', 0, 0, 75, 81, 52, 58, 48, 70, 5),
(148, '2017-2018', '2010-2011', 3, 33, 'Terminated', 'Jeremy Nathan Mwogeza', 'Chris Mwogeza', '', '', '', 'perezomenye@yahoo.com', '', '', '', '', 'Ann Perez Omenye', '', 'Mother', '', '', '', '', '', '', '', '', '0714-90880', 42, '1069707600', '1303938000', 1303938000, '1476249840', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '913757', '80090026', '', '', '', '', '1512680400', '1', '2017-2018', '111', 'Transferred', '1528290000', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, '', 'Admitted', 0, 1303938000, 1303851600, '', 0, 0, 70, 0, 80, 0, 0, 0, 18),
(149, '2017-2018', '2014-2015', 3, 39, 'Terminated', 'Jude Justin Ateka', 'Nathan Ateka', '0705531711', '', '', 'goodhopemission@gmail.com', '', 'Pastor', '', 'Good Hope Missionery', 'Elaine Ateka', '', 'Both Parents', ' 713707733', '', '', 'goodhopemission@gmail.com', '', 'Missionery', '', 'Good Hope Missionery', '0705531711', 42, '1085432400', '1426021200', 1426021200, '1476249840', '', '', 'Nil', 'Nil', 232, 123, '', 7, 0, '125', 'masteruser', '878491', '52964782', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535478960', 0, 'D', 'Cindy wanjau', 'Family Friend', '722828169', '', 'cindysinyu@yahoo.com', 'Mountain View Hse 203', 42, '', 'Admitted', 0, 1428354000, 1426021200, '', 0, 0, 53, 56, 56, 0, 0, 0, NULL),
(150, '2016-2017', '2015-2016', 1, 40, 'Terminated', 'Kyle Njenga Mwangi', 'Kenneth Mwangi', '711199133', '', '', '', '', '', '', '', 'Anne Mwangi', '', 'Both Parents', '726893000', '', '', '', '', '', '', '', '726893000', 41, '1054155600', '1442178000', 1441746000, '1476251160', '', '', 'P.O.BOX 75454-00200', 'P.O.BOX 75454-00200', 1, 123, '', 7, 0, '125', 'masteruser', '519155', '62349853', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537960', 0, 'D', 'Michael  Njuguna', 'Uncle', '716032201', '', 'mike@next.co.ke', 'Kiambu', 41, '', '', 0, 1442178000, 1441746000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(151, '2017-2018', '2009-2010', 1, 33, 'Terminated', 'Munene Mugera', 'Patrick Mugera', '', '', '', '', '', '', '', '', 'Faith Mugera', '', 'Both Parents', '', '', '', '', '', '', '', '', '0724-95492', 42, '1065646800', '1245877200', 1277413200, '1476251160', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '371417', '54486389', '', '', '', '', '1530824400', '3', '2017-2018', '111', '..', '1535477880', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, '', 'Admitted', 0, 1283806800, 1245877200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(152, '2016-2017', '2012-2013', 1, 36, 'Terminated', 'Mart', 'Nzuki Waita', '', '', '', '', '', '', '', '', 'Wariko Waita', '', 'Both Parents', '', '', '', '', '', '', '', '', '0700-18620', 41, '1070830800', '1342040400', 1342040400, '1476251220', '', '', '', '', 1, 123, '', 8, 0, '125', 'masteruser', '210083', '18291931', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537960', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 41, '', '', 0, 1346706000, 1342040400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(153, '2017-2018', '2015-2016', 3, 40, 'Terminated', 'Thuita Kiiru', 'Thuita Kiiru', '722888870', '711291111', '', 'thuita@kiiruadvocates.com', '', 'Advocate', '', 'Self', 'Lucy Kimuhu', '', 'Both Parents', '722621215', '722621215', '', 'lkimuhu@usaid.gov', '', 'Programme Assistant', '', 'USAID', '722621215', 42, '1073768400', '1461618000', 1461618000, '1476251400', '', '', '58854-00200', '58854-00200', 1, 123, '', 7, 0, '125', 'masteruser', '971078', '83174438', '', '', '', '', '1504645200', '1', '2016-2017', '111', '.', '1504702140', 0, 'D', 'Tannia Kimuhu', 'Aunt', '721916272', '', '', 'Nil', 41, '', '', 0, 1462222800, 1461618000, '', 0, 0, 73, 44, 0, 0, 0, 0, NULL),
(156, '2016-2017', '2009-2010', 1, 33, 'Terminated', 'Aalfrizah Tuiya Choge', '-', '', '', '', '', '', '', '', '', 'Noreen Sharrif', '', 'Mother', '', '', '', '', '', '', '', '', '0702-29994', 42, '1045688400', '1252357200', 1252357200, '1476251880', '', '', '', '', 1, 123, '', 8, 0, '125', 'masteruser', '437225', '80710754', '', '', '', '', '1481144400', '1', '2014-2015', '111', '.', '1483687260', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, '', '', 0, 1252357200, 1252357200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(157, '2016-2017', '2009-2010', 1, 33, 'Terminated', 'Jason Kyumba', 'Martin Kyumba', '720053376', '445294718', '', 'mk@ici.co.ke', '', 'Architect', '', 'Inform Creative Interioirs', 'Diana Tumaini', '', 'Father', '780002877', '', '', '', '', '', '', '', '720053376', 42, '1031778000', '1246309200', 1246309200, '1476251940', '', '', 'P.O.BOX 13707-00800', 'P.O.BOX 13707-00800', 1, 123, '', 7, 0, '125', 'masteruser', '192834', '26894226', '', '', '', '', '1499979600', '3', '2016-2017', '111', '.', '1500019920', 0, 'D', 'Albonus Nzomo', 'Uncle', '722712182', '711558810', '', 'South B', 42, '', '', 0, 1252357200, 1246309200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(158, '2016-2017', '2016-2017', 1, 42, 'Terminated', 'Johan Daoud Beguy', 'Donatien Beguy', '710747450', '0710747450	', '', 'beguyd@gmail.com', '', 'Researcher', '', 'APHRC', 'Carol Mukiira', '', 'Both Parents', '722813862', '722813862', '', 'ckmukiira@gmail.com', '', 'Businesslady', '', 'DATA FINTECH', '722813862', 42, '1029272400', '1465506000', 1465506000, '1476251940', '', '735706688', 'P.O.BOX 19871-00202', 'P.O.BOX 10787-00100', 1, 256, '', 7, 0, '236', 'masteruser', '910324', '91117553', '', '', '', '', '1500843600', '3', '2016-2017', '111', '.', '1500882600', 0, 'D', 'Diana Mukiira', 'Aunt', '722421759', '722421759', 'dmukiira@gmail.com', 'Nil', 42, '', '', 0, 1473109200, 1465506000, '', 0, 0, 20, 25, 35, 0, 0, 0, NULL),
(159, '2016-2017', '2015-2016', 1, 41, 'Terminated', 'Kevin Chege Mwangi', 'Kenneth Mwangi', '711199133', '', '', '', '', '', '', '', 'Anne Mwangi', '', 'Both Parents', '726893000', '', '', '', '', '', '', '', '726893000', 42, '1039554000', '1442178000', 1441746000, '1476252000', '', '712537374', 'P.O.BOX 75454-00200', 'P.O.BOX 75454-00200', 1, 123, '', 7, 0, '125', 'masteruser', '559365', '91595458', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500538020', 0, 'D', 'Michael  Njuguna', 'Uncle', '716032201', '725772288', '', 'Kiambu', 42, '', '', 0, 1442178000, 1441746000, '', 0, 0, 40, 0, 70, 0, 0, 0, NULL),
(160, '2017-2018', '2010-2011', 1, 33, 'Terminated', 'Muriithi Menja  Gethi', 'John Gethi', '733526888', '733526888', '', 'gethijohn@gmail.com', '', 'General Manager', '', 'Brookside Dairy Limited', 'Violet Gethi', '', 'Both Parents', '722526888', '722526888', '', 'vgethi@gmail.com', '', 'PR Consultant', '', 'Self', '722526888', 42, '969397200', '1283720400', 1283806800, '1476252060', '', '', 'P.O.BOX 42599', 'P.O.BOX 42599', 228, 123, '', 7, 0, '125', 'masteruser', '988244', '28036804', '', '', '', '', '1512680400', '1', '2017-2018', '111', 'Transferred to another school.', '1512711600', 0, 'D', 'Wambui Wainaina', 'Aunt', '729809289', '', 'wambui.wainaina@gmail.com', 'IBM KILIMANI', 42, '', '', 0, 1283720400, 1283720400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(161, '2016-2017', '2010-2011', 1, 34, 'Terminated', 'Nana Kobina Owusu-Biney', 'Alex Owusu-Biney', '734357967', '7624066', '', 'alex.owusu-biney@unep.org', '', 'Boichemist', '', 'UNEP', 'Jackie Owusu-Biney', '', 'Both Parents', '736965198', '4443638', '', 'jasiagodo@yahoo.com', '', 'Training Specialist', '', 'Self', '736965198', 42, '1060030800', '1277326800', 1245790800, '1476252060', '', '', 'P.O.BOX 47074-00100', 'P.O.BOX 47074-00100', 1, 249, '', 7, 0, '257', 'masteruser', '538684', '21225280', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500538080', 0, 'D', 'Nana Oye Nettey', 'Family Friend', '733723933', '4443592', 'nanaoye57@yahoo.com', 'Brookside Groove', 42, '', '', 0, 1252357200, 1277326800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(162, '2016-2017', '2014-2015', 2, 40, 'Terminated', 'Steven Gakinya Kiragu', '-', '', '', '', '', '', '', '', '', 'Lydia Muthoni', '', 'Mother', '722613701', '20250089', '', 'lwahome@yahoo.com', '', 'Businesslady', '', 'Transchem Pharmaceutical Limited', '722613701', 42, '1040072400', '1422306000', 1422306000, '1476252120', '', '', 'P.O.BOX 8545-00300', 'P.O.BOX 8545-00300', 1, 123, '', 7, 0, '125', 'masteruser', '701226', '49938049', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653820', 0, 'D', 'Richard Thuku', 'Uncle', '705346828', 'Nil', 'Nil', 'Nil', 42, '', '', 0, 1422306000, 1422219600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(164, '2016-2017', '2014-2015', 1, 41, 'Terminated', 'Debra Weru', 'Stephen Weru', '', '', '', '', '', '', '', '', 'Judy Weru', '', 'Both Parents', '', '', '', '', '', '', '', '', '0722-39656', 43, '1016226000', '1403211600', 1403211600, '1476252840', '', '', '', '', 1, 123, '', 8, 0, '125', 'masteruser', '317749', '14468688', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483685940', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 43, '', '', 0, 1410210000, 1403211600, '', 0, 0, 33, 26, 71, 72, 16, 0, NULL),
(165, '2016-2017', '2008-2009', 3, 33, 'Terminated', 'Ethan Nganga', 'N/A', '', '', '', '', '', '', '', '', 'Lucy Mburu', '', 'Mother', '', '', '', '', '', '', '', '', ' 0738-1293', 43, '1016139600', '1232658000', 1232658000, '1476252840', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '752587', '46966247', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483686300', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 43, '', '', 0, 1241470800, 1232658000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(166, '2016-2017', '2009-2010', 1, 33, 'Terminated', 'John Kagwe Kamau', 'Daniel Kamau Karega', '', '', '', '', '', '', '', '', 'Irene Kagwe Karega', '', 'Both Parents', '', '', '', '', '', '', '', '', '0722-73824', 43, '1011128400', '1232485200', 1232485200, '1476252900', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '959295', '88620910', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483686300', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 43, '', '', 0, 1252357200, 1232485200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(167, '2016-2017', '2013-2014', 3, 33, 'Terminated', 'Rowan Miller', 'Cecil Miller', '', '', '', '', '', '', 'N/A', 'N/A', 'Mary Mwangi', '', '', '722580835', '', '', 'mwamary@gmail.com', '', 'Consultant', 'Consultant', 'Self-Empoyed', '722580835', 43, '987022800', '1473109200', 0, '1476252900', '', '', '34047-00100', '34047-00100', 232, 123, '', 7, 0, '125', 'masteruser', '456066', '41791687', '', '', '', '', '1478206800', '1', '2016-2017', '111', '.', '1478509500', 0, 'D', '', '', '', '', '', '', 43, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(168, '2016-2017', '2007-2008', 1, 33, 'Terminated', 'Aaliyah Choge', '-', '', '', '', '', '', '', '', '', 'Noreen Sharrif', '', 'Mother', '702299946', '0702-299946', '', 'noreen@subarukenya.com', '', 'Manager Sales', '', 'Subaru Kenya', '702299946', 44, '977086800', '1201640400', 1201640400, '1476252960', '', '', '', '', 228, 123, '', 8, 0, '125', 'masteruser', '604876', '24614562', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838340', 0, 'D', 'Shabina/Nasia', 'Aunt', '0733927269,', '733927322', '', '', 44, '', '', 0, 1201640400, 1201640400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(169, '2016-2017', '2011-2012', 2, 39, 'Terminated', 'Aba Waturi', 'N/A', '', 'Nil', '', '', '', 'Nil', '', '', 'Anne Gitau', '', 'Mother', '722721005', '724253333', '', 'gitau_aw@yahoo.co.uk', '', 'Manager Sales', '', 'Ensvalley Bakery Ltd', '722721005', 44, '982875600', '1326056400', 1326056400, '1476253020', '', '724943116', 'BOX 529-00606 NAIROBI', 'BOX 529-00606 NAIROBI', 228, 123, '', 8, 0, '125', 'masteruser', '126422', '49410705', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838280', 0, 'D', 'Nyawira Gitau', 'Aunt', '724200001', '', 'ngitau@hotmail.com', 'Lavington,Mbaazi Avenue Apt C5', 44, '', '', 0, 1326056400, 1326056400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(170, '2016-2017', '2008-2009', 2, 34, 'Terminated', 'Daniel Karega ', 'Daniel Kamau Karega', '723333754', '723333754', '', 'kkarega@yahoo.com', '', 'Pastorial/Spiritual Care', '', 'Self-Employed', 'Irene Kagwe Karega', '', 'Both Parents', '722738243', '207623953', '', 'irenekarega@yahoo.com', '', 'Unicef Somalia', '', 'Unicef Somalia', '722738243', 44, '971902800', '1232485200', 1232917200, '1476253020', '', '738757369', 'P.O.BOX 756-00621 ', 'P.O.BOX 756-00621 ', 1, 123, '', 7, 0, '125', 'masteruser', '196817', '86102294', '', '', '', '', '1499374800', '3', '2016-2017', '111', 'Graduated Year 11.', '1499845380', 0, 'D', 'Joseph Karega', 'Uncle', '722780889', '', '', 'Kahawa Sukari', 44, '', '', 0, 1232917200, 1232485200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(171, '2016-2017', '2007-2008', 1, 33, 'Terminated', 'Furaha Salem Ruhiu', 'Samuel Ruhiu', '727791212', '020-4444919', '', 'samruhiu@uonbi.ac.ke', '', 'Lecturer', '', 'University of Nairobi', 'Annie Ruhiu', '', 'Both Parents', '722345616', '020-447870', '', 'annie_ruhiu@yahoo.com', '', 'Business Lady', '', 'Self Employed', '722345616', 44, '985122000', '1188766800', 1188766800, '1476253080', '', '727791212', 'BOX 9032-00100 Nairobi', 'BOX 9032-00100 Nairobi', 1, 123, '', 7, 0, '125', 'masteruser', '537997', '23430786', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838460', 0, 'D', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 44, '', '', 0, 1188853200, 1188766800, '', 0, 0, 0, 0, 0, 0, 0, 0, 4),
(172, '2016-2017', '2014-2015', 2, 42, 'Terminated', 'Jane Njeri  Mugweru', 'Benson Mugweru', '722581314', '', '', '', '', '', '', '', 'Elizabeth Njagi', '', 'Both Parents', '718788789', '', '', '', '', '', '', '', '718788789', 44, '975790800', '1420405200', 1420405200, '1476253140', '', '722581314', 'P.O BOX 6621-00100', 'P.O BOX 6621-00100', 202, 123, '', 8, 0, '125', 'masteruser', '929577', '14875183', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838220', 0, 'D', 'Catherine Nguri', 'Aunt', '788380960', '722846665', '', 'Nil', 44, '', '', 0, 1420491600, 1420405200, '', 0, 0, 35, 22, 50, 0, 0, 0, NULL),
(173, '2016-2017', '2010-2011', 1, 64, 'Terminated', 'Nana Aba Seguwa Owusu- Biney', 'Alex Owusu-Biney', '734357967', '7624066', '', 'alex.owusu-biney@uneo.org', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu-Biney', '', 'Both Parents', '736965198', '4443638', '', 'jasiagodo@yahoo.com', '', 'Training Specialist', '', 'Nil', '736965198', 44, '990651600', '1277154000', 1277413200, '1476253140', '', '733723933', 'P.O. BOX 47074-00100', 'P.O. BOX 47074-00100', 201, 249, '', 8, 0, '125', 'masteruser', '558816', '21359863', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838280', 0, 'D', 'Nana Oye Nettey', 'Family Friend', '733723933', '733723933', 'nanaoye57@yahoo.com', 'Brookside Westlands ', 44, '', '', 0, 1283806800, 1277154000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(174, '2016-2017', '2014-2015', 2, 42, 'Terminated', 'Sheela Mbogo', '-', '', '', '', '', '', '', '', '', 'Lillian Mbogo', '', 'Mother', '715452661', '2733729/35', '', 'lmbogo@yahoo.com', '', ' CEO,Nepad Kenya', '', 'G.O.K', '715452661', 44, '987022800', '1415653200', 1415653200, '1476253140', '', '712702967', 'P.O. BOX 23379-00604', 'P.O. BOX 23379-00604', 1, 123, '', 8, 0, '125', 'masteruser', '407617', '39012145', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838400', 0, 'D', 'Jackline Mbogo', 'Aunt', '724,211,979,073,386,', '020-3877508', 'jaymbogo@yahoo.com', 'Otani Close (off kirawa peponi rd)', 44, '', '', 0, 1420491600, 1415653200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(175, '2018-2019', '2016-2017', 1, 35, 'Studying', 'Jason Wanjui', 'Joseph Wanjui		', '0722853844', '722853844', '', 'joseph.wanjui@gmail.com', '', 'Businessman', '', 'N/A', 'Lydia Wanjui', '', 'Both Parents', '0722239117', '722239117', '', 'chamie.omari@gmail.com', '', 'Farmer', '', 'N/A', '0722239117', 38, '1238101200', '1473109200', 1473109200, '1476255420', '', '', '46037-00100', '46037-00100', 232, 123, '', 7, 0, '125', 'masteruser', '157952', '66933898', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Anne Wanjui', 'Grandmother', '721233813', '724256201', '', 'Spring valley House #13', 0, '', '', 0, 1473109200, 1473109200, '', 0, 0, 64, 52, 80, 0, 0, 0, NULL),
(176, '2017-2018', '2014-2015', 1, 33, 'Terminated', 'Duke Mwaura Mugo', 'David Mwangi	', '711175026', '3060', '', 'dvdmwangi@yahoo.com', '', 'Tax Administration', '', 'KRA', 'Esther Mugo	', '', 'Both Parents', '718776785', '718776685', '', '', '', 'Businesslady', '', 'Self-Employed', '718776785', 38, '1183064400', '1399237200', 1399237200, '1476256020', '', '', 'P.O.BOX 1368-00902 Kikuyu', 'P.O.BOX 1368-00902 Kikuyu', 255, 123, '', 7, 0, '125', 'masteruser', '232550', '46927795', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1535479680', 0, 'D', 'Ruth Mugo', 'Sister', '721706892', '', 'wairimumugo@yahoo.co.uk', 'Edenville Estate -Kiambu Rd', 38, '', '', 0, 1399237200, 1399237200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(177, '2017-2018', '2014-2015', 1, 33, 'Terminated', 'Lauren Nyokabi Muturi', 'Samuel Muturi	', '725049941', '725049941', '', 'muturi1@mac.com', '', 'Businessman', '', 'Self-Employed', 'Latishia Muturi', '', 'Both Parents', '737070077', '737070077', '', 'tishia_muturi@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '737070077', 38, '1197234000', '1409086800', 1409086800, '1476256260', '', '', 'Nil', 'Nil', 1, 123, '', 8, 0, '125', 'masteruser', '916696', '59850463', '', '', '', '', '1522357200', '2', '2017-2018', '111', '...', '1531997640', 0, 'D', 'Chris Reich', 'Family Friend', '705872979', '', 'chrisreich@gmail.com', 'N/A', 38, '', '', 0, 1410210000, 1409086800, '', 0, 0, 88, 0, 72, 0, 0, 0, NULL),
(178, '2017-2018', '2012-2013', 1, 33, 'Terminated', 'Angelica Catherine Wasawo', 'Nil', '', '', '', '', '', 'N/A', '', 'N/A', 'Delia Wasawo', '', 'Mother', '722252020', '722252020', '', 'dwasawo@gmail.com', '', 'Scientist', '', 'Self-Employed', '722252020', 40, '1149282000', '1330376400', 1330376400, '1476256260', '', '', 'P.O.BOX 41024-00100 Nrb', 'P.O.BOX 41024-00100 Nrb', 228, 123, '', 8, 0, '125', 'masteruser', '130624', '82713012', '', '', '', '', '1503954000', '3', '2016-2017', '111', '.', '1503992880', 0, 'D', 'Ruth Wasawo', 'Grandmother', '721259991', '', 'rwasawo@yahoo.com', 'WoodAvenue', 39, '', '', 0, 1330376400, 1330376400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(179, '2016-2017', '2012-2013', 1, 33, 'Terminated', 'Binty Diaby', 'Aboubacar Diaby', '', '', '', '', '', '', '', '', 'Aissata Toure', '', 'Both Parents', '', '', '', '', '', '', '', '', '0717-58620', 39, '1156453200', '1345150800', 1345150800, '1476256440', '', '', '', '', 1, 261, '', 8, 0, '236', 'masteruser', '929028', '34639587', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483681320', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 39, '', '', 0, 1346706000, 1345150800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(180, '2018-2019', '2015-2016', 1, 34, 'Terminated', 'Melissa Muthoni Njeru', 'Simon Njeru		', '722672263', '722672263', '', 'askaga@gmail.com', '', 'Director', '', 'Skaga Ltd', 'Grace Njeru', '', 'Both Parents', '723371539', '723371539', '', 'askaga@gmail.com', '', 'Director', '', 'Skaga Ltd', '723371539', 39, '1199653200', '1425589200', 1425589200, '1476256440', '', '', 'P.O.BOX 14975 00500 Nrb', 'P.O.BOX 14975 00500 Nrb', 202, 123, '', 8, 0, '125', 'masteruser', '118621', '24065246', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1536308040', 0, 'D', 'Etta Ligale', 'Aunt', '722513613', '', 'etta@avenuehealthcare.com', 'Avenue Healthcare Parkroad', 38, '', '', 0, 1441659600, 1425589200, '', 0, 0, 36, 0, 38, 0, 0, 0, NULL),
(181, '2017-2018', '2012-2013', 1, 33, 'Terminated', 'Caylin Ayuma Butiko', 'Kennedy Butiko', '721009393', '721009393', '', 'kennedy.butiko@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Fidelis Bihenza', '', 'Both Parents', '720851991', '733746405', '', 'bihenza@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '720851991', 40, '1150664400', '1343163600', 1343163600, '1476256440', '', '711485556', 'P.O.BOX 19652-00100 GPO Nrb', 'P.O.BOX 19652-00100 GPO Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '440933', '14801025', '', '', '', '', '1537304400', '3', '2017-2018', '111', '...', '1537361520', 0, 'D', 'Celestine Cynthia Majisu', 'Aunt', '733619281', '', 'cynthia_82ke@yahoo.com', 'South B', 40, '', 'Admitted', 0, 1346706000, 1343163600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(182, '2018-2019', '2012-2013', 1, 33, 'Terminated', 'Christian Eric Wanjau', 'Willie Chillan', '', '2142231628', '', '', '', 'Physician', '', 'Baylor Medical', 'Susan Wanjau', '', 'Mother', '736277640', '020-2711885', '', 'susanwanjau@gmail.com', '', 'Clinical Application Specialist', '', 'Philips Medical Systems', '736277640', 41, '1152478800', '1334437200', 1334523600, '1476256500', '', '711485556', 'P.O.BOX 3976-00623 NRB', 'P.O.BOX 3976-00623 NRB', 1, 123, '', 7, 0, '125', 'masteruser', '698095', '81595153', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1535479200', 0, 'D', 'Mary Wanjau', 'Grandmother', '721292308', '736277634', '', 'Lower Kabete Rd Opp Shopping Center', 40, '', 'Admitted', 0, 1346706000, 1334523600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(183, '2016-2017', '2012-2013', 2, 33, 'Terminated', 'Daehwi Lee', 'kyung Bae Lee', '', '', '', '', '', '', '', '', 'Young Me Lee', '', 'Both Parents', '', '', '', '', '', '', '', '', '0721-54856', 39, '1108069200', '1342386000', 1357506000, '1476256500', '', '', '', '', 227, 259, '', 7, 0, '260', 'masteruser', '309646', '58493652', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483681260', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 39, '', '', 0, 1357592400, 1342386000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(184, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Dawit Hailu Asfaw', 'Hailu Asfaw', '721270777', '202713152', '', 'hailuasfaw1964@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Fikirte Tadele', '', 'Both Parents', '722524696', '202713152', '', 'fikirtetadele@gmail.com', '', 'Bussiness Lady', '', 'Self-Employed', '722524696', 41, '1151010000', '1340139600', 1340139600, '1476256500', '', '', 'P.O.BOX 39769 NRB', 'P.O.BOX 39769 NRB', 232, 237, '', 7, 0, '125', 'masteruser', '160314', '80946960', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Fikirte Tadale', 'Grandmother', '722524696', '202713152', '', 'Runda Estate Faith Avenue', 0, '', 'Admitted', 0, 1346706000, 1340139600, '', 0, 0, 75, 0, 80, 0, 0, 0, NULL),
(185, '2016-2017', '2014-2015', 1, 36, 'Terminated', 'Eddy Kimani Mukuha', 'David Kimani', '720940646', '720940646', '', 'dmukuha@gmail.com', '', 'Self-Employed', '', 'Naivas Ltd', 'Jane Kimani', '', 'Both Parents', '721255899', '721255899', '', 'janekim2246@yahoo.com', '', 'Self-Employed', '', 'Times Wholesalers', '721255899', 39, '1091739600', '1416776400', 1416776400, '1476256560', '', '', 'P.O. BOX 61600-00200', 'P.O. BOX 61600-00200', 1, 123, '', 7, 0, '125', 'masteruser', '178854', '21398315', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537780', 0, 'D', 'Grace Kimani', 'Aunt', '', '719272334', '', 'Runda', 39, '', '', 0, 1420491600, 1416776400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(186, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Ezekiel Ichamba Kabugi', 'Joe Kabugi', '722789113', '202138363', '', 'joe.kabugi@hillsideschoolutawala.com', '', 'HR Manager', '', 'Hillside School', 'Freshiah Kabugi', '', 'Both Parents', '722623022', '722623022', '', 'freshiahmuhia@yahoo.com', '', 'Director', '', 'Hillside School', '722623022', 41, '1151182800', '1340571600', 1340571600, '1476256560', '', '750494124', 'P.O.BOX 25617-00100 NRB', 'P.O.BOX 25617-00100 NRB', 1, 123, '', 7, 0, '125', 'masteruser', '347467', '88214416', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Harriet Wangombe', 'Grandmother', '722873698', '', '', 'Thome 5', 0, '', 'Admitted', 0, 1346706000, 1340571600, '', 0, 0, 75, 0, 80, 0, 0, 0, NULL),
(187, '2018-2019', '2014-2015', 1, 33, 'Studying', 'Mikail Amaar Slatch', 'Amaar Slatch	', '733716221', '733716221', '', 'slatch.amaar@gmail.com', '', 'Businessman', '', 'Self-Employed', 'Roopa Slatch	', '', 'Both Parents', '722303085', '444851012', '', 'bitzslatch@gmail.com', '', 'Loss Adjustor', '', 'Projectors Limited', '722303085', 39, '1215291600', '1410210000', 1392670800, '1476256560', '', '', 'P.O.BOX 21362-00505 Nrb', 'P.O.BOX 21362-00505 Nrb', 228, 123, '', 7, 0, '125', 'masteruser', '407699', '85547485', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Manjit  Dhadialla', 'Grandfather', '722519408', '4448597', 'manjit@projectors.co.ke', 'Lower Kabete Rd Westlands', 0, '', '', 0, 1410210000, 1392670800, '', 0, 0, 69, 0, 94, 0, 0, 0, NULL),
(188, '2016-2017', '2012-2013', 1, 33, 'Terminated', 'Hawi Omuodo', 'Benson Omuodo', '', '', '', '', '', '', '', '', 'Lorna omuodo', '', 'Both Parents', '', '', '', '', '', '', '', '', '0724-34809', 39, '1124485200', '1301000400', 1301000400, '1476256620', '', '', '', '', 1, 123, '', 7, 0, '125', 'masteruser', '715042', '52363281', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483681200', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 39, '', '', 0, 1315256400, 1301000400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(189, '2017-2018', '2012-2013', 1, 33, 'Terminated', 'Henry Ruhiu Kamau', 'Daniel Kamau Karega', '723333754', '723333754', '', 'dkarega@yahoo.com', '', 'Pastoral Care', '', 'Self-Employed', 'Irene Kagwe Karega', '', 'Both Parents', '714590018', '7622809', '', 'irenekarega@yahoo.com', '', 'Procurement Specialist', '', 'United Nations', '714590018', 40, '1154034000', '1337634000', 1337634000, '1476256620', '', '738757369', 'P.O BOX 756-00621', 'P.O BOX 756-00621', 1, 123, '', 7, 0, '125', 'masteruser', '272265', '66961364', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479320', 0, 'D', 'Joseph Karega', 'Uncle', '722210889', '', '', 'Kahawa Sukari', 40, '', 'Amitted', 0, 1346706000, 1337634000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(190, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Jeremy Memba Gichana', 'Peters Gichana', '727470642', '727470642', '', 'santanagichana@gmail.com', '', 'Director', '', 'woodbridge Computers', 'Rachaell Jepkorir', '', 'Both Parents', '722154684', '722154684', '', 'jepkorirrael@yahoo.com', '', 'Self-Employed', '', 'Westend Channel', '722154684', 41, '1119560400', '1338238800', 1338238800, '1476256680', '', '', 'P.O.BOX 5562-00200 NRB', 'P.O.BOX 5562-00200 NRB', 228, 123, '', 7, 0, '125', 'masteruser', '557882', '63959350', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lilian Cheptiony', 'Aunt', '', '722291170', '', 'Akiba Estate South c', 0, '', 'Admitted', 0, 1346706000, 1338238800, '', 0, 0, 64, 0, 77, 0, 0, 0, NULL),
(191, '2016-2017', '2012-2013', 3, 33, 'Terminated', 'Kendi Mumbi Waimiri', 'Justus Waimiri', '722353242', '722353242', '', 'waimirik@gmail.com', '', 'Communication Consultant', '', 'Self-Employed', 'Daisy Waimiri', '', 'Both Parents', '722739581', '722739581', '', 'dwaimiri@hotmail.com', '', 'Development Worker', '', 'World Challenge,Full Gospel Church', '722739581', 39, '1145826000', '1362603600', 1362603600, '1476256680', '', '', 'P.O.BOX 1551-00100 Nrb', 'P.O.BOX 1551-00100 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '903018', '74984130', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653580', 0, 'D', 'Michael Waimiri', 'Uncle', '', '734500382', 'mwiimiri@gmail.com', 'Langata Opp Uhuru Gardens', 39, '', '', 0, 1367269200, 1362603600, '', 0, 0, 39, 0, 42, 0, 0, 0, NULL),
(193, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Muiruri Aden Mugera', 'Patrick Mugera', '0724542902', '0724542902', '', 'patrickmugera@yahoo.com', '', 'Businessman', '', 'Dial a home services limited', 'Faith Mugera', '', 'Both Parents', '0724954926', '724954926', '', 'faithmugera@nairobichapel.org', '', 'Pastor', '', 'Nairobi Chapel', '0724954926', 41, '1149109200', '1329771600', 1329771600, '1476256800', '', '', 'P.O.BOX 32538-00600 NRB', 'P.O.BOX 32538-00600 NRB', 1, 123, '', 7, 0, '125', 'masteruser', '282812', '83484802', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Caroline Mugera', 'Aunt', '0701095523', '020-3506118', 'wanjiru45@gamil.com', 'Loresho Rise Hse #95', 0, '', 'Admitted', 0, 1346706000, 1329771600, '', 0, 0, 52, 0, 0, 0, 0, 0, NULL),
(194, '2018-2019', '2015-2016', 2, 38, 'Terminated', 'Jeiel Mweri Chege', 'peter mugo', '722540642', '', '', 'peter.mugo1@gmail.com', '', 'Businessman', '', 'Self-Employed', 'winnie chege', '', 'Both Parents', '722833133', '207622648', '', 'gcmuritu@gmail.com', '', 'Administrator', '', 'UNICEF Esaro', '722833133', 41, '1155070800', '1449003600', 1449003600, '1476256800', '', '', 'P.O.BOX 4872-00200', 'P.O.BOX 4872-00200', 1, 123, '', 7, 0, '125', 'masteruser', '526599', '96042175', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479320', 0, 'D', 'Cyrus Mugo', 'Uncle', '', '', '', 'New Kitusuru Estate', 0, '', 'Admitted', 0, 1452546000, 1449003600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(195, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Njeri Gakuru', 'Anthony Gakuru', '0722867849', '0722867849', '', 'tony@powerhire.co.ke', '', 'Self-Employed', '', 'Power Hire Ltd', 'Everlyn Gakuru', '', 'Both Parents', '0721481835', '0721481835', '', 'eva.njoroge@gmail.com', '', 'Nurse', '', 'Aga Khan Hospital', '0721481835', 41, '1153256400', '1337202000', 1337202000, '1476256800', '', '', 'P.O.BOX 44314-00100 NRB', 'P.O.BOX 44314-00100 NRB', 1, 123, '', 8, 0, '125', 'masteruser', '664120', '93523559', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Mrs Njeri Kamau', 'Grandmother', '', '722322536', '', 'Tendedrive,Lavington', 0, '', 'Admitted', 0, 1346706000, 1337202000, '', 0, 0, 68, 0, 76, 0, 0, 0, NULL),
(196, '2017-2018', '2011-2012', 1, 30, 'Terminated', 'Paul Gachanja Claessen', 'Gerry Claessen', '722204140', '722204140', '', '', '', 'Computer Programmer', '', 'Self-Employed', 'Jane Wamere', '', 'Both Parents', '722526350', '727984331', '', 'jwamere@yahoo.com', '', 'Head Purchasing and Supplies Administration', '', 'Ndangeruando Investment Ltd', '722526350', 40, '1078434000', '1468443600', 1310590800, '1476256860', '', '', '49274-00100 NRB', '49274-00100 NRB', 232, 123, '', 7, 0, '125', 'masteruser', '553460', '56562805', '', '', '', '', '1504126800', '3', '2016-2017', '111', '.', '1504157340', 0, 'D', 'Mr Charles Ndarua', 'Uncle', '722462626', '711819742', 'cndarua@gmail.com', 'Karen ', 39, '', '', 0, 1315256400, 1310590800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(197, '2018-2019', '2011-2012', 1, 30, 'Studying', 'Ryan Mburu Ruhiu', 'Martin Ruhiu', '0704594494', '704594494', '', 'mrmburu@gmail.com', '', 'Engineer', '', 'Self-Employed', 'Rose Ruhiu', '', 'Both Parents', '0704594493', '704594493', '', 'rose.ruhiu@gmail.com', '', 'Businesslady', '', 'Self-Employed', '0704594493', 41, '1127077200', '1316466000', 1316466000, '1476256860', '', '', 'P.O.BOX 54126', 'P.O.BOX 54126', 1, 123, '', 7, 0, '125', 'masteruser', '705895', '16940612', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Nduko Philip', 'Aunt', '0707886372', '', '', '', 0, '', 'Amitted', 0, 1317070800, 1316466000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(199, '2018-2019', '2012-2013', 1, 33, 'Studying', 'Wilfred  Waithaka Waiyaki', 'Watson Waiyaki', '0722983435', '0722983435', '', 'liflotelecom2009@yahoo.com', '', 'Businessman', '', 'Liflo Electronics', 'Jennifer Waiyaki', '', 'Both Parents', '0722553964', '0722553964', '', 'wangari1966@yahoo.com', '', 'Businesslady', '', 'Liflo Electronics', '0722553964', 41, '1146085200', '1339966800', 1339966800, '1476256920', '', '', 'P.O.BOX 11480-00400 NRB', 'P.O.BOX 11480-00400 NRB', 1, 123, '', 7, 0, '125', 'masteruser', '592544', '49825439', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Brenda Nyokabi Waiyaki', 'Sister', '0726805339', '', '', '', 0, '', 'Admitted', 0, 1346706000, 1339966800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(200, '2017-2018', '2012-2013', 1, 33, 'Terminated', 'Zeze Brear Amimo', 'Japheth Amimo', '733738255', '204182632', '', 'jamimo35@yahoo.com', '', 'Manager', '', 'Wellness Solutions', 'Ailsa Buckley', '', 'Both Parents', '733788313', '202713540', '', 'ailsa.buckley@practicalaction.or.ke', '', 'Manager', '', 'Practical Action', '733788313', 40, '1146085200', '1335301200', 1335301200, '1476256980', '', '', 'P.O.BOX 1051 00100 Nrb', 'P.O.BOX 1051 00100 Nrb', 1, 226, '', 7, 0, '125', 'masteruser', '976736', '68601074', '', '', '', '', '1499374800', '3', '20176-2017', '111', '.', '1504157640', 0, 'D', 'Jackie Christie', 'Godmother', '736878464', '', 'jackiechristie@mac.com', '239,Loresho Crescent ,Old Loresho', 39, '', '', 0, 1346706000, 1335301200, '', 0, 0, 50, 0, 52, 0, 0, 0, NULL),
(201, '2018-2019', '2014-2015', 1, 33, 'Studying', 'Nalani Nasimiyu Lusiola', 'Sammy Lusiola	', '710514256', '710514256', '', 'sammy.lusiola@gmail.com', '', 'System Analyst', '', 'Reelforgr System Ltd', 'Wanjiru Lusiola	', '', 'Both Parents', '722794775', '722794775', '', 'jkanyiha@gmail.com', '', 'Lawyer', '', 'Inuka Kenya Ltd', '722794775', 39, '1215637200', '1358715600', 1392670800, '1476256980', '', '', 'P.O.BOX 64027-00620 Nrb', 'P.O.BOX 64027-00620 Nrb', 232, 123, '', 8, 0, '125', 'masteruser', '351889', '95610961', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Mary Kanyiha', 'Grandmother', '733722925', '202221291', 'kanyihamary@yahoo.com', 'Dhanjay Apartment Apt 705 Valley Arcade  Nrb', 0, '', '', 0, 1410210000, 1392670800, '', 0, 0, 61, 0, 92, 0, 0, 0, NULL),
(202, '2016-2017', '2013-2014', 2, 30, 'Terminated', 'Nathan Waithaka Mwangi', 'Mwangi Waithaka	', '', '', '', '', '', '', '', '', 'Caroline Gatimi	', '', 'Both Parents', '', '', '', '', '', '', '', '', '0720-01146', 36, '1200258000', '1389042000', 1389042000, '1476257040', '', '', '', '', 228, 123, '', 7, 0, '125', 'masteruser', '479934', '51528320', '', '', '', '', '1486674000', '2', '2016-2017', '111', '.', '1496911560', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 36, '', '', 0, 1410210000, 1389042000, '', 0, 0, 89, 0, 71, 0, 0, 0, 8),
(203, '2018-2019', '2011-2012', 1, 47, 'Terminated', 'Reyna Nyambura Muchiri', 'Kevin Muchiri	', '717295952', '717295952', '', 'autohousegroup@rocketmail.com', '', 'Businessman', '', 'Self-Employed', 'Millicent Kihika', '', 'Both Parents', '701533653', '701533653', '', 'mkare2009.mk@gmail.com', '', 'Businesslady', '', 'Self-Employed', '701533653', 39, '1209675600', '1314824400', 1315256400, '1476257280', '', '', 'P.O.BOX 70337', 'P.O.BOX 70337', 1, 123, '', 8, 0, '125', 'masteruser', '388940', '81001892', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1537425720', 0, 'D', 'Nil', 'Nil', '', '', '', 'Nil', 38, '', '', 0, 1315256400, 1314824400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(204, '2017-2018', '2013-2014', 2, 30, 'Terminated', 'Selah  Mumbi Nkatha Mbugua', 'Karanja Mbugua		', '722723632', '722723632', '', 'kanjimbugua@gmail.com', '', 'Businessman', '', 'Kijiji Record Limited', 'Mwendwa Mbugua', '', 'Both Parents', '722297262', '722197262', '', 'mmwiti@gmail.com', '', 'Businesslady', '', 'Kijiji Record Limited', '722297262', 38, '1191358800', '1388955600', 1388955600, '1476257460', '', '', 'P.O.BOX 52266-00100 Nrb', 'P.O.BOX 52266-00100 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '283197', '60649719', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479620', 0, 'D', 'Wanjiru Karani', 'Aunt', '722707448', '', 'wanjii@yahoo.com', 'Ridgeways', 38, '', '', 0, 1389214800, 1388955600, '', 0, 0, 78, 0, 42, 0, 0, 0, NULL),
(205, '2018-2019', '2014-2015', 1, 33, 'Studying', 'Valentine Njeri Mwangi', 'John Mwangi		', '721361767', '721361767', '', '', '', 'Businessman', '', 'Self-Employed', 'Serah Ngugi', '', 'Both Parents', '722842665', '722842665', '', 'serahngugiw@gmail.com', '', 'Businesslady', '', 'Saraj Kenya .Com', '722842665', 39, '1202936400', '1385931600', 1386190800, '1476257520', '', '', 'P.O.BOX 13526-00800 Nrb', 'P.O.BOX 13526-00800 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '453210', '18566589', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lucy Nganga', 'Aunt', '713938677', '', 'info@sarajkenya.com', 'Jambo Rejency Waiyaki Way #C1', 0, '', '', 0, 1410210000, 1386190800, '', 0, 0, 80, 0, 84, 0, 0, 0, NULL),
(206, '2016-2017', '2014-2015', 1, 33, 'Terminated', 'Zahra-Maria Shisyali Wamakonjio', 'N/A', '', '', '', '', '', 'N/A', '', 'N/A', 'Maria Wamakonjio	', '', 'Mother', '733885334', '203673000', '', 'maria@esbc.co.ke', '', 'Managing Director', '', 'ESBC Ltd', '733885334', 36, '1200690000', '1393880400', 1393880400, '1476258960', '', '', 'P.O BOX 856-00606 Nrb', 'P.O BOX 856-00606 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '613995', '74525451', '', '', '', '', '1490907600', '2', '2016-2017', '111', '.', '1495110060', 0, 'D', 'Alice Nganga/Alex Andrwes', 'Family Friends', '720620211', '733637416', 'alex@esbc.co.ke', 'Rhapta Road/Peponi Road', 36, '', '', 0, 1393880400, 1393362000, '', 0, 0, 46, 0, 80, 0, 0, 0, 18),
(207, '2017-2018', '2015-2016', 1, 34, 'Terminated', 'Ninsiima karungi', 'Paul katarikawe		', '752685982', '771621039', '', 'apaulik@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Geraldine Kaligirwa', '', 'Mother', '706362883', '732192106', '', 'gkaligirwa@gmail.com', '', 'Banker/Journalist', '', 'PTA Bank', '706362883', 38, '1183928400', '1432069200', 1432069200, '1476259020', '', '', 'P.O.BOX 48638-0100 Nrb', 'P.O.BOX 48638-0100 Nrb', 1, 258, '', 8, 0, '125', 'masteruser', '480786', '52393493', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504678080', 0, 'D', 'Margaret Kihumuro', 'Grandmother', '733188609', '772670345', 'mkihumuro@gmail.com', 'CBK Apartments,State House Crescent Kilimani', 36, '', '', 0, 1441659600, 1432069200, '', 0, 0, 44, 49, 26, 0, 0, 0, NULL),
(209, '2016-2017', '2015-2016', 1, 34, 'Terminated', 'Mikayla Ajih Chimraza', 'Ugo Ajih	', '', '', '', '', '', '', '', '', 'Nkechi Ajih	', '', 'Both Parents', '', '', '', '', '', '', '', '', '0731-01600', 37, '1221771600', '1452546000', 1452546000, '1476259380', '', '', '', '', 1, 266, '', 8, 0, '125', 'masteruser', '396603', '88788452', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483680960', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 37, '', '', 0, 1453064400, 1452546000, '', 0, 0, 20, 0, 66, 0, 0, 0, NULL),
(210, '2016-2017', '2016-2017', 1, 37, 'Terminated', 'Denis Ineza Johannes Wijnants', 'N/A', '', '', '', '', '', 'N/A', '', 'N/A', 'Jeannette Wijnants	', '', 'Mother', '701723074', '207621219', '', 'jwijnants10@gmail.com', '', 'Chief Child Protection', '', 'UNICEF', '708032755', 37, '1160082000', '1465938000', 1465938000, '1476260400', '', '', 'P.O.BOX 61 Mae Ridge Runda', 'P.O.BOX 61 Mae Ridge Runda', 232, 234, '', 7, 0, '233', 'masteruser', '393692', '94539794', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500620520', 0, 'D', 'Aminul & Sharmina Islam', 'Colleague/Friend', '704133080', '', 'aislam@unicef.org', 'Unicef Gigiri', 37, '', '', 0, 1473109200, 1465938000, '', 0, 0, 50, 60, 56, 0, 0, 0, NULL),
(211, '2018-2019', '2014-2015', 1, 32, 'Studying', 'Genesis Mburu King', 'N/A', '', '', '', '', '', '', '', 'N/A', 'Banice Mburu	', '', 'Mother', '721656119', '721656119', '', 'banicem@gmail.com', '', 'Business Lady', '', 'Self- Employed', '721656119', 39, '1197838800', '1410210000', 1410123600, '1476260520', '', '', '12999 00400 nrb', '12999 00400 nrb', 1, 123, '', 7, 0, '125', 'masteruser', '509872', '99368286', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Benjamin Njoroge', 'Uncle', '726140337', '', 'benspark254@gmail.com', 'Nil', 0, '', '', 0, 1410123600, 1410210000, '', 0, 0, 65, 0, 85, 0, 0, 0, NULL),
(212, '2016-2017', '2012-2013', 2, 48, 'Terminated', 'Jada Dominique Mwaniki', 'N/A', '', '733158200', '', 'petermwaniki@yahoo.com', '', 'Software engineer', '', 'Self- Employed', 'Thitu Mwaniki', 'Peter Mwaniki	(Grandpa)', 'Aunty & Grandparents', '728442230', '733158200', '', '', '', 'Bussiness Lady', '', 'Self- Employed', '728442230', 37, '1205269200', '1357160400', 1356987600, '1476260580', '', '', '', '', 1, 123, '', 8, 0, '125', 'masteruser', '305691', '74797363', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537480', 0, 'D', 'Patricia Mungai', 'Aunt', '728442230', '', '', 'Westlands', 37, '', '', 0, 1357592400, 1357160400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(213, '2018-2019', '2014-2015', 1, 33, 'Studying', 'James Mwangi', 'John Mwangi	', '721361767', '721361767', '', '', '', 'Businessman', '', 'N/A', 'Serah Ngugi	', '', 'Both Parents', '722842665', '722842665', '', 'serahngugiw@gmail.com', '', 'Businesslady', '', 'Saraj Kenya .Com', '722842665', 39, '1202936400', '1386018000', 1386018000, '1476260760', '', '', 'P.O.BOX 13526-00800 Nrb', 'P.O.BOX 13526-00800 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '438571', '90787963', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lucy Nganga', 'Aunt', '713938677', '724600674', 'info@sarajkenya.com', 'Jambo Rejency Waiyaki Way #C1', 0, '', '', 0, 1386018000, 1385845200, '', 0, 0, 86, 0, 54, 0, 0, 0, NULL),
(214, '2017-2018', '2014-2015', 1, 33, 'Terminated', 'Kalya Cherono Nyokabi Nduati', 'Peter Nduati			', '722444999', '2894229', '', '', '', 'CEO', '', 'Resolution Insuarance', 'Sharon Chepkwony', '', 'Mother', '722863163', '7624672', '', 'sharonc@unops.org', '', 'Project Manager', '', 'UNOPS', '722863163', 38, '1210798800', '1404334800', 1404334800, '1476260820', '', '', 'P.O.BOX 54448-00200 Nrb', 'P.O.BOX 54448-00200 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '637808', '23238525', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1535479680', 0, 'D', 'Timothy Tiony', 'Uncle', '721978813', '', 'tionyt@gmail', 'Nil', 38, '', '', 0, 1410210000, 1404334800, '', 0, 0, 80, 0, 96, 0, 0, 0, NULL),
(215, '2018-2019', '2014-2015', 1, 33, 'Studying', 'Nichole Nduhiu', 'Daniel Mwangi		', '', '', '', '', '', 'Engineer', '', 'Self- Employed', 'Rosemary Nduhiu', '', 'Mother', '0722670435', '722670435', '', 'rosenduhiu@gmail.com', '', 'Accountant', '', 'Self- Employed', '0722670435', 39, '1192136400', '1409518800', 1409518800, '1476260940', '', '', 'P.O.BOX 52905', 'P.O.BOX 52905', 1, 123, '', 8, 0, '125', 'masteruser', '379574', '71484985', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Ann Nduhiu', 'Grandmother', '724666343', '', 'anshalom@gmail.com', 'Ngong Natasia', 0, '', '', 0, 1410210000, 1409518800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(216, '2016-2017', '2013-2014', 1, 30, 'Terminated', 'Njambi Elizabeth Bury', 'Charles Bury	', '722759015', '4445736', '', 'chip.bury@gmail.com', '', 'Development Worker', '', 'SOS Childrens Village', 'Maryanne Bury	', '', 'Both Parents', '720326655', '3293812', '', 'maryannebury@gmail.com', '', 'Accounts', '', 'Standard Chartered Bank', '720326655', 37, '1193346000', '1339966800', 1338757200, '1476261060', '', '', 'P.O.BOX 1280-00621 Nrb', 'P.O.BOX 1280-00621 Nrb', 1, 237, '', 8, 0, '125', 'masteruser', '461917', '15800781', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537660', 0, 'D', 'Patricia & Godwin Wangondu', 'Family Friends', '722530128', '722756277', 'pwangongu@gmail.com', 'Kugeria Estate,off Kiambu Rd', 37, '', '', 0, 1378760400, 1339966800, '', 0, 0, 48, 0, 86, 0, 0, 0, NULL),
(217, '2017-2018', '2014-2015', 1, 32, 'Terminated', 'Said Ahmed Kharaz', 'Ahmed Kharaz		', '721576439', '721576439', '', '', '', 'N/A', '', 'N/A', 'Jonuba Bekah', '', 'Both Parents', '715277531', '203950000', '', 'ab.ubah78@gmail.com', '', 'Lawyer', '', 'Kenya Red Cross Society', '715277531', 38, '1206133200', '1410210000', 1410210000, '1476261120', '', '', 'P.O.BOX 40709 Nrb', 'P.O.BOX 40709 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '979757', '94896850', '', '', '', '', '1515358800', '2', '2017-2018', '111', '..', '1515654120', 0, 'D', 'Marsha Bakhit', 'Grandmother', '722511571', '', 'marshabekah@gmail.com', 'Nyari Estate #24', 38, '', '', 0, 1410210000, 1410210000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(218, '2018-2019', '2015-2016', 1, 34, 'Studying', 'Shana Igandu Mbuo', 'Silas Maina		', '722303741', '722303741', '', 'silasmbuo@gmail.com', '', 'Information Technology', '', 'Communication Authority Of Kenya', 'Mary Mbuo', '', 'Both Parents', '722803277', '722803277', '', 'wambuo@gmail.com', '', 'Public Health Consultant', '', 'Self- Employed', '722803277', 39, '1197406800', '1434574800', 1434574800, '1476261240', '', '', 'P.O.BOX 2079-00200 Nrb', 'P.O.BOX 2079-00200 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '199893', '83421630', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'John Githanja', 'Uncle', '721682249', '', 'wagichanga@gmail.com', 'Dagoretti Mkt', 0, '', '', 0, 1441659600, 1434574800, '', 0, 0, 60, 0, 70, 0, 0, 0, NULL),
(219, '2018-2019', '2011-2012', 1, 47, 'Studying', 'Sidney Wambui Ruhiu', 'Martin Ruhiu	', '0704594494', '704594494', '', 'mrmburu@yahoo.com', '', 'Engineer', '', 'Self-Employed', 'Rose Ruhiu	', '', 'Both Parents', '0733594493', '733594493', '', 'rose.ruhiu@gmail.com', '', 'Auditor', '', 'B.A.T', '0704594493', 39, '1212354000', '1315170000', 1315170000, '1476264420', '', '', 'P.O.BOX 64838-00620 Nrb', 'P.O.BOX 64838-00620 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '635995', '79461059', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Nduko Philip', 'Aunt', '0707886372', '', '', 'N/A', 0, '', '', 0, 1315256400, 1315170000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(220, '2018-2019', '2012-2013', 1, 30, 'Terminated', 'Andrew Karanja Mbugua', 'Peter Ruhiu	', '721328832', '721328832', '', 'africa@freethechildren.com', '', 'Director', '', 'Free the Children', 'Michelle Hambly	', '', 'Both Parents', '723140454', '723140454', '', 'health@freethechildren.com', '', 'Director', '', 'Free the Children', '723140454', 40, '1189717200', '1354050000', 1351717200, '1476265800', '', '', '54875-00200 nrb', '54875-00200 nrb', 1, 123, '', 7, 0, '125', 'masteruser', '190197', '67763366', '', '', '', '', '1537304400', '3', '2017-2018', '111', '...', '1537361160', 0, 'D', 'Regina Ruhiu', 'Aunt', '722723469', '', 'regi@sunkist-travel.co.ke', 'Ngong Nairobi', 39, '', '', 0, 1357592400, 1354050000, '', 0, 0, 38, 0, 32, 0, 0, 0, NULL),
(221, '2018-2019', '2012-2013', 2, 30, 'Terminated', 'Angel Ihimbazwe', 'N/A', '', '', '', '', '', 'N/A', '', 'N/A', 'Uzamukunda Belise', '', 'Mother', '728024833', '728024833', '', 'uzamukunda@yahoo.fr', '', 'Businesslady', '', 'Self-Employed', '728024833', 40, '1175115600', '1378760400', 1357592400, '1476265920', '', '', 'P.O.BOX 43801', 'P.O.BOX 43801', 1, 264, '', 8, 0, '125', 'masteruser', '223815', '64181823', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479500', 0, 'D', 'Uwimana Janviere', 'Aunt', '720310271', '', 'uwinanviere@gmail.com', 'Nil', 39, '', '', 0, 1357678800, 1357592400, '', 0, 0, 76, 0, 88, 0, 0, 0, NULL),
(222, '2017-2018', '2013-2014', 1, 33, 'Terminated', 'Carl Mwangi Kangethe', 'Nicholas Kangethe	', '722323864', '2022124356', '', 'knicko@gmail.com', '', 'Bussinessman', '', 'Self-Employed', 'Polly Mbuthia	', '', 'Both Parents', '722823584', '722823584', '', 'pmbuthia@gmail.com', '', 'Travel Consultant', '', 'Self-Employed', '722823584', 39, '1186174800', '1341176400', 1341176400, '1476265980', '', '', 'P.O.BOX 1313-00100', 'P.O.BOX 1313-00100', 1, 123, '', 7, 0, '125', 'masteruser', '377569', '49125061', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479440', 0, 'D', 'Alice Kangethe', 'Aunt', '721243030', '', 'akangethe@gmail.com', '', 39, '', '', 0, 1378760400, 1341176400, '', 0, 0, 40, 0, 50, 0, 0, 0, NULL),
(223, '2016-2017', '2013-2014', 1, 33, 'Terminated', 'Eli Mutethia Jr Mputhia', 'Elijah Mputhia	', '', '', '', '', '', '', '', '', 'Freddah Mputhia	', '', 'Both Parents', '', '', '', '', '', '', '', '', '0722-74554', 38, '1171400400', '1362430800', 1362430800, '1476266100', '', '', '', '', 232, 123, '', 7, 0, '125', 'masteruser', '406079', '40352478', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483681380', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 38, '', '', 0, 1346706000, 1362430800, '', 0, 0, 18, 0, 22, 0, 0, 0, NULL),
(224, '2018-2019', '2015-2016', 1, 36, 'Terminated', 'Elsie Njeri Ikere', 'Francis Ikere		', '724434217', '202102903', '', 'ikerefn@gmail.com', '', 'Architect', '', 'Shelter Solutions Limited', 'Teresa Odula', '', 'Both Parents', '735765869', '202102903', '', 'odula@gmail.com', '', 'Architect', '', 'Shelter Solutions Limited', '735765869', 40, '1174251600', '1415912400', 1415912400, '1476266160', '', '', 'P.O.BOX 17095-00100 Nrb', 'P.O.BOX 17095-00100 Nrb', 1, 123, '', 8, 0, '125', 'masteruser', '558953', '38918762', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1535479380', 0, 'D', 'Dr Carolyne Odula', 'Aunt', '722780889', '733780889', 'callieodulla@gmail.com', 'P.O.BOX 898-00100 Nrb', 39, '', '', 0, 1441659600, 1415912400, '', 0, 0, 56, 60, 42, 0, 0, 0, NULL),
(225, '2018-2019', '2016-2017', 1, 38, 'Studying', 'Ethan Sasa Nshuti', 'Adalbert Rutaisire	', '0795741644', '0795741644', '', 'adalbert.rutaisire@sc.com', '', 'Banker', '', 'Standard Chartered Bank', 'Chantal Rutaisire	', '', 'Both Parents', '0795121247', '795121247', '', 'chantalhaba@yahoo.com', '', 'N/A', '', 'N/A', '0795121247', 40, '1193950800', '1469739600', 1469739600, '1476266280', '', '', 'P.O.BOX 3003', 'P.O.BOX 3003', 1, 237, '', 7, 0, '125', 'masteruser', '785162', '53937072', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Clara Kanyana', 'Family Friend', '0771870552', '', '', 'Nil', 0, '', '', 0, 1473109200, 1469739600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(226, '2018-2019', '2015-2016', 2, 37, 'Studying', 'Jason Mbah Alombah', 'Henry Alombah		', '', '', '', '', '', 'N/A', '', 'N/A', 'Desiree Afoh', '', 'Mother', '0780002877', '0780002877', '', 'desireeafor@yahoo.com', '', 'Airtel  Africa', '', 'Airtel  Africa', '0780002877', 40, '1160946000', '1446757200', 1446757200, '1476266460', '', '', 'The Oval,Ring Road Parklands', 'The Oval,Ring Road Parklands', 1, 263, '', 7, 0, '125', 'masteruser', '945178', '65566101', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Desiree Afor', 'Mother', '780002877', '', 'desireeafor@yahoo.com', 'The Oval ring road parklands', 0, '', '', 0, 1452546000, 1446757200, '', 0, 0, 59, 0, 56, 0, 0, 0, NULL),
(227, '2016-2017', '2013-2014', 1, 33, 'Terminated', 'Heejin Joy Chung', 'WonJoong Chung			', '735766879', '735766879', '', 'voiceke7@gmail.com', '', 'Missionary', '', 'LG Sales', 'Lydia Chung', '', 'Both Parents', '726632453', '737104655', '', 'lydiake7@gmail.com', '', 'Missionary', '', 'N/A', '726632453', 38, '1153774800', '1357506000', 1357506000, '1476267180', '', '', 'P.O.BOX 505 00606 Nrb', 'P.O.BOX 505 00606 Nrb', 1, 259, '', 8, 0, '260', 'masteruser', '340820', '84363708', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653520', 0, 'D', 'Pauline Kim', 'Missionary Co-worker', '725404279', '', '', 'Nil', 38, '', '', 0, 1378760400, 1357506000, '', 0, 0, 30, 0, 80, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(228, '2016-2017', '2015-2016', 1, 36, 'Terminated', 'Kaitochukwu Ethan Ajih', 'Ugo Ajih			', '', '', '', '', '', '', '', '', 'Nkechi Ajih', '', 'Both Parents', '', '', '', '', '', '', '', '', '731016003', 38, '1164142800', '1452546000', 1452546000, '1476268500', '', '', '', '', 1, 266, '', 7, 0, '125', 'masteruser', '183551', '63912658', '', '', '', '', '1481144400', '3', '2016-2017', '111', '.', '1483686720', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 38, '', '', 0, 1453064400, 1452546000, '', 0, 0, 29, 23, 34, 0, 0, 0, NULL),
(229, '2017-2018', '2015-2016', 3, 37, 'Terminated', 'Kimuhu Thuita', 'Thuita Kiiru	', '722888870', '203860070', '', 'thuita@kiiruadvocates.com', '', 'Advocate', '', 'Self-Employed', 'Lucy Kimuhu	', '', 'Both Parents', '722621215', '722621215', '', 'lkimuhu@usaid.gov', '', 'Programme Assistant', '', 'USAID', '722621215', 39, '1160946000', '1461618000', 1461618000, '1476269400', '', '', 'P.O.BOX 58854-00200 Nrb', 'P.O.BOX 58854-00200 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '723611', '32038574', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504702080', 0, 'D', 'Tannia Wambui Kimuhu', 'Aunt', '721916272', '', '', '', 38, '', '', 0, 1462222800, 1461618000, '', 0, 0, 44, 32, 59, 0, 0, 0, NULL),
(230, '2016-2017', '2013-2014', 3, 33, 'Terminated', 'Martha Njeri Kamau', 'N/A', '', '', '', '', '', '', '', '', 'Susan Kamau	', '', 'Mother', '', '', '', '', '', '', '', '', '722820697', 38, '1186174800', '1359925200', 1359925200, '1476269820', '', '', '', '', 262, 123, '', 8, 0, '125', 'masteruser', '895162', '78615112', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1483681740', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 38, '', '', 0, 1367269200, 1359925200, '', 0, 0, 77, 0, 60, 0, 0, 0, NULL),
(231, '2016-2017', '2014-2015', 1, 34, 'Terminated', 'Mbugua Munene Mwihia', 'David Mwihia			', '702200158', '202711221', '', 'davidmwihia@yahoo.com', '', 'Banker', '', 'Citi Bank', 'Kananu Mithika', '', 'Both Parents', '702200165', '702200165', '', 'kananumithika@yahoo.com', '', 'Accountant', '', 'Bamburi Cement', '702200165', 38, '1189803600', '1390856400', 1359320400, '1476271680', '', '', 'P.O.BOX 40847-00100 Nrb', 'P.O.BOX 40847-00100 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '695101', '40811157', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500536400', 0, 'D', 'Kathleen Wangui Mwihia', 'Grandmother', '717485333', '', '', 'Muiri Rd Karen #6', 38, '', '', 0, 1378760400, 1390856400, '', 0, 0, 92, 0, 100, 0, 0, 0, NULL),
(232, '2016-2017', '', 0, 0, 'Deleted', 'Michelle Chepkosgei', 'Tony Ketter			  ', '', '', '', '', '', '', '', '', 'Nancy Ketter', NULL, '', '', '', '', '', '', '', '', '', '732997000', 38, '', '1378760400', 0, '1476271860', '', '', '', '', 0, 0, '', 8, 0, NULL, 'masteruser', '846630', '29300231', '', '', '1477999080', 'masteruser', '1477256400', '1', '', '111', '.', '1477294980', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(233, '2018-2019', '2013-2014', 1, 32, 'Studying', 'Nathan Imani Oluoch-Olunya', 'Amos Oluoch-Olunya		', '733600665', '733600665', '', 'oluocholunyaa@gmail.com', '', 'General Management', '', 'Nairobi Womens Hospital', 'Madren Oluoch-Olunya', '', 'Both Parents', '722513392', '8434313', '', 'madren56@gmail.com', '', 'HR Practitioner', '', 'EABL', '722513392', 40, '1176411600', '1337029200', 1360098000, '1476271980', '', '', 'P.O.BOX 1533-00606 Nairobi', 'P.O.BOX 1533-00606 Nairobi', 202, 123, '', 7, 0, '125', 'masteruser', '129388', '14682922', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Dr David Oluoch Olunya', 'Uncle', '722446652', '2846430', 'dloolunya@hotmail.com', 'Nairob Hospital Doctors Clinic', 0, '', '', 0, 1378760400, 1360098000, '', 0, 0, 25, 0, 18, 0, 0, 0, NULL),
(234, '2018-2019', '2013-2014', 1, 33, 'Studying', 'Matthew Ndungu Kanjama', 'Gilbert Kanjama		', '722510516', '722510516', '', 'spsoft@africaonline.co.ke', '', 'Systems Consultant', '', 'N/A', 'Wangeci Kanjama', '', 'Both Parents', '722540553', '722540553', '', 'wkanjama@gmail.com', '', 'Accountant', '', 'N/A', '722540553', 40, '1196974800', '1360098000', 1360098000, '1476272100', '', '', 'P.O.BOX 17340 00100 Nrb', 'P.O.BOX 17340 00100 Nrb', 1, 123, '', 7, 0, '125', 'masteruser', '742288', '80048828', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Kingori Gathinji', 'Uncle', '720720504', '', 'kgathinji@hotmail.com', 'Nil', 0, '', '', 0, 1378760400, 1360098000, '', 0, 0, 77, 0, 71, 0, 0, 0, NULL),
(235, '2016-2017', '2013-2014', 1, 33, 'Terminated', 'Sarah Adnan', 'Adnan Kareem		', '724262373', '724262373', '', 'adnankareem1972@gmail.com', '', 'N/A', '', 'N/A', 'Bushra Hassan	', '', 'Both Parents', '703413257', '703413257', '', 'bushrahassan78@hotmail.com', '', 'United Nations', '', 'UNDP-Somalia', '703413257', 38, '1170622800', '1377810000', 1377810000, '1476272460', '', '', 'NIL', 'NIL', 1, 252, '', 8, 0, '265', 'masteruser', '654946', '72589111', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500537780', 0, 'D', 'Abdul Raiq', 'Family Friend', '705141151', '', '', 'UNON Complex Gigiri Nairobi', 38, '', '', 0, 1378155600, 1377810000, '', 0, 0, 87, 0, 92, 0, 0, 0, NULL),
(236, '2018-2019', '2013-2014', 1, 32, 'Studying', 'Selinam Araba Owusu-Biney', 'Alex Owusu Biney		', '0734357967', '0734357967', '', 'bineya@gmail.com', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu Biney	', '', 'Both Parents', '0736965198', '736965198', '', 'owusubineyj@gmail.com', '', 'Bussiness Lady', '', 'Self- Employed', '0736965198', 40, '1190667600', '1371502800', 1360098000, '1476272820', '', '', 'P.O.BOX 47074-00100 Nrb', 'P.O.BOX 47074-00100 Nrb', 1, 249, '', 8, 0, '125', 'masteruser', '953308', '97052917', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Tobias Wesonga', 'Driver', '0713999555', '', 'fgiftymfrah@yahoo.com', '', 0, '', '', 0, 1378760400, 1360098000, '', 0, 0, 45, 0, 50, 0, 0, 0, NULL),
(237, '2017-2018', '2013-2014', 1, 33, 'Terminated', 'Talia Obera Oguta', 'Moses Ochieng		', '723352672', '713222056', '', 'ogutamochieng@gmail.com', '', 'Researcher', '', 'Consultant', 'Josephine Oguta', '', 'Both Parents', '731211303', '731211303', '', 'joguta_opondo@hotmail.com', '', 'Lawyer', '', 'World Vision International', '731211303', 39, '1187038800', '1361739600', 1361739600, '1476273060', '', '', 'P.O.BOX 2516 00621', 'P.O.BOX 2516 00621', 1, 123, '', 8, 0, '125', 'masteruser', '268722', '45941772', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504678620', 0, 'D', 'Robert Opondo Oduol', 'Grandfather', '724348915', '', '', 'Donholm Estate ', 38, '', '', 0, 1361739600, 1361739600, '', 0, 0, 85, 0, 77, 0, 0, 0, 10),
(238, '2018-2019', '2012-2013', 1, 30, 'Studying', 'Tiara Ogake Gichana', 'Peters Gichana	', '727470642', '727470642', '', 'santanagichana@gmail.com', '', 'Director', '', 'Woodbridge Computers', 'Rachael Jepkorir	', '', 'Both Parents', '722154684', '722154684', '', 'jepkorirrael@yahoo.com', '', 'Bussinesslady', '', 'West End Channel', '722154684', 40, '1169845200', '1338238800', 1338238800, '1476273180', '', '', 'P.O.BOX 5562-00200', 'P.O.BOX 5562-00200', 228, 123, '', 8, 0, '125', 'masteruser', '510751', '85745239', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lilian Cheptiony', 'Aunt', '722291170', '', '', 'Akiba Estate South C', 0, '', '', 0, 1346706000, 1338238800, '', 0, 0, 40, 0, 64, 0, 0, 0, NULL),
(239, '2016-2017', '2012-2013', 1, 30, 'Terminated', 'Yeseo Lee ', 'kyung Bae Lee		', '', '', '', '', '', '', '', '', 'Young Me Lee', '', 'Both Parents', '', '', '', '', '', '', '', '', '721548564', 38, '1170450000', '1342386000', 1341090000, '1476273300', '', '', '', '', 227, 259, '', 8, 0, '260', 'masteruser', '691201', '28138427', '', '', '', '', '1480971600', '1', '2016-2017', '111', '.', '1483681920', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 38, '', '', 0, 1346706000, 1342386000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(240, '2018-2019', '2015-2016', 3, 37, 'Studying', 'Zaria Firth', 'Collin Firth	', '', '', '', '', '', 'Securty Consultant', '', 'Self-Employed', 'Sylvia Firth	', '', 'Mother', '0704055542', '0704055542', '', 'sylviafirth@gmail.com', '', 'HR Consultant', '', 'Self-Employed', '0704055542', 40, '1141074000', '1461186000', 1461272400, '1476273600', '', '', 'P.O.BOX 25488 00603', 'P.O.BOX 25488 00603', 228, 123, '', 8, 0, '125', 'masteruser', '847976', '39377441', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Fiona Mbiyu', 'Aunt', '0723204277', '0788435500', 'mfyona@gmail.com', 'BS Expo Villa Apartments', 0, '', '', 0, 1461704400, 1461186000, '', 0, 0, 37, 50, 46, 0, 0, 0, NULL),
(241, '2016-2017', '', 0, 0, 'Deleted', 'Jesse Mburu', '', '', '', '', '', '', '', '', '', 'Jane Muchiri	', NULL, '', '', '', '', '', '', '', '', '', '721353823', 38, '', '1473109200', 0, '1476277560', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '665328', '86041870', '', '', '1478674560', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(242, '2017-2018', '2016-2017', 1, 38, 'Terminated', 'Ayan Diane Omer', 'Abdusalam Omer		', '711704847', '711704847', '', 'omerabdusalam@yahoo.com', '', 'Consultant', '', 'Self-Employed', 'Fatuma Omer', '', 'Both Parents', '727364666', '727364666', '', 'amoonf@yahoo.com', '', 'N/A', '', 'N/A', '727364666', 39, '1104526800', '1473195600', 1473195600, '1476277800', '', '', 'P.O.BOX 26446-00100', 'P.O.BOX 26446-00100', 1, 123, '', 8, 0, '125', 'masteruser', '513058', '38734741', '', '', '', '', '1524430800', '3', '2017-2018', '111', '..', '1525337580', 0, 'D', 'Maisun Omer', 'Sister', '720527777', '712415498', 'maisun.omer@yahoo.com', 'Thigiri Ridge ', 39, '', '', 0, 1473368400, 1473195600, '', 0, 0, 16, 28, 26, 0, 0, 0, NULL),
(246, '2017-2018', '2015-2016', 1, 33, 'Terminated', 'Aaron Mutua.', 'Francis Mutua', '722966321', '', '', 'frankshortich@gmail.com', '', 'Businessman', '', 'Self-Employed', 'Sono Shah', '', 'Both Parents', '726946447', '', '', 'aaronlika@icloud.com', '', 'Businesslady', '', 'Self-Employed', '726946447', 37, '1230584400', '1441659600', 1424206800, '1477032300', '', '', 'P.O.BOX 78355-00507', 'P.O.BOX 78355-00507', 228, 123, '', 7, 0, '125', 'masteruser', '482022', '30423583', '', '', '', '', '1512680400', '1', '2017-2018', '111', 'terminated', '1528289220', 0, 'D', 'Meera Shah', 'Aunty', '722927800', '', '', 'Magnolia Kitusuru#30', 37, '', '', 0, 1441659600, 1424206800, '', 0, 0, 80, 0, 84, 0, 0, 0, 18),
(247, '2018-2019', '2015-2016', 1, 32, 'Studying', 'Mich Dana Obare', 'Alois Obare', '720440000', '720440000', '', 'macobare@yahoo.co.uk', '', 'Director', '', 'Globbe mng&Risk associates', 'Caroline Obare', '', 'Both Parents', '728417333', '205121380', '', 'nyangayac@yahoo.com', '', 'Liason Officer', '', 'UN Somalia', '728417333', 38, '1225746000', '1434488400', 1434488400, '1477032600', '', '', 'P.O.BOX 42043 Nairobi', 'P.O.BOX 42043 Nairobi', 1, 123, '', 8, 0, '125', 'masteruser', '312420', '35183410', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Lilian Nyangaya', 'Aunty', '716041033', '736777095', 'liynyangaya@gmail.com', 'Riana Gardens#D4', 0, '', 'Admitted', 0, 1441659600, 1424034000, '', 0, 0, 68, 0, 72, 0, 0, 0, NULL),
(249, '2016-2017', '', 0, 0, 'Deleted', 'ELVIS NJOROGE', 'JAMES NJOROGE', '', '', '', '', '', '', '', '', 'ROSEMARY NJOROGE', NULL, '', '', '', '', '', '', '', '', '', '725939347', 43, '', '1473109200', 0, '1477037820', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '823229', '43263854', '', '', '1477999020', 'masteruser', '1476997200', '1', '', '111', '.', '1477037940', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(250, '2016-2017', '', 0, 0, 'Deleted', 'Joep Borch', 'Ronald Bosch		', '', '', '', '', '', '', '', '', 'Christine Bosch', NULL, '', '', '', '', '', '', '', '', '', '789112240', 43, '', '1389042000', 0, '1477290840', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '137683', '49240417', '', '', '1477906860', 'masteruser', '1477256400', '1', '', '111', '.', '1477293480', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(251, '2016-2017', '', 0, 0, 'Deleted', 'Ambrose Kinoti', 'Titus Maingi', '', '', '', 'titusemail@gmail.com', '', '', '', '', 'Rose Maingi', NULL, '', '', '', '', 'rose@gmail.com', '', '', '', '', '743465555', 34, '1477515600', '1477515600', 0, '1477564260', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '284338', '19475461', '', '', '1478675580', 'masteruser', '', NULL, '', '', '', '', 434, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(252, '2015-2016', '', 0, 0, 'Deleted', 'Lemlem Neale', 'Chris Neale			', '726217628', '', '', 'angelaneale@me.com', '', '', '', '', 'Angela Neale	', '', '', '702131286', '', '', 'angelaneale@me.com', '', '', '', '', '', 49, '1240952400', '1441659600', 0, '1477979160', '', '', '', '', 1, 1, '', 8, 0, '', 'kimilu', '393197', '85327758', '', '', '1478698920', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(253, '2015-2016', '', 0, 0, 'Deleted', 'Elroy Macharia', 'Eliud Macharia			0722-512349/0703399205	oshloma@yahoo.com', '722512349', '', '', 'elimak@yahoo.com', '', '', '', '', 'Catherine Mwangi	', '', '', '703399205', '', '', 'oshloma@yahoo.com', '', '', '', '', '722512349', 49, '1232658000', '1441659600', 0, '1477980540', '', '', '', '', 1, 1, '', 7, 0, '', 'kimilu', '767337', '96791992', '', '', '1478698980', 'masteruser', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(260, '2015-2016', '', 0, 0, 'Deleted', 'Khloe Njuguna					', '	Edward Njuguna', '736419810', '', '', 'edward_wardpa@yahoo.com', '', '', '', '', 'Elizabeth Njuguna', '', '', '722672295', '', '', 'wangari_njuguna@yahoo.com', '', '', '', '', '', 49, '1249246800', '1441659600', 0, '1477986180', '', '', '', '', 1, 1, '', 8, 0, '', 'kimilu', '689004', '17196044', '', '', '1478698920', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(261, '2015-2016', '', 0, 0, 'Deleted', 'Nia Kihoro							', 'Paul Kihoro', '722770196', '', '', 'kihoro@kamikazi-ltd.com', '', '', '', '', 'Angela Maiyo Kihoro', '', '', '722240203', '', '', 'acmaiyo@gmail.com', '', '', '', '', '', 49, '1241902800', '1441659600', 0, '1477986480', '', '', '', '', 1, 1, '', 8, 0, '', 'kimilu', '209039', '28844299', '', '', '1478698920', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(262, '2015-2016', '', 0, 0, 'Deleted', 'Makena Wairimu Waruingi							', 'George Kabugi', '722747477', '', '', 'twambui@gmail.com', '', '', '', '', 'Tabitha Waruingi', NULL, '', '722365831', '', '', 'twambui@gmail.com', '', '', '', '', '', 50, '1229634000', '1441659600', 0, '1477986900', '', '', '', '', 0, 0, '', 8, 0, NULL, 'kimilu', '917684', '78274536', '', '', '1477990860', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(263, '2015-2016', '', 0, 0, 'Deleted', 'Laura Kibet						', 'Timothy Kibet', '711110499', '', '', 'tkiptoo@gmail.com', '', '', '', '', 'Nancy Kibet', NULL, '', '770725742', '', '', 'nancykibett@gmail.com', '', '', '', '', '', 50, '1236373200', '1441659600', 0, '1477987380', '', '', '', '', 0, 0, '', 8, 0, NULL, 'kimilu', '525225', '10453186', '', '', '1477990800', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(264, '2015-2016', '', 0, 0, 'Deleted', 'Ezer Lee 							', 'Kyung Bae Lee', '721548564', '', '', 'ewon@korea.com', '', '', '', '', 'Young Me Lee', NULL, '', '721548564', '', '', 'dandelion103@hanmail.net', '', '', '', '', '', 50, '1227646800', '1441659600', 0, '1477988040', '', '', '', '', 0, 0, '', 8, 0, NULL, 'kimilu', '609985', '29805603', '', '', '1477990740', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(265, '2015-2016', '', 0, 0, 'Deleted', 'Andrea Kizito 							', 'Fred Kizito', '736559051', '', '', 'fredkizito@gmail.com', '', '', '', '', 'Milly Kizito', '', '', '736559058', '', '', 'amkizito@gmail.com', '', '', '', '', '', 49, '1233003600', '1441659600', 0, '1477988280', '', '', '', '', 1, 1, '', 8, 0, '', 'kimilu', '229940', '73308715', '', '', '1478698800', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(266, '2015-2016', '', 0, 0, 'Deleted', 'Daana Rawanduzy					', 'Hasan Rawanduzy', '708409490', '', '', 'hasan@petroscope.biz', '', '', '', '', 'Noreen Chanandin', '', '', '708409490', '', '', 'noreen_dean@hotmail.com', '', '', '', '', '', 49, '1140987600', '1410123600', 0, '1477988580', '', '', '', '', 1, 1, '', 7, 0, '', 'kimilu', '387869', '16042480', '', '', '1478698980', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(267, '2015-2016', '', 0, 0, 'Deleted', 'Luka Takatoh							', 'Mitsuo Takatoh', '729093970', '', '', 'suesyuubin@yahoo.com', '', '', '', '', 'Susan Takatoh', NULL, '', '724234479', '', '', 'suesyuubin@yahoo.com', '', '', '', '', '', 50, '1224104400', '1441659600', 0, '1477988880', '', '', '', '', 0, 0, '', 7, 0, NULL, 'kimilu', '826004', '19953613', '', '', '1477990740', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(269, '2015-2016', '', 0, 0, 'Deleted', 'Zuri Gitahi						', 'Philip Gitahi', '736154684', '', '', 'pgitahi@gmail.com', '', '', '', '', 'Brenda Gacheru', NULL, '', '723499416', '', '', 'brenda.gacheru2@unhabitat.org', '', '', '', '', '', 50, '1251666000', '1441659600', 0, '1477989780', '', '', '', '', 0, 0, '', 8, 0, NULL, 'kimilu', '483120', '80894775', '', '', '1477990800', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(271, '2015-2016', '', 0, 0, 'Deleted', 'Zuri Gitahi..						', 'Philip Gitahi', '736154684', '', '', 'pgitahi@gmail.com', '', '', '', '', 'Brenda Gacheru', NULL, '', '723499416', '', '', 'brenda.gacheru2@unhabitat.org', '', '', '', '', '', 50, '1251666000', '1441659600', 0, '1477990260', '', '', '', '', 0, 0, '', 8, 0, NULL, 'kimilu', '653408', '73929443', '', '', '1477990860', 'kimilu', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(272, '2016-2017', '', 0, 0, 'Deleted', 'joep Bosh', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 49, '1036098000', '1477947600', 0, '1478002200', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '589166', '31876525', '', '', '1478002260', 'masteruser', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(274, '2016-2017', '', 0, 0, 'Terminated', 'Chepkosgei Michelle Ketter', 'Tony Ketter', '722395392', '', '', 'tketter@setrightechnologies.com', '', 'Businessman', 'Businessman', 'Self-Employed', 'Nancy Ketter', '', '', '735400450', '', '', '', '', 'Bussinesslady', 'Businesslady', 'Self-Empoyed', '', 38, '1179954000', '1378674000', 0, '1478511420', '', '', '', '', 1, 123, '', 8, 0, '125', 'masteruser', '996868', '68735656', '', '', '', '', '1473973200', '1', '2016-2017', '111', '.', '1478514060', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 38, '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(292, '2018-2019', '2016-2017', 1, 38, 'Terminated', 'Ulrich Itungo Kanyamunyu', 'N/A', '', '', '', 'sharonkabahuma@yahoo.com', '', 'N/A', '', 'N/A', 'Sharon Kanyamunyu', '', 'Mother', '751670668', '751670668', '', 'sharonkabahuma@yahoo.com', '', 'Accountant', '', 'Covendish University Uganda', '751670668', 40, '1159477200', '1479070800', 1479070800, '1479280860', '', '', 'P.O.BOX 29891 Uganda', 'P.O.BOX 29891 Uganda', 262, 258, '', 7, 0, '125', 'sharon', '224996', '71188354', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1536308100', 0, 'D', 'Christine Kaboyo/Lincon Byanyima', 'Grandparents', '752,508,864,073,188,', '700798868', 'humwire@yahoo.com', 'Kampala Uganda', 39, 'Home School', '.', 0, 1479070800, 1475701200, '', 1479070800, 1, 37, 37, 71, 0, 0, 0, NULL),
(293, '2018-2019', '2016-2017', 1, 40, 'Terminated', 'Zayo Kanyamunyu', 'N/A', '', '', '', 'sharonkabahuma@yahoo.com', '', 'Nil', '', 'N/A', 'Sharon Kanyamunyu', '', 'Mum ', '751670668', '751670668', '', 'sharonkabahuma@yahoo.com', '', 'Accountant', '', 'Coverdish University Uganda', '751670668', 42, '1108414800', '1479070800', 1479070800, '1479282780', '', '', 'P.O.BOX 29891', 'P.O.BOX 29891', 1, 123, '', 7, 0, '125', 'sharon', '622949', '31365661', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308220', 0, 'D', 'Christine Kaboyo', 'Grandmother', '752508864', '700798868', 'humwire@yahoo.com', 'Kampala Uganda', 41, 'Home School', '.', 0, 1479070800, 1475701200, '', 1479070800, 1, 28, 28, 34, 0, 0, 0, NULL),
(294, '2018-2019', '2016-2017', 1, 36, 'Studying', 'Talel Micheni Gitonga', 'George Gitonga		', '722880666', '722880666', '', 'deutrex818@gmail.com', '', 'Energy/Business', '', 'Globest Ventures Limited', 'Hima Gitonga		', '', 'Both Parents', '726638659', '726638659', '', 'himaashra@gmail.com', '', 'Research', '', 'IPSOS Synovate Limited', '726638659', 39, '1185829200', '1479157200', 1479675600, '1479283380', '', '', 'Nil', 'Nil', 232, 123, '', 7, 0, '125', 'sharon', '906259', '75374145', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Tandy Ombongo', 'Family Friend', '722637596', '', 'tandywe@gmail.com', 'Stima Flats #10', 0, 'Home School', '.', 0, 1479243600, 1479157200, '', 1479157200, 1, 58, 58, 42, 0, 0, 0, NULL),
(300, '2017-2018', '2016-2017', 2, 48, 'Terminated', 'Lucie Bel Garcia ', 'Horaci Garcia', '795744338', '795744338', '', 'horaci.garcia@bbc.co.uk', '', 'Cameraman', 'Cameraman', 'BBC', 'Judith Bel', '', 'Both Parents', '795744338', '', '', 'judithbel@yahoo.com.fr', '', 'N/A', 'N/A', 'N/A', '795744338', 30, '1336338000', '1473282000', 1476133200, '1479821340', '', '795744338', '58621', '58621', 1, 253, '', 8, 0, '236', 'sharon', '106401', '30482486', '', '', '', '', '1512680400', '1', '2017-2018', '111', '..', '1515417240', 0, 'D', '', '', '', '', '', '', 30, 'Ecole Montessori  Bilingue', 'Admission test not yet issued ( Not in the country).', 0, 1476133200, 1473282000, '', 1478725200, 2, 0, 0, 0, 0, 0, 0, NULL),
(301, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Kamwere Ndiritu', 'N/A', 'N/A', '', '', '', '', '', '', '', 'Nyawira Kamwere		', '', 'Parent', '729703340', '', '', 'rubaninyawira@gmail.com', '', '', '', '', '', 34, '1240434000', '1441573200', 1441659600, '1479821820', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '451998', '19049567', '', '', '', '', '1477256400', '1', '2016-2017', '111', '.', '1480686300', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 34, 'ICK', '', 0, 1441659600, 1441573200, '', 1441659600, 1, 86, 0, 68, 0, 0, 0, NULL),
(308, '2015-2016', '2013-2014', 2, 40, 'Terminated', 'Elvis Kiiru Njoroge', 'James Njoroge Kariuki', '723633729', '', '', 'njors@yahoo.com', '', '', '', '', 'Rosemary Wanjiku Njoroge', '', '', '725939347', '', '', 'r.njoroge43@yahoo.com', '', '', '', '', '', 43, '1000242000', '1388955600', 1389042000, '1479911220', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '649507', '98587494', '', '', '', '', '1474837200', '3', '2015-2016', '111', '.', '1479911700', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, 'St Marys School', '.', 0, 1389042000, 1388955600, '', 1388955600, 3, 0, 0, 0, 0, 0, 0, NULL),
(313, '2015-2016', '2013-2014', 2, 41, 'Terminated', 'Joep Mawunyo Bosch', 'Ronald Bosch', '733673376', '', '', 'rabosch68@gmail.com', '', '', '', '', 'Christine Bosch', '', 'Mother', '789112240', '', '', 'caabosch@gmail.com', '', '', '', '', '', 43, '1011646800', '1383598800', 1383598800, '1480079160', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '650511', '73438160', '', '', '', '', '1467925200', '3', '2015-2016', '111', '.', '1480079760', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 43, 'Peponi Prep School', '.', 0, 1389646800, 1383598800, '', 1383598800, 3, 80, 65, 0, 0, 0, 0, NULL),
(314, '2018-2019', '2015-2016', 1, 33, 'Terminated', 'Kristian Baraka Butiko', 'Kennedy .E.Butiko', '726009393', '', '', 'kennedy.butiko@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Fidelis Gentrix Bihenza', '', 'Both Parents', '733746405', '', '', 'bihenzaf@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '733746405', 38, '1219525200', '1393794000', 1393794000, '1480685520', '', '', 'P.O.BOX 19652-00100 ', 'P.O.BOX 19652-00100 ', 1, 123, '', 7, 0, '125', 'sharon', '885276', '48720772', '', '', '', '', '1537304400', '3', '2017-2018', '111', '...', '1537361760', 0, 'D', 'Celestine Majisu', 'Aunty', '733619281', '', '', 'south b', 36, 'I.C.K', '.', 0, 1441659600, 1393794000, '', 1393794000, 1, 84, 0, 72, 0, 0, 0, NULL),
(315, '2016-2017', '2015-2016', 1, 32, 'Terminated', 'Trevor Mwai Mutui', 'Timothy  M Mutui', '725616391', '702553333', '', 'mutuitimothy@gmail.com', '', 'Businessman', '', 'Self-Employed', 'Esther Wanjiku', '', 'Both Parents', '720753708', '', '', 'esylvia.wangari@gmail.com', '', 'Businesslady', '', 'Self-Employed', '720753708', 34, '1229029200', '1429650000', 1429650000, '1480686060', '', '', 'P.O.BOX 41510-00100', 'P.O.BOX 41510-00100', 1, 123, '', 7, 0, '125', 'sharon', '941164', '43740246', '', '', '', '', '1496091600', '3', '2016-2017', '111', '.', '1500537240', 0, 'D', 'Patrick Mutui', 'Uncle', '720395601', '', '', 'Ruaka', 34, 'Nairobi Academy', '.', 0, 1441659600, 1429650000, '', 1429736400, 1, 68, 0, 72, 0, 0, 0, NULL),
(316, '2018-2019', '2015-2016', 1, 63, 'Terminated', 'Shani Amani Asinuli', 'Kennedy Asinuli', '733512544', '202713811', '', 'akatiero@yahoo.com', '', 'Lawyer', '', 'Asinuli&Advocates', 'Jacqueline Asinuli', '', 'Both Parents', '724211979', '733864602', '', 'jaymbogo@gmail.com', '', 'Social Scientist', '', 'Coffey International', '724211979', 38, '1230843600', '1448226000', 1448226000, '1480686780', '', '', 'P.O.BOX 61366-00200 Nrb', 'P.O.BOX 61366-00200 Nrb', 1, 123, '', 7, 0, '125', 'sharon', '209602', '71333398', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308820', 0, 'D', 'Alsisia Mbogo', 'Grandmother', '715837541', '', 'marigumbogo@gmail.com', 'Kileleshwa', 37, 'Consolata Primary', '.', 0, 1452546000, 1448226000, '', 1448226000, 1, 36, 0, 80, 0, 0, 0, NULL),
(317, '2017-2018', '2013-2014', 1, 30, 'Terminated', 'Laura Jerotich Kibet', 'Timothy Kibet Kiptoo', '711110499', '711110499', '', 'tkiptoo@gmail.com', '', 'Implementation Manager(Telcommunications)', '', 'Ericsson Kenya', 'Nancy Wambui', '', 'Both Parents', '704872703', '704872703', '', 'nancykibett@gmail.com', '', 'Self-Employed', '', 'N/A', '704872703', 37, '1236373200', '1411938000', 1411938000, '1480687380', '', '', 'P.O.BOX 2084-00621 Nrb', 'P.O.BOX 2084-00621 Nrb', 1, 123, '', 8, 0, '125', 'sharon', '131880', '40460100', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504681740', 0, 'D', 'Rosinah Mwangola', 'Pastor', '722668940', '', 'sinah.saul@gmail.com', 'Lavington Kenya', 35, 'Kirawa Road', '.', 0, 1420491600, 1411938000, '', 1424206800, 1, 80, 0, 98, 0, 0, 0, NULL),
(318, '2018-2019', '2015-2016', 1, 32, 'Studying', 'Ahlam Mirriam Ongalo', 'David Anthony Ongalo', '722954866', '722954866', '', 'davidongalo@yahoo.com', '', 'Finance Manager', '', 'Ubahlimo Ltd', 'Ubah Abdi Maalim', '', 'Both Parents', '722446849', '722446849', '', 'ubalimo@yahoo.com', '', 'Businesslady', '', 'Arysta Lifescience', '722446849', 38, '1233781200', '1424638800', 1424638800, '1480688100', '', '', 'P.O.BOX 64557-00619 Nrb', 'P.O.BOX 64557-00619 Nrb', 1, 123, '', 8, 0, '125', 'sharon', '462242', '32234087', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Beatrice Ongali', 'Aunt', '722820399', '', '', 'Kileleshwa Kandara Rd', 0, 'Key International School', '.Admitted', 0, 1441659600, 1424638800, '', 1424638800, 1, 84, 0, 94, 0, 0, 0, NULL),
(319, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Christina Bubbolini', 'Ricardo Bubbolini', '202677003', '', '', 'info@dordlcoflowers.com', '', '', '', '', 'Roshria	Bubbolini', '', 'Both Parents', '704062201', '', '', 'info@dordlcoflowers.com', '', '', '', '', '', 35, '1240606800', '1441573200', 1441573200, '1480746240', '', '', '', '', 1, 267, '', 8, 0, '125', 'sharon', '358593', '72330706', '', '', '', '', '1481144400', '1', '2016-2017', '111', '.', '1496911380', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 35, 'I.C.K', '.', 0, 1441659600, 1441573200, '', 1441573200, 1, 75, 0, 80, 0, 0, 0, 8),
(320, '2016-2017', '2015-2016', 1, 63, 'Terminated', 'Benjamin Kiiru Mugweru', 'Benson Mugweru Nguri', '722581314', '708962167', '', 'bnmugweru@gmail.com', '', 'Businessman', '', 'Self-Employed', 'Elizabeth Njagi', '', 'Both Parents', '718788789', '708962167', '', 'elizamugweru@gmail.com', '', 'Businesslady', '', 'Self-Employed', '718788789', 35, '1229374800', '1431637200', 1431637200, '1480747020', '', '', 'P.O.BOX 6621-00100 Nrb', 'P.O.BOX 6621-00100 Nrb', 202, 123, '', 7, 0, '125', 'sharon', '583736', '97077509', '', '', '', '', '1499374800', '3', '2016-2017', '111', '.', '1500375480', 0, 'D', 'Catherine Nguri', 'Aunt', '722846665', '', 'cnwnguri@gmail.com', 'Kahawa Sukari,Muranga Rd', 35, 'I.C.K', '.', 0, 1441659600, 1431637200, '', 1431637200, 1, 88, 0, 72, 0, 0, 0, NULL),
(321, '2018-2019', '2016-2017', 1, 32, 'Studying', 'Abeiku Nhyira Owusu-Biney', 'Alex Owusu Biney		', '0734357967', '', '', 'bineya@gmail.com', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu Biney	', '', 'Both Parents', '0736965198', '', '', 'owusubineyj@gmail.com', '', 'Businesslady', '', 'Self-Employed', '0736965198', 36, '1290546000', '1456174800', 1456174800, '1480917900', '', '', 'P.O.BOX 47074-00100', 'P.O.BOX 47074-00100', 1, 249, '', 7, 0, '125', 'sharon', '714923', '20138978', '', '', '', '', '', '', '', '', '', '', 0, 'D', 'Gifty Nafrah', 'Aunty', '712082711', '', 'Nil', 'Nil', 0, 'I.C.K', '.', 0, 1473109200, 1456174800, '', 1456174800, 1, 44, 0, 62, 0, 0, 0, 25),
(323, '2017-2018', '2016-2017', 1, 36, 'Terminated', 'Clifford Karema', 'Dr Heinz Bongartz', '719864433', '719864433', '', 'hb@lexas.de', '', 'Director', '', 'Friedrich Ebert Foundation', 'Caroline Karekie Karanja', '', 'Both Parents', '726926972', '726926972', '', 'carolinekarekie@yahoo.com', '', 'Student', '', 'N/A', '708137806', 38, '1173128400', '1479157200', 1416344400, '1480929180', '', '', 'P.O.BOX 14932-00800 Nrb', 'P.O.BOX 14932-00800 Nrb', 232, 123, '', 7, 0, '125', 'sharon', '765161', '80591734', '', '', '', '', '1515358800', '2', '2017-2018', '111', '...', '1515654360', 0, 'D', 'Mary Wanjiku Karanja', 'Grandmother', '729619284', '', '', '44 Thika', 38, 'Cornerstone Academy', '.', 0, 1479416400, 1479157200, '', 1479157200, 1, 56, 30, 50, 0, 0, 0, NULL),
(324, '2015-2016', '', 0, 0, 'Studying', 'Karl Senanu', 'Kris Senanu		', '722525094', '', '', 'kris.senanu@accesskenya.com', '', '', '', '', 'Nina Senanu	  ', NULL, '', '732771199', '', '', 'nina@yakayeke.com', '', '', '', '', '', 33, '1225054800', '1441659600', 0, '1481609280', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '446528', '33499636', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', '.', 0, 1441659600, 1424898000, '', 1424898000, 1, 56, 86, 60, 0, 0, 0, NULL),
(325, '2015-2016', '', 0, 0, 'Studying', 'Isaiah Ngeno', 'Peter Ngeno				', '707965297', '', '', 'ngenopeter@gmail.com', '', '', '', '', 'Melody Ngeno', NULL, '', '708094205', '', '', 'melody-roth@hotmail.com', '', '', '', '', '', 32, '1231880400', '1441659600', 0, '1481611740', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '417082', '32942710', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', ',', 0, 1447794000, 1424898000, '', 1441659600, 1, 85, 90, 60, 0, 0, 0, NULL),
(326, '2015-2016', '', 0, 0, 'Studying', 'Mukti Vasta', 'Ramesh				', '700608139', '', '', 'ramesh-vasta@hotmail.com', '', '', '', '', 'Vaneeta', NULL, '', '711652503', '', '', 'vaneetavasta@yahoo.com', '', '', '', '', '', 32, '1241470800', '1441659600', 0, '1481613240', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '936021', '64595205', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', '.', 0, 1453237200, 1456347600, '', 1441659600, 1, 45, 65, 50, 0, 0, 0, NULL),
(329, '2015-2016', '', 0, 0, 'Studying', 'Daana Rawanduzy', 'Hasan Rawanduzy			', '708409490', '', '', 'hasan@petroscope.biz', '', '', '', '', 'Noreen Chanandin', NULL, '', '708409490', '', '', 'noreen_dean@hotmail.com', '', '', '', '', '', 33, '1140987600', '1398373200', 0, '1481620320', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '661020', '25475785', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', '.', 0, 1450126800, 1424206800, '', 1398373200, 1, 92, 94, 98, 0, 0, 0, NULL),
(330, '2015-2016', '', 0, 0, 'Studying', 'Andrea Kizito', 'Fred Kizito', '736559051', '', '', 'fredkizito@gmail.com', '', '', '', '', 'Milly Kizito', NULL, '', '736559058', '', '', 'amkizito@gmail.com', '', '', '', '', '', 33, '1233003600', '1421010000', 0, '1481622960', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '607145', '28876457', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', '.', 0, 1457384400, 1423602000, '', 1421010000, 1, 40, 60, 80, 0, 0, 0, NULL),
(331, '2015-2016', '', 0, 0, 'Studying', 'Aneesah Boyle', 'Paul Boyle					', '722530235', '', '', 'p.boyle@usa.net', '', '', '', '', 'Swabra Ali', NULL, '', '720132742', '', '', 'sabraossman@yahoo.com', '', '', '', '', '', 33, '1229806800', '1424638800', 0, '1481626560', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '188080', '61938236', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.S.K', '.', 0, 1454965200, 1441659600, '', 1424638800, 1, 84, 72, 94, 0, 0, 0, NULL),
(339, '2015-2016', '', 0, 0, 'Studying', 'Emmanuel Kamau', 'Peter Kamau				', '0722-89923', '', '', 'mugo700@yahoo.com', '', '', '', '', 'Margaret Githara', NULL, '', '702693399', '', '', 'maggiegithara@yahoo.com', '', '', '', '', '', 63, '1219179600', '1434488400', 0, '1481632260', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '978126', '15256211', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergern', '.', 0, 1452200400, 1438722000, '', 1431810000, 1, 76, 0, 78, 0, 0, 0, NULL),
(340, '2015-2016', '', 0, 0, 'Studying', 'Mirai Morimoto', 'Yasuyuki Morimoto				', '715007064', '', '', 'yasunbk@hotmail.com', '', '', '', '', 'Ayaka Morimoto', NULL, '', '723760179', '', '', 'himamira@gmail.com', '', '', '', '', '', 63, '1222376400', '1433365200', 0, '1481633220', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '888648', '58889523', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1441659600, 1441659600, '', 1433365200, 1, 84, 0, 82, 0, 0, 0, NULL),
(342, '2015-2016', '', 0, 0, 'Studying', 'Muthoni Munge', 'George Munge			', '0722-51954', '', '', 'warutuu@yahoo.com', '', '', '', '', 'Anne Miringu	', NULL, '', '722540517', '', '', 'miringu_ann@yahoo.com', '', '', '', '', '', 63, '1441746000', '1441659600', 0, '1481697420', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '717076', '57014558', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1455742800, 1455742800, '', 1441659600, 1, 100, 0, 98, 0, 0, 0, NULL),
(344, '2015-2016', '', 0, 0, 'Studying', 'Elroy Thuo Macharia', 'Eliud Macharia Mwangi', '722512349', '', '', 'elimake@yahoo.com', '', '', '', '', 'catherine maina', NULL, '', '722512349', '', '', 'ashloma@yahoo.com', '', '', '', '', '', 33, '1232658000', '1431378000', 0, '1481699040', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '938514', '50216819', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Vernom Hill', '.', 0, 1441659600, 1450040400, '', 1431378000, 1, 72, 0, 72, 0, 0, 0, NULL),
(347, '2015-2016', '', 0, 0, 'Studying', 'Leo Oben', 'Theodore Oben', '724255247', '', '', 'theo.oben@gmail.com', '', '', '', '', 'Janet oben', NULL, '', '735262054', '', '', 'janet.oben@gmail.com', '', '', '', '', '', 34, '1224018000', '1399410000', 0, '1481701440', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '794565', '60008590', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kabete Junior Acadamy', '.', 0, 1410123600, 1399410000, '', 1410123600, 1, 77, 0, 64, 0, 0, 0, NULL),
(349, '2015-2016', '', 1, 0, 'Studying', 'Keysha Njuguna				', 'Edward Njuguna', '736419810', '', '', 'edward_wardpa@yahoo.com', '', '', '', '', 'Elizabeth Njuguna', '', '', '722672295', '', '', 'wangari_njuguna@yahoo.com', '', '', '', '', '', 35, '1196370000', '1421010000', -10800, '1481704260', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '353703', '90047488', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, -10800, 1421010000, '', 1421010000, 2, 72, 0, 78, 0, 0, 0, NULL),
(350, '2015-2016', '', 0, 0, 'Studying', 'William Andrewes					', 'Alexander Andrewes', '733637416', '', '', 'alex@esbc.co.ke', '', '', '', '', 'Eva Andrewes', NULL, '', '722993946', '', '', 'eandrewes@kcb.co.ke', '', '', '', '', '', 35, '1221858000', '1392843600', 0, '1481705460', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '910969', '10688564', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'I.C.K', '.', 0, 1393362000, 1392843600, '', 1393362000, 2, 77, 0, 96, 0, 0, 0, NULL),
(353, '2015-2016', '2013-2014', 2, 33, 'Terminated', 'Henry Kamau', 'Zacharia Kamau', '722337899', '', '', 'hekarinv@yahoo.com', '', '', '', '', 'Pamela T.Kamau', '', '', '724245550', '', '', 'pami77@yahoo.com', '', '', '', '', '', 36, '1181854800', '1374181200', 1388955600, '1481712600', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '485224', '11189105', '', '', '', '', '1515445200', '2', '2017-2018', '111', '....', '1519207140', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 36, 'Chreche International', '.', 0, 1394571600, 1394571600, '', 1374181200, 2, 100, 0, 78, 0, 0, 0, NULL),
(354, '2015-2016', '2012-2013', 1, 33, 'Studying', 'Kaylee Wanjiku Muhia', 'Francis Muhia', '727422777', '', '', 'fmuguku@yahoo.com', '', '', '', '', 'Laura Nyambura', '', '', '715331714', '', '', 'laurandirangu@yahoo.com', '', '', '', '', '', 33, '1173214800', '1374440400', -10800, '1481713320', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '758423', '22819935', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1378674000, 1374440400, '', 1374440400, 1, 63, 0, 65, 0, 0, 0, NULL),
(359, '2015-2016', '', 0, 0, 'Studying', 'Gibril Sesay 		', 'Abulai Sesay', '703706427', '', '', 'superdool78@yahoo.com', '', '', '', '', 'Isafa Sesay', NULL, '', '703706428', '', '', 'isafapsesay@yahoo.com', '', '', '', '', '', 37, '1155589200', '1441659600', 0, '1481784000', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '948254', '26419590', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1441659600, 1441659600, '', 1441659600, 1, 63, 0, 57, 0, 0, 0, NULL),
(362, '2015-2016', '2013-2014', 1, 36, 'Studying', 'Njenga Gichigi				', 'na', 'na', '', '', 'wanjikugichigi@hotmail.com', '', '', '', '', 'Wanjiku Gichigi', '', '', '0702-44344', '', '', 'wanjikugichigi@hotmail.com', '', '', '', '', '', 64, '1112994000', '1379538000', -10800, '1481787240', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '773082', '31792828', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St Marys ', '.', 0, 1379538000, 1379538000, '', 1379538000, 1, 22, 0, 36, 0, 0, 0, NULL),
(363, '2015-2016', '2015-2016', 2, 64, 'Studying', 'Malaika Kamweti', 'Camillas Omollo		', '721973785', '', '', 'lmbogo@yahoo.com', '', '', '', '', 'Lillian Mbogo', '', '', '715452661', '', '', 'lmbogo@yahoo.com', '', '', '', '', '', 65, '1151010000', '1452027600', -10800, '1481788020', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '151976', '29590374', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Lreto  Convent Msongari', '.', 0, 1452027600, 1452027600, '', 1452027600, 2, 58, 0, 50, 0, 0, 0, NULL),
(364, '2015-2016', '2014-2015', 2, 36, 'Studying', 'Hans Arden Gaya', 'Hannington Gaya	', '722742287', '', '', 'gaya@wananchi.com', '', '', '', '', 'Hilda Gaya', '', '', '710579945', '', '', 'hilda1904@aim.com', '', '', '', '', '', 39, '1093986000', '1398286800', -10800, '1481791380', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '576730', '66138674', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Braeside School', '.', 0, 1398286800, 1398286800, '', 1398286800, 2, 11, 0, 27, 0, 0, 0, NULL),
(367, '2015-2016', '2010-2011', 1, 30, 'Studying', 'Victoria Ndagijimana', 'Jean Paul Ndagijimana		', '727801475', '', '', 'jndagijimana@wr.org', '', '', '', '', 'Clementine Maniraguha', '', '', '728217236', '', '', 'maniclem2000@yahoo.fr', '', '', '', '', '', 39, '1129669200', '1326056400', -10800, '1481798880', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '331981', '31415063', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1294693200, 1294693200, '', 1294693200, 2, 65, 0, 80, 0, 0, 0, NULL),
(368, '2015-2016', '', 1, 0, 'Studying', 'Julie Waimiri', 'Justus Waimiri		', '722739581', '', '', 'waimirik@gmail.com', '', '', '', '', 'Daisy Waimiri	', '', '', '722739581', '', '', 'dwaimiri@hotmail.com', '', '', '', '', '', 41, '1039554000', '1410123600', -10800, '1481800980', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '244701', '65791959', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1410123600, 1410123600, '', 1410123600, 1, 64, 0, 49, 0, 0, 0, NULL),
(371, '2015-2016', '2014-2015', 1, 40, 'Studying', 'Lynn Burugu', 'Peter Burugu', '722331091', '', '', 'bgachugu@gmail.com', '', '', '', '', 'Patricia Wambui', '', '', '072639283	', '', '', 'burugupatricia@gmail.com', '', '', '', '', '', 41, '1043182800', '1410123600', -10800, '1481806200', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '491200', '29139974', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1410123600, 1410123600, '', 1410123600, 1, 64, 0, 49, 0, 0, 0, NULL),
(375, '2015-2016', '2013-2014', 3, 38, 'Studying', 'Sapna Chudasana', 'Jayesh Chudasana	', '730016145', '', '', 'jaychudasama@fsmail.net', '', '', '', '', 'Neha Chudasana', '', '', '732012751', '', '', 'jaychudasama@fsmail.net', '', '', '', '', '', 40, '1096405200', '1370984400', -10800, '1481874900', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '545705', '76577896', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'The Grove Independent School', '.', 0, 1379278800, 1370984400, '', 1370984400, 1, 84, 0, 80, 0, 0, 0, NULL),
(376, '2015-2016', '2012-2013', 1, 36, 'Studying', 'Myles Kiriko', 'Eric Kiriko	', '722788286', '', '', 'mkiriko7@gmail.com', '', '', '', '', 'Linda Kiriko', '', '', '722257876', '', '', 'kaai.linda@gmail.com', '', '', '', '', '', 40, '1053378000', '1347224400', -10800, '1481877060', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '972887', '10133126', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1347224400, 1347224400, '', 1347224400, 2, 63, 0, 50, 0, 0, 0, NULL),
(377, '2015-2016', '2012-2013', 2, 39, 'Studying', 'Livingstone Chung', 'WonJoong Chung', '735766879', '', '', 'voiceke7@gmail.com', '', '', '', '', 'Lydia Chung', '', '', '726632453', '', '', 'lydiake7@gmail.com', '', '', '', '', '', 42, '990565200', '1357506000', -10800, '1481878560', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '462027', '79232745', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rosslyn Academy', '.', 0, 1357506000, 1357506000, '', 1357506000, 2, 57, 0, 38, 0, 0, 0, NULL),
(378, '2015-2016', '', 0, 0, 'Studying', 'Nyambura Machua', 'Machua Waithaka			', '722680522', '', '', 'machua60@yahoo.com', '', '', '', '', 'Rosemary Machua', NULL, '', '722628812', '', '', 'rmachua@yahoo.com', '', '', '', '', '', 42, '1014066000', '1220821200', 0, '1481879460', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '558331', '93061816', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.', 0, 1220821200, 1220821200, '', 1220821200, 1, 69, 0, 50, 0, 0, 0, NULL),
(380, '2016-2017', '2016-2017', 1, 41, 'Terminated', 'Joshua Mjuni Masila', 'N/A', 'N/A', '', '', 'e.semiti@yahoo.com', '', '', '', '', 'Edna S.Semeti', '', 'Mother', '718861654', '', '', 'e.semiti@yahoo.com', '', '', '', '', '', 41, '1000242000', '1479070800', 1479070800, '1483959000', '', '', '', '', 255, 123, '', 7, 0, '125', 'sharon', '123192', '65697654', '', '', '', '', '1490907600', '2', '2016-2017', '111', '.', '1495617060', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 41, 'Logos Christian School', '.', 0, 1483995600, 1479070800, '', 1479070800, 2, 50, 32, 15, 8, 20, 30, 18),
(386, '2018-2019', '2016-2017', 1, 38, 'Studying', 'Luzolo Junior Antonio', 'Luzolo Antonio', '792369639', '', '', 'luzolosanches@hotmail.com', '', 'Teacher', '', 'Agostileho Neto University', 'Monadia Antonio', '', 'Mother', '798362789', '798362789', '', 'monadiaantonio@yahoo.com.br', '', 'Diplomat', '', 'Angolan embassy', '798362789', 40, '1135717200', '1485896400', 1485723600, '1485933180', '', '', 'Nil', 'Nil', 1, 279, '', 7, 0, '278', 'sharon', '505300', '17075905', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Cheteude', 'Collegue', '705912365', '', '', 'Runda Estate #39', 0, 'Marotos College', '.', 0, 1485723600, 1485896400, '', 1485723600, 2, 0, 0, 0, 0, 0, 0, NULL),
(389, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Wanjiru Kanyi', 'Kanyi Gachoka', '0722516088', '0722516088', '', 'gachokak@kimondogachoka.co.ke', '', 'Mng Consultant', '', 'CedarConsulting Ltd', 'Claire Wanjiru', '', 'parents', '0722736255', '', '', 'cwanjiku28@gmail.com', '', 'Advocate', '', 'Kimondo Gachoka & Company Advocates', '0722736255', 34, '1292792400', '1480453200', 1488488400, '1487236860', '', '', '35191-00200 Nrb', '35191-00200 Nrb', 1, 123, '', 8, 0, '125', 'sharon', '174719', '31918984', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Gachoka Kanyi', 'Brother', 'Nil', '0722736255', '', 'Nil', 0, 'ICK', 'Application Received.Test Administered on 21/2/17.\r\nAssessment & Application Paid.Came for orientation on 22/6/2017.', 0, 1480453200, 1487624400, '', 0, 1, 30, 0, 78, 0, 0, 0, NULL),
(390, '2017-2018', '2017-2018', 1, 33, 'NotAdmitted', 'Wavinya Ahadi Mutsekwa', 'Nyasha Mutsekwa', '725257585', '', '', 'ideasnyasha@gmail.com', '', '', '', '', 'Joanne Mutungi', '', '', '716854828', '', '', 'j.ndunge@yahoo.com', '', '', '', '', '', 33, '1309381200', '1486587600', 1488488400, '1487237460', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '802789', '81156308', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', '.Application Received.\r\nTest Administered on 21/2/17.Not joining,opted to join another school.\r\nAssessment & Application Paid .', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(391, '2017-2018', '2017-2018', 1, 33, 'NotAdmitted', 'Daniel Irungu Bury', 'Charles Bury', '722759015', '', '', 'chip.bury@gmail.com', '', '', '', '', 'Maryanne Bury', '', '', '720326655', '', '', 'maryanne.bury@gmail.com', '', '', '', '', '', 33, '1290027600', '1487019600', 1488315600, '1487237760', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '502732', '35318210', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Montessori Learning Centre', 'Application Received.\r\nTest Administered on 21/2/17.Not joining,opted to join another school.\r\nAssessment & Application Paid', 0, -10800, 1487624400, '', 0, 1, 40, 0, 50, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(392, '2017-2018', '2017-2018', 1, 33, 'NotAdmitted', 'Micah Emmanuel Kemuntu', 'Gilbert Kamuntu', '701162297', '', '', 'gilbertkamuntu@gmail.com', '', '', '', '', 'Yawande Kamuntu', '', '', '795737808', '', '', 'ysonuga@hotmail.com', '', '', '', '', '', 33, '1300827600', '1487624400', 1488315600, '1487238780', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '910018', '93926122', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Early Montessori Centre', 'Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid last year.', 0, -10800, 1487624400, '', 0, 1, 84, 0, 82, 0, 0, 0, NULL),
(393, '2017-2018', '2017-2018', 1, 33, 'Terminated', 'Sreenanda Sreejith Nair', 'Sreejith Naduvele Dathu', '739898888', '', '', 'sreejith@cargen.com', '', '', '', '', 'Sreeja Sreejith', '', '', '719653974', '', '', 's.sreeja@gmail.com', '', '', '', '', '', 30, '1300395600', '1469048400', 1488315600, '1487240700', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '377376', '91618718', '', '', '', '', '1522011600', '2', '2017-2018', '111', '..', '1523527500', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 30, 'Kenwood Kindergarten', '.Application Received.\r\nTest  not administered.\r\nAssessment & Application Paid', 0, -10800, 1477256400, '', 1477256400, 1, 100, 0, 83, 0, 0, 0, NULL),
(403, '2017-2018', '2017-2018', 1, 33, 'NotAdmitted', 'Jemea Celia-Clair Monono', 'Deceased', '', '', '', '', '', '', '', '', 'Ruphina Monono', '', '', '706044049', '', '', 'rnmbua@yahoo.com', '', '', '', '', '', 33, '1285016400', '1487797200', 1488315600, '1487846700', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '227451', '33313442', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Creshe International', '.Application Received.\r\nTest Administered on 23/2/17.Not Joining,Opted to join another school.\r\nAssessment & Application Paid .', 0, -10800, 1487797200, '', 0, 1, 87, 0, 90, 0, 0, 0, NULL),
(404, '2018-2019', '', 1, 0, 'Studying', 'Kamau Gakuru', 'Anthony Gakuru', '722877849', '722877849', '', 'tony@powerhire.co.ke', '', '', '', '', 'Evelyn Njoroge', '', '', '721481833', '721481833', '', 'eva.njoroge@gmail.com', '', '', '', '', '', 33, '1318539600', '1487797200', 1488315600, '1487847420', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '108084', '20247767', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Brookside Andy Pandy', '', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(405, '2017-2018', '', 1, 0, 'NotAdmitted', 'Munachimso Daniel Chukwuonye', 'Paul Chukwuonye', '734673568', '', '', 'ifeanyi.chukwuonye@gmail.com', '', '', '', '', ' Nancy Chukwuonye', '', '', '787436288', '', '', 'kayChukwuonye@yahoo.com', '', '', '', '', '', 33, '1312578000', '1487624400', 1488488400, '1487848020', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '375595', '61948492', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', 'From ICK.Not joining,opted to join another school.', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(406, '2017-2018', '', 1, 0, 'Terminated', 'Jasmine Akinyi Wayiera', 'David Wayiera', '722751041', '', '', 'wayieradavid@gmail.com', '', '', '', '', 'Faith Munyori ', '', '', '722778014', '', '', 'fmunyori@gmail.com', '', '', '', '', '', 33, '1314046800', '1487624400', 1488488400, '1487851740', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '434255', '61011131', '', '', '', '', '1504818000', '3', '2016-2017', '111', '.', '1504860600', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 33, 'ICK', '', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(410, '2017-2018', '', 1, 0, 'NotAdmitted', 'David Kagunda', 'Bedan Kagunda', '722591709', '', '', 'bedansinet@gmail.com', '', '', '', '', 'Evelyn Wangari', '', '', '722354000', '', '', 'evekaray@gmail.com', '', '', '', '', '', 33, '1297630800', '1443819600', -10800, '1487856960', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '574130', '68478191', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Muthiga Kindergarten', 'Visited School.Did assessment opted to go to another school.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(411, '2018-2019', '', 0, 0, 'NotAdmitted', 'Surina Kasaku', '', '', '', '', '', '', '', '', '', 'Priya Dias', NULL, '', '728435012', '', '', 'priyadharshinidias@gmail.com', '', '', '', '', '', 33, '1339189200', '1486501200', 0, '1487857380', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '230460', '66293165', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'KJA', 'Came for the Open-Morning.\r\nApplication not received.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(412, '2017-2018', '', 0, 0, 'NotAdmitted', 'Daniel Ngigi', '', '', '', '', '', '', '', '', '', 'Mrs Ngigi', NULL, '', '718621684', '', '', 'margaretwanjiru08@gmail.com', '', '', '', '', '', 33, '1322427600', '1486501200', 0, '1487857560', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '662811', '43902429', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergarten', 'Came for the Open-Morning.\r\nApplication form not received.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(413, '2018-2019', '', 0, 0, 'NotAdmitted', 'Ryaback Hono', '', '', '', '', '', '', '', '', '', 'Sarah Kagongo', NULL, '', '726334034', '', '', 'seshkangongo@yahoo.com', '', '', '', '', '', 30, '1376946000', '1486501200', 0, '1487857980', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '699597', '17018041', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Brookside Montessori', 'Came for Assessment.\r\nApplication form not received.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(414, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Dylan Mburu', 'Anthony Chege Mburu', '727371008', '727371008', '', 'tonimburu@gmail.com', '', 'Finance', '', 'Offgrid Electric', 'Sylvia Vito', '', 'parents', '716644475', '716644475', '', 'vito.sylvia@gmail.com', '', 'Pharmacist', '', 'Astrazeneca', '716644475', 34, '1305320400', '1487624400', 1488488400, '1488362460', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '259065', '33261521', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Waceke Mburu', 'Aunty', '703462113', '', '', 'Cfc Stanbic Head office', 0, 'ICK', 'Application Form Received.\r\nDid Assessment  on 21/2/17.\r\nPaid @ ICK.', 0, 1504558800, 1487624400, '', 0, 1, 48, 0, 48, 0, 0, 0, NULL),
(415, '2017-2018', '', 1, 0, 'NotAdmitted', 'Kyle Kamau', 'Mr Kamau', '', '', '', '', '', '', '', '', 'Mrs Kamau', '', '', '', '', '', '', '', '', '', '', '', 33, '', '1487624400', 1488488400, '1488362580', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '677121', '51937093', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', 'Application Form Not Received.\r\nDid Assessment  on 21/2/17.Not joining,opted to join another school.\r\nPaid @ ICK.\r\n', 0, -10800, 1487624400, '', 0, 1, 83, 0, 90, 0, 0, 0, NULL),
(416, '2017-2018', '', 1, 0, 'NotAdmitted', 'Nellie  Ngethe', 'Mr Ngethe', '', '', '', '', '', '', '', '', 'Mrs Ngethe', '', '', '', '', '', '', '', '', '', '', '', 33, '', '1487624400', 1488488400, '1488363180', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '941113', '40179443', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK', 'Application Form Not Received.\r\nDid Assessment  on 21/2/17.Not joining,opted to join another school.\r\nPaid @ ICK.\r\n', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(418, '2017-2018', '2017-2018', 1, 30, 'Terminated', 'Richard Abu Sesay', 'Richmond Sesay', '2327672911', '', '', 'rssesay@yahoo.com', '', '', '', '', 'Fatima Sesay', '', 'Mother', '708384194', '', '', 'ffsesay@unicef.org', '', '', '', '', '', 33, '1276117200', '1466542800', -10800, '1488365820', '', '', '', '', 1, 298, '', 7, 0, '', 'sharon', '164032', '72298799', '', '', '', '', '', '3', '2016-2017', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICK@SON', 'Started school from Year 1.\r\nAssessed done on 21/2/17.\r\nPaid for Assessment.', 0, -10800, 1487710800, '', 0, 1, 50, 0, 58, 0, 0, 0, NULL),
(427, '2016-2017', '2016-2017', 3, 40, 'NotAdmitted', 'Kevin Amani Kamau', 'N/A', '', '', '', '', '', '', '', '', 'E velyn Kamau', '', '', '721716411', '', '', 'evelyn.kamau@gmail.com', '', '', '', '', '', 40, '1122670800', '1489093200', -10800, '1489385880', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '424073', '62078372', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Heritage International School', 'Visited school.Came for assessment.Mother decided for child to remain in Uganda,work transffer cancelled.', 0, -10800, 1489093200, '', 1489352400, 3, 0, 40, 6, 34, 70, 52, NULL),
(428, '2017-2018', '', 0, 0, 'NotAdmitted', 'Tristian', 'Nil', '', '', '', '', '', '', '', '', 'Esther Wambui', NULL, '', '733920296', '', '', 'grapeshoe1@gmail.com', '', '', '', '', '', 42, '1077742800', '1489352400', 0, '1489476180', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '298812', '15903064', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Consolata Academy', 'Visited School.Will bring child for assessment date not specified', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(429, '2017-2018', '', 0, 0, 'NotAdmitted', 'Jaydan', 'Nil', '', '', '', '', '', '', '', '', 'Esther Wambui', NULL, '', '733920296', '', '', 'grapeshoe1@gmail.com', '', '', '', '', '', 39, '1162501200', '1489352400', 0, '1489476420', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '650619', '27449518', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Consolata Academy', 'Visited School. Will bring child for assessment date not specified.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(430, '2017-2018', '', 0, 0, 'NotAdmitted', 'Joy Kagiri', 'Nil', '', '', '', '', '', '', '', '', 'Wangui Kagiri', NULL, '', '727328151', '', '', 'wanguikagiri@gmail.com', '', '', '', '', '', 36, '1232917200', '1489352400', 0, '1489477620', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '773693', '55397703', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Garden Estate Academy', 'Visited School. Will bring child for assessment date not specified.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(431, '2017-2018', '', 0, 0, 'NotAdmitted', 'Winona Chilowa', 'Karanja W Karanja', '721715711', '', '', 'kwkaranja@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 64, '1247518800', '1488747600', 0, '1489478220', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '776109', '52443643', '', '', '', '', '', '3', '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Gifted Hands', 'Visited School. Looking around for schools not yet decided .', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(438, '2018-2019', '', 1, 0, 'Studying', 'Justin Omari Wanjui', 'Joseph B Wanjui', '0722853844', '0722853844', '', 'joseph.wanjui@gmail.com', '', '', '', '', 'Lydia C Wanjui', '', '', '0722239117', '0722239117', '', 'chamie.omari@gmail.com', '', '', '', '', '0722239117', 32, '1311368400', '1473195600', -10800, '1490687520', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '814699', '89226677', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Anne Njambi', 'Grandmother', '0723233813', '', '', '', 0, 'Brookside Montesorri Centre', '', 0, -10800, -10800, '', 1473627600, 2, 32, 0, 40, 0, 0, 0, NULL),
(442, '2018-2019', '2014-2015', 1, 47, 'Terminated', 'Jata Wambui Chege', 'Peter Chege Mugo', '722540642', '', '', 'peter.mugo1@gmail.com', '', 'Bussinessman', '', 'Jayden Limited', 'Winnie Chege', '', 'parents', '722833133', '722833133', '', 'gcmuritu@gmail.com', '', 'Administrator', '', 'UNICEF', '722833133', 34, '1316034000', '1409173200', 1488315600, '1490694360', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '728760', '92247473', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479980', 0, 'D', 'Cyrus Mugo', 'Uncle', '2716199', '725844448', '', 'Nil', 33, '', 'Application Received.\r\nTest Administered on 21/2/17.\r\n\r\n', 0, 1409173200, 1487710800, '', 1488488400, 2, 67, 0, 78, 0, 0, 0, NULL),
(443, '2018-2019', '2016-2017', 1, 30, 'Studying', 'Zak Andrew Ngumba', 'N/A', '', '', '', '', '', '', '', '', 'Sylvia Firth', '', 'mother', '0704055542', '704055542', '', 'sylviafirth@gmail.com', '', 'Manager', '', 'Deloitte', '0704055542', 34, '1313182800', '1471986000', 1471986000, '1490697180', '', '0716786092', '25488', '25488', 1, 123, '', 7, 0, '125', 'sharon', '144749', '88360910', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Fiona Mbiyo', 'Aunt', '723204277', '', 'mfyona@gmail.com', 'Kileleshwa Expo Villa Apartment', 0, 'ICK@SON', 'Application Received.\r\nTest Administered on 21/2/17.Admittted on 6/9/2017.\r\n', 0, -10800, 1487710800, '', 1488488400, 2, 87, 0, 82, 0, 0, 0, NULL),
(444, '2018-2019', '2016-2017', 1, 30, 'Studying', 'Joy Wairimu Kamau', 'Martin Kamau Kiarie', '0722972018', '0722972018', '', 'kamau.maliworld@gmail.com', '', 'Bussinessman', '', 'Self', 'Beatrice Lukose', '', 'parents', '0722659244', '0722659244', '', 'beautylukose@yahoo.com', '', 'Bussinesslady', '', 'Self', '0733659244', 34, '1300395600', '1456088400', 1457643600, '1490698620', '', '', '1645-00100 Nrb', '1645-00100 Nrb', 1, 123, '', 8, 0, '125', 'sharon', '570683', '50892309', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Moses Lukose', 'Brother', '0722540818', '', '', '', 0, 'Little Hearts Kindergarten', 'Application Received.\r\nTest Administered on 21/2/17.\r\n', 0, -10800, 1487710800, '', 1488488400, 2, 92, 0, 88, 0, 0, 0, NULL),
(446, '2018-2019', '2016-2017', 1, 30, 'Terminated', 'Ray Ruben Mbugua', 'Peter Ruhiu', '721328832', '', '', 'africa@freethechildren.com', '', 'Director', '', 'Free the Children', 'Michelle Hambly', '', 'parents', '723140454', '', '', 'health@freethechildren.com', '', 'Director', '', 'Free the Children', '723140454', 34, '1321995600', '1417726800', -10800, '1490767440', '', '', '54875-00200 Nrb', '54875-00200 Nrb', 1, 123, '', 7, 0, '125', 'sharon', '255691', '12115816', '', '', '', '', '1537304400', '3', '2017-2018', '111', '....', '1537361100', 0, 'D', 'Regi Ruhiu', 'Aunt', '722723469', '', 'regi@sunkist-travel.co.ke', 'Ngong Nairobi', 32, 'N/A', '', 0, -10800, 1487710800, '', 1420491600, 2, 50, 0, 88, 0, 0, 0, NULL),
(447, '2016-2017', '', 0, 0, 'Terminated', 'Mukami Nyatetu Waruingi', 'George Kabugi', '722747477', '', '', 'george@maverickdigital.co.ke', '', '', '', '', 'Tabitha Wambui', NULL, '', '722365831', '', '', 'twambui@gmail.com', '', '', '', '', '', 30, '1311886800', '1429650000', 0, '1490768160', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '358325', '19112810', '', '', '', '', '1503608400', '3', '2016-2017', '111', '.', '1503653700', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 30, 'Muthaiga Kindergarten', 'Did Assessment on 21/2/2017.', 0, 0, 1487710800, '', 1486069200, 2, 70, 0, 76, 0, 0, 0, NULL),
(449, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Ngengi Kamau', 'Peter Kamau Ngengi', '0722839448', '722839448', '', 'kamaungengi@gmail.com', '', 'Bussinessman', '', 'Self', 'Caroline Ngugi', '', 'parents', '0722556790', '722556790', '', 'ngugicaroline@gmail.com', '', 'Lecturer', '', 'JKUAT', '0722556790', 34, '1307566800', '1483909200', 1488315600, '1490768880', '', '', '503-00200 Nrb', '503-00200 Nrb', 232, 123, '', 7, 0, '125', 'sharon', '882763', '82636502', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Beth Ngengi', 'Grandmother', '', '0725705353', '', 'Riverside Rd Nrb', 0, 'ICK@SON', 'Did Assessment on 21/2/2017.', 0, -10800, 1487710800, '', 1488488400, 2, 100, 0, 98, 0, 0, 0, NULL),
(450, '2018-2019', '2013-2014', 1, 47, 'Studying', 'Sapphire Makena Kinyanjui', 'Eric Kinyanjui', '701081131', '735324124', '', 'eric.k.nganga@gmail.com', '', 'Class Teacher', '', 'School of the Nations', 'Sarah Kinyanjui', '', 'parents', '728520417', '763520417', '', 'snjiriri@yahoo.com', '', 'HR Manager', '', 'Equity Bank', '728520417', 34, '1286571600', '1488142800', 1374440400, '1490769120', '', '', '1645-00502 Karen', '1645-00502 Karen', 1, 123, '', 8, 0, '125', 'sharon', '575009', '62211225', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Carol Maringa', 'Aunt', '0726052 459', '734999975', 'nyambura9297@gmail.com', 'Morningside Office Park', 0, 'ICK@SON', 'Did Assessment on 21/2/2017.', 0, -10800, 1487710800, '', 1488488400, 2, 70, 0, 86, 0, 0, 0, NULL),
(452, '2017-2018', '', 1, 0, 'Studying', 'Martin Onyango Ouko', 'Naftal Angwenyi', '', '', '', 'naftaloa@gmail.com', '', '', '', '', 'Sheba Akello', '', '', '', '', '', 'sheba_n@hotmail.com', '', '', '', '', '', 30, '1336078800', '1490389200', 1488315600, '1490788140', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '271084', '43017087', '', '', '', '', '', '3', '2016-2017', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Ps 159Q', 'Application received.To come for assessment on 17/8/2017.', 0, -10800, 1487624400, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(454, '2018-2019', '', 1, 0, 'Studying', 'Brendan Samuel Onyiego', 'Naftal Angwenyi', '0716909228', '', '', 'naftaloa@gmail.com', '', '', '', '', 'Sheba Akello', '', 'Both Parents', '', '', '', 'sheba_n@hotmail.com', '', '', '', '', '0716909228', 41, '1134334800', '1490389200', -10800, '1490788560', '', '', '', '', 1, 237, '', 7, 0, '125', 'sharon', '504528', '17421551', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Papa Peters ', 'Uncle', '0712181818', '', '', '', 0, 'Ps 159Q', 'Admitted', 0, -10800, -10800, '', 0, 1, 78, 70, 48, 0, 0, 0, NULL),
(455, '2018-2019', '', 1, 0, 'Studying', 'Angelica Antonio', 'Luzolo Antonio', '', '', '', 'luzolosanches@hotmail.com', '', '', '', '', 'Monadia Antonio', '', '', '0798362789', '0798362789', '', 'monadiaantonio@yahoo.com.br', '', '', '', '', '0798362789', 33, '1326661200', '1485896400', -10800, '1490789280', '', '', '', '', 1, 279, '', 8, 0, '278', 'sharon', '796360', '13140875', '', '', '', '', '', '', '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'Chilebicado', '', 0, 1485896400, 1485896400, '', 1485896400, 2, 0, 0, 0, 0, 0, 0, 29),
(456, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Niara Wanjiru Mungai', 'N/A', '0722426386', '0722426386', '', 'rufus.gacheru@gmail.com', '', '', '', '', 'Debbie Mungai', '', 'Both Parents', '0723290324', '0723290324', '', 'kanyuadebbie@gmail.com', '', '', '', '', '0722426386', 33, '1333141200', '1490734800', 1496955600, '1490977680', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '932358', '83580520', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Damaris Kanyua', 'Grandmother', '0722377570', '', '', '', 0, 'Mathari Kindergarten', 'Admitted', 0, 1496955600, 1496005200, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(457, '2017-2018', '', 1, 0, 'NotAdmitted', 'Jasper ', 'Chris Hoy ', '', '', '', 'christopherhoy@gmail.com', '', '', '', '', 'Nil', '', '', '', '', '', '', '', '', '', '', '', 36, '', '1490130000', -10800, '1491205320', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '815122', '27784843', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Visited School.General School inquiry,to call after making decision.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(458, '2017-2018', '', 1, 0, 'NotAdmitted', 'Cathreine', 'Chris Hoy', '', '', '', 'christopherhoy@gmail.com', '', '', '', '', 'Nil', '', '', '', '', '', '', '', '', '', '', '', 33, '', '1490130000', -10800, '1491205380', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '289310', '71696846', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Visited School.General School inquiry.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(459, '2018-2019', '', 1, 0, 'NotAdmitted', 'Nicholas Stiles', 'David Stiles', '716584636', '', '', 'stilesdavid@gmail.com', '', '', '', '', 'Pamela Stiles', '', '', '737569399', '', '', 'pamelapappas@gmail.com', '', '', '', '', '', 33, '1349730000', '1489611600', -10800, '1491206100', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '405809', '80808970', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergatren', 'Visited School.General School inquiry.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(460, '2017-2018', '', 1, 0, 'NotAdmitted', 'Sanaipei Ivy', 'Fredrick Ledelea', '721798559', '', '', 'fledelea@gmail.com', '', '', '', '', 'NIL', '', '', '', '', '', '', '', '', '', '', '', 38, '1243890000', '1489525200', -10800, '1491208200', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '589617', '47530562', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Moi Education Centre', 'Met with Mrs Im,shadow teacher needed.To confirm on admissions', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(461, '2017-2018', '', 0, 0, 'NotAdmitted', 'Ivan Saruni', 'Fredrick Ledelea', '721798559', '', '', 'fledelea@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1337202000', '1489525200', 0, '1491208320', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '271727', '57993322', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Moi Education Centre', 'Visited School Met Mrs Im.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(462, '2017-2018', '', 0, 0, 'NotAdmitted', 'Charity Murage', 'N/A', '', '', '', '', '', '', '', '', 'Ruth Murage', NULL, '', '722756225', '', '', 'wanjiku_murage@yahoo.co.uk', '', '', '', '', '', 38, '1188507600', '1489525200', 0, '1491209700', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '180843', '14246944', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Loreto Msongari', 'Visited School.Met Mrs Im.Will come for assessment on 27/4/2017. ', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(463, '2018-2019', '', 1, 0, 'Studying', 'Enea Upendo Cavallo', 'N/A', '0728729774', '0728729774', '', '', '', '', '', '', 'Silvia Glolello', '', '', '0701473850', '0701473850', '', 'silvia@culturalvideo.org', '', '', '', '', '0701473850', 32, '1333314000', '1489352400', -10800, '1491210300', '', '', '', '', 1, 267, '', 7, 0, '335', 'sharon', '589085', '18796164', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Vincenzo Nucca', 'Family Friend', '0727049049', '', '', '', 0, 'Cottage School', 'Visited School.Met with Mrs Im and Ms Elizabeth', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(464, '2017-2018', '', 0, 0, 'NotAdmitted', 'Gus Hurt', 'Robert Hurt', '', '', '', '', '', '', '', '', 'Catherine Osborn', NULL, '', '725800556', '', '', 'cateosborn@hotmail.com', '', '', '', '', '', 33, '1302382800', '1488315600', 0, '1491214860', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '985791', '35641711', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergatren', 'Visited School.Met with Mrs Im', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(465, '2017-2018', '', 0, 0, 'NotAdmitted', 'Oscar Hurt', 'Robert Hurt', '', '', '', '', '', '', '', '', 'Catherine Osborn', NULL, '', '725800556', '', '', 'cateosborn@hotmail.com', '', '', '', '', '', 33, '1302382800', '1488315600', 0, '1491214980', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '230932', '56521195', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergatren', 'Visited School.Met with Mrs IM', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(466, '2017-2018', '', 0, 0, 'NotAdmitted', 'Namar Bhachu', 'Mr Bhachu', '713844081', '', '', 'k_bha@gmail.com', '', '', '', '', 'Mrs Bhachu', NULL, '', '', '', '', '', '', '', '', '', '', 41, '1169931600', '1487106000', 0, '1491215460', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '331918', '95228017', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Premier', 'Visited School.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(467, '2017-2018', '', 0, 0, 'NotAdmitted', 'Ekkam Bhachu', 'Mr Bhachu', '713844081', '', '', 'k_bha@gmail.com', '', '', '', '', 'Mrs Bhachu', NULL, '', '713844081', '', '', '', '', '', '', '', '', 64, '1249938000', '1487106000', 0, '1491215700', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '947681', '30596001', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Premier', 'Visited School.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(468, '2017-2018', '', 0, 0, 'NotAdmitted', 'Isaac Philip', 'N/A', '', '', '', '', '', '', '', '', 'Lucy Gachanja', NULL, '', '722700559', '', '', 'lucykarimigachanja@gmail.com', '', '', '', '', '', 36, '1170363600', '1485982800', 0, '1491217200', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '940654', '50871213', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Potterhouse', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(469, '2018-2019', '', 0, 0, 'NotAdmitted', 'Tafarah Odemba', 'Julius Odemba', '722841138', '', '', 'joedemba@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 48, '1372712400', '1485810000', 0, '1491220140', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '782206', '34002366', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kissfur', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(470, '2017-2018', '', 1, 0, 'NotAdmitted', 'Alex Sirma', 'Zack Kiok', '723537407', '', '', 'zlodungokiok@gmail.com', '', '', '', '', 'Nil', '', '', '', '', '', '', '', '', '', '', '', 33, '1281906000', '1485291600', -10800, '1491221160', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '403537', '66064607', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'N/A', 'Visited School.General School inquiry,to call after making decision.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(471, '2017-2018', '', 0, 0, 'NotAdmitted', 'Zarah Kamau', 'N/A', '', '', '', '', '', '', '', '', 'Patricia Mutua', NULL, '', '', '', '', 'mwendepat@yahoo.com', '', '', '', '', '', 33, '1282597200', '1485205200', 0, '1491221460', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '705114', '14664386', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Sersah English', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(472, '2017-2018', '', 0, 0, 'Studying', 'Ella Chiweta Oduah', 'Oduah Onyinye', '', '', '', 'onyinye.duah@yahoo.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1315947600', '1481749200', 0, '1491221700', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '625204', '56046536', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Blossom Fountain Model School', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(473, '2017-2018', '', 0, 0, 'NotAdmitted', 'Amanda Chiweta Oduah', 'Oduah Onyinye', '', '', '', 'onyinye.duah@yahoo.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 48, '1379019600', '1481749200', 0, '1491221820', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '569942', '90221491', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Blossom Fountain Model School', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(474, '2017-2018', '', 0, 0, 'NotAdmitted', 'Denzel Bururu ', 'Collen Bururu', '724537371', '', '', 'bururucollen@yahoo.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 64, '1115931600', '1481749200', 0, '1491221940', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '877149', '60945718', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Selborne Routledge', 'Visited School', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(476, '2018-2019', '2017-2018', 1, 30, 'Studying', 'Natasha Wambui Kibuchi', 'Patrick Kibuchi ', '0726465533', '202214072', '', 'pkibuchi@kibuchi.com', '', 'Advocate', '', 'Kibuchi & Company', 'Esther Kungu', '', 'parents', '0713812051', '203676305', '', 'ewkungu@gmail.com', '', 'Legal Counsel', '', 'AG Kenya', '0727780990', 34, '1288299600', '1455915600', 1457643600, '1492675980', '', '', '28647-00200 nrb', '28647-00200 nrb', 1, 123, '', 8, 0, '125', 'sharon', '480836', '81877301', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Robert Kibuchi', 'Uncle', '0721677141', '', '', '', 0, 'Nairobi Academy', '', 0, -10800, 1461704400, '', 1461704400, 3, 100, 0, 40, 0, 0, 0, NULL),
(478, '2017-2018', '', 0, 0, 'NotAdmitted', 'Temple Tuju', 'Nil', '', '', '', '', '', '', '', '', 'Mary Munge', NULL, '', '721273672', '', '', 'btimpex.ltd@gmail.com', '', '', '', '', '', 33, '1313096400', '1491253200', 0, '1493970120', '', '', '', '', 0, 0, '', 7, 0, NULL, 'wambua', '767135', '64410570', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Early Learning Montesorri', 'Visited School.Assessment date not set.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(482, '2017-2018', '', 0, 0, 'Terminated', 'Anna Aninata Michael', 'Frederick Kilby', '729871860', '', '', 'kilbyf@gmail.com', '', '', '', '', 'Carol Kuria', NULL, '', '723200316', '', '', 'carolkuria12@gmail.com', '', '', '', '', '', 30, '1342040400', '1465160400', 0, '1494398640', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '673050', '83600539', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1536308340', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 30, 'Chreche Internation Kindergarten', '', 0, 0, 0, '', 1465160400, 1, 0, 0, 0, 0, 0, 0, NULL),
(483, '2018-2019', '', 1, 0, 'Studying', 'Grace-Maelys Kouakou', 'Kouakou N Remi', '', '', '', 'kouakou@un.org', '', '', '', '', 'Kouame Marguerite', '', '', '0706238647', '0706238647', '', 'kouame@un.org', '', '', '', '', '0706238647', 32, '1332709200', '1473109200', -10800, '1494399360', '', '', '', '', 1, 237, '', 8, 0, '125', 'sharon', '572311', '45432404', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Brugette', '', '0795715011', '', '', '', 0, 'ICK', '', 0, -10800, -10800, '', 1421010000, 1, 0, 0, 0, 0, 0, 0, NULL),
(485, '2018-2019', '', 1, 0, 'Studying', 'Tamutenda Allan Mhosva', 'Nyasha Mhosva', '0734918788', '0734918788', '', 'mhosvan@gmail.com', '', '', '', '', 'Blessings Mhosva', '', '', '0700100447', '0700100447', '', 'bnyaruviro@gmail.com', '', '', '', '', '0700100447', 32, '1293656400', '1455051600', -10800, '1494401160', '', '', '', '', 1, 339, '', 7, 0, '338', 'sharon', '966531', '50571688', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Mucha Mlingo', 'Aunt', '0732891089', '', '', '', 0, 'Waldorf Kindergarten', '', 0, -10800, -10800, '', 1473109200, 1, 0, 0, 0, 0, 0, 0, NULL),
(486, '2018-2019', '', 1, 0, 'Studying', 'Daniella Ngonyo Kamau', 'Peter Kamau Ngengi', '722839448', '', '', 'kamaungengi@gmail.com', '', '', '', '', 'Caroline Ngugi', '', '', '722556790', '', '', 'ngugicaroline@gmail.com', '', '', '', '', '', 30, '1377637200', '1473627600', -10800, '1494407460', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '778540', '88766262', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Lavington Montesori Kindergarten', '', 0, -10800, -10800, '', 1483995600, 2, 0, 0, 0, 0, 0, 0, NULL),
(487, '2018-2019', '', 1, 0, 'Terminated', 'Jeanne Nyawira Ikere', 'Francis Njuguna Ikere', '724434217', '', '', 'ikerefn@gmail.com', '', '', '', '', 'Teresa Odula', '', '', '735765869', '', '', 'todula@gmail.com', '', '', '', '', '', 30, '1359320400', '1452632400', -10800, '1494407820', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '445140', '81384179', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308400', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 48, 'Playstreet Kindergarten', '', 0, -10800, -10800, '', 1473109200, 1, 0, 0, 0, 0, 0, 0, NULL),
(488, '2018-2019', '', 1, 0, 'Studying', 'Ahadi Ayuya Yaya', 'N/A', '', '', '', '', '', '', '', '', 'Rose Yaya', '', '', '0722866956', '0722866956', '', 'yayalisarose@gmail.com', '', 'Teacher', '', 'School Of The Nations', '0722866956', 30, '1358370000', '1452632400', -10800, '1494408120', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '569587', '35079136', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'N/A', '', 0, -10800, -10800, '', 1473109200, 1, 0, 0, 0, 0, 0, 0, NULL),
(489, '2018-2019', '', 1, 0, 'Studying', 'Ruby Wendo Kinyanjui', 'Eric Kinyanjui', '701081131', '', '', 'eric.k.nganga@gmail.com', '', '', '', '', 'Sarah Kinyanjui', '', '', '728520417', '', '', 'snjiriri@yahoo.com', '', '', '', '', '', 30, '1375131600', '1465160400', -10800, '1494408420', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '609905', '24972548', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'N/A', '', 0, -10800, -10800, '', 1465160400, 1, 0, 0, 0, 0, 0, 0, NULL),
(491, '2016-2017', '', 0, 0, 'Terminated', 'Ahadi Makena Gitahi', 'Philip Gitahi', '736154684', '', '', 'pgitahi@gmail.com', '', '', '', '', 'Brenda Gacheru', NULL, '', '723499416', '', '', 'brenda.gacheru@unhabitat.org', '', '', '', '', '', 47, '1377464400', '1425848400', 0, '1494409500', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '816542', '63267845', '', '', '', '', '1501794000', '3', '2016-2017', '111', '.', '1501838880', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 47, 'N/A', '', 0, 0, 0, '', 1473109200, 1, 0, 0, 0, 0, 0, 0, NULL),
(495, '2017-2018', '', 0, 0, 'NotAdmitted', 'Amy Kimei', 'Nil', '', '', '', '', '', '', '', '', 'Naomi Aruya', NULL, '', '724737181', '', '', 'naomiaruya@gmail.com', '', '', '', '', '', 41, '1076446800', '1492635600', 0, '1494511020', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '885842', '48456204', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kirawa Road', 'Came & Paid for assessment & Application on 21/4/2017.Met with Mrs Im on20/4/17.Not yet decided on Sept 2017 admissions.', 0, 0, 1492722000, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(496, '2018-2019', '', 1, 0, 'NotAdmitted', 'Christian Fombe', 'Nil', '', '', '', '', '', '', '', '', 'Moureen Fombe', '', '', '726340333', '', '', 'mauobondo@yahoo.com', '', '', '', '', '', 33, '1350680400', '1492722000', -10800, '1494574800', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '469172', '47170225', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Muthaiga Kindergarten', 'Phone Inquiry to consider  joining yr 2 in September 2018-2019.Needs follow up.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(499, '2017-2018', '', 0, 0, 'NotAdmitted', 'Ethan Mugambi', 'Francis Mwiti', '721796778', '', '', 'mwitifm@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1312491600', '1493240400', 0, '1495007820', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '924246', '76401191', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Bletag Kindergarten', 'Visited School.Talked with Mrs Im.Cancelled the application;said fees not within budget range.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(501, '2018-2019', '', 0, 0, 'NotAdmitted', 'Karla  Wambui', 'Nil', '', '', '', '', '', '', '', '', 'Njeri Gakuo', NULL, '', '722992400', '', '', 'njeri.khacheso@gmail.com', '', '', '', '', '', 34, '1275598800', '1493240400', 0, '1495008720', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '313342', '50060203', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Parklands Baptist  School', 'Met with Mrs Im.To bring kids for assessment on May 2018.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(502, '2018-2019', '', 0, 0, 'NotAdmitted', 'Nellie Nekunda', 'Nil', '', '', '', '', '', '', '', '', 'Njeri Gakuo', NULL, '', '722992400', '', '', 'njeri.khacheso@gmail.com', '', '', '', '', '', 30, '1358456400', '1493240400', 0, '1495008840', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '100764', '97674351', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Parklands Baptist  School', 'Met with Mrs Im.To bring kids for assessment on May 2018.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(506, '2017-2018', '', 0, 0, 'NotAdmitted', 'Leonel Wambua', 'Stephen Wambua', '728063780', '', '', 'wambuasteve@gmail.com', '', '', '', '', 'Margaret Wambua', NULL, '', '728063780', '', '', 'maggieorina@gmail.com', '', '', '', '', '', 33, '1265230800', '1493672400', 0, '1495011060', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '735089', '90458105', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'My School Montessori', 'Both Parents Met With Mrs Im.Booked for an Assessment in the month on June 2017 i.e When the Shadow Teacher will be available.Child is Autistic.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(507, '2017-2018', '', 0, 0, 'NotAdmitted', 'Jamie Mwenda ', 'Nil', '', '', '', '', '', '', '', '', 'Caroline Mugambi', NULL, '', '721303003', '', '', 'carolmwogera@yahoo.com', '', '', '', '', '', 34, '1285794000', '1493845200', 0, '1495012680', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '635548', '78516970', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Shani', 'Visited the School.To call on date for Assessment.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(508, '2017-2018', '', 0, 0, 'NotAdmitted', 'Muchai Kimathi', 'Simon Onyango', '724209752', '', '', 'bradeymo@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 44, '948747600', '1493845200', 0, '1495018200', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '222444', '33223056', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St Mary', 'Visited School.Wanted to make Inquiry.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(511, '2017-2018', '', 1, 0, 'NotAdmitted', 'Adelina Mpinga', 'Nil', '', '', '', '', '', '', '', '', 'Beatrice Kinyanjui', '', '', '715777040', '', '', 'bkinyanjui@global.t-bird.edu', '', '', '', '', '', 42, '1064610000', '1493845200', -10800, '1495093980', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '535522', '45497104', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Loreto Msongari ', 'Visited School.General Inquiry of Schools.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(514, '2017-2018', '', 0, 0, 'Studying', 'Aleina Wanjiku', 'N/A', '', '', '', '', '', '', '', '', 'Grace Mwangi', NULL, '', '700416793', '', '', 'gmitho@gmail.com', '', '', '', '', '', 30, '1331758800', '1494277200', 0, '1495095120', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '302718', '30124223', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Madari', 'Visited School.Paid Application and Assessment on 18/5/17. ', 0, 0, 1494277200, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(515, '2017-2018', '', 0, 0, 'NotAdmitted', 'Joy Gathungu', 'Nil', '', '', '', '', '', '', '', '', 'Faith N Gathungu', NULL, '', '722338954', '', '', 'faithgathungu@yahoo.com', '', '', '', '', '', 40, '1145480400', '1494277200', 0, '1495095960', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '681709', '75824815', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Braeside', 'Visited School Met with Mrs Im on 12/5/17.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(516, '2017-2018', '', 1, 0, 'NotAdmitted', 'Baraka Gathungu', 'Nil', '', '', '', '', '', '', '', '', 'Faith N Gathungu', '', '', '722338954', '', '', 'faithgathungu@yahoo.com', '', '', '', '', '', 30, '1318885200', '1494277200', -10800, '1495096260', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '621573', '16232598', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Braeside', 'Visited School Met with Mrs Im on 12/5/17.Assessment date not set.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(517, '2018-2019', '', 1, 0, 'NotAdmitted', 'Isabel Muringi Ramashia Wambugu', 'Nil', '', '', '', '', '', '', '', '', 'Rejoice Wambugu', '', '', '724005052', '', '', 'jamesandrejoice@yahoo.com', '', '', '', '', '', 33, '1327611600', '1494450000', -10800, '1495096800', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '509075', '72718605', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergarten', 'Visited School.General Inquiry of Schools.Met with Mrs Im.To join in Sept 2018.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(518, '2018-2019', '', 0, 0, 'NotAdmitted', 'Ramashia Wambugu', 'Nil', '', '', '', '', '', '', '', '', 'Rejoice Wambugu', NULL, '', '724005052', '', '', 'jamesandrejoice@yahoo.com', '', '', '', '', '', 33, '1327611600', '1494450000', 0, '1495096980', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '565464', '91651276', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergarten', 'Visited School.General Inquiry of Schools.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(519, '2017-2018', '', 0, 0, 'NotAdmitted', 'Sabena Kilonzo', 'Jason Jones', '722707888', '', '', 'sabenakilonzo@yahoo.com', '', '', '', '', '', NULL, '', '722728343', '', '', '', '', '', '', '', '', 30, '1356123600', '1495141200', 0, '1495460400', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '186112', '32928826', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Braeburn', 'Visited School.General Inquiry.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(520, '2017-2018', '', 0, 0, 'NotAdmitted', 'Lesidi Kariuki', 'Paul Kariuki', '721357171', '', '', 'paulkariuki@gmail.com', '', '', '', '', 'Gladys Kigen', NULL, '', '724401953', '', '', 'kigenigladys@gmail.com', '', '', '', '', '', 30, '1343595600', '1495400400', 0, '1495460640', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '315990', '46373807', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Imani Kindergarten', 'Met with Mrs Im on 22/5/17.To bring child for assessment on 6/6/17.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(521, '2017-2018', '', 0, 0, 'NotAdmitted', 'Leshan Wainaina', 'Paul Kariuki', '721357171', '', '', 'paulkariuki@gmail.com', '', '', '', '', 'Gladys Kigen', NULL, '', '724401953', '', '', 'kigenigladys@gmail.com', '', '', '', '', '', 47, '1393016400', '1495400400', 0, '1495460760', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '969498', '82909662', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Imani Kindergarten', 'Met with Mrs Im on 22/5/17.To bring child for assessment on 6/6/17.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(522, '2017-2018', '', 0, 0, 'NotAdmitted', 'Zuhri Cherop', 'Nil', '', '', '', '', '', '', '', '', 'Minaywa Laboso', NULL, '', '710700090', '', '', 'minaywal@gmail.com', '', '', '', '', '', 38, '1209762000', '1495400400', 0, '1495461180', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '317728', '70652625', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'NIS', 'Met with Mrs Im on 22/5/17.To call on the date for assessment .', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(523, '2017-2018', '', 0, 0, 'NotAdmitted', 'Eneo Kimutai', 'Nil', '', '', '', '', '', '', '', '', 'Minaywa Laboso', NULL, '', '710700090', '', '', 'minaywal@gmail.com', '', '', '', '', '', 48, '1351285200', '1495400400', 0, '1495461240', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '378507', '26337952', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kiddie Steps', 'Met with Mrs Im on 22/5/17.To call on the date for assessment .', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(527, '2018-2019', '2016-2017', 3, 38, 'Terminated', 'Amy Murugi Muthee', 'Andrew Muthee Gitau', '728063780', '706859898', '', 'andrewmuthee@gmail.com', '', 'Businessman ', '', 'AMG Realtors Ltd', 'Agnes Waruguru Muthee', '', 'Parents', '717146693', '706859898', '', 'waru.muthee@gmail.com', '', 'Accountant', '', 'AMG Realtors Ltd', '737669037', 40, '1166734800', '1493931600', 1496005200, '1496043840', '', '606859868', 'P.O BOX 565-00618', 'P.O BOX 565-00618', 1, 123, '', 8, 0, '125', 'sharon', '826198', '95861968', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1535479500', 0, 'D', 'Vasiliah Gitau', 'Grandmother', '722419808', '', '', 'Mwalimi Motors Exit  7 off Thika Rd', 39, 'Kianda School', 'Application and assessment paid on 5/5/17.To report to school after mid-term.5/6/17.Enrolled.', 0, 1496610000, 1493931600, '', 1496005200, 3, 28, 20, 72, 0, 0, 0, NULL),
(529, '2018-2019', '2014-2015', 1, 33, 'Studying', 'Beryl Nsambu Luzitu.', 'Guy Luzitu		', '717574863', '2.12E+11', '', 'gluzitu@yahoo.fr', '', 'Aviation Transport Officer', '', 'World Food Program', 'Christelle Kunda', '', 'Both Parents', '717574863', '717574863', '', 'chkunda@hotmail.com', '', 'Businesslady', '', 'Self-Employed', '717574863', 39, '1191358800', '1392584400', 1392584400, '', '', '', 'P.O.BOX 2459-00606', '', 1, 235, '', 7, 0, '236', 'student', '414526', '25168296', '', '', '', '', '', '', '', '', '', '', 0, 'D', 'Peter', 'Family Friend', '786818000', '729818000', 'shatsi6@hotmail.com', 'N/A', 0, '', '', 0, -10800, 1392584400, '', 0, 0, 65, 0, 86, 0, 0, 0, 9),
(530, '2016-2017', '2016-2017', 1, 32, 'Studying', 'Abeiku Nhyira Owusu-Biney.', 'Alex Owusu Biney		', '734357967', '', '', 'bineya@gmail.com', '', 'Biochemist', '', 'UNEP', 'Jackie Owusu Biney	', '', 'Both Parents', '736965198', '', '', 'owusubineyj@gmail.com', '', 'Businesslady', '', 'Self-Employed', '736965198', 33, '1290546000', '1456174800', -10800, '', '', '', 'P.O.BOX 47074-00100', '', 1, 249, '', 7, 0, '125', 'student', '492357', '61230231', '', '', '', '', '', '', '', '', '', '', 0, 'D', 'Gifty Nafrah', 'Aunty', '712082711', '', 'Nil', 'Nil', 0, 'I.C.K', '.', 0, -10800, 1456174800, '', 1456174800, 0, 0, 0, 0, 0, 0, 0, 30),
(532, '2018-2019', '2017-2018', 1, 34, 'Studying', 'Riday Mahesh Amit Vithlani', 'Amit Vithlani', '0740778787', '0740778787', '', 'avi.london1@gmail.com', '', '', '', '', 'Mita Vithlani', '', '', '0790122042', '0790122042', '', 'mitdevani@hotmail.com', '', '', '', '', '0790122042', 36, '1288558800', '1495746000', -10800, '1496226180', '', '', '', '', 1, 226, '', 7, 0, '125', 'sharon', '996497', '36334798', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Himisha Vithlani', 'Aunt', '0724716000', '', '', 'Nil', 0, 'Bips (South Africa)', '..', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(533, '2017-2018', '2017-2018', 1, 30, 'Terminated', 'Jaden Waruhiu', 'Simon Kimani', '721212465', '', '', 'swtruhiu@gmail.com', '', '', '', '', 'Mrs Kimani', '', '', '', '', '', '', '', '', '', '', '', 30, '1327957200', '1487019600', -10800, '1496235600', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '747870', '71171989', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504703520', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 30, 'Imani Montesorri', 'Met with Mrs Im on 22/5/17.Brought child for assessment on 6/6/17.\r\n', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(534, '2017-2018', '2016-2017', 3, 48, 'Terminated', 'Kamoduwami Kandi', 'Patrick Kandi', '211912333', '2.12E+11', '', 'kkereyo@gmail.com', '', 'Development Expert', '', 'Goverment Of South Sudan', 'Asha Arabi', '', 'Mother & Grandmother.', '717734863', '2.55E+11', '', 'aisha.arabi@gmail.com', '', 'Gender & Development Specialist', '', 'Trademark East Africa', '715550141', 48, '1345842000', '1496696400', -10800, '1496732100', '', '', '', '', 232, 285, '', 7, 0, '125', 'sharon', '796647', '90618593', '', '', '', '', '1515358800', '2', '2017-2018', '111', '..', '1519117200', 0, 'D', '', '', '', '', '', '', 47, 'Cambridge School', 'Joined halfway through the term on 6/6/2017.', 0, 1496696400, 1496696400, '', 1496696400, 3, 0, 0, 0, 0, 0, 0, NULL),
(537, '2017-2018', '2016-2017', 3, 47, 'Terminated', 'Wenepai Kandi', 'Patrick Kandi', '211912333', '2.12E+11', '', 'kkereyo@gmail.com', '', 'Development Expert', '', 'Goverment Of South Sudan', 'Asha Arabi', '', 'Mother & Grandmother.', '715550141', '2.55E+11', '', 'aisha.arabi@gmail.com', '', 'Gender & Development Specialist', '', 'Trademark East Africa', '715550141', 47, '1415739600', '1496696400', -10800, '1496733360', '', '', '', '', 232, 285, '', 8, 0, '125', 'sharon', '876833', '81242381', '', '', '', '', '1515358800', '2', '2017-2018', '111', '..', '1515654180', 0, 'D', '', '', '', '', '', '', 47, 'N/A', 'Joined halfway through the term on 6/6/2017.', 0, 1496696400, 1496696400, '', 1496696400, 3, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(539, '2017-2018', '2016-2017', 3, 47, 'Studying', 'Keene  Kiplangat Michu', 'Mbiu Joram K', '722444437', '', '', 'mbui-ka@yahoo.com', '', '', '', '', 'Brenda Chumba', '', '', '724710272', '', '', 'chumbabrenda@yahoo.com', '', '', '', '', '', 48, '1351803600', '1496869200', -10800, '1496915640', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '220421', '33606310', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Studies at ICK in Eldama Ravine.', 0, -10800, -10800, '', 1496869200, 3, 0, 0, 0, 0, 0, 0, NULL),
(542, '2017-2018', '2017-2018', 1, 36, 'NotAdmitted', 'Kamsi Mbane', 'Chima Mbane fo', '799872484', '', '', 'mbanefo76@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 36, '1232658000', '1497819600', 0, '1498125840', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '699588', '39676574', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Corona Primary School', 'Met with Mrs Im.To come for an assessment on 21/7/2017.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(543, '2017-2018', '2017-2018', 1, 33, 'NotAdmitted', 'Kamara Mbane', 'Chima Mbane fo', '799872484', '', '', 'mbanefo76@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1291582800', '1497819600', 0, '1498125960', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '686862', '13943528', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Corona Primary School', 'Met with Mrs Im.To come for an assessment on 21/7/2017.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(544, '2018-2019', '2018-2019', 1, 33, 'NotAdmitted', 'Adam Msiry', 'Bhavesa Msiry', '733996754', '', '', 'sammistry07@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1335992400', '1497992400', 0, '1498126500', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '307426', '43886638', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Aga Khan Primary', 'Met with Mrs Im.Attended Red class orientation on 22/6/2017.to confirm on date for assessment.\r\n', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(545, '2017-2018', '2017-2018', 1, 47, 'NotAdmitted', 'Austin Karani', 'Jasper Mbiuki', '721812337', '', '', 'jasper@optionone.co.ke', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 47, '', '1497992400', 0, '1498649880', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '896099', '38931162', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'JKA', '\r\nDriver had been sent to pick application package.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(546, '2017-2018', '2017-2018', 1, 36, 'NotAdmitted', 'G Muiruri', 'G Muiruri', '722755865', '', '', 'guy@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 36, '1211835600', '1498165200', 0, '1498650360', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '253015', '77109783', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Pelinda', '\r\nVisited School.General Inquiry.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(549, '2017-2018', '2017-2018', 1, 47, 'NotAdmitted', 'Geabiella', 'Alfonce', '729658605', '', '', 'aflonceb33@gmail.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 47, '1385413200', '1499720400', 0, '1499767800', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '825280', '23084188', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Brookside', '\r\nGeneral Inquiry.Visited School.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(550, '2018-2019', '2017-2018', 1, 30, 'Terminated', 'Amir Hosein Deillan ', 'Morteza', '701947309', '202344215', '', 'mrtz.dln@gmail.com', '', 'Diplomat', '', 'Iranian Embassy', 'Leilla', '', 'Parents', '790554336', '', '', 'mrtz.dln@gmail.com', '', 'N/A', '', 'N/A', '790554336', 33, '1312837200', '1499288400', 1499288400, '1499768280', '', '', '', '', 1, 292, '', 7, 0, '293', 'sharon', '127117', '40020290', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308280', 0, 'D', 'Ahmad Galandari', 'Friend', '792764801', '2.54E+11', '', 'Iranian Embassy', 30, 'Kenwood Kindergarten', 'Met with Mrs Im,Dad from Iranian Embassy residing in Kenya for only 4 years.', 0, 1504558800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(551, '2017-2018', '2017-2018', 1, 48, 'NotAdmitted', 'Thea Tsefai', 'Nil', '', '', '', '', '', '', '', '', 'Christine', NULL, '', '721774928', '', '', 'christinegitari@gmail.com', '', '', '', '', '', 48, '1359752400', '1499288400', 0, '1499768640', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '757962', '33219395', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Losana', '\r\nVisited School.General Inquiry.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(554, '2017-2018', '2017-2018', 1, 33, 'Terminated', 'Raha Jasmine Mwaura.', 'Paul Mwaura', '712962049', '', '', 'ndichupm@gmail.com', '', '', '', 'Fintech', 'Grace Msalame', '', 'Mother', '722527611', '', '', 'sowairina@gmail.com', '', 'Media/Ministry', '', 'Self-Employed', '722527611', 33, '1302642000', '1498597200', -10800, '', '', '', 'P.O.BOX 76611-527611', '', 1, 123, '', 8, 0, '125', 'student', '220477', '35061530', '', '', '', '', '1504731600', '3', '2016-2017', '111', '.', '1504777440', 0, 'D', 'Pauline Msalame', 'Grandmother', '722518240', '', 'pmukuhi@gmail.com', 'Langata', 33, 'Lavington Montessori', 'Visited the school.Met with Mrs Carol.Came for assessment on 3/7/2017.', 0, -10800, 1499029200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(555, '2017-2018', '2017-2018', 1, 30, 'Terminated', 'Zawadi Toni Mwaura.', 'Nil', '712962049', '', '', 'ndichupm@gmail.com', '', '', '', 'Fintech', 'Grace Msalame', '', 'Mother', '722527611', '', '', 'sowairina@gmail.com', '', 'Media/Ministry', '', 'Self-Employed', '722527611', 33, '1302642000', '1498597200', 0, '', '', '', 'P.O.BOX 76611-00508', '', 0, 123, '', 8, 0, '125', 'student', '224524', '93952119', '', '', '', '', '1504731600', '3', '2016-2017', '111', '.', '1504777440', 0, 'D', 'Pauline Msalame', 'Grandmother', '722518240', '', 'pmukuhi@gmail.com', 'Langata', 33, 'Lavington Montessori', 'Visited the school.Met with Mrs Carol.Came for assessment on 3/7/2017.', 0, 0, 1499029200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(559, '2017-2018', '', 1, 0, 'Terminated', 'Karani Max Steinbeck.', 'Frank Steinbeck', '4917781463', '', '', 'steinies1@hotmail.com', '', 'Soldier', '', 'German Armed Forces', 'Louise Nyamu  Stenbeck', '', '', '723503777', '', '', 'karl.karani1@gmail.com', '', 'Assistant Lecturer', '', 'University of Nairobi', '723503777', 30, '1305147600', '1487624400', -10800, '', '', '', '2213-00606 Nairobi', '2213-00606 Nairobi', 1, 1, '', 7, 0, '', 'student', '993462', '72238784', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308280', 0, 'D', 'Nyandia Nyamu Lenehan', 'Aunty', '719516007', '', 'nyandianyamu@gmail.com', 'Thengo Lane 215 Loresho Nairobi', 30, 'Nairobi Academy Kindergarten', 'Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid', 0, -10800, 1487624400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(560, '2017-2018', '2017-2018', 1, 30, 'Terminated', 'Karl Nyamu Steinbeck .', 'Frank Steinbeck', '4917781463', '', '', 'steinies1@hotmail.com', '', 'Soldier', '', 'German Armed Forces', 'Louise Nyamu  Stenbeck', '', 'mother', '723503777', '', '', 'karl.karani1@gmail.com', '', 'Assistant Lecturer', '', 'University of Nairobi', '723503777', 30, '1305147600', '1487624400', 1488315600, '', '', '', '2213-00606 Nairobi', '2213-00606 Nairobi', 1, 124, '', 7, 0, '125', 'student', '634163', '37105715', '', '', '', '', '1530824400', '3', '2017-2018', '111', '.....', '1535480040', 0, 'D', 'Nyadia Nyadia Lenehan', 'Aunty', '719516007', '', 'nyandianyamu@gmail.com', 'Thego Lane 215,Loresho Nairobi', 30, 'Nairobi Academy Kindergarten', 'Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid.', 0, 1504213200, 1487624400, '', 0, 0, 30, 0, 46, 0, 0, 0, NULL),
(562, '2017-2018', '2016-2017', 1, 32, 'Studying', 'Stanley sowerby.', 'Kenneth John Sowerby', '723340078', '', '', 'ken@studioarchitetto.com', '', 'Architect', '', 'Self-Employed', 'Irene Sowerby', '', 'Both Parents', '704915206', '', '', 'irenesowerby@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '704915206', 34, '1262638800', '1456779600', 1456779600, '', '', '', 'P.O.BOX 353-00606 sarit centre', '', 1, 239, '', 7, 0, '125', 'student', '166422', '86844789', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Caroline lammers', 'Aunty', '714643709', '720400374', 'mwihakike2002@yahoo.com', 'Mumwe Gardens#23', 0, 'Waldorf', 'Admitted', 0, -10800, 1456779600, '', 1456779600, 0, 40, 0, 40, 0, 0, 0, NULL),
(563, '2017-2018', '2016-2017', 1, 33, 'Studying', 'Ayanna Sowerby.', 'Kenneth Sowerby	', '704915206', '', '', 'ken@studioarchitetto.com', '', 'Architect', '', 'Self-Employed', 'Irene Sowerby', '', 'Both Parents', '723340078', '', '', 'irenesowerby@yahoo.com', '', 'Bussinesslady', '', 'Self-Empoyed', '723340078', 34, '1262638800', '1456779600', -10800, '', '', '', '353-00606 Sarit centre', '', 1, 239, '', 8, 0, '125', 'student', '407651', '14645342', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Caroline Lammers', 'Aunt', '0714643709/072040037', '', 'mwihakike2002@yahoo.com', 'Mumwe Gardens,House no :23', 0, '', 'Admitted', 0, -10800, 1456779600, '', 0, 0, 62, 0, 76, 0, 0, 0, NULL),
(565, '2017-2018', '2016-2017', 1, 32, 'Studying', 'Pendo Sowerby.', 'Kenneth Sowerby', '723340078', '', '', 'ken@studioarchitetto.com', '', 'Architect', '', 'Self-Employed', 'Irene Sowerby', '', 'Both Parents', '704915206', '', '', 'irenesowerby@yahoo.com', '', 'Businesslady', '', 'Self-Employed', '704915206', 34, '1262638800', '1456779600', 1456779600, '', '', '', 'P.O.BOX 353-00606 Sarit Centre', '', 1, 239, '', 8, 0, '125', 'student', '113843', '87487497', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Caroline lammers', 'Aunty', '714643709', '720400374', 'mwihakike2002@yahoo.com', 'Mumwe Gardens#23', 0, '', 'Admitted', 0, -10800, 1456779600, '', 0, 0, 53, 0, 50, 0, 0, 0, NULL),
(566, '2018-2019', '2016-2017', 1, 33, 'Terminated', 'Christopher Buyanzi Butiko.', 'Kennedy Butiko', '726009393', '726009393', '', 'kennedy.butiko@yahoo.com', '', 'Businessman', '', 'Self-Employed', 'Fidelis Gentrix ', '', 'Both Parents', '733746405', '720851991', '', 'bihenzaf@yahoo.com', '', 'Businesslady', '', 'Self-Empoyed', '720851991', 36, '1282510800', '1456174800', 1457643600, '', '', '', '19652-00100', '', 1, 123, '', 7, 0, '125', 'student', '951276', '37798448', '', '', '', '', '1537304400', '3', '2017-2018', '111', '...', '1537361700', 0, 'D', 'Celestine Majisu', 'Aunt', '733619281', '733619281', 'cynthia_82ke@yahoo.com', 'South B Nairobi', 34, '', 'Admitted', 0, -10800, 1456174800, '', 0, 0, 88, 0, 60, 0, 0, 0, NULL),
(567, '2018-2019', '2016-2017', 1, 32, 'Studying', 'Jasmine Makena Mutuma.', 'Jasmine Makena', '0706960803', '0706960803', '', 'skiambi@gmail.com', '', 'Human Resource', '', 'Intercontinental Hotel Group', 'Sonia Chege', '', 'Both Parents', '0721813101', '0721813101', '', 'sochege@gmail.com', '', 'Sales ', '', 'Oil Libya', '0721813101', 37, '1257022800', '1456174800', -10800, '', '', '', '59781-00200', '', 1, 123, '', 8, 0, '125', 'student', '881759', '56272413', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Esther Chege', 'Aunty', '0722793939', '', '', '', 0, '', 'Admitted', 0, -10800, 1456174800, '', 0, 0, 96, 0, 88, 0, 0, 0, NULL),
(568, '2018-2019', '2016-2017', 1, 33, 'Terminated', 'Maria Wanjiru Mwangi.', 'Kenneth Mwangi	', '711199133', '711199133', '', 'kenmwangi@gmail.com', '', 'Engineer', '', 'Self-Employed', 'Anne Mwangi	', '', 'Both Parents', '726893000', '726893000', '', 'anne@next.co.ke', '', 'Marketing', '', 'Next Technologies Ltd', '726893000', 37, '1280955600', '1456174800', 1456174800, '', '', '', '10579-00100 Nrb', '', 1, 123, '', 8, 0, '125', 'student', '731754', '76289162', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536238500', 0, 'D', 'Michael Njuguna', 'Uncle', '716032201', '716032201', 'mike@next.co.ke', 'Kiambu', 34, '', 'Admitted', 0, -10800, 1456174800, '', 0, 0, 68, 0, 68, 0, 0, 0, NULL),
(569, '2017-2018', '2016-2017', 1, 32, 'Terminated', 'Micah John Stanley Gichane.', 'Donald Gichane', '722509709', '722509709', '', 'donald@elisfarms.com', '', 'Bussinessman', '', 'Self-Employed', 'Nancy Gichane', '', 'Both Parents', '726940030', '726940030', '', 'marura23@yahoo.com', '', 'Bussinesslady', '', 'Self-Employed', '726940030', 34, '1265922000', '1456174800', 0, '', '', '', '2214-00606', '', 0, 123, '', 7, 0, '125', 'student', '422917', '25794683', '', '', '', '', '1504818000', '3', '2017-2018', '111', '.', '1504875600', 0, 'D', 'Amanda/Julian Kyula', 'Sister,Brother', '0786612287,', '723179316', 'jkyula@mo-de.com,akyula@gmail.com', '14 Ndege Rd Karen', 32, '', '', 0, 0, 1456174800, '', 0, 0, 0, 0, 0, 0, 0, 0, 6),
(570, '2017-2018', '2016-2017', 1, 32, 'Terminated', 'Nathaniel Baraka Apollo.', 'Apollo Changalwa', '721141055', '0721141055	', '', 'apollochangalwa@yahoo.com', '', 'Engineeer', '', 'Endevour Mining Ltd', 'Nancy Changalwa', '', 'Both Parents', '721781150', '0721178150	', '', 'nanceokinda@yahoo.com', '', 'Journalist', '', 'Self-Employed', '721781150', 34, '1255381200', '1456174800', 1457643600, '', '', '', '57653-00200 Nrb', '', 1, 123, '', 7, 0, '125', 'student', '669134', '96404845', '', '', '', '', '1512680400', '1', '2017-2018', '111', '...', '1520590020', 0, 'D', 'Maureen Okinda', 'Aunt', '718361569', '701645355', 'maureenangelinc2@gmail.com', 'Lower Kabete', 34, '', 'Admitted', 0, -10800, 1456174800, '', 0, 0, 84, 0, 90, 0, 0, 0, NULL),
(571, '2018-2019', '2015-2016', 1, 30, 'Studying', 'Saoirse Nyakio  Lenehan.', 'Jason Lenehan', '', '', '', '', '', 'Engineer', '', 'Oxford and Cambridge club.uk', 'Nyania Nyami', '', 'Mother', '719516007', '', '', 'nyandianyamu@gmail.com', '', 'Hotelier', '', 'N/A', '719516007', 36, '1256158800', '1404162000', 1404162000, '', '', '', 'P.O.BOX 2212-00606 Nrb', '', 1, 123, '', 8, 0, '125', 'student', '427900', '90300257', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Jean Nyamu', 'Grandmother', '710781261', '', 'loresho.house@gmail.com', 'Loresho estate# 215 Thego Lane', 0, '', 'Admitted\r\n', 0, -10800, 1404162000, '', 0, 0, 64, 0, 80, 0, 0, 0, NULL),
(572, '2018-2019', '2016-2017', 1, 33, 'Terminated', 'Ava Gathoni Muthee', 'Andrew Muthee Gitau', '728063780', '706859898', '', 'andrewmuthee@gmail.com', '', 'Businessman', '', 'AMG Realtors Ltd', 'Agnes Waruguru Muthee', '', 'Both Parents', '717146693', '706859898', '', 'waru.muthee@gmail.com', '', 'Accountant', '', 'AMG Realtors Ltd', '737669037', 37, '1276635600', '1493931600', 1496005200, '', '', '', 'P.O. BOX 565-00618', '', 1, 123, '', 8, 0, '125', 'student', '529201', '28034073', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1537425660', 0, 'D', 'Vasiliah Gitau', 'Grandmother', '722419808', '', '', 'Mwalimi Motors Exit  7 off Thika Rd', 34, 'Kianda School', 'Application and Assessment paid on 5/5/17.To report after Mid-Term 5/6/17.', 0, -10800, 1493931600, '', 1496005200, 0, 85, 0, 92, 0, 0, 0, NULL),
(573, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Anna Kaisse Antonio.', 'Luzolo Antonio', '', '', '', 'luzolosanches@hotmail.com', '', 'Teacher', '', 'Agostinoh Neto University', 'Monadia Antonio', '', 'Mother', '0798362789', '798362789', '', 'monadiaantonio@yahoo.com.br', '', 'State Representative', '', 'Angolan Embassy', '0798362789', 36, '1250197200', '1485896400', 1485723600, '', '', '', '', '', 1, 279, '', 8, 0, '278', 'student', '958144', '80944359', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Elealevel Chitande', 'Colleague', '705912365', '', '', 'Runda Estate', 0, 'Marotos College', '.', 0, -10800, 1485896400, '', 1485723600, 0, 0, 0, 0, 0, 0, 0, NULL),
(575, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Arthur Bikoko.', 'Tony Bikoko', '705947371', '', '', 'tony.bikoko@siemens.com', '', 'Branch Manager', '', 'Siemens Sas', 'Mabel Mbaka', '', 'Both Parents', '718585581', '', '', 'mogoimbaka@yahoo.com', '', 'Student', '', 'Student', '718585581', 35, '1209675600', '1475010000', 1475010000, '', '', '', '50867-00200 City Squire Nrb', '', 1, 123, '', 7, 0, '126', 'student', '899709', '48205426', '', '', '', '', '1518555600', '2', '2017-2018', '284', '..', '1518609000', 0, 'D', 'Marvellin Magoka', 'Aunt', '703294537', '', '', 'Kasarani', 35, '', 'Needs a Shadow teacher.Will also observe to see if there is need for a special needs consultant.', 0, -10800, 1475010000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(576, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Jaden Jote Wakjira.', 'Jote Wakjira	', '720980956', '', '', 'jote.wakjira@gmail.com', '', 'Management', '', 'TMF Group', 'Tensaye Lemma	', '', 'Both Parents', '720980956', '', '', 'lilymekonen@yahoo.com', '', 'Development Practitioner', '', 'Compassion International Ethiopia', '720980956', 35, '1276117200', '1473109200', 1467752400, '', '', '', '', '', 1, 230, '', 7, 0, '229', 'student', '290400', '94938101', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308520', 0, 'D', '', '', '', '', '', '', 35, '', '', 0, -10800, 1467666000, '', 0, 0, 100, 0, 70, 0, 0, 0, NULL),
(578, '2017-2018', '2016-2017', 1, 33, 'Studying', 'Bethel Wendo Mwangi.', 'Norman Mwangi	', '724578072', '', '', 'huclass2002@hotmail.com', '', 'Farmer', '', 'Self-employed', 'Hellen Mwangi', '', '', '721483159', '', '', 'huclass2002@hotmail.com', '', 'Farmer', '', 'Self-employed', '721483159', 35, '1281301200', '1456174800', 0, '', '', '', '56301-00200 Nairobi', '', 0, 123, '', 8, 0, '125', 'student', '743864', '50301498', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Caroline Njoroge', 'Grandmother', '722756564', '', '', 'Mwithaka', 0, '', '', 0, 0, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(579, '2017-2018', '2016-2017', 2, 33, 'Terminated', ' Pau Bel Garcia.', 'Horaci Garcia', '795744338', '202276000', '', 'horaci.garcia@bbc.co.uk', '', 'Cameraman', '', 'BBC', 'Judith Bel', '', 'Both Parents', '795744338', '202276000', '', 'judithbel@yahoo.fr', '', 'N/A', '', 'N/A', '795744338', 35, '1277240400', '1473282000', 1476133200, '', '', '', '58621', '', 1, 253, '', 7, 0, '236', 'student', '685828', '54950686', '', '', '', '', '1512680400', '1', '2017-2018', '111', '..', '1517910240', 0, 'D', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 'Nil', 35, 'Ecole Montssori Bilingue', '', 0, -10800, 1473282000, '', 1476133200, 0, 0, 0, 0, 0, 0, 0, NULL),
(580, '2017-2018', '2014-2015', 2, 30, 'Terminated', 'Mona Ngendo Kangethe.', 'Nicholas Kangethe', '708236588', '708236588', '', 'knicko@gmail.com', '', 'Businnessman', '', 'Self-Employed', 'Polly Mbuthia', '', 'Both Parents', '722823584', '722823584', '', 'pmbuthia@gmail.com', '', 'Businesslady', '', 'Self-Employed', '722823584', 36, '1251234000', '1382302800', 1382907600, '', '', '', 'P.O.BOX 1313-00100 Nrb', 'P.O.BOX 1313-00100 Nrb', 1, 123, '', 8, 0, '125', 'student', '429453', '65251711', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308760', 0, 'D', 'Alice Kangethe', 'Aunt', '721243030', '', 'aruguru@gmai.com', 'Miotoni woods karen', 36, '', 'Admitted', 0, -10800, 1382302800, '', 0, 0, 96, 0, 92, 68, 0, 0, NULL),
(581, '2018-2019', '2017-2018', 1, 38, 'Studying', 'Linet Lyaka Khacheso', 'Charles Khacheso', '0721604249', '0721604249', '', 'khacheso@gmail.com', '', 'CIO', '', 'Co Operative Bank', 'Njeri Gakuo', '', 'parents', '0722992400', '0722992400', '', 'njeri.khacheso@gmail.com', '', 'OPS', '', 'CEESAY Ltd', '0722992400', 39, '1159650000', '1498078800', 1498078800, '1501490880', '', '', '21960 00400 Nrb', '21960 00400 Nrb', 1, 123, '', 8, 0, '125', 'sharon', '271751', '45973570', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Tony Washiga', 'Uncle', '0722770039', 'Nil', 'Nil', '', 0, 'Parklands Baptist School', '', 0, 1501448400, 1498078800, '', 1498078800, 1, 84, 50, 57, 48, 72, 65, NULL),
(582, '2017-2018', '2017-2018', 1, 33, 'Terminated', 'Meer Binit Shah.', 'Binit Shah', '719464713', '', '', 'binit@brush.co.ke', '', '', '', '', 'Binaka Vaghella', '', '', '721893232', '', '', 'bina@vaghella.com', '', '', '', '', '', 30, '1307480400', '1456088400', 0, '', '', '', '', '', 0, 1, '', 8, 0, '', 'student', '195244', '95601747', '', '', '', '', '1504645200', '3', '2016-2017', '111', '.', '1504703460', 0, 'D', '', '', '', '', '', '', 30, 'Nairobi Academy Kindergarden', '.Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid', 0, 0, 1456088400, '', 1456088400, 0, 0, 0, 0, 0, 0, 0, NULL),
(583, '2017-2018', '2017-2018', 1, 47, 'Terminated', 'Sainanda Sreejith Nair', 'Sreejith Naduveledathu', '739898888', '', '', 'sreejith@cargen.com', '', '', '', '', 'Sreeja Sreejith', '', '', '798362895', '', '', 's.sreeja.nair@gmail.com', '', '', '', '', '', 47, '1404766800', '1488488400', -10800, '1501741380', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '151787', '39783570', '', '', '', '', '1522011600', '2', '2017-2018', '111', '..', '1523527440', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 47, 'Kenwood Kindergarten', 'Travelling to India.To report on 11/9/2017..', 0, -10800, -10800, '', 1488488400, 1, 0, 0, 0, 0, 0, 0, NULL),
(584, '2018-2019', '2017-2018', 1, 48, 'Studying', 'Makena Elle Davis', 'Darren Davis', '790150256', '', '', 'dr.darrendavis@gmail.com', '', '', '', '', 'Linda Davis ', '', '', '717727103', '', '', 'kulinda.davis@gmail.com', '', '', '', '', '', 30, '1379106000', '1499029200', -10800, '1501742040', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '355873', '42741014', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Montessori Plus ', 'Met with Mrs Carol.To join in Sept 2017 in Year Red', 0, -10800, -10800, '', 1499979600, 1, 0, 0, 0, 0, 0, 0, NULL),
(585, '2017-2018', '2017-2018', 1, 48, 'Terminated', 'Eba Yohannes Dibaba', 'Yohannes Dibaba ', '742144695', '', '', 'ywado@aphrc.org', '', '', '', '', 'Derartu Tesema', NULL, '', '735321069', '', '', 'derartutesema@gmail.com', '', '', '', '', '', 48, '1365541200', '1501794000', 0, '1503923340', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '462471', '80050745', '', '', '', '', '1504731600', '3', '2016-2017', '111', '.', '1504775340', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 48, 'Parent Schooling', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(586, '2018-2019', '2017-2018', 1, 40, 'Studying', 'Andrew Obila Allela', 'Dickson Allela', '729900958', '', '', 'richard@schoonerafrica.com', '', 'Finance Manager', '', 'Scheoner US LLC', 'Margaret Allela ', '', 'Both Parents', '704825207', '020-3317199', '', '', '', 'Lawyer', '', 'Agricultural Finance Corporation', '704825207', 41, '1114635600', '1503867600', 1475010000, '1503923580', '', '', '30367-00100 Nairobi', '30367-00100 Nairobi', 1, 123, '', 7, 0, '125', 'sharon', '408725', '49809940', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Philis Kehenzi', 'House Manager', '720338476', '', '', 'Parklands 6th Avenue ', 0, 'Consolata School', 'Admitted', 0, 1503867600, 1503867600, '', 1503867600, 0, 50, 66, 62, 0, 25, 0, NULL),
(588, '2018-2019', '2017-2018', 1, 32, 'Studying', 'Maya Nasimiyu Nyukuri', 'Conrad Nyukuri', '0728269033', '728269033', '', 'nyukuric@gmail.com', '', 'Company Secretary', '', 'AXIS (ALN)', 'Amy Sifuma', '', 'parents', '0722372112', '722372112', '', 'amysifuma@gmail.com', '', 'IT Advisor', '', 'SQS Kinderdorf', '0722372112', 34, '1312923600', '1503954000', 1503954000, '1504011300', '', '', '70106 00400 Nrb', '70106 00400 Nrb', 228, 123, '', 8, 0, '125', 'sharon', '129697', '62821779', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Elvin Nyukuri', 'Aunt', '703173983', '', 'nyukuri.e@gmail.com', 'Madaraka Estate Hse #589', 0, 'Waridi Nursery School', '', 0, -10800, 1503954000, '', 1503954000, 1, 93, 84, 80, 80, 0, 0, NULL),
(589, '2018-2019', '2017-2018', 1, 30, 'Studying', 'Sydney Achieng Onyango', 'Polycarp Sydney Achieng', '0722337804', '0722337804', '', 'yuyaob@gmail.com', '', '', '', '', 'Olive Wanjiru Kamande', '', '', '0725737111', '0725737111', '', 'olivekamande@gmail.com', '', '', '', '', '0725737111', 32, '1326920400', '1503867600', -10800, '1504011600', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '550450', '83164771', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Agnes Kamande', 'Aunt', '0721799500', '', '', '', 0, 'Brookside Montesori Centre', '', 0, -10800, 1503867600, '', 1503867600, 1, 90, 0, 100, 0, 0, 0, NULL),
(590, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Onyx Luzitu Nunga', 'Guy Luzitu', '', '', '', 'gluzitu@yahoo.fr', '', 'Chief Air Transport Manager', '', 'World Food Programme', 'Christelle Kunda', '', 'Mother', '0717574863', '0717574863', '', 'chkunda@hotmail.com', '', 'N/A', '', 'N/A', '0717574863', 36, '1258059600', '1456088400', 1457643600, '', '', '', '2459-006006', '', 1, 235, '', 8, 0, '236', 'student', '977089', '18611065', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Peter Wanjiku', 'Friend', '729818000', '', 'N/A', 'N/A', 0, '', 'Admitted\r\n', 0, -10800, 1456174800, '', 0, 0, 100, 0, 100, 0, 0, 0, NULL),
(591, '2018-2019', '2016-2017', 1, 30, 'Studying', 'Allan Mburu Ndichu.', 'Michael Mburu Ndichu', '722279282', '202228037', '', 'raisndichu@gmail.com', '', 'Bussinessman', '', 'Self', 'Cate Nyambura Wainaina', '', 'parents', '722850359', '', '', 'catenyambura@yahoo.com', '', 'Banker', '', 'Banker of Africa', '722850359', 34, '1295816400', '1467234000', 1467234000, '', '', '', '8062-00100 Nrb', '8062-00100 Nrb', 1, 123, '', 7, 0, '125', 'student', '896960', '60640732', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Daniel Mburu', 'Uncle', '722279282', '', 'dilmburu@yahoo.com', 'Nyari Nrb', 0, 'Msingi Bora', '', 0, -10800, 1487624400, '', 1473109200, 0, 53, 0, 84, 0, 0, 0, NULL),
(592, '2017-2018', '2016-2017', 1, 33, 'Terminated', 'Benga Mbugua.', 'Karanja Mbugua			', '722723632', '', '', 'kanjiimbugua@gmail.com', '', 'Businessman', '', 'Self-employed', 'Mwendwa Mbugua', '', 'Both Parents', '722297262', '', '', 'mmwiti@gmail.com', '', 'Businesslady', '', 'Self-employed', '722297262', 35, '1254862800', '1420059600', 1420059600, '', '', '', '51166-00100 Nrb', '', 1, 123, '', 7, 0, '125', 'student', '182095', '76250819', '', '', '', '', '1530824400', '3', '2017-2018', '111', '..', '1536308460', 0, 'D', 'Makena Mwiti', 'Aunt', '721834526', '', 'makenamwiti@gmail.com', 'N/A', 35, '', '', 0, -10800, 1420578000, '', 0, 0, 72, 0, 80, 0, 0, 0, NULL),
(594, '2018-2019', '2017-2018', 1, 35, 'Studying', 'Noah Jayden Angwenyi..', 'Naftal Angwenyi', '0716909228', '0716909228', '', 'naftaloa@gmail.com', '', 'Bussinessman', '', 'Self', 'Sheba Akello', '', 'Both Parents', '', '', '', 'sheba_n@hotmail.com', '', 'Human Resource', '', 'UNICEF', '0716909228', 37, '1269982800', '1490389200', 1490562000, '', '', '', '', '', 1, 237, '', 7, 0, '125', 'student', '647885', '22692760', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Papa Peters ', 'Uncle', '0712181818', '', '', '', 0, 'Ps 159Q', 'Enrolled\r\n', 0, -10800, -10800, '', 0, 0, 48, 0, 85, 0, 0, 0, NULL),
(596, '2017-2018', '2017-2018', 1, 34, 'Terminated', 'Ketim Yohannes Dibaba.', 'Yohannes Dibaba ', '742144695', '', '', 'ywado@aphrc.org', '', '', '', '', 'Derartu Tesema', '', '', '735321069', '', '', 'derartutesema@gmail.com', '', '', '', '', '', 35, '1272402000', '1503522000', 0, '', '', '', '', '', 0, 0, '', 8, 0, '', 'student', '992960', '51418474', '', '', '', '', '1504731600', '1', '2016-2017', '111', '.', '1504775280', 0, 'D', '', '', '', '', '', '', 34, 'Parent Schooling', '', 0, 0, 0, '', 1503522000, 0, 0, 0, 0, 0, 0, 0, NULL),
(597, '2018-2019', '2017-2018', 1, 41, 'Terminated', 'Lamiya Awino Odeyo-Gafur', 'NIL', '', '', '', '', '', '', '', '', 'Atieno Odenyo', '', 'Mother', '721723954', '', '', 'atieno.odenyo@gmail.com', '', '', '', '', '', 42, '1099342800', '1504472400', -10800, '1504516320', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '180146', '50499954', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536308160', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 66, 'Homes Cholina Croup', 'Admitted', 0, -10800, -10800, '', 1504472400, 1, 24, 54, 61, 64, 30, 56, NULL),
(598, '2017-2018', '2017-2018', 1, 41, 'Terminated', 'Baraka Simbarashe Okwatia Odenyo', 'Dr Victor Odenyo', '', '', '', 'odenyovictor44@gmail.com', '', '', '', '', 'Atieno Odenyo', '', 'Sister', '721723954', '', '', 'atieno.odenyo@gmail.com', '', '', '', '', '', 41, '1104958800', '1504472400', -10800, '1504516500', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '832468', '39504792', '', '', '', '', '1515358800', '2', '2017-2018', '111', '...', '1515654420', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 41, 'Home Schooling', 'Admitted', 0, -10800, -10800, '', 1504472400, 1, 31, 56, 40, 64, 24, 54, NULL),
(599, '2017-2018', '2017-2018', 1, 42, 'Terminated', 'Carmel Kanyamunyu', 'N/A', '', '', '', '', '', '', '', '', 'Sharon Kabahuma Kanyamunyu', '', 'Mother', '256751670', '', '', 'sharonkabahuma@yahoo.com', '', '', '', '', '', 42, '1071176400', '1499029200', -10800, '1504599960', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '822429', '40346681', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1535478900', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 42, 'Shrines Tuition Centre', 'Admitted', 0, -10800, 1499029200, '', 1499029200, 1, 0, 36, 54, 0, 0, 0, NULL),
(600, '2018-2019', '2017-2018', 1, 40, 'Studying', 'Jason Njoroge', 'Edward Njoroge', '722718298', '', '', 'ed.njonju@gmail.com', '', 'Head Supply Chain', '', 'Syngeta (EA) Ltd', 'Angela Njoroge', '', 'parents', '722740231', '', '', 'angie.njoroge27@gmail.com', '', 'Programme Associate', '', 'UN Women', '722740231', 41, '1047675600', '1491512400', 1503954000, '', '', '', '6326-00100 Nrb', '6326-00100 Nrb', 1, 123, '', 7, 0, '125', 'student', '334394', '46529863', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Sally Gachohi', 'Aunty', '720418280', '735344007', 'salgichohi@gmail.com', 'Dereshe House 3rd floor', 0, 'NIL', 'Special need child.Both parents met with Mrs Im.Assessment date not set.Wanted Sept 2017 intake.', 0, 1503954000, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(602, '2018-2019', '2017-2018', 1, 39, 'Studying', 'Shival Rupal Vithlani', 'Rupaal Vithlani', '0732716000', '0722716000', '', 'rupaalv@gmail.com', '', 'Director', '', 'Fones Direct Limitted', 'Himisha Vithlani', '', 'parents', '0789716000', '724716000', '', 'himipatel10@gmail.com', '', 'Housewife', '', 'N/A', '0722716000', 40, '1159995600', '1501966800', 1504126800, '1504692420', '', '0724716000', '13717-00800 Nrb', '13717-00800 Nrb', 1, 226, '', 7, 0, '125', 'sharon', '919342', '53586388', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Ushaben Vithlani', 'Grandmother', '0715754668', '', '', 'N/A', 0, 'St Marys International', '.', 0, 1504558800, 1501966800, '', 1504472400, 1, 0, 0, 8, 12, 0, 0, NULL),
(603, '2018-2019', '2017-2018', 1, 39, 'Studying', 'Julie Pascasie Akimana', 'N/A', '', '', '', '', '', 'Nil', '', 'N/A', 'Natacha Nzabampema', '', 'Mother', '0736026841', '0736026841', '', 'n.nzabampema@gmail.com', '', 'IT Support Manager', '', 'UN', '0736026841', 40, '1154120400', '1504645200', 1504645200, '1504694940', '', '', '', '', 232, 299, '', 8, 0, '236', 'sharon', '608197', '43646224', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Michael Nzabampema', 'Uncle', '0705502107', '', 'nzabampema@un.org', 'Edenville Estate house #9', 0, 'Kinggate Homeschool', 'Enrolled.', 0, -10800, -10800, '', 1504645200, 1, 23, 0, 32, 32, 0, 54, NULL),
(604, '2018-2019', '2016-2017', 3, 48, 'Terminated', 'Amy Mwangi.', 'Kenneth Mwangi', '711199133', '', '', 'kenmwangi@gmail.com', '', '', '', '', 'Anne Mwangi', '', '', '726893000', '', '', 'anne@next.co.ke', '', '', '', '', '', 30, '1360702800', '1496955600', 0, '', '', '', '', '', 0, 0, '', 8, 0, '', 'student', '267594', '88927832', '', '', '', '', '1530824400', '1', '2017-2018', '111', '...', '1536300480', 0, 'D', '', '', '', '', '', '', 30, '', '', 0, 0, 1496955600, '', 1496955600, 0, 0, 0, 0, 0, 0, 0, NULL),
(605, '2018-2019', '', 1, 0, 'Studying', 'Gabriel Kiarie Kamau.', 'Martin Kamau Kiarie', '722972018', '722972018', '', 'kamau.maliworld@gmail.com', '', '', '', '', 'Beatrice Lukose', '', '', '722659244', '722659244', '', 'beautylukose@yahoo.com', '', '', '', '', '', 32, '1342126800', '1456088400', -10800, '', '', '', '', '', 1, 123, '', 7, 0, '125', 'student', '533343', '72382907', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'Little Hearts Kindergarten', '', 0, -10800, -10800, '', 1473109200, 0, 0, 0, 0, 0, 0, 0, NULL),
(606, '2018-2019', '', 1, 0, 'Studying', 'Richmond Sidi Sesay.', 'Richmond Sesay', '232767291', '', '', 'rssesay@yahoo.com', '', '', '', '', 'Fatmatu F Sesay', '', '', '708389194', '', '', 'ffsesay@unicef.org', '', '', '', '', '', 48, '1388955600', '1466542800', -10800, '', '', '', '', '', 1, 1, '', 7, 0, '', 'student', '913905', '95995060', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'N/A', '', 0, -10800, -10800, '', 1473109200, 0, 0, 0, 0, 0, 0, 0, NULL),
(607, '2018-2019', '', 1, 0, 'Studying', 'Raymond  Kai Sesay.', 'Richmind Sesay', '23276729', '', '', 'rssesay@yahoo.com', '', '', '', '', 'Fatmatu  Sesay', '', '', '708389194', '', '', 'ffsesay@unicef.org', '', '', '', '', '', 48, '1389646800', '1466542800', -10800, '', '', '', '', '', 1, 1, '', 7, 0, '', 'student', '158762', '52324292', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'N/A', '', 0, -10800, -10800, '', 1473109200, 0, 0, 0, 0, 0, 0, 0, NULL),
(608, '2018-2019', '2017-2018', 1, 48, 'Studying', 'Ariste Hiyel Yabeta', 'Yabeta Grace A Diell', '0796774761', '0796774761', '', 'gdyabeta@hotmail.com', '', 'Cardiologist', '', 'CHR Saint Laurent', 'Voos Benedite', '', '', '0742983739', '0742983739', '', 'voos@unhcr.org', '', 'Lawyer', '', 'UNHCR', '0742983739', 30, '1355346000', '1504472400', -10800, '1504848780', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '113172', '32397233', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Voos Benedicte', 'Mother', '0742983739', '', '', 'Mangz Garden', 0, 'Elde du Santay', '', 0, -10800, -10800, '', 1504472400, 1, 0, 0, 0, 0, 0, 0, NULL),
(610, '2018-2019', '2017-2018', 1, 48, 'Studying', 'Renato Kamau Ngumba', 'N/A', '', '', '', '', '', '', '', '', 'Sylia Firth', '', '', '704055542', '', '', 'sylviafirth@gmail.com', '', '', '', '', '704055542', 30, '1384117200', '1498165200', -10800, '1505117280', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '922518', '48347778', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'N/A', '', 0, -10800, -10800, '', 1504558800, 1, 0, 0, 0, 0, 0, 0, NULL),
(611, '2018-2019', '2017-2018', 1, 38, 'Studying', 'Owen Macdonald Hogg', 'Kevin Hogg', '525554160', '', '', '', '', 'R.O.S.M', '', 'British Embassy', 'Philomena Mwangi', '', 'Family', '725396200', '725396200', '', 'philo.hogg@gmail.com', '', 'Health & Beauty', '', 'Goodlife', '725396200', 39, '1181509200', '1505336400', 1505422800, '1505382360', '', '725396200', '', '', 1, 123, '', 7, 0, '125', 'sharon', '997830', '11647949', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Peter Barker', 'Family FrIEND', '7175559752', '', 'davidkingsleyltd@aol.com', 'Jade Valley Villas', 0, 'Davids Mains', '', 0, -10800, 1505336400, '', 1505336400, 1, 0, 0, 0, 0, 0, 0, NULL),
(612, '2018-2019', '2018-2019', 1, 48, 'NotAdmitted', 'Evan Mahoma', '', '', '', '', '', '', '', '', '', 'Rosemary  Mahoma', NULL, '', '704648610', '', '', 'rosemarymahoma@yahoo.com', '', '', '', '', '', 48, '1410210000', '1504818000', 0, '1506324780', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '154409', '45914306', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Home Schooling', 'To confirm for September 2018 Red class intake.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(616, '2018-2019', '2017-2018', 2, 34, 'Studying', 'Sella Ida Odongo', 'Victor Odongo', '0703102400', '0703102400', '', 'vickieodongoz@yahoo.com', '', '', '', '', 'Marie Felix Odongo', '', '', '0717355112', '0717355112', '', 'm.felixodongo@gmail.com', '', '', '', '', '0717355112', 37, '1261774800', '1507237200', 1507237200, '1507295700', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '909829', '81905517', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'Loreto Msongari', 'Came for assessment on 6/10/2017.To join in January term.Acceptance letter issued.', 0, -10800, 1507237200, '', 1507237200, 2, 67, 65, 83, 0, 0, 0, NULL),
(617, '2017-2018', '2017-2018', 2, 39, 'NotAdmitted', 'Stephen Opiyo', 'N/A', '', '', '', '', '', '', '', '', 'Rachel Ochola', NULL, '', '725212089', '', '', 'rachel.opiyo@gmail.com', '', '', '', '', '', 39, '1197493200', '1504818000', 0, '1507802340', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '880386', '43277587', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St Austins', 'Met with Mrs Im to get back on date of assessment.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(618, '2017-2018', '2017-2018', 2, 34, 'NotAdmitted', 'Shaun Opiyo', 'N/A', '', '', '', '', '', '', '', '', 'Rachel Ochola', NULL, '', '725212089', '', '', 'rachel.opiyo@gmail.com', '', '', '', '', '', 34, '1309554000', '1504818000', 0, '1507802640', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '387100', '61712646', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St Austins', 'Met with Mrs Im to call ad confirm on date of assessment.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(619, '2017-2018', '2017-2018', 2, 40, 'NotAdmitted', 'Kimberly Z Igwe', 'NIL', '', '', '', 'ebyisrael@yahoo.com', '', '', '', '', 'Ebere Igwe', '', '', '', '', '', 'ebere.igwe10@gmail.com', '', '', '', '', '', 40, '1143061200', '1505250000', -10800, '1507814940', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '433627', '88667602', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Godshield Kaduna  Nigeria', 'General Inquiry.Mother to come mid Nov to bring kids for assessment.', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(620, '2017-2018', '2017-2018', 2, 38, 'NotAdmitted', 'Chloe K Igwe', 'Israel Igwe', '', '', '', 'ebyisrael@yahoo.com', '', '', '', '', 'Ebere Igwe', '', '', '795219921', '', '', 'ebere.igwe@gmail.com', '', '', '', '', '', 38, '1211058000', '1505250000', -10800, '1507877940', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '650277', '15586547', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Godshield Kaduna  Nigeria', 'Met with Mrs Carol.To call and confirm on admissions decision on mid November.General Inquiry.Mother to come mid Nov to bring kids for assessment.\r\n', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(621, '2017-2018', '2017-2018', 2, 33, 'NotAdmitted', 'Neso Nathan Igwe', 'Israel Igwe', '', '', '', 'ebyisrael@yahoo.com', '', '', '', '', 'Ebere Igwe', '', '', '795219921', '', '', 'ebere.igwe10@gmail.com', '', '', '', '', '', 33, '1361566800', '1505250000', -10800, '1507878420', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '906423', '78444824', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Godshield Kaduna  Nigeria', 'Met with Mrs Carol.To call and confirm on admissions decision on mid November.General Inquiry.Mother to come mid Nov to bring kids for assessment.\r\n', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(622, '2017-2018', '2017-2018', 1, 47, 'NotAdmitted', 'Blessing Refere', 'NIL', '', '', '', '', '', '', '', '', 'Lydia Ngugi', NULL, '', '725054103', '', '', 'lyhum@gmail.com', '', '', '', '', '', 47, '1400792400', '1505250000', 0, '1507878840', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '985745', '86464843', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Home Schooling', '\r\nMet with Mrs Carol. General schools inquiry,not yet decided.\r\n', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(623, '2019-2020', '2019-2020', 1, 30, 'NotAdmitted', 'Malia Akifuma', 'NIL', '', '', '', '', '', '', '', '', 'Wambui Akifuma', NULL, '', '722858347', '', '', 'buimuihia@gmail.com', '', '', '', '', '', 30, '1385154000', '1505941200', 0, '1507879260', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '181710', '44623413', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Bambini', 'Met with Mrs Carol.General schools inquiry,to confirm on 2019-2020 admissions.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(624, '2017-2018', '2017-2018', 2, 40, 'NotAdmitted', 'Shayna Ssaniyu', 'Ivan Ssenfuma', '', '', '', '', '', '', '', '', 'Anne Ssen', NULL, '', '256752450', '', '', 'anne_ssen@yahoo.com', '', '', '', '', '', 40, '1124830800', '1505250000', 0, '1507881660', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '514953', '29047546', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Acacia Kampala', '\r\nMet with Mrs carol.To call and confirm on January 2018 admissions.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(625, '2017-2018', '2017-2018', 2, 34, 'NotAdmitted', 'Madaya Odiyo', 'Philip Odiyo', '721872009', '', '', 'mvulicentre@gmail.com', '', '', '', '', 'Molada Opiyo', NULL, '', '720566122', '', '', 'jolanda@baraho4africa.org', '', '', '', '', '', 34, '1255899600', '1505941200', 0, '1507888140', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '459527', '16275939', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Cavina', 'Met with Mrs IM .to call for date of assessment.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(626, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Lulu Murage', 'Murimi Murage', '0729320103', '0729320103', '', 'murimi.murage@gmail.com', '', '', '', '', 'Nereah Okanga', '', '', '0713724551', '0713724551', '', 'nereahaudrey@gmail.com', '', '', '', '', '0713724551', 33, '1342299600', '1506546000', -10800, '1507890480', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '382513', '51245422', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Benjamin Okanga', 'Uncle', '0721706782', '', '', '', 0, 'pink Tower Childrens House', 'Met with Mrs Im .Was inquiring for Sept 2018 term.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(628, '2017-2018', '2017-2018', 2, 36, 'NotAdmitted', 'Amos Mwaura', 'NIL', '', '', '', '', '', '', '', '', 'Lucy Mwaura', '', '', '721216838', '', '', 'shygibs.lw@gmail.com', '', '', '', '', '', 36, '1243890000', '1506632400', -10800, '1507896540', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '531433', '66115417', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Met with Mrs Carol.General schools inquiry.To call on confirmation of admissions on Dec 11/12/2017.', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(629, '2017-2018', '2017-2018', 2, 48, 'NotAdmitted', 'Gibson Mwaura', 'NIL', '722317041', '', '', '', '', '', '', '', 'Lucy Mwaura', '', '', '721216838', '', '', 'shygibs.lw@gmail.com', '', '', '', '', '', 48, '1353963600', '1506632400', -10800, '1507897140', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '233236', '44722290', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Nil', 'Met with Mrs Carol.General schools inquiry.To call on confirmation of admissions on Dec 11/12/2017.', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(630, '2017-2018', '2017-2018', 2, 33, 'NotAdmitted', 'Joy Kinuthia', 'NIL', '', '', '', '', '', '', '', '', 'Grace Kinuthia', NULL, '', '700420521', '', '', 'gracewak@gmail.com', '', '', '', '', '', 33, '1299963600', '1507064400', 0, '1507897680', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '277374', '72152404', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Premier Academy', '\r\nMet with Mrs Carol.Waiting for Mum to call for Assessment.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(631, '2019-2020', '2019-2020', 1, 33, 'NotAdmitted', 'Olive Kaburu', 'George Kaburu', '721840805', '', '', 'george.kabura@outlook.com', '', '', '', '', 'Nil', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1376859600', '1508187600', 0, '1508230680', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '879809', '77530212', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kyuna Kindergarten', 'Met with Mrs Carol.To come for an assessment around October 2018.Looking for September 2019 Yr 2 intake.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(632, '2018-2019', '', 0, 0, 'Terminated', 'Ariana Wanjiku Muthee.', 'Andrew Muthee', '728063780', '', '', 'andrewmuthee@gmail.com', '', '', '', '', 'Agness Waruguru', '', '', '717146693', '', '', 'waru.muthee@gmail.com', '', '', '', '', '', 30, '1381525200', '1493672400', 0, '', '', '', '', '', 0, 0, '', 8, 0, '', 'student', '916394', '39220886', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1536733260', 0, 'D', '', '', '', '', '', '', 30, 'Aga Khan Nursery', 'Met with Mrs Im on 2/5/17. Paid for Application on 5/5/17.', 0, 0, 1493931600, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(633, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Baraka Kahiga', 'NIL', '', '', '', '', '', '', '', '', 'Charity Kahiga', NULL, '', '725948698', '', '', 'charity.yes@gmail.com', '', '', '', '', '', 47, '1399928400', '1508187600', 0, '1509343320', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '843746', '20563354', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'N/A', 'Phone inquiry to call on confirmation of school visit day.', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(634, '2018-2019', '2017-2018', 2, 30, 'Studying', 'Louis Sang', 'NIL', '0728600119', '0728600119', '', 'cfnsang@gmail.com', '', '', '', '', 'Rosetta Ngugi', '', '', '0716689530', '0716689530', '', 'rngugi@googlemail.com', '', '', '', '', '0728600119', 33, '1327006800', '1508706000', 1509483600, '1509343740', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '548873', '46095581', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Rosemary Sang', 'Grandparent', '0722759412', '', '', '', 0, 'Braeburn Garden Estate', 'Met with Mrs  Carol,Interested in Jan 2018 admissions for son ie she is a teacher at Braeburn child will be in school for 2 terms as mum travels in US to do her Masters.To come for assessment on Thur 2  Nov.Came for assessment.Acceptance letter issued.To join in January term.', 0, -10800, 1509483600, '', 0, 2, 44, 0, 64, 0, 0, 0, NULL),
(635, '2017-2018', '2017-2018', 2, 38, 'NotAdmitted', 'Sumeya Ahmed', 'NIL', '', '', '', '', '', '', '', '', 'Casha Mohamed', '', '', '704418211', '', '', 'casher54@hotmail.com', '', '', '', '', '', 38, '1171573200', '1509310800', -10800, '1509350940', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '536816', '16424255', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Nairobi International', 'Met with Mrs Carol.To come tomorrow 1st November for end of year 4 assessment.To join Yr 5 after mid-term Sept term.Mother not yet decided due to Christianity background.', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(636, '2017-2018', '2017-2018', 1, 39, 'NotAdmitted', 'Justin Karumbo', 'Andrew Kahumbo', '722828064', '', '', 'kidscastle@gmail.com', '', '', '', '', 'Hagar Chege', '', '', '700292514', '', '', '', '', '', '', '', '700292514', 39, '1168635600', '1509310800', -10800, '1509357660', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '673870', '80205383', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, 'Castle Academy', 'Met with Mrs Carol.To come tomorrow 1st November for end of year 5 assessment.To join in Yr 6 after mid-term Sept term.Parents to talk to child on change of school .Child reluctant to leave old school due to negative new school experience.Parents not yet decided on change of school,will call when decided.', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(637, '2017-2018', '2016-2017', 2, 30, 'Studying', 'Fred Test', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1036962000', '1511643600', 0, '1511704860', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '664834', '76829833', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 1511704860, 1511643600, '', 1511643600, 2, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(638, '', '', 0, 36, 'NotAdmitted', 'Aiden Grant', 'Vincent Kodiko', '720352729', '', '', 'kodikovincent@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 36, '1491512400', '1510779600', 0, '1511944020', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '278005', '98923339', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Hope to join the community.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(639, '2018-2019', '2018-2019', 1, 32, 'Studying', 'Zara Slatch', 'Amaar Slatch', '0733716221', '', '', 'slatch.amaar@gmail.com', '', '', '', '', 'Roopa Slatch', '', '', '0722303085', '', '', 'bitzslatch@gmail.com', '', '', '', '', '0722303085', 32, '1352235600', '1510866000', -10800, '1511944500', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '598065', '17693176', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Manjit Dhadialla', 'Grandmother', '0722519408', '', '', '', 0, '', 'To apply on September 2018', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(642, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Wairumbi Nyoro ', 'Charles Waruimbi', '0722807779', '', '', 'charles.waruimbi@rochmangroup.co.ke', '', '', '', '', 'Joy Waruimbi', '', '', '0721879425', '', '', 'njoki.warirumbi@gmail.com', '', '', '', '', '0721879425', 32, '1327698000', '1512334800', -10800, '1515061440', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '117330', '75011596', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(643, '2018-2019', '2017-2018', 2, 33, 'Studying', 'Aiyka Ram', 'Ravi Madhira', '0735285369', '', '', 'ram@jhu.edu', '', '', '', '', 'Ketan Madhira', '', '', '0735285369', '', '', 'ketanmram@gmail.com', '', '', '', '', '', 34, '', '1510174800', -10800, '1515405960', '', '', '', '', 201, 237, '', 8, 0, '125', 'sharon', '806887', '23754882', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, -10800, 1510952400, '', 1510174800, 2, 76, 0, 78, 0, 0, 0, NULL),
(644, '2018-2019', '2017-2018', 2, 34, 'Studying', 'Simar Kaur Rana', 'Tavinder Rana', '0722703628', '0722703628', '', 'ranatsr@yahoo.com', '', '', '', '', 'Aneet Kaur Rana', '', '', '0736812594', '0736812594', '', 'aneetkrana13@gmail.com', '', '', '', '', '0736812594', 36, '1207170000', '1515358800', -10800, '1515413460', '', '', '', '', 1, 285, '', 8, 0, '125', 'sharon', '747781', '62404785', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Dimple Rana', 'Aunt', '0720947112', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(645, '2017-2018', '2017-2018', 2, 37, 'NotAdmitted', 'Neema Ndivo', 'Julius Ndivo', '0721873517', '', '', 'jmndivo@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 37, '1242421200', '1515704400', 0, '1517468280', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '735696', '47221679', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Great Reception', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(646, '2017-2018', '2017-2018', 2, 39, 'NotAdmitted', 'Jeremy Ndivo', 'Julius Ndivo', '0721873517', '', '', 'Jmndivo@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 39, '1160254800', '1515704400', 0, '1517468400', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '413494', '88533020', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Great Reception', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(647, '2018-2019', '2018-2019', 1, 32, 'Studying', 'Richard Nottingham ', 'Notingham Christopher', '0708105036', '', '', 'chrisgnottingham@gmail.com', '', '', '', '', 'Susan Kirago-Notingham', '', 'Both Parents', '0722835100', '', '', 'wangecinottingham@gmail.com', '', '', '', '', '0722835100', 32, '1329771600', '1516136400', -10800, '1517468820', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '438269', '70158386', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Catherine Kiragu', 'Grandmother', '0723665085', '', '', 'Rosslyn Estate', 0, '', 'Lovely environment.Looking forward', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(648, '2017-2018', '2017-2018', 2, 34, 'NotAdmitted', 'Rithika Rajkumar', 'Rajkumar', '0731735565', '', '', 'kumarraj1979@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 34, '1257022800', '1517432400', 0, '1517469240', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '704165', '29698486', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Not decided fees issues', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(649, '2017-2018', '2017-2018', 0, 47, 'NotAdmitted', 'Rian Rajkumar', 'Rajkumar', '0731735565', '', '', 'kumarraj1979@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 47, '1417467600', '1517432400', 0, '1517469360', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '395147', '46664123', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Not decided (fees issues)', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(650, '2017-2018', '2017-2018', 3, 30, 'Studying', 'Deniz Zer', 'Adesh zer', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1387746000', '1517432400', 0, '1517469600', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '451782', '51954040', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Brought by a relocation agent', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(651, '2017-2018', '2017-2018', 3, 47, 'NotAdmitted', 'Bata Zer', 'Adesh zer', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 47, '1450645200', '1517432400', 0, '1517469660', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '857781', '87082824', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Brought by a relocation agent', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(652, '2017-2018', '2017-2018', 3, 47, 'NotAdmitted', 'Angillah Esther', '', '', '', '', '', '', '', '', '', 'Judith Kemunto', NULL, '', '0727788812', '', '', 'judy2eka@yahoo.com', '', '', '', '', '', 47, '1388523600', '1516136400', 0, '1517469900', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '822131', '82792663', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(653, '2018-2019', '2018-2019', 1, 33, 'NotAdmitted', 'Tyler Grey', '', '0709134111', '', '', '', '', '', '', '', 'Chido Grey', NULL, '', '0708831729', '', '', 'chidogrey@gmail.com', '', '', '', '', '0708831729', 33, '1339102800', '1515013200', 0, '1517470680', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '822103', '97280883', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(654, '2018-2019', '2017-2018', 3, 47, 'Studying', 'Samara Wangui Kimone', 'Edwin Kimone', '0720270162', '0720270162', '', 'edwinkimones@gmail.com', '', 'Bussinessman', '', 'Self', 'Lydia Chacha', '', '', '0724035175', '0724035175', '', 'lbchacha05@gmail.com', '', 'Compliance Officer ', '', 'Sugar Directorate', '0724035175', 47, '1518555600', '1515963600', -10800, '1517473620', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '336810', '39643859', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Deogracious Chacha', 'Uncle', '0718667577', '', '', 'Lower Kabete', 0, 'Home', 'Visited twice', 0, -10800, 1517432400, '', 1517432400, 3, 0, 0, 0, 0, 0, 0, NULL),
(655, '2018-2019', '2017-2018', 3, 34, 'Studying', 'Vincenzo Gonnella', 'Vincent Gonnella', '0714226748', '', '', 'vincent.cg82@gmail.com', '', '', '', '', 'Emma Pirrotta', '', '', '', '', '', '', '', '', '', '', '', 37, '1276635600', '1515445200', -10800, '1517473800', '', '', '', '', 1, 267, '', 7, 0, '334', 'sharon', '988189', '57013244', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Italian brought by Mama Tuki', 0, 1517432400, 1517432400, '', 1517432400, 3, 0, 0, 0, 0, 0, 0, NULL),
(659, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Annamai Artlene  Freeman', 'Arthur Freeman', '0712922611', '0712922611', '', 'freeman3@un.org', '', '', '', '', 'Deborah Freeman', '', '', '0707248516', '0707248516', '', 'rubybrowne49@gmail.com', '', '', '', '', '0707248516', 33, '1337893200', '1517778000', -10800, '1517908440', '', '', '', '', 1, 1, '', 8, 0, '125', 'sharon', '334503', '86654357', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(661, '2018-2019', '2018-2019', 1, 35, 'NotAdmitted', 'Alessia Forcina', '', '', '', '', '', '', '', '', '', 'Judy Forcina ', NULL, '', '0736450648', '', '', 'judyforcina@gmail.com', '', '', '', '', '', 35, '1283720400', '1516914000', 0, '1517912760', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '805239', '83048095', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(662, '2017-2018', '2017-2018', 2, 40, 'NotAdmitted', 'David Muiuri', 'Gabriel Nderitu', '0722209598', '', '', 'gnderitu@yahoo.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 40, '1517518800', '1517518800', 0, '1517913480', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '843307', '72374877', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(664, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Keldenich Kieran', 'Walter Keldenich', '', '', '', '', '', '', '', '', 'Flociah Shallo Keldenich ', '', '', '0763745285', '0763745285', '', 'flociah.keldenich@gmail.com', '', '', '', '', '0763745285', 32, '1327438800', '1517864400', -10800, '1517990160', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '978713', '15449218', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Ken Lukongodo', 'Uncle', '0717157189', '', '', '', 0, '', '', 0, -10800, -10800, '', 1536008400, 1, 0, 0, 0, 0, 0, 0, NULL),
(665, '2017-2018', '2017-2018', 3, 33, 'NotAdmitted', 'Nasia Kimani', '', '', '', '', '', '', '', '', '', 'Lyn Wainaina', NULL, '', '0722843684', '', '', 'lynwainaina@yahoo.com', '', '', '', '', '', 33, '1304542800', '1511384400', 0, '1517993760', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '491909', '34664306', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'From Amicus school to join in April or Sep 2018', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(666, '', '2017-2018', 3, 33, 'NotAdmitted', 'Nina Kimani', 'Mr. Wainaina', '', '', '', '', '', '', '', '', 'Lyn Wainaina', '', '', '0722843684', '', '', 'lynwainaina@yahoo.com', '', '', '', '', '', 33, '1304542800', '1511384400', -10800, '1517993880', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '360238', '11192016', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Amicus', 'To join in April 2018', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(667, '2017-2018', '2017-2018', 3, 33, 'NotAdmitted', 'Nate Kimani', '', '', '', '', '', '', '', '', '', 'Lyn Wainaina', NULL, '', '0722843684', '', '', 'lynwainaina@yahoo.com', '', '', '', '', '', 33, '1304542800', '1511384400', 0, '1517994240', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '702023', '79779663', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Amicus', 'To join in April term 2018', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(671, '2018-2019', '2018-2019', 1, 32, 'Studying', 'Jasmine Nyambura Kimani', 'Martin Gichia', '0726265772', '0726265772', '', 'martin.gichia@gmail.com', '', '', '', '', 'Juliet Mazera', '', '', '0718000871', '0718000871', '', 'julietc.mazera@gmail.com', '', '', '', '', '0718000871', 32, '1317934800', '1518037200', -10800, '1518080580', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '372708', '93540039', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Rachael Gichia', 'Grandmother', '', '0723726383', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(672, '2018-2019', '2018-2019', 1, 67, 'Terminated', 'Warren Matte Orinjo', 'Henry Orinjo', '0724811278', '', '', 'henryorinjo@gmail.com', '', '', '', '', 'Uinda Matte', '', '', '0721494749', '', '', 'lindamatte21@gmail.com', '', '', '', '', '', 67, '1331586000', '1518037200', -10800, '1518080940', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '290090', '24106445', '', '', '', '', '1530824400', '3', '2017-2018', '113', '....', '1536241920', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 32, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(673, '2018-2019', '2018-2019', 1, 67, 'Terminated', 'Mutuma Muriungi', 'Julius Muriungi Kiinya', '0722350450', '', '', 'juliuskiriinya@gmail.com', '', '', '', '', 'Elizabeth Machua-Murungi', '', '', '0722814575', '', '', 'beth.machua@gmail.com', '', '', '', '', '', 67, '1344286800', '1517950800', -10800, '1518081180', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '837814', '90018920', '', '', '', '', '1536181200', '3', '2017-2018', '113', '...', '1536241800', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 33, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(674, '2018-2019', '2018-2019', 1, 33, 'NotAdmitted', 'Felix Gitahi Rukwaro', 'Charles Rukwaro', '0722873741', '', '', '', '', '', '', '', 'Josephine Wambui ', NULL, '', '0721614860', '', '', 'mbuinajw@yahoo.com', '', '', '', '', '', 33, '1332882000', '1518037200', 0, '1518082440', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '207611', '62231750', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '..', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(676, '2018-2019', '2018-2019', 1, 67, 'Terminated', 'Shammah Ahadi Asinuli', 'Kennedy Asinuli ', '0733512544', '', '', 'kenasinuli@gmail.com', '', '', '', '', 'Jacquline Mbogo-Asinuli', '', '', '0733864602', '', '', 'jaymbogo@yahoo.com', '', '', '', '', '0733864602', 67, '1345410000', '1517950800', -10800, '1518092580', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '589550', '99041442', '', '', '', '', '1530824400', '3', '2017-2018', '111', '...', '1536241860', 0, 'D', '', '', '', '', '', '', 30, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(677, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Christian Nginyo Macharia', 'Silas Macharia', '0726539253', '', '', 'silasmacharia@gmail.com', '', '', '', '', 'Charity Kendy', '', '', '0722588952', '', '', 'rkendi@gmail.com', '', '', '', '', '0722588952', 33, '1343854800', '1517950800', -10800, '1518093060', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '783679', '26300964', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Jefferson', 'Uncle', '0724335566', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(678, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Rehaana Malinga', 'Kevin Malinga', '0723919403', '', '', 'kmalinga2005@gmail.com', '', '', '', '', 'Keziah Ghazi ', NULL, '', '0722298036', '', '', 'ghazikeziah2@gmail.com', '', '', '', '', '', 32, '1315429200', '1517950800', 0, '1518093240', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '213214', '76634826', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(679, '2018-2019', '2018-2019', 1, 32, 'Studying', 'Alina Wambui Kariuki', 'Edward Kariuki', '0722302364', '0722302364', '', 'eddykaki66@gmail.com', '', '', '', '', 'Stella Mwangi', '', '', '0721217327', '0721217327', '', 'stella.mbicho@gmail.com', '', '', '', '', '0721217327', 32, '1318885200', '1517950800', -10800, '1518093480', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '295446', '78903503', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(680, '2018-2019', '2017-2018', 1, 30, 'Studying', 'Nahla Joy Angwenyi', 'Naftal Angwenyi', '0716909228', '0716909228', '', 'naftaloa@gmail.com', '', '', '', '', 'Sheeba Akello', '', '', '', '', '', 'sheba_n@hotmail.com', '', '', '', '', '0716909228', 33, '1336078800', '1490389200', -10800, '1518169860', '', '', '', '', 1, 237, '', 8, 0, '125', 'sharon', '529977', '23991088', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Papa Peters ', 'Uncle', '0712181818', '', '', '', 0, 'USA', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(681, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Kendi', '', '', '', '', '', '', '', '', '', 'Susan', NULL, '', '0798362570', '', '', 'suzikarambu@gmail.com', '', '', '', '', '', 32, '1265749200', '1518469200', 0, '1518515820', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '584744', '24479980', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(682, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Mannat Sehmi ', 'Rabinder Sehmi', '0733722811', '', '', 'rabbanikov@yahoo.com', '', '', '', '', 'Harmit Sehmi', NULL, '', '0737399811', '', '', 'hryatt@hotmail.com', '', '', '', '', '', 47, '1423515600', '1518469200', 0, '1518603420', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '152954', '93789978', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'My School Montessori', '..', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(683, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Shubhneen Sehmi', 'Rabinder Sehmi', '0733722811', '', '', 'rabbanikov@yahoo.com', '', '', '', '', 'Harmit Sehmi', NULL, '', '0737399811', '', '', 'hryatt@hotmail.com', '', '', '', '', '', 32, '1343682000', '1518469200', 0, '1518603540', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '980828', '69856262', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'My School Montessori', '..', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(684, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Arthur Bikoko', 'Tony Bikoko', '0705947371', '0705947371', '', 'tony.bikoko@siemens.com', '', 'Branch Manager', '', 'Siemens Sas', 'Mabel Mbaka', '', 'Both Parents', '0718585581', '0718585581', '', 'mogoimbaka@yahoo.com', '', 'Student', '', 'Student', '0718585581', 38, '1209675600', '1475010000', -10800, '', '', '', '50867-00200 City Squire Nrb', '', 1, 123, '', 7, 0, '125', 'student', '610150', '32876281', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Marvellin Magoka', 'Aunt', '0757128990', '', '', 'Kasarani', 0, '', 'Needs a Shadow teacher.Will also observe to see if there is need for a special needs consultant.', 0, -10800, 1475010000, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(685, '2017-2018', '2017-2018', 3, 38, 'NotAdmitted', 'Mischa Chebet ', 'Cherotich Rono', '0705304441', '', '', 'cherotichrono26@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 38, '1205096400', '1519160400', 0, '1519289820', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '723171', '83850097', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(686, '2018-2019', '2018-2019', 1, 30, 'NotAdmitted', 'Tefilah Mor', '', '', '', '', '', '', '', '', '', 'Vivianne Pambo', NULL, '', '0727024153', '', '', 'vivacious2015@gmail.com', '', '', '', '', '', 30, '1451077200', '1519246800', 0, '1519710840', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '216482', '62536621', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '..', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(687, '2017-2018', '2017-2018', 0, 30, 'NotAdmitted', 'Wyse Kul', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1377378000', '1519246800', 0, '1519711140', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '296627', '85910034', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St Christopher', '..', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(689, '2018-2019', '2018-2019', 1, 48, 'Studying', 'Manuel Engola', 'Chris Engola Otyek', '0708448963', '', '', 'engolachris@gmail.com', '', '', '', '', 'Monica Katungi Engola', '', '', '0790942497', '', '', 'monicaengola@gmail.com', '', '', '', '', '', 48, '1390510800', '1519333200', -10800, '1519720980', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '437472', '40316772', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(690, '2018-2019', '2018-2019', 1, 47, 'Studying', 'Naitore Gathoni Nderitu', 'Sydney Nderitu', '0722636435', '0722636435', '', 'nderitusydney@gmail.com', '', 'Project Manager', '', 'Equity Bank', 'Kendi Nderitu', '', '', '0737866804', '0737866804', '', 'ntwigak@gmail.com', '', 'General Manger', '', 'Checkpoint', '0737866804', 47, '1434229200', '1519333200', -10800, '1519721400', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '499462', '10403747', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Agnes Kariuki', 'Grandmother', '0722259492', '', '', 'South B Estate', 0, '', '...', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(691, '', '', 0, 37, 'NotAdmitted', 'Jessica Neema Ndivo', 'Julius Ndivo', '0721873517', '', '', 'jmndivo@gmail.com', '', '', '', '', 'Esther Ndivo', NULL, '', '0726603399', '', '', 'ewndivo@gmail.com', '', '', '', '', '', 37, '1242421200', '1519592400', 0, '1519721580', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '126751', '55552062', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(693, '2018-2019', '2018-2019', 1, 32, 'Terminated', 'Githumbi Karanja', 'Karanja Thande', '0707111982', '', '', '', '', '', '', '', 'Muthoni Karanja', '', '', '0707111982', '', '', 'muthonikaranja198@gmail.com', '', '', '', '', '0707111982', 32, '1315256400', '1315256400', -10800, '1520584860', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '872668', '64467468', '', '', '', '', '1536181200', '3', '2017-2018', '113', '...', '1536241740', 0, 'D', 'Agnes Thande', 'Grandmother', '0722724857', '', '', '', 67, 'Pink Tower', 'Paid registration and assessment.To join in September 2018', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(694, '2018-2019', '2017-2018', 2, 48, 'Studying', 'Brenda Gonnella', 'Vincent Gonnella', '0714226748', '0714226748', '', 'vincentcg82@gmail.com', '', '', '', 'Italian Embassy', 'Pirrotta Emma', '', '', '0748223093', '', '', '', '', '', '', '', '0748223093', 30, '1355346000', '1520542800', -10800, '1520935500', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '310360', '41799926', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Giovanni Matrone', 'Collegue', '0719618807', '', '', '', 0, '', 'From Italy', 0, -10800, -10800, '', 1520542800, 2, 0, 0, 0, 0, 0, 0, NULL),
(695, '2018-2019', '2018-2019', 1, 36, 'NotAdmitted', 'Samuel Seth Ncube', 'Alex Mose ', '+267718001', '', '', 'alexanc@gmail.com', '', '', '', '', 'Simiso Ncube', NULL, '', '0743935624', '', '', 'ncube.simie@gmal.com', '', '', '', '', '', 36, '1220216400', '1520283600', 0, '1521439140', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '513827', '83064575', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(696, '2018-2019', '2018-2019', 1, 35, 'NotAdmitted', 'Shalam Israel Ncube', 'Alex Mose', '+267 71800', '', '', 'alexanc@gmail.com', '', '', '', '', 'Simiso Ncube', NULL, '', '0743935624', '', '', 'ncube.simie@gmail.com', '', '', '', '', '', 35, '1270846800', '1520283600', 0, '1521439320', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '331866', '37523498', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(697, '2018-2019', '2018-2019', 1, 43, 'NotAdmitted', 'Samantha Mayibongwe Ncube', 'Alex Mose', '+267718001', '', '', 'alexanc@gmail.com', '', '', '', '', 'Simiso Ncube', NULL, '', '0743935624', '', '', 'ncube.simie@gmail.com', '', '', '', '', '', 43, '1055365200', '1520283600', 0, '1521439500', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '825701', '89324035', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '..', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(698, '2018-2019', '2018-2019', 1, 30, 'NotAdmitted', 'Sasmene Gathoga', '', '', '', '', '', '', '', '', '', 'Joyce Gathoga', NULL, '', '0705249450', '', '', 'kimaj23@yahoo.com', '', '', '', '', '', 30, '1318971600', '1520888400', 0, '1521440040', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '107250', '82188415', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(699, '2018-2019', '2018-2019', 1, 34, 'Studying', 'Prince Mwendwa Mulandi ', 'Joshua Mariti', '0722273543', '0722273543', '', 'jmaviti@gmail.com', '', '', '', '', 'Eunice Ngina', '', '', '0724873055', '0724873055', '', 'nginaeunice@gmail.com', '', '', '', '', '0724873055', 34, '1322427600', '1520974800', -10800, '1521440160', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '945974', '95407714', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', 'Will come for assessment on 28/3/2018', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(700, '2018-2019', '2018-2019', 1, 38, 'Studying', 'Jason Kioko Mulandi', 'Joshua Mariti', '0722273543', '0722273543', '', 'jmaviti@gmail.com', '', '', '', '', 'Eunice Ngina', '', '', '0724873055', '0724873055', '', 'nginaeunice@gmail.com', '', '', '', '', '0724873055', 38, '1212613200', '1520974800', -10800, '1521440280', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '682000', '21692199', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Beatrice Mwende', 'Sister', '0720613097', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(701, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Jesse Gathoga', '', '', '', '', '', '', '', '', '', 'Joyce Gathoga', NULL, '', '0705249450', '', '', 'kimaj23@yahoo.com', '', '', '', '', '', 32, '1366318800', '1520888400', 0, '1521440400', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '393307', '27374877', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Will come for assessment on 28/3/2018', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(702, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Njoroge Karanja', 'Karanja Thande', '', '', '', '', '', '', '', '', 'Muthoni Karanja', NULL, '', '0707111982', '', '', 'muthonikaranja198@gmail.com', '', '', '', '', '', 47, '1472504400', '1520542800', 0, '1521440820', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '365100', '56777038', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(703, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Kieron Buglass', 'Tom Buglass', '', '', '', '', '', '', '', '', 'Suaranahi Buglass', NULL, '', '', '', '', '', '', '', '', '', '', 47, '1422651600', '1521147600', 0, '1521443280', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '610122', '47364501', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(704, '2018-2019', '2018-2019', 1, 30, 'NotAdmitted', 'Anahi Buglass', 'Tom Buglass', '', '', '', '', '', '', '', '', 'Suranahi Buglass', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1344546000', '1521147600', 0, '1521443400', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '839160', '10096130', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(705, '2018-2019', '2018-2019', 1, 40, 'NotAdmitted', 'Zakwa k. ', 'Sani Nzevela', '0722987385', '', '', 'sani@allwins.net', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 40, '1155502800', '1521493200', 0, '1521547200', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '651074', '45428161', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(706, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Dre Ishmael Joseph', 'Joseph Ishmael', '0722505559', '', '', 'budaboss1982@gmail.com', '', '', '', '', 'Pauline Ishmael', NULL, '', '', '', '', '', '', '', '', '', '', 32, '1320181200', '1521666000', 0, '1521713460', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '348181', '71520690', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(707, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', ' Keisy Ishmael Joseph', 'Joseph Ishmael', '0722505559', '', '', 'budaboss1982@gmail.com', '', '', '', '', 'Pauline Ishmael', NULL, '', '0702400693', '', '', '', '', '', '', '', '', 47, '1397595600', '1521666000', 0, '1521713700', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '570159', '67724914', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Royal Brain', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(708, '2018-2019', '2017-2018', 3, 32, 'Studying', 'Ethan Gitaka', 'Mr. Gitaka', '', '', '', '', '', '', '', '', 'Jackiline Gitaka', '', '', '0721355739', '0721355739', '', 'jagathoni17@gmail.com', '', '', '', '', '0721355739', 34, '1292878800', '1521752400', -10800, '1522750920', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '458868', '93993225', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Anne Wanjiru', 'Aunt', '0720792345', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(712, '2017-2018', '2017-2018', 3, 35, 'NotAdmitted', 'Aeyaz', 'Afsha Kassam', '0722811905', '', '', 'afshasif@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 35, '1286744400', '1522011600', 0, '1522755480', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '409951', '67513427', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, NULL),
(713, '2018-2019', '2018-2019', 1, 38, 'NotAdmitted', 'Myles Kamondo ', 'M.Nyaga', '0722201135', '', '', 'moses@outdoorprojectgroup.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 38, '1234040400', '1522098000', 0, '1522755780', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '642147', '74099731', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 1522184400, 1, 0, 0, 0, 0, 0, 0, NULL),
(714, '2017-2018', '2017-2018', 1, 43, 'NotAdmitted', 'Mayaian Kamondo', 'M.Nyaga', '0722201135', '', '', 'moses@outdoorprojectgroup.com', '', '', '', '', 'Mrs. Nyaga', '', '', '', '', '', '', '', '', '', '', '', 43, '1040936400', '1522011600', -10800, '1522755960', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '485015', '71207580', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, -10800, -10800, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(716, '2018-2019', '2017-2018', 3, 37, 'Studying', 'Ryan Lesage', 'Prince Lesage', '0722355095', '', '', 'princelesage001@gmail.com', '', '', '', '', 'Grace Lesage', '', '', '0713075795', '', '', 'graceokengo2009@gmail.com', '', '', '', '', '', 38, '1200171600', '1520024400', -10800, '1524209040', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '795324', '93295593', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'To join in April Term Year 4', 0, -10800, -10800, '', 1524517200, 3, 0, 0, 0, 0, 0, 0, NULL),
(717, '2018-2019', '2017-2018', 3, 30, 'Studying', 'Malcolm Engola-Anyeko', 'Chris Engola Otyek', '0708448963', '0708448963', '', 'engolachris@gmail.com', '', '', '', '', 'Monica Katungi', '', '', '0790942497', '0790942497', '', 'monicaengola@gmail.com', '', '', '', '', '0790942497', 32, '1344546000', '1518037200', -10800, '1524209400', '', '', '', '', 1, 258, '', 7, 0, '125', 'sharon', '292315', '20560607', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Raymond Mutibwa', 'Family Friend', '0724573001', '', '', '', 0, '', 'To join Year 1 in April', 0, -10800, -10800, '', 1518037200, 3, 0, 0, 0, 0, 0, 0, NULL),
(718, '2018-2019', '2018-2019', 1, 34, 'NotAdmitted', 'Aiyaz Asif', 'Afsha Kassam', '0722811905', '', '', 'afshasif@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 34, '1286744400', '1521666000', 0, '1524576420', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '398333', '76030578', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(719, '2018-2019', '2018-2019', 1, 30, 'NotAdmitted', 'Josephine Helfers', 'Daniele Ressler', '0799567782', '', '', 'djressler@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1347483600', '1524085200', 0, '1524656580', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '676370', '21777343', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(720, '2018-2019', '2017-2018', 3, 30, 'Studying', 'George Macmusa Atemba', 'Moses Atemba', '0724214349', '0724214349', '', 'moses.k.atemba@gmail.com', '', '', '', '', 'Penninah Muringo', 'Gaylina Mayieko', 'Both Parents', '0722480825', '0722480825', '', 'pennymunyaka@gmail.com', '', '', '', '', '0722480825', 33, '1339707600', '1527022800', -10800, '1527510240', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '949490', '40915527', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Gaylina Mayieko', 'Family Friend', '0722917730', '', '', '', 0, 'Bunks and Biddles', 'Admitted on 28/5/2018', 0, 1527022800, 1527022800, '', 1527022800, 3, 56, 0, 54, 0, 0, 0, NULL),
(721, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Wolfie Helfers', 'Daniele Ressler', '0799567782', '', '', 'djressler@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 47, '1416603600', '1524171600', 0, '1527510900', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '940646', '26122436', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(722, '2017-2018', '2017-2018', 1, 34, 'NotAdmitted', 'Yein Kim ', 'Seon Lok Kim', '0717171766', '', '', 'seonrockphoto@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 34, '1290373200', '1524517200', 0, '1527577260', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '739706', '91941528', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(723, '2018-2019', '2018-2019', 1, 67, 'NotAdmitted', 'Zara Changangu', 'Brian Changangu', '', '', '', '', '', '', '', '', 'Sheila Changangu', NULL, '', '0724352266', '', '', 'sheila.hchangangu@gmail.com', '', '', '', '', '', 67, '1331240400', '1524517200', 0, '1527577560', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '219503', '88832397', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Has downsyndrome ', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(724, '2018-2019', '2018-2019', 1, 32, 'NotAdmitted', 'Emory Apollo', 'Hannington Odhiambo', '0738665555', '', '', 'fredhanng@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 32, '1360184400', '1524085200', 0, '1527578220', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '813259', '82487792', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(726, '2018-2019', '2018-2019', 1, 40, 'NotAdmitted', 'Louis Mercia', '', '', '', '', '', '', '', '', '', 'Mercy Gachanja', NULL, '', '0720921272', '', '', 'mbassilouis@gmail.com', '', '', '', '', '', 40, '1161550800', '1526418000', 0, '1527578580', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '408248', '65783081', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(727, '2018-2019', '2018-2019', 1, 48, 'NotAdmitted', 'Love Jacobella', '', '', '', '', '', '', '', '', '', 'Mercy Gachanja', NULL, '', '0720921272', '', '', 'mbassilouis@gmail.com', '', '', '', '', '', 48, '1139864400', '1526590800', 0, '1527578700', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '536679', '88865356', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(730, '2018-2019', '2018-2019', 1, 47, 'Studying', 'Lulit Girma Kassa', 'Girma', '0708797990', '0708797990', '', 'girmak@outlook.com', '', 'Manager', '', 'SAP', 'Tirset', '', '', '', '', '', 'stirset@gmail.com', '', '', '', '', '0708797990', 47, '1415739600', '1527454800', -10800, '1532935680', '', '', '', '', 1, 237, '', 8, 0, '125', 'sharon', '107360', '24235534', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Zenash Degefa', 'Collegue', '', '', '', '', 0, '', 'Admitted', 0, 1528059600, 1528059600, '', 1528059600, 1, 0, 0, 0, 0, 0, 0, NULL),
(731, '2018-2019', '2018-2019', 1, 47, 'Studying', 'Samuel Afahnwei Mba-bot', '', '', '', '', '', '', '', '', '', 'Desiree Afor', NULL, '', '0780002877', '780002877', '', 'desireeafor@yahoo.com', '', '', '', '', '0780002877', 47, '1426107600', '1531774800', 0, '1532935980', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '847619', '47724304', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Faustine Ntuba', 'Friend', '0701051832', '', '', '', 0, '', 'Admitted', 0, 1531774800, 1531774800, '', 1531774800, 1, 0, 0, 0, 0, 0, 0, NULL),
(732, '2018-2019', '2018-2019', 1, 38, 'Studying', 'Ethen Girma Kassa', 'Girma', '0708797990', '', '', 'girmak@outlook.com', '', '', '', '', 'Tirset', '', '', '0715320775', '', '', 'stirset@gmail.com', '', '', '', '', '0708797990', 38, '1237323600', '1527454800', -10800, '1532937960', '', '', '', '', 1, 237, '', 7, 0, '125', 'sharon', '850009', '47249145', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'ZenashDegefa', 'Collegue', '0726978909', '', '', '', 0, '', 'Admitted', 0, 1528059600, 1528059600, '', 1528059600, 1, 0, 0, 0, 0, 0, 0, NULL),
(735, '2018-2019', '2018-2019', 1, 39, 'Studying', 'Amanuel Girma Kassa', 'Girma Kassa', '0708797990', '0708797990', '', 'girmak@outlook.com', '', '', '', '', 'Tirset Kassa', '', '', '0715320775', '0715320775', '', 'stirset@gmail.com', '', '', '', '', '0715320775', 39, '1171314000', '1528059600', -10800, '1534249560', '', '', '', '', 1, 237, '', 7, 0, '125', 'sharon', '589605', '70065002', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Zenash Degefa', 'Collegue', '0726978909', '', '', '', 0, '...', 'Admitted', 0, 1528059600, 1528059600, '', 1528059600, 1, 0, 0, 0, 0, 0, 0, NULL),
(736, '2018-2019', '2018-2019', 1, 39, 'Studying', 'Mustapha Gabril Koroma', 'Mustapha  Koroma', '0713904220', '0713904220', '', 'koroma7@un.org', '', '', '', '', 'Regina Koroma', '', '', '0707248516', '0707248516', '', 'rubybrowne49@gmail.com', '', '', '', '', '0707248516', 39, '1130533200', '1517778000', -10800, '1534249740', '', '', '', '', 1, 345, '', 7, 0, '125', 'sharon', '742727', '28237304', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '..', 'Admitted', 0, 1519592400, 1519592400, '', 1519592400, 1, 0, 0, 0, 0, 0, 0, NULL),
(737, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Ishaan Mahesh Chandargi', 'Dr. Mahesh Chandargi', '0719857966', '', '', 'mchandargi@gmail.com', '', '', '', '', 'Dr. Rohini Patil', '', '', '0788883669', '', '', 'docrohinipatil@gmail.com', '', '', '', '', '', 30, '1359925200', '1519592400', -10800, '1534249980', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '539865', '28231811', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '..', 'Admitted', 0, 1519592400, 1519592400, '', 1519592400, 1, 0, 0, 0, 0, 0, 0, NULL),
(738, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Mohamed Aahil Asif Ganatra', 'Asif Ganatra', '0722786876', '0722786876', '', 'ganatrasif@gmail.com', '', 'Businessman', '', 'Self', 'Ashfa Kassam', '', '', '0722811905', '0722811905', '', 'ashfasif@gmail.com', '', 'Housewife', '', '', '0722811905', 30, '1335733200', '1524690000', -10800, '1534250460', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '824053', '58617248', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Nassim Ganatra', 'Grandmother', '0725241022', '', '', 'Parklands', 0, '..', 'Admitted', 0, 1524690000, 1524690000, '', 1524690000, 1, 0, 0, 0, 0, 0, 0, NULL),
(740, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Nathan Hiuhu  Nderitu', 'Sydney Nderitu', '0722636435', '', '', 'nderitusydney@gmail.com', '', '', '', '', 'Kendi Nderitu', '', '', '0737866804', '', '', 'ntwigak@gmail.com', '', '', '', '', '', 30, '1370552400', '1519246800', -10800, '1534250940', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '949188', '20285949', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '..', 'Admitted', 0, 1519246800, 1519246800, '', 1519246800, 1, 0, 0, 0, 0, 0, 0, NULL),
(741, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Sean Mwangi Mbuo', 'Silas Mbuo', '0722303741', '', '', 'silasmbuo@gmail.com', '', '', '', '', 'Mary Mbuo', '', '', '0722803277', '', '', 'wambuo@gmail.com', '', '', '', '', '', 30, '1331499600', '1533070800', -10800, '1534251120', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '865335', '62822265', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '..', 'Admitted', 0, 1533070800, 1533070800, '', 1533070800, 1, 0, 0, 0, 0, 0, 0, NULL),
(742, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Rahab David Mpinga', 'David Mpinga', '0726362258', '', '', 'david.mpinga@gmail.com', '', '', '', '', 'Beatrice Kinyanjui', '', '', '0715777040', '', '', 'bkinyanjui@global.t-bird.edu', '', '', '', '', '', 30, '1350507600', '1526331600', -10800, '1534251420', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '914663', '51978759', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '...', 'Admitted', 0, 1526331600, 1526331600, '', 1526331600, 1, 0, 0, 0, 0, 0, 0, NULL),
(743, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Kelithi Kevali Sesi', 'Paul Sesi', '0722816347', '', '', 'sesipaul@gmail.com', '', '', '', '', 'Clarice Sesi', '', '', '0722380157', '', '', 'cindosio8@gmail.com', '', '', '', '', '0722380157', 33, '1346101200', '1517778000', -10800, '1534315860', '0734533361', '0734533360', '', '', 1, 123, '', 7, 0, '125', 'sharon', '512069', '20310668', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '07', '', '', '', 0, 'ICK', 'Admiitted', 0, 1517778000, 1517778000, '', 1517778000, 1, 0, 0, 0, 0, 0, 0, NULL),
(744, '2018-2019', '2018-2019', 1, 33, 'Studying', 'Malin Njoki Martinsen', 'Peter Anders Martinsen', '0714224050', '', '', 'petmartinsen@gmail.com', '', '', '', '', 'Bertha Wangari Mungai', '', '', '0720712730', '', '', 'bkangongoi@gmail.com', '', '', '', '', '', 33, '1320181200', '1531688400', -10800, '1534316220', '', '', '', '', 1, 333, '', 8, 0, '125', 'sharon', '842208', '21903686', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '..', 'Admitted', 0, 1531688400, 1531688400, '', 1531688400, 1, 0, 0, 0, 0, 0, 0, NULL),
(746, '2018-2019', '2018-2019', 1, 67, 'Studying', 'Eugene Mwirigi Mathiu', 'James Kubai', '0722984375', '0722984375', '', 'jmkubai@gmail.com', '', '', '', '', 'Florence Kaibi', '', '', '0721520321', '0721520321', '', 'fkkaibi@gmail.com', '', '', '', '', '', 32, '1319403600', '1518037200', -10800, '1534324140', '', '', '', '', 1, 123, '', 7, 0, '125', 'sharon', '613336', '62242736', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '...', 'Admitted', 0, 1518037200, 1518037200, '', 1518037200, 1, 0, 0, 0, 0, 0, 0, NULL),
(747, '2018-2019', '2017-2018', 2, 33, 'Studying', 'Calvin Njuguna.', 'Charles Chege Njuguna', '0720901476', '0720901476', '', 'c.njuguna@gmail.com', '', '', '', '', 'Angela Wanjiru', '', '', '0722842759', '0722842759', '', 'angela.ndiba@gmail.com', '', '', '', '', '0722842759', 35, '1301778000', '1513112400', -10800, '', '', '', '', '', 1, 123, '', 7, 0, '125', 'student', '959295', '88620910', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Joseph Njuguna', 'Uncle', '0720407212', '', '', '', 0, '', '', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(748, '2018-2019', '2017-2018', 1, 33, 'Studying', 'David Mpinga.', 'Nil', '0726362258', '0726362258', '', 'david.mpinga@gmail.com', '', 'Businessman', '', 'Self', 'Beatrice Kinyanjui', '', 'parents', '0715777040', '0715777040', '', 'bkinyanjui@global.t-bird.edu', '', 'Consulting', '', 'Cardono', '0715777040', 35, '1302469200', '1498078800', -10800, '', '', '', '2983 Nakuru', '', 1, 295, '', 7, 0, '125', 'student', '494107', '45606689', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Edwin Gachaga', 'Uncle', '0724140960', 'Nil', 'Nil', 'Nil', 0, 'Imani School', 'Visited School.Application Received. Test Administered on 22/6/17,came for Yr 2 orientation same day.Assessment & Application Paid .\r\n', 0, -10800, 1487624400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(749, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Isabelle Kabura Gachiengu.', 'Christopher Gacheru', '0715215840', '0715215840', '', 'cgacheru23@yahoo.co.uk', '', 'Engineer', '', 'Gatoka', 'Mary Gachiengu', '', 'parents', '0714836905', '0714836905', '', 'mary.gachiengu@gmail.com', '', 'Manager', '', 'Nairobi Law Institute', '0714836905', 35, '1292965200', '1499029200', -10800, '', '', '', '68203-00200', '', 1, 123, '', 8, 0, '125', 'student', '935757', '85025634', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Anne Mbugua', 'Grandmother', '722424125', '', 'mbuguaann@yahoo.com', 'Garden Estate Road', 0, 'ICK', 'Visited the School Met with Mrs Im.Assessment to be sent to ICK(virginia to administer).Enrolled', 0, -10800, 1499029200, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(750, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Isaiah Sabaja Omamo.', 'Tomas Omamo', '727376465', '727376465', '', 'kenya.md@sevenbrands.mobi', '', 'Marketer', '', 'Seven Brands Kenya', 'Caroline Wamatu', '', 'parents', '719825424', '719825424', '', 'cwamatu@msn.com', '', 'Consultant', '', 'Self', '719825424', 35, '1304110800', '1430168400', -10800, '', '', '', '1885-00502', '', 1, 123, '', 7, 0, '125', 'student', '698095', '81595153', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Dr Chimmy Olende', 'Aunt', '733913573', '202720480', '', 'Doctors Plaza,Nairobi Hospital', 0, 'ICK@SON', 'Did Assessment on 21/2/2017.', 0, -10800, 1487710800, '', 1488488400, 0, 0, 0, 0, 0, 0, 0, NULL),
(751, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Oliver Muange Musyoka.', 'Bernard Musyoka', '724753009', '724753009', '', 'musyokamuange@gmail.com', '', 'Lawyer', '', 'MMC Africa Law', 'Loise Musyoka', '', '', '723542474', '723542474', '', 'loiseben@gmail.com', '', 'Lawyer', '', 'Nairobi Stock Exchange', '723542474', 35, '1295557200', '1487538000', -10800, '', '', '', '1705-00100 Nrb', '', 1, 123, '', 7, 0, '125', 'student', '986816', '61424255', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Margaret Ndungu', 'Aunt', '702308902', 'Nil', 'Nil', 'Nil', 0, 'ICK', 'Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid in ICK.', 0, -10800, 1487624400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(752, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Rhea Kaur Sihra.', 'Kulvinder Sihra', '0722510413', '722510413', '', 'sunny@sarl.co.ke', '', 'Bussinessman', '', 'Self', 'Manjeet Sihra', '', 'Parents', '0722488854', '0722488854', '', 'manisihra@hotmail.co.uk', '', 'Housewife', '', 'N/A', '0722488854', 35, '1297112400', '1456088400', -10800, '', '', '', '407785-00100 Nrb', '', 1, 226, '', 8, 0, '125', 'student', '185665', '28319702', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Mandy Sihra', 'Aunt', '722702313', '', 'mandysihra@hotmail.co.uk', 'Theo Rd Loresho', 0, 'Kyuna Kindergarten', 'Application Received.\r\nTest Administered on 21/2/17.\r\nAssessment & Application Paid.Came for orientation on 22/6/2017.', 0, -10800, 1456088400, '', 1454965200, 0, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `registration` (`RegistrationId`, `Session`, `FirstSession`, `FirstTerm`, `FirstSection`, `Status`, `StudentName`, `FatherName`, `FatherMobile`, `FatherOfficePhone`, `FatherDateOfBirth`, `FatherEmail`, `FatherQualification`, `FatherOccupation`, `FatherDesignation`, `FatherOrganization`, `MotherName`, `GuardianName`, `KenyanGuardian`, `MotherMobile`, `MotherOfficePhone`, `MotherDateOfBirth`, `MotherEmail`, `MotherQualification`, `MotherOccupation`, `MotherDesignation`, `MotherOrganization`, `Mobile`, `SectionId`, `DOB`, `DOR`, `DOAcceptance`, `DOE`, `Landline`, `AlternateMobile`, `PresentAddress`, `PermanentAddress`, `BloodGroup`, `Caste`, `Category`, `Gender`, `Nationality`, `Language`, `Username`, `ParentsPassword`, `StudentsPassword`, `DOL`, `DOLUsername`, `DOD`, `DODUsername`, `DateOfTermination`, `TermTerminated`, `SessionTerminated`, `TerminationReason`, `TerminationRemarks`, `DOT`, `kcpe`, `borderday`, `EmergencyName`, `EmergencyRelationship`, `EmergencyPhone`, `EmergencyOfficePhone`, `EmergencyEmail`, `EmergencyAddress`, `LastClass`, `PreviousSchool`, `SpecialRemarks`, `DOTest`, `DateDepositPaid`, `DORecords`, `TestMarks`, `DOA`, `Term`, `maths`, `science`, `english`, `english2`, `maths2`, `science2`, `DateOfRejoining`) VALUES
(753, '2018-2019', '2016-2017', 1, 30, 'Studying', 'Richard sesay', 'Richmond Sesay', '2327672911', '', '', 'rssesay@yahoo.com', '', 'Nil', '', 'Goverment of Sierra Leonean', 'Fatmatu Sesay', 'N/A', '', '0708389194', 'Nil', '', 'ffsesay@unicef.org', '', 'Nutrition Specialist', '', 'UNICEF', '0708389194', 35, '1276117200', '1473109200', -10800, '', '', '', '44145-00100', '', 1, 298, '', 7, 0, '125', 'student', '745254', '45321044', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Maria Kamara', 'Aunt', '702116112', '', 'mariaabk@yahoo.com', 'Nil', 0, '', '', 0, -10800, 1487710800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(754, '2018-2019', '', 1, 0, 'Terminated', 'Sandra Muthoni Weru.', 'Steve Weru Muthuma', '733527073', '728601601', '', 'stevemuthuma@gmail.com', '', 'Director', '', 'Hashi Energy Limited', 'Judy Wangui Weru', '', '', '722396565', '722396565', '', 'jhiuhu2003@yahoo.com', '', 'Director', '', 'Color of Lights', '722396565', 35, '1292014800', '1389906000', 0, '', '', '', '13555-00800 Nrb', '', 0, 1, '', 8, 0, '', 'student', '357217', '74896240', '', '', '', '', '1530824400', '3', '2017-2018', '111', '....', '1536241920', 0, 'D', 'Catherine Hiuhu', 'Aunt', '722399780', '', '', 'Golf Course Estate #133/32', 33, 'N/A', 'Application Received.\r\nTest Administered on 21/2/17. ', 0, 0, 1487710800, '', 1488488400, 0, 0, 0, 0, 0, 0, 0, NULL),
(755, '2018-2019', '2017-2018', 1, 33, 'Studying', 'Tayiani Gathingia Lusiola.', 'Sammy Lusiola', '710514256', '202372965', '', 'sammy.lusiola@gmail.com', '', 'Nil', '', 'Reelforge Systems Limited', 'Wanjiru Kanyiha', '', 'parents', '722794775', '', '', 'jkanyiha@gmail.com', '', 'Lawyer', '', 'Inuka Kenya Ltd', '722794775', 35, '1301950800', '1500843600', -10800, '', '', '', '8125-00200', '', 1, 123, '', 8, 0, '125', 'student', '523934', '61399536', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Mary Kanyiha', 'Grandma', '790318049', '', 'kanyihamary@yahoo.com', 'Valley Arcade #705', 0, 'Playstreet Kindergarten', '.', 0, -10800, 1475528400, '', 1479157200, 0, 0, 0, 0, 0, 0, 0, NULL),
(756, '2018-2019', '2016-2017', 1, 33, 'Studying', 'Purpose Shaddai Ruto', 'Philip Rotino', '0717891222', '706548568', '', 'pmoiben@yahoo.com', '', 'MP', '', 'National Assembly', 'Juddy Opiyo', '', 'Both Parents', '0727022010', '0727022010', '', 'juddyopiyo@gmail.com', '', 'Businesslady', '', 'Self-Employed', '0727022010', 36, '1281301200', '1456088400', -10800, '', '', '', 'P.O. BOX  3476-30200 Kitale', '', 1, 123, '', 8, 0, '125', 'student', '923123', '89606933', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Diana Opiyo', 'Aunty', '720868683', '722500222', '', 'Teaboard of kenya Dagoretti', 0, '', 'Admitted', 0, -10800, 1456088400, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(759, '2018-2019', '2018-2019', 1, 41, 'Studying', 'Valerie Muchiri', 'Samuel Kamau', '0726932439', '', '', 'smkamau@outlook.com', '', '', '', '', 'Florence Kinuthia', '', '', '0717400795', '0717400795', '', 'fcussons@outlook.com', '', '', '', '', '0717400795', 41, '1131483600', '1535922000', -10800, '1535979540', '', '', '', '', 1, 123, '', 8, 0, '125', 'sharon', '369631', '96220703', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', '', '', '', '', '', '', 0, '', '......', 0, 1535922000, 1535922000, '', 1535922000, 1, 0, 0, 0, 0, 0, 0, NULL),
(760, '2018-2019', '2018-2019', 1, 41, 'Studying', 'Floyd Lee VanHorn', 'Christopher Ross VanHorn', '0737082577', '0737082577', '', 'rossvanhorn@gmail.com', '', '', '', '', 'N/A', '', '', '', '', '', '', '', '', '', '', '0737082577', 41, '1094504400', '1535749200', -10800, '1536057360', '', '', '', '', 1, 237, '', 7, 0, '125', 'sharon', '138204', '43964233', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Duncan Mondesto', 'Household Manager', '0724394110', '', '', '', 0, 'USA', 'Admitted', 0, -10800, 1535749200, '', 1535922000, 1, 0, 0, 0, 0, 0, 0, NULL),
(762, '2018-2019', '2018-2019', 1, 68, 'Studying', 'Chiema Omamo ', 'Tomas Omamo', '0727376465', '0727376465', '', 'kenyamd@sevenbrands.mobi', '', 'Bussinessman', '', 'Seven Brands', 'Caroline Wamatu', 'Chimmy Olende', 'Both Parents', '0719825424', '0719825424', '', 'cwamatu@msn.com', '', 'Consultant', '', 'Self- Employed', '0719825424', 68, '1446843600', '1536181200', -10800, '1536301560', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '701336', '81985168', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Chimmy Olende', 'Aunt', '0720205795', '', '', 'Aga Khan Doctor&#039;s Plaza', 0, '', '....', 0, 1536181200, 1536181200, '', 1536181200, 1, 0, 0, 0, 0, 0, 0, NULL),
(763, '2018-2019', '2018-2019', 1, 68, 'Studying', 'Maggie Nina  Atemba ', 'Moses Atemba', '0724214349', '0724214349', '', 'moses.k.atemba@gmail.com', '', 'Engineer', '', 'Triopt Africa', 'Penninah Muringo', '', '', '0722480825', '0722480825', '', 'pennymunyaka@gmail.com', '', 'Advocate', '', 'Chebet & Munyaka Advocates', '0722480825', 68, '1451854800', '1536526800', -10800, '1536562380', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '660577', '72503967', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Gaulina Mayieko', 'Family Friend', '0722917730', '', '', 'Precious Gardens', 0, '', '....', 0, 1536526800, 1536526800, '', 1536526800, 1, 0, 0, 0, 0, 0, 0, NULL),
(764, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Sudi Musunga', 'Maithya Musunga', '0720924136', '', '', 'musunga@gmail.com', '', '', '', '', 'Pauline Gitonga', '', '', '0722762910', '', '', 'paula.n.gitonga@gmail.com', '', '', '', '', '', 30, '1312405200', '1536094800', -10800, '1536565320', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '401766', '65003051', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 1536094800, 1536094800, '', 1536094800, 1, 0, 0, 0, 0, 0, 0, NULL),
(765, '2018-2019', '2018-2019', 1, 47, 'Studying', 'Jayden John Kibuchi', 'Patrick Kibuchi', '0726465533', '0726465533', '', 'pkibuchi@kibuchi.com', '', 'Advocate', '', 'Kibuchi Company', 'Esther Kungu', NULL, '', '0727780990', '0727780990', '', 'ewkungu@gmail.com', '', 'Legal Counsel', '', 'AIG kENYA', '0727780990', 47, '1410296400', '1487538000', 0, '1536572940', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '979592', '91826171', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', 'Gladys Kibuchi', 'Grandmother', '0722821177', '', '', 'Kibuwa Enterprises Ltd', 0, 'ICK', '....', 0, 1487538000, 1487538000, '', 1487538000, 1, 0, 0, 0, 0, 0, 0, NULL),
(766, '2018-2019', '2018-2019', 1, 30, 'Studying', 'Adeyemi Adeyeloja', 'Adebayo Adeyeloja', '+234803301', '', '', 'bayoa@uniqueinstrumentsng.com', '', '', '', '', 'Loise Adeyeloja', '', '', '+254725618', '', '', 'lmunyambu@gmail.com', '', '', '', '', '', 30, '1349211600', '1536526800', -10800, '1537167900', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '515667', '12353820', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '...', 0, 1536526800, 1536526800, '', 1536526800, 1, 0, 0, 0, 0, 0, 0, NULL),
(767, '2018-2019', '2018-2019', 1, 48, 'Studying', 'Matida Mhosva', 'Nyasha Mhosva', '0734918788', '', '', 'mhosvan@gmail.com', '', '', '', '', 'Blessing Mhosva', '', '', '0700100447', '', '', 'bnyaruviro@gmail.com', '', '', '', '', '', 48, '1386709200', '1536008400', -10800, '1537169580', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '756323', '56568298', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '..', 0, 1536008400, 1536008400, '', 1536008400, 1, 0, 0, 0, 0, 0, 0, NULL),
(768, '2018-2019', '2018-2019', 1, 33, 'NotAdmitted', 'Ivan Merari Ibrahim', 'Bashir Ibrahim Muthiani', '0724637788', '', '', 'bmuthiani@gmail.com', '', '', '', '', 'Carol Ann Nyambura', NULL, '', '0722782217', '', '', 'carol254muchoki@gmail.com', '', '', '', '', '', 33, '1327093200', '1537218000', 0, '1537277160', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '962921', '66175842', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '....', 0, 1537218000, 1537218000, '', 1537218000, 1, 0, 0, 0, 0, 0, 0, NULL),
(769, '2018-2019', '2018-2019', 1, 39, 'NotAdmitted', 'John Paul Mwangi Muchoki', 'Jackson Muchoki Mwangi', '0700251640', '', '', 'jackagnamik@yahoo.com', '', '', '', '', 'Irene Wanjiru Gichuhi', NULL, '', '0722801399', '', '', 'wanjirugichuhi15@gmail.com', '', '', '', '', '', 39, '1202936400', '1537218000', 0, '1537352100', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '883901', '78785400', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '..', 0, 1537218000, 1537218000, '', 1537218000, 1, 0, 0, 0, 0, 0, 0, NULL),
(770, '2018-2019', '2018-2019', 2, 36, 'NotAdmitted', 'Izuba Karimba', '', '', '', '', '', '', '', '', '', 'Anatoria K.', NULL, '', '0799402495', '', '', 'aalexia10@gmail.com', '', '', '', '', '', 36, '1261429200', '1536181200', 0, '1542176340', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '871569', '13996276', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'G.H.A', 'At Kigali now', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(771, '2018-2019', '2018-2019', 2, 30, 'NotAdmitted', 'Nziza Karimba', '', '', '', '', '', '', '', '', '', 'Anataria K.', NULL, '', '0799402495', '', '', 'aalexia10@gmail.com', '', '', '', '', '', 30, '1339016400', '1536181200', 0, '1542176940', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '441729', '44642639', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'G.H.A', 'At Kigali for Now', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(772, '2018-2019', '2018-2019', 2, 48, 'NotAdmitted', 'Tesi Karimba ', '', '', '', '', '', '', '', '', '', 'Anataria K.', NULL, '', '0799402495', '', '', 'aalexia10@gmail.com', '', '', '', '', '', 48, '1450558800', '1536181200', 0, '1542177180', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '729791', '12189025', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'G.H.A', 'At Kigali for now.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(773, '2018-2019', '2018-2019', 2, 42, 'NotAdmitted', 'Sheenah Jaoko', '', '', '', '', '', '', '', '', '', 'Lilian Jaoko', NULL, '', '0724082941', '', '', 'lilian.jaoko@gmail.com', '', '', '', '', '', 42, '1106686800', '1538427600', 0, '1542177540', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '392895', '64698181', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Logo Christian School', 'As soon as she is done with her KCPE.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(774, '2018-2019', '2018-2019', 2, 33, 'NotAdmitted', 'Michelle Wakonyo', 'George Mbira', '0722435168', '', '', 'gmbira@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 33, '1311195600', '1540242000', 0, '1542177780', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '376855', '65818786', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Royal Brain', 'Will be in touch when they decide.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(775, '2018-2019', '2018-2019', 2, 40, 'NotAdmitted', 'Precious Twahira', '', '', '', '', '', '', '', '', '', 'Annet Twahira', NULL, '', '0705519056', '', '', 'annet.nainebicar@gmail.com', '', '', '', '', '', 40, '1106686800', '1540501200', 0, '1542178140', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '524676', '30217590', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rwanda', 'Admission for January.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(776, '2018-2019', '2018-2019', 2, 34, 'NotAdmitted', 'Pretty Twahira', '', '', '', '', '', '', '', '', '', 'Annet Twahira', NULL, '', '0705519056', '', '', 'annet.nainebicar@gmail.com', '', '', '', '', '', 34, '1300222800', '1540501200', 0, '1542178320', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '977972', '46631164', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rwanda', 'Admission for January.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(777, '2018-2019', '2018-2019', 2, 30, 'NotAdmitted', 'Brayden Twahira', '', '', '', '', '', '', '', '', '', 'Annet Twahira', NULL, '', '0705519056', '', '', 'annet.nainebicar@gmail.com', '', '', '', '', '', 30, '1360789200', '1540501200', 0, '1542178500', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '496057', '96943054', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rwanda', 'Admission For January.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(778, '2019-2020', '2019-2020', 1, 30, 'NotAdmitted', 'Michael Muathine', 'Stephen Masila ', '0722282965', '', '', 'steve.masila@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1397595600', '1541970000', 0, '1542178920', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '729626', '99118347', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Montessori Plus Centre', 'Enquiring for September 2019', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(779, '2018-2019', '2018-2019', 2, 38, 'NotAdmitted', 'Mwega Kanyi', 'Robert Kanyi ', '0722881270', '', '', 'robertkanyi@gmail.com', '', '', '', '', 'Alice Kanyi', NULL, '', '0722797750', '', '', 'alisonique@yahoo.com', '', '', '', '', '', 38, '1226955600', '1534885200', 0, '1542179400', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '162677', '94960021', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rose of Sharon', 'January 2019', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(780, '2018-2019', '2018-2019', 1, 42, 'NotAdmitted', 'Mario Stefan M.', '', '', '', '', '', '', '', '', '', 'Phylis Mugure', NULL, '', '0720349222', '', '', 'mugurenjenge@gmail.com', '', '', '', '', '', 42, '1024261200', '1535922000', 0, '1542180360', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '500396', '57804260', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Nova Pioneer', 'Enquiry', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(781, '2018-2019', '2018-2019', 2, 47, 'NotAdmitted', 'Savanna Marie', '', '', '', '', '', '', '', '', '', 'Phylis Mugure', NULL, '', '0720349222', '', '', 'mugurenjenge@gmail.com', '', '', '', '', '', 47, '1412110800', '1535922000', 0, '1542180480', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '117358', '60523376', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Nova Pioneer', 'Enquiry', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(782, '2018-2019', '2018-2019', 0, 68, 'NotAdmitted', 'Jeremy Waweru', '', '', '', '', '', '', '', '', '', 'Carol  Waweru', NULL, '', '0722298281', '', '', 'carolmuriithi@gmail.com', '', '', '', '', '', 68, '1472850000', '1536008400', 0, '1542180660', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '140429', '40418395', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Enquiry and Enrollment', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(783, '2018-2019', '2018-2019', 1, 39, 'NotAdmitted', 'Kenan Nkonge ', 'Martin Nkonge', '0722771109', '', '', 'martin@tribeka.co.ke', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 39, '1192136400', '1536008400', 0, '1542180840', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '618280', '64363098', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Logos Christian School', 'Enquiry', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(784, '2018-2019', '2018-2019', 1, 36, 'NotAdmitted', 'Makena Nkonge', 'Martin Nkonge', '', '', '', 'martin@tribeka.co.ke', '', '', '', '', 'Jackie Nkonge', NULL, '', '', '', '', 'jackienkonge@gmail.com', '', '', '', '', '', 36, '1263330000', '1536008400', 0, '1542181260', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '903265', '34590148', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Logos Christian School', 'Enquiry', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(785, '2018-2019', '2018-2019', 1, 34, 'NotAdmitted', 'Wanjiku Nkonge ', 'Martin Nkonge', '0722771109', '', '', 'martin@tribeka.co.ke', '', '', '', '', 'Jackie Nkonge', NULL, '', '', '', '', 'jackienkonge@gmail.com', '', '', '', '', '', 34, '1304456400', '1536008400', 0, '1542181500', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '649426', '14721374', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Logos Christian School', 'Enquiry', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(786, '2018-2019', '2018-2019', 1, 68, 'NotAdmitted', 'Nguru Nkonge', 'Martin Nkonge', '0722771109', '', '', 'martin@tribeka.co.ke', '', '', '', '', 'Jackie Nkonge', NULL, '', '', '', '', 'jackienkonge@gmail.com', '', '', '', '', '', 68, '1460408400', '1536008400', 0, '1542181740', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '629156', '87027893', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Enquiry', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(787, '2018-2019', '2018-2019', 1, 40, 'NotAdmitted', 'Kito Musunga', '', '', '', '', '', '', '', '', '', 'Pauline Musunga', NULL, '', '0722762910', '', '', 'paula.n.gitonga@gmail.com', '', '', '', '', '', 40, '1213045200', '1536094800', 0, '1542181980', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '535388', '49811706', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Braeside', 'Sept 2019', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(788, '2018-2019', '2018-2019', 2, 34, 'NotAdmitted', 'Paula Wahu ', 'John Kanyonyo', '0722522276', '', '', 'jkkanyonyo@gmail.com', '', '', '', '', 'Ann Waceke', NULL, '', '0723440064', '', '', '', '', '', '', '', '', 34, '1305061200', '1530133200', 0, '1542257820', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '625723', '98055419', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kianda School', 'Enquiry ', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(789, '2018-2019', '2018-2019', 1, 47, 'NotAdmitted', 'Gael  Espana', 'Gustavo', '', '', '', '', '', '', '', '', 'Taira', NULL, '', '', '', '', 'casnlhhoraisa@gmail.com', '', '', '', '', '', 47, '1466888400', '1530133200', 0, '1542258240', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '419345', '62542114', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'From Agent', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 0, NULL),
(790, '2018-2019', '2018-2019', 2, 39, 'NotAdmitted', 'Prudence Gathoni', '', '', '', '', '', '', '', '', '', 'Recho Ngumi', NULL, '', '', '', '', 'resianguoi@gmail.com', '', '', '', '', '', 39, '1216242000', '1538082000', 0, '1542260580', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '573153', '18508911', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'HHS', 'Enquiry', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(791, '2018-2019', '2018-2019', 0, 36, 'NotAdmitted', 'Jae Yoon', '', '', '', '', '', '', '', '', '', 'Mali Yoon', NULL, '', '0707938592', '', '', 'mali.kasina@yahoo.com', '', '', '', '', '', 36, '1129064400', '1530133200', 0, '1542260760', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '650222', '44562988', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Hillcrest', 'Will come end of June.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(792, '2018-2019', '2018-2019', 0, 33, 'NotAdmitted', 'Justin Yoon', '', '', '', '', '', '', '', '', '', 'Mali Yoon', NULL, '', '0707938592', '', '', 'mali.kasina@yahoo.com', '', '', '', '', '', 33, '1310850000', '1538082000', 0, '1542260880', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '250320', '33049316', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Hillcrest', 'Will come end of June.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(793, '2018-2019', '2018-2019', 2, 30, 'NotAdmitted', 'Shanney Kemmey', 'Kemmey Sammy', '0738841977', '', '', '', '', '', '', '', 'Kemmey Eva', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1360702800', '1530133200', 0, '1542261060', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '614352', '66178588', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Msingi Bora Kindergarten', 'January 2019 intake.', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(794, '2018-2019', '2018-2019', 1, 30, 'NotAdmitted', 'Sean Kiambi', 'N/A', '', '', '', '', '', '', '', '', 'Leah Gakuo', '', '', '0722978814', '', '', 'gakuoleah@gmail.com', '', '', '', '', '', 30, '1376254800', '1537909200', -10800, '1542261240', '', '', '', '', 1, 1, '', 7, 0, '', 'sharon', '474606', '72243041', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Early Learning Montessori', 'Enquiry', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(795, '2018-2019', '2018-2019', 0, 39, 'NotAdmitted', 'Denver Gitonga', 'Francis Kirema', '+251929904', '', '', 'efkirema@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 39, '1221080400', '1537909200', 0, '1542261600', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '194839', '49254150', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'ICS Addis', 'Enquiry.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(796, '2018-2019', '2018-2019', 0, 30, 'NotAdmitted', 'Mumbi Muthama', 'Muthama Kimothuo', '0722316163', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 30, '1380315600', '1530133200', 0, '1542262140', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '371499', '11021728', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Muthaiga Kindergarten', 'Good School', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(797, '2018-2019', '2018-2019', 0, 39, 'NotAdmitted', 'Micheni Muthuuri', '', '', '', '', '', '', '', '', '', 'Njoki Muthuuri', NULL, '', '0726806222', '', '', 'znjoki@gmail.com', '', '', '', '', '', 39, '1205442000', '1538082000', 0, '1542262260', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '667855', '13125610', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Gifted hands', 'Enquiry.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(798, '2018-2019', '2018-2019', 0, 34, 'NotAdmitted', 'Tara Kanyingi ', 'Gilbert Kanyingi', '0722625218', '', '', 'gilbertkanyingi@gmail.com', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 34, '1258059600', '1537995600', 0, '1542262380', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '767172', '93721313', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'To see Dr. Onala', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(799, '2018-2019', '2018-2019', 0, 38, 'NotAdmitted', 'Michelle Aima', '', '', '', '', '', '', '', '', '', 'Mrs.Odero', NULL, '', '0724327272', '', '', 'dmikwa@gmail.com', '', '', '', '', '', 38, '1230670800', '1538427600', 0, '1542262560', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '209671', '55615234', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Kilimani Junior', 'Great Facilities.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(800, '2018-2019', '2018-2019', 0, 47, 'NotAdmitted', 'Haddassa Wairimu', '', '', '', '', '', '', '', '', '', 'Emily Gikuhi', NULL, '', '0705919039', '', '', 'gikuhiemily@gmail.com', '', '', '', '', '', 47, '1434920400', '1538600400', 0, '1542262620', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '131448', '98066406', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Excellent Reception.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(801, '2018-2019', '2018-2019', 1, 36, 'NotAdmitted', 'Kimberly Kimani', 'Elijah Kimani', '0711405460', '', '', 'kkimanielijah@gmail.com', '', '', '', '', 'Jackie Kimani', '', '', '0722327876', '', '', 'njahira2000@yahoo.com', '', '', '', '', '', 36, '1267995600', '1539205200', -10800, '1542262980', '', '', '', '', 1, 1, '', 8, 0, '', 'sharon', '143917', '90414428', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', 'Enquiry', 0, -10800, -10800, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(802, '2018-2019', '2018-2019', 0, 48, 'NotAdmitted', 'Kalya Kimani', 'Elijah Kimani', '0711405460', '', '', 'kkimanielijah@gmail.com', '', '', '', '', 'Jackie Kimani', NULL, '', '', '', '', 'njahira2000@yahoo.com', '', '', '', '', '', 48, '1395262800', '1539550800', 0, '1542263220', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '480538', '92787475', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Rusinga', 'Excellent Meeting.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(803, '2018-2019', '2018-2019', 0, 38, 'NotAdmitted', 'Jason Mbugua', 'Leon Mbugua', '', '', '', '', '', '', '', '', 'Sophie Mbugua', NULL, '', '0703785770', '', '', 'sophie22k@hotmail.com', '', '', '', '', '', 38, '1242766800', '1539810000', 0, '1542263940', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '186709', '17767333', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Mombasa Academy', 'Enquiry.', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(804, '2018-2019', '2018-2019', 0, 30, 'NotAdmitted', 'Jasmine Mbugua', 'Leon Mbugua', '', '', '', '', '', '', '', '', 'Sophie Mbugua', NULL, '', '0703785770', '', '', 'sophie22k@hotmail.com', '', '', '', '', '', 30, '1373230800', '1542920400', 0, '1542264120', '', '', '', '', 0, 0, '', 8, 0, NULL, 'sharon', '881924', '41937255', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'Mombasa Academy', 'Enquiry', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(805, '2018-2019', '2018-2019', 2, 48, 'NotAdmitted', 'Kase Nyaotho', '', '', '', '', '', '', '', '', '', 'Siddy Wambui', NULL, '', '0724574028', '', '', 'siddywambui@gmail.com', '', '', '', '', '', 48, '1395694800', '1540155600', 0, '1542264480', '', '', '', '', 0, 0, '', 7, 0, NULL, 'sharon', '215191', '23482971', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, 'St.Ruth School', 'Looking For January 2019 Intake', 0, 0, 0, '', 0, 2, 0, 0, 0, 0, 0, 0, NULL),
(806, '2016-2017', '2016-2017', 1, 30, 'NotAdmitted', 'Francis Chege', 'John Kamau', '0702771424', '', '', 'fchege22@gmail.com', '', '', '', '', 'margret wambui', NULL, '', '0702771425', '', '', 'fchege22@gmail.com', '', '', '', '', '', 30, '1587502800', '1586811600', 0, '1587200100', '', '', '', '', 0, 0, '', 7, 0, NULL, 'masteruser', '954892', '96715842', '', '', '', '', '', NULL, '', '', '', '', 0, 'D', NULL, NULL, NULL, '', NULL, NULL, 0, '', '', 0, 1586898000, 1586811600, '', 1586120400, 1, 27, 27, 5, 7, 18, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_term`
--

CREATE TABLE `school_term` (
  `id` int(11) NOT NULL,
  `session` varchar(20) NOT NULL,
  `term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_term`
--

INSERT INTO `school_term` (`id`, `session`, `term`) VALUES
(1, '2016-2017', 1),
(2, '2016-2017', 2),
(3, '2016-2017', 3);

-- --------------------------------------------------------

--
-- Table structure for table `session_attendance`
--

CREATE TABLE `session_attendance` (
  `id` int(11) NOT NULL,
  `admid` int(11) NOT NULL,
  `absence_sickness` int(11) NOT NULL,
  `absence_excused` int(11) NOT NULL,
  `absence_unexcused` int(11) NOT NULL,
  `tardiness_excused` int(11) NOT NULL,
  `tardiness_unexcused` int(11) NOT NULL,
  `withdrawal_sickness` int(11) NOT NULL,
  `withdrawal_others` int(11) NOT NULL,
  `session` varchar(20) NOT NULL,
  `term` int(11) NOT NULL,
  `schooldays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_attendance`
--

INSERT INTO `session_attendance` (`id`, `admid`, `absence_sickness`, `absence_excused`, `absence_unexcused`, `tardiness_excused`, `tardiness_unexcused`, `withdrawal_sickness`, `withdrawal_others`, `session`, `term`, `schooldays`) VALUES
(1, 21, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 0),
(2, 109, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(3, 84, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(4, 104, 14, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(5, 110, 15, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(6, 99, 22, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(7, 111, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(8, 112, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(9, 157, 0, 0, 0, 2, 2, 0, 0, '2016-2017', 1, 62),
(10, 116, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(11, 113, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(12, 114, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(13, 115, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(14, 117, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(15, 120, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(16, 38, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(17, 42, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(18, 39, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(19, 41, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(20, 127, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(21, 128, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(22, 321, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(23, 44, 1, 0, 0, 1, 0, 0, 0, '2016-2017', 1, 62),
(24, 169, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(25, 170, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(26, 171, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(27, 172, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(28, 173, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(29, 174, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(30, 322, 3, 0, 0, 2, 0, 1, 0, '2016-2017', 1, 62),
(31, 208, 1, 1, 0, 0, 0, 0, 1, '2016-2017', 1, 62),
(32, 45, 0, 11, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(33, 209, 0, 0, 3, 0, 0, 0, 0, '2016-2017', 1, 62),
(34, 46, 0, 5, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(35, 154, 3, 0, 0, 2, 0, 1, 0, '2016-2017', 1, 62),
(36, 48, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(37, 49, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(38, 50, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(39, 51, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(40, 52, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(41, 132, 2, 0, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(42, 131, 0, 0, 0, 2, 0, 0, 0, '2016-2017', 1, 62),
(43, 210, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(44, 54, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(45, 133, 0, 6, 0, 0, 0, 2, 0, '2016-2017', 1, 62),
(46, 55, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(47, 211, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(48, 56, 3, 0, 0, 2, 0, 1, 0, '2016-2017', 1, 62),
(49, 57, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(50, 212, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(51, 59, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(52, 213, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(53, 60, 1, 0, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(54, 214, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(55, 215, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(56, 216, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(57, 217, 5, 0, 0, 0, 0, 5, 0, '2016-2017', 1, 62),
(58, 164, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(59, 165, 0, 10, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(60, 166, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(61, 218, 0, 1, 0, 0, 0, 0, 1, '2016-2017', 1, 62),
(62, 220, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(63, 219, 0, 0, 0, 30, 30, 0, 0, '2016-2017', 1, 62),
(64, 221, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(65, 242, 0, 0, 0, 2, 3, 0, 0, '2016-2017', 1, 62),
(66, 161, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(67, 222, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(68, 160, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(69, 158, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(70, 223, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(71, 224, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(72, 225, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(73, 227, 4, 4, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(74, 226, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(75, 1, 0, 3, 3, 0, 0, 0, 0, '2016-2017', 1, 62),
(76, 228, 0, 0, 12, 0, 0, 0, 0, '2016-2017', 1, 62),
(77, 229, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(78, 136, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(79, 230, 0, 0, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(80, 234, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(81, 231, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(82, 233, 1, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(83, 293, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(84, 235, 0, 0, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(85, 236, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(86, 237, 3, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(87, 238, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(88, 292, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(89, 239, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(90, 153, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(91, 240, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 1, 62),
(92, 139, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(93, 134, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(94, 135, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(95, 141, 1, 0, 0, 1, 0, 1, 0, '2016-2017', 1, 62),
(96, 143, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(97, 142, 0, 0, 0, 1, 0, 0, 0, '2016-2017', 1, 62),
(98, 140, 0, 0, 0, 0, 4, 0, 0, '2016-2017', 1, 62),
(99, 159, 1, 0, 0, 0, 1, 0, 0, '2016-2017', 1, 62),
(100, 138, 0, 5, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(101, 137, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(102, 152, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(103, 151, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(104, 150, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(105, 149, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(106, 148, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(107, 147, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(108, 146, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(109, 145, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(110, 144, 10, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(111, 96, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(112, 246, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(113, 98, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(114, 92, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(115, 89, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 56),
(116, 175, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 56),
(117, 318, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(118, 320, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(119, 319, 10, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(120, 64, 0, 4, 0, 0, 0, 1, 0, '2016-2017', 1, 62),
(121, 85, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(122, 86, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(123, 88, 9, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(124, 90, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(125, 317, 9, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 56),
(126, 91, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(127, 94, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(128, 65, 0, 9, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(129, 316, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(130, 95, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(131, 47, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(132, 68, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(133, 69, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(134, 70, 0, 0, 0, 1, 0, 0, 0, '2016-2017', 1, 62),
(135, 72, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(136, 314, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(137, 75, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(138, 76, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(139, 77, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(140, 247, 0, 6, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(141, 315, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(142, 81, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(143, 178, 0, 5, 0, 0, 0, 0, 1, '2016-2017', 1, 62),
(144, 179, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(145, 181, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(146, 182, 0, 10, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(147, 183, 0, 6, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(148, 184, 0, 0, 0, 0, 4, 0, 0, '2016-2017', 1, 62),
(149, 185, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(150, 186, 0, 0, 3, 0, 0, 0, 0, '2016-2017', 1, 62),
(151, 188, 0, 0, 13, 0, 0, 1, 0, '2016-2017', 1, 62),
(152, 189, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(153, 194, 0, 0, 0, 0, 3, 0, 0, '2016-2017', 1, 62),
(154, 190, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(155, 191, 0, 0, 3, 0, 5, 0, 0, '2016-2017', 1, 62),
(156, 192, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(157, 193, 0, 5, 0, 0, 5, 0, 0, '2016-2017', 1, 62),
(158, 195, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(159, 196, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(160, 197, 0, 0, 2, 0, 1, 0, 0, '2016-2017', 1, 62),
(161, 198, 0, 0, 3, 0, 0, 0, 0, '2016-2017', 1, 62),
(162, 199, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 62),
(163, 200, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(164, 323, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 63),
(165, 176, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 63),
(166, 177, 0, 0, 2, 7, 7, 0, 0, '2016-2017', 1, 63),
(167, 180, 0, 0, 9, 0, 0, 0, 0, '2016-2017', 1, 63),
(168, 187, 0, 0, 4, 0, 0, 0, 0, '2016-2017', 1, 63),
(169, 201, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 1, 63),
(170, 202, 0, 1, 1, 0, 3, 0, 0, '2016-2017', 1, 63),
(171, 207, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 1, 63),
(172, 203, 0, 0, 4, 0, 3, 0, 0, '2016-2017', 1, 63),
(173, 204, 0, 4, 0, 3, 3, 0, 0, '2016-2017', 1, 63),
(174, 294, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 63),
(175, 205, 0, 0, 0, 0, 8, 0, 0, '2016-2017', 1, 63),
(176, 206, 0, 0, 8, 0, 0, 0, 0, '2016-2017', 1, 63),
(177, 162, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 62),
(178, 284, -1, 0, 0, 0, 0, 0, 0, '2016-2017', 1, 0),
(179, 387, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 0, 0),
(180, 220, 0, 0, 4, 0, 0, 0, 0, '2016-2017', 0, 56),
(181, 169, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 0, 55),
(182, 318, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 0, 56),
(183, 111, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 0, 62),
(184, 168, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 0, 51),
(185, 169, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 2, 55),
(186, 174, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 53),
(187, 173, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 55),
(188, 172, 0, 0, 0, 0, 0, 1, 0, '2016-2017', 2, 54),
(189, 171, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 2, 55),
(190, 170, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 55),
(191, 168, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 2, 51),
(192, 318, 0, 0, 0, 0, 0, 2, 0, '2016-2017', 2, 56),
(193, 220, 0, 0, 4, 0, 0, 0, 1, '2016-2017', 2, 56),
(194, 221, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(195, 242, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 56),
(196, 222, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 56),
(197, 224, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(198, 225, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(199, 227, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(200, 1, 1, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(201, 320, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(202, 229, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(203, 84, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(204, 175, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(205, 85, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(206, 86, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(207, 89, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(208, 386, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 56),
(209, 234, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(210, 231, 0, 0, 4, 0, 0, 0, 0, '2016-2017', 2, 56),
(211, 233, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(212, 235, 0, 5, 3, 0, 0, 0, 0, '2016-2017', 2, 56),
(213, 236, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(214, 238, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(215, 292, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(216, 240, 0, 0, 0, 0, 56, 0, 0, '2016-2017', 2, 56),
(217, 90, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 56),
(218, 317, 0, 0, 3, 0, 0, 0, 0, '2016-2017', 2, 56),
(219, 91, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(220, 98, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(221, 316, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(222, 96, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(223, 92, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(224, 94, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(225, 98, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 0, 56),
(226, 88, 0, 0, 0, 0, 0, 1, 0, '2016-2017', 2, 56),
(227, 284, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(228, 109, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(229, 246, 0, 4, 0, 2, 0, 0, 0, '2016-2017', 2, 56),
(230, 64, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(231, 66, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(232, 321, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(233, 47, 0, 5, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(234, 68, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(235, 45, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(236, 46, 3, 0, 0, 0, -1, 1, 0, '2016-2017', 2, 56),
(237, 70, 0, 0, 0, 1, 0, 0, 0, '2016-2017', 2, 56),
(238, 154, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(239, 72, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(240, 110, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(241, 314, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(242, 75, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(243, 99, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 52),
(244, 76, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(245, 77, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(246, 247, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(247, 315, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(248, 81, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(249, 387, 20, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 52),
(250, 48, 1, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(251, 111, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(252, 49, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(253, 112, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 52),
(254, 50, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(255, 211, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(256, 51, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(257, 116, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 52),
(258, 52, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(259, 132, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(260, 113, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(261, 210, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(262, 131, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(263, 114, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(264, 54, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(265, 133, 8, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(266, 55, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(267, 115, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(268, 212, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(269, 56, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(270, 57, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(271, 117, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(272, 59, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(273, 213, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(274, 322, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(275, 120, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(276, 60, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(277, 38, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(278, 42, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(279, 214, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(280, 215, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(281, 216, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(282, 41, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(283, 128, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(284, 218, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 2, 56),
(285, 219, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(286, 208, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(287, 158, 0, 5, 0, 1, 2, 0, 0, '2016-2017', 2, 56),
(288, 95, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(289, 157, 0, 0, 0, 1, 1, 0, 0, '2016-2017', 2, 56),
(290, 159, 0, 0, 0, 0, 2, 0, 0, '2016-2017', 2, 56),
(291, 160, 3, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(292, 161, 3, 3, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(293, 162, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(294, 176, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(295, 323, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(296, 177, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(297, 180, 4, 4, 4, 0, 0, 0, 3, '2016-2017', 2, 56),
(298, 187, 4, 10, 0, 0, 0, 0, 1, '2016-2017', 2, 56),
(299, 201, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(300, 207, 4, 0, 4, 0, 0, 0, 0, '2016-2017', 2, 56),
(301, 203, 0, 0, 0, 0, 3, 0, 0, '2016-2017', 2, 56),
(302, 144, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(303, 145, 0, 0, 0, 2, 0, 0, 0, '2016-2017', 2, 56),
(304, 204, 4, 4, 0, 0, 1, 4, 0, '2016-2017', 2, 56),
(305, 146, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(306, 147, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(307, 148, 0, 0, 0, 2, 0, 0, 0, '2016-2017', 2, 56),
(308, 380, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(309, 149, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(310, 150, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(311, 151, 0, 6, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(312, 152, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(313, 153, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(314, 217, 4, 0, 0, 0, 0, 1, 0, '2016-2017', 2, 56),
(315, 294, 4, 4, 0, 0, 0, 4, 0, '2016-2017', 2, 56),
(316, 39, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(317, 127, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(318, 205, 0, 0, 0, 0, 7, 0, 0, '2016-2017', 2, 56),
(319, 206, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(320, 44, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(321, 178, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(322, 134, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(323, 181, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(324, 135, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(325, 136, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(326, 182, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(327, 137, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(328, 184, 0, 0, 2, 0, 8, 0, 0, '2016-2017', 2, 56),
(329, 138, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(330, 139, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(331, 140, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(332, 141, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(333, 185, 0, 7, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(334, 142, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(335, 143, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(336, 186, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(337, 189, 0, 0, 0, 0, 1, 0, 0, '2016-2017', 2, 56),
(338, 293, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(339, 194, 0, 0, 4, 0, 14, 0, 0, '2016-2017', 2, 56),
(340, 190, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(341, 226, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(342, 237, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(343, 191, 0, 0, 1, 0, 3, 0, 0, '2016-2017', 2, 56),
(344, 192, 0, 0, 1, 0, 3, 0, 0, '2016-2017', 2, 56),
(345, 193, 0, 0, 6, 0, 20, 0, 0, '2016-2017', 2, 56),
(346, 195, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(347, 196, 0, 0, 3, 0, 11, 0, 0, '2016-2017', 2, 56),
(348, 197, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2, 56),
(349, 200, 0, 0, 1, 0, 4, 0, 0, '2016-2017', 2, 56),
(350, 210, 7, 0, 0, 0, 0, 0, 5, '2016-2017', 3, 37),
(351, 212, 4, 0, 0, 0, 0, 2, 0, '2016-2017', 3, 45),
(352, 213, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(353, 214, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 47),
(354, 527, 0, 25, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(355, 220, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 3, 50),
(356, 221, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(357, 215, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 47),
(358, 242, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 3, 50),
(359, 216, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(360, 222, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 3, 50),
(361, 224, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(362, 225, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(363, 227, 0, 5, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(364, 226, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(365, 1, 1, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(366, 229, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(367, 386, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(368, 234, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(369, 231, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(370, 233, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(371, 235, 0, 0, 3, 0, 0, 0, 0, '2016-2017', 3, 50),
(372, 236, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 50),
(373, 237, 0, 0, 1, 0, 0, 0, 0, '2016-2017', 3, 50),
(374, 238, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 3, 50),
(375, 292, 3, 0, 3, 0, 0, 0, 0, '2016-2017', 3, 50),
(376, 240, 0, 0, 2, 0, 0, 0, 0, '2016-2017', 3, 50),
(377, 217, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 44),
(378, 218, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(379, 219, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 47),
(380, 94, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(381, 64, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(382, 66, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(383, 47, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(384, 68, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(385, 70, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(386, 72, 0, 0, 0, 1, 0, 0, 0, '2016-2017', 3, 49),
(387, 314, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(388, 75, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(389, 76, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(390, 77, 0, 6, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(391, 247, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(392, 81, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(393, 316, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(394, 88, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(395, 89, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(396, 96, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(397, 98, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(398, 318, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(399, 320, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(400, 84, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(401, 175, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(402, 85, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(403, 86, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(404, 90, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(405, 317, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(406, 91, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(407, 92, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(408, 144, 1, 3, 0, 0, 0, 1, 0, '2016-2017', 3, 48),
(409, 157, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(410, 158, 0, 0, 8, 0, 0, 2, 0, '2016-2017', 3, 48),
(411, 159, 1, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(412, 321, 1, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(413, 161, 4, 0, 0, 0, 0, 1, 0, '2016-2017', 3, 48),
(414, 162, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(415, 44, 0, 3, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(416, 45, 2, 4, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(417, 46, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(418, 154, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(419, 48, 0, 9, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(420, 49, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(421, 50, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(422, 51, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(423, 52, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(424, 284, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(425, 132, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(426, 109, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(427, 387, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(428, 131, 2, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(429, 110, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(430, 99, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(431, 541, 20, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(432, 133, 0, 7, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(433, 111, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(434, 112, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(435, 55, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(436, 56, 2, 3, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(437, 116, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(438, 113, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(439, 114, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(440, 115, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(441, 117, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(442, 120, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(443, 38, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(444, 42, 4, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(445, 57, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(446, 39, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(447, 41, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(448, 127, 3, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(449, 128, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(450, 59, 1, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(451, 322, 2, 3, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(452, 60, 7, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(453, 529, 1, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(454, 211, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(455, 145, 2, 2, 0, 0, 0, 1, 0, '2016-2017', 3, 48),
(456, 142, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(457, 293, 0, 0, 0, 2, 1, 0, 0, '2016-2017', 3, 48),
(458, 146, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(459, 141, 2, 3, 0, 2, 0, 2, 0, '2016-2017', 3, 48),
(460, 139, 0, 6, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(461, 138, 2, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(462, 140, 1, 0, 0, 2, 1, 1, 0, '2016-2017', 3, 48),
(463, 143, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(464, 135, 2, 0, 0, 1, 0, 0, 0, '2016-2017', 3, 48),
(465, 137, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(466, 136, 1, 0, 0, 1, 0, 0, 0, '2016-2017', 3, 48),
(467, 147, 0, 0, 0, 0, 1, 0, 0, '2016-2017', 3, 48),
(468, 148, 0, 2, 1, 0, 0, 0, 0, '2016-2017', 3, 48),
(469, 149, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(470, 150, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(471, 151, 0, 1, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(472, 152, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(473, 153, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(474, 323, 0, 1, 0, 0, 0, 0, 1, '2016-2017', 3, 48),
(475, 176, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(476, 180, 9, 9, 0, 1, 3, 9, 3, '2016-2017', 3, 48),
(477, 187, 3, 3, 0, 0, 0, 3, 0, '2016-2017', 3, 48),
(478, 201, 1, 1, 0, 0, 0, 1, 0, '2016-2017', 3, 48),
(479, 207, 2, 2, 1, 0, 0, 2, 0, '2016-2017', 3, 48),
(480, 203, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(481, 204, 2, 1, 0, 2, 0, 2, 0, '2016-2017', 3, 48),
(482, 178, 0, 4, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(483, 181, 0, 2, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(484, 182, 5, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(485, 184, 0, 2, 0, 0, 2, 0, 0, '2016-2017', 3, 48),
(486, 185, 0, 0, 4, 0, 4, 0, 0, '2016-2017', 3, 48),
(487, 186, 2, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(488, 189, 0, 0, 0, 1, 0, 0, 0, '2016-2017', 3, 48),
(489, 294, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(490, 194, 3, 0, 0, 0, 8, 0, 0, '2016-2017', 3, 48),
(491, 190, 0, 0, 6, 0, 0, 0, 0, '2016-2017', 3, 48),
(492, 191, 0, 0, 3, 0, 2, 0, 0, '2016-2017', 3, 48),
(493, 192, 0, 0, 0, 0, 2, 0, 0, '2016-2017', 3, 48),
(494, 193, 0, 0, 2, 0, 8, 1, 0, '2016-2017', 3, 48),
(495, 195, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(496, 196, 0, 0, 2, 0, 3, 0, 0, '2016-2017', 3, 48),
(497, 197, 0, 0, 1, 0, 1, 0, 0, '2016-2017', 3, 48),
(498, 199, 0, 0, 3, 0, 1, 0, 0, '2016-2017', 3, 48),
(499, 200, 0, 0, 5, 0, 4, 0, 0, '2016-2017', 3, 48),
(500, 205, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 48),
(501, 54, 7, 0, 0, 0, 0, 0, 0, '2016-2017', 3, 49),
(502, 177, 1, 0, 1, 0, 2, 0, 0, '2016-2017', 3, 48),
(503, 509, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(504, 591, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(505, 444, 65, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(506, 588, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(507, 476, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(508, 446, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(509, 450, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(510, 443, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(511, 45, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(512, 573, 0, 0, 1, 0, 0, 0, 0, '2017-2018', 1, 62),
(513, 46, 0, 0, 0, 0, 0, 1, 0, '2017-2018', 1, 62),
(514, 572, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(515, 44, 0, 1, 3, 0, 0, 0, 0, '2017-2018', 1, 62),
(516, 592, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(517, 576, 4, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(518, 51, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(519, 132, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(520, 60, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(521, 414, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(522, 552, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(523, 451, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(524, 442, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(525, 449, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(526, 395, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(527, 291, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(528, 609, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(529, 441, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(530, 558, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(531, 389, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(532, 579, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 61),
(533, 321, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(534, 599, 0, 6, 0, 1, 0, 0, 0, '2017-2018', 1, 62),
(535, 145, 0, 1, 0, 2, 0, 0, 0, '2017-2018', 1, 62),
(536, 148, 0, 18, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(537, 149, 0, 7, 0, 1, 0, 0, 0, '2017-2018', 1, 62),
(538, 151, 0, 4, 0, 13, 0, 0, 0, '2017-2018', 1, 62),
(539, 160, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(540, 318, 0, 3, 0, 3, 0, 1, 0, '2017-2018', 1, 62),
(541, 64, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 1, 62),
(542, 109, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(543, 110, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(544, 84, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(545, 563, 0, 13, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(546, 575, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(547, 566, 0, 6, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(548, 116, 0, 9, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(549, 49, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(550, 113, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(551, 567, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(552, 115, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(553, 568, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(554, 594, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(555, 570, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(556, 590, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(557, 565, 0, 15, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(558, 532, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(559, 614, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(560, 39, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(561, 571, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(562, 562, 0, 12, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(563, 70, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(564, 314, 0, 0, 5, 0, 0, 0, 0, '2017-2018', 1, 62),
(565, 75, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 1, 62),
(566, 247, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(567, 580, 0, 0, 1, 0, 0, 0, 0, '2017-2018', 1, 62),
(568, 246, 0, 26, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(569, 135, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(570, 598, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(571, 136, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(572, 96, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(573, 138, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(574, 597, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(575, 140, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(576, 142, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(577, 293, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(578, 529, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(579, 323, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(580, 176, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(581, 211, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(582, 213, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(583, 214, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(584, 177, 0, 11, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(585, 581, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(586, 175, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(587, 180, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(588, 187, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(589, 201, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(590, 215, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(591, 611, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(592, 203, 0, 1, 0, 0, 0, 1, 0, '2017-2018', 1, 62),
(593, 217, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(594, 204, 0, 9, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(595, 218, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(596, 219, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(597, 294, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(598, 205, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(599, 527, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 48),
(600, 220, 0, 3, 2, 0, 0, 0, 0, '2017-2018', 1, 48),
(601, 221, 0, 1, 0, 0, 1, 0, 0, '2017-2018', 1, 48),
(602, 242, 7, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(603, 222, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 48),
(604, 224, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 48),
(605, 225, 0, 1, 0, 0, 2, 0, 0, '2017-2018', 1, 48),
(606, 226, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 48),
(607, 1, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 48),
(608, 603, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(609, 386, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(610, 234, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(611, 233, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(612, 236, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(613, 602, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(614, 238, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(615, 292, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(616, 240, 0, 4, 0, 0, 6, 0, 0, '2017-2018', 1, 62),
(617, 66, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(618, 68, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(619, 316, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(620, 586, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(621, 454, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(622, 181, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(623, 182, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(624, 184, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(625, 189, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(626, 600, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(627, 194, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(628, 190, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(629, 193, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(630, 195, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(631, 197, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(632, 199, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 1, 62),
(633, 444, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(634, 588, 1, 0, 0, 0, 0, 1, 0, '2017-2018', 2, 55),
(635, 476, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(636, 446, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(637, 450, 6, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(638, 443, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(639, 591, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(640, 66, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(641, 175, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(642, 136, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(643, 316, 2, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(644, 96, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(645, 643, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(646, 641, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(647, 509, 7, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(648, 414, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(649, 552, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(650, 451, 4, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(651, 442, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(652, 449, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(653, 395, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(654, 291, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(655, 609, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(656, 441, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(657, 558, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(658, 389, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(659, 138, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(660, 597, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(661, 44, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(662, 45, 0, 0, 22, 0, 0, 0, 0, '2017-2018', 2, 55),
(663, 321, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(664, 46, 0, 0, 1, 0, 0, 0, 0, '2017-2018', 2, 5),
(665, 573, 0, 0, 0, 0, 0, 1, 0, '2017-2018', 2, 55),
(666, 572, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(667, 592, 0, 0, 3, 0, 0, 0, 0, '2017-2018', 2, 55),
(668, 51, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(669, 132, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(670, 594, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(671, 140, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(672, 142, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(673, 293, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(674, 529, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(675, 176, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(676, 211, 0, 0, 0, 1, 0, 1, 0, '2017-2018', 2, 56),
(677, 213, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(678, 214, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(679, 177, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(680, 581, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(681, 180, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(682, 187, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(683, 201, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(684, 215, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(685, 611, 0, 1, 0, 0, 0, 1, 0, '2017-2018', 2, 56),
(686, 203, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(687, 204, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(688, 218, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(689, 219, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(690, 294, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(691, 205, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 56),
(692, 684, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(693, 68, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(694, 60, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(695, 109, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(696, 151, 0, 3, 0, 3, 4, 0, 0, '2017-2018', 2, 54),
(697, 149, 0, 0, 15, 0, 0, 0, 0, '2017-2018', 2, 54),
(698, 145, 0, 0, 0, 0, 4, 0, 0, '2017-2018', 2, 54),
(699, 599, 1, 0, 1, 0, 3, 0, 0, '2017-2018', 2, 54),
(700, 586, 1, 1, 0, 0, 0, 1, 0, '2017-2018', 2, 54),
(701, 454, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(702, 181, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(703, 182, 2, 0, 2, 0, 0, 0, 0, '2017-2018', 2, 54),
(704, 184, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(705, 186, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(706, 189, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(707, 600, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(708, 194, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(709, 190, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(710, 193, 1, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(711, 195, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(712, 197, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(713, 199, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(714, 110, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(715, 566, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(716, 113, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(717, 567, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(718, 115, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(719, 568, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(720, 590, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(721, 532, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(722, 39, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(723, 571, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(724, 616, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(725, 527, 0, 0, 0, 0, 1, 0, 0, '2017-2018', 2, 54),
(726, 220, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(727, 644, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(728, 221, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(729, 242, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(730, 222, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(731, 224, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(732, 225, 0, 0, 0, 0, 1, 0, 0, '2017-2018', 2, 54),
(733, 226, 0, 0, 0, 0, 1, 0, 0, '2017-2018', 2, 54),
(734, 1, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(735, 603, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(736, 386, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(737, 234, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(738, 233, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 2, 54),
(739, 236, 0, 0, 0, 2, 0, 0, 0, '2017-2018', 2, 54),
(740, 602, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(741, 238, 0, 0, 1, 0, 0, 0, 0, '2017-2018', 2, 54),
(742, 292, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 54),
(743, 240, 0, 3, 0, 0, 7, 0, 0, '2017-2018', 2, 54),
(744, 318, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(745, 64, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(746, 84, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(747, 70, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(748, 314, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(749, 75, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(750, 247, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(751, 580, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 2, 55),
(752, 643, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(753, 641, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(754, 509, 0, 13, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(755, 414, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(756, 552, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(757, 451, 5, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(758, 442, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(759, 449, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(760, 395, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(761, 291, 7, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(762, 609, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(763, 441, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(764, 558, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(765, 389, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(766, 236, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(767, 591, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(768, 708, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(769, 444, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(770, 588, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(771, 476, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(772, 446, 5, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(773, 450, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(774, 443, 7, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(775, 199, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(776, 197, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(777, 195, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(778, 193, 3, 4, 0, 0, 0, 2, 0, '2017-2018', 3, 48),
(779, 190, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(780, 194, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(781, 600, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(782, 189, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(783, 186, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(784, 184, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(785, 182, 0, 1, 1, 0, 0, 1, 0, '2017-2018', 3, 48),
(786, 586, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(787, 454, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(788, 109, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(789, 110, 4, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(790, 592, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 50),
(791, 113, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(792, 567, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(793, 576, 4, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(794, 115, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(795, 51, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(796, 136, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(797, 568, 0, 4, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(798, 572, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(799, 138, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(800, 597, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(801, 132, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(802, 140, 0, 1, 2, 0, 0, 0, 0, '2017-2018', 3, 49),
(803, 590, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(804, 142, 0, 7, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(805, 614, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(806, 594, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(807, 293, 3, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 49),
(808, 60, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(809, 532, 2, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(810, 39, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(811, 571, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(812, 684, 5, 5, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(813, 616, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(814, 66, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(815, 68, 1, 1, 0, 0, 0, 1, 0, '2017-2018', 3, 48),
(816, 321, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(817, 44, 0, 12, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(818, 716, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(819, 599, 0, 1, 1, 0, 2, 0, 0, '2017-2018', 3, 48),
(820, 145, 0, 0, 4, 0, 8, 0, 0, '2017-2018', 3, 48),
(821, 149, 0, 0, 31, 0, 0, 0, 0, '2017-2018', 3, 48),
(822, 151, 0, 0, 4, 4, 8, 0, 0, '2017-2018', 3, 48),
(823, 527, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(824, 220, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(825, 221, 0, 0, 1, 0, 0, 0, 0, '2017-2018', 3, 48),
(826, 222, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(827, 224, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(828, 225, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(829, 226, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(830, 1, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(831, 603, 0, 2, 0, 2, 0, 0, 0, '2017-2018', 3, 48),
(832, 386, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(833, 234, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(834, 233, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(835, 602, 0, 6, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(836, 238, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(837, 292, 0, 6, 0, 0, 1, 0, 0, '2017-2018', 3, 48),
(838, 240, 0, 1, 0, 4, 0, 0, 0, '2017-2018', 3, 48),
(839, 175, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(840, 316, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(841, 96, 1, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(842, 318, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(843, 64, 0, 6, 0, 0, 0, 0, 1, '2017-2018', 3, 48),
(844, 84, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(845, 70, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(846, 75, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(847, 247, 2, 0, 0, 0, 0, 0, 2, '2017-2018', 3, 48),
(848, 580, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(849, 529, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(850, 176, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(851, 211, 0, 0, 0, 2, 2, 0, 0, '2017-2018', 3, 48),
(852, 213, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(853, 214, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(854, 581, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 3, 48),
(855, 180, 0, 3, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(856, 187, 0, 1, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(857, 201, 0, 0, 0, 0, 0, 1, 0, '2017-2018', 3, 48),
(858, 215, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(859, 611, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(860, 205, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(861, 294, 1, 0, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(862, 219, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 3, 48),
(863, 218, 0, 0, 0, 1, 0, 0, 0, '2017-2018', 3, 48),
(864, 203, 0, 5, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(865, 204, 0, 2, 0, 0, 0, 0, 0, '2017-2018', 3, 48),
(866, 679, 2, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(867, 66, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(868, 684, 3, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(869, 318, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(870, 732, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(871, 700, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(872, 175, 5, 0, 5, 0, 0, 0, 0, '2018-2019', 1, 61),
(873, 70, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(874, 716, 2, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(875, 247, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(876, 586, 3, 0, 1, 0, 0, 0, 0, '2018-2019', 1, 61),
(877, 321, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(878, 46, 6, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(879, 573, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(880, 454, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(881, 51, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(882, 659, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(883, 455, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(884, 184, 0, 2, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(885, 590, 0, 0, 0, 2, 0, 0, 0, '2018-2019', 1, 61),
(886, 677, 2, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(887, 186, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(888, 756, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(889, 720, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(890, 404, 3, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(891, 743, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(892, 760, 3, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(893, 634, 3, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(894, 626, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(895, 571, 5, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(896, 532, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(897, 600, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(898, 190, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(899, 744, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(900, 193, 0, 1, 0, 40, 10, 0, 0, '2018-2019', 1, 61),
(901, 195, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(902, 197, 3, 2, 0, 0, 0, 0, 0, '2018-2019', 1, 81),
(903, 456, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(904, 759, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(905, 199, 2, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(906, 44, 0, 0, 0, 0, 0, 0, 1, '2018-2019', 1, 61),
(907, 110, 2, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(908, 109, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(909, 747, 0, 2, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(910, 113, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(911, 748, 0, 5, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(912, 749, 0, 2, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(913, 750, 0, 4, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(914, 751, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(915, 752, 0, 3, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(916, 753, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(917, 755, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(918, 567, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(919, 643, 0, 0, 0, 3, 0, 0, 0, '2018-2019', 1, 61),
(920, 591, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(921, 414, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(922, 132, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(923, 708, 0, 0, 0, 0, 13, 0, 0, '2018-2019', 1, 61),
(924, 444, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(925, 588, 0, 3, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(926, 476, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(927, 594, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(928, 449, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(929, 699, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(930, 450, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(931, 389, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(932, 443, 0, 0, 0, 0, 5, 0, 0, '2018-2019', 1, 61),
(933, 616, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(934, 655, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(935, 463, 4, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(936, 746, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(937, 605, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(938, 438, 1, 4, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(939, 671, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(940, 483, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(941, 664, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(942, 717, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(943, 639, 3, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(944, 485, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(945, 589, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(946, 647, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 63),
(947, 529, 0, 2, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(948, 211, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(949, 213, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(950, 581, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(951, 187, 0, 6, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(952, 736, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(953, 201, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(954, 215, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(955, 611, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(956, 218, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(957, 219, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(958, 294, 0, 5, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(959, 205, 0, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(960, 240, 0, 0, 4, 16, 16, 0, 0, '2018-2019', 1, 61),
(961, 238, 0, 0, 0, 0, 4, 0, 0, '2018-2019', 1, 61),
(962, 602, 2, 2, 4, 0, 0, 1, 0, '2018-2019', 1, 61),
(963, 236, 1, 1, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(964, 233, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(965, 234, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(966, 386, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(967, 603, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(968, 1, 4, 8, 2, 2, 2, 0, 1, '2018-2019', 1, 61),
(969, 226, 0, 0, 1, 0, 0, 0, 0, '2018-2019', 1, 61),
(970, 225, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(971, 136, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(972, 138, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61),
(973, 140, 1, 0, 0, 0, 0, 0, 0, '2018-2019', 1, 61);

-- --------------------------------------------------------

--
-- Table structure for table `session_general_info`
--

CREATE TABLE `session_general_info` (
  `id` int(11) NOT NULL,
  `admid` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `term` int(11) NOT NULL,
  `punctuality` varchar(50) NOT NULL,
  `readiness` varchar(50) NOT NULL,
  `assignments` varchar(50) NOT NULL,
  `participation` varchar(50) NOT NULL,
  `concentration` varchar(50) NOT NULL,
  `general_organisation` varchar(50) NOT NULL,
  `selfdrive` varchar(50) NOT NULL,
  `peer_relations` varchar(50) NOT NULL,
  `respect` varchar(50) NOT NULL,
  `dress_code` varchar(50) NOT NULL,
  `general_behaviour` varchar(50) NOT NULL,
  `reliability` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_general_info`
--

INSERT INTO `session_general_info` (`id`, `admid`, `session`, `term`, `punctuality`, `readiness`, `assignments`, `participation`, `concentration`, `general_organisation`, `selfdrive`, `peer_relations`, `respect`, `dress_code`, `general_behaviour`, `reliability`) VALUES
(1, 44, '2016-2017', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good'),
(2, 84, '2016-2017', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(3, 175, '2016-2017', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(4, 85, '2016-2017', 1, 'excellent', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(5, 88, '2016-2017', 1, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(6, 120, '2016-2017', 1, 'excellent', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(7, 109, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(8, 110, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(9, 104, '2016-2017', 1, 'good', '', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(10, 99, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(11, 111, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(12, 116, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(13, 114, '2016-2017', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory', 'good'),
(14, 117, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(15, 38, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(16, 42, '2016-2017', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(17, 39, '2016-2017', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory', 'good'),
(18, 41, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(19, 127, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent'),
(20, 128, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(21, 321, '2016-2017', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(22, 112, '2016-2017', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(23, 45, '2016-2017', 1, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(24, 46, '2016-2017', 1, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(25, 154, '2016-2017', 1, 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(26, 48, '2016-2017', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(27, 49, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(28, 50, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(29, 51, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(30, 52, '2016-2017', 1, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good'),
(31, 132, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(32, 131, '2016-2017', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(33, 54, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(34, 133, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(35, 56, '2016-2017', 1, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(36, 57, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(37, 59, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(38, 113, '2016-2017', 1, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent'),
(39, 55, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(40, 322, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good'),
(41, 60, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(42, 115, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(43, 318, '2016-2017', 1, 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'good'),
(44, 319, '2016-2017', 1, 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(45, 86, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(46, 89, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(47, 90, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent'),
(48, 91, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(49, 92, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent'),
(50, 94, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(51, 95, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'excellent', 'satisfactory', 'good'),
(52, 96, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(53, 98, '2016-2017', 1, 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent'),
(54, 246, '2016-2017', 1, 'excellent', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good'),
(55, 64, '2016-2017', 1, 'excellent', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(56, 316, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent'),
(57, 47, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(58, 68, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent'),
(59, 69, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(60, 70, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(61, 314, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(62, 75, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(63, 76, '2016-2017', 1, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(64, 247, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(65, 315, '2016-2017', 1, 'excellent', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'good', 'satisfactory'),
(66, 81, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(67, 320, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(68, 65, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(69, 66, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(70, 72, '2016-2017', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(71, 77, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(72, 317, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'good', 'good', '', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(73, 202, '2016-2017', 1, 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(74, 323, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(75, 208, '2016-2017', 1, 'good', 'excellent', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'excellent', 'good', 'excellent'),
(76, 176, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(77, 177, '2016-2017', 1, 'good', 'good', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good'),
(78, 180, '2016-2017', 1, 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'satisfactory'),
(79, 210, '2016-2017', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(80, 211, '2016-2017', 1, 'good', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'satisfactory', 'excellent', 'good', 'excellent'),
(81, 212, '2016-2017', 1, 'excellent', 'good', 'excellent', 'good', 'excellent', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(82, 213, '2016-2017', 1, 'good', 'good', 'excellent', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory'),
(83, 214, '2016-2017', 1, 'satisfactory', 'satisfactory', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'good', 'good'),
(84, 209, '2016-2017', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'satisfactory'),
(85, 215, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent'),
(86, 216, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(87, 217, '2016-2017', 1, 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent'),
(88, 218, '2016-2017', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent'),
(89, 219, '2016-2017', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(90, 201, '2016-2017', 1, 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(91, 203, '2016-2017', 1, 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'good'),
(92, 204, '2016-2017', 1, 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(93, 294, '2016-2017', 1, 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'excellent', 'satisfactory', 'satisfactory'),
(94, 205, '2016-2017', 1, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(95, 187, '2016-2017', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(96, 206, '2016-2017', 1, 'excellent', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'satisfactory', 'excellent', 'good', 'good'),
(97, 207, '2016-2017', 1, 'excellent', 'satisfactory', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'excellent', 'good', 'good'),
(98, 284, '2016-2017', 2, 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good'),
(99, 387, '2016-2017', 2, 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(100, 318, '2016-2017', 2, 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good'),
(101, 111, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'good'),
(102, 320, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(103, 84, '2016-2017', 2, 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(104, 175, '2016-2017', 2, 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(105, 85, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(106, 86, '2016-2017', 2, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good'),
(107, 88, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(108, 89, '2016-2017', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good'),
(109, 90, '2016-2017', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(110, 317, '2016-2017', 2, 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'good'),
(111, 91, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good'),
(112, 246, '2016-2017', 2, 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'good', 'satisfactory'),
(113, 64, '2016-2017', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(114, 63, '2016-2017', 2, 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(115, 66, '2016-2017', 2, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(116, 98, '2016-2017', 2, 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(117, 316, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(118, 47, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(119, 96, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'excellent', '', '', 'good', 'excellent', 'good', 'excellent', 'excellent'),
(120, 92, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(121, 68, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(122, 94, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(123, 70, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(124, 72, '2016-2017', 2, 'excellent', 'satisfactory', 'good', 'good', 'good', 'concern', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(125, 314, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(126, 75, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(127, 76, '2016-2017', 2, 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent'),
(128, 321, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(129, 45, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(130, 46, '2016-2017', 2, 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(131, 154, '2016-2017', 2, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(132, 48, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(133, 49, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(134, 50, '2016-2017', 2, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(135, 51, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(136, 52, '2016-2017', 2, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good'),
(137, 132, '2016-2017', 2, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(138, 131, '2016-2017', 2, 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(139, 54, '2016-2017', 2, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(140, 133, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(141, 55, '2016-2017', 2, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(142, 56, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(143, 57, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(144, 59, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(145, 322, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(146, 60, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(147, 77, '2016-2017', 2, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(148, 109, '2016-2017', 2, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(149, 247, '2016-2017', 2, 'excellent', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'excellent', 'good', 'good'),
(150, 315, '2016-2017', 2, 'excellent', 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(151, 81, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(152, 109, '2016-2017', 0, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(153, 110, '2016-2017', 2, 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(154, 99, '2016-2017', 2, 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'good'),
(155, 208, '2016-2017', 0, 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'satisfactory', 'concern', 'excellent', 'satisfactory', 'good'),
(156, 211, '2016-2017', 2, 'satisfactory', 'good', 'concern', 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'good', 'satisfactory'),
(157, 116, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'satisfactory', 'good', 'good', 'satisfactory', 'good'),
(158, 210, '2016-2017', 2, 'satisfactory', 'excellent', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(159, 114, '2016-2017', 2, 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'excellent', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good'),
(160, 115, '2016-2017', 2, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(161, 212, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'good', 'good'),
(162, 117, '2016-2017', 2, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(163, 213, '2016-2017', 2, 'good', 'good', 'excellent', 'good', 'satisfactory', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(164, 120, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(165, 38, '2016-2017', 2, 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(166, 42, '2016-2017', 2, 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(167, 39, '2016-2017', 2, 'excellent', 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'excellent', 'satisfactory', 'good', 'satisfactory', 'good', 'good'),
(168, 214, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(169, 215, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(170, 216, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(171, 41, '2016-2017', 2, 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(172, 127, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(173, 128, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent'),
(174, 218, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(175, 219, '2016-2017', 2, 'concern', 'satisfactory', 'concern', 'good', 'good', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'good', 'satisfactory'),
(176, 208, '2016-2017', 2, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(177, 95, '2016-2017', 2, 'excellent', 'satisfactory', 'satisfactory', 'satisfactory', 'concern', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'excellent', 'satisfactory', 'satisfactory'),
(178, 323, '2016-2017', 2, 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(179, 176, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(180, 180, '2016-2017', 2, 'good', 'excellent', 'good', 'excellent', 'satisfactory', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(181, 177, '2016-2017', 2, 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(182, 187, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(183, 201, '2016-2017', 2, 'good', 'excellent', 'excellent', 'good', 'excellent', 'satisfactory', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent'),
(184, 207, '2016-2017', 2, 'good', 'satisfactory', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good'),
(185, 203, '2016-2017', 2, 'good', 'satisfactory', 'satisfactory', 'excellent', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'satisfactory', 'good'),
(186, 204, '2016-2017', 2, 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(187, 112, '2016-2017', 2, 'satisfactory', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(188, 113, '2016-2017', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(189, 217, '2016-2017', 2, 'good', 'good', 'concern', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(190, 294, '2016-2017', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'excellent', 'good', 'satisfactory', 'excellent', 'good', 'good'),
(191, 205, '2016-2017', 2, 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(192, 206, '2016-2017', 2, 'excellent', 'good', 'excellent', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(193, 44, '2016-2017', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good'),
(194, 529, '2016-2017', 3, 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(195, 210, '2016-2017', 3, 'satisfactory', 'good', 'good', 'good', 'good', 'good', '', 'good', 'good', 'excellent', 'excellent', 'excellent'),
(196, 211, '2016-2017', 3, 'good', 'satisfactory', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good'),
(197, 212, '2016-2017', 3, 'satisfactory', 'satisfactory', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(198, 213, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good'),
(199, 214, '2016-2017', 3, 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(200, 215, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent'),
(201, 216, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(202, 318, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(203, 320, '2016-2017', 3, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(204, 84, '2016-2017', 3, 'excellent', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'good', 'good', 'good', '', 'good'),
(205, 175, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good'),
(206, 85, '2016-2017', 3, 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(207, 86, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent'),
(208, 88, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent'),
(209, 89, '2016-2017', 3, 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory'),
(210, 90, '2016-2017', 3, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory'),
(211, 317, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(212, 91, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(213, 92, '2016-2017', 3, 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent'),
(214, 94, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(215, 316, '2016-2017', 3, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(216, 96, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(217, 98, '2016-2017', 3, 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(218, 64, '2016-2017', 3, 'excellent', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(219, 66, '2016-2017', 3, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(220, 218, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(221, 219, '2016-2017', 3, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(222, 47, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(223, 68, '2016-2017', 3, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(224, 70, '2016-2017', 3, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(225, 72, '2016-2017', 3, 'good', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(226, 314, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(227, 75, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(228, 76, '2016-2017', 3, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(229, 77, '2016-2017', 3, 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(230, 247, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'good', 'good'),
(231, 81, '2016-2017', 3, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(232, 284, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', '', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(233, 109, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(234, 387, '2016-2017', 3, 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent'),
(235, 99, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(236, 541, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(237, 111, '2016-2017', 3, 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent'),
(238, 112, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good'),
(239, 116, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(240, 113, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(241, 114, '2016-2017', 3, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good'),
(242, 115, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent'),
(243, 117, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent'),
(244, 120, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good'),
(245, 38, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent'),
(246, 42, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent'),
(247, 39, '2016-2017', 3, 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'satisfactory', 'good'),
(248, 41, '2016-2017', 3, 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(249, 127, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(250, 128, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(251, 321, '2016-2017', 3, 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(252, 44, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(253, 45, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(254, 46, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(255, 154, '2016-2017', 3, 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(256, 48, '2016-2017', 3, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(257, 49, '2016-2017', 3, 'excellent', 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(258, 50, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(259, 51, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(260, 52, '2016-2017', 3, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good', 'satisfactory', 'good', 'good'),
(261, 132, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(262, 131, '2016-2017', 3, 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(263, 110, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(264, 133, '2016-2017', 3, 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good'),
(265, 55, '2016-2017', 3, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(266, 56, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(267, 57, '2016-2017', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(268, 59, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(269, 322, '2016-2017', 3, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(270, 60, '2016-2017', 3, 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(271, 323, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(272, 176, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(273, 180, '2016-2017', 3, 'satisfactory', 'good', 'satisfactory', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(274, 187, '2016-2017', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(275, 201, '2016-2017', 3, 'excellent', 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good'),
(276, 207, '2016-2017', 3, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'satisfactory', 'excellent', 'good', 'excellent', 'good', 'good'),
(277, 203, '2016-2017', 3, 'good', 'satisfactory', 'satisfactory', 'good', 'concern', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(278, 204, '2016-2017', 3, 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(279, 294, '2016-2017', 3, 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'satisfactory', 'excellent', 'satisfactory', 'good'),
(280, 205, '2016-2017', 3, 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(281, 54, '2016-2017', 3, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(282, 177, '2016-2017', 3, 'excellent', 'good', 'concern', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(283, 509, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(284, 451, '2017-2018', 1, 'good', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(285, 414, '2017-2018', 1, 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(286, 442, '2017-2018', 1, 'satisfactory', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(287, 449, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(288, 395, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(289, 291, '2017-2018', 1, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(290, 609, '2017-2018', 1, 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(291, 591, '2017-2018', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(292, 444, '2017-2018', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(293, 588, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(294, 476, '2017-2018', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(295, 446, '2017-2018', 1, 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(296, 450, '2017-2018', 1, 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(297, 443, '2017-2018', 1, 'satisfactory', 'good', 'satisfactory', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'good'),
(298, 441, '2017-2018', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(299, 552, '2017-2018', 1, 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'good', 'satisfactory', 'excellent', 'satisfactory', 'good'),
(300, 558, '2017-2018', 1, 'good', 'good', 'excellent', 'good', '', 'good', 'excellent', 'good', 'good', 'excellent', 'satisfactory', 'good'),
(301, 321, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(302, 579, '2017-2018', 1, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(303, 44, '2017-2018', 1, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good'),
(304, 45, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(305, 573, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(306, 46, '2017-2018', 1, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(307, 562, '2017-2018', 1, 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'satisfactory', 'satisfactory'),
(308, 571, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(309, 39, '2017-2018', 1, 'excellent', 'satisfactory', 'good', 'good', 'good', 'concern', 'good', 'good', 'good', 'good', 'good', 'good'),
(310, 532, '2017-2018', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'satisfactory', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent'),
(311, 614, '2017-2018', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(312, 565, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(313, 590, '2017-2018', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(314, 570, '2017-2018', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(315, 568, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(316, 115, '2017-2018', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(317, 567, '2017-2018', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(318, 113, '2017-2018', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(319, 116, '2017-2018', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(320, 566, '2017-2018', 1, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(321, 563, '2017-2018', 1, 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(322, 575, '2017-2018', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(323, 572, '2017-2018', 1, 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(324, 592, '2017-2018', 1, 'good', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(325, 49, '2017-2018', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(326, 51, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(327, 132, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(328, 594, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(329, 60, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(330, 318, '2017-2018', 1, 'good', 'excellent', 'good', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent');
INSERT INTO `session_general_info` (`id`, `admid`, `session`, `term`, `punctuality`, `readiness`, `assignments`, `participation`, `concentration`, `general_organisation`, `selfdrive`, `peer_relations`, `respect`, `dress_code`, `general_behaviour`, `reliability`) VALUES
(331, 389, '2017-2018', 1, 'good', 'good', 'good', 'good', '', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(332, 64, '2017-2018', 1, 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(333, 109, '2017-2018', 1, 'excellent', 'excellent', 'excellent', 'good', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(334, 110, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(335, 84, '2017-2018', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(336, 576, '2017-2018', 1, 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(337, 70, '2017-2018', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', '', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(338, 314, '2017-2018', 1, 'good', 'excellent', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(339, 75, '2017-2018', 1, 'good', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(340, 247, '2017-2018', 1, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(341, 580, '2017-2018', 1, 'good', 'satisfactory', 'good', 'excellent', 'good', 'satisfactory', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(342, 246, '2017-2018', 1, '', 'satisfactory', 'satisfactory', 'good', '', 'good', 'concern', 'good', 'excellent', 'excellent', 'good', 'satisfactory'),
(343, 96, '2017-2018', 1, 'good', 'excellent', 'good', 'good', 'good', 'concern', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(344, 175, '2017-2018', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(345, 66, '2017-2018', 1, 'excellent', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(346, 68, '2017-2018', 1, 'good', 'good', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(347, 316, '2017-2018', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'satisfactory', 'good'),
(348, 476, '2017-2018', 2, 'excellent', 'good', 'good', 'good', 'good', 'satisfactory', '', 'good', 'good', 'good', 'good', 'good'),
(349, 591, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(350, 641, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(351, 643, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(352, 444, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(353, 588, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(354, 446, '2017-2018', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(355, 450, '2017-2018', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(356, 443, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(357, 321, '2017-2018', 2, 'excellent', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(358, 46, '2017-2018', 2, 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(359, 573, '2017-2018', 2, 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent'),
(360, 572, '2017-2018', 2, 'good', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good'),
(361, 592, '2017-2018', 2, 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(362, 684, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'excellent', 'good', 'excellent', 'good', 'satisfactory'),
(363, 576, '2017-2018', 2, 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory'),
(364, 66, '2017-2018', 2, 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(365, 51, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent'),
(366, 68, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', '', 'good', 'good', 'excellent', 'good', 'good'),
(367, 175, '2017-2018', 2, 'good', 'good', '', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent'),
(368, 132, '2017-2018', 2, 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good'),
(369, 552, '2017-2018', 2, 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(370, 60, '2017-2018', 2, 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(371, 442, '2017-2018', 2, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(372, 449, '2017-2018', 2, 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'satisfactory', 'good'),
(373, 395, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'good'),
(374, 291, '2017-2018', 2, 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good'),
(375, 609, '2017-2018', 2, 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'excellent', 'satisfactory', 'good', 'satisfactory', 'satisfactory'),
(376, 441, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(377, 558, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(378, 389, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(379, 594, '2017-2018', 2, 'excellent', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory'),
(380, 316, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(381, 45, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(382, 96, '2017-2018', 2, 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', '', 'good', 'good'),
(383, 509, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(384, 44, '2017-2018', 2, 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good'),
(385, 109, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(386, 110, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(387, 566, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(388, 113, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(389, 567, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(390, 115, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(391, 568, '2017-2018', 2, 'satisfactory', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(392, 590, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(393, 532, '2017-2018', 2, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(394, 39, '2017-2018', 2, 'excellent', 'satisfactory', 'excellent', 'excellent', 'good', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(395, 571, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(396, 616, '2017-2018', 2, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(397, 644, '2017-2018', 2, 'satisfactory', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(398, 318, '2017-2018', 2, 'good', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent'),
(399, 64, '2017-2018', 2, 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(400, 84, '2017-2018', 2, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent'),
(401, 70, '2017-2018', 2, 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent'),
(402, 314, '2017-2018', 2, 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(403, 75, '2017-2018', 2, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(404, 247, '2017-2018', 2, 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'satisfactory', 'excellent', 'good', 'excellent'),
(405, 580, '2017-2018', 2, 'excellent', 'good', 'satisfactory', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(406, 414, '2017-2018', 2, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(407, 451, '2017-2018', 2, 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(408, 591, '2017-2018', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(409, 708, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(410, 444, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(411, 588, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(412, 476, '2017-2018', 3, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(413, 446, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(414, 450, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(415, 443, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good'),
(416, 641, '2017-2018', 3, 'good', 'satisfactory', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(417, 643, '2017-2018', 3, 'good', 'good', '', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(418, 509, '2017-2018', 3, 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(419, 414, '2017-2018', 3, 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(420, 552, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(421, 451, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', ''),
(422, 442, '2017-2018', 3, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', '', 'excellent'),
(423, 449, '2017-2018', 3, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(424, 395, '2017-2018', 3, 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(425, 291, '2017-2018', 3, 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(426, 609, '2017-2018', 3, 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(427, 441, '2017-2018', 3, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(428, 558, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(429, 389, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(430, 321, '2017-2018', 3, 'excellent', 'good', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(431, 44, '2017-2018', 3, 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'good', 'good'),
(432, 46, '2017-2018', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(433, 573, '2017-2018', 3, 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(434, 109, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(435, 572, '2017-2018', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(436, 110, '2017-2018', 3, 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(437, 592, '2017-2018', 3, 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'good'),
(438, 113, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(439, 567, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(440, 576, '2017-2018', 3, 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'good', 'satisfactory', 'good'),
(441, 115, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good'),
(442, 51, '2017-2018', 3, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good'),
(443, 568, '2017-2018', 3, 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(444, 132, '2017-2018', 3, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good'),
(445, 590, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(446, 614, '2017-2018', 3, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good'),
(447, 594, '2017-2018', 3, 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(448, 60, '2017-2018', 3, 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(449, 532, '2017-2018', 3, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(450, 39, '2017-2018', 3, 'excellent', 'satisfactory', 'good', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(451, 571, '2017-2018', 3, 'excellent', 'excellent', 'good', 'good', 'satisfactory', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(452, 684, '2017-2018', 3, 'satisfactory', 'good', 'good', 'good', 'good', 'concern', 'good', 'excellent', 'good', 'excellent', 'satisfactory', 'good'),
(453, 66, '2017-2018', 3, 'excellent', 'good', 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent'),
(454, 616, '2017-2018', 3, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(455, 68, '2017-2018', 3, 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'good'),
(456, 175, '2017-2018', 3, 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory'),
(457, 716, '2017-2018', 3, 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(458, 316, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'good', 'satisfactory', 'good', 'excellent', 'satisfactory', 'excellent', 'satisfactory', 'good'),
(459, 96, '2017-2018', 3, 'excellent', 'excellent', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'good', 'good'),
(460, 318, '2017-2018', 3, 'good', 'good', 'satisfactory', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(461, 64, '2017-2018', 3, 'excellent', 'good', 'excellent', 'good', 'good', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(462, 84, '2017-2018', 3, 'good', 'good', 'excellent', 'excellent', 'excellent', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'satisfactory', 'good'),
(463, 70, '2017-2018', 3, 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'good', 'excellent'),
(464, 75, '2017-2018', 3, 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(465, 247, '2017-2018', 3, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(466, 580, '2017-2018', 3, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(467, 321, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(468, 46, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(469, 573, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good'),
(470, 51, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good'),
(471, 590, '2018-2019', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(472, 756, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good'),
(473, 532, '2018-2019', 1, 'good', 'good', 'satisfactory', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(474, 571, '2018-2019', 1, 'excellent', 'good', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'good', 'good'),
(475, 679, '2018-2019', 1, 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(476, 747, '2018-2019', 1, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(477, 748, '2018-2019', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(478, 749, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(479, 750, '2018-2019', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(480, 751, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent'),
(481, 752, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent'),
(482, 753, '2018-2019', 1, 'excellent', 'satisfactory', 'good', 'concern', 'concern', 'satisfactory', 'concern', 'concern', 'good', 'excellent', 'satisfactory', 'satisfactory'),
(483, 755, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(484, 643, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(485, 591, '2018-2019', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(486, 414, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(487, 708, '2018-2019', 1, 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(488, 444, '2018-2019', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(489, 659, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(490, 455, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good', 'good'),
(491, 588, '2018-2019', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(492, 677, '2018-2019', 1, 'good', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'satisfactory', 'good'),
(493, 476, '2018-2019', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(494, 720, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(495, 404, '2018-2019', 1, 'good', 'good', 'good', 'satisfactory', 'satisfactory', 'good', 'good', 'good', 'good', 'good', 'good', 'good'),
(496, 743, '2018-2019', 1, 'excellent', 'good', 'good', 'satisfactory', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'satisfactory', 'good', 'satisfactory', 'good'),
(497, 449, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent'),
(498, 634, '2018-2019', 1, 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(499, 626, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'excellent', 'good', 'excellent'),
(500, 699, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(501, 450, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(502, 389, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(503, 443, '2018-2019', 1, 'satisfactory', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(504, 744, '2018-2019', 1, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(505, 680, '2018-2019', 1, 'satisfactory', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'good', 'good'),
(506, 456, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(507, 44, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(508, 110, '2018-2019', 1, 'excellent', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(509, 109, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(510, 113, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(511, 567, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(512, 132, '2018-2019', 1, 'excellent', 'good', 'good', 'good', '', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(513, 594, '2018-2019', 1, 'good', 'good', 'good', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(514, 616, '2018-2019', 1, 'excellent', 'good', 'good', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good', 'good'),
(515, 655, '2018-2019', 1, 'excellent', 'good', '', 'good', '', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(516, 746, '2018-2019', 1, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(517, 605, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(518, 438, '2018-2019', 1, 'good', 'good', 'satisfactory', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent'),
(519, 671, '2018-2019', 1, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(520, 483, '2018-2019', 1, 'excellent', 'good', 'excellent', 'excellent', 'good', 'excellent', 'good', 'good', 'excellent', 'excellent', 'excellent', 'good'),
(521, 463, '2018-2019', 1, 'good', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(522, 664, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(523, 717, '2018-2019', 1, 'excellent', 'good', 'excellent', 'good', 'good', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'good'),
(524, 639, '2018-2019', 1, 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(525, 485, '2018-2019', 1, 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(526, 589, '2018-2019', 1, 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent'),
(527, 647, '2018-2019', 1, 'good', 'good', 'good', 'excellent', 'satisfactory', 'good', 'good', 'excellent', 'excellent', 'excellent', 'excellent', 'excellent');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffId` int(11) NOT NULL,
  `StaffEmail` varchar(100) DEFAULT NULL,
  `StaffStatus` varchar(10) NOT NULL,
  `StaffPosition` int(11) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `StaffMobile` varchar(10) NOT NULL,
  `StaffAlternateMobile` varchar(10) DEFAULT NULL,
  `StaffFName` varchar(10) DEFAULT NULL,
  `StaffMName` varchar(10) DEFAULT NULL,
  `StaffDOJ` varchar(20) DEFAULT NULL,
  `StaffDOB` varchar(20) DEFAULT NULL,
  `StaffPresentAddress` text DEFAULT NULL,
  `StaffPermanentAddress` text DEFAULT NULL,
  `StaffRemarks` text DEFAULT NULL,
  `DOE` varchar(20) DEFAULT NULL,
  `DLU` varchar(20) DEFAULT NULL,
  `DOD` varchar(20) DEFAULT NULL,
  `DODUsername` varchar(100) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `County` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffId`, `StaffEmail`, `StaffStatus`, `StaffPosition`, `StaffName`, `StaffMobile`, `StaffAlternateMobile`, `StaffFName`, `StaffMName`, `StaffDOJ`, `StaffDOB`, `StaffPresentAddress`, `StaffPermanentAddress`, `StaffRemarks`, `DOE`, `DLU`, `DOD`, `DODUsername`, `IsDeleted`, `County`) VALUES
(69, NULL, 'Active', 59, 'MARY ANNE', '0702771424', NULL, NULL, NULL, '1594242000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(70, NULL, 'Active', 59, 'Francis Chege', '0702771424', NULL, NULL, NULL, '1597870800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffPositions`
--

CREATE TABLE `staffPositions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffPositions`
--

INSERT INTO `staffPositions` (`id`, `name`, `active`, `details`) VALUES
(1, 'Coach', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE `studentattendance` (
  `StudentAttendanceId` int(11) NOT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Attendance` text DEFAULT NULL,
  `DOL` varchar(10) DEFAULT NULL,
  `DOLUsername` varchar(100) DEFAULT NULL,
  `adm_no` varchar(20) DEFAULT NULL,
  `attendance_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `device_id` text DEFAULT NULL,
  `location_long` varchar(120) DEFAULT NULL,
  `location_lat` tinytext DEFAULT NULL,
  `absence_reason` tinytext DEFAULT NULL,
  `attended` tinyint(1) DEFAULT 0,
  `session` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentattendance`
--

INSERT INTO `studentattendance` (`StudentAttendanceId`, `Date`, `Attendance`, `DOL`, `DOLUsername`, `adm_no`, `attendance_date`, `device_id`, `location_long`, `location_lat`, `absence_reason`, `attended`, `session`) VALUES
(1, '1476219600', '173-A-1476274320', '1476274320', 'masteruser', NULL, '2020-04-27 21:23:40', NULL, NULL, NULL, NULL, 0, NULL),
(2, '1586725200', '371-P-1586338140,290-P-1586338140', '1586338140', 'masteruser', NULL, '2020-04-27 21:23:40', NULL, NULL, NULL, NULL, 0, NULL),
(3, '1586293200', '371-P-1586338200,290-P-1588011300', '1586338200', 'masteruser', NULL, '2020-04-27 21:23:40', NULL, NULL, NULL, NULL, 0, NULL),
(4, '1587416400', '387-P-1588011300,294-P-1588011300,278-P-1588011300,295-P-1588011300', '1588011300', 'masteruser', NULL, '2020-04-27 21:23:40', NULL, NULL, NULL, NULL, 0, NULL),
(5, NULL, NULL, NULL, NULL, '493X', '2020-04-27 22:52:15', 'CNXSFRTY56789', '-1.34567834', '2.568126547', 'sickness', 0, 'Year 9'),
(6, NULL, NULL, NULL, NULL, '493X', '2020-04-27 21:28:16', 'CNXSFRTY56789', '-1.34567834', '0.568126547', '', 1, 'Year 9'),
(7, NULL, NULL, NULL, NULL, '493X', '2020-04-27 21:29:55', 'CNXSFRTY56789', '-1.34567834', '0.568126547', '', 1, 'Year 9'),
(8, NULL, NULL, NULL, NULL, '493X', '2020-04-27 21:54:42', 'CNXSFRTY56789', '-1.34567834', '0.568126547', '', 1, 'Year 9'),
(9, NULL, NULL, NULL, NULL, '493X', '2020-04-30 17:34:04', 'CNXSFRTY56789', '-1.34567834', '0.568126547', '', 1, 'Year 9'),
(10, NULL, NULL, NULL, NULL, '493X', '2020-04-30 17:49:37', 'CNXSFRTY56789', '-1.34567834', '0.568126547', '', 1, 'Year 9'),
(11, NULL, NULL, NULL, NULL, '493X', '2020-04-30 17:51:48', 'CNXSFRTY56789', '-1.34567834', '-1.34567834', '', 1, 'Year 9');

-- --------------------------------------------------------

--
-- Table structure for table `subcounties`
--

CREATE TABLE `subcounties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `county_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcounties`
--

INSERT INTO `subcounties` (`id`, `name`, `county_id`) VALUES
(1, 'Nyakach', 1),
(2, 'Muhoroni', 1),
(3, 'Magarini', 2),
(4, 'Kuria West', 3),
(5, 'Kuria East', 3),
(6, 'Isiolo', 4),
(7, 'Garbatula', 4),
(8, 'Fafi', 5),
(9, 'Bomet', 6),
(10, 'Kabarnet', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `TableName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablename`
--

INSERT INTO `tablename` (`TableName`) VALUES
('accounts'),
('admission'),
('backuprestore'),
('book'),
('bookissue'),
('calendar'),
('calling'),
('class'),
('complaint'),
('drregister'),
('enquiry'),
('exam'),
('examdetail'),
('expense'),
('fee'),
('feepayment'),
('followup'),
('generalsetting'),
('header'),
('house'),
('issue'),
('listbook'),
('listbookconfirm'),
('location'),
('masterentry'),
('masterentrycategory'),
('pagename'),
('permission'),
('photos'),
('printoption'),
('purchase'),
('purchaselist'),
('qualification'),
('registration'),
('salaryhead'),
('salarystructure'),
('salarystructuredetail'),
('scarea'),
('scexamdetail'),
('schoolmaterial'),
('scindicator'),
('section'),
('sibling'),
('staff'),
('staffattendance'),
('staffsalary'),
('stock'),
('stockassign'),
('studentattendance'),
('studentfee'),
('subject'),
('supplier'),
('transaction'),
('user'),
('vehicle'),
('vehiclefuel'),
('vehiclereading'),
('vehicleroute'),
('vehicleroutedetail'),
('visitorbook');

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `TimezoneId` int(11) NOT NULL,
  `TimezoneName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`TimezoneId`, `TimezoneName`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Juba'),
(28, 'Africa/Kampala'),
(29, 'Africa/Khartoum'),
(30, 'Africa/Kigali'),
(31, 'Africa/Kinshasa'),
(32, 'Africa/Lagos'),
(33, 'Africa/Libreville'),
(34, 'Africa/Lome'),
(35, 'Africa/Luanda'),
(36, 'Africa/Lubumbashi'),
(37, 'Africa/Lusaka'),
(38, 'Africa/Malabo'),
(39, 'Africa/Maputo'),
(40, 'Africa/Maseru'),
(41, 'Africa/Mbabane'),
(42, 'Africa/Mogadishu'),
(43, 'Africa/Monrovia'),
(44, 'Africa/Nairobi'),
(45, 'Africa/Ndjamena'),
(46, 'Africa/Niamey'),
(47, 'Africa/Nouakchott'),
(48, 'Africa/Ouagadougou'),
(49, 'Africa/Porto-Novo'),
(50, 'Africa/Sao_Tome'),
(51, 'Africa/Timbuktu'),
(52, 'Africa/Tripoli'),
(53, 'Africa/Tunis'),
(54, 'Africa/Windhoek'),
(55, 'America/Adak'),
(56, 'America/Anchorage'),
(57, 'America/Anguilla'),
(58, 'America/Antigua'),
(59, 'America/Araguaina'),
(60, 'America/Argentina/Buenos_Aires'),
(61, 'America/Argentina/Catamarca'),
(62, 'America/Argentina/ComodRivadavia'),
(63, 'America/Argentina/Cordoba'),
(64, 'America/Argentina/Jujuy'),
(65, 'America/Argentina/La_Rioja'),
(66, 'America/Argentina/Mendoza'),
(67, 'America/Argentina/Rio_Gallegos'),
(68, 'America/Argentina/Salta'),
(69, 'America/Argentina/San_Juan'),
(70, 'America/Argentina/San_Luis'),
(71, 'America/Argentina/Tucuman'),
(72, 'America/Argentina/Ushuaia'),
(73, 'America/Aruba'),
(74, 'America/Asuncion'),
(75, 'America/Atikokan'),
(76, 'America/Atka'),
(77, 'America/Bahia'),
(78, 'America/Bahia_Banderas'),
(79, 'America/Barbados'),
(80, 'America/Belem'),
(81, 'America/Belize'),
(82, 'America/Blanc-Sablon'),
(83, 'America/Boa_Vista'),
(84, 'America/Bogota'),
(85, 'America/Boise'),
(86, 'America/Buenos_Aires'),
(87, 'America/Cambridge_Bay'),
(88, 'America/Campo_Grande'),
(89, 'America/Cancun'),
(90, 'America/Caracas'),
(91, 'America/Catamarca'),
(92, 'America/Cayenne'),
(93, 'America/Cayman'),
(94, 'America/Chicago'),
(95, 'America/Chihuahua'),
(96, 'America/Coral_Harbour'),
(97, 'America/Cordoba'),
(98, 'America/Costa_Rica'),
(99, 'America/Creston'),
(100, 'America/Cuiaba'),
(101, 'America/Curacao'),
(102, 'America/Danmarkshavn'),
(103, 'America/Dawson'),
(104, 'America/Dawson_Creek'),
(105, 'America/Denver'),
(106, 'America/Detroit'),
(107, 'America/Dominica'),
(108, 'America/Edmonton'),
(109, 'America/Eirunepe'),
(110, 'America/El_Salvador'),
(111, 'America/Ensenada'),
(112, 'America/Fort_Wayne'),
(113, 'America/Fortaleza'),
(114, 'America/Glace_Bay'),
(115, 'America/Godthab'),
(116, 'America/Goose_Bay'),
(117, 'America/Grand_Turk'),
(118, 'America/Grenada'),
(119, 'America/Guadeloupe'),
(120, 'America/Guatemala'),
(121, 'America/Guayaquil'),
(122, 'America/Guyana'),
(123, 'America/Halifax'),
(124, 'America/Havana'),
(125, 'America/Hermosillo'),
(126, 'America/Indiana/Indianapolis'),
(127, 'America/Indiana/Knox'),
(128, 'America/Indiana/Marengo'),
(129, 'America/Indiana/Petersburg'),
(130, 'America/Indiana/Tell_City'),
(131, 'America/Indiana/Vevay'),
(132, 'America/Indiana/Vincennes'),
(133, 'America/Indiana/Winamac'),
(134, 'America/Indianapolis'),
(135, 'America/Inuvik'),
(136, 'America/Iqaluit'),
(137, 'America/Jamaica'),
(138, 'America/Jujuy'),
(139, 'America/Juneau'),
(140, 'America/Kentucky/Louisville'),
(141, 'America/Kentucky/Monticello'),
(142, 'America/Knox_IN'),
(143, 'America/Kralendijk'),
(144, 'America/La_Paz'),
(145, 'America/Lima'),
(146, 'America/Los_Angeles'),
(147, 'America/Louisville'),
(148, 'America/Lower_Princes'),
(149, 'America/Maceio'),
(150, 'America/Managua'),
(151, 'America/Manaus'),
(152, 'America/Marigot'),
(153, 'America/Martinique'),
(154, 'America/Matamoros'),
(155, 'America/Mazatlan'),
(156, 'America/Mendoza'),
(157, 'America/Menominee'),
(158, 'America/Merida'),
(159, 'America/Metlakatla'),
(160, 'America/Mexico_City'),
(161, 'America/Miquelon'),
(162, 'America/Moncton'),
(163, 'America/Monterrey'),
(164, 'America/Montevideo'),
(165, 'America/Montreal'),
(166, 'America/Montserrat'),
(167, 'America/Nassau'),
(168, 'America/New_York'),
(169, 'America/Nipigon'),
(170, 'America/Nome'),
(171, 'America/Noronha'),
(172, 'America/North_Dakota/Beulah'),
(173, 'America/North_Dakota/Center'),
(174, 'America/North_Dakota/New_Salem'),
(175, 'America/Ojinaga'),
(176, 'America/Panama'),
(177, 'America/Pangnirtung'),
(178, 'America/Paramaribo'),
(179, 'America/Phoenix'),
(180, 'America/Port_of_Spain'),
(181, 'America/Port-au-Prince'),
(182, 'America/Porto_Acre'),
(183, 'America/Porto_Velho'),
(184, 'America/Puerto_Rico'),
(185, 'America/Rainy_River'),
(186, 'America/Rankin_Inlet'),
(187, 'America/Recife'),
(188, 'America/Regina'),
(189, 'America/Resolute'),
(190, 'America/Rio_Branco'),
(191, 'America/Rosario'),
(192, 'America/Santa_Isabel'),
(193, 'America/Santarem'),
(194, 'America/Santiago'),
(195, 'America/Santo_Domingo'),
(196, 'America/Sao_Paulo'),
(197, 'America/Scoresbysund'),
(198, 'America/Shiprock'),
(199, 'America/Sitka'),
(200, 'America/St_Barthelemy'),
(201, 'America/St_Johns'),
(202, 'America/St_Kitts'),
(203, 'America/St_Lucia'),
(204, 'America/St_Thomas'),
(205, 'America/St_Vincent'),
(206, 'America/Swift_Current'),
(207, 'America/Tegucigalpa'),
(208, 'America/Thule'),
(209, 'America/Thunder_Bay'),
(210, 'America/Tijuana'),
(211, 'America/Toronto'),
(212, 'America/Tortola'),
(213, 'America/Vancouver'),
(214, 'America/Virgin'),
(215, 'America/Whitehorse'),
(216, 'America/Winnipeg'),
(217, 'America/Yakutat'),
(218, 'America/Yellowknife'),
(219, 'Antarctica/Casey'),
(220, 'Antarctica/Davis'),
(221, 'Antarctica/DumontDUrville'),
(222, 'Antarctica/Macquarie'),
(223, 'Antarctica/Mawson'),
(224, 'Antarctica/McMurdo'),
(225, 'Antarctica/Palmer'),
(226, 'Antarctica/Rothera'),
(227, 'Antarctica/South_Pole'),
(228, 'Antarctica/Syowa'),
(229, 'Antarctica/Vostok'),
(230, 'Arctic/Longyearbyen'),
(231, 'Asia/Aden'),
(232, 'Asia/Amman'),
(233, 'Asia/Anadyr'),
(234, 'Asia/Aqtau'),
(235, 'Asia/Aqtobe'),
(236, 'Asia/Ashkhabad'),
(237, 'Asia/Baghdad'),
(238, 'Asia/Bahrain'),
(239, 'Asia/Baku'),
(240, 'Asia/Beirut'),
(241, 'Asia/Bishkek'),
(242, 'Asia/Brunei'),
(243, 'Asia/Calcutta'),
(244, 'Asia/Chongqing'),
(245, 'Asia/Chungking'),
(246, 'Asia/Colombo'),
(247, 'Asia/Dacca'),
(248, 'Asia/Dhaka'),
(249, 'Asia/Dili'),
(250, 'Asia/Dubai'),
(251, 'Asia/Dushanbe'),
(252, 'Asia/Harbin'),
(253, 'Asia/Hebron'),
(254, 'Asia/Ho_Chi_Minh'),
(255, 'Asia/Hong_Kong'),
(256, 'Asia/Irkutsk'),
(257, 'Asia/Istanbul'),
(258, 'Asia/Jakarta'),
(259, 'Asia/Jayapura'),
(260, 'Asia/Kabul'),
(261, 'Asia/Kamchatka'),
(262, 'Asia/Karachi'),
(263, 'Asia/Kashgar'),
(264, 'Asia/Katmandu'),
(265, 'Asia/Khandyga'),
(266, 'Asia/Kolkata'),
(267, 'Asia/Krasnoyarsk'),
(268, 'Asia/Kuching'),
(269, 'Asia/Kuwait'),
(270, 'Asia/Macao'),
(271, 'Asia/Macau'),
(272, 'Asia/Makassar'),
(273, 'Asia/Manila'),
(274, 'Asia/Muscat'),
(275, 'Asia/Nicosia'),
(276, 'Asia/Novosibirsk'),
(277, 'Asia/Omsk'),
(278, 'Asia/Oral'),
(279, 'Asia/Phnom_Penh'),
(280, 'Asia/Pyongyang'),
(281, 'Asia/Qatar'),
(282, 'Asia/Qyzylorda'),
(283, 'Asia/Rangoon'),
(284, 'Asia/Saigon'),
(285, 'Asia/Sakhalin'),
(286, 'Asia/Samarkand'),
(287, 'Asia/Seoul'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tel_Aviv'),
(293, 'Asia/Thimbu'),
(294, 'Asia/Thimphu'),
(295, 'Asia/Tokyo'),
(296, 'Asia/Ulaanbaatar'),
(297, 'Asia/Ulan_Bator'),
(298, 'Asia/Urumqi'),
(299, 'Asia/Ust-Nera'),
(300, 'Asia/Vladivostok'),
(301, 'Asia/Yakutsk'),
(302, 'Asia/Yekaterinburg'),
(303, 'Asia/Yerevan'),
(304, 'Atlantic/Azores'),
(305, 'Atlantic/Canary'),
(306, 'Atlantic/Cape_Verde'),
(307, 'Atlantic/Faeroe'),
(308, 'Atlantic/Faroe'),
(309, 'Atlantic/Madeira'),
(310, 'Atlantic/Reykjavik'),
(311, 'Atlantic/South_Georgia'),
(312, 'Atlantic/St_Helena'),
(313, 'Australia/ACT'),
(314, 'Australia/Brisbane'),
(315, 'Australia/Broken_Hill'),
(316, 'Australia/Canberra'),
(317, 'Australia/Currie'),
(318, 'Australia/Eucla'),
(319, 'Australia/Hobart'),
(320, 'Australia/LHI'),
(321, 'Australia/Lindeman'),
(322, 'Australia/Melbourne'),
(323, 'Australia/North'),
(324, 'Australia/NSW'),
(325, 'Australia/Perth'),
(326, 'Australia/South'),
(327, 'Australia/Sydney'),
(328, 'Australia/Tasmania'),
(329, 'Australia/Victoria'),
(330, 'Australia/Yancowinna'),
(331, 'Europe/Amsterdam'),
(332, 'Europe/Athens'),
(333, 'Europe/Belfast'),
(334, 'Europe/Belgrade'),
(335, 'Europe/Berlin'),
(336, 'Europe/Brussels'),
(337, 'Europe/Bucharest'),
(338, 'Europe/Budapest'),
(339, 'Europe/Busingen'),
(340, 'Europe/Copenhagen'),
(341, 'Europe/Dublin'),
(342, 'Europe/Gibraltar'),
(343, 'Europe/Guernsey'),
(344, 'Europe/Isle_of_Man'),
(345, 'Europe/Istanbul'),
(346, 'Europe/Jersey'),
(347, 'Europe/Kaliningrad'),
(348, 'Europe/Lisbon'),
(349, 'Europe/Ljubljana'),
(350, 'Europe/London'),
(351, 'Europe/Luxembourg'),
(352, 'Europe/Malta'),
(353, 'Europe/Mariehamn'),
(354, 'Europe/Minsk'),
(355, 'Europe/Monaco'),
(356, 'Europe/Nicosia'),
(357, 'Europe/Oslo'),
(358, 'Europe/Paris'),
(359, 'Europe/Podgorica'),
(360, 'Europe/Riga'),
(361, 'Europe/Rome'),
(362, 'Europe/Samara'),
(363, 'Europe/San_Marino'),
(364, 'Europe/Simferopol'),
(365, 'Europe/Skopje'),
(366, 'Europe/Sofia'),
(367, 'Europe/Stockholm'),
(368, 'Europe/Tirane'),
(369, 'Europe/Tiraspol'),
(370, 'Europe/Uzhgorod'),
(371, 'Europe/Vaduz'),
(372, 'Europe/Vienna'),
(373, 'Europe/Vilnius'),
(374, 'Europe/Volgograd'),
(375, 'Europe/Warsaw'),
(376, 'Europe/Zaporozhye'),
(377, 'Europe/Zurich'),
(378, 'Indian/Antananarivo'),
(379, 'Indian/Christmas'),
(380, 'Indian/Cocos'),
(381, 'Indian/Comoro'),
(382, 'Indian/Kerguelen'),
(383, 'Indian/Maldives'),
(384, 'Indian/Mauritius'),
(385, 'Indian/Mayotte'),
(386, 'Indian/Reunion'),
(387, 'Pacific/Apia'),
(388, 'Pacific/Chatham'),
(389, 'Pacific/Chuuk'),
(390, 'Pacific/Easter'),
(391, 'Pacific/Efate'),
(392, 'Pacific/Fakaofo'),
(393, 'Pacific/Fiji'),
(394, 'Pacific/Funafuti'),
(395, 'Pacific/Galapagos'),
(396, 'Pacific/Guadalcanal'),
(397, 'Pacific/Guam'),
(398, 'Pacific/Honolulu'),
(399, 'Pacific/Johnston'),
(400, 'Pacific/Kosrae'),
(401, 'Pacific/Kwajalein'),
(402, 'Pacific/Majuro'),
(403, 'Pacific/Marquesas'),
(404, 'Pacific/Nauru'),
(405, 'Pacific/Niue'),
(406, 'Pacific/Norfolk'),
(407, 'Pacific/Noumea'),
(408, 'Pacific/Palau'),
(409, 'Pacific/Pitcairn'),
(410, 'Pacific/Pohnpei'),
(411, 'Pacific/Ponape'),
(412, 'Pacific/Rarotonga'),
(413, 'Pacific/Saipan'),
(414, 'Pacific/Samoa'),
(415, 'Pacific/Tahiti'),
(416, 'Pacific/Tongatapu'),
(417, 'Pacific/Truk'),
(418, 'Pacific/Wake'),
(419, 'Pacific/Wallis');

-- --------------------------------------------------------

--
-- Table structure for table `transition_levels`
--

CREATE TABLE `transition_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translate`
--

CREATE TABLE `translate` (
  `TranslateId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `Translation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translate`
--

INSERT INTO `translate` (`TranslateId`, `LanguageId`, `Translation`) VALUES
(1, 1, '1**&#2347;&#2381;&#2352;&#2306;&#2335; &#2321;&#2347;&#2367;&#2360; \r||2**&#2325;&#2377;&#2354; &#2324;&#2352; &#2309;&#2344;&#2369;&#2357;&#2352;&#2381;&#2340;&#2368; \r||3**&#2309;&#2344;&#2381;&#2351; &#2325;&#2377;&#2354; \r||4**&#2346;&#2370;&#2331;&#2340;&#2366;&#2331; \r||5**&#2358;&#2367;&#2325;&#2366;&#2351;&#2340; \r||6**&#2357;&#2367;&#2332;&#2367;&#2335;&#2352; &#2348;&#2369;&#2325; \r||7**&#2319;&#2337;&#2350;&#2367;&#2358;&#2344; \r||8**&#2346;&#2306;&#2332;&#2368;&#2325;&#2352;&#2339; \r||9**&#2346;&#2342;&#2379;&#2344;&#2381;&#2344;&#2340;&#2367; \r||10**&#2309;&#2342;&#2381;&#2351;&#2340;&#2344; &#2358;&#2369;&#2354;&#2381;&#2325; \r||11**&#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||12**&#2319;&#2337;&#2350;&#2367;&#2358;&#2344; &#2325;&#2368; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||13**&#2358;&#2369;&#2354;&#2381;&#2325; &#2349;&#2369;&#2327;&#2340;&#2366;&#2344; \r||14**&#2335;&#2381;&#2352;&#2366;&#2306;&#2332;&#2376;&#2325;&#2381;&#2358;&#2344; \r||15**&#2357;&#2381;&#2351;&#2351; \r||16**&#2310;&#2351; \r||17**&#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; \r||18**&#2360;&#2381;&#2335;&#2366;&#2347; &#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; \r||19**&#2331;&#2366;&#2340;&#2381;&#2352; &#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; \r||20**&#2360;&#2381;&#2335;&#2366;&#2347; &#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||21**&#2331;&#2366;&#2340;&#2381;&#2352; &#2313;&#2346;&#2360;&#2381;&#2341;&#2367;&#2340;&#2367; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||22**&#2346;&#2352;&#2367;&#2357;&#2361;&#2344; \r||23**&#2346;&#2352;&#2367;&#2357;&#2361;&#2344; &#2335;&#2381;&#2352;&#2375;&#2344; \r||24**&#2346;&#2352;&#2368;&#2325;&#2381;&#2359;&#2366; \r||25**&#2358;&#2376;&#2325;&#2381;&#2359;&#2367;&#2325; &#2327;&#2381;&#2352;&#2375;&#2337; \r||26**&#2360;&#2361; &#2358;&#2376;&#2325;&#2381;&#2359;&#2367;&#2325; &#2327;&#2381;&#2352;&#2375;&#2337; \r||27**&#2346;&#2352;&#2368;&#2325;&#2381;&#2359;&#2366; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||28**&#2325;&#2352;&#2381;&#2350;&#2330;&#2366;&#2352;&#2367;&#2351;&#2379;&#2306; &#2325;&#2366; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2344; \r||29**&#2354;&#2366;&#2311;&#2348;&#2381;&#2352;&#2375;&#2352;&#2368; \r||30**&#2346;&#2369;&#2360;&#2381;&#2340;&#2325;&#2375;&#2306; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; &#2325;&#2352;&#2375;&#2306; \r||31**&#2309;&#2306;&#2325; &#2324;&#2352; &#2357;&#2366;&#2346;&#2360;&#2368; \r||32**&#2337;&#2367;&#2360;&#2381;&#2346;&#2376;&#2330; &#2357; &#2346;&#2381;&#2352;&#2366;&#2346;&#2381;&#2340; \r||33**&#2337;&#2367;&#2360;&#2381;&#2346;&#2376;&#2330; \r||34**&#2346;&#2381;&#2352;&#2366;&#2346;&#2381;&#2340; \r||35**&#2358;&#2375;&#2351;&#2352; \r||36**&#2360;&#2381;&#2335;&#2377;&#2325; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||37**&#2358;&#2375;&#2351;&#2352; &#2335;&#2381;&#2352;&#2366;&#2306;&#2360;&#2347;&#2352; \r||38**&#2325;&#2381;&#2352;&#2351; &#2360;&#2366;&#2350;&#2327;&#2381;&#2352;&#2368; \r||39**&#2346;&#2381;&#2352;&#2342;&#2366;&#2351;&#2325; \r||40**&#2326;&#2352;&#2368;&#2342; \r||41**&#2350;&#2369;&#2342;&#2381;&#2342;&#2366; &#2360;&#2366;&#2350;&#2327;&#2381;&#2352;&#2368; \r||42**&#2360;&#2381;&#2335;&#2377;&#2325; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||43**&#2360;&#2381;&#2325;&#2370;&#2354; &#2360;&#2366;&#2350;&#2327;&#2381;&#2352;&#2368; \r||44**&#2350;&#2366;&#2350;&#2354;&#2375; &#2325;&#2368; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||45**&#2325;&#2381;&#2352;&#2351; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||46**&#2319;&#2360;&#2319;&#2350;&#2319;&#2360; \r||47**&#2360;&#2375;&#2335;&#2367;&#2306;&#2327; \r||48**&#2360;&#2366;&#2350;&#2366;&#2344;&#2381;&#2351; &#2360;&#2375;&#2335;&#2367;&#2306;&#2327; \r||49**&#2350;&#2366;&#2360;&#2381;&#2335;&#2352; &#2319;&#2306;&#2335;&#2381;&#2352;&#2368; \r||50**&#2313;&#2346;&#2351;&#2379;&#2327;&#2325;&#2352;&#2381;&#2340;&#2366; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||51**&#2326;&#2366;&#2340;&#2379;&#2306; &#2325;&#2366; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2344; \r||52**&#2325;&#2325;&#2381;&#2359;&#2366; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||53**&#2357;&#2367;&#2359;&#2351; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||54**&#2346;&#2352;&#2368;&#2325;&#2381;&#2359;&#2366; &#2325;&#2366; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2344; \r||55**&#2309;&#2344;&#2369;&#2360;&#2370;&#2330;&#2367;&#2340; &#2332;&#2366;&#2340;&#2367; &#2325;&#2381;&#2359;&#2375;&#2340;&#2381;&#2352; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; &#2325;&#2352;&#2375;&#2306; \r||56**&#2309;&#2344;&#2369;&#2360;&#2370;&#2330;&#2367;&#2340; &#2332;&#2366;&#2340;&#2367; &#2360;&#2370;&#2330;&#2325; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||57**&#2358;&#2369;&#2354;&#2381;&#2325; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; \r||58**&#2357;&#2375;&#2340;&#2344; &#2361;&#2375;&#2337; \r||59**&#2357;&#2375;&#2340;&#2344; &#2360;&#2306;&#2352;&#2330;&#2344;&#2366; \r||60**&#2360;&#2381;&#2325;&#2370;&#2354; &#2360;&#2366;&#2350;&#2327;&#2381;&#2352;&#2368; \r||61**&#2360;&#2381;&#2341;&#2366;&#2344; &#2346;&#2381;&#2352;&#2348;&#2306;&#2343;&#2367;&#2340; &#2325;&#2352;&#2375;&#2306; \r||62**&#2361;&#2376;&#2337;&#2352; &#2324;&#2352; &#2346;&#2366;&#2342; \r||63**&#2309;&#2344;&#2369;&#2350;&#2340;&#2367; \r||64**&#2357;&#2352;&#2381;&#2340;&#2350;&#2366;&#2344; &#2360;&#2340;&#2381;&#2352; \r||65**&#2344;&#2375;&#2357;&#2367;&#2327;&#2375;&#2358;&#2344; \r||66**&#2327;&#2381;&#2352;&#2366;&#2347; &#2352;&#2367;&#2346;&#2379;&#2352;&#2381;&#2335; \r||67**&#2325;&#2376;&#2354;&#2375;&#2306;&#2337;&#2352;'),
(2, 6, '1**Front Office \r||2**Call & Suivi \r||3**autre appel \r||4**Demande de renseignements \r||5**plainte \r||6**livre d\'\r||7**admission \r||8**inscription \r||9**promotion \r||10**Mise à jour Fee \r||11**rapports \r||12**admission rapport \r||13**Paiement des droits \r||14**transaction \r||15**frais \r||16**revenu \r||17**présence \r||18**Participation du personnel \r||19**Participation des étudiants \r||20**Rapport du personnel de présence \r||21**Rapport de l\'assiduité des élèves \r||22**transport \r||23**Transport Route \r||24**exam \r||25**Scholastic année \r||26**Co Scholastic année \r||27**Rapport d\'examen \r||28**gérer du personnel \r||29**bibliothèque \r||30**gérer les livres \r||31**Question et de retour \r||32**Envoi et réception \r||33**dépêche \r||34**recevoir \r||35**stock \r||36**gérer Stock \r||37**Transfert de stock \r||38**Matériau achat \r||39**fournisseur \r||40**achat \r||41**problème Matériel \r||42**Rapport sur l\'action \r||43**Matériel scolaire \r||44**Rapport d\'émission \r||45**Rapport achat \r||46**SMS \r||47**Cadre \r||48**Cadre général \r||49**maître d\'entrée \r||50**gérer l\'utilisateur \r||51**gérer les comptes \r||52**gérer classe \r||53**gérer Sujet \r||54**gérer examen \r||55**Gérer Zone SC \r||56**Gérer SC Indicateur \r||57**gérer Fee \r||58**salaire chef \r||59**Structure des salaires \r||60**Matériel scolaire \r||61**gérer Lieu \r||62**En-tête et pied de page \r||63**autorisation \r||64**session en cours \r||65**navigation \r||66**Rapport graphique \r||67**calendrier'),
(3, 5, '1**Front Office \r||2**Call & Seguimiento \r||3**otro Call \r||4**Consulta \r||5**Queja \r||6**libro de Visitantes \r||7**Admisión \r||8**registro \r||9**Promoción \r||10**Tarifa de Actualización \r||11**Informes \r||12**Informe de Admisión \r||13**Cargo por pago \r||14**Transacción \r||15**gastos \r||16**Ingresos \r||17**Asistencia \r||18**El personal de asistencia \r||19**Asistencia Estudiantil \r||20**Personal Informe de asistencia \r||21**Informe de Asistencia Estudiantil \r||22**Transporte \r||23**Ruta de Transporte \r||24**examen \r||25**Scholastic Grado \r||26**Co Scholastic Grado \r||27**Informe de examen \r||28**Gestionar personal \r||29**Biblioteca \r||30**administrar libros \r||31**Edición y vuelta \r||32**Envío y recepción \r||33**Despacho \r||34**Recibir \r||35**Stock \r||36**Gestionar Stock \r||37**Stock Transfer \r||38**material de Compra \r||39**Proveedor \r||40**Compra \r||41**material Issue \r||42**Stock Informe \r||43**material de la Escuela \r||44**Informe de Cuestiones \r||45**Informe Compra \r||46**sMS \r||47**ajuste \r||48**Configuración general \r||49**Entrada Maestro \r||50**Gestionar usuario \r||51**administrar cuentas \r||52**Gestionar Clase \r||53**Gestionar Asunto \r||54**Gestionar Exam \r||55**Gestionar Area SC \r||56**Gestionar SC Indicador \r||57**Gestionar Fee \r||58**Jefe Salario \r||59**Estructura salarial \r||60**material de la Escuela \r||61**Gestionar Ubicación \r||62**Encabezado y pie de página \r||63**permiso \r||64**Sesión actual \r||65**Navegación \r||66**Gráfico Informe \r||67**Calendario'),
(4, 2, '1**Front Office \r||2**Bel & Follow-up \r||3**andere Call \r||4**Aanvraag \r||5**klacht \r||6**bezoeker Boek \r||7**toelating \r||8**registratie \r||9**promotie \r||10**Fee-update \r||11**rapporten \r||12**toelating Report \r||13**vergoeding betalen \r||14**transactie \r||15**Expense \r||16**inkomen \r||17**Aanwezigheid \r||18**personeel Aanwezigheid \r||19**Aanwezigheid \r||20**Personeel Rapport Aanwezigheid \r||21**Student Rapport Aanwezigheid \r||22**Transport \r||23**Transport Route \r||24**examen \r||25**Scholastic Grade \r||26**Co Scholastic Grade \r||27**examen Report \r||28**Beheer Personeel \r||29**bibliotheek \r||30**Boeken beheren \r||31**Kwestie & Return \r||32**Dispatch & ontvangen \r||33**Dispatch \r||34**ontvangende \r||35**voorraad \r||36**Beheer Stock \r||37**Stock Transfer \r||38**aankoop Material \r||39**Leverancier \r||40**aankoop \r||41**kwestie Materiaal \r||42**Stock Report \r||43**School Materiaal \r||44**issue Report \r||45**aankoop Report \r||46**SMS \r||47**instelling \r||48**algemene instelling \r||49**Master Entry \r||50**Beheer Gebruiker \r||51**Accounts beheren \r||52**Beheer Class \r||53**Beheer Onderwerp \r||54**Beheer Examen \r||55**Beheer SC Area \r||56**Beheer SC Indicator \r||57**Beheer Fee \r||58**salaris Hoofd \r||59**salarisstructuur \r||60**School Materiaal \r||61**Beheer Locatie \r||62**Koptekst en voettekst \r||63**toestemming \r||64**huidige sessie \r||65**Navigatie \r||66**grafiek Report \r||67**Kalender'),
(5, 3, '1**Front Office \r||2**Call & Follow-up \r||3**andere Anruf \r||4**Anfrage \r||5**Beschwerde \r||6**Besucher buchen \r||7**Eintritt \r||8**Anmeldung \r||9**Förderung \r||10**Update Fee \r||11**Berichte \r||12**Eintritt Bericht \r||13**Gebührenzahlung \r||14**Transaktion \r||15**Ausgabe \r||16**Einkommen \r||17**Teilnahme \r||18**Personal Teilnahme \r||19**Schülerzahl \r||20**Mitarbeiter Anwesenheitsbericht \r||21**Schülerzahl Bericht \r||22**Transport \r||23**Transportroute \r||24**Prüfung \r||25**Scholastic Grade \r||26**Co Scholastic Grade \r||27**Untersuchungsbericht \r||28**Mitarbeiter verwalten \r||29**Bibliothek \r||30**Bücher verwalten \r||31**Frage & Return \r||32**Versand & Empfang \r||33**Versand \r||34**Empfang \r||35**Lager \r||36**Auf verwalten \r||37**Umlagerung \r||38**Kauf-Material \r||39**Lieferant \r||40**Kauf \r||41**Ausgabe-Material \r||42**stock Report \r||43**Schulmaterial \r||44**Problem melden \r||45**Kauf Bericht \r||46**SMS \r||47**Einstellung \r||48**Allgemeine Einstellung \r||49**Master-Eintrag \r||50**Benutzer verwalten \r||51**Konten verwalten \r||52**Klasse verwalten \r||53**Betreff verwalten \r||54**Exam verwalten \r||55**Verwalten SC Umgebung \r||56**SC-Anzeige verwalten \r||57**Fee verwalten \r||58**Gehalt Leiter \r||59**Gehaltsstruktur \r||60**Schulmaterial \r||61**Ort verwalten \r||62**Kopf-und Fußzeile \r||63**Erlaubnis \r||64**aktuelle Sitzung \r||65**Navigation \r||66**Graph Bericht \r||67**Kalender'),
(6, 4, '1**Front Office \r||2**Ligue e Acompanhamento \r||3**outros Chamada \r||4**Inquérito \r||5**queixa \r||6**Livro de Visitas \r||7**admissão \r||8**Inscrição \r||9**promoção \r||10**Taxa de atualização \r||11**relatórios \r||12**Relatório de admissão \r||13**taxa de pagamento \r||14**transação \r||15**despesa \r||16**renda \r||17**Presença \r||18**Atendimento pessoal \r||19**comparecimento do Aluno \r||20**Relatório do Corpo Técnico de Atendimento \r||21**Relatório de Frequência Student \r||22**transporte \r||23**Itinerários \r||24**exame \r||25**Scholastic Grade \r||26**Co Scholastic Grade \r||27**Relatório de exame \r||28**Gerenciar equipe \r||29**biblioteca \r||30**Gerenciar livros \r||31**Emissão & Return \r||32**Despacho e Recebimento \r||33**Despacho \r||34**receber \r||35**Banco \r||36**Controle Stock \r||37**Transferência de estoque \r||38**compra de materiais \r||39**fornecedor \r||40**compra \r||41**Emissão de materiais \r||42**Relatório de estoque \r||43**material escolar \r||44**Reportagem Edição \r||45**Relatório de Compra \r||46**SMS \r||47**definição \r||48**Ajustes Gerais \r||49**Mestre entrada \r||50**Gerenciar usuário \r||51**Gerenciar Contas \r||52**Gerenciar Classe \r||53**Gerenciar Assunto \r||54**Gerenciar Exame \r||55**Gerenciar Área SC \r||56**Gerenciar Indicador SC \r||57**Gerenciar Fee \r||58**salário Cabeça \r||59**Estrutura salarial \r||60**material escolar \r||61**Gerenciar Localização \r||62**Cabeçalho e Rodapé \r||63**permissão \r||64**Sessão Atual \r||65**Navegação \r||66**gráfico Relatório \r||67**Calendário');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserId` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UserType` int(11) DEFAULT NULL,
  `DOE` varchar(30) NOT NULL,
  `DOL` varchar(10) DEFAULT NULL,
  `DOLUsername` varchar(100) DEFAULT NULL,
  `access_token` varchar(120) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `first_password` varchar(50) DEFAULT NULL,
  `StaffId` varchar(50) DEFAULT NULL,
  `fullname` varchar(120) DEFAULT NULL,
  `secret_question` text DEFAULT NULL,
  `secret_answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Username`, `Password`, `UserType`, `DOE`, `DOL`, `DOLUsername`, `access_token`, `is_active`, `first_password`, `StaffId`, `fullname`, `secret_question`, `secret_answer`) VALUES
(1, 'webmaster', '50a9c7dbf0fa09e8969978317dca12e8', 1, '', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'masteruser', '5d9c68c6c50ed3d02a2fcf54f63993b6', 0, '', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(14, 'julius', '01191b803289eca4ebfeee5fdaf7dd56', 2, '1476526560', 'masteruser', '', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(70, '493X', 'eee9c9ab7f47b388bbfc921c8ce38edd', 1, '2020-04-21 10:42:33', NULL, NULL, '36c6918a645b6816ef5cc7df9558a5f4', 1, 'testuser', NULL, 'Millicent Oduor', 'What is your favorite color?', 'green'),
(466, 'fkamau', '4567788', 1, '20200718120443', NULL, NULL, NULL, 1, 'giftedbrain', NULL, NULL, NULL, NULL),
(467, 'Francis', '4567788', 2, '20200805161033', NULL, NULL, NULL, 1, 'francis', NULL, NULL, NULL, NULL),
(468, 'francis56', '4567788', 1, '20200819150600', NULL, NULL, NULL, 1, 'giftedbrain5674323', NULL, NULL, NULL, NULL),
(469, 'test3', '8XtWNs', 1, '2020-08-23', NULL, NULL, NULL, 1, 'd41d8cd98f00b204e9800998ecf8427e', '1', 'test3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_roles`
--

CREATE TABLE `user_access_roles` (
  `user_access_role_id` int(11) NOT NULL,
  `access_role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `can_read` tinyint(1) DEFAULT 0,
  `can_write` tinyint(1) DEFAULT 0,
  `can_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(100) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_name`, `created_on`, `updated_on`) VALUES
(1, 'Staff', '2020-04-18 15:22:37', '2020-04-18 15:22:37'),
(2, 'Admin', '2020-04-18 15:22:37', '2020-04-18 15:22:37'),
(3, 'Student', '2020-04-18 15:22:37', '2020-04-18 15:22:37'),
(4, 'root', '2020-04-18 15:22:37', '2020-04-18 15:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `visit_images`
--

CREATE TABLE `visit_images` (
  `id` int(11) NOT NULL,
  `note_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit_images`
--

INSERT INTO `visit_images` (`id`, `note_id`, `image`) VALUES
(1, 1, '/opt/lampp/htdocs/vso/modules/coachVisit/images/index.jpeg'),
(2, 2, ''),
(3, 3, 'xmnqtyrunmtersrtygsjhjcdjmfkmvjnjgnjjgjvnjnjgjnvjngjnvmrkmjvjnjngjvmjgnvnhgnvgnhvhgnvh');

-- --------------------------------------------------------

--
-- Table structure for table `vs_centers`
--

CREATE TABLE `vs_centers` (
  `CenterId` int(11) NOT NULL,
  `CenterName` varchar(120) DEFAULT NULL,
  `CohortID` varchar(100) DEFAULT NULL,
  `Efid` int(11) DEFAULT NULL,
  `LocationLong` varchar(120) DEFAULT NULL,
  `LocationLat` varchar(120) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT 0,
  `SubCountyId` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_centers`
--

INSERT INTO `vs_centers` (`CenterId`, `CenterName`, `CohortID`, `Efid`, `LocationLong`, `LocationLat`, `Status`, `isDeleted`, `SubCountyId`, `created_at`) VALUES
(1, 'Cherwa', '2', 69, '-0.29555', '34.989408', 1, 1, 1, '2020-08-12 10:01:34'),
(2, 'Moro', '2', 69, '0.310506', '34.777369', 1, 1, 1, '2020-08-12 10:01:34'),
(3, 'Oboch', '2', 69, '0.310506', '34.777369', 1, 0, 1, '2020-08-12 10:01:34'),
(4, 'Thurdibuoro', '2', 69, '0.310506', '34.777369', 1, 0, 1, '2020-08-12 10:01:34'),
(5, 'Emannuel Ack', '2', 69, '-0.151671', '35.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(6, 'Kango', '2', 69, '0.848329', '36.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(7, 'Kiliti', '2', 69, '1.848329', '37.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(8, 'Moscow', '2', 69, '2.848329', '38.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(9, 'Onyalobiro', '2', 69, '3.848329', '39.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(10, 'Shalom', '2', 69, '4.848329', '40.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(11, 'Yao', '2', 69, '5.848329', '41.201268', 1, 0, 2, '2020-08-12 10:01:34'),
(12, 'Kalongoni', '1', 69, '-3.613507', '39.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(13, 'Mugumoni', '1', 69, '-2.613507', '40.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(14, 'Bore Singwaya', '1', 69, '-1.613507', '41.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(15, 'Kaya', '1', 69, '-0.613507', '42.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(16, 'Bate', '1', 69, '0.386493', '43.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(17, 'Laini', '1', 69, '1.386493', '44.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(18, 'Dhololo', '1', 69, '2.386493', '45.845991', 1, 0, 3, '2020-08-12 10:01:34'),
(19, 'Moheto', '1', 69, '-1.06411', '34.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(20, 'Nyabikaye', '1', 69, '-0.06411', '35.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(21, 'Nyamekongoroto', '1', 69, '0.93589', '36.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(22, 'Nyamekongoroto Maranatha', '1', 69, '1.93589', '37.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(23, 'Nyanchabo PEFA', '1', 69, '2.93589', '38.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(24, 'Kombe', '2', 69, '3.93589', '39.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(25, 'Masaba', '2', 69, '4.93589', '40.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(26, 'Ngisiru', '2', 69, '5.93589', '41.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(27, 'Ntiyange', '2', 69, '6.93589', '42.475097', 1, 0, 4, '2020-08-12 10:01:34'),
(28, 'Koromangucha SDA', '1', 69, '7.93589', '43.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(29, 'Nyamagenga Maranatha', '1', 69, '8.93589', '44.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(30, 'Siabai CATHOLIC', '1', 69, '9.93589', '45.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(31, 'Siabai PEFA', '1', 69, '10.93589', '46.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(32, 'Kugitimo', '2', 69, '11.93589', '47.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(33, 'Sakuri', '2', 69, '12.93589', '48.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(34, 'Wangirabose', '2', 69, '13.93589', '49.475097', 1, 0, 5, '2020-08-12 10:01:34'),
(35, 'Daaba', '2', 69, '0.349646', '37.583808', 1, 0, 6, '2020-08-12 10:01:34'),
(36, 'Nasruoi', '2', 69, '1.349646', '38.583808', 1, 0, 6, '2020-08-12 10:01:34'),
(37, 'Ngaremara', '2', 69, '2.349646', '39.583808', 1, 0, 6, '2020-08-12 10:01:34'),
(38, 'Ngaremara Central', '2', 69, '3.349646', '40.583808', 1, 0, 6, '2020-08-12 10:01:34'),
(39, 'Adhele', '1', 69, '4.349646', '41.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(40, 'Agagara', '1', 69, '5.349646', '42.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(41, 'Badana', '1', 69, '6.349646', '43.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(42, 'Biliqi', '1', 69, '7.349646', '44.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(43, 'Dirr Gudha', '1', 69, '8.349646', '45.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(44, 'Gubatu', '1', 69, '9.349646', '46.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(45, 'Iresa Boru', '1', 69, '10.349646', '47.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(46, 'Mulanda', '1', 69, '11.349646', '48.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(47, 'Mwangaza', '1', 69, '12.349646', '49.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(48, 'Biliqi', '2', 69, '13.349646', '50.583808', 1, 1, 7, '2020-08-12 10:01:34'),
(49, 'Mwangaza', '2', 69, '14.349646', '51.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(50, 'Adhele', '2', 69, '15.349646', '52.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(51, 'Agagara', '2', 69, '16.349646', '53.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(52, 'Central', '2', 69, '17.349646', '54.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(53, 'Diir Gudha', '2', 69, '18.349646', '55.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(54, 'Gubatu', '2', 69, '19.349646', '56.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(55, 'Mulanda', '2', 69, '20.349646', '57.583808', 1, 0, 7, '2020-08-12 10:01:34'),
(56, 'Warable ', '1', 69, '-0.452924', '39.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(57, 'Abaqdera', 'Cohort 1', 69, NULL, NULL, 1, 0, NULL, '2020-08-12 10:01:34'),
(58, 'Mtoni', '1', 69, '1.547076', '41.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(59, 'Kamuthe ', '1', 69, '2.547076', '42.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(60, 'Nadhir', '1', 69, '3.547076', '43.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(61, 'Gora', '1', 69, '4.547076', '44.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(62, 'Nanighi', '1', 69, '5.547076', '45.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(63, 'Abaqdera', '2', 69, '6.547076', '46.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(64, 'Bura', '2', 69, '7.547076', '47.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(65, 'Gora', '2', 69, '8.547076', '48.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(66, 'Guyo', '2', 69, '9.547076', '49.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(67, 'Jambele', '2', 69, '10.547076', '50.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(68, 'Kamuthe', '2', 69, '11.547076', '51.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(69, 'Nadhir', '2', 69, '12.547076', '52.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(70, 'Nanighi', '2', 69, '13.547076', '53.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(71, 'Taqaal', '2', 69, '14.547076', '54.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(72, 'Warable', '2', 69, '15.547076', '55.647211', 1, 0, 8, '2020-08-12 10:01:34'),
(89, 'Test Center sasa', NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-08-12 17:28:16'),
(90, 'Nyahururu', NULL, NULL, NULL, NULL, 1, 1, 3, '2020-08-12 17:31:57'),
(91, 'Laikipia', 'Please Select a Cohort', 69, NULL, NULL, 1, 0, 2, '2020-08-12 17:44:09'),
(92, 'Nyahururu 3', '2', 69, NULL, NULL, 1, 0, 1, '2020-08-12 17:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `vs_cohorts`
--

CREATE TABLE `vs_cohorts` (
  `CohortId` int(11) NOT NULL,
  `CohortTitle` varchar(120) DEFAULT NULL,
  `CohortYear` int(11) DEFAULT NULL,
  `IsActive` varchar(1) DEFAULT '1',
  `Description` text DEFAULT NULL,
  `CreatedBy` varchar(120) DEFAULT NULL,
  `StartDate` varchar(100) DEFAULT NULL,
  `EndDate` varchar(100) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_cohorts`
--

INSERT INTO `vs_cohorts` (`CohortId`, `CohortTitle`, `CohortYear`, `IsActive`, `Description`, `CreatedBy`, `StartDate`, `EndDate`, `isDeleted`) VALUES
(1, 'Cohort 1', NULL, '1', 'This cohort .....', NULL, '22-01-2020 00:00', '26-06-2020 00:00', 0),
(2, 'Cohort 2', NULL, '', 'This cohort .....', NULL, '22-01-2020 00:00', '26-06-2020 00:00', 0),
(3, 'Cohort 3', NULL, '', 'This cohort .....', NULL, '22-01-2020 00:00', '26-06-2020 00:00', 0),
(4, 'Cohort 4', NULL, '', '', NULL, '14-07-2020 00:00', '14-10-2020 00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vs_curriculumn_content`
--

CREATE TABLE `vs_curriculumn_content` (
  `ContentId` int(11) NOT NULL,
  `CohortId` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `FileLink` varchar(120) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `DeletedBY` int(11) DEFAULT NULL,
  `IsModified` tinyint(1) DEFAULT 0,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_curriculumn_content`
--

INSERT INTO `vs_curriculumn_content` (`ContentId`, `CohortId`, `Description`, `FileLink`, `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`) VALUES
(1, 1, 'we have a content uploaded', 'localhost/school/upload/Screenshot from 2020-04-08 12-31-35.png', NULL, 0, NULL, 0, NULL),
(2, 2, 'we have a content uploaded', 'localhost/school/upload/Screenshot from 2020-04-08 12-31-35.png', NULL, 0, NULL, 0, NULL),
(3, 3, 'we have a content uploaded', 'localhost/school/upload/Screenshot from 2020-04-08 12-31-35.png', NULL, 0, NULL, 0, NULL),
(4, 1, 'bhdbjnjdnjs', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(5, 2, 'bhdbjnjdnjs', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(6, 3, 'bhdbjnjdnjs', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(7, 1, 'hhhhrr', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(8, 2, 'hhhhrr', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(9, 3, 'hhhhrr', 'localhost/school/upload/Screenshot from 2020-03-31 12-42-08.png', NULL, 0, NULL, 0, NULL),
(10, 1, 'fegege', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36e', NULL, 0, NULL, 0, NULL),
(11, 2, 'fegege', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36e', NULL, 0, NULL, 0, NULL),
(12, 3, 'fegege', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36e', NULL, 0, NULL, 0, NULL),
(13, 1, 'added a screenshot', 'localhost/vso/upload/41b586905e6233e72b076191f8bf9512', NULL, 0, NULL, 0, NULL),
(14, 2, 'added a screenshot', 'localhost/vso/upload/41b586905e6233e72b076191f8bf9512', NULL, 0, NULL, 0, NULL),
(15, 3, 'added a screenshot', 'localhost/vso/upload/41b586905e6233e72b076191f8bf9512', NULL, 0, NULL, 0, NULL),
(16, 1, 'final upload', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dArray', NULL, 0, NULL, 0, NULL),
(17, 2, 'final upload', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dArray', NULL, 0, NULL, 0, NULL),
(18, 3, 'final upload', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dArray', NULL, 0, NULL, 0, NULL),
(19, 1, 'bhdbjnjdnjs', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36eArray', NULL, 0, NULL, 0, NULL),
(20, 2, 'bhdbjnjdnjs', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36eArray', NULL, 0, NULL, 0, NULL),
(21, 3, 'bhdbjnjdnjs', 'localhost/vso/upload/e449db9d491f05595643e8d17b2bd36eArray', NULL, 0, NULL, 0, NULL),
(22, 1, 'knjnjefnjfnj', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dpng', NULL, 0, NULL, 0, NULL),
(23, 2, 'knjnjefnjfnj', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dpng', NULL, 0, NULL, 0, NULL),
(24, 3, 'knjnjefnjfnj', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19dpng', NULL, 0, NULL, 0, NULL),
(25, 1, 'njfnjvfnjn', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19d.png', NULL, 0, NULL, 0, NULL),
(26, 2, 'njfnjvfnjn', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19d.png', NULL, 0, NULL, 0, NULL),
(27, 3, 'njfnjvfnjn', 'localhost/vso/upload/7313fc603df31bbcffab7b3de414a19d.png', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_promotion_request`
--

CREATE TABLE `vs_promotion_request` (
  `promotion_request_id` int(11) NOT NULL,
  `OOSG_CODE` varchar(100) DEFAULT NULL,
  `promotion_level` varchar(100) DEFAULT NULL,
  `promoted` tinyint(1) DEFAULT 0,
  `request_by` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_promotion_request`
--

INSERT INTO `vs_promotion_request` (`promotion_request_id`, `OOSG_CODE`, `promotion_level`, `promoted`, `request_by`, `comments`) VALUES
(1, 'KNB-004', 'College', 1, 70, 'The Girl has shown ability to progress to college');

-- --------------------------------------------------------

--
-- Table structure for table `vs_registrations`
--

CREATE TABLE `vs_registrations` (
  `RegistrationId` int(11) NOT NULL,
  `OOSG_CODE` varchar(120) DEFAULT NULL,
  `CohortId` int(11) DEFAULT NULL,
  `Efid` int(11) DEFAULT NULL,
  `CenterId` int(11) DEFAULT NULL,
  `GirlName` varchar(120) DEFAULT NULL,
  `Village` varchar(120) DEFAULT NULL,
  `Ward` varchar(120) DEFAULT NULL,
  `Surname` varchar(120) DEFAULT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `OtherNames` varchar(120) DEFAULT NULL,
  `LanguageSpoken` varchar(120) DEFAULT NULL,
  `HouseHeadName` varchar(120) DEFAULT NULL,
  `HouseHeadSex` varchar(10) DEFAULT NULL,
  `HouseHeadSpouseName` varchar(120) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `GuardianContact` varchar(120) DEFAULT NULL,
  `GuardianOcupation` varchar(120) DEFAULT NULL,
  `IsAdmitted` tinyint(1) DEFAULT 0,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `DeletedBy` int(11) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` text DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `Disability` varchar(120) DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_registrations`
--

INSERT INTO `vs_registrations` (`RegistrationId`, `OOSG_CODE`, `CohortId`, `Efid`, `CenterId`, `GirlName`, `Village`, `Ward`, `Surname`, `FirstName`, `OtherNames`, `LanguageSpoken`, `HouseHeadName`, `HouseHeadSex`, `HouseHeadSpouseName`, `Dob`, `Gender`, `GuardianContact`, `GuardianOcupation`, `IsAdmitted`, `IsDeleted`, `DeletedBy`, `CreatedBy`, `CreatedAt`, `UpdatedAt`, `details`, `email`, `Disability`) VALUES
(1, 'KNB-0038', 1, 70, 2, 'Rehema Makokha Mangeni', 'Athi River', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Edwin  Mangeni', 'MALE', 'Julia Shisia', '2002-06-15', 'FEMALE', '733245418', 'Insuarance', 0, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(2, 'KNB-0039', 1, 70, 2, 'Ryan Baraka David', 'Muthaiga North-Balozi estate house no 131', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'David Adhiambo', 'MALE', 'Albertina Sachombe', '2002-06-15', 'FEMALE', '721672260', 'Banker', 0, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(3, 'KNB-0041', 1, 70, 2, 'Tijara Nabwire Mangeni', 'Athi River', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Edwin  Mangeni', 'MALE', 'Julia Shisia', '2002-06-15', 'FEMALE', '733245418', 'Insuarance', 0, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(4, 'KNB-0044', 1, 70, 2, 'Abigail Wanjiru Wagura', 'Nairobi', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Joseph Wagura', 'MALE', 'Beth Kimani', '2002-06-15', 'FEMALE', '0722615256', 'Businesslady', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(5, 'KNB-0045', 1, 70, 2, 'Alanie Wacuka Duijndam', 'Kiambu', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Donald Duijndam', 'MALE', 'Margaret Ndichu', '2002-06-15', 'FEMALE', '713083300', 'Businesslady', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(6, 'KNB-0046', 1, 70, 2, 'Amani Russell Davis ', 'D S BELLWAY GARDENS KILELESHWA', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Darren Davis', 'MALE', 'Linda Davis', '2002-06-15', 'FEMALE', '0717727103', 'Scientist', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(7, 'KNB-0047', 1, 70, 2, 'Chloe Wanjiru Okwirry', 'Edenville #J7', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Isaac Okwirry', 'MALE', 'Fiona Wahu', '2002-06-15', 'FEMALE', '723204277', 'Farmer/Business lady', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(8, 'KNB-0049', 1, 70, 2, 'Craig Bundi Gachanja Kamau', '', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Wilson Kamau', 'MALE', 'Miriam Kamau', '2002-06-15', 'FEMALE', '722748047', 'Accountant', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(9, 'KNB-0051', 1, 70, 2, 'Joy  Wanjiku Wanyoike', '74819-00200', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'John Wanyoike', 'MALE', 'Nancy Wambui', '2002-06-15', 'FEMALE', '0722772451', 'Cateress', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(10, 'KNB-0052', 1, 70, 2, 'Kiama Wakagia Waimiri', 'Westlands', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Justus Waimiri', 'MALE', 'Daisy Waimiri', '2002-06-15', 'FEMALE', '722739581', 'Social Worker', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(11, 'KNB-0060', 1, 70, 3, 'Tannia Wairimu Njeru', 'Avenue Healthcare ,Parklands', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Simon Njeru', 'MALE', 'Grace Njeru', '2002-06-15', 'FEMALE', '723371539', 'Director', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(12, 'KNB-0063', 1, 70, 3, 'Alexander David Haydter', 'Rosslyn Ridge Gigiri #36', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'David Haydter', 'MALE', 'Desislava Haydter', '2002-06-15', 'FEMALE', '700930436', '', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(13, 'KNB-0064', 1, 70, 3, 'Alexander Obwaya Jensen', 'P.O.BOX 60184-00200', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Lars Jensen', 'MALE', 'Gladys Jensen', '2002-06-15', 'FEMALE', '726866127', 'Businesslady', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(14, 'KNB-0066', 1, 70, 3, 'Benjamin Kamau Kamau', 'Kahawa Sukari', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Daniel kamau', 'MALE', 'Irene Kagwe', '2002-06-15', 'FEMALE', '714590018', 'Administrator', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(15, 'KNB-0068', 1, 70, 3, 'Ethan Njuguna  Ikere', 'Lavington Solo Villa#4', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Francis Ikere', 'MALE', 'Teresa Odula', '2002-06-15', 'FEMALE', '735765869', 'Architect', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(16, 'KNB-0070', 1, 70, 3, 'Jessica Blessing van Rijn', 'Nil', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Stef Van Rijn', 'MALE', 'Bronwynne Van Rijn', '2002-06-15', 'FEMALE', '0711741627', 'Teacher', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(17, 'KNB-0072', 1, 70, 3, 'Kirsten Kamau', 'Delta Plains Mombasa Road', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Erastus Kamau maina', 'MALE', 'Margawi kamau', '2002-06-15', 'FEMALE', '728720518', 'Banker', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(18, 'KNB-0075', 1, 70, 3, 'Luka Njuguna Takatoh', '', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Mitsuo Takatoh', 'MALE', 'Susan Takatoh', '2002-06-15', 'FEMALE', '724234479', 'Reporter', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(19, 'KNB-0076', 1, 70, 3, 'Makena Wairimu Karuingi', 'Ridgeways,kigwa lane', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'George Kabugi', 'MALE', 'Tabitha Waruingi', '2002-06-15', 'FEMALE', '722365831', 'Assistant Admin', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(20, 'KNB-0077', 1, 70, 1, 'Maya Njoki Gichane', 'Ndege gardens#14 Karen', '', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Donald Gichane', 'MALE', 'Nancy Gichane', '2002-06-15', 'FEMALE', '726940030', 'Businesslady', 1, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-28 21:00:00', NULL, NULL, 'None'),
(21, 'KNB-079', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 1, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:03:00', NULL, NULL, 'None'),
(22, 'KNB-080', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 1, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:23:38', NULL, NULL, 'None'),
(24, 'KNB-081', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 1, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:31:46', NULL, NULL, 'None'),
(25, 'KNB-082', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 1, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:31:46', NULL, NULL, 'None'),
(26, 'KNB-083', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 1, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:31:46', NULL, NULL, 'None'),
(27, 'KNB-084', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:36:55', NULL, NULL, 'None'),
(28, 'KNB-085', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:36:55', NULL, NULL, 'None'),
(29, 'KNB-086', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 18:36:55', NULL, NULL, 'None'),
(30, 'KNB-087', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:08:54', NULL, NULL, 'None'),
(31, 'KNB-088', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:08:55', NULL, NULL, 'None'),
(32, 'KNB-089', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:08:55', NULL, NULL, 'None'),
(40, 'KNB-090', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:13:48', NULL, NULL, 'None'),
(41, 'KNB-091', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:13:48', NULL, NULL, 'None'),
(45, 'KNB-092', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:16:03', NULL, NULL, 'None'),
(46, 'KNB-093', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:16:03', NULL, NULL, 'None'),
(47, 'KNB-094', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:16:03', NULL, NULL, 'None'),
(48, 'KNB-095', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:17:08', NULL, NULL, 'None'),
(49, 'KNB-096', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:17:08', NULL, NULL, 'None'),
(53, 'KNB-097', 1, 70, 1, 'Mary Achieng', 'Makina', 'Idira', NULL, NULL, NULL, 'Borana', 'Yusuf Hassan', 'MALE', 'Maria Ade', '2003-06-06', 'FEMALE', '702772435', 'Farmer', 0, 0, -1, 70, '2020-06-28 21:00:00', '2020-06-29 19:17:34', NULL, NULL, 'None'),
(54, 'KNB-0098', 1, 70, 1, 'Rehema Makokha Mangeni', 'Athi River', 'Tana River', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Edwin  Mangeni', 'MALE', 'Julia Shisia', '2002-06-15', 'FEMALE', '733245478', 'Insuarance', 0, 0, NULL, 70, '2020-06-28 21:00:00', '2020-06-30 10:37:28', NULL, NULL, 'None'),
(55, '067453', NULL, NULL, 2, 'FRANCIS', NULL, NULL, NULL, NULL, NULL, 'Kiswahili', 'Maina', 'FEMALE', 'Sharon', NULL, NULL, '07083456', 'CASUAL', 1, 0, NULL, NULL, '2020-07-12 11:43:49', '2020-07-12 11:43:49', NULL, NULL, 'None'),
(57, 'KNB-12098', 1, 70, 1, 'Rehema Makokha Mangeni', 'Athi River', 'Tana River', NULL, NULL, NULL, 'KISWAHILI/SOMALI', 'Edwin  Mangeni', 'MALE', 'Julia Shisia', '2002-06-15', 'FEMALE', '733245478', 'Insuarance', 0, 0, NULL, 70, '2020-06-28 21:00:00', '2020-07-17 10:05:35', NULL, 'fchege22@gmail.com', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `vs_sessions`
--

CREATE TABLE `vs_sessions` (
  `SessionId` varchar(120) DEFAULT NULL,
  `CenterId` int(11) DEFAULT NULL,
  `EflId` int(11) DEFAULT NULL,
  `SessionDate` date DEFAULT current_timestamp(),
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `CenterName` varchar(120) DEFAULT NULL,
  `CenterLat` varchar(120) DEFAULT NULL,
  `CenterLong` varchar(120) DEFAULT NULL,
  `SessionActive` tinyint(1) DEFAULT 0,
  `Description` text DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `DeletedBY` int(11) DEFAULT NULL,
  `IsModified` tinyint(1) DEFAULT 0,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_sessions`
--

INSERT INTO `vs_sessions` (`SessionId`, `CenterId`, `EflId`, `SessionDate`, `StartTime`, `EndTime`, `CenterName`, `CenterLat`, `CenterLong`, `SessionActive`, `Description`, `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`) VALUES
('2020-KS-06-06', 1, 70, '2020-06-06', '10:51:07', '18:51:07', 'KARIOBANGI SOUTH', '-1.267', '36.883', 0, 'Introduction to basic accounting and business management', 68, 0, NULL, 0, NULL),
('2020-KS-0-07', 1, 70, '2020-06-06', '10:51:07', '18:51:07', 'KARIOBANGI SOUTH', '-1.267', '36.883', 0, 'Basic mathematics and accounting', 70, 0, NULL, 0, NULL),
('2020-KS-0-08', 1, 70, '2020-06-08', '10:51:07', '18:51:07', 'KARIOBANGI SOUTH', '-1.267', '36.883', 0, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL),
('2020-KS-0-08', 1, 70, '2020-06-08', '10:51:07', '18:51:07', 'KARIOBANGI SOUTH', '-1.267', '36.883', 1, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL),
('2020-KS-0-08', NULL, 70, '2020-06-08', '10:51:07', '18:51:07', NULL, '-1.267', '36.883', 1, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL),
('2020-KS-0-08', NULL, 70, '2020-06-08', '10:51:07', '18:51:07', NULL, '-1.267', '36.883', 1, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL),
('Cherwa 2020-10-10 20:00', NULL, 70, '2020-06-08', '10:51:07', '18:51:07', NULL, '-1.267', '36.883', 1, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL),
('Orwa 2020-10-10 20:00', 1, 70, '2020-06-08', '10:51:07', '18:51:07', NULL, '-1.267', '36.883', 1, 'Basic Communication Skills and accounting', 70, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_session_attendance`
--

CREATE TABLE `vs_session_attendance` (
  `AttendanceId` int(11) NOT NULL,
  `OOSG_CODE` varchar(120) DEFAULT NULL,
  `SessionId` varchar(120) DEFAULT NULL,
  `Present` tinyint(1) DEFAULT 0,
  `PresentTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Absent` tinyint(1) DEFAULT 0,
  `AbsentReason` text DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `DeletedBY` int(11) DEFAULT NULL,
  `IsModified` tinyint(1) DEFAULT 0,
  `ModifiedBy` int(11) DEFAULT NULL,
  `AttendanceDate` date DEFAULT NULL,
  `DeviceId` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_session_attendance`
--

INSERT INTO `vs_session_attendance` (`AttendanceId`, `OOSG_CODE`, `SessionId`, `Present`, `PresentTime`, `EndTime`, `Absent`, `AbsentReason`, `Comments`, `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`, `AttendanceDate`, `DeviceId`) VALUES
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '2020-08-14', NULL),
(8, 'KNB-0044', '2020-KS-0-07', 1, '15:00:00', '16:00:00', 0, '', 'Attentive and easy to understand', NULL, 0, NULL, 0, NULL, '2020-08-14', NULL),
(9, 'KNB-0045', '2020-KS-0-07', 1, '15:00:00', '16:00:00', 0, '', 'Attentive and easy to understand', NULL, 0, NULL, 0, NULL, '2020-08-14', NULL),
(10, 'KNB-0046', '2020-KS-0-07', 0, '00:00:00', '00:00:00', 1, 'Hospital visit', '', NULL, 0, NULL, 0, NULL, '2020-08-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_staff`
--

CREATE TABLE `vs_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `county_id` int(11) DEFAULT NULL,
  `center_id` int(11) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_staff`
--

INSERT INTO `vs_staff` (`id`, `name`, `position`, `county_id`, `center_id`, `phone_number`, `email`, `dob`, `date_of_join`, `active`, `details`) VALUES
(1, 'Francis Chege', 1, 1, 50, '0702771424', 'fchege22@gmail.com', NULL, NULL, 1, NULL),
(2, 'Mary Wachiuri', 1, 1, 41, '0702771424', 'fchege22@gmail.com', '2020-08-11', NULL, 1, NULL),
(3, 'David Maraga', 1, 1, 42, '0702771424', 'fchege@gmail.com', '2020-08-11', NULL, 1, NULL),
(4, 'test3', 1, 2, 42, '0702771424', 'fchege22@gmail.com', '2020-08-17', NULL, 1, NULL),
(5, 'test3', 1, 2, 42, '0702771424', 'fchege22@gmail.com', '2020-08-17', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_students`
--

CREATE TABLE `vs_students` (
  `OOSG_CODE` varchar(120) NOT NULL,
  `RegistrationId` int(11) DEFAULT NULL,
  `CurrentStatus` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `CohortId` int(11) DEFAULT NULL,
  `AdmissionDate` date DEFAULT curdate(),
  `AdmittedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_students`
--

INSERT INTO `vs_students` (`OOSG_CODE`, `RegistrationId`, `CurrentStatus`, `comments`, `CohortId`, `AdmissionDate`, `AdmittedBy`) VALUES
('067453', 55, NULL, NULL, 2, '2020-07-15', NULL),
('KNB-0044', 4, NULL, NULL, 1, '2020-07-01', NULL),
('KNB-0045', 5, NULL, NULL, 2, '2020-07-01', NULL),
('KNB-0046', 6, NULL, NULL, 2, '2020-07-02', NULL),
('KNB-0047', 7, NULL, NULL, 2, '2020-07-12', NULL),
('KNB-0049', 8, NULL, NULL, 2, '2020-07-15', NULL),
('KNB-079', 21, NULL, NULL, 1, '2020-08-05', NULL),
('KNB-080', 22, NULL, NULL, 1, '2020-08-05', NULL),
('KNB-081', 24, NULL, NULL, 1, '2020-08-19', NULL),
('KNB-082', 25, NULL, NULL, 1, '2020-07-02', NULL),
('KNB-083', 26, NULL, NULL, 1, '2020-08-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_student_scoring_sheet`
--

CREATE TABLE `vs_student_scoring_sheet` (
  `scoring_sheet` int(11) NOT NULL,
  `OOSG_CODE` varchar(50) DEFAULT NULL,
  `TestLeveId` int(11) DEFAULT NULL,
  `Passed` tinyint(1) DEFAULT 0,
  `Description` text DEFAULT NULL,
  `EnteredAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` int(11) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `DeletedBY` int(11) DEFAULT NULL,
  `IsModified` tinyint(1) DEFAULT 0,
  `ModifiedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_student_scoring_sheet`
--

INSERT INTO `vs_student_scoring_sheet` (`scoring_sheet`, `OOSG_CODE`, `TestLeveId`, `Passed`, `Description`, `EnteredAt`, `CreatedBy`, `IsDeleted`, `DeletedBY`, `IsModified`, `ModifiedBy`) VALUES
(1, 'KNB-0044', 1, 1, 'Basic Communication Skills and accounting', '2020-07-12 18:20:24', 70, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vs_test_category`
--

CREATE TABLE `vs_test_category` (
  `TestCategoryId` int(11) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_test_category`
--

INSERT INTO `vs_test_category` (`TestCategoryId`, `CategoryName`, `Description`, `Active`) VALUES
(1, 'English Literacy', 'Equip learner with ability to read write and comprehend basic English ', 1),
(2, 'Kiswahili Literacy', 'Equip learner with ability to read write and comprehend basic Swahili ', 1),
(3, 'Numeracy', 'Equip learner with ability to Perform basic arithmetic computations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vs_test_group`
--

CREATE TABLE `vs_test_group` (
  `TestGroupId` int(11) NOT NULL,
  `TestCategoryId` int(11) DEFAULT NULL,
  `TestGroupName` varchar(120) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_test_group`
--

INSERT INTO `vs_test_group` (`TestGroupId`, `TestCategoryId`, `TestGroupName`, `Description`, `Active`) VALUES
(1, 1, 'Reading', 'Test learner level of reading in english', 1),
(2, 1, 'Comprehesion', 'Test learner level of English Comprehension for those who can read a story', 1),
(3, 2, 'Kusoma', 'Test learner level of reading in Swahili', 1),
(4, 2, 'Ufahamu', 'Test learner level of  Swahili for those who can read a story', 1),
(5, 3, 'Numeracy', 'Test learner ability to identify numbers, add, subtract, multiply, divide', 1),
(6, 3, 'Etho-Maths', 'Administer test to all girls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vs_test_levels`
--

CREATE TABLE `vs_test_levels` (
  `TestLeveId` int(11) NOT NULL,
  `TestGroupId` int(11) DEFAULT NULL,
  `TestLevelName` varchar(120) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vs_test_levels`
--

INSERT INTO `vs_test_levels` (`TestLeveId`, `TestGroupId`, `TestLevelName`, `Description`, `Active`) VALUES
(1, 1, 'Nothing', 'Cannnot read anything', 1),
(2, 1, 'Letters', 'Can read out letters', 1),
(3, 1, 'Words', 'Can read out words', 1),
(4, 1, 'Paragraph', 'Can read a paragraph', 1),
(5, 1, 'Paragraph', 'Can read a Story', 1),
(6, 2, 'Can do Q1', 'Able to answer question 1', 1),
(7, 2, 'Cannot do Q1', 'Unable to answer question 1', 1),
(8, 2, 'Can do Q2', 'Able to answer question 2', 1),
(9, 2, 'Cannot do Q2', 'Unable to answer question 2', 1),
(10, 3, 'Hajui', 'Can read out letters', 1),
(11, 3, 'Silabi', 'Can read out words', 1),
(12, 3, 'Aya', 'Can read a paragraph', 1),
(13, 3, 'Hadithi', 'Can read a Story', 1),
(14, 4, 'Anaweza Q1', 'Able to answer question 1', 1),
(15, 4, 'Hawezi Q1', 'Unable to answer question 1', 1),
(16, 4, 'Anaweza Q2', 'Able to answer question 2', 1),
(17, 4, 'Hawezi Q2', 'Unable to answer question 2', 1),
(18, 5, 'Nothing', 'Does not understand anything', 1),
(19, 5, 'Count and Match', 'Able to count and Match numbers', 1),
(20, 5, 'Number Recognition 11-99', 'Able to recognise numbers from 11-99', 1),
(21, 5, 'Addition', 'Can add numbers', 1),
(22, 5, 'Subtraction', 'Can subtract numbers', 1),
(23, 5, 'Multiplication', 'Can multiply numbers', 1),
(24, 5, 'Division', 'Can divide numbers', 1),
(25, 6, 'Can do Q1', 'Able to answer question 1', 1),
(26, 6, 'Cannot do Q1', 'Unable to answer question 1', 1),
(27, 6, 'Can do Q2', 'Able to answer question 2', 1),
(28, 6, 'Cannot do Q2', 'Unable to answer question 2', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_centers`
-- (See below for the actual view)
--
CREATE TABLE `vw_centers` (
`CenterId` int(11)
,`County` varchar(255)
,`SubCounty` varchar(255)
,`CenterName` varchar(120)
,`CohortID` varchar(107)
,`LocationLong` varchar(120)
,`LocationLat` varchar(120)
,`Status` int(11)
,`Efid` int(11)
,`StaffName` varchar(100)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_promotion_request`
-- (See below for the actual view)
--
CREATE TABLE `vw_promotion_request` (
`promotion_request_id` int(11)
,`OOSG_CODE` varchar(100)
,`promotion_level` varchar(100)
,`request_by` int(11)
,`promoted` tinyint(1)
,`GirlName` varchar(120)
,`CenterName` varchar(120)
,`CohortTitle` varchar(120)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_registrations`
-- (See below for the actual view)
--
CREATE TABLE `vw_registrations` (
`RegistrationId` int(11)
,`OOSG_CODE` varchar(120)
,`CohortId` int(11)
,`Efid` int(11)
,`CenterId` int(11)
,`GirlName` varchar(120)
,`Village` varchar(120)
,`Ward` varchar(120)
,`LanguageSpoken` varchar(120)
,`HouseHeadName` varchar(120)
,`HouseHeadSex` varchar(10)
,`HouseHeadSpouseName` varchar(120)
,`Dob` date
,`Gender` varchar(10)
,`GuardianContact` varchar(120)
,`GuardianOcupation` varchar(120)
,`IsAdmitted` tinyint(1)
,`County` varchar(255)
,`SubCounty` varchar(255)
,`CenterName` varchar(120)
,`CohortTitle` varchar(120)
,`EfName` varchar(120)
,`CreatedByUser` varchar(120)
,`DeletedBy` int(11)
,`CreatedBy` int(11)
,`CreatedAt` timestamp
,`UpdatedAt` timestamp
,`Disability` varchar(120)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_staffs`
-- (See below for the actual view)
--
CREATE TABLE `vw_staffs` (
`id` int(11)
,`staffName` varchar(120)
,`Position` varchar(100)
,`county_name` varchar(255)
,`CenterName` varchar(120)
,`phone_number` varchar(10)
,`email` varchar(100)
,`Dob` date
,`date_of_join` date
,`active` tinyint(1)
,`details` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_student_scoring_sheet`
-- (See below for the actual view)
--
CREATE TABLE `vw_student_scoring_sheet` (
`scoring_sheet` int(11)
,`OOSG_CODE` varchar(50)
,`GirlName` varchar(120)
,`CenterName` varchar(120)
,`County` varchar(255)
,`CohortTitle` varchar(120)
,`Passed` tinyint(1)
,`admisteredBy` varchar(120)
,`age` bigint(21)
,`CategoryName` varchar(120)
,`TestGroupName` varchar(120)
,`TestLevelName` varchar(120)
,`Description` text
,`date_entered` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_test_group`
-- (See below for the actual view)
--
CREATE TABLE `vw_test_group` (
`TestGroupId` int(11)
,`CategoryName` varchar(120)
,`TestGroupName` varchar(120)
,`Description` text
,`Active` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_test_levels`
-- (See below for the actual view)
--
CREATE TABLE `vw_test_levels` (
`TestLeveId` int(11)
,`CategoryName` varchar(120)
,`TestGroupName` varchar(120)
,`TestLevelName` varchar(120)
,`Description` text
,`Active` tinyint(1)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_centers`
--
DROP TABLE IF EXISTS `vw_centers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_centers`  AS  select `vs_centers`.`CenterId` AS `CenterId`,`counties`.`county_name` AS `County`,`subcounties`.`name` AS `SubCounty`,`vs_centers`.`CenterName` AS `CenterName`,concat('Cohort ',`vs_centers`.`CohortID`) AS `CohortID`,`vs_centers`.`LocationLong` AS `LocationLong`,`vs_centers`.`LocationLat` AS `LocationLat`,`vs_centers`.`Status` AS `Status`,`vs_centers`.`Efid` AS `Efid`,`staff`.`StaffName` AS `StaffName`,`vs_centers`.`created_at` AS `created_at` from (((`vs_centers` join `subcounties` on(`subcounties`.`id` = `vs_centers`.`SubCountyId`)) join `counties` on(`counties`.`id` = `subcounties`.`county_id`)) left join `staff` on(`staff`.`StaffId` = `vs_centers`.`Efid`)) order by `vs_centers`.`created_at` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_promotion_request`
--
DROP TABLE IF EXISTS `vw_promotion_request`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_promotion_request`  AS  select `a`.`promotion_request_id` AS `promotion_request_id`,`a`.`OOSG_CODE` AS `OOSG_CODE`,`a`.`promotion_level` AS `promotion_level`,`a`.`request_by` AS `request_by`,`a`.`promoted` AS `promoted`,`vw_registrations`.`GirlName` AS `GirlName`,`vw_registrations`.`CenterName` AS `CenterName`,`vw_registrations`.`CohortTitle` AS `CohortTitle` from (`vs_promotion_request` `a` join `vw_registrations` on(`a`.`OOSG_CODE` = `vw_registrations`.`OOSG_CODE`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_registrations`
--
DROP TABLE IF EXISTS `vw_registrations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_registrations`  AS  select `vs_registrations`.`RegistrationId` AS `RegistrationId`,`vs_registrations`.`OOSG_CODE` AS `OOSG_CODE`,`b`.`CohortId` AS `CohortId`,`vs_registrations`.`Efid` AS `Efid`,`a`.`CenterId` AS `CenterId`,`vs_registrations`.`GirlName` AS `GirlName`,`vs_registrations`.`Village` AS `Village`,`vs_registrations`.`Ward` AS `Ward`,`vs_registrations`.`LanguageSpoken` AS `LanguageSpoken`,`vs_registrations`.`HouseHeadName` AS `HouseHeadName`,`vs_registrations`.`HouseHeadSex` AS `HouseHeadSex`,`vs_registrations`.`HouseHeadSpouseName` AS `HouseHeadSpouseName`,`vs_registrations`.`Dob` AS `Dob`,`vs_registrations`.`Gender` AS `Gender`,`vs_registrations`.`GuardianContact` AS `GuardianContact`,`vs_registrations`.`GuardianOcupation` AS `GuardianOcupation`,`vs_registrations`.`IsAdmitted` AS `IsAdmitted`,`a`.`County` AS `County`,`a`.`SubCounty` AS `SubCounty`,`a`.`CenterName` AS `CenterName`,`b`.`CohortTitle` AS `CohortTitle`,`c`.`fullname` AS `EfName`,`d`.`fullname` AS `CreatedByUser`,`vs_registrations`.`DeletedBy` AS `DeletedBy`,`vs_registrations`.`CreatedBy` AS `CreatedBy`,`vs_registrations`.`CreatedAt` AS `CreatedAt`,`vs_registrations`.`UpdatedAt` AS `UpdatedAt`,`vs_registrations`.`Disability` AS `Disability` from ((((`vs_registrations` join `vw_centers` `a` on(`a`.`CenterId` = `vs_registrations`.`CenterId`)) join `vs_cohorts` `b` on(`b`.`CohortId` = `vs_registrations`.`CohortId`)) join `user` `c` on(`c`.`UserId` = `vs_registrations`.`Efid`)) join `user` `d` on(`d`.`UserId` = `vs_registrations`.`CreatedBy`)) where `vs_registrations`.`IsDeleted` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_staffs`
--
DROP TABLE IF EXISTS `vw_staffs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_staffs`  AS  select `vs_staff`.`id` AS `id`,`vs_staff`.`name` AS `staffName`,`staffPositions`.`name` AS `Position`,`counties`.`county_name` AS `county_name`,`vs_centers`.`CenterName` AS `CenterName`,`vs_staff`.`phone_number` AS `phone_number`,`vs_staff`.`email` AS `email`,`vs_staff`.`dob` AS `Dob`,`vs_staff`.`date_of_join` AS `date_of_join`,`vs_staff`.`active` AS `active`,`vs_staff`.`details` AS `details` from (((`vs_staff` join `staffPositions` on(`staffPositions`.`id` = `vs_staff`.`position`)) left join `vs_centers` on(`vs_centers`.`CenterId` = `vs_staff`.`center_id`)) left join `counties` on(`counties`.`id` = `vs_staff`.`county_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_student_scoring_sheet`
--
DROP TABLE IF EXISTS `vw_student_scoring_sheet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_student_scoring_sheet`  AS  select `a`.`scoring_sheet` AS `scoring_sheet`,`a`.`OOSG_CODE` AS `OOSG_CODE`,`b`.`GirlName` AS `GirlName`,`b`.`CenterName` AS `CenterName`,`b`.`County` AS `County`,`b`.`CohortTitle` AS `CohortTitle`,`a`.`Passed` AS `Passed`,`b`.`EfName` AS `admisteredBy`,timestampdiff(YEAR,curdate(),`b`.`Dob`) AS `age`,`c`.`CategoryName` AS `CategoryName`,`c`.`TestGroupName` AS `TestGroupName`,`c`.`TestLevelName` AS `TestLevelName`,`c`.`Description` AS `Description`,cast(`a`.`EnteredAt` as date) AS `date_entered` from ((`vs_student_scoring_sheet` `a` join `vw_registrations` `b` on(`a`.`OOSG_CODE` = `b`.`OOSG_CODE`)) join `vw_test_levels` `c` on(`a`.`TestLeveId` = `c`.`TestLeveId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_test_group`
--
DROP TABLE IF EXISTS `vw_test_group`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_test_group`  AS  select `vs_test_group`.`TestGroupId` AS `TestGroupId`,`vs_test_category`.`CategoryName` AS `CategoryName`,`vs_test_group`.`TestGroupName` AS `TestGroupName`,`vs_test_group`.`Description` AS `Description`,`vs_test_group`.`Active` AS `Active` from (`vs_test_group` join `vs_test_category` on(`vs_test_category`.`TestCategoryId` = `vs_test_group`.`TestCategoryId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_test_levels`
--
DROP TABLE IF EXISTS `vw_test_levels`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_test_levels`  AS  select `vs_test_levels`.`TestLeveId` AS `TestLeveId`,`vw_test_group`.`CategoryName` AS `CategoryName`,`vw_test_group`.`TestGroupName` AS `TestGroupName`,`vs_test_levels`.`TestLevelName` AS `TestLevelName`,`vs_test_levels`.`Description` AS `Description`,`vs_test_levels`.`Active` AS `Active` from (`vs_test_levels` join `vw_test_group` on(`vw_test_group`.`TestGroupId` = `vs_test_levels`.`TestGroupId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_roles`
--
ALTER TABLE `access_roles`
  ADD PRIMARY KEY (`access_role_id`),
  ADD KEY `access_roles_user_type_id_fkey` (`user_type_id`),
  ADD KEY `access_roles_module_id_fkey` (`module_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`AdmissionId`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `backuprestore`
--
ALTER TABLE `backuprestore`
  ADD PRIMARY KEY (`BackUpRestoreId`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`CalendarId`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`CircularId`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassId`);

--
-- Indexes for table `coach_notes`
--
ALTER TABLE `coach_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `e_learning_media`
--
ALTER TABLE `e_learning_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsetting`
--
ALTER TABLE `generalsetting`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`HeaderId`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`LanguageId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `masterentry`
--
ALTER TABLE `masterentry`
  ADD PRIMARY KEY (`MasterEntryId`);

--
-- Indexes for table `masterentrycategory`
--
ALTER TABLE `masterentrycategory`
  ADD PRIMARY KEY (`MasterEntryCategoryId`);

--
-- Indexes for table `misc`
--
ALTER TABLE `misc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `mun`
--
ALTER TABLE `mun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`NoteId`);

--
-- Indexes for table `pagename`
--
ALTER TABLE `pagename`
  ADD PRIMARY KEY (`PageNameId`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`PermissionId`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`PhotoId`);

--
-- Indexes for table `printoption`
--
ALTER TABLE `printoption`
  ADD PRIMARY KEY (`PrintOptionId`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`RegistrationId`),
  ADD UNIQUE KEY `StudentName` (`StudentName`);

--
-- Indexes for table `school_term`
--
ALTER TABLE `school_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_attendance`
--
ALTER TABLE `session_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_general_info`
--
ALTER TABLE `session_general_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffId`);

--
-- Indexes for table `staffPositions`
--
ALTER TABLE `staffPositions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD PRIMARY KEY (`StudentAttendanceId`);

--
-- Indexes for table `subcounties`
--
ALTER TABLE `subcounties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`TimezoneId`);

--
-- Indexes for table `transition_levels`
--
ALTER TABLE `transition_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`TranslateId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_access_roles`
--
ALTER TABLE `user_access_roles`
  ADD PRIMARY KEY (`user_access_role_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `visit_images`
--
ALTER TABLE `visit_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_centers`
--
ALTER TABLE `vs_centers`
  ADD PRIMARY KEY (`CenterId`);

--
-- Indexes for table `vs_cohorts`
--
ALTER TABLE `vs_cohorts`
  ADD PRIMARY KEY (`CohortId`);

--
-- Indexes for table `vs_curriculumn_content`
--
ALTER TABLE `vs_curriculumn_content`
  ADD PRIMARY KEY (`ContentId`);

--
-- Indexes for table `vs_promotion_request`
--
ALTER TABLE `vs_promotion_request`
  ADD PRIMARY KEY (`promotion_request_id`);

--
-- Indexes for table `vs_registrations`
--
ALTER TABLE `vs_registrations`
  ADD PRIMARY KEY (`RegistrationId`),
  ADD UNIQUE KEY `OOSG_CODE` (`OOSG_CODE`);

--
-- Indexes for table `vs_session_attendance`
--
ALTER TABLE `vs_session_attendance`
  ADD PRIMARY KEY (`AttendanceId`);

--
-- Indexes for table `vs_staff`
--
ALTER TABLE `vs_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_students`
--
ALTER TABLE `vs_students`
  ADD PRIMARY KEY (`OOSG_CODE`),
  ADD KEY `vs_students_RegistrationId` (`RegistrationId`);

--
-- Indexes for table `vs_student_scoring_sheet`
--
ALTER TABLE `vs_student_scoring_sheet`
  ADD PRIMARY KEY (`scoring_sheet`);

--
-- Indexes for table `vs_test_category`
--
ALTER TABLE `vs_test_category`
  ADD PRIMARY KEY (`TestCategoryId`);

--
-- Indexes for table `vs_test_group`
--
ALTER TABLE `vs_test_group`
  ADD PRIMARY KEY (`TestGroupId`);

--
-- Indexes for table `vs_test_levels`
--
ALTER TABLE `vs_test_levels`
  ADD PRIMARY KEY (`TestLeveId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_roles`
--
ALTER TABLE `access_roles`
  MODIFY `access_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `AdmissionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `backuprestore`
--
ALTER TABLE `backuprestore`
  MODIFY `BackUpRestoreId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `CalendarId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `CircularId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ClassId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `coach_notes`
--
ALTER TABLE `coach_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1486;

--
-- AUTO_INCREMENT for table `e_learning_media`
--
ALTER TABLE `e_learning_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `generalsetting`
--
ALTER TABLE `generalsetting`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `HeaderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `LanguageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masterentry`
--
ALTER TABLE `masterentry`
  MODIFY `MasterEntryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `masterentrycategory`
--
ALTER TABLE `masterentrycategory`
  MODIFY `MasterEntryCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `misc`
--
ALTER TABLE `misc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mun`
--
ALTER TABLE `mun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `NoteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pagename`
--
ALTER TABLE `pagename`
  MODIFY `PageNameId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `PermissionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `PhotoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printoption`
--
ALTER TABLE `printoption`
  MODIFY `PrintOptionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `RegistrationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;

--
-- AUTO_INCREMENT for table `school_term`
--
ALTER TABLE `school_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session_attendance`
--
ALTER TABLE `session_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `session_general_info`
--
ALTER TABLE `session_general_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `staffPositions`
--
ALTER TABLE `staffPositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `StudentAttendanceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcounties`
--
ALTER TABLE `subcounties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `TimezoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `transition_levels`
--
ALTER TABLE `transition_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translate`
--
ALTER TABLE `translate`
  MODIFY `TranslateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visit_images`
--
ALTER TABLE `visit_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vs_centers`
--
ALTER TABLE `vs_centers`
  MODIFY `CenterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `vs_cohorts`
--
ALTER TABLE `vs_cohorts`
  MODIFY `CohortId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vs_curriculumn_content`
--
ALTER TABLE `vs_curriculumn_content`
  MODIFY `ContentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vs_promotion_request`
--
ALTER TABLE `vs_promotion_request`
  MODIFY `promotion_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vs_registrations`
--
ALTER TABLE `vs_registrations`
  MODIFY `RegistrationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `vs_session_attendance`
--
ALTER TABLE `vs_session_attendance`
  MODIFY `AttendanceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vs_staff`
--
ALTER TABLE `vs_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vs_student_scoring_sheet`
--
ALTER TABLE `vs_student_scoring_sheet`
  MODIFY `scoring_sheet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vs_test_category`
--
ALTER TABLE `vs_test_category`
  MODIFY `TestCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vs_test_group`
--
ALTER TABLE `vs_test_group`
  MODIFY `TestGroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vs_test_levels`
--
ALTER TABLE `vs_test_levels`
  MODIFY `TestLeveId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_roles`
--
ALTER TABLE `access_roles`
  ADD CONSTRAINT `access_roles_module_id_fkey` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`),
  ADD CONSTRAINT `access_roles_user_type_id_fkey` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`user_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
