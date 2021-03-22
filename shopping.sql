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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `sno` int(11) NOT NULL,
  `category_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`sno`, `category_name`) VALUES
(2, 'Birthday'),
(3, 'Friendship Day'),
(16, 'jay'),
(1, 'Marriage');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `sno` int(11) NOT NULL,
  `company_name` varchar(225) NOT NULL,
  `company_tagline` varchar(225) NOT NULL,
  `password` varchar(200) NOT NULL,
  `company_logo` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`sno`, `company_name`, `company_tagline`, `password`, `company_logo`, `datm`) VALUES
(1, 'CAVE SHOPPING', '1st Quantity', 'jaya', 'download.jfifCAVE SHOPPING.jfif', '2020-08-03 09:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `sno` int(11) NOT NULL,
  `item_name` varchar(225) NOT NULL,
  `item_caption` varchar(225) NOT NULL,
  `item_cost` int(11) NOT NULL,
  `item_category` varchar(225) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1,
  `item_image` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`sno`, `item_name`, `item_caption`, `item_cost`, `item_category`, `item_status`, `item_image`, `datm`) VALUES
(1, 'jay', 'jay', 0, '1', 1, 'jay9680.jfif', '2020-08-02 07:14:28'),
(2, 'jay', 'jay', 0, '1', 1, 'jay6215.jfif', '2020-08-02 07:17:00'),
(3, 'jay', 'jay', 0, '1', 1, 'jay6130.jfif', '2020-08-02 07:17:25'),
(4, 'jay', 'jay', 0, '1', 1, 'jay1850.jfif', '2020-08-02 07:17:45'),
(5, 'jay', 'jay', 0, '1', 1, 'jay2975.jfif', '2020-08-02 07:25:31'),
(6, 'jay', 'jay', 0, '1', 1, 'jay2466.jfif', '2020-08-02 07:27:07'),
(7, 'jay', 'jay', 0, '1', 1, 'jay6502.jfif', '2020-08-02 07:54:03'),
(8, '1', 'jay', 0, '', 1, '', '2020-08-02 10:26:40'),
(9, '', 'jay', 0, '', 1, '', '2020-08-02 10:27:31'),
(10, '', 'jay', 0, '', 1, '', '2020-08-02 10:28:03'),
(11, '', 'jay', 0, '', 1, '', '2020-08-02 10:29:34'),
(12, '', 'jay', 0, '', 1, '', '2020-08-02 10:30:24'),
(13, '', 'jay', 0, '', 1, '', '2020-08-02 10:32:46'),
(14, 'update_password_sp', 'jay', 3, '3', 1, 'update_password_sp0641.jfif', '2020-08-02 12:28:04'),
(15, 'update_password_sp', 'jay', 3, '3', 1, 'Screenshot (191).png_update_password_sp.png', '2020-08-02 12:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `item` varchar(225) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `quantity` varchar(11) NOT NULL,
  `total_ammount` varchar(11) NOT NULL,
  `advance` varchar(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `Address` mediumtext NOT NULL,
  `category` varchar(50) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `name`, `user_name`, `password`, `phone`, `email`, `Address`, `category`, `datm`) VALUES
(1, 'jay', 'gotetijayachandra@gmail.com', 'jay', '9491694195', 'gotetijayachandra@gm', 'gotetijayachandra@gmail.comgotetijayachandra@gmail.comgotetijayachandra@gmail.com', 'admin', '2020-08-02 14:57:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
