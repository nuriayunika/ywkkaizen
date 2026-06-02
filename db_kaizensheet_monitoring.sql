-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2026 at 09:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kaizensheet_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nama_category` varchar(50) NOT NULL,
  `target_kaizen` int(11) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_category`, `target_kaizen`) VALUES
(1, 'PRODUCTIVITY', 10),
(2, 'COST DOWN', 10),
(3, 'QUALITY', 10),
(4, 'SAFETY', 10),
(5, '3S3T', 10);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `nama_dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `nama_dept`) VALUES
(1, 'MACHINE SHOP 1'),
(2, 'MACHINE SHOP 2'),
(3, 'CONROD'),
(4, 'PRODUCTION'),
(5, 'WAREHOUSE'),
(6, 'QUALITY CONTROL'),
(7, 'TOOL SHOP'),
(8, 'MAINTENANCE'),
(10, 'MARKETING'),
(11, 'FINANCE ACCOUNTING'),
(12, 'CUSTOMER SERVICE'),
(13, 'PGA'),
(14, 'IT'),
(15, 'PPC'),
(16, 'QUALITY ASSURANCE'),
(17, 'PROCUREMENT'),
(18, 'LOGISTIC'),
(19, 'ENGINEERING');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `nik`, `nama_karyawan`, `dept_id`, `section`) VALUES
(1, '2006015', 'TAUFIK HIDAYAT\r\n', 3, NULL),
(3, '2013009', 'KEMAS HENDRI SUMARTONO\r\n', 3, NULL),
(4, '1992011', 'GIYATNO\r\n', 3, NULL),
(5, '1993003', 'TEGUH EKO MULYANTO\r\n', 3, NULL),
(6, '1996005', 'SAMSURI\r\n', 3, NULL),
(7, '2006011', 'ASEP SUPRIATNA\r\n', 3, NULL),
(8, '2013022', 'M. YUNUS\r\n', 3, NULL),
(9, '2013029', 'CAHYADI ROBIANTO\r\n', 3, NULL),
(10, '2014012', 'NURMAN SUDIEMAN\r\n', 3, NULL),
(11, '2014013', 'FIYAN FIYANDI\r\n', 3, NULL),
(12, '2015013', 'AYI IRAWAN\r\n', 3, NULL),
(13, '2015029', 'YULIANTO\r\n', 3, NULL),
(14, '2015039', 'AGUS HERMAWAN\r\n', 3, NULL),
(15, '2017003', 'PRAYUDA FIRMANSYAH\r\n', 3, NULL),
(16, '2017035', 'RAFI ANGGA FINATA\r\n', 3, NULL),
(17, '2005005', 'ROSADI\r\n', 3, NULL),
(18, '2006017', 'HARY RIADI\r\n', 3, NULL),
(19, '2007017', 'PRIA ARIFFIANTO\r\n', 3, NULL),
(20, '2008010', 'PRASETYO EKO .P\r\n', 3, NULL),
(21, '2013017', 'BUDI\r\n', 3, NULL),
(22, '2013028', 'ANDRIY SARJONO\r\n', 3, NULL),
(23, '2013030', 'NURHIDAYAT\r\n', 3, NULL),
(24, '2013038', 'ADE INDRA CAHYANA\r\n', 3, NULL),
(25, '2013039', 'AJI CONDRO BIROWO\r\n', 3, NULL),
(26, '2013045', 'ANDI ARIYANTO\r\n', 3, NULL),
(27, '2014008', 'ZAMALLUDIN SYACH\r\n', 3, NULL),
(28, '2014009', 'SALLY DUSKHY\r\n', 3, NULL),
(29, '2014017', 'MOCH SAMSUDIN\r\n', 3, NULL),
(30, '2015024', 'IRWAN GUNAWAN\r\n', 3, NULL),
(31, '2015028', 'SANDI PURWANSYAH\r\n', 3, NULL),
(32, '2015032', 'SOLIHIN\r\n', 3, NULL),
(33, '2016054', 'MOHAMMAD FAHRUDIN\r\n', 3, NULL),
(34, '2016057', 'AJI PRANATA\r\n', 3, NULL),
(35, '2016058', 'ASEP KHAERUL IMAM\r\n', 3, NULL),
(36, '2016059', 'ARIF APRIYANTO\r\n', 3, NULL),
(37, '2016078', 'INAS RAHMADHAN\r\n', 3, NULL),
(38, '2016084', 'AL IMRON\r\n', 3, NULL),
(39, '2016085', 'ENDRA HARDYANSYAH\r\n', 3, NULL),
(40, '2016086', 'AMIRUDIN\r\n', 3, NULL),
(41, '2016092', 'SUTARYO\r\n', 3, NULL),
(42, '2017017', 'DANA SAPUTRA\r\n', 3, NULL),
(43, '2017022', 'TEGUH PAMUJI\r\n', 3, NULL),
(44, '2017023', 'HERI PRABOWO\r\n', 3, NULL),
(45, '2017024', 'AGUNG WIBOWO\r\n', 3, NULL),
(46, '2017039', 'RICO JANUARI\r\n', 3, NULL),
(47, '2017067', 'ADITYA\r\n', 3, NULL),
(48, '2017069', 'MAEWALDI SARIF\r\n', 3, NULL),
(49, '2017084', 'AHMAD FAUZI\r\n', 3, NULL),
(50, '2017088', 'SUTRISNO\r\n', 3, NULL),
(51, '2017089', 'AJAT SUDRAJAT\r\n', 3, NULL),
(52, '2017090', 'ADE FAUZI\r\n', 3, NULL),
(53, '2018038', 'GALEH ADINATA\r\n', 3, NULL),
(54, '2018100', 'ANDRIYANA\r\n', 3, NULL),
(55, '2018118', 'RULLY RAMADHAN\r\n', 3, NULL),
(56, '2018119', 'AHMAD SOPIAN\r\n', 3, NULL),
(57, '2018147', 'LUKMAN ABDUL RAHMAN\r\n', 3, NULL),
(58, '2018149', 'MAHANDIKA BAYU ERMAWAN\r\n', 3, NULL),
(59, '2019015', 'DENI WIBOWO\r\n', 3, NULL),
(60, '2019021', 'AJI RIZKIANA\r\n', 3, NULL),
(61, '2019023', 'RACHMAT HIDAYAT\r\n', 3, NULL),
(62, '2019054', 'HERDIANTO\r\n', 3, NULL),
(63, '2019063', 'ANDIKA BUDI UTOMO\r\n', 3, NULL),
(64, '2021024', 'MUHAMMAD NASHIRUDDIN MU\'TAZ\r\n', 3, NULL),
(65, '2021039', 'RIZAL WAHYU ROMADHON\r\n', 3, NULL),
(66, '2021045', 'DEA RACHMAN\r\n', 3, NULL),
(67, '2021061', 'RIAN ABDULLAH\r\n', 3, NULL),
(68, '2022002', 'ANDRI SAEFUL\r\n', 3, NULL),
(69, '2022003', 'MUHAMAD AINUN NAIM\r\n', 3, NULL),
(70, '2022027', 'MUHAMMAD NAHIDH ROMADONI\r\n', 3, NULL),
(71, '2022028', 'ABDUL ROHIM\r\n', 3, NULL),
(72, '2022033', 'AHMAD SETIAWAN\r\n', 3, NULL),
(73, '2022042', 'MUHAMMAD SUWARDI\r\n', 3, NULL),
(74, '2026009', 'RENDI AJI PRADANA\r\n', 3, NULL),
(75, '1994004', 'AMIRUDIN ARWAN UM\r\n', 1, NULL),
(76, '2007015', 'JIHAD ABDILLAH\r\n', 1, NULL),
(77, '2014005', 'ZULFIKAR\r\n', 1, NULL),
(78, '1996004', 'AGUS SURYONO\r\n', 1, NULL),
(79, '2006019', 'ABDUL HAKIM\r\n', 1, NULL),
(80, '2008008', 'MOHAMAD HAFIZH\r\n', 1, NULL),
(81, '2008009', 'JUNAEDI\r\n', 1, NULL),
(82, '2013047', 'DWI TANTO\r\n', 1, NULL),
(83, '1992006', 'AHMAD SAFEI\r\n', 1, NULL),
(84, '1994012', 'ERWIN SUHENDAR\r\n', 1, NULL),
(85, '2002048', 'SYAMSUL RIZAL\r\n', 1, NULL),
(86, '2006005', 'ARIS WIBOWO\r\n', 1, NULL),
(87, '2007011', 'ADE ABDULLAH\r\n', 1, NULL),
(88, '2007014', 'WASONO ALI MARHABAN\r\n', 1, NULL),
(89, '2009002', 'PONIMAN\r\n', 1, NULL),
(90, '2012012', 'RISWAN GINANJAR\r\n', 1, NULL),
(91, '2012015', 'RISMAYA\r\n', 1, NULL),
(92, '2012023', 'ADAM SEPTIANTO\r\n', 1, NULL),
(93, '2012024', 'ISWIDIANTO\r\n', 1, NULL),
(94, '2013005', 'HARRY SONJAYA\r\n', 1, NULL),
(95, '2013007', 'MUHAMAD KHOLIL\r\n', 1, NULL),
(96, '2013010', 'FAIZAL HASBI\r\n', 1, NULL),
(97, '2014004', 'SAMBA HARMONIS\r\n', 1, NULL),
(98, '2014006', 'MOH. SAMSUL ARIF\r\n', 1, NULL),
(99, '2015012', 'RANGGA JULIAN\r\n', 1, NULL),
(100, '2015027', 'AHMAD SAUGI\r\n', 1, NULL),
(101, '2015045', 'MARDANI\r\n', 1, NULL),
(102, '2016094', 'ADAM AZZAKHRUP\r\n', 1, NULL),
(103, '2016095', 'RIDWAN\r\n', 1, NULL),
(104, '2017037', 'FAJAR SIDIK\r\n', 1, NULL),
(105, '2017038', 'ADITYA DARISTYAWAN\r\n', 1, NULL),
(106, '2017083', 'UJANG SAHRUDIN\r\n', 1, NULL),
(107, '2018010', 'RUDI HARTONO\r\n', 1, NULL),
(108, '2018037', 'RAMDAN APRIANDI\r\n', 1, NULL),
(109, '2018064', 'MUHAMAD AJI ZAELANI\r\n', 1, NULL),
(110, '2018097', 'MUHAMAD MUKHLIS\r\n', 1, NULL),
(111, '2018112', 'ANDIYANA\r\n', 1, NULL),
(112, '2019007', 'WAHYUDIN HIDAYATULLOH\r\n', 1, NULL),
(113, '2019072', 'NURMAWANSYAH\r\n', 1, NULL),
(114, '2019074', 'SAHLAN NURHASAN\r\n', 1, NULL),
(115, '2021025', 'FAJAR ROSYADI\r\n', 1, NULL),
(116, '2021026', 'FAJAR SYAFRUDINUR\r\n', 1, NULL),
(117, '2024012', 'DENDI SUHANDI\r\n', 1, NULL),
(118, '2006006', 'TOMI WIJAYA\r\n', 2, NULL),
(119, '1996003', 'IRIYANTO\r\n', 2, NULL),
(120, '2006016', 'USMAN\r\n', 2, NULL),
(121, '2012004', 'MOCHAMMAD NUGROHO SUSANTO\r\n', 2, NULL),
(122, '2017018', 'DONNY FAISAL FANY\r\n', 2, NULL),
(123, '2018086', 'RISA TRI RAHMAT JAYA\r\n', 2, NULL),
(124, '1994008', 'MUHAMAD ALI\r\n', 2, NULL),
(125, '1994016', 'NUR BASORI\r\n', 2, NULL),
(126, '2005003', 'MUCHAMMAD SUBHAN\r\n', 2, NULL),
(127, '2006007', 'HARY SUSANTO\r\n', 2, NULL),
(128, '2006018', 'ARIS ISWANTO\r\n', 2, NULL),
(129, '2012021', 'HADI SISWANTO\r\n', 2, NULL),
(130, '2013011', 'NURHADI\r\n', 2, NULL),
(131, '2014007', 'PURWANTO\r\n', 2, NULL),
(132, '2017016', 'SATRIO HUTOMO\r\n', 2, NULL),
(133, '2017020', 'RUSLAN HADI PURNAMA\r\n', 2, NULL),
(134, '2017021', 'ABDUL MANAP\r\n', 2, NULL),
(135, '2017040', 'RIZKI RIVALDI\r\n', 2, NULL),
(136, '2017082', 'ERWIN PIRMANSYAH\r\n', 2, NULL),
(137, '2018085', 'TAUFIK HIDAYAT\r\n', 2, NULL),
(138, '2018146', 'DEDI MARHANDI\r\n', 2, NULL),
(139, '2021059', 'INDRA PRATAMA\r\n', 2, NULL),
(140, '2022004', 'ZULKIFLI\r\n', 2, NULL),
(141, '2022037', 'ADI YUSUP\r\n', 2, NULL),
(143, '2014016', 'JOKO PURNOMO\r\n', 8, NULL),
(144, '2015007', 'SUBKI AWALUDIN\r\n', 8, NULL),
(145, '2018076', 'MUHAMAD ARIEF KURNIAWAN\r\n', 8, NULL),
(146, '2013027', 'PIYAN SUPRIATNA\r\n', 8, NULL),
(147, '2014015', 'IWAN SOPIAN\r\n', 8, NULL),
(148, '2016055', 'YUDI OKTIAWAN\r\n', 8, NULL),
(149, '2016076', 'BUDIMAN HAKIM ADISETYA RAHMAN\r\n', 8, NULL),
(150, '2017005', 'AKBAR BINTANG FADHILLAH\r\n', 8, NULL),
(151, '2021029', 'NURUL ARIFIN\r\n', 8, NULL),
(152, '2023028', 'RENALDI SAPUTRA\r\n', 8, NULL),
(153, '2025017', 'SUHENDI\r\n', 8, NULL),
(154, '1995004', 'RUDI ISMANTO\r\n', 4, NULL),
(155, '2008006', 'JUMADI\r\n', 4, NULL),
(156, '2006008', 'BASUKI RACHMAN\r\n', 4, NULL),
(157, '2017078', 'SYAIFULLOH\r\n', 4, NULL),
(158, '1994003', 'HUSEN\r\n', 4, NULL),
(159, '1994009', 'YUDI ERMAYADI\r\n', 4, NULL),
(160, '1996002', 'SARJU\r\n', 4, NULL),
(161, '2004039', 'EDIONO\r\n', 4, NULL),
(162, '2006013', 'YAYAT SUPRIYATNA\r\n', 4, NULL),
(163, '2007008', 'ANA SOLIKIN\r\n', 4, NULL),
(164, '2007016', 'ISKANDAR\r\n', 3, NULL),
(165, '2008005', 'MOH IKHSAN SURYADINATA\r\n', 3, NULL),
(166, '2012006', 'TRIHANA\r\n', 4, NULL),
(167, '2013018', 'IMAM FAUZI\r\n', 4, NULL),
(168, '2013024', 'IHSAN SHOLEHUDIN AMINUR ROSYID\r\n', 4, NULL),
(169, '2013040', 'FAJAR SUKMONO\r\n', 4, NULL),
(170, '2013044', 'FREDY MONIAGA\r\n', 4, NULL),
(171, '2013052', 'RANGGA AGUSTIAN\r\n', 4, NULL),
(172, '2014014', 'ANDIK NUGROHO\r\n', 4, NULL),
(173, '2015050', 'ANDRIYANSAH\r\n', 4, NULL),
(174, '2016004', 'FAJAR ARBI MUSTOFA\r\n', 4, NULL),
(175, '2016007', 'ERTIAN SUKMA PRADANA\r\n', 4, NULL),
(176, '2016067', 'MUHAMAD FERY SUHERMANTO\r\n', 4, NULL),
(177, '2017066', 'ROCHMATUL HIDAYAT SAFITRI\r\n', 4, NULL),
(178, '2018012', 'RIYANTO\r\n', 4, NULL),
(179, '2018101', 'EKO PRAYOGO\r\n', 4, NULL),
(180, '2018116', 'DIDI SUARDI\r\n', 4, NULL),
(181, '2018117', 'SUHENDRA\r\n', 4, NULL),
(182, '2019069', 'ADE AMAR\r\n', 4, NULL),
(183, '2021015', 'DENIH EKA SUHANDI\r\n', 4, NULL),
(184, '2021030', 'LUKI SAMBAR PRABOWO\r\n', 4, NULL),
(185, '2021036', 'MUHAMMAD RISNANDAR\r\n', 4, NULL),
(186, '2021056', 'MOHAMAD RENALDI NUGROHO\r\n', 4, NULL),
(187, '2021057', 'YUSUF ALHAMDANI\r\n', 4, NULL),
(188, '2022020', 'IRFAI\r\n', 4, NULL),
(189, '2013031', 'SETYOKO HADI\r\n', 7, NULL),
(190, '2016053', 'DENO\r\n', 7, NULL),
(191, '2016060', 'MIFTAHUDIN AHADIJAYA\r\n', 7, NULL),
(192, '2016093', 'SANDI AKBAR\r\n', 7, NULL),
(193, '2017004', 'DIDIK SULARSO\r\n', 7, NULL),
(194, '2017036', 'SURYADI\r\n', 7, NULL),
(195, '2018002', 'MUHAMAD SANI\r\n', 7, NULL),
(196, '2021058', 'BAYU SETIAWAN\r\n', 7, NULL),
(197, '2012009', 'OKY PRASETYO BUDI\r\n', 5, NULL),
(198, '2013033', 'AGUS FATHURROHMAN\r\n', 5, NULL),
(199, '2018003', 'DEDIH SUSANTO\r\n', 5, NULL),
(200, '2018004', 'HANAPI\r\n', 5, NULL),
(201, '2018036', 'BAGUS NURCAHYO\r\n', 5, NULL),
(202, '2018039', 'MUHAMAD ZEIN\r\n', 5, NULL),
(203, '2018078', 'NURUL RAMDHAN\r\n', 5, NULL),
(204, '2018084', 'SHINDU ABU BAKAR\r\n', 5, NULL),
(205, '2018121', 'MOHAMAD SANTOSO\r\n', 5, NULL),
(206, '2019037', 'WAFIY HAFIDH ALMARAGHI\r\n', 5, NULL),
(207, '2019086', 'MUHAMMAD ALFI HIMAWAN AL ASYGAF\r\n', 5, NULL),
(208, '2019087', 'MAHDIANSYAH\r\n', 5, NULL),
(209, '2019088', 'JUAN PUTRA ERLANGGA HARTONO JUMARDIYANTO\r\n', 5, NULL),
(210, '1994011', 'SAPTONO\r\n', 6, NULL),
(211, '2004040', 'ARIEFIN RUSMAN\r\n', 6, NULL),
(212, '2005009', 'BUDI LADUMA\r\n', 6, NULL),
(213, '2008013', 'DEDI SUTEDI TISNA\r\n', 6, NULL),
(214, '2013023', 'ARMUKHOYIN\r\n', 6, NULL),
(215, '2013050', 'SIGIT HARDIYANTO\r\n', 6, NULL),
(216, '2014010', 'IMAM ASHARI\r\n', 6, NULL),
(217, '2015015', 'LUCFI ALFIANSYAH\r\n', 6, NULL),
(218, '2018063', 'ANGGA HARDIANSYAH\r\n', 6, NULL),
(219, '2021011', 'NANDA IDE PRAYOGO\r\n', 6, NULL),
(220, '2021028', 'LANAR GANESHA ANANDATAMA ROSANTIO\r\n', 6, NULL),
(221, '1992005', 'ABDUL RACHIM\r\n', 6, NULL),
(222, '1992007', 'YOMIN TARSOMA\r\n', 6, NULL),
(223, '2005002', 'ADI SUPRIADI\r\n', 6, NULL),
(224, '2006021', 'NANA DIANA\r\n', 6, NULL),
(225, '2007009', 'TAUFIK NURDIN\r\n', 6, NULL),
(226, '2007010', 'SURYANA\r\n', 6, NULL),
(227, '2008002', 'WELMAN RONY LESMANA\r\n', 6, NULL),
(228, '2012003', 'DARMANSYAH AZWAR\r\n', 6, NULL),
(229, '2013004', 'BAYU SETIA GAMA\r\n', 6, NULL),
(230, '2013006', 'MAULINDRA\r\n', 6, NULL),
(231, '2013026', 'DONI ALDIANSYAH\r\n', 6, NULL),
(232, '2013041', 'HUMAIDI HAMBALI\r\n', 6, NULL),
(233, '2017057', 'RANDY ARFIYANTO\r\n', 6, NULL),
(234, '2019022', 'SYAMSUDIN\r\n', 6, NULL),
(235, '2024005', 'BAGAS PRASETIO ATMOJO\r\n', 6, NULL),
(236, '2024006', 'REKA VEMBERIANA SUITA', 5, NULL),
(237, '2021016', 'MOCHAMAD DEDEN IRFANUDIN\r\n', 3, NULL),
(238, '1993010', 'MIFTAHUDIN\r\n', 3, NULL),
(239, '2005006', 'M. IHWAN\r\n', 3, NULL),
(240, '2015053', 'WARSONO\r\n', 3, NULL),
(241, '2026016', 'DWI RINOVANO\r\n', 3, NULL),
(242, '2013008', 'MUHAMMAD UWES KORNI\r\n', 4, NULL),
(244, '2025002', 'FACHRI MOHAMMAD ISMED\r\n', 4, NULL),
(245, '2018043', 'GUSTIANY ALAWIYAH\r\n', 4, NULL),
(246, '1994006', 'JOKO PAMILUTO\r\n', 4, NULL),
(247, '2026008', 'MUHAMAD RINTO\r\n', 4, NULL),
(248, '2022044', 'SAIFUL FIKIH\r\n', 4, NULL),
(249, '2021049', 'AHMAD RIZA KURNIANSYAH\r\n', 4, NULL),
(250, '2021035', 'WARNADI\r\n', 4, NULL),
(251, '2018099', 'ANTON MULYADI\r\n', 4, NULL),
(252, '2018065', 'MUHAMAD WAHYUDI\r\n', 4, NULL),
(253, '2017060', 'IRWAN SUYATNA\r\n', 4, NULL),
(254, '2014003', 'ACHMAD TAZUDIN\r\n', 4, NULL),
(255, '2013003', 'WAHYUDIN\r\n', 4, NULL),
(256, '2013002', 'KOMARUDIN FATAHILLAH\r\n', 4, NULL),
(257, '2012016', 'TRI PRAYITNO\r\n', 4, NULL),
(258, '2012008', 'WAWAN BUDIHARTO\r\n', 4, NULL),
(259, '2007018', 'AGUS TRIYANA\r\n', 4, NULL),
(260, '2005007', 'JAELANI\r\n', 4, NULL),
(261, '2003022', 'DEBBY CAHYADI\r\n', 4, NULL),
(262, '1994002', 'MITA\r\n', 4, NULL),
(263, '1990007', 'DENI WIDJAYA\r\n', 4, NULL),
(264, '2012005', 'RINALDI\r\n', 4, NULL),
(265, '2005008', 'UES KURNI\r\n', 4, NULL),
(266, '2021037', 'AHMAD FAOZI\r\n', 4, NULL),
(267, '1995005', 'TRISNA ASHARI\r\n', 4, NULL),
(268, '2006009', 'ALDI TRISDIANSYAH\r\n', 4, NULL),
(269, '2016081', 'IWAN KUSUMA\r\n', 5, NULL),
(270, '2012022', 'DEDE KURNIAWAN\r\n', 5, NULL),
(271, '2015010', 'BAYU RHOMADHON\r\n', 5, NULL),
(272, '2015002', 'BASAR HENDRIK MANALU\r\n', 6, NULL),
(273, '2025010', 'HUSEIN ARROSYID\r\n', 6, NULL),
(274, '2016077', 'MOCHAMMAD DOZAN PRATAMA\r\n', 6, NULL),
(275, '2025011', 'REJASA ADITYA NUR MOHAMMAD\r\n', 19, NULL),
(276, '2020030', 'RAKHMAT FIRDAUS\r\n', 19, NULL),
(277, '2024010', 'KUKUH PRASETYO\r\n', 19, NULL),
(278, '2011014', 'YONET HARYANTO\r\n', 10, NULL),
(279, '2011015', 'KOKOK KRISDIANTONO\r\n', 10, NULL),
(280, '2011016', 'RUDI ARIANTO\r\n', 10, NULL),
(281, '2011018', 'ANTO\r\n', 10, NULL),
(282, '2011019', 'SRI WAHONO\r\n', 10, NULL),
(283, '2011020', 'NANANG SUNARYO\r\n', 10, NULL),
(284, '2013001', 'ABANG OSAKA FREDDY\r\n', 10, NULL),
(285, '2013015', 'GUSTI\r\n', 10, NULL),
(286, '2013054', 'DWI PRAMONO\r\n', 10, NULL),
(287, '2015014', 'ARIFIN \r\n', 10, NULL),
(288, '2015049', 'MOHAMMAD SYAFII\r\n', 10, NULL),
(289, '2015061', 'SUHARTONO\r\n', 10, NULL),
(290, '2015065', 'SUBHAN BORAHIMA\r\n', 10, NULL),
(291, '2016032', 'MUH. ZERARI SASMITA\r\n', 10, NULL),
(292, '2016038', 'VINDA ASTIAN MAHENDRA\r\n', 10, NULL),
(293, '2016041', 'DARMANSYAH DOLLAH\r\n', 10, NULL),
(294, '2016061', 'BRURI PRATAMA HAMDAYANI\r\n', 10, NULL),
(295, '2016062', 'EDY PURNOMO\r\n', 10, NULL),
(296, '2016063', 'SAMPURNO\r\n', 10, NULL),
(297, '2016066', 'SAFRI LELANG H\r\n', 10, NULL),
(298, '2016104', 'DERMIKA MANURUNG\r\n', 10, NULL),
(299, '2017073', 'AMIR HUSIN GINTING\r\n', 10, NULL),
(300, '2017096', 'DIMAS RAHMADI PANGESTU\r\n', 10, NULL),
(301, '2018032', 'JULI SURYA PURWANTO\r\n', 10, NULL),
(302, '2018096', 'DODIK SULISTIAWAN\r\n', 10, NULL),
(303, '2022049', 'POMPI SUDRAJAT\r\n', 10, NULL),
(304, '2022052', 'INDRA SORIPADA HARAHAP\r\n', 10, NULL),
(305, '2022054', 'DESI AGUSTIN\r\n', 10, NULL),
(306, '2023011', 'SAKTO DWIPA ALWIY\r\n', 10, NULL),
(307, '2014018', 'AGNESTACHIA WAHYU HAYATI\r\n', 11, NULL),
(308, '2015072', 'EKO ARIF FAIZAL\r\n', 11, NULL),
(309, '2016009', 'ELYSAH\r\n', 11, NULL),
(310, '2018079', 'NANDA ANDRIANA RIDWAN\r\n', 11, NULL),
(311, '2019066', 'DESTRI ANITA\r\n', 11, NULL),
(312, '2019090', 'FRISCHA LAMRIA\r\n', 11, NULL),
(313, '2022053', 'HANDOYO\r\n', 11, NULL),
(314, '2023018', 'FEBRIANTI SAFFITRI\r\n', 11, NULL),
(315, '2023025', 'AJENG TYAS YUANA GITA\r\n', 11, NULL),
(316, '2023026', 'DIAH INDRIANI\r\n', 11, NULL),
(317, '1992013', 'IMAN ABDUL RAHMAN\r\n', 12, NULL),
(318, '2011011', 'AGUS DARWANTO\r\n', 12, NULL),
(319, '2011012', 'AINUR RIDLO\r\n', 12, NULL),
(320, '2016010', 'HERLAN RINALDI\r\n', 12, NULL),
(321, '2021027', 'AMAR MAULANA\r\n', 12, NULL),
(322, '2023008', 'SUPRIONO FITRO\r\n', 12, NULL),
(323, '2023021', 'DIMAS PANJI ASMARA\r\n', 12, NULL),
(324, '2023023', 'RONALDUS CAESARIANO EKA PUTRA\r\n', 12, NULL),
(325, '2023024', 'MUHAMMAD FAJAR ISMAN\r\n', 12, NULL),
(326, '2023027', 'ELIZA AGUSTIANI\r\n', 12, NULL),
(327, '2024002', 'FARAH NABILA ALTHAF\r\n', 12, NULL),
(328, '2025005', 'GILANG FRADITYA\r\n', 12, NULL),
(329, '2025008', 'HAFIZ HALOMOAN SORMIN\r\n', 12, NULL),
(330, '2009003', 'EDIH\r\n', 13, NULL),
(331, '2003021', 'ISTIYANI DIAH PUSPITASARI\r\n', 13, NULL),
(332, '2004038', 'SUGIANTO\r\n', 13, NULL),
(333, '2021040', 'GUNAWAN WICAKSONO\r\n', 13, NULL),
(334, '2023010', 'NABILAH MEIDA ADITYA\r\n', 13, NULL),
(335, '2023014', 'AHDIYAT RIYADI\r\n', 13, NULL),
(336, '2023033', 'YOSSI YUSNIDAR\r\n', 13, NULL),
(337, '2024004', 'GARCIA AMANDA NURSELA\r\n', 13, NULL),
(338, '2024007', 'LULU NABIHA NURILAILATI\r\n', 13, NULL),
(339, '2025004', 'TSANA FITRIA ADHA S\r\n', 13, NULL),
(340, '2025006', 'KURNIA CANDRA PRATIWI\r\n', 13, NULL),
(341, '2023029', 'BERNAZ SEPTIAN RAHARJO\r\n', 14, NULL),
(342, '2023036', 'TIO ANDIKA PUTRA\r\n', 14, NULL),
(343, '2024014', 'FAHMI RAMDHAN PUTRA\r\n', 16, NULL),
(344, '2025015', 'FICO REZA ARIWIBOWO\r\n', 16, NULL),
(345, '2025019', 'DAFFA FARHAN AHMAD\r\n', 16, NULL),
(346, '2019039', 'SITI HALIMAH\r\n', 17, NULL),
(347, '2022058', 'MULYADI PURNOMO\r\n', 17, NULL),
(348, '2023006', 'MALVIN HILMANTO\r\n', 17, NULL),
(349, '2024003', 'DIMAS SURYO BINTORO\r\n', 17, NULL),
(350, '2013043', 'ARDY FUJI SUSANTO\r\n', 18, NULL),
(351, '2023019', 'SALFA FIRYAL NINADA\r\n', 18, NULL),
(352, '2007001', 'YESSY WIDARTA\r\n', 15, NULL),
(353, '2014022', 'RIZKY ISWARA PUTRA\r\n', 15, NULL),
(354, '2019038', 'ADHE YUDHI KURNIAWAN \r\n', 15, NULL),
(355, '2020013', 'EMANUEL HEPPY SETIAWAN PARWOTO\r\n', 15, NULL),
(357, '2024016', 'SURANTO\r\n', 15, NULL),
(358, '1994013', 'MUHAMMAD AIDI\r\n', 1, NULL),
(359, '2026011', 'M. CHEVI ALDI PRATAMA\r\n', 3, NULL),
(360, '2026015', 'MOCHAMAD DEDEN IRFANUDIN\r\n', 3, NULL),
(361, '2012010', 'DWI YUDHA ADI', 7, NULL),
(362, '2013042', 'MOHAMAD RIDWAN', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kaizen_submissions`
--

