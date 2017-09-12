-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 12 sep. 2017 à 14:35
-- Version du serveur :  5.5.57-0+deb8u1
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pointeuse`
--

-- --------------------------------------------------------

--
-- Structure de la table `autorized_card`
--

CREATE TABLE `autorized_card` (
  `id` int(11) NOT NULL,
  `card` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` int(2) NOT NULL,
  `imei` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `autorized_card`
--

INSERT INTO `autorized_card` (`id`, `card`, `date_created`, `name`, `state`, `imei`) VALUES
(4, 'ced740d5', '2016-07-17 22:08:02', 'Master GeoCom', 0, '00000000'),
(7, '1e859e9e', '2016-07-20 00:00:00', 'AZIZI ALAOUI Younes', 0, '00000000'),
(8, '5ea2b29e', '2016-07-20 00:00:00', 'TAOUIL Nisrine', 0, '00000000'),
(9, 'be1d9d9e', '2016-07-20 16:00:00', 'EL HATTAB Reda', 0, '00000000'),
(10, 'd4a0eebf', '2016-07-20 20:00:00', 'SABRI Naima', 0, '00000000'),
(16, 'e5a9f9e', '2016-08-03 15:00:59', 'EL HAOUARI Youssef', 0, '00000000'),
(17, '64b65fa3', '2016-08-03 15:00:59', 'BOUHIA Khadija', 0, '00000000'),
(18, 'f49bfba2', '2016-08-03 15:00:59', 'LAMRABET Samiha', 0, '00000000'),
(19, '74efd4a2', '2016-08-03 15:00:59', 'YAHI  Andessamad', 0, '00000000'),
(20, '5e7e9f9e', '2016-08-03 15:00:59', 'LAZRAQ Hicham', 0, '00000000'),
(21, 'e4cae0a2', '2016-08-03 15:00:59', 'EL HOMRITI Samir', 0, '00000000'),
(22, 'f4a9caa2', '2016-08-03 15:00:59', 'MENTAK Nadir', 0, '00000000'),
(23, 'a4428ea3', '2016-08-03 15:00:59', 'EL MIR Amine', 0, '00000000'),
(24, 'F04A0FA5', '2017-07-31 14:16:56', 'LAGRAA Sanae', 1, 'b8:27:eb:42:9d:c1'),
(25, '3ef9b19e', '2016-08-03 15:00:59', 'LAHRACH Boutenya', 0, '00000000'),
(26, 'bebe9d9e', '2016-08-03 15:00:59', 'KRIMI Lamiaa', 0, '00000000'),
(27, '24119da3', '2016-08-03 15:00:59', 'LANNAZ Omaima', 0, '00000000'),
(28, '8454f0bf', '2016-08-03 15:00:59', 'BOUTAHLIL Dalal', 0, '00000000'),
(29, 'd45845a3', '2016-08-03 15:00:59', 'IBANNI Said', 0, '00000000'),
(30, 'f4bd15a3', '2016-08-03 15:00:59', 'KAIBOUSS Amina', 0, '00000000'),
(31, 'c42966aa', '2016-08-03 15:00:59', 'MEDKOURI Hajar', 0, '00000000'),
(32, '842a63aa', '2016-08-03 15:00:59', 'BIKA Brahim', 0, '00000000'),
(33, 'e47e2bc0', '2016-08-03 15:00:59', 'IBRANI Hassna', 0, '00000000'),
(34, '34c7d8bf', '2016-08-03 15:00:59', 'MARZOUK Mouhannad', 0, '00000000'),
(35, '7444eabf', '2016-08-03 15:00:59', 'HANIF Ayoub', 0, '00000000'),
(36, 'e1c9c9e', '2016-08-03 15:00:59', 'HAMMOUCH Nawal', 0, '00000000'),
(37, '547ed0a2', '2016-08-03 15:00:59', 'BETTACH Youssef', 0, '00000000'),
(38, '449bbebf', '2016-08-03 15:00:59', 'TAJI Houda', 0, '00000000'),
(39, 'e4ead8a2', '2016-08-03 15:00:59', 'FADIL Nabil', 0, '00000000'),
(40, 'c41579a3', '2016-08-03 15:00:59', 'HAJEB Karim', 0, '00000000'),
(41, '2e7e9b9e', '2016-08-03 15:00:59', 'CHAHINE Hajar', 0, '00000000'),
(42, '9473ca3', '2016-08-03 15:00:59', 'SEKKAT Kenza', 0, '00000000'),
(43, '9e75b19e', '2016-08-03 15:00:59', 'HACHEM Aziz', 0, '00000000'),
(44, 'c48f7fa3', '2016-08-03 15:00:59', 'LOTFI Taha', 0, '00000000'),
(45, 'dec8b29e', '2016-08-03 15:00:59', 'EL ABOUBI Fatima Zahra', 0, '00000000'),
(46, '7e69e9e', '2016-08-03 15:00:59', 'AMAD Youness', 0, '00000000'),
(47, '44f6efbf', '2016-08-03 15:00:59', 'ELQORTOBI Fatima Zahra', 0, '00000000'),
(48, 'a488ecbf', '2016-08-03 15:00:59', 'LISSIRE Mohammed', 0, '00000000'),
(49, '2ed5af9e', '2016-08-03 15:00:59', 'FEZRANE Zaid', 0, '00000000'),
(50, 'CB40D65B', '2017-07-31 14:40:44', 'SLIMANI Naoufal', 1, 'b8:27:eb:42:9d:c1'),
(51, 'ceb19f9e', '2016-08-03 15:00:59', 'TATA Nabil', 0, '00000000'),
(52, '7ee5b29e', '2016-08-03 15:00:59', 'ZAZOUNI Mohamed Said', 0, '00000000'),
(53, '321CC3E7', '2017-07-31 14:10:40', 'TAQAT Loubna', 1, 'b8:27:eb:42:9d:c1'),
(54, 'beb39f9e', '2016-08-03 15:00:59', 'BENAMRANE Imane', 0, '00000000'),
(55, '3b85581f', '2016-08-03 15:00:59', 'KENIKSI KHAOULA', 0, '00000000'),
(56, '4439ebbf', '2016-08-03 15:00:59', 'AIT YOUS Samira', 0, '00000000'),
(57, '741883a3', '2016-08-03 15:00:59', 'AIT LAZRAG Salma', 0, '00000000'),
(58, '0EA1294F', '2017-07-31 14:16:09', 'BENBIHI Mohammed', 1, 'b8:27:eb:42:9d:c1'),
(59, '24bce1a2', '2016-08-03 15:00:59', 'AJANA Rania', 0, '00000000'),
(60, 'cee9f9e', '2016-08-03 15:00:59', 'EL HADRAOUI Imane', 0, '00000000'),
(61, '244ac8a2', '2016-08-03 15:00:59', 'CHEJAI Mounia', 0, '00000000'),
(62, 'aeaab19e', '2016-08-03 15:00:59', 'ZAHIDI Wyam', 0, '00000000'),
(63, 'eeb2d577', '2016-08-03 15:00:59', 'NOUR SALMA', 0, '00000000'),
(64, '8bc54e1f', '2016-08-03 15:00:59', 'EL MEFTAHI LOUBNA', 0, '00000000'),
(65, 'f46161aa', '2016-08-03 15:00:59', 'AGUIDA Zineb', 0, '00000000'),
(66, 'd41c28c0', '2016-08-03 15:00:59', 'ZAHAR Ghizlane', 0, '00000000'),
(67, 'c49cf6a2', '2016-08-03 15:00:59', 'BENIDIR Mohammed Aimad', 0, '00000000'),
(68, '54fd6a2', '2016-08-03 15:00:59', 'OUBAID Lamyaa', 0, '00000000'),
(69, '6480f3bf', '2016-08-03 15:00:59', 'MELLOUK Karim', 0, '00000000'),
(70, '1461dfa2', '2016-08-03 15:00:59', 'LOUKIDE Khadija', 0, '00000000'),
(71, '84f1d8bf', '2016-08-03 15:00:59', 'BAGHDADI Chourouk', 0, '00000000'),
(72, '84c3dea2', '2016-08-03 15:00:59', 'ZAIKH Anass', 0, '00000000'),
(73, '8419fca2', '2016-08-03 15:00:59', 'ABOUNNAAIM Sanaa', 0, '00000000'),
(74, '8470fba2', '2016-08-03 15:00:59', 'AYMAZ Nihal', 0, '00000000'),
(75, '74bf24c0', '2016-08-03 15:00:59', 'BERRADY Aymane', 0, '00000000'),
(76, 'a445d8a2', '2016-08-03 15:00:59', 'BENABDELOUAHAB Intissar', 0, '00000000'),
(77, '247ff4bf', '2016-08-03 15:00:59', 'BOUKHRISS Salma', 0, '00000000'),
(78, 'd4a3f3bf', '2016-08-03 15:00:59', 'AMMAR Zakaria', 0, '00000000'),
(79, '947a22c0', '2016-08-03 15:00:59', 'ALIOUAT Zineb', 0, '00000000'),
(80, '6e2c9b9e', '2016-08-03 15:00:59', 'HEDDI Ilham', 0, '00000000'),
(81, '14f581a3', '2016-08-03 15:00:59', 'HIBAT ALLAH EL guermat', 0, '00000000'),
(82, 'a49be2a2', '2016-08-03 15:00:59', 'JAAFRI Feras', 0, '00000000'),
(83, 'f4d5d1a2', '2016-08-03 15:00:59', 'KHATTABI Mouna', 0, '00000000'),
(84, 'fe66b19e', '2016-08-03 15:00:59', 'ESSAIDI Brahim', 0, '00000000'),
(85, '1e76b19e', '2016-08-03 15:00:59', 'KRIM BTISSAM', 0, '00000000'),
(86, '74e1eabf', '2016-08-03 15:00:59', 'OUCHARIA Mouhssine', 0, '00000000'),
(87, 'd473daa2', '2016-08-03 15:00:59', 'RCHID Hanane', 0, '00000000'),
(88, '54389ba3', '2016-08-03 15:00:59', 'RIAD Amal', 0, '00000000'),
(89, 'd4449ca3', '2016-08-03 15:00:59', 'SASSI Drissia', 0, '00000000'),
(90, 'd4d6d8a2', '2016-08-03 15:00:59', 'SNAFI Laila', 0, '00000000'),
(91, '4BDD5C1F', '2017-07-31 14:45:29', 'LAMZOUDI Hanane', 1, 'b8:27:eb:42:9d:c1'),
(92, '8419d9a2', '2016-08-03 15:00:59', 'LARBI OUASSSOU Hicham', 0, '00000000'),
(93, '845525c0', '2016-08-03 15:00:59', 'KHAIRI Rim', 0, '00000000'),
(94, 'a4fc23c0', '2016-08-03 15:00:59', 'EL MEKHFI Tarik', 0, '00000000'),
(95, 'f469b7bf', '2016-08-03 15:00:59', 'BENDIAB Salma', 0, '00000000'),
(96, '14b66daa', '2016-08-03 15:00:59', 'EL HANIF Sanaa', 0, '00000000'),
(97, 'a4acca2', '2016-08-03 15:00:59', 'EL MOUFTAKIR Tarik', 0, '00000000'),
(98, '6e96b29e', '2016-08-03 15:00:59', 'FERJALI Zakaria', 0, '00000000'),
(99, 'd445d6a2', '2016-08-03 15:00:59', 'KHARRAZEN Abdelmalek', 0, '00000000'),
(100, '94b79ba3', '2016-08-03 15:00:59', 'LAMNOUAR Mohammed', 0, '00000000'),
(101, 'f493efbf', '2016-08-03 15:00:59', 'LOUAH Yassine', 0, '00000000'),
(102, '4e69b19e', '2016-08-03 15:00:59', 'MEHAMDI Nada', 0, '00000000'),
(103, '8e68b19e', '2016-08-03 15:00:59', 'MERZOUK Kaoutar', 0, '00000000'),
(104, 'd4a1f0a2', '2016-08-03 15:00:59', 'MOURID Yassine', 0, '00000000'),
(105, 'c4d3efbf', '2016-08-03 15:00:59', 'RIADE Aimane', 0, '00000000'),
(106, 'c4e66baa', '2016-08-03 15:00:59', 'OUGUZINE Hanane', 0, '00000000'),
(107, '54289ba3', '2016-08-03 15:00:59', 'SORI Hanaa', 0, '00000000'),
(108, '3419cba2', '2016-08-03 15:00:59', 'CHENTOUF Reda', 0, '00000000'),
(109, '5ea0b29e', '2016-08-03 15:00:59', 'CHOUCHOU Samir', 0, '00000000'),
(110, '7497f8a2', '2016-08-03 15:00:59', 'CHTIOUI Chaimaa', 0, '00000000'),
(111, 'e49af7a2', '2016-08-03 15:00:59', 'EL GHAZALI Imane', 1, '00000000'),
(112, '2ec79d9e', '2016-08-03 15:00:59', 'EL HILALI Aymane', 0, '00000000'),
(113, '3419bbbf', '2016-08-03 15:00:59', 'HABIBI BENNANI Hind', 0, '00000000'),
(114, 'd47eda3', '2016-08-03 15:00:59', 'HADRI Salma', 0, '00000000'),
(115, 'd431daa2', '2016-08-03 15:00:59', 'HAJJI Rim', 0, '00000000'),
(116, '841bfbf', '2016-08-03 15:00:59', 'LABIB Sara', 0, '00000000'),
(117, '3e379d9e', '2016-08-03 15:00:59', 'AZHARI Mohamed', 0, '00000000'),
(118, '24fcf6bf', '2016-08-03 15:00:59', 'BELGOTE Mohammed', 0, '00000000'),
(119, '24ebcba2', '2016-08-03 15:00:59', 'BELKHIYATE Latifa', 0, '00000000'),
(120, '3414f3a2', '2016-08-03 15:00:59', 'BELKAS Zakarya', 0, '00000000'),
(121, '742c9da3', '2016-08-03 15:00:59', 'SEFRAOUI Roukia', 0, '00000000'),
(122, 'c410d9a2', '2016-08-03 15:00:59', 'LAMJID Hajar', 0, '00000000'),
(123, 'de2a9c9e', '2016-08-03 15:00:59', 'MZIOUD Chaimae', 0, '00000000'),
(124, '54e0edbf', '2016-08-03 15:00:59', 'BEN FATAH Sophia', 1, '00000000'),
(125, '5e1a9c9e', '2016-08-03 15:00:59', 'LAHRICHI Ghita', 0, '00000000'),
(126, 'e4add6a2', '2016-08-03 15:00:59', 'KHECHAB Fatima', 0, '00000000'),
(127, '34bcb5bf', '2016-08-03 15:00:59', 'KHAMBOUA El Mehdi', 0, '00000000'),
(128, '4f3f1a2', '2016-08-03 15:00:59', 'BOUMANTA Imane', 0, '00000000'),
(129, '7444edbf', '2016-08-03 15:00:59', 'IDRISSI AZAMI HASSANI Majd', 0, '00000000'),
(130, '64eefaa2', '2016-08-03 15:00:59', 'HRAGA Shady', 0, '00000000'),
(131, 'aec79d9e', '2016-08-03 15:00:59', 'BELFQIH Nezha', 0, '00000000'),
(132, '846bfaa2', '2016-08-03 15:00:59', 'AOUA Sara', 0, '00000000'),
(133, 'be56b29e', '2016-08-03 15:00:59', 'AOUNI Hamza', 0, '00000000'),
(134, 'c49ed4a2', '2016-08-03 15:00:59', 'BENSALAH Zoubir', 0, '00000000'),
(135, '54f4dea2', '2016-08-03 15:00:59', 'BENDOUMOU Fadwa', 0, '00000000'),
(136, '5078EDD5', '2017-07-31 14:15:28', 'MALKI Mohamed', 1, 'b8:27:eb:42:9d:c1'),
(137, 'c424e0a2', '2016-08-03 15:00:59', 'MAZZA Sanaa', 1, '00000000'),
(138, '8472e1a2', '2016-08-03 15:00:59', 'BELHOUCINE Mohamed', 0, '00000000'),
(139, 'dee59e9e', '2016-08-03 15:00:59', 'BOUHOU Yassine', 0, '00000000'),
(140, 'bb18531f', '2016-08-03 15:00:59', 'JOUAMAA Mohammed', 0, '00000000'),
(141, 'c424b4bf', '2016-08-03 15:00:59', 'TOUZANI Mohamed Reda', 0, '00000000'),
(142, 'b432fca2', '2016-08-03 15:00:59', 'ABOUALI Badr', 0, '00000000'),
(143, 'd4d17ba3', '2016-08-03 15:00:59', 'SOUNNI Leila', 0, '00000000'),
(144, 'a44623c0', '2016-08-03 15:00:59', 'TANGHOURT Ouidad', 0, '00000000'),
(145, '8410f8a2', '2016-08-03 15:00:59', 'SOFA Hind', 0, '00000000'),
(146, 'bea5b29e', '2016-08-03 15:00:59', 'SAIDI Leila', 0, '00000000'),
(147, '34f428c0', '2016-08-03 15:00:59', 'EL BEKKAOUI Islam', 0, '00000000'),
(148, '847cedbf', '2016-08-03 15:00:59', 'ZEROUALI HASNA', 0, '00000000'),
(149, '9ea0b29e', '2016-08-03 15:00:59', 'MOUJAHID Sanae', 0, '00000000'),
(150, '849c80a3', '2016-08-03 15:00:59', 'MESSOUR Yahya El Bachir', 0, '00000000'),
(151, '3413d1a2', '2016-08-03 15:00:59', 'MENCHAFOU Latifa', 0, '00000000'),
(152, '7e69b19e', '2016-08-03 15:00:59', 'CHOUGRED Youssef', 0, '00000000'),
(153, 'ce129c9e', '2016-08-03 15:00:59', 'TAAM Soukayna', 0, '00000000'),
(154, '7e1b9e9e', '2016-08-03 15:00:59', 'FARIANI Fatima Zahra', 0, '00000000'),
(155, '5ec5b29e', '2016-08-03 15:00:59', 'ERRAKI Lamiae', 0, '00000000'),
(156, '1e599c9e', '2016-08-03 15:00:59', 'EL BOUANANI Hatim', 0, '00000000'),
(157, 'beb99f9e', '2016-08-03 15:00:59', 'BERNOUSSI Loubna', 0, '00000000'),
(158, 'de13af9e', '2016-08-03 15:00:59', 'ASSILA Zakaria', 0, '00000000'),
(159, '4ea5b29e', '2016-08-03 15:00:59', 'EL OTHEMANY Mohamed', 0, '00000000'),
(160, '1455f7a2', '2016-08-03 15:00:59', 'BOUABADI Kenza', 0, '00000000'),
(161, 'b4a2f4a2', '2016-08-03 15:00:59', 'HAMMOUTI Amal', 0, '00000000'),
(162, '9ec3b29e', '2016-08-03 15:00:59', 'LAGHMADI Tasnim', 0, '00000000'),
(164, 'F067EED5', '2017-07-31 11:00:00', 'HAFRAOUI Houda', 1, 'b8:27:eb:42:9d:c1'),
(165, '7D70943C', '2017-07-31 12:00:14', 'KHAYI Fadoua', 1, 'b8:27:eb:42:9d:c1'),
(166, 'CC23C0D4', '2017-07-31 12:00:57', 'RHATAISSI AMINE HAMID', 1, 'b8:27:eb:42:9d:c1'),
(167, '8BAB5C1F', '2017-07-31 12:00:08', 'Bouallaga Tarik', 1, 'b8:27:eb:42:9d:c1'),
(168, 'EE04D677', '2017-07-31 12:00:02', 'RAZOUK Mustapha', 1, 'b8:27:eb:42:9d:c1'),
(169, '84CEF73B', '2017-07-31 12:00:14', 'MENCHAFOU Latifa', 1, 'b8:27:eb:42:9d:c1'),
(170, 'FEB4D677', '2017-07-31 12:00:08', 'BENLARABI Souleiman', 1, 'b8:27:eb:42:9d:c1'),
(171, 'A235B609', '2017-07-31 12:17:08', 'BABA Hakima', 1, 'b8:27:eb:42:9d:c1'),
(172, '1C5FC3D4', '2017-07-31 12:18:02', 'HARRAMI Sara', 1, 'b8:27:eb:42:9d:c1'),
(173, '0E29B19E', '2017-07-31 12:38:03', 'ABDELBAKKI Afaf', 1, 'b8:27:eb:42:9d:c1'),
(174, 'ACE40CB2', '2017-07-31 12:43:01', 'AZDI Fatine', 1, 'b8:27:eb:42:9d:c1'),
(175, '50310EA5', '2017-07-31 12:45:35', 'TAHRI Maroua', 1, 'b8:27:eb:42:9d:c1'),
(176, '93D096A5', '2017-07-31 12:46:57', 'AIT BOUGHABA Zoufla', 1, 'b8:27:eb:42:9d:c1'),
(177, '7DD2F918', '2017-07-31 13:53:23', 'BELKHDAR Meryem', 1, 'b8:27:eb:42:9d:c1'),
(178, 'FB1894EA', '2017-07-31 13:54:33', 'ELMARSAOUI Rima', 1, 'b8:27:eb:42:9d:c1'),
(179, '7D92FF18', '2017-07-31 13:55:29', 'BAN------ xxxxxxxx', 1, 'b8:27:eb:42:9d:c1'),
(180, '0BAE83EA', '2017-07-31 13:56:29', 'ELABOUBI Fatima Zahra', 1, 'b8:27:eb:42:9d:c1'),
(181, '527ABD09', '2017-07-31 13:58:28', 'BOUNGOUL Samira', 1, 'b8:27:eb:42:9d:c1'),
(182, '1C29BDD4', '2017-07-31 13:59:17', 'EL HAJJI Nawal', 1, 'b8:27:eb:42:9d:c1'),
(183, '32FBC7E7', '2017-07-31 14:00:58', 'HACHIM Mohammed', 1, 'b8:27:eb:42:9d:c1'),
(184, '3CBFBAD4', '2017-07-31 14:01:43', 'BENJADDI Hajar', 1, 'b8:27:eb:42:9d:c1'),
(185, '2E01AE9E', '2017-07-31 14:08:23', 'ZAHID Sahar', 1, 'b8:27:eb:42:9d:c1'),
(186, 'DE74F9FB', '2017-07-31 14:09:08', 'TAHIRI Safae', 1, 'b8:27:eb:42:9d:c1'),
(187, '2E6575AB', '2017-07-31 14:18:51', 'EL KASSIMI Abdelfattah', 1, 'b8:27:eb:42:9d:c1'),
(188, 'DCCDB2D4', '2017-07-31 14:20:01', 'EL BABARTI Hicham', 1, 'b8:27:eb:42:9d:c1'),
(189, '4C2EC4D3', '2017-07-31 14:21:57', 'NKIA Farah', 1, 'b8:27:eb:42:9d:c1'),
(190, 'C23BBE09', '2017-07-31 14:22:42', 'LASRY Noura', 1, 'b8:27:eb:42:9d:c1'),
(191, '3EAE4020', '2017-07-31 14:23:44', 'BARIK Meryem', 1, 'b8:27:eb:42:9d:c1'),
(192, '1C39BBD4', '2017-07-31 14:24:54', 'AMRANI Khalil', 1, 'b8:27:eb:42:9d:c1'),
(193, 'CC3DA8D4', '2017-07-31 14:25:39', 'EL GHARBAOUI Younes', 1, 'b8:27:eb:42:9d:c1'),
(194, '13A8E0A5', '2017-07-31 14:26:42', 'LAHMOURATE Mustapha', 1, 'b8:27:eb:42:9d:c1'),
(195, '039BF49A', '2017-07-31 14:27:30', 'LAMRINI Imane', 1, 'b8:27:eb:42:9d:c1'),
(196, '40DDC1A6', '2017-07-31 14:28:28', 'ESSEKOURI Khadija', 1, 'b8:27:eb:42:9d:c1'),
(197, '0E31D077', '2017-07-31 14:29:50', 'BENLARABI Salma', 1, 'b8:27:eb:42:9d:c1'),
(198, '9C63C5D4', '2017-07-31 14:30:49', 'DIENE Mohamed', 1, 'b8:27:eb:42:9d:c1'),
(199, '4EC1E377', '2017-07-31 14:31:28', 'MEYAZ Ikram', 1, 'b8:27:eb:42:9d:c1'),
(200, '4E53AD9E', '2017-07-31 14:32:19', 'SAAF Saloua', 1, 'b8:27:eb:42:9d:c1'),
(202, '10246DA5', '2017-07-31 14:34:14', 'BOUNOUAR Ali', 1, 'b8:27:eb:42:9d:c1'),
(203, 'B259231B', '2017-07-31 14:35:11', 'BERNOUSSI Salma', 1, 'b8:27:eb:42:9d:c1'),
(204, '1CEEC1D4', '2017-07-31 14:35:59', 'FOUZI Fatima Zohra', 1, 'b8:27:eb:42:9d:c1'),
(205, '2E58CE77', '2017-07-31 14:36:44', 'BELAKTIRIA Meryem', 1, 'b8:27:eb:42:9d:c1'),
(206, '93B88DA5', '2017-07-31 14:37:30', 'AZZOU Maryem', 1, 'b8:27:eb:42:9d:c1'),
(207, 'BC03C4D4', '2017-07-31 14:38:15', 'EL BOUZAKRI Asmaa', 1, 'b8:27:eb:42:9d:c1'),
(208, 'AB07D65B', '2017-07-31 14:39:59', 'BEN ALI Sabah', 1, 'b8:27:eb:42:9d:c1'),
(209, '2B6CF857', '2017-07-31 14:41:38', 'RAHAT Hayat', 1, 'b8:27:eb:42:9d:c1');

-- --------------------------------------------------------

--
-- Structure de la table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `fk_autorized` int(11) NOT NULL,
  `card` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `connected` text NOT NULL,
  `imei` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `autorized_card`
--
ALTER TABLE `autorized_card`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_autorized` (`fk_autorized`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `autorized_card`
--
ALTER TABLE `autorized_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT pour la table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
