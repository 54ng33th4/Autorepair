-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 02:29 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `auto_fix`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_bank`
--

CREATE TABLE IF NOT EXISTS `account_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `aadhar_no` int(11) NOT NULL,
  `id_proof` varchar(25) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `account_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `account_bank`
--

INSERT INTO `account_bank` (`id`, `name`, `address`, `contact`, `gender`, `aadhar_no`, `id_proof`, `photo`, `account_no`, `amount`, `status`) VALUES
(20, 'Meena M', 'Door No: 001, QRS Mall Sq', '9638527410', 'Male', 123456, '1.jpg', '1.jpg', 826223, 14500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `DistCode` int(11) NOT NULL AUTO_INCREMENT,
  `StCode` int(11) DEFAULT NULL,
  `DistrictName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DistCode`),
  KEY `StCode` (`StCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=651 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DistCode`, `StCode`, `DistrictName`) VALUES
(1, 1, 'North and Middle Andama'),
(2, 1, 'South Andama'),
(3, 1, 'Nicobar'),
(4, 2, 'Anantapur'),
(5, 2, 'Chittoor'),
(6, 2, 'East Godavari'),
(7, 2, 'Guntur'),
(8, 2, 'Krishna'),
(9, 2, 'Kurnool'),
(10, 2, 'Prakasam'),
(11, 2, 'Srikakulam'),
(12, 2, 'Sri Potti Sri Ramulu Nellore'),
(13, 2, 'Vishakhapatnam'),
(14, 2, 'Vizianagaram'),
(15, 2, 'West Godavari'),
(16, 2, 'Cudappah'),
(17, 3, 'Anjaw'),
(18, 3, 'Changlang'),
(19, 3, 'East Siang'),
(20, 3, 'East Kameng'),
(21, 3, 'Kurung Kumey'),
(22, 3, 'Lohit'),
(23, 3, 'Lower Dibang Valley'),
(24, 3, 'Lower Subansiri'),
(25, 3, 'Papum Pare'),
(26, 3, 'Tawang'),
(27, 3, 'Tirap'),
(28, 3, 'Dibang Valley'),
(29, 3, 'Upper Siang'),
(30, 3, 'Upper Subansiri'),
(31, 3, 'West Kameng'),
(32, 3, 'West Siang'),
(33, 4, 'Baksa'),
(34, 4, 'Barpeta'),
(35, 4, 'Bongaigao'),
(36, 4, 'Cachar'),
(37, 4, 'Chirang'),
(38, 4, 'Darrang'),
(39, 4, 'Dhemaji'),
(40, 4, 'Dima Hasao'),
(41, 4, 'Dhubri'),
(42, 4, 'Dibrugarh'),
(43, 4, 'Goalpara'),
(44, 4, 'Golaghat'),
(45, 4, 'Hailakandi'),
(46, 4, 'Jorhat'),
(47, 4, 'Kamrup'),
(48, 4, 'Kamrup Metropolita'),
(49, 4, 'Karbi Anglong'),
(50, 4, 'Karimganj'),
(51, 4, 'Kokrajhar'),
(52, 4, 'Lakhimpur'),
(53, 4, 'Morigao'),
(54, 4, 'Nagao'),
(55, 4, 'Nalbari'),
(56, 4, 'Sivasagar'),
(57, 4, 'Sonitpur'),
(58, 4, 'Tinsukia'),
(59, 4, 'Udalguri'),
(60, 5, 'Araria'),
(61, 5, 'Arwal'),
(62, 5, 'Aurangabad'),
(63, 5, 'Banka'),
(64, 5, 'Begusarai'),
(65, 5, 'Bhagalpur'),
(66, 5, 'Bhojpur'),
(67, 5, 'Buxar'),
(68, 5, 'Darbhanga'),
(69, 5, 'East Champara'),
(70, 5, 'Gaya'),
(71, 5, 'Gopalganj'),
(72, 5, 'Jamui'),
(73, 5, 'Jehanabad'),
(74, 5, 'Kaimur'),
(75, 5, 'Katihar'),
(76, 5, 'Khagaria'),
(77, 5, 'Kishanganj'),
(78, 5, 'Lakhisarai'),
(79, 5, 'Madhepura'),
(80, 5, 'Madhubani'),
(81, 5, 'Munger'),
(82, 5, 'Muzaffarpur'),
(83, 5, 'Nalanda'),
(84, 5, 'Nawada'),
(85, 5, 'Patna'),
(86, 5, 'Purnia'),
(87, 5, 'Rohtas'),
(88, 5, 'Saharsa'),
(89, 5, 'Samastipur'),
(90, 5, 'Sara'),
(91, 5, 'Sheikhpura'),
(92, 5, 'Sheohar'),
(93, 5, 'Sitamarhi'),
(94, 5, 'Siwa'),
(95, 5, 'Supaul'),
(96, 5, 'Vaishali'),
(97, 5, 'West Champara'),
(98, 6, 'Chandigarh'),
(99, 7, 'Bastar'),
(100, 7, 'Bijapur'),
(101, 7, 'Bilaspur'),
(102, 7, 'Dantewada'),
(103, 7, 'Dhamtari'),
(104, 7, 'Durg'),
(105, 7, 'Jashpur'),
(106, 7, 'Janjgir-Champa'),
(107, 7, 'Korba'),
(108, 7, 'Koriya'),
(109, 7, 'Kanker'),
(110, 7, 'Kabirdham (formerly Kawardha);'),
(111, 7, 'Mahasamund'),
(112, 7, 'Narayanpur'),
(113, 7, 'Raigarh'),
(114, 7, 'Rajnandgao'),
(115, 7, 'Raipur'),
(116, 7, 'Surajpur'),
(117, 8, 'Dadra and Nagar Haveli'),
(118, 9, 'Dama'),
(119, 9, 'Diu'),
(120, 10, 'Central Delhi'),
(121, 10, 'East Delhi'),
(122, 10, 'New Delhi'),
(123, 10, 'North Delhi'),
(124, 10, 'North East Delhi'),
(125, 10, 'North West Delhi'),
(126, 10, 'South Delhi'),
(127, 10, 'South West Delhi'),
(128, 10, 'West Delhi'),
(129, 11, 'North Goa'),
(130, 11, 'South Goa'),
(131, 12, 'Ahmedabad'),
(132, 12, 'Amreli'),
(133, 12, 'Anand'),
(134, 12, 'Aravalli'),
(135, 12, 'Banaskantha'),
(136, 12, 'Bharuch'),
(137, 12, 'Bhavnagar'),
(138, 12, 'Dahod'),
(139, 12, 'Dang'),
(140, 12, 'Gandhinagar'),
(141, 12, 'Jamnagar'),
(142, 12, 'Junagadh'),
(143, 12, 'Kutch'),
(144, 12, 'Kheda'),
(145, 12, 'Mehsana'),
(146, 12, 'Narmada'),
(147, 12, 'Navsari'),
(148, 12, 'Pata'),
(149, 12, 'Panchmahal'),
(150, 12, 'Porbandar'),
(151, 12, 'Rajkot'),
(152, 12, 'Sabarkantha'),
(153, 12, 'Surendranagar'),
(154, 12, 'Surat'),
(155, 12, 'Tapi'),
(156, 12, 'Vadodara'),
(157, 12, 'Valsad'),
(158, 13, 'Ambala'),
(159, 13, 'Bhiwani'),
(160, 13, 'Faridabad'),
(161, 13, 'Fatehabad'),
(162, 13, 'Gurgao'),
(163, 13, 'Hissar'),
(164, 13, 'Jhajjar'),
(165, 13, 'Jind'),
(166, 13, 'Karnal'),
(167, 13, 'Kaithal'),
(168, 13, 'Kurukshetra'),
(169, 13, 'Mahendragarh'),
(170, 13, 'Mewat'),
(171, 13, 'Palwal'),
(172, 13, 'Panchkula'),
(173, 13, 'Panipat'),
(174, 13, 'Rewari'),
(175, 13, 'Rohtak'),
(176, 13, 'Sirsa'),
(177, 13, 'Sonipat'),
(178, 13, 'Yamuna Nagar'),
(179, 14, 'Bilaspur'),
(180, 14, 'Chamba'),
(181, 14, 'Hamirpur'),
(182, 14, 'Kangra'),
(183, 14, 'Kinnaur'),
(184, 14, 'Kullu'),
(185, 14, 'Lahaul and Spiti'),
(186, 14, 'Mandi'),
(187, 14, 'Shimla'),
(188, 14, 'Sirmaur'),
(189, 14, 'Sola'),
(190, 14, 'Una'),
(191, 15, 'Anantnag'),
(192, 15, 'Badgam'),
(193, 15, 'Bandipora'),
(194, 15, 'Baramulla'),
(195, 15, 'Doda'),
(196, 15, 'Ganderbal'),
(197, 15, 'Jammu'),
(198, 15, 'Kargil'),
(199, 15, 'Kathua'),
(200, 15, 'Kishtwar'),
(202, 15, 'Kupwara'),
(203, 15, 'Kulgam'),
(204, 15, 'Leh'),
(205, 15, 'Poonch'),
(206, 15, 'Pulwama'),
(207, 15, 'Rajouri'),
(208, 15, 'Ramba'),
(209, 15, 'Reasi'),
(210, 15, 'Samba'),
(211, 15, 'Shopia'),
(212, 15, 'Srinagar'),
(213, 15, 'Udhampur'),
(214, 16, 'Bokaro'),
(215, 16, 'Chatra'),
(216, 16, 'Deoghar'),
(217, 16, 'Dhanbad'),
(218, 16, 'Dumka'),
(219, 16, 'East Singhbhum'),
(220, 16, 'Garhwa'),
(221, 16, 'Giridih'),
(222, 16, 'Godda'),
(223, 16, 'Gumla'),
(224, 16, 'Hazaribag'),
(225, 16, 'Jamtara'),
(226, 16, 'Khunti'),
(227, 16, 'Koderma'),
(228, 16, 'Latehar'),
(229, 16, 'Lohardaga'),
(230, 16, 'Pakur'),
(231, 16, 'Palamu'),
(232, 16, 'Ramgarh'),
(233, 16, 'Ranchi'),
(234, 16, 'Sahibganj'),
(235, 16, 'Seraikela Kharsawa'),
(236, 16, 'Simdega'),
(237, 16, 'West Singhbhum'),
(238, 17, 'Bagalkot'),
(239, 17, 'Bangalore Rural'),
(240, 17, 'Bangalore Urba'),
(241, 17, 'Belgaum'),
(242, 17, 'Bellary'),
(243, 17, 'Bidar'),
(244, 17, 'Bijapur'),
(245, 17, 'Chamarajnagar'),
(246, 17, 'Chikkamagaluru'),
(247, 17, 'Chikkaballapur'),
(248, 17, 'Chitradurga'),
(249, 17, 'Davanagere'),
(250, 17, 'Dharwad'),
(251, 17, 'Dakshina Kannada'),
(252, 17, 'Gadag'),
(253, 17, 'Gulbarga'),
(254, 17, 'Hassa'),
(255, 17, 'Haveri'),
(256, 17, 'Kodagu'),
(257, 17, 'Kolar'),
(258, 17, 'Koppal'),
(259, 17, 'Mandya'),
(260, 17, 'Mysore'),
(261, 17, 'Raichur'),
(262, 17, 'Shimoga'),
(263, 17, 'Tumkur'),
(264, 17, 'Udupi'),
(265, 17, 'Uttara Kannada'),
(266, 17, 'Ramanagara'),
(267, 17, 'Yadgir'),
(268, 18, 'Alappuzha'),
(269, 18, 'Ernakulam'),
(270, 18, 'Idukki'),
(271, 18, 'Kannur'),
(272, 18, 'Kasaragod'),
(273, 18, 'Kollam'),
(274, 18, 'Kottayam'),
(275, 18, 'Kozhikode'),
(276, 18, 'Malappuram'),
(277, 18, 'Palakkad'),
(278, 18, 'Pathanamthitta'),
(279, 18, 'Thrissur'),
(280, 18, 'Thiruvananthapuram'),
(281, 18, 'Wayanad'),
(282, 19, 'Lakshadweep'),
(283, 20, 'Agar'),
(284, 20, 'Alirajpur'),
(285, 20, 'Anuppur'),
(286, 20, 'Ashok Nagar'),
(287, 20, 'Balaghat'),
(288, 20, 'Barwani'),
(289, 20, 'Betul'),
(290, 20, 'Bhind'),
(291, 20, 'Bhopal'),
(292, 20, 'Burhanpur'),
(293, 20, 'Chhatarpur'),
(294, 20, 'Chhindwara'),
(295, 20, 'Damoh'),
(296, 20, 'Datia'),
(297, 20, 'Dewas'),
(298, 20, 'Dhar'),
(299, 20, 'Dindori'),
(300, 20, 'Guna'),
(301, 20, 'Gwalior'),
(302, 20, 'Harda'),
(303, 20, 'Hoshangabad'),
(304, 20, 'Indore'),
(305, 20, 'Jabalpur'),
(306, 20, 'Jhabua'),
(307, 20, 'Katni'),
(308, 20, 'Khandwa (East Nimar);'),
(309, 20, 'Khargone (West Nimar);'),
(310, 20, 'Mandla'),
(311, 20, 'Mandsaur'),
(312, 20, 'Morena'),
(313, 20, 'Narsinghpur'),
(314, 20, 'Neemuch'),
(315, 20, 'Panna'),
(316, 20, 'Raise'),
(317, 20, 'Rajgarh'),
(318, 20, 'Ratlam'),
(319, 20, 'Rewa'),
(320, 20, 'Sagar'),
(321, 20, 'Satna'),
(322, 20, 'Sehore'),
(323, 20, 'Seoni'),
(324, 20, 'Shahdol'),
(325, 20, 'Shajapur'),
(326, 20, 'Sheopur'),
(327, 20, 'Shivpuri'),
(328, 20, 'Sidhi'),
(329, 20, 'Singrauli'),
(330, 20, 'Tikamgarh'),
(331, 20, 'Ujjai'),
(332, 20, 'Umaria'),
(333, 20, 'Vidisha'),
(334, 21, 'Ahmednagar'),
(335, 21, 'Akola'),
(336, 21, 'Amravati'),
(337, 21, 'Aurangabad'),
(338, 21, 'Beed'),
(339, 21, 'Bhandara'),
(340, 21, 'Buldhana'),
(341, 21, 'Chandrapur'),
(342, 21, 'Dhule'),
(343, 21, 'Gadchiroli'),
(344, 21, 'Gondia'),
(345, 21, 'Hingoli'),
(346, 21, 'Jalgao'),
(347, 21, 'Jalna'),
(348, 21, 'Kolhapur'),
(349, 21, 'Latur'),
(350, 21, 'Mumbai City'),
(351, 21, 'Mumbai suburba'),
(352, 21, 'Nanded'),
(353, 21, 'Nandurbar'),
(354, 21, 'Nagpur'),
(355, 21, 'Nashik'),
(356, 21, 'Osmanabad'),
(357, 21, 'Parbhani'),
(358, 21, 'Pune'),
(359, 21, 'Raigad'),
(360, 21, 'Ratnagiri'),
(361, 21, 'Sangli'),
(362, 21, 'Satara'),
(363, 21, 'Sindhudurg'),
(364, 21, 'Solapur'),
(365, 21, 'Thane'),
(366, 21, 'Wardha'),
(367, 21, 'Washim'),
(368, 21, 'Yavatmal'),
(369, 22, 'Bishnupur'),
(370, 22, 'Churachandpur'),
(371, 22, 'Chandel'),
(372, 22, 'Imphal East'),
(373, 22, 'Senapati'),
(374, 22, 'Tamenglong'),
(375, 22, 'Thoubal'),
(376, 22, 'Ukhrul'),
(377, 22, 'Imphal West'),
(378, 23, 'East Garo Hills'),
(379, 23, 'East Khasi Hills'),
(380, 23, 'Jaintia Hills'),
(381, 23, 'Ri Bhoi'),
(382, 23, 'South Garo Hills'),
(383, 23, 'West Garo Hills'),
(384, 23, 'West Khasi Hills'),
(385, 24, 'Aizawl'),
(386, 24, 'Champhai'),
(387, 24, 'Kolasib'),
(388, 24, 'Lawngtlai'),
(389, 24, 'Lunglei'),
(390, 24, 'Mamit'),
(391, 24, 'Saiha'),
(392, 24, 'Serchhip'),
(393, 25, 'Dimapur'),
(394, 25, 'Kiphire'),
(395, 25, 'Kohima'),
(396, 25, 'Longleng'),
(397, 25, 'Mokokchung'),
(398, 25, 'Mo'),
(399, 25, 'Pere'),
(400, 25, 'Phek'),
(401, 25, 'Tuensang'),
(402, 25, 'Wokha'),
(403, 25, 'Zunheboto'),
(404, 26, 'Angul'),
(405, 26, 'Boudh (Bauda);'),
(406, 26, 'Bhadrak'),
(407, 26, 'Balangir'),
(408, 26, 'Bargarh (Baragarh);'),
(409, 26, 'Balasore'),
(410, 26, 'Cuttack'),
(411, 26, 'Debagarh (Deogarh);'),
(412, 26, 'Dhenkanal'),
(413, 26, 'Ganjam'),
(414, 26, 'Gajapati'),
(415, 26, 'Jharsuguda'),
(416, 26, 'Jajpur'),
(417, 26, 'Jagatsinghpur'),
(418, 26, 'Khordha'),
(419, 26, 'Kendujhar (Keonjhar);'),
(420, 26, 'Kalahandi'),
(421, 26, 'Kandhamal'),
(422, 26, 'Koraput'),
(423, 26, 'Kendrapara'),
(424, 26, 'Malkangiri'),
(425, 26, 'Mayurbhanj'),
(426, 26, 'Nabarangpur'),
(427, 26, 'Nuapada'),
(428, 26, 'Nayagarh'),
(429, 26, 'Puri'),
(430, 26, 'Rayagada'),
(431, 26, 'Sambalpur'),
(432, 26, 'Subarnapur (Sonepur);'),
(433, 26, 'Sundergarh'),
(434, 27, 'Karaikal'),
(435, 27, 'Mahe'),
(436, 27, 'Pondicherry'),
(437, 27, 'Yanam'),
(438, 28, 'Amritsar'),
(439, 28, 'Barnala'),
(440, 28, 'Bathinda'),
(441, 28, 'Firozpur'),
(442, 28, 'Faridkot'),
(443, 28, 'Fatehgarh Sahib'),
(444, 28, 'Fazilka'),
(445, 28, 'Gurdaspur'),
(446, 28, 'Hoshiarpur'),
(447, 28, 'Jalandhar'),
(448, 28, 'Kapurthala'),
(449, 28, 'Ludhiana'),
(450, 28, 'Mansa'),
(451, 28, 'Moga'),
(452, 28, 'Sri Muktsar Sahib'),
(453, 28, 'Pathankot'),
(454, 28, 'Patiala'),
(455, 28, 'Rupnagar'),
(456, 28, 'Ajitgarh (Mohali);'),
(457, 28, 'Sangrur'),
(458, 28, 'Shahid Bhagat Singh Nagar'),
(459, 28, 'Tarn Tara'),
(460, 29, 'Ajmer'),
(461, 29, 'Alwar'),
(462, 29, 'Bikaner'),
(463, 29, 'Barmer'),
(464, 29, 'Banswara'),
(465, 29, 'Bharatpur'),
(466, 29, 'Bara'),
(467, 29, 'Bundi'),
(468, 29, 'Bhilwara'),
(469, 29, 'Churu'),
(470, 29, 'Chittorgarh'),
(471, 29, 'Dausa'),
(472, 29, 'Dholpur'),
(473, 29, 'Dungapur'),
(474, 29, 'Ganganagar'),
(475, 29, 'Hanumangarh'),
(476, 29, 'Jhunjhunu'),
(477, 29, 'Jalore'),
(478, 29, 'Jodhpur'),
(479, 29, 'Jaipur'),
(480, 29, 'Jaisalmer'),
(481, 29, 'Jhalawar'),
(482, 29, 'Karauli'),
(483, 29, 'Kota'),
(484, 29, 'Nagaur'),
(485, 29, 'Pali'),
(486, 29, 'Pratapgarh'),
(487, 29, 'Rajsamand'),
(488, 29, 'Sikar'),
(489, 29, 'Sawai Madhopur'),
(490, 29, 'Sirohi'),
(491, 29, 'Tonk'),
(492, 29, 'Udaipur'),
(493, 30, 'East Sikkim'),
(494, 30, 'North Sikkim'),
(495, 30, 'South Sikkim'),
(496, 30, 'West Sikkim'),
(497, 31, 'Ariyalur'),
(498, 31, 'Chennai'),
(499, 31, 'Coimbatore'),
(500, 31, 'Cuddalore'),
(501, 31, 'Dharmapuri'),
(502, 31, 'Dindigul'),
(503, 31, 'Erode'),
(504, 31, 'Kanchipuram'),
(505, 31, 'Kanyakumari'),
(506, 31, 'Karur'),
(507, 31, 'Krishnagiri'),
(508, 31, 'Madurai'),
(509, 31, 'Nagapattinam'),
(510, 31, 'Nilgiris'),
(511, 31, 'Namakkal'),
(512, 31, 'Perambalur'),
(513, 31, 'Pudukkottai'),
(514, 31, 'Ramanathapuram'),
(515, 31, 'Salem'),
(516, 31, 'Sivaganga'),
(517, 31, 'Tirupur'),
(518, 31, 'Tiruchirappalli'),
(519, 31, 'Theni'),
(520, 31, 'Tirunelveli'),
(521, 31, 'Thanjavur'),
(522, 31, 'Thoothukudi'),
(523, 31, 'Tiruvallur'),
(524, 31, 'Tiruvarur'),
(525, 31, 'Tiruvannamalai'),
(526, 31, 'Vellore'),
(527, 31, 'Viluppuram'),
(528, 31, 'Virudhunagar'),
(529, 32, 'Adilabad'),
(530, 32, 'Hyderabad'),
(531, 32, 'Karimnagar'),
(532, 32, 'Khammam'),
(533, 32, 'Mahbubnagar'),
(534, 32, 'Medak'),
(535, 32, 'Nalgonda'),
(536, 32, 'Nizamabad'),
(537, 32, 'Ranga Reddy'),
(538, 32, 'Warangal'),
(539, 33, 'Dhalai'),
(540, 33, 'North Tripura'),
(541, 33, 'South Tripura'),
(542, 33, 'Khowai'),
(543, 33, 'West Tripura'),
(544, 35, 'Agra'),
(545, 35, 'Aligarh'),
(546, 35, 'Allahabad'),
(547, 35, 'Ambedkar Nagar'),
(548, 35, 'Auraiya'),
(549, 35, 'Azamgarh'),
(550, 35, 'Bagpat'),
(551, 35, 'Bahraich'),
(552, 35, 'Ballia'),
(553, 35, 'Balrampur'),
(554, 35, 'Banda'),
(555, 35, 'Barabanki'),
(556, 35, 'Bareilly'),
(557, 35, 'Basti'),
(558, 35, 'Bijnor'),
(559, 35, 'Budau'),
(560, 35, 'Bulandshahr'),
(561, 35, 'Chandauli'),
(562, 35, 'Amethi (Chhatrapati Shahuji Maharaj Nagar)'),
(563, 35, 'Chitrakoot'),
(564, 35, 'Deoria'),
(565, 35, 'Etah'),
(566, 35, 'Etawah'),
(567, 35, 'Faizabad'),
(568, 35, 'Farrukhabad'),
(569, 35, 'Fatehpur'),
(570, 35, 'Firozabad'),
(571, 35, 'Gautam Buddh Nagar'),
(572, 35, 'Ghaziabad'),
(573, 35, 'Ghazipur'),
(574, 35, 'Gonda'),
(575, 35, 'Gorakhpur'),
(576, 35, 'Hamirpur'),
(577, 35, 'Hardoi'),
(578, 35, 'Hathras (Mahamaya Nagar);'),
(579, 35, 'Jalau'),
(580, 35, 'Jaunpur'),
(581, 35, 'Jhansi'),
(582, 35, 'Jyotiba Phule Nagar'),
(583, 35, 'Kannauj'),
(584, 35, 'Kanpur Dehat (Ramabai Nagar);'),
(585, 35, 'Kanpur Nagar'),
(586, 35, 'Kanshi Ram Nagar'),
(587, 35, 'Kaushambi'),
(588, 35, 'Kushinagar'),
(589, 35, 'Lakhimpur Kheri'),
(590, 35, 'Lalitpur'),
(591, 35, 'Lucknow'),
(592, 35, 'Maharajganj'),
(593, 35, 'Mahoba'),
(594, 35, 'Mainpuri'),
(595, 35, 'Mathura'),
(596, 35, 'Mau'),
(597, 35, 'Meerut'),
(598, 35, 'Mirzapur'),
(599, 35, 'Moradabad'),
(600, 35, 'Muzaffarnagar'),
(601, 35, 'Panchsheel Nagar (Hapur);'),
(602, 35, 'Pilibhit'),
(603, 35, 'Pratapgarh'),
(604, 35, 'Raebareli'),
(605, 35, 'Rampur'),
(606, 35, 'Saharanpur'),
(607, 35, 'Sambhal(Bheem Nagar);'),
(608, 35, 'Sant Kabir Nagar'),
(609, 35, 'Sant Ravidas Nagar'),
(610, 35, 'Shahjahanpur'),
(611, 35, 'Shamli'),
(612, 35, 'Shravasti'),
(613, 35, 'Siddharthnagar'),
(614, 35, 'Sitapur'),
(615, 35, 'Sonbhadra'),
(616, 35, 'Sultanpur'),
(617, 35, 'Unnao'),
(618, 35, 'Varanasi'),
(619, 34, 'Almora'),
(620, 34, 'Bageshwar'),
(621, 34, 'Chamoli'),
(622, 34, 'Champawat'),
(623, 34, 'Dehradu'),
(624, 34, 'Haridwar'),
(625, 34, 'Nainital'),
(626, 34, 'Pauri Garhwal'),
(627, 34, 'Pithoragarh'),
(628, 34, 'Rudraprayag'),
(629, 34, 'Tehri Garhwal'),
(630, 34, 'Udham Singh Nagar'),
(631, 34, 'Uttarkashi'),
(632, 36, 'Bankura'),
(633, 36, 'Bardhama'),
(634, 36, 'Birbhum'),
(635, 36, 'Cooch Behar'),
(636, 36, 'Dakshin Dinajpur'),
(637, 36, 'Darjeeling'),
(638, 36, 'Hooghly'),
(639, 36, 'Howrah'),
(640, 36, 'Jalpaiguri'),
(641, 36, 'Kolkata'),
(642, 36, 'Maldah'),
(643, 36, 'Murshidabad'),
(644, 36, 'Nadia'),
(645, 36, 'North 24 Parganas'),
(646, 36, 'Paschim Medinipur'),
(647, 36, 'Purba Medinipur'),
(648, 36, 'Purulia'),
(649, 36, 'South 24 Parganas'),
(650, 36, 'Uttar Dinajpur');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE IF NOT EXISTS `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `brand` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `shop_id` varchar(25) NOT NULL,
  `st` int(11) NOT NULL,
  `ph` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `lat`, `lon`, `brand`, `date`, `time`, `shop_id`, `st`, `ph`) VALUES