CREATE TABLE `kaizen_submissions` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `category_id_4` int(11) DEFAULT NULL,
  `category_id_5` int(11) DEFAULT NULL,
  `tanggal_input` date DEFAULT NULL,
  `judul_kaizen` varchar(255) DEFAULT NULL,
  `total_score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kaizen_submissions`
--

INSERT INTO `kaizen_submissions` (`id`, `employee_id`, `category_id_1`, `category_id_2`, `category_id_3`, `category_id_4`, `category_id_5`, `tanggal_input`, `judul_kaizen`, `total_score`) VALUES
(1, 164, 1, 3, NULL, NULL, NULL, '2025-08-01', 'Tabel Std Install Kabel Alternator', 7),
(2, 37, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Table Standar Isi Box Matrial Lokal CR1', 13),
(3, 25, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Modifikasi Kunci L', 16),
(4, 34, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Selang Air Coolant', 4),
(5, 65, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Tabel/Label Tool Cadangan', 10),
(6, 11, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Penyimpanan SIM untuk setting GM OP30', 16),
(7, 49, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Memperlancar Proses Produksi', 19),
(8, 24, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Mengurangi Reject OP170 (Assy Bushing)', 20),
(9, 46, 1, 3, NULL, NULL, NULL, '2025-08-01', 'Penggunaan Centre Drill untuk Manual Champer', 17),
(10, 46, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Marking Jig/Clamping ', 12),
(11, 15, 1, 3, NULL, NULL, NULL, '2025-08-01', 'Penutup Pascal OP20', 7),
(12, 61, 3, 4, NULL, NULL, NULL, '2025-08-01', 'Menjaga Kualitas Matrial Finish Conrod', 6),
(13, 13, 2, NULL, NULL, NULL, NULL, '2025-08-01', 'Mengurangi Pemakaian Spidol dan Tiner ', 17),
(14, 74, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Label Nama di Box Packing Conrod Finish', 17),
(15, 64, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Pemasangan Tool yang Efektif', 9),
(16, 27, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Tabel Nomor Program & Urutan Proses Kerja Tool Mesin OP20 ', 13),
(17, 57, 1, 5, NULL, NULL, NULL, '2025-08-01', 'Identitas Penempatan Drill OP100', 7),
(18, 57, 1, 3, NULL, NULL, NULL, '2025-08-01', 'Tabel Arah Koordina X,Y,Z pada Mesin OP10, 80, 100', 11),
(19, 59, 2, NULL, NULL, NULL, NULL, '2025-08-01', 'Pemanfaatan Abrasive Belt Bekas untuk OP190', 10),
(20, 236, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat File untuk Penjualan, Stock dan Pengiriman', 8),
(21, 236, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Master Item Untuk Laporan Bulanan', 8),
(22, 236, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat File Productivitas PIC', 7),
(23, 236, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Menambahkan Kolom pada file setting Locator', 7),
(24, 216, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Revisi Point Check pada CS Final Check Genset', 22),
(25, 218, 3, 4, NULL, NULL, NULL, '2025-08-01', 'Modifikasi Lampu Indikator Oil Switch Engine TF V', 17),
(26, 219, 1, 2, 4, NULL, NULL, '2025-08-01', 'Label Fungsi Tombol Mesin Pompa Test Run', 13),
(27, 211, 2, NULL, NULL, NULL, NULL, '2025-08-01', 'Plastik Barcode Engine', 7),
(28, 211, 1, 2, NULL, NULL, NULL, '2025-08-01', 'Spray Gun Touch Up', 11),
(29, 217, 1, 5, NULL, NULL, NULL, '2025-08-01', 'Label Tag Report Engine YSP', 4),
(30, 210, 1, 5, NULL, NULL, NULL, '2025-08-01', 'Stand Checksheet', 8),
(31, 145, 4, NULL, NULL, NULL, NULL, '2025-08-01', 'Pembuatan Tiang Pembatas di Sisi E Display Assembling ', 8),
(32, 153, 1, 4, NULL, NULL, NULL, '2025-08-01', 'Merubah Pallet Flywheel Painting Mengikuti Program Just In Time', 14),
(33, 147, 4, 5, NULL, NULL, NULL, '2025-08-01', 'Pergantian Meja Sub Assy Fly Wheel', 13),
(34, 147, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Pembuatan Kanal Hoist Multi di Sub Assy Fly Wheel Assembling Line', 13),
(35, 151, 4, 5, NULL, NULL, NULL, '2025-08-01', 'Merubah Jalur Transfer Coolant dari Selang ke Pipa', 8),
(36, 151, 4, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Cover Penutup Socket Connector Mesin Makino PS65', 8),
(37, 152, 2, NULL, NULL, NULL, NULL, '2025-08-01', 'Ganti Model Limit Switch Stop Trolley Fly Wheel', 7),
(38, 151, 4, 5, NULL, NULL, NULL, '2025-08-01', 'Membuat Pengaman Kabel Start Mesin', 8),
(39, 146, 4, NULL, NULL, NULL, NULL, '2025-08-01', 'Buat Palang Pengaman untuk Operator dari Tertabraknya Troli', 17),
(40, 151, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Buat Rak untuk Menampung 3 Rak di Packing Line', 12),
(41, 144, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Rubah Pressure Switch Mekanik ke Pressure Switch Digital ', 14),
(42, 125, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Pin Penahan yang Besar untuk Balance Putaran Spindle ', 17),
(43, 134, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Pelindung Alat Ukur dari Selang', 7),
(44, 118, 2, NULL, NULL, NULL, NULL, '2025-08-01', 'Mengganti Bearing Tailstock Crankshaft', 9),
(45, 123, 5, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Alat untuk Pengerukan Lantai Kotor', 10),
(46, 134, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat  Panduan Adjust Meja Grinding OP60 Permodel', 15),
(47, 125, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Baut Adjust Tool Pos OP20 yang Lebih Panjang', 18),
(48, 107, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Improve Jig Tanda Marking Flywheel', 13),
(49, 87, 3, NULL, NULL, NULL, NULL, '2025-08-01', 'Menghilangkan Burry Ø Oring Crankshaft TF 300 Gearcase', 16),
(50, 77, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Meningkatkan Output OP60 saat Ganti Model', 15),
(51, 77, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Mengubah Metode Bongkar Pasang Jig OP10,OP20 Cylinder Head', 13),
(52, 199, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Tabel Perbedaan Pin Piston', 11),
(53, 199, 1, NULL, NULL, NULL, NULL, '2025-08-01', 'Membuat Tabel Perbedaan Ring Piston', 11),
(54, 203, 1, 5, NULL, NULL, NULL, '2025-08-01', 'Membuat Label Rak', 6),
(55, 203, 1, 5, NULL, NULL, NULL, '2025-08-01', 'Membuat Label Plastik', 9),
(56, 232, 2, 3, NULL, NULL, NULL, '2025-09-01', 'Rekondisi widht gauge yang sudah minus', 18),
(57, 232, 1, 4, NULL, NULL, NULL, '2025-09-01', 'Pin ulir ratchet', 12),
(58, 230, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memperbaiki komponen rel pada alat ukur profile projector', 15),
(59, 164, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel panel box', 7),
(60, 165, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Alat bantu ker impack khusus (cordles ratchet)', 15),
(61, 37, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Identitas warna di area final check', 8),
(62, 58, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Improve alat ukur GO NO GO tapping', 15),
(63, 15, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'Penutup alat ukur tosok', 4),
(64, 20, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Identitas barang produksi', 8),
(65, 36, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Improve clamping nut runner', 10),
(66, 61, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Penerapaan 3S3T tempat alat ukur', 4),
(67, 60, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'Bantalan karet untuk meredam benturan', 7),
(68, 60, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel program dan offset tool OP120', 9),
(69, 27, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel program dan tool offset milling OP10', 9),
(70, 32, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Identitas material hold antar shift', 4),
(71, 57, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel nomor program & urutan proses kerja tool mesin Op 120', 9),
(72, 66, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Tabel standart ukuran sloting pada meja datar pengukuran', 9),
(73, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat file surat jalan', 7),
(74, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat power point untuk dokumentasi', 7),
(75, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat file rental gudang YID', 8),
(76, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Stock taking bulanan', 8),
(77, 151, 1, 4, NULL, NULL, NULL, '2025-09-01', 'Membuat alat bantu tracker pelepas motor spindle', 15),
(78, 151, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Modif motor spindle', 15),
(79, 348, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Data base format KIPPU', 6),
(80, 349, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Asakai meeting board', 8),
(81, 349, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'ECN control sheet procurement', 7),
(82, 351, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Base data claim asuransi bersama', 10),
(83, 271, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat data rekap part yang belum terpotong di Gpack', 7),
(84, 271, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat laporan pengiriman outstanding sparepart di excel', 10),
(85, 358, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Pembuatan tool post flywheel line 2', 18),
(86, 358, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Posisi ideal peletakan holder tool', 4),
(87, 145, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Penggunaan accu dengan ampere lebih besar di forklift doosan', 10),
(88, 147, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Rubah box exhaust washing packing line', 10),
(89, 144, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Pemasangan saklar untuk menghindari double kirim signal E display', 14),
(90, 134, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tanda untuk arah alat ukur saat setting OP60', 17),
(91, 133, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Memindahkan troley jig kedekat mesin', 11),
(92, 125, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Dibuatkan pin untuk poka yoke pada drill MBH TS230', 17),
(93, 130, 2, NULL, NULL, NULL, NULL, '2025-09-01', 'Memanfaatkan oli slide bekas untuk proses tap MBH&RA', 7),
(94, 123, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Memudahkan akses untuk foreman mengisi bluecollar di computer', 12),
(95, 203, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat picking list E-Display', 12),
(96, 199, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel perbedaan piston TF 85 & 90 VE', 11),
(97, 208, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel cover elektrik assy', 11),
(98, 202, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel pemakaian retainer bearing TF85/105', 11),
(99, 203, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel perbedaan piston TF105 lokal dan WL', 11),
(100, 79, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Modifikasi chuck flywheel line 2', 14),
(101, 82, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memberi marking group/shift', 10),
(102, 82, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memperbaiki kualitas dan mengurangi reject', 12),
(103, 112, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Penambahan stopper toolpost', 18),
(104, 210, 3, 2, NULL, NULL, NULL, '2025-09-01', 'Area pembuangan coolant YSP engine', 13),
(105, 217, 1, 2, 3, NULL, NULL, '2025-09-01', 'Mengurangi scratch pada gearcase dan flywheel', 21),
(106, 218, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Menghindari kehilangan data pengetesan & durability dengan data logger Hioki', 17),
(107, 232, 2, 3, NULL, NULL, NULL, '2025-09-01', 'Rekondisi widht gauge yang sudah minus', 18),
(108, 232, 1, 4, NULL, NULL, NULL, '2025-09-01', 'Pin ulir ratchet', 12),
(109, 230, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memperbaiki komponen rel pada alat ukur profile projector', 15),
(110, 164, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel panel box', 7),
(111, 165, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Alat bantu ker impack khusus (cordles ratchet)', 15),
(112, 37, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Identitas warna di area final check', 8),
(113, 58, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Improve alat ukur GO NO GO tapping', 15),
(114, 15, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'Penutup alat ukur tosok', 4),
(115, 20, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Identitas barang produksi', 8),
(116, 36, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Improve clamping nut runner', 10),
(117, 61, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Penerapaan 3S3T tempat alat ukur', 4),
(118, 60, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'Bantalan karet untuk meredam benturan', 7),
(119, 60, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel program dan offset tool OP120', 9),
(120, 27, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel program dan tool offset milling OP10', 9),
(121, 32, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Identitas material hold antar shift', 4),
(122, 57, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Tabel nomor program & urutan proses kerja tool mesin Op 120', 9),
(123, 66, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Tabel standart ukuran sloting pada meja datar pengukuran', 9),
(124, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat file surat jalan', 7),
(125, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat power point untuk dokumentasi', 7),
(126, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat file rental gudang YID', 8),
(127, 236, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Stock taking bulanan', 8),
(128, 151, 1, 4, NULL, NULL, NULL, '2025-09-01', 'Membuat alat bantu tracker pelepas motor spindle', 15),
(129, 151, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Modif motor spindle', 15),
(130, 348, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Data base format KIPPU', 6),
(131, 349, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Asakai meeting board', 8),
(132, 349, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'ECN control sheet procurement', 7),
(133, 351, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Base data claim asuransi bersama', 10),
(134, 271, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat data rekap part yang belum terpotong di Gpack', 7),
(135, 271, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat laporan pengiriman outstanding sparepart di excel', 10),
(136, 358, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Pembuatan tool post flywheel line 2', 18),
(137, 358, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Posisi ideal peletakan holder tool', 4),
(138, 145, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Penggunaan accu dengan ampere lebih besar di forklift doosan', 10),
(139, 147, 1, 5, NULL, NULL, NULL, '2025-09-01', 'Rubah box exhaust washing packing line', 10),
(140, 144, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Pemasangan saklar untuk menghindari double kirim signal E display', 14),
(141, 134, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tanda untuk arah alat ukur saat setting OP60', 17),
(142, 133, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Memindahkan troley jig kedekat mesin', 11),
(143, 125, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Dibuatkan pin untuk poka yoke pada drill MBH TS230', 17),
(144, 130, 2, NULL, NULL, NULL, NULL, '2025-09-01', 'Memanfaatkan oli slide bekas untuk proses tap MBH&RA', 7),
(145, 123, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Memudahkan akses untuk foreman mengisi bluecollar di computer', 12),
(146, 203, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat picking list E-Display', 12),
(147, 199, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel perbedaan piston TF 85 & 90 VE', 11),
(148, 208, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel cover elektrik assy', 11),
(149, 202, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel pemakaian retainer bearing TF85/105', 11),
(150, 203, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Membuat tabel perbedaan piston TF105 lokal dan WL', 11),
(151, 79, 5, NULL, NULL, NULL, NULL, '2025-09-01', 'Modifikasi chuck flywheel line 2', 14),
(152, 82, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memberi marking group/shift', 10),
(153, 82, 3, NULL, NULL, NULL, NULL, '2025-09-01', 'Memperbaiki kualitas dan mengurangi reject', 12),
(154, 112, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Penambahan stopper toolpost', 18),
(155, 210, 3, 2, NULL, NULL, NULL, '2025-09-01', 'Area pembuangan coolant YSP engine', 13),
(156, 217, 1, 2, 3, NULL, NULL, '2025-09-01', 'Mengurangi scratch pada gearcase dan flywheel', 21),
(157, 218, 1, 3, NULL, NULL, NULL, '2025-09-01', 'Menghindari kehilangan data pengetesan & durability dengan data logger Hioki', 17),
(158, 361, 1, NULL, NULL, NULL, NULL, '2025-09-01', 'Mempercepat kedatangan item repeat order', 8),
(159, 362, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'Buat stopper engine di conveyor after oven touch up packing line', 8),
(160, 362, 4, NULL, NULL, NULL, NULL, '2025-09-01', 'penambahan tangga untuk ambil sampling gas buang exhaust painting', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `kaizen_submissions`
--
ALTER TABLE `kaizen_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id_1`),
  ADD KEY `kaizen_submissions_ibfk_1` (`employee_id`),
  ADD KEY `category_id_2` (`category_id_2`),
  ADD KEY `category_id_3` (`category_id_3`),
  ADD KEY `category_id_4` (`category_id_4`),
  ADD KEY `category_id_5` (`category_id_5`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `kaizen_submissions`
--
ALTER TABLE `kaizen_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `kaizen_submissions`
--
ALTER TABLE `kaizen_submissions`
  ADD CONSTRAINT `kaizen_submissions_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kaizen_submissions_ibfk_2` FOREIGN KEY (`category_id_1`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `kaizen_submissions_ibfk_3` FOREIGN KEY (`category_id_2`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `kaizen_submissions_ibfk_4` FOREIGN KEY (`category_id_3`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `kaizen_submissions_ibfk_5` FOREIGN KEY (`category_id_4`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `kaizen_submissions_ibfk_6` FOREIGN KEY (`category_id_5`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
