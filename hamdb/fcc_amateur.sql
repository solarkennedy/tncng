-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2010 at 09:43 PM
-- Server version: 5.1.37
-- PHP Version: 5.2.10-2ubuntu6.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fcc_amateur`
--

-- --------------------------------------------------------

--
-- Table structure for table `am`
--

CREATE TABLE IF NOT EXISTS `am` (
  `fccid` int(11) NOT NULL,
  `callsign` varchar(8) NOT NULL,
  `class` varchar(1) DEFAULT NULL,
  `col4` varchar(1) DEFAULT NULL,
  `col5` varchar(2) DEFAULT NULL,
  `col6` varchar(3) DEFAULT NULL,
  `former_call` varchar(8) DEFAULT NULL,
  `former_class` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`fccid`),
  KEY `idx_callsign` (`callsign`),
  KEY `idx_class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am`
--


-- --------------------------------------------------------

--
-- Table structure for table `en`
--

CREATE TABLE IF NOT EXISTS `en` (
  `fccid` int(11) NOT NULL,
  `callsign` varchar(8) NOT NULL,
  `full_name` varchar(32) DEFAULT NULL,
  `first` varchar(20) DEFAULT NULL,
  `middle` varchar(1) DEFAULT NULL,
  `last` varchar(20) DEFAULT NULL,
  `address1` varchar(32) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fccid`),
  KEY `idx_zip` (`zip`),
  KEY `idx_callsign` (`callsign`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en`
--


-- --------------------------------------------------------

--
-- Table structure for table `hd`
--

CREATE TABLE IF NOT EXISTS `hd` (
  `fccid` int(11) NOT NULL,
  `callsign` varchar(8) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`fccid`),
  KEY `idx_callsign` (`callsign`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hd`
--

