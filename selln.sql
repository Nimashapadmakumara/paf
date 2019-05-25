-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2019 at 05:58 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `selln`
--
CREATE DATABASE IF NOT EXISTS `selln` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `selln`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `pcode` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `brand`, `price`, `pcode`) VALUES
(12, 'Chambray Stripe Dress ', 'Adidas', 1500, 'W159'),
(13, 'Bowknot Backless Midi Dress', 'Boss Hugo Boss', 1245, 'W189'),
(14, 'Fashion Butterfly One Piece Dress', 'Gioseppo', 998, 'W165'),
(15, 'Ruffled Floral Print Dress', 'Helly Hansen', 2145, 'W178'),
(16, 'Breakfast at Tiffany''s Mini Dress', 'Inuovo', 3690, 'W654'),
(17, 'Cute Back Tie Solid Color Mini Braced Dress', 'North Sails', 4500, 'W986'),
(18, 'Women''s Summer Mesh Overlay Party Dress', 'Wigglesteps', 1745, 'W635'),
(19, 'Spring Floral Dress', 'Weekend MaxMara', 8976, 'W471'),
(21, 'Dot Bohemia Maxi Dress ', 'Frank Lyman', 1000, 'W127'),
(22, 'Fashion Round Collar Dot Maxi Dress', 'Marc O´Polo Women', 965, 'W897');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT '1',
  `size` varchar(4) DEFAULT 'M',
  `products_pid` int(11) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `pcode` varchar(45) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_shoppingCart_products_idx` (`products_pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`sid`, `quantity`, `size`, `products_pid`, `pname`, `pcode`, `price`) VALUES
(19, 1, 'M', 12, 'Chambray Stripe Dress ', 'W159', 1500),
(52, 0, NULL, 14, 'Fashion Butterfly One Piece Dress', 'W165', 998);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `fk_shoppingCart_products` FOREIGN KEY (`products_pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
