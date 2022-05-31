-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2022 at 03:25 AM
-- Server version: 5.7.31
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
CREATE TABLE IF NOT EXISTS `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token_value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_token_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `token_value`, `created_at`, `user_id`) VALUES
(1, 'c85466f9fa0cb07409293d4adfd03c2fca756b72', '2022-05-27 22:54:41', 4),
(2, '09e32f229529e4824558d962c07622a7fcc09394', '2022-05-27 23:02:21', 4),
(5, '4592d3c8b80b3331d22d1d48e0406624c96d6495', '2022-05-27 23:54:59', 4),
(6, 'eebe1d9ba3b121bfa3716d85e973b3b26528ee80', '2022-05-30 05:06:55', 4),
(7, 'de6d976f618b6c82910a2505dce08894ba3aaf29', '2022-05-30 15:35:45', 4),
(8, '14cc5666601a489812aa9f6782ea939778ab3c72', '2022-05-30 17:54:46', 4),
(9, '78632693de53c1027ed1e9e4ce07a90579958639', '2022-05-30 18:19:45', 4),
(10, 'a95228ea0d288147a0cb1d7cca98fccdf9d94288', '2022-05-30 18:57:42', 4),
(11, '958e179bb5c9a44f9ed60c6a568813856ca284ca', '2022-05-30 19:30:00', 4),
(12, '1359a38fba1ea13002f2e6a8c98b719c93542471', '2022-05-30 19:55:23', 4),
(13, 'd94e4d259aeeb7d2389eb349c5b7876ce50bd7f8', '2022-05-30 20:04:53', 4),
(14, '00870b85cb89e8747f4319189550b4943bc7483b', '2022-05-30 20:08:06', 4),
(15, 'd435a6cdd786300dff204ee7c2ef942d3e9034e2', '2022-05-30 20:40:48', 4),
(16, '96ff379f3c69797fc7bffdc03a1e3d0ab96c043e', '2022-05-31 02:15:32', 4),
(17, 'a1b1ef5ebe37745ac99538e0c41516aa10f98b97', '2022-05-31 02:31:07', 4),
(18, '501f1493b4292c393e67e50dca73d07785006efb', '2022-05-31 02:39:43', 4),
(19, '1a8c3d88355a0d633ae3ef87864164e19d966271', '2022-05-31 02:42:28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`) VALUES
(4, 'omarabdelfattah', 'omar1', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'omar@omar.com', '123456789', 'st 13929 , Lorem');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `user_token_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
