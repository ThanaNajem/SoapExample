-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2018 at 04:16 PM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soap`
--

-- --------------------------------------------------------

--
-- Table structure for table `stockprices`
--

DROP TABLE IF EXISTS `stockprices`;
CREATE TABLE IF NOT EXISTS `stockprices` (
  `stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stock_symbol` char(3) NOT NULL,
  `stock_price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockprices`
--

INSERT INTO `stockprices` (`stock_id`, `stock_symbol`, `stock_price`) VALUES
(1, 'ABC', '75.00'),
(2, 'DEF', '45.00'),
(3, 'GHI', '12.00'),
(4, 'JKL', '34.00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
