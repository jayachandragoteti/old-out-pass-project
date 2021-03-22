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
-- Database: `sac`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `sno` int(11) NOT NULL,
  `event_id` varchar(222) NOT NULL,
  `event_name` varchar(222) NOT NULL,
  `event_description` mediumtext NOT NULL,
  `event_price` int(11) NOT NULL,
  `event_mode` varchar(222) NOT NULL,
  `event_type` varchar(220) NOT NULL,
  `strating_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `strating_time` time NOT NULL,
  `ending_time` time NOT NULL,
  `event_banner` varchar(220) NOT NULL,
  `participants_limit` int(11) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 1,
  `datm` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`sno`, `event_id`, `event_name`, `event_description`, `event_price`, `event_mode`, `event_type`, `strating_date`, `ending_date`, `strating_time`, `ending_time`, `event_banner`, `participants_limit`, `status`, `datm`) VALUES
(1, 'SAC2020WEB4Y4F', 'Event-1', 'event has an event name', 12, 'Online', 'Webinar', '2020-11-12', '2020-12-12', '12:00:00', '13:00:00', 'Event-12020-11-12.2020-11-12.jpeg', 13, 1, '2020-10-18 14:29:06'),
(2, 'SAC2020WOR1T9Z', 'Event-2', 'fdasuhfui', 134, 'Offline', 'Workshop', '2020-11-13', '2020-11-20', '00:00:00', '00:00:00', 'Event-22020-11-13.2020-11-13.jpeg', 34, 1, '2020-10-18 14:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `sno` int(11) NOT NULL,
  `event_id` varchar(222) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `event_starting_date` varchar(222) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`sno`, `event_id`, `title`, `content`, `image`, `event_starting_date`, `datm`) VALUES
(1, 'SAC2020WOR1T9Z', 'dsafds', 'uudhsuhu', 'SAC2020WOR1T9Z_17_ 1.jpeg', '2020-11-13', '2020-10-18 14:30:14'),
(2, 'SAC2020WEB4Y4F', 'f kdhsjh', 'hsdkjfhj', 'SAC2020WEB4Y4F_77_ 1.jpeg', '2020-11-12', '2020-10-18 14:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `sno` int(11) NOT NULL,
  `registrationId` varchar(222) NOT NULL DEFAULT 'Certificate-not-enabled',
  `studentname` varchar(222) NOT NULL,
  `studentid` varchar(222) NOT NULL,
  `studentbranch` varchar(222) NOT NULL,
  `studentsection` varchar(222) NOT NULL,
  `studentemail` varchar(222) NOT NULL,
  `studentphone` varchar(222) NOT NULL,
  `event_id` varchar(222) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`sno`, `registrationId`, `studentname`, `studentid`, `studentbranch`, `studentsection`, `studentemail`, `studentphone`, `event_id`, `datm`) VALUES
(1, 'SAC2WOR20207079', 'Meghana', '18a51a0552', 'CSE', 'A', 'meghana9111@gmail.com', '9676899526', 'SAC2020WOR1T9Z', '2020-10-18 14:34:16'),
(2, 'Certificate-not-enabled', 'Meg', '18A51A0552 ', 'CSE', 'A', 'meghana9111@gmail.com', '9676899526', 'SAC2020WEB4Y4F', '2020-10-19 11:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `sno` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `rollnumber` varchar(220) NOT NULL,
  `branch` varchar(150) NOT NULL,
  `Training` varchar(225) NOT NULL,
  `club` varchar(220) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`sno`, `name`, `rollnumber`, `branch`, `Training`, `club`, `datm`) VALUES
(1, 'Meg', '18a51a0552', 'CSE', 'Event-1', 'DevelopersClub', '2020-10-18 14:31:31'),
(2, 'jay', '515', 'CSE', 'Web Development', 'RoboticsClub', '2021-01-29 04:10:42'),
(3, 'jay', '515', 'CSE', 'Web Development', 'RoboticsClub', '2021-01-29 04:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `name`, `password`, `datm`) VALUES
(1, 'admin@gmail.com', 'admin', '2020-10-18 14:28:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trainees`
--
ALTER TABLE `trainees`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