(21, 8.49393, 76.9477, 'bmw', '2017-11-18', '12:11:00', 'manu123', 1, '9032134567'),
(22, 8.49393, 76.9477, 'bmw', '2017-11-18', '12:11:00', 'BM123', 2, '9032134567'),
(23, 8.49286, 76.9503, 'bmw', '2017-11-18', '01:11:00', 'manu123', 2, '9874563210'),
(24, 8.49286, 76.9503, 'bmw', '2017-11-18', '01:11:00', 'BM123', 2, '9874563210'),
(25, 8.50567, 76.9553, 'bmw', '2017-11-18', '01:11:00', 'manu123', 2, '9874563210'),
(26, 8.50567, 76.9553, 'bmw', '2017-11-18', '01:11:00', 'BM123', 2, '9874563210'),
(27, 8.50236, 76.9402, 'bmw', '2017-11-18', '01:11:00', 'manu123', 1, '987456.3210'),
(28, 8.50236, 76.9402, 'bmw', '2017-11-18', '01:11:00', 'BM123', 2, '987456.3210'),
(29, 8.50547, 76.9513, 'bmw', '2017-11-18', '01:11:00', 'manu123', 0, '98745633210'),
(30, 8.50547, 76.9513, 'bmw', '2017-11-18', '01:11:00', 'BM123', 0, '98745633210'),
(31, 8.49766, 76.9519, 'BMW', '2018-05-30', '09:05:00', 'manu123', 0, '9037542464'),
(32, 8.49766, 76.9519, 'BMW', '2018-05-30', '09:05:00', 'BM123', 0, '9037542464'),
(33, 8.49889, 76.9473, 'Yamaha', '2018-05-30', '09:05:00', 'yaa123', 0, '9037542464'),
(34, 8.51095, 76.9502, 'Yamaha', '2018-05-30', '09:05:00', 'yaa123', 0, '8529637410'),
(35, 8.49932, 76.9521, 'Audi', '2018-06-02', '09:06:00', 'tytyt123', 1, '9874563210'),
(36, 8.49911, 76.9462, 'bmw', '2018-06-23', '09:06:00', 'manu123', 0, '9874563210'),
(37, 8.49911, 76.9462, 'bmw', '2018-06-23', '09:06:00', 'BM123', 0, '9874563210'),
(38, 8.49639, 76.9443, 'BMW', '2018-11-23', '02:11:00', 'manu123', 0, '7894562135'),
(39, 8.49639, 76.9443, 'BMW', '2018-11-23', '02:11:00', 'BM123', 0, '7894562135');

