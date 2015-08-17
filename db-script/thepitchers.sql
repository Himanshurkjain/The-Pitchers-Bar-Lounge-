-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2015 at 06:34 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thepitchers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `phone`, `email`) VALUES
('Ankur Jain', '2147483647', 'ankurskjain@gmail.com'),
('Emsal', '2019201088', 'emsalmlk@gmail.com'),
('Gaurang Jain', '2019201199', 'gaurang.jain@gmail.com'),
('Himanshu Jain', '2019201013', 'hj736@nyu.edu'),
('Ethan Hunt', '2010000000', 'mission.impossible@gmail.com'),
('Rohit Gupta', '4234324', 'rohit@gmail.com'),
('Shekhar Gupta', '2019201011', 'shekhar.gupta@gmail.com'),
('Vijay Mishra', '2147483647', 'vijay.mishra@gmail.com'),
('James', '083323232`', 'yahooitsmehotmale@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('thepitchers@gmail.com', 'victory');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `cnfcode` int(11) NOT NULL AUTO_INCREMENT,
  `partysize` int(5) NOT NULL,
  `specialneeds` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`cnfcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1010 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`cnfcode`, `partysize`, `specialneeds`, `date`, `time`, `email`) VALUES
(1001, 5, 'Himanshu', '2015-08-28', '1970-01-01T17:59:00.000Z', 'emsalmlk@gmail.com'),
(1002, 10, 'Delhi', '2015-08-28', '1970-01-01T17:59:00.000Z', 'ankurskjain@gmail.com'),
(1003, 5, 'fame, money everything', '2015-08-28', '1970-01-01T17:59:00.000Z', 'hj736@nyu.edu'),
(1004, 5, 'starters', '2015-08-20', '1970-01-01T17:59:00.000Z', 'shekhar.gupta@gmail.com'),
(1005, 5, 'Victory', '2015-08-20', '1970-01-01T17:59:00.000Z', 'hj736@nyu.edu'),
(1007, 3, 'dfdsf', '2015-08-12', '1970-01-01T17:59:00.000Z', 'hj736@nyu.edu'),
(1008, 3, 'dsds', '2015-08-13', '1970-01-01T17:59:00.000Z', 'hj736@nyu.edu'),
(1009, 10, 'fsdfsdf', '2015-08-12', '1970-01-01T17:59:00.000Z', 'hj736@nyu.edu');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantprofile`
--

CREATE TABLE IF NOT EXISTS `restaurantprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `restaurantprofile`
--

INSERT INTO `restaurantprofile` (`id`, `name`, `phone`, `email`, `address`) VALUES
(1, 'The Pitchers', '2019201010', 'thepither@gmail.com', 'Oxford Street London');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `day` varchar(15) NOT NULL,
  `starttime` varchar(50) NOT NULL,
  `endtime` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`day`, `starttime`, `endtime`, `status`) VALUES
('Monday', '1970-01-01T17:59:00.000Z', '1970-01-01T17:59:00.000Z', 1),
('Thursday', '1970-01-01T17:59:00.000Z', '1970-01-01T17:59:00.000Z', 1),
('Tuesday', '1970-01-01T17:59:00.000Z', '1970-01-01T17:59:00.000Z', 1),
('Wednesday', '1970-01-01T17:59:00.000Z', '1970-01-01T17:59:00.000Z', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) NOT NULL,
  `cnfCode` int(11) NOT NULL,
  `since` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `size`, `cnfCode`, `since`, `status`) VALUES
(101, 4, 1002, '11:00 am', 'Reserved'),
(102, 6, 1004, '', 'Available'),
(104, 3, 1001, '4:00pm', 'Reserved'),
(105, 8, 1001, '', 'Available');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
