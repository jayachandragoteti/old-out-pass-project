-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 12:35 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisdomwriter`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `sno` int(11) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `designation` varchar(225) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` mediumtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  `about` mediumtext NOT NULL,
  `journal_id` varchar(50) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`sno`, `first_name`, `last_name`, `designation`, `contact_number`, `email`, `address`, `picture`, `about`, `journal_id`, `datm`) VALUES
(1, 'GOTETI JAYACHANDRA MOHAN LAKSHMI', 'MURTHY', 'student', '+919491694195', 'gotetijayachandra@gmail.com', 'MEDACHARLA Village', 'journol0713.jfif', 'wisdomwriter', ' journol0713', '2020-07-19 09:10:21'),
(2, 'GOTETI JAYACHANDRA MOHAN LAKSHMI', 'MURTHY', 'student', '+919491694195', 'gotetijayachandra@gmail.com', 'MEDACHARLA Village', 'journol7442.jfif', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', ' journol7442', '2020-07-19 09:11:06'),
(3, 'GOTETI JAYACHANDRA MOHAN LAKSHMI', 'MURTHY', 'student', '+919491694195', 'gotetijayachandra@gmail.com', 'MEDACHARLA Village', 'journol1093.jfif', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', ' journol1093', '2020-07-19 09:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `sno` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `sub_title` varchar(225) NOT NULL,
  `paragraph_1` longtext NOT NULL,
  `paragraph_2` longtext NOT NULL,
  `paragraph_3` longtext NOT NULL,
  `paragraph_4` longtext NOT NULL,
  `image` varchar(50) NOT NULL,
  `abstract` varchar(225) NOT NULL,
  `journal_id` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`sno`, `title`, `sub_title`, `paragraph_1`, `paragraph_2`, `paragraph_3`, `paragraph_4`, `image`, `abstract`, `journal_id`, `category`, `status`, `datm`) VALUES
(1, 'Artificial Intelligence ', 'TODAY FEATURED', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', '', '', 'journol0713.jfif', 'journol0713.pdf', ' journol0713', 'technology', 1, '2020-07-19 09:10:21'),
(2, 'Artificial Intelligence ', 'TODAY FEATURED', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', '', '', 'journol7442.jpg', 'journol7442.pdf', ' journol7442', 'technology', 1, '2020-07-19 09:11:06'),
(3, 'Machine learning', 'Cloud computing Role in Near Future', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', 'wisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriterwisdomwriter', '', '', 'journol1093.jpg', 'journol1093.pdf', ' journol1093', 'technology', 1, '2020-07-19 09:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `name`, `username`, `password`) VALUES
(1, 'Wisdonm Writer', 'wisdomwriter', 'wisdomwriter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `journal_id` (`journal_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `journal_id` (`journal_id`),
  ADD UNIQUE KEY `image` (`image`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