-- --------------------------------------------------------

--
-- Table structure for table `local`
--

CREATE TABLE IF NOT EXISTS `local` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onme` varchar(250) NOT NULL,
  `lid` varchar(50) NOT NULL,
  `addr` varchar(250) NOT NULL,
  `con` varchar(15) NOT NULL,
  `em` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `ot` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lon` varchar(50) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `local`
--

INSERT INTO `local` (`id`, `onme`, `lid`, `addr`, `con`, `em`, `logo`, `ot`, `lat`, `lon`, `st`) VALUES
(1, 'Auto insight', 'auto123', 'Radheyam Tower, Pulimood, Thiruvananthapuram, Kerala 695001', '9874563215', 'carolinmathewsarackal@gmail.com', 'auto123.jpg', 'local', '8.493339207437865', '76.95307686924934', 1);

-- --------------------------------------------------------

--
-- Table structure for table `l_help`
--

CREATE TABLE IF NOT EXISTS `l_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `la` float NOT NULL,
  `lo` float NOT NULL,
  `uid` varchar(150) NOT NULL,
  `unme` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `typ` varchar(150) NOT NULL,
  `service_id` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `l_help`
--

INSERT INTO `l_help` (`id`, `la`, `lo`, `uid`, `unme`, `contact`, `typ`, `service_id`, `date`, `st`) VALUES
(1, 8.49703, 76.9495, 'patel123', 'Vishnu Patel', '9876543210', 'Home Repair', 'auto123', '2018-11-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `org_data`
--

CREATE TABLE IF NOT EXISTS `org_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onme` varchar(250) NOT NULL,
  `lid` varchar(50) NOT NULL,
  `addr` varchar(250) NOT NULL,
  `con` varchar(15) NOT NULL,
  `em` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `ot` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lon` varchar(50) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `org_data`
