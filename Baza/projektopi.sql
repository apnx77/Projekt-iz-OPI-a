-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 07, 2022 at 01:14 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projektopi`
--

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
CREATE TABLE IF NOT EXISTS `prices` (
  `parasL` int(11) NOT NULL,
  `parasS` int(11) NOT NULL,
  `sunchairL` int(11) NOT NULL,
  `sunchairS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`parasL`, `parasS`, `sunchairL`, `sunchairS`) VALUES
(80, 50, 60, 40);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL,
  `timeDate` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `selection` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
CREATE TABLE IF NOT EXISTS `storage` (
  `parasL` int(11) NOT NULL,
  `parasS` int(11) NOT NULL,
  `sunchairL` int(11) NOT NULL,
  `sunchairS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`parasL`, `parasS`, `sunchairL`, `sunchairS`) VALUES
(100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL,
  `email` text COLLATE utf8mb4_croatian_ci NOT NULL,
  `contact` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `contact`) VALUES
(1, 'Pero', '12345', 'pero@gmail.com', 1122334455);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
