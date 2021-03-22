-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 05:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vhelp`
--

-- --------------------------------------------------------

--
-- Table structure for table `carriercouncilling`
--

CREATE TABLE `carriercouncilling` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `services` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `message` mediumtext NOT NULL,
  `request_id` varchar(100) NOT NULL,
  `present_studing` varchar(100) NOT NULL,
  `ug-pg` varchar(10) NOT NULL,
  `standard` varchar(225) NOT NULL,
  `national-international-education` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carriercouncilling`
--

INSERT INTO `carriercouncilling` (`sno`, `name`, `email`, `contact`, `services`, `time`, `message`, `request_id`, `present_studing`, `ug-pg`, `standard`, `national-international-education`, `datm`) VALUES
(1, 'GOTETI JAYACHANDRA MOHANA L N MURTHY', 'jayachandramohan2001@gmail.com', '9491694196', 'Carrier Councelling', 'Afternoon 01:00 PM to 07:00 PM', 'nddddddddddddddddddddddddddddd', 'V-Help202179N8J2', 'YES', 'UG', ' cv ', 'International', '2021-01-16 09:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `servicerequests`
--

CREATE TABLE `servicerequests` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `contact` varchar(225) NOT NULL,
  `services` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL,
  `message` mediumtext NOT NULL,
  `request_id` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicerequests`
--

INSERT INTO `servicerequests` (`sno`, `name`, `email`, `contact`, `services`, `time`, `message`, `request_id`, `datm`) VALUES
(1, 'admin@gmail.com', 'mainadmin@gmail.com', '9491694196', 'Carrier Councelling', 'All Day', 'nnnnn', 'V-Help2021VZES9W', '2021-01-16 09:18:33'),
(2, 'GOTETI JAYACHANDRA MOHANA L N MURTHY', '1stcityadmin@gmail.com', '9491694196', 'Mobile/Laptop Repairs', 'Morning 9 :00 AM to 01 :00 PM', 'request.php', 'V-Help20217QN0QV', '2021-01-18 10:15:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carriercouncilling`
--
ALTER TABLE `carriercouncilling`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `servicerequests`
--
ALTER TABLE `servicerequests`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carriercouncilling`
--
ALTER TABLE `carriercouncilling`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicerequests`
--
ALTER TABLE `servicerequests`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