--

INSERT INTO `org_data` (`id`, `onme`, `lid`, `addr`, `con`, `em`, `logo`, `ot`, `lat`, `lon`, `st`) VALUES
(7, 'SL Parking Buliding', 'sl123', 'Kunnumpuram Road, Near Ayurveda College, Thiruvananthapuram, Kerala 695001', '968754163', 'sl@gmail.com', 'sl123.jpg', '4', '8.496184317740498', '76.94796323776245', 1),
(20, 'Kr Parking', 'kr123', 'klnkknlknlknlknlknl', '9876543210', 'patel.vishnu16@gmailcom', 'kr123.jpg', '4', '8.49917132925042', '76.94593146443367', 0);

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

CREATE TABLE IF NOT EXISTS `park` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plot` varchar(150) NOT NULL,
  `ty` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `addr` text NOT NULL,
  `la` float NOT NULL,
  `lo` float NOT NULL,
  `park_id` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`id`, `plot`, `ty`, `name`, `addr`, `la`, `lo`, `park_id`, `st`) VALUES
(1, '20', '2-Wheeler', 'SL Parking Buliding', 'Kunnumpuram Road, Near Ayurveda College, Thiruvananthapuram, Kerala 695001', 8.49618, 76.948, 'sl123', 0),
(2, '10', '4-Wheeler', 'SL Parking Buliding', 'Kunnumpuram Road, Near Ayurveda College, Thiruvananthapuram, Kerala 695001', 8.49618, 76.948, 'sl123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `park_add`
--

CREATE TABLE IF NOT EXISTS `park_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_nme` varchar(150) NOT NULL,
  `ty` varchar(150) NOT NULL,
  `lic` varchar(150) NOT NULL,
  `d_nme` varchar(150) NOT NULL,
  `addr` text NOT NULL,
  `pid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  `tm` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `park_add`
