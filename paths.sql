-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2017 at 08:54 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmmumobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `path_id` bigint(255) NOT NULL,
  `destination_location_id` bigint(255) NOT NULL,
  `departure_location_id` bigint(255) NOT NULL,
  `distance` double DEFAULT NULL,
  `path_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paths`
--

INSERT INTO `paths` (`path_id`, `destination_location_id`, `departure_location_id`, `distance`, `path_type`) VALUES
(1, 104, 103, 25.24, 2),
(2, 103, 102, 21.79, 2),
(3, 102, 101, 15.61, 2),
(6, 130, 198, 24.08, 2),
(7, 109, 198, 25.44, 2),
(8, 168, 109, 16.2, 2),
(9, 53, 168, 32.49, 2),
(10, 52, 53, 18.06, 2),
(11, 51, 52, 20.86, 2),
(12, 49, 52, 70.71, 2),
(13, 169, 53, 19.59, 2),
(14, 129, 169, 12.44, 2),
(15, 129, 169, 12.44, 2),
(16, 54, 169, 68.78, 2),
(17, 54, 129, 63.21, 2),
(18, 59, 54, 44.76, 2),
(19, 55, 54, 49.3, 2),
(20, 55, 59, 18.54, 2),
(21, 49, 59, 53.15, 2),
(22, 169, 59, 110.72, 2),
(23, 129, 59, 106.89, 2),
(24, 54, 60, 18.88, 2),
(25, 128, 129, 53.86, 2),
(26, 126, 109, 30.88, 2),
(27, 108, 126, 23.11, 2),
(28, 107, 108, 12.96, 2),
(29, 105, 107, 16.08, 2),
(30, 104, 105, 25.66, 2),
(31, 106, 104, 18.05, 2),
(32, 106, 105, 17.85, 2),
(33, 38, 106, 43.11, 2),
(34, 39, 38, 42.91, 2),
(35, 40, 39, 24.13, 2),
(36, 37, 38, 37.88, 2),
(37, 200, 199, 19.94, 2),
(38, 199, 38, 19.87, 2),
(39, 106, 199, 24.14, 2),
(40, 37, 200, 21.36, 2),
(41, 38, 200, 18.19, 2),
(42, 106, 39, 64.32, 2),
(43, 125, 106, 45.64, 2),
(44, 125, 107, 31.81, 2),
(45, 35, 37, 29.94, 2),
(46, 34, 37, 43.36, 2),
(47, 34, 35, 20.59, 2),
(48, 32, 34, 32.8, 2),
(49, 33, 32, 37.83, 2),
(50, 36, 33, 11.3, 2),
(51, 30, 36, 69.82, 2),
(52, 31, 32, 74.13, 2),
(53, 28, 31, 59.42, 2),
(54, 29, 28, 28.5, 2),
(55, 27, 28, 21.13, 2),
(56, 26, 30, 129.46, 2),
(57, 25, 27, 45.55, 2),
(58, 25, 26, 25.93, 2),
(59, 35, 29, 124.01, 2),
(60, 34, 29, 112.76, 2),
(61, 37, 29, 114.2, 2),
(62, 23, 25, 47.09, 2),
(63, 22, 26, 70.64, 2),
(64, 21, 22, 33.97, 2),
(65, 18, 23, 94.85, 2),
(66, 20, 21, 10.14, 2),
(67, 20, 19, 28.04, 2),
(68, 18, 19, 12.6, 2),
(69, 24, 19, 17.35, 2),
(70, 15, 24, 17.64, 2),
(71, 16, 15, 7.92, 2),
(72, 14, 15, 9.82, 2),
(73, 13, 14, 10.97, 2),
(74, 13, 18, 42.66, 2),
(75, 17, 16, 25.03, 2),
(76, 12, 17, 114, 2),
(77, 8, 13, 253.5, 2),
(78, 9, 10, 69.01, 2),
(79, 12, 10, 52.8, 2),
(80, 11, 10, 23.76, 2),
(81, 8, 9, 20.04, 2),
(82, 7, 8, 29.61, 2),
(83, 6, 7, 158.75, 2),
(84, 5, 9, 250.02, 2),
(85, 3, 6, 42.89, 2),
(86, 4, 3, 18.55, 2),
(87, 2, 4, 52.54, 2),
(88, 4, 5, 18.3, 2),
(89, 1, 2, 186.53, 2),
(90, 201, 18, 50.47, 2),
(91, 23, 201, 46.18, 2),
(92, 92, 202, 11.07, 2),
(93, 91, 202, 66.52, 2),
(94, 201, 202, 284.64, 2),
(95, 93, 92, 12.43, 2),
(96, 94, 93, 58.79, 2),
(97, 95, 94, 87.4, 2),
(98, 96, 95, 60.14, 2),
(99, 98, 96, 45.99, 2),
(100, 88, 91, 114.35, 2),
(101, 89, 88, 87.96, 2),
(102, 89, 90, 152.3, 2),
(103, 81, 91, 311.93, 2),
(104, 80, 81, 101.21, 2),
(105, 79, 80, 123.12, 2),
(106, 78, 79, 163.77, 2),
(107, 77, 78, 27.04, 2),
(108, 77, 71, 78.28, 2),
(109, 78, 71, 85.78, 2),
(110, 74, 75, 45.28, 2),
(111, 71, 74, 92.91, 2),
(112, 76, 75, 49.22, 2),
(113, 72, 71, 42.52, 2),
(114, 73, 72, 58.12, 2),
(115, 70, 73, 52.69, 2),
(116, 69, 70, 119.21, 2),
(117, 65, 69, 110.45, 2),
(118, 61, 65, 62.1, 2),
(119, 64, 61, 13.85, 2),
(120, 62, 64, 21.98, 2),
(121, 63, 62, 22.81, 2),
(122, 60, 63, 18.02, 2),
(123, 110, 60, 29.7, 2),
(124, 111, 110, 35.11, 2),
(125, 112, 111, 29.17, 2),
(126, 113, 112, 35.91, 2),
(127, 114, 113, 32.4, 2),
(128, 115, 114, 31.28, 2),
(129, 116, 115, 20.57, 2),
(130, 117, 116, 30.36, 2),
(131, 119, 116, 22.75, 2),
(132, 118, 119, 53.1, 2),
(133, 118, 117, 32.98, 2),
(134, 120, 119, 22.77, 2),
(135, 121, 120, 54.93, 2),
(136, 122, 120, 49.47, 2),
(137, 178, 176, 49.29, 2),
(138, 189, 176, 75.66, 2),
(139, 179, 176, 92.81, 2),
(140, 179, 178, 59.44, 2),
(141, 189, 178, 57.17, 2),
(142, 179, 189, 26.94, 2),
(143, 174, 176, 26.87, 2),
(144, 189, 174, 100.5, 2),
(145, 178, 174, 61.9, 2),
(146, 179, 174, 114.63, 2),
(147, 204, 179, 29.29, 2),
(148, 180, 204, 33.22, 2),
(149, 204, 189, 45.72, 2),
(150, 176, 204, 119.54, 2),
(151, 185, 184, 13.64, 2),
(152, 183, 185, 31.5, 2),
(153, 182, 186, 25.17, 2),
(154, 183, 186, 43.23, 2),
(155, 187, 183, 19.58, 2),
(156, 188, 187, 55.94, 2),
(157, 172, 190, 71.81, 2),
(158, 171, 172, 54.9, 2),
(159, 205, 123, 32.38, 2),
(160, 124, 205, 25.41, 2),
(161, 194, 205, 9.6, 2),
(162, 124, 194, 27.79, 2),
(163, 123, 194, 30.72, 2),
(164, 124, 123, 57.34, 2),
(165, 43, 101, 37.59, 2),
(166, 44, 43, 54.14, 2),
(167, 45, 44, 40.3, 2),
(168, 46, 45, 17.51, 2),
(169, 47, 46, 43.01, 2),
(170, 48, 47, 14.51, 2),
(171, 49, 48, 30.18, 2),
(172, 50, 49, 27.94, 2),
(173, 131, 46, 61.19, 2),
(174, 68, 47, 64.67, 2),
(175, 68, 66, 27.81, 2),
(176, 67, 68, 12.94, 2),
(177, 139, 68, 19.37, 2),
(178, 142, 139, 19.24, 2),
(179, 141, 142, 12.84, 2),
(180, 140, 141, 27.78, 2),
(181, 143, 142, 38.57, 2),
(182, 137, 143, 27.97, 2),
(183, 137, 140, 20.98, 2),
(184, 136, 137, 65.1, 2),
(185, 134, 136, 16.1, 2),
(186, 132, 134, 33.44, 2),
(187, 138, 132, 19.82, 2),
(188, 140, 138, 21.79, 2),
(189, 206, 131, 17.59, 2),
(190, 133, 206, 11.23, 2),
(191, 206, 45, 71.49, 2),
(192, 132, 206, 48.67, 2),
(193, 144, 137, 34.14, 2),
(194, 135, 136, 42.94, 2),
(195, 135, 144, 39.29, 2),
(196, 146, 135, 15.74, 2),
(197, 147, 146, 41.18, 2),
(198, 145, 146, 21.68, 2),
(199, 149, 145, 31.59, 2),
(200, 150, 149, 22.82, 2),
(201, 148, 147, 26.7, 2),
(202, 148, 150, 49.22, 2),
(203, 151, 150, 48.43, 2),
(204, 153, 151, 16.07, 2),
(205, 152, 151, 12.37, 2),
(206, 155, 151, 11.71, 2),
(207, 154, 151, 14.45, 2),
(208, 155, 154, 16.16, 2),
(209, 157, 154, 31.83, 2),
(210, 156, 155, 33.57, 2),
(211, 158, 156, 20.19, 2),
(212, 159, 158, 17.83, 2),
(213, 160, 159, 5.77, 2),
(214, 161, 160, 7.14, 2),
(215, 162, 161, 30.16, 2),
(216, 165, 162, 10.45, 2),
(217, 164, 165, 9.24, 2),
(218, 163, 164, 15.62, 2),
(219, 157, 163, 18.03, 2),
(220, 156, 157, 17.55, 2),
(221, 167, 165, 19.71, 2),
(222, 166, 160, 34.79, 2),
(223, 131, 138, 52.46, 2),
(224, 131, 207, 21.82, 2),
(225, 132, 212, 15.15, 2),
(226, 212, 211, 23.33, 2),
(227, 212, 134, 20.14, 2),
(228, 210, 211, 38.99, 2),
(229, 209, 210, 29.4, 2),
(230, 208, 209, 35.73, 2),
(231, 206, 208, 46.54, 2),
(232, 45, 208, 25.63, 2),
(233, 32, 121, 147.55, 2),
(234, 175, 172, 38.36, 2),
(235, 173, 172, 26.93, 2),
(236, 173, 174, 73.43, 2),
(237, 170, 213, 90.53, 2),
(238, 123, 213, 22.23, 2),
(239, 173, 213, 73.45, 2),
(240, 197, 189, 28.04, 2),
(241, 190, 197, 46.85, 2),
(242, 97, 96, 39.06, 1),
(243, 99, 97, 41.59, 1),
(244, 100, 97, 31.17, 1),
(245, 99, 100, 32.58, 1),
(246, 42, 99, 65.27, 1),
(247, 45, 100, 68.23, 1),
(248, 40, 42, 38.07, 1),
(249, 41, 42, 36.76, 1),
(250, 43, 41, 61.04, 1),
(251, 40, 41, 26.62, 1),
(252, 82, 81, 33.47, 1),
(253, 83, 82, 45.4, 1),
(254, 84, 83, 101.32, 1),
(255, 85, 84, 64.34, 1),
(256, 87, 84, 74.04, 1),
(257, 88, 87, 147.96, 1),
(258, 86, 85, 82.7, 1),
(259, 89, 86, 85.15, 1),
(260, 90, 88, 216.03, 1),
(261, 95, 203, 152.6, 1),
(262, 92, 203, 50.94, 2),
(263, 201, 203, 234.47, 2),
(264, 127, 168, 42.59, 1),
(265, 127, 53, 52.13, 1),
(266, 127, 169, 56.49, 1),
(267, 51, 130, 36.84, 2),
(268, 43, 130, 32.51, 2),
(269, 103, 41, 38.99, 1),
(270, 198, 101, 15.51, 2),
(271, 216, 217, 54.21, 2),
(272, 214, 217, 34.22, 2),
(273, 215, 214, 61.21, 2),
(274, 204, 181, 6.16, 2),
(275, 195, 125, 23.89, 3),
(276, 194, 195, 29.65, 3),
(277, 193, 35, 15.08, 3),
(278, 192, 193, 35.85, 3),
(279, 124, 192, 25.07, 3),
(280, 195, 193, 51.15, 3),
(281, 125, 106, 45.64, 2),
(282, 98, 79, 410.58, 2),
(283, 218, 166, 28.24, 1),
(284, 78, 167, 36.59, 1),
(285, 218, 78, 48.25, 2),
(286, 79, 218, 116.09, 2),
(287, 219, 193, 15.28, 6),
(288, 220, 219, 13.36, 6),
(289, 221, 220, 12.74, 6),
(290, 222, 221, 42.53, 4),
(291, 223, 222, 14.15, 4),
(292, 190, 223, 59.98, 4),
(293, 171, 123, 20.97, 6),
(294, 176, 175, 30.44, 6),
(295, 177, 175, 24.22, 6),
(296, 205, 224, 20.95, 6),
(297, 32, 224, 74.33, 2),
(298, 121, 224, 73.26, 2),
(299, 214, 36, 32.14, 6),
(300, 215, 216, 36.9, 3),
(301, 189, 215, 22.79, 3),
(302, 179, 215, 36.31, 2),
(303, 197, 215, 24.87, 3),
(304, 182, 181, 30.33, 6),
(305, 226, 225, 38.99, 2),
(306, 227, 226, 45.85, 2),
(307, 178, 227, 36.49, 2),
(308, 174, 227, 27.1, 2),
(309, 176, 227, 29.29, 2),
(310, 189, 227, 84.13, 2),
(311, 179, 227, 93.45, 2),
(312, 229, 191, 5.640000000000001, 6),
(313, 223, 229, 2.84, 4),
(314, 228, 191, 5.64, 2),
(315, 32, 228, 37.08, 2),
(316, 228, 224, 38.28, 2),
(317, 230, 90, 99.11, 2),
(318, 231, 230, 110.24, 2),
(319, 232, 231, 79.39, 2),
(320, 234, 232, 140.96, 2),
(321, 233, 234, 73.87, 2),
(322, 1, 233, 264.01, 2),
(323, 237, 238, 98.01, 2),
(324, 237, 234, 52.65, 2),
(325, 239, 238, 170.69, 2),
(326, 235, 231, 36.72, 2),
(327, 236, 235, 34.47, 2),
(328, 237, 236, 84.78, 2),
(329, 286, 282, 6.33, 2),
(330, 288, 282, 7.01, 2),
(331, 287, 282, 10.33, 2),
(332, 287, 286, 5.36, 2),
(333, 287, 288, 6.54, 2),
(334, 289, 288, 9.07, 2),
(335, 289, 283, 12.98, 2),
(336, 295, 289, 8.76, 2),
(337, 294, 295, 4.8, 2),
(338, 293, 294, 6.63, 2),
(339, 293, 295, 10.33, 2),
(340, 293, 292, 4.25, 2),
(341, 290, 292, 6.69, 2),
(342, 293, 290, 3.79, 2),
(343, 291, 290, 6.69, 2),
(345, 285, 291, 14.85, 2),
(346, 285, 291, 14.85, 2),
(347, 281, 285, 9.5, 2),
(348, 286, 281, 7.74, 2),
(349, 284, 281, 9.73, 2),
(350, 284, 286, 5.54, 2),
(351, 285, 284, 2.3, 2),
(352, 296, 287, 6.43, 3),
(353, 292, 296, 6.1, 3),
(354, 294, 296, 5.9, 3),
(355, 297, 296, 3.86, 3),
(356, 298, 296, 3.59, 3),
(357, 298, 297, 1.07, 3),
(358, 299, 298, 4.59, 3),
(359, 246, 247, 32.17, 2),
(360, 248, 246, 41.26, 2),
(361, 245, 246, 87.01, 2),
(362, 188, 245, 74.41, 2),
(363, 243, 188, 126.33, 2),
(364, 241, 242, 129.38, 2),
(365, 301, 302, 58.11, 2),
(366, 300, 301, 38.83, 2),
(367, 259, 300, 38.95, 2),
(368, 261, 259, 21.5, 2),
(369, 265, 261, 9.9, 2),
(370, 266, 265, 24.17, 2),
(371, 260, 261, 27.27, 2),
(372, 267, 266, 45.11, 2),
(373, 264, 260, 17.18, 2),
(374, 267, 259, 92.01, 1),
(375, 276, 267, 7.15, 2),
(376, 268, 276, 55.63, 2),
(377, 266, 260, 11.66, 2),
(378, 262, 264, 40.21, 2),
(379, 263, 262, 14.76, 2),
(380, 258, 263, 38.46, 2),
(381, 252, 258, 23.43, 2),
(382, 270, 268, 12.97, 2),
(383, 271, 270, 10.38, 2),
(384, 272, 271, 9.87, 2),
(385, 269, 272, 17.87, 2),
(386, 273, 269, 66.98, 2),
(387, 274, 272, 67.03, 2),
(388, 275, 271, 66.01, 2),
(389, 276, 270, 65.12, 2),
(390, 275, 276, 18.89, 2),
(391, 274, 275, 18.2, 2),
(392, 273, 274, 19.29, 2),
(393, 269, 267, 88.66, 1),
(394, 302, 303, 82.42, 2),
(395, 120, 303, 107.77, 2),
(396, 305, 304, 41.57, 3),
(397, 306, 305, 44.41, 3),
(398, 307, 306, 38.14, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`path_id`),
  ADD KEY `destination_location_id` (`destination_location_id`),
  ADD KEY `departure_location_id` (`departure_location_id`),
  ADD KEY `path_type` (`path_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `path_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `paths`
--
ALTER TABLE `paths`
  ADD CONSTRAINT `paths_ibfk_1` FOREIGN KEY (`destination_location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `paths_ibfk_2` FOREIGN KEY (`departure_location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `paths_ibfk_3` FOREIGN KEY (`path_type`) REFERENCES `path_type` (`path_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
