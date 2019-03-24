-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2019 at 05:11 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `richcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversions`
--

CREATE TABLE `conversions` (
  `id` int(11) NOT NULL,
  `track_id` int(11) DEFAULT NULL,
  `at` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `payout` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`) VALUES
(49, 'AD'),
(13, 'AE'),
(46, 'AF'),
(160, 'AG'),
(206, 'AI'),
(47, 'AL'),
(44844, 'ALL'),
(51, 'AM'),
(44845, 'AN'),
(131, 'AO'),
(207, 'AQ'),
(50, 'AR'),
(205, 'AS'),
(113, 'AT'),
(25, 'AU'),
(161, 'AW'),
(159, 'AX'),
(52, 'AZ'),
(42, 'BA'),
(54, 'BB'),
(34, 'BD'),
(117, 'BE'),
(167, 'BF'),
(43, 'BG'),
(33, 'BH'),
(168, 'BI'),
(56, 'BJ'),
(37189, 'BL'),
(163, 'BM'),
(208, 'BN'),
(57, 'BO'),
(37866, 'BQ'),
(2, 'BR'),
(53, 'BS'),
(164, 'BT'),
(165, 'BV'),
(58, 'BW'),
(55, 'BY'),
(162, 'BZ'),
(108, 'CA'),
(174, 'CC'),
(60, 'CD'),
(171, 'CF'),
(175, 'CG'),
(19, 'CH'),
(209, 'CI'),
(176, 'CK'),
(121, 'CL'),
(169, 'CM'),
(122, 'CN'),
(14, 'CO'),
(61, 'CR'),
(177, 'CU'),
(170, 'CV'),
(133, 'CW'),
(173, 'CX'),
(147, 'CY'),
(39, 'CZ'),
(16, 'DE'),
(210, 'DJ'),
(1, 'DK'),
(63, 'DM'),
(211, 'DO'),
(48, 'DZ'),
(31, 'EC'),
(152, 'EE'),
(9, 'EG'),
(37204, 'EH'),
(178, 'ER'),
(22, 'ES'),
(179, 'ET'),
(112, 'FI'),
(65, 'FJ'),
(180, 'FK'),
(190, 'FM'),
(212, 'FO'),
(10, 'FR'),
(135, 'GA'),
(26, 'GB'),
(214, 'GD'),
(68, 'GE'),
(66, 'GF'),
(215, 'GG'),
(69, 'GH'),
(70, 'GI'),
(213, 'GL'),
(181, 'GM'),
(137, 'GN'),
(71, 'GP'),
(134, 'GQ'),
(44, 'GR'),
(201, 'GS'),
(72, 'GT'),
(136, 'GU'),
(182, 'GW'),
(183, 'GY'),
(118, 'HK'),
(184, 'HM'),
(73, 'HN'),
(62, 'HR'),
(138, 'HT'),
(74, 'HU'),
(11, 'ID'),
(119, 'IE'),
(116, 'IL'),
(216, 'IM'),
(7, 'IN'),
(166, 'IO'),
(129, 'IQ'),
(109, 'IR'),
(153, 'IS'),
(23, 'IT'),
(154, 'JE'),
(75, 'JM'),
(41, 'JO'),
(8, 'JP'),
(12, 'KE'),
(77, 'KG'),
(151, 'KH'),
(185, 'KI'),
(132, 'KM'),
(217, 'KN'),
(186, 'KP'),
(5, 'KR'),
(3, 'KW'),
(59, 'KY'),
(76, 'KZ'),
(187, 'LA'),
(78, 'LB'),
(31014, 'LC'),
(125, 'LI'),
(37, 'LK'),
(218, 'LR'),
(139, 'LS'),
(156, 'LT'),
(126, 'LU'),
(155, 'LV'),
(188, 'LY'),
(86, 'MA'),
(158, 'MC'),
(83, 'MD'),
(85, 'ME'),
(37190, 'MF'),
(189, 'MG'),
(37182, 'MH'),
(79, 'MK'),
(37181, 'ML'),
(35, 'MM'),
(84, 'MN'),
(120, 'MO'),
(195, 'MP'),
(81, 'MQ'),
(140, 'MR'),
(191, 'MS'),
(157, 'MT'),
(82, 'MU'),
(80, 'MV'),
(37180, 'MW'),
(32, 'MX'),
(18, 'MY'),
(141, 'MZ'),
(87, 'NA'),
(193, 'NC'),
(37184, 'NE'),
(194, 'NF'),
(89, 'NG'),
(88, 'NI'),
(38, 'NL'),
(110, 'NO'),
(142, 'NP'),
(192, 'NR'),
(37185, 'NU'),
(21, 'NZ'),
(123, 'OM'),
(90, 'PA'),
(17, 'PE'),
(67, 'PF'),
(91, 'PG'),
(30, 'PH'),
(36, 'PK'),
(93, 'PL'),
(199, 'PM'),
(197, 'PN'),
(37187, 'PR'),
(196, 'PS'),
(127, 'PT'),
(37186, 'PW'),
(92, 'PY'),
(114, 'QA'),
(37188, 'RE'),
(148, 'RO'),
(45, 'RS'),
(27, 'RU'),
(143, 'RW'),
(6, 'SA'),
(200, 'SB'),
(95, 'SC'),
(37194, 'SD'),
(111, 'SE'),
(29, 'SG'),
(198, 'SH'),
(150, 'SI'),
(37195, 'SJ'),
(149, 'SK'),
(144, 'SL'),
(128, 'SM'),
(94, 'SN'),
(145, 'SO'),
(96, 'SR'),
(37869, 'SS'),
(37193, 'ST'),
(64, 'SV'),
(37868, 'SX'),
(37196, 'SY'),
(202, 'SZ'),
(37198, 'TC'),
(172, 'TD'),
(37178, 'TF'),
(146, 'TG'),
(28, 'TH'),
(97, 'TJ'),
(203, 'TK'),
(37197, 'TL'),
(100, 'TM'),
(99, 'TN'),
(204, 'TO'),
(24, 'TR'),
(98, 'TT'),
(37199, 'TV'),
(20, 'TW'),
(15, 'TZ'),
(40, 'UA'),
(101, 'UG'),
(37200, 'UM'),
(4, 'US'),
(102, 'UY'),
(103, 'UZ'),
(37179, 'VA'),
(37191, 'VC'),
(37201, 'VE'),
(37202, 'VG'),
(130, 'VI'),
(115, 'VN'),
(31013, 'VU'),
(37203, 'WF'),
(37192, 'WS'),
(37867, 'XK'),
(124, 'XX'),
(104, 'YE'),
(37183, 'YT'),
(107, 'ZA'),
(105, 'ZM'),
(106, 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `network_type_id` int(11) NOT NULL DEFAULT '1',
  `lock` smallint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL,
  `min_payout` float NOT NULL DEFAULT '0.1',
  `max_payout` float NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `network_types`
--

CREATE TABLE `network_types` (
  `id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `network_types`
--

INSERT INTO `network_types` (`id`, `type`) VALUES
(1, 'InHouseV2'),
(2, 'Appflood');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `network_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `icon_url` text COLLATE utf8_unicode_ci,
  `preview_url` text COLLATE utf8_unicode_ci,
  `payout` float NOT NULL DEFAULT '0',
  `tracking_url` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `os` text COLLATE utf8_unicode_ci NOT NULL,
  `countries` text COLLATE utf8_unicode_ci,
  `status` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `load_at` bigint(20) NOT NULL,
  `update_at` bigint(20) NOT NULL,
  `daily_cap` int(11) NOT NULL DEFAULT '0',
  `monthly_cap` int(11) NOT NULL DEFAULT '0',
  `uniq_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `server` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `at` bigint(20) NOT NULL,
  `browser` text COLLATE utf8_unicode_ci,
  `ip` text COLLATE utf8_unicode_ci,
  `is_tool` tinyint(1) NOT NULL DEFAULT '0',
  `_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `full_name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `site_id` int(11) NOT NULL,
  `avatar` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'https://i.imgur.com/sNAFxKI.png',
  `lock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_storages`
--

CREATE TABLE `user_storages` (
  `id` int(11) NOT NULL,
  `data` varchar(10000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '{}',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversions`
--
ALTER TABLE `conversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conversions_offer_id` (`offer_id`),
  ADD KEY `fk_conversions_user_id` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_networks_site_id` (`site_id`),
  ADD KEY `fk_networks_network_type_id` (`network_type_id`);

--
-- Indexes for table `network_types`
--
ALTER TABLE `network_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_key` (`uniq_key`),
  ADD KEY `fk_offers_site_id` (`site_id`),
  ADD KEY `fk_offers_network_id` (`network_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_settings_site_id` (`site_id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sites_parent_id` (`parent_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `_id` (`_id`),
  ADD KEY `fk_tracks_user_id` (`user_id`),
  ADD KEY `fk_tracks_offer_id` (`offer_id`),
  ADD KEY `fk_tracks_site_id` (`site_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_site_id` (`site_id`);

--
-- Indexes for table `user_storages`
--
ALTER TABLE `user_storages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_us_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversions`
--
ALTER TABLE `conversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44846;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `network_types`
--
ALTER TABLE `network_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_storages`
--
ALTER TABLE `user_storages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversions`
--
ALTER TABLE `conversions`
  ADD CONSTRAINT `fk_conversions_offer_id` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_conversions_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `networks`
--
ALTER TABLE `networks`
  ADD CONSTRAINT `fk_networks_network_type_id` FOREIGN KEY (`network_type_id`) REFERENCES `network_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_networks_site_id` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `fk_offers_network_id` FOREIGN KEY (`network_id`) REFERENCES `networks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_offers_site_id` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `fk_settings_site_id` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_sites_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `fk_tracks_offer_id` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tracks_site_id` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tracks_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_site_id` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_storages`
--
ALTER TABLE `user_storages`
  ADD CONSTRAINT `fk_us_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
