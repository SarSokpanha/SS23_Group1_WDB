-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 19, 2023 at 07:16 AM
-- Server version: 10.5.13-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `pinned` tinyint(4) DEFAULT 0,
  `author` tinyint(4) NOT NULL DEFAULT 0,
  `thumbnail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `create_at`, `pinned`, `author`, `thumbnail`) VALUES
(1, 'Pride', 'In the history of the world for thousands of years, many empires have appeared. Below are the 100 major empires, including four in Southeast Asia, including the Khmer Empire, the Taungoo Empire, the Srivijaya Empire, and the Majaphit Empire. Both empires are part of present-day Indonesia and Malaysia. The former largest empires were Britain, followed by Mongolia and Russia.<br><br><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../post_images/63e1c66a3526b_1675740720_large.jpg\" alt=\"\" width=\"800\" height=\"450\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', '2023-05-19 13:34:32', 1, 1, '63e1c66a3526b_1675740720_large.jpg'),
(2, 'Will the famous Toyota Agya in Indonesia arrive in Cambodia?', 'Toyota Agya, also known as Toyota Wigo, has been receiving ivory orders in some ASEAN countries, such as Indonesia.<br>In early 2023, Toyota announced the launch of the A-Hatchback in Indonesia, the Toyota Agya, with an attractive redesign that allows customers to book and purchase up to a certain number of units. More than 7,000 units, according to popular Indonesian newspapers.<br><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../post_images/6466fccb01b86_1684470960_large.jpg\" alt=\"\" width=\"800\" height=\"304\"><br>With this success, we hope that this car will also be able to appear in the Cambodian market soon, because in general, any new model car show, whether in Thailand or Indonesia, Cambodia will import next. In a short time.<br>Our press is also not silent, taking inquiries to Toyota, the company that has the exclusive right to import many new Toyota cars, shaking the car market in Cambodia.<br><br><img src=\"../post_images/6466fcca6f95d_1684470960_large.jpg\" alt=\"\" width=\"800\" height=\"913\"><br><br>Toyota has made it clear that \"in order to provide customers with the opportunity to purchase new minivans that are capable of meeting current needs, as well as affordable and economical, the company will soon bring them to the Cambodian market.\" .But today (press) would like to highlight the special features that come with this A-Hatchback car, why this car is so successful in the Indonesian market? &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', '2023-05-19 13:35:47', 0, 1, '6466fccb01b86_1684470960_large.jpg'),
(4, 'TO', 'Toyota Agya, also known as Toyota Wigo, has been receiving ivory orders in some ASEAN countries, such as Indonesia.<br>In early 2023, Toyota announced the launch of the A-Hatchback in Indonesia, the Toyota Agya, with an attractive redesign that allows customers to book and purchase up to a certain number of units. More than 7,000 units, according to popular Indonesian newspapers.<br><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../post_images/6466fccb01b86_1684470960_large.jpg\" alt=\"\" width=\"800\" height=\"304\"><br>With this success, we hope that this car will also be able to appear in the Cambodian market soon, because in general, any new model car show, whether in Thailand or Indonesia, Cambodia will import next. In a short time.<br>Our press is also not silent, taking inquiries to Toyota, the company that has the exclusive right to import many new Toyota cars, shaking the car market in Cambodia. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', '2023-05-19 13:45:44', 0, 2, '6466fcca6f95d_1684470960_large.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `token` varchar(6) DEFAULT NULL,
  `expired_token_at` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `is_admin` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `pass`, `create_at`, `token`, `expired_token_at`, `status`, `is_admin`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$xlJ7ABIVKIAgShWoxAxiIerplKZ1pUS/y3q3Wl.gfOt298VnCCgg6', '2023-05-17 13:00:16', '187799', 1684304116, 1, 1),
(2, 'User1', 'user1@gmail.com', '$2y$10$cc.QR7xCW5LyGo4GvkT.mezpUSqu3gtN9YCx9aAzOrmSPqymRzVEu', '2023-05-17 18:56:57', '334619', 1684325517, 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