--

INSERT INTO `park_add` (`id`, `v_nme`, `ty`, `lic`, `d_nme`, `addr`, `pid`, `st`, `tm`) VALUES
(1, 'BMW', '4-Wheeler', 'KL-16-L-1551', 'AJAY ', 'VSVDSVSVSDSDVDSVD', 'sl123', 3, '11:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `park_req`
--

CREATE TABLE IF NOT EXISTS `park_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `brand` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `contact_person` varchar(25) NOT NULL,
  `contact2` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `utype` varchar(25) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `company_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `brand`, `state`, `district`, `address`, `landmark`, `contact`, `contact_person`, `contact2`, `lat`, `lon`, `email`, `username`, `password`, `utype`, `photo`, `company_id`) VALUES
(26, '', '', '', '', '', '', '', '', '', 0, 0, '', 'admin', 'admin', 'admin', '', ''),
(34, 'AUDI', '', '11', 'North Goa', 'Door No: 001, QRS Mall Sqaure Opposite Raymond Showroom<br />\r\n MG RoadThiruvananthapuram<br />\r\nKerala 695001', '', '9638527410', '', '', 0, 0, '', 'audi123', '123', 'company', '34.jpg', ''),
(35, 'Benz', '', '13', 'Mewat', 'Door No: 001, QRS Mall Sqaure<br />\r\n Opposite Raymond Showroom<br />\r\nMG Road, Thiruvananthapuram<br />\r\n Kerala 695001', '', '9876543210', '', '', 0, 0, '', 'benz123', '123', 'company', '35.jpg', ''),
(36, 'BMW ', '', '12', 'Junagadh', 'Door No: 001, QRS Mall Sqaure<br />\r\nOpposite Raymond Showroom, MG Road<br />\r\n Thiruvananthapuram<br />\r\nKerala 695001', '', '9638527410', '', '', 0, 0, '', 'bmw123', '123', 'company', '36.jpg', ''),
(38, 'BMW Service ', 'BMW', '18', 'Thiruvananthapuram', 'Door No: 001, QRS Mall Sqaure<br />\r\n Opposite Raymond Showroom<br />\r\nMG Road, Thiruvananthapuram<br />\r\nKerala 695001', 'Trinity Technologies', '9638527410', 'Arjun SS', '9638527410', 8.49366, 76.9478, 'arjun@gmail.com', 'BM123', '123', 'staff', '38.jpg', 'bmw123'),
(40, 'Audi Service Station', 'AUDI', '18', 'Ernakulam', 'Door No: 001, QRS Mall Sqaure<br />\r\nOpposite Raymond Showroom<br />\r\nMG Road, Thiruvananthapuram<br />\r\nKerala 695001', 'Lulu Mall', '9638527412', 'patel', '7896541230', 9.97996, 76.3157, 'patel@gmail.com', 'patel123', '123', 'staff', '39.jpg', 'audi123'),
(41, 'Benz Service Center', 'Benz', '13', 'Kaithal', 'Door No: 001, QRS Mall Sqaure  Opposite Raymond Showroom MG Road  Thiruvananthapuram Kerala 695001', 'Trinity Technologies', '99652452111', 'arun s', '7896541230', 8.49363, 76.9477, 'arun@gmail.com', 'arun123', '123', 'staff', '41.jpg', 'benz123'),
(42, 'Audi Service Station', 'AUDI', '8', 'Dadra and Nagar Haveli', 'bhjbhjbhjbjhbjh<br />\r\ndsv<br />\r\nsd<br />\r\nv<br />\r\nsd', 'vggvghvghvhgvgh', '45454545454', 'ghvghvghvghv', '45454545', 8.49382, 76.9478, 'pbhjbjhb', 'tytyt123', '123', 'staff', '42.jpeg', 'audi123'),
(43, 'BMW Service ', 'BMW', '18', 'Thiruvananthapuram', 'Radheyam Tower,<br />\r\n Pulimood, Thiruvananthapuram<br />\r\n, Kerala 695001', 'Trinity Technologies', '9638527412', 'Arjun', '9638527412', 8.49381, 76.9479, 'manu@gmail.com', 'manu123', '123', 'staff', '43.jpg', 'bmw123'),
(44, 'Yamaha', '', '18', 'Ernakulam', 'kjshjhkjfhkwef<br />\r\nfiuhweuifhweiufh<br />\r\nfowehfiuwehfiu<br />\r\nfoiwehfiuhweif', '', '9638527415', '', '', 0, 0, '', 'ya123', '123', 'company', '44.jpg', ''),
(45, 'Yamaha Service Station', 'Yamaha', '18', 'Alappuzha', 'iuhsfhehfjlkef<br />\r\nfuwhiufhwiufhw<br />\r\n''wfhweufhwej', 'Bout House', '96555151515151515151', 'Mr hari', '96638455454', 9.49173, 76.3394, 'Ya@gmail.com', 'yy123', '123', 'staff', '45.jpg', 'ya123'),
(46, 'Yamaha service', 'Yamaha', '18', 'Thiruvananthapuram', 'ghhghgfhgfhgfhgf', 'Trinity', '7894563210', 'Arun M', '9876543210', 8.49486, 76.948, 'yaa@gmail.com', 'yaa123', '123', 'staff', '46.jpg', 'ya123'),
(47, 'Maruthi', '', '18', 'Wayanad', 'vxsjxjsvjvsxjv', '', '9876543210', '', '', 0, 0, '', 'ma123', '123', 'company', '47.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_van`
--

CREATE TABLE IF NOT EXISTS `r_van` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `con` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `r_van`
--

INSERT INTO `r_van` (`id`, `con`, `uid`) VALUES
(1, 'Not Available', 'manu123'),
(2, 'Available', 'yaa123'),
(3, 'Available', 'yy123'),
(8, 'Available', 'BM123'),
(9, 'Available', 'patel123'),
(10, 'Available', 'arun123'),
(11, 'Not Available', 'tytyt123');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `StCode` int(11) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`StCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StCode`, `StateName`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `s_book`
--

CREATE TABLE IF NOT EXISTS `s_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `cnme` varchar(150) NOT NULL,
  `lin` varchar(150) NOT NULL,
  `abt` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `unme` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `s_book`
--

INSERT INTO `s_book` (`id`, `date`, `cnme`, `lin`, `abt`, `uid`, `unme`, `sid`, `st`) VALUES
(11, '2018-11-12', 'BMW M3', 'kl-15-1881', 'Need to change oil and Regular Service', 'patel123', 'Vishnu Patel', 'manu123', 2),
(12, '2018-11-28', 'BMW M10', 'kl 12k 1551', 'Engine problem check and normal servic', 'patel123', 'Vishnu Patel', 'manu123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_help`
--

CREATE TABLE IF NOT EXISTS `s_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `la` float NOT NULL,
  `lo` float NOT NULL,
  `uid` varchar(150) NOT NULL,
  `unme` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `typ` varchar(150) NOT NULL,
  `service_id` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `s_help`
--

INSERT INTO `s_help` (`id`, `la`, `lo`, `uid`, `unme`, `contact`, `typ`, `service_id`, `date`, `st`) VALUES
(3, 8.49809, 76.9441, 'patel123', 'Vishnu Patel', '9876543210', 'Periodic Repair', 'manu123', '2018-11-24', 2),
(4, 8.49635, 76.9482, 'patel123', 'Vishnu Patel', '9876543210', 'Periodic Repair', 'manu123', '2018-11-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `lid` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `con` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `nme`, `lid`, `pass`, `addr`, `con`, `em`, `st`) VALUES
(1, 'Vishnu Patel', 'patel123', '123', 'jbhjbjbhjbhjb', '9876543210', 'patel.vishnu16@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `pas` varchar(50) NOT NULL,
  `typ` varchar(50) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `uid`, `pas`, `typ`, `st`) VALUES
(10, 'sl123', '123', '4', 1),
(31, 'kr123', '123', '4', 0),
(32, 'patel123', '123', 'usr', 1),
(33, 'auto123', '123', 'local', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
