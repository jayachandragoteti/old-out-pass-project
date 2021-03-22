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
-- Database: `e-shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `sno` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `area` varchar(200) NOT NULL,
  `delivery_charges` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`sno`, `city`, `area`, `delivery_charges`, `datm`) VALUES
(1, 8, 'VZM', 50, '2020-10-30 12:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `sno` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`sno`, `product`, `customer`, `quantity`, `datm`) VALUES
(1, 1, 23, 5, '2020-10-31 16:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`sno`, `name`, `datm`) VALUES
(1, 'Nightsuits', '2020-10-31 10:02:11'),
(2, 'Kurta Sets', '2020-10-31 10:08:42'),
(3, 'Sarees', '2020-10-31 10:13:26'),
(4, 'Tshirts', '2020-10-31 10:15:59'),
(5, 'Handbags', '2020-10-31 10:17:39'),
(6, 'PEN', '2021-01-13 11:58:57'),
(7, 'PENS', '2021-01-13 11:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `admin` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`sno`, `name`, `admin`, `status`, `datm`) VALUES
(8, 'VIZAYANAGARAM', 17, 1, '2020-10-23 10:55:02'),
(9, 'SRIKAKULAM', 24, 1, '2020-10-26 04:55:34'),
(10, 'VISAKAPATNAM', 25, 1, '2020-10-26 06:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `number` varchar(150) NOT NULL,
  `alt_number` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pincode` int(50) NOT NULL,
  `address` mediumtext NOT NULL,
  `coustomer_sno` int(11) NOT NULL,
  `product_sno` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `payment_method` int(5) NOT NULL,
  `payment_status` varchar(150) NOT NULL,
  `delivery_charges` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `delivery_status` varchar(150) NOT NULL,
  `order_date` varchar(200) NOT NULL,
  `transaction_id` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sno`, `fname`, `lname`, `number`, `alt_number`, `email`, `pincode`, `address`, `coustomer_sno`, `product_sno`, `product_quantity`, `payment_method`, `payment_status`, `delivery_charges`, `total_amount`, `delivery_status`, `order_date`, `transaction_id`, `datm`) VALUES
(1, 'jay', 'Jayachandra', '9880810616', '9880810616', 'gotetijayachandra@gmail.com', 531034, 'gotetijayachandra@gmail.comgotetijayachandra@gmail.comgotetijayachandra@gmail.com', 23, 1, 1, 0, 'Pending', 40, 439, 'In Progress', '2020-11-01 10:12:25', '0000000000', '2020-11-01 04:42:25'),
(2, 'jay', 'Jayachandra', '9880810616', '9880810616', 'gotetijayachandra@gmail.com', 531034, 'gotetijayachandra@gmail.comgotetijayachandra@gmail.comgotetijayachandra@gmail.com', 23, 1, 1, 1, 'Pending', 40, 439, 'In Progress', '2020-11-01 10:14:04', '0000000000', '2020-11-01 04:44:04'),
(3, 'jay', 'Jayachandra', '9880810616', '9880810616', 'gotetijayachandra@gmail.com', 531034, 'gotetijayachandra@gmail.comgotetijayachandra@gmail.comgotetijayachandra@gmail.com', 23, 1, 5, 1, 'Pending', 40, 2035, 'In Progress', '2021-01-23 09:24:38', '0000000000', '2021-01-23 03:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` mediumtext NOT NULL,
  `cost` int(11) NOT NULL,
  `material` varchar(225) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `size` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `image` varchar(225) NOT NULL,
  `status` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`sno`, `name`, `description`, `cost`, `material`, `category`, `subCategory`, `size`, `gender`, `image`, `status`, `seller`, `city`, `quantity`, `datm`) VALUES
(1, 'Elite Fancy Women Slingbags', 'Printed Elite Fancy Women Slingbags', 399, ' Polyester', 5, 6, 'None', 'Female', 'elite fancy women slingbags871788.jpeg', 1, 1, 8, 50, '2020-10-31 10:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sno` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sno`, `name`, `city`, `status`, `datm`) VALUES
(1, 20, 8, 1, '2020-10-23 13:09:42'),
(2, 21, 8, 1, '2020-10-23 13:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `sno` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`sno`, `name`, `caption`, `logo`, `favicon`, `datm`) VALUES
(1, 'CAVE SHOPPING', 'CAVE SHOPPING', 'logo - Copy.png', 'favicon.png', '2020-10-20 05:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `sno` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `category` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`sno`, `name`, `category`, `datm`) VALUES
(1, 'Short Sleeve', 1, '2020-10-31 10:02:30'),
(2, 'Kurta With Bottomwear', 2, '2020-10-31 10:09:03'),
(3, 'Sarees', 3, '2020-10-31 10:13:53'),
(4, 'Long Sleeves', 4, '2020-10-31 10:16:15'),
(5, 'Floral', 5, '2020-10-31 10:17:57'),
(6, 'Polyester', 5, '2020-10-31 10:19:24'),
(7, 'Printed', 5, '2020-10-31 10:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(225) DEFAULT NULL,
  `lname` varchar(225) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `password` varchar(222) NOT NULL,
  `otp` varchar(225) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `fname`, `lname`, `phone`, `email`, `address`, `pincode`, `category`, `password`, `otp`, `verified`, `datm`) VALUES
(1, 'main', 'admin', '', 'mainadmin@gmail.com', 'mainadmin@gmail.com', 531034, 4, 'mainadmin@gmail.com', '0', 1, '2020-10-22 16:39:17'),
(17, '1st city', 'admin', '0000000000', '1stcityadmin@gmail.com', '1stcityadmin@gmail.com', NULL, 3, '1stcityadmin@gmail.com', '0', 1, '2020-10-23 10:55:02'),
(20, '1st', 'seller', '0899999', '1stseller@gmail.com', '1stseller@gmail.com', NULL, 2, '1stseller@gmail.com', '0', 1, '2020-10-23 13:09:42'),
(21, '2nd ', 'seller', '798888888888', '2ndseller@gmail.com', '2ndseller@gmail.com', 531034, 2, '2ndseller@gmail.com', '0', 1, '2020-10-23 13:54:56'),
(23, 'jay', 'gotetin', '9880810616', 'gotetijayachandra@gmail.com', 'gotetijayachandra@gmail.comgotetijayachandra@gmail.comgotetijayachandra@gmail.com', 531034, 1, 'gotetijayachandra@gmail.com', '78fbbd87c56cedc68a675d0df9896a09', 0, '2020-10-23 16:41:19'),
(24, 'jay', 'admin', '6777777777775', '2ndcityadmin@gmail.com', '2ndcityadmin@gmail.com', 0, 3, '2ndcityadmin@gmail.com', '0', 1, '2020-10-26 04:55:34'),
(25, 'jay', 'admin', '677777s7777775', '3rdcityadmin@gmail.com', '3rdcityadmin@gmail.com', 531034, 3, '3rdcityadmin@gmail.com', '0', 1, '2020-10-26 06:02:12'),
(53, NULL, NULL, '9491694195', 'gotetijaya@gmail.com', NULL, 531034, 1, 'gotetijaya@gmail.com', 'f79e67f46500a56722984a40941d1adc', 0, '2020-10-28 05:27:22'),
(54, NULL, NULL, 'jayachandramohan2001@gmail.com', 'jayachandramohan2001@gmail.com', NULL, 531034, 1, 'jayachandramohan2001@gmail.com', 'b0f101e14c373b889440050d1a80904e', 0, '2020-10-28 16:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `sno` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`sno`, `product`, `customer`, `datm`) VALUES
(1, 1, 23, '2020-10-31 17:52:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
