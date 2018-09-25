-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2018 at 07:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firesafty`
--

-- --------------------------------------------------------

--
-- Table structure for table `airpurity`
--

CREATE TABLE `airpurity` (
  `sno` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `a_each_sec` varchar(10) DEFAULT NULL,
  `a_each_30` varchar(10) DEFAULT NULL,
  `a_each_60` varchar(10) DEFAULT NULL,
  `a_last_24` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airpurity`
--

INSERT INTO `airpurity` (`sno`, `DateTime`, `a_each_sec`, `a_each_30`, `a_each_60`, `a_last_24`) VALUES
(1, '2018-02-08 07:36:34', '100', NULL, NULL, NULL),
(2, '2018-02-08 10:47:46', '30', NULL, NULL, NULL),
(3, '2018-02-08 20:32:24', '45', NULL, NULL, NULL),
(4, '2018-02-08 20:32:44', '70', NULL, NULL, NULL),
(5, '2018-02-08 20:33:12', '25', NULL, NULL, NULL),
(6, '2018-02-08 20:33:49', '50', NULL, NULL, NULL),
(7, '2018-02-08 20:34:07', '70', NULL, NULL, NULL),
(8, '2018-02-08 20:34:42', '25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flame`
--

CREATE TABLE `flame` (
  `sno` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_each_sec` varchar(10) DEFAULT NULL,
  `f_each_30` varchar(10) DEFAULT NULL,
  `f_each_60` varchar(10) DEFAULT NULL,
  `f_last_24` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flame`
--

INSERT INTO `flame` (`sno`, `DateTime`, `f_each_sec`, `f_each_30`, `f_each_60`, `f_last_24`) VALUES
(1, '2018-02-08 07:32:52', '20', NULL, NULL, NULL),
(2, '2018-02-08 09:37:26', '25', NULL, NULL, NULL),
(3, '2018-02-08 09:37:39', '70', NULL, NULL, NULL),
(4, '2018-02-08 10:05:55', '25', NULL, NULL, NULL),
(5, '2018-02-08 10:08:13', '70', NULL, NULL, NULL),
(6, '2018-02-08 10:10:13', '45', NULL, NULL, NULL),
(7, '2018-02-08 10:14:04', '25', NULL, NULL, NULL),
(8, '2018-02-08 10:20:52', '70', NULL, NULL, NULL),
(9, '2018-02-08 10:23:27', '30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temprature`
--

CREATE TABLE `temprature` (
  `sno` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temp_each_sec` varchar(10) DEFAULT NULL,
  `temp_each_30` varchar(10) DEFAULT NULL,
  `temp_each_60` varchar(10) DEFAULT NULL,
  `temp_last_24` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temprature`
--

INSERT INTO `temprature` (`sno`, `DateTime`, `temp_each_sec`, `temp_each_30`, `temp_each_60`, `temp_last_24`) VALUES
(1, '2018-02-08 07:24:58', '24', NULL, NULL, NULL),
(2, '2018-02-08 10:19:10', '70', NULL, NULL, NULL),
(3, '2018-02-08 10:22:19', '25', NULL, NULL, NULL),
(4, '2018-02-08 20:39:26', '55', NULL, NULL, NULL),
(5, '2018-02-08 20:42:47', '40', NULL, NULL, NULL),
(6, '2018-02-08 20:44:04', '50', NULL, NULL, NULL),
(7, '2018-02-08 20:44:22', '60', NULL, NULL, NULL),
(8, '2018-02-08 20:44:38', '30', NULL, NULL, NULL),
(9, '2018-02-09 08:07:29', '45', NULL, NULL, NULL),
(10, '2018-02-09 08:07:52', '44', NULL, NULL, NULL),
(11, '2018-02-09 08:08:02', '43', NULL, NULL, NULL),
(12, '2018-02-09 08:08:12', '40', NULL, NULL, NULL),
(13, '2018-02-09 08:08:22', '41', NULL, NULL, NULL),
(14, '2018-02-09 08:08:31', '50', NULL, NULL, NULL),
(15, '2018-02-09 08:08:40', '55', NULL, NULL, NULL),
(16, '2018-02-09 08:09:06', '25', NULL, NULL, NULL),
(17, '2018-02-09 08:31:01', '70', NULL, NULL, NULL),
(18, '2018-02-09 08:31:37', '55', NULL, NULL, NULL),
(19, '2018-02-09 08:31:49', '49', NULL, NULL, NULL),
(20, '2018-02-09 08:32:01', '23', NULL, NULL, NULL),
(21, '2018-02-09 11:26:11', '55', NULL, NULL, NULL),
(22, '2018-02-09 11:26:39', '25', NULL, NULL, NULL),
(23, '2018-02-09 11:51:40', '55', NULL, NULL, NULL),
(24, '2018-02-09 11:51:53', '25', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airpurity`
--
ALTER TABLE `airpurity`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `flame`
--
ALTER TABLE `flame`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `temprature`
--
ALTER TABLE `temprature`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airpurity`
--
ALTER TABLE `airpurity`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `flame`
--
ALTER TABLE `flame`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `temprature`
--
ALTER TABLE `temprature`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
