-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2016 at 03:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `police`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `station` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `cases_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `user_id`, `firstname`, `lastname`, `idNumber`, `case`, `station`, `created_at`, `updated_at`) VALUES
(4, 11, 'James', 'Nduiga', '22889977', 'Murder', 'Central', '2016-07-05 02:48:51', '2016-07-05 02:48:51'),
(5, 11, 'Janette', 'Muiga', '23899977', 'Murder', 'Karen', '2016-07-05 02:50:23', '2016-07-05 02:50:23'),
(6, 5, 'Edith', 'Kenzi', '23889977', 'Rape', 'Syokimau', '2016-07-06 02:05:52', '2016-07-06 02:05:52'),
(7, 5, 'Dennis', 'Mwashumbe', '22334455', 'Robery with violence', 'Shimo la tewa', '2016-07-06 02:06:55', '2016-07-06 02:06:55'),
(8, 5, 'Boniface', 'Subra', '28997766', 'Murder', 'Central', '2016-07-06 02:08:30', '2016-07-06 02:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_05_033149_create_table_cases', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `badgeNumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `role` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `passTemp` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_emailaddress_unique` (`emailAddress`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `badgeNumber`, `emailAddress`, `username`, `password`, `active`, `role`, `code`, `passTemp`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Joanna', 'Beckett', '8977660077', 'munyauedith@gmail.com', 'Beckett', '$2y$10$9mDoGUbrls3ZqHgSChf/iePTyno79VCGNHU95igocsJ47CY.JmqbK', '1', '0', 'I4pmkqLJoJBgvgP2HuX4SfJ6XSGyhbMHaSgQ5B8abGExYKfYxgOm2dfLTOol', '', 'VUliNzd04z6Ki272677A6hQ3DKrmyAg7WHj6yLAFzGfEGjGpFfvTZNlU8zJB', '2016-07-04 19:40:31', '2016-07-06 09:56:58'),
(6, 'James', 'Nduiga', '9988776655', 'mumash464@gmail.com', 'Authentica', '$2y$10$aX.ccDKwNGHQhrFkN.Akte2J8A8Uwnit8pzVxXCjY.4aRqDkAytTW', '1', '1', 'DrM7fjUEJKquigXIBIUGTjJgNX6uW9GWvliq11VDJvl2IoE60JaPLtXf1WaG', '', 'VzHVmUr7HyReTtGRg7Ic0GGRbATnmffGGIVuMwwX9f9bnjSRyhmSJayfO2Ua', '2016-07-04 19:43:03', '2016-07-06 09:46:05'),
(11, 'stone', 'banks', '7788998877', 'stone06banks@gmail.com', 'backrolls', '$2y$10$iLHdPDb5hRqR3eAaHLiot.gQhYMe6AWqUuVCPo/oDNRWeYWhbZQpa', '0', '0', 'Bc4Kof8tqT79Al2VPduS7S8r9TDkseNhdNohzQZjVizZCThyUGoQ5vl0BcB2', '', 'qQkzOvu04gbtfXaG80Q7w9QxDybSyuBbDcpUfUr9LrbfMBs8JTLYxwxGaYy0', '2016-07-05 02:18:21', '2016-07-06 02:24:34');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
