-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2017 at 08:07 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `phone` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`phone`, `name`, `pwd`) VALUES
(4567891237, 'raju', 'bnbmb'),
(5527891237, 'raju', 'bnbmb'),
(5567891237, 'raju', 'bnbmb'),
(7531598524, 'raju', 'bnbmb'),
(7534219852, 'raju', 'bnbmb'),
(7562141234, 'raju', 'bnbmb'),
(7621411242, 'raju', 'e10adc3949ba59abbe56'),
(7621412345, 'raju', 'bnbmb'),
(8430557711, 're4dy', 'patna city'),
(8451255872, 'sfgsfgsf', 'jhjhsdsdjs'),
(8534219852, 'raju', 'bnbmb'),
(9430517231, 'reddy', 'patna city'),
(9430517444, 'saha', 'patna city'),
(9430517445, 'saha', 'patna city'),
(9430517449, 'saha', 'patna city'),
(9430517456, 'reddy', 'patna city'),
(9430525241, 'dfhfg ggg', 'hshdhs'),
(9430534541, 'dfhfg ggg', 'hshdhs'),
(9430605109, 'rohit', 'comxtech'),
(9608042867, 'ramesh', 'btnlayout'),
(753425198524, 'raju', 'bnbmb');

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE IF NOT EXISTS `doc` (
  `phone` bigint(10) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc`
--

INSERT INTO `doc` (`phone`, `doc`) VALUES
(9430605109, './downloads/php.pdf'),
(9430605109, './downloads/php.pdf'),
(9430517445, './downloads/seo.pdf'),
(9430517449, './downloads/seo.pdf'),
(9430517444, './downloads/seo.pdf'),
(9430517231, './downloads/seo.pdf'),
(9430517456, './downloads/seo.pdf'),
(8451255872, 'jdjjhsdjdhj'),
(8430557711, './downloads/seo.pdf'),
(9430525241, './downloads/seo.pdf'),
(9430534541, './downloads/seo.pdf'),
(7531598524, 'jkkjsjkjksdjk'),
(753425198524, 'jkkjsjkjksdjk'),
(7534219852, 'jkkjsjkjksdjk'),
(8534219852, 'jkkjsjkjksdjk'),
(4567891237, 'jkkjsjkjksdjk'),
(5567891237, 'jkkjsjkjksdjk'),
(5527891237, 'jkkjsjkjksdjk'),
(7562141234, 'jkkjsjkjksdjk'),
(7621412345, 'jkkjsjkjksdjk'),
(7621411242, 'jkkjsjkjksdjk');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `token` varchar(500) NOT NULL,
  `issue` varchar(200) DEFAULT NULL,
  `vaild` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `pwd`, `phone`, `name`, `token`, `issue`, `vaild`) VALUES
('rohit12347@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 2147483647, 'rohit saha', '1c2a4ce509121f8fdaa93cecb03d7ecb', '1482314706', '1482314766'),
('rohit1237@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 2147483647, 'rohit saha', '6f1471032bee91198febec5c63d0be1b', '1482314793', '1482314853'),
('rohit123@rediffmail.com', '0e11d184398255abe79cac2d7d7fec73', 2147483647, 'rohit saha', '547316501d4128e1366365f4928e8e38', '1482314810', '1482314870'),
('rohit@rediffmail.com', '0e11d184398255abe79cac2d7d7fec73', 2147483647, 'rohit saha', 'bdbc70d53a48f57dd3539e7a93bdf17f', '1482314820', '1482314880'),
('rohitr@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 2147483647, 'rohit saha', 'f2e64058b78779026fd90b1b4f2afb5d', '1482314830', '1482314890'),
('rohitred@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 9987654321, 'rohit saha', '47c9954b4683fa51993ba1e4f7c474c7', '1482314838', '1482314898'),
('rohitsaha@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 9987654321, 'rohit saha', '07e4134352cf2905a3eda0ef40851c41', '1482739386', '1482739446'),
('rohit_10029@rediffmail.com', '349c9ad56fbc8db3dea18eac777ac78f', 2147483647, 'rohit saha', '525a8a1cd8391150548b13a409ae2e81', '1482321963', '1482322023'),
('sen@nes.com', 'sen@123', 2147483647, 'semthamizh', 'e12f492f9a0eaebb7745a624cc921eec', '1482314866', '1482314926'),
('sent@tnes.com', 'sent@123', 2147483647, 'thamizh', '4cc4ea42ccf06458cf968facf38da45e', '1482314883', '1482314943'),
('thamizh@tam.com', 'tam@123', 9876543210, 'tamil', '5e5d7ff1a7ee387402270dcc0e967122', '1482314894', '1482314954');

-- --------------------------------------------------------

--
-- Table structure for table `log_add`
--

CREATE TABLE IF NOT EXISTS `log_add` (
  `email` varchar(200) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_add`
--

INSERT INTO `log_add` (`email`, `file`) VALUES
('rohit_10029@rediffmail.com', '/uploads/1.jpg'),
('rohit_10029@rediffmail.com', '/uploads/2.jpg'),
('rohit12347@rediffmail.com', '/uploads/1.1.jpg'),
('rohit12347@rediffmail.com', '/uploads/1.2.jpg'),
('rohit12347@rediffmail.com', '/uploads/8.1.jpg'),
('rohit@rediffmail.com', '/uploads/dfg.pdf'),
('rohit@rediffmail.com', '/uploads/ghj.pdf'),
('rohitsaha@rediffmail.com', '/uploads/1.2.jpg'),
('rohitsaha@rediffmail.com', '/uploads/1.1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(50) DEFAULT NULL,
  `com` varchar(50) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`name`, `com`, `addr`, `file`) VALUES
('rgdfdg5t', 'saha', 'patna city', ''),
('rohit', 'saha', 'patna city', ''),
('rohit', 'saha', 'patna city', ''),
('ronit', 'saha', 'patna city', ''),
('ronik', 'saha', 'patna city', ''),
('ronik', 'saha', 'patna city', ''),
('ronik', 'saha', 'patna city', ''),
('samnngh', 'saha', 'patna city', ''),
('samnngh', 'saha', 'patna city', ''),
('samnngh', 'saha', 'patna city', 'C:\nmpphtdocs	estdownloads'),
('samnngh', 'saha', 'patna city', './test/downloads/php.pdf'),
('samnngh', 'saha', 'patna city', './downloads/php.pdf'),
('123', 'saha', 'patna city', './downloads/php.pdf'),
('943', 'saha', 'patna city', './downloads/seo.pdf'),
('risk', 'saha', 'patna city', './downloads/seo.pdf'),
('risk', 'saha', 'patna city', './downloads/seo.pdf'),
('risk', 'saha', 'patna city', './downloads/seo.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
 ADD KEY `phone` (`phone`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `log_add`
--
ALTER TABLE `log_add`
 ADD KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doc`
--
ALTER TABLE `doc`
ADD CONSTRAINT `doc_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `admin` (`phone`);

--
-- Constraints for table `log_add`
--
ALTER TABLE `log_add`
ADD CONSTRAINT `log_add_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
