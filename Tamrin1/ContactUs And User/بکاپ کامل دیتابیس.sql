-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2023 at 12:05 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiyanpcshop`
--
CREATE DATABASE IF NOT EXISTS `kiyanpcshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci;
USE `kiyanpcshop`;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `tel` char(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `textbody` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fname`, `lname`, `email`, `tel`, `title`, `textbody`) VALUES
(1, 'Yasin', 'Kiyani', 'YasinKiyani@gmail.com', '09918654559', 'کمکم کنید ', 'یک مشکلی برای خرید پیش امده'),
(2, 'Ali', 'Kiyani', 'AliKiyani@gmail.com', '09303818172', 'تشکر از سایت', 'سایت بسیار مشکل گشا و درجه یکی دارید');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Rolls` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites1` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites2` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Favorites3` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `gender` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Datebirth` date NOT NULL,
  `cities` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Rolls`, `username`, `email`, `password`, `Favorites1`, `Favorites2`, `Favorites3`, `gender`, `Datebirth`, `cities`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '@Admin1234', 'افزونه های وردپرسی', 'قالب های وردپرس', 'دروره های آموزشی طرحی سایت', 'مرد', '2000-01-17', 'اصفهان', 'AdminPhotoProfile.png', '2023-01-01 00:06:58', '1'),
(2, 'Nuser', 'user', 'user@gmail.com', '@User1234', 'افزونه های وردپرسی', 'قالب های وردپرسی', 'سایت های وردپرسی', 'مرد', '2000-01-17', 'اصفهان', 'UserPhotoProfile.png', '2023-01-01 00:06:58', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
