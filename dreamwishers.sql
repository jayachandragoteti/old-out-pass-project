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
-- Database: `dreamwishers`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_guests`
--

CREATE TABLE `active_guests` (
  `ip` varchar(15) NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_guests`
--

INSERT INTO `active_guests` (`ip`, `timestamp`) VALUES
('::1', 1596872892);

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

CREATE TABLE `active_users` (
  `username` varchar(30) NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `userlevel` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL,
  `parent_directory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `userid`, `userlevel`, `email`, `timestamp`, `parent_directory`) VALUES
('admin', '87b239766706eb7a0940fdca41e862f4', '9fae4bb48acd00e864b6577f3e7ec6df', 9, 'drmwishers@gmail.com', 1522930847, 'admin'),
('coimbatore', '3601e469065cf2f99691c0cb1aff8dff', '55717d0aa66332552c481eb2c6dd0e23', 8, 'mdbasha0110@gmail.com', 1522054572, 'admin'),
('hyderabad', '1f8f78fe5d42921c2cd8c6a4251ee332', '0', 8, 'mdbasha0110@gmail.com', 1517236748, 'admin'),
('kadapa', 'e373a9be7afbfa19aa17eaa54f19af88', 'ad91116e45a469d321a0980c3b4d8ea0', 8, 'mdbasha0110@gmail.com', 1518325718, 'admin'),
('kakinada', '51ba0a86e8d6e96106f9a405a3743528', 'eed4c4d9e9e54911698ae2637e817440', 8, 'mdbasha0110@gmail.com', 1519055567, 'admin'),
('rajahmundry', '3dc67537565803ae9a68ab8ae3aa8329', '0', 8, 'mdbasha0110@gmail.com', 1517236620, 'admin'),
('srikakulam', 'f650cc3dd56d484fd534ec149ae9647b', '80bc10ae3bf22263eca7873f1fe98a97', 8, 'mdbasha0110@gmail.com', 1517075082, 'admin'),
('vijayawada', '243bd1ce0387f18005abfc43b001646a', 'c1153d1fa18ad33b6adb415aed9b298f', 8, 'mdbasha0110@gmail.com', 1518254418, 'admin'),
('visakhapatnam', '6599eff0d5d961e78a0e8501333b3949', '18ab9d7c8417ae95197f4bbd782c85d4', 8, 'mdbasha0110@gmail.com', 1522323041, 'admin'),
('vizianagaram', '6e2d3a91245003d19c229f9da9bc830b', 'c3fa12c4f97bda0fb41fccb84f5bca9e', 8, 'mdbasha0110@gmail.com', 1522930873, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`) VALUES
(16, 'vizianagaram'),
(17, 'Visakhapatnam'),
(18, 'Hyderabad'),
(20, 'Srikakulam'),
(21, 'Rajahmundry'),
(22, 'Vijayawada'),
(23, 'Kakinada'),
(24, 'Guntur'),
(25, 'Kadapa'),
(27, 'Tirupati'),
(34, 'Kurnool'),
(36, 'Nellore'),
(37, 'Coimbatore'),
(40, 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `coimbatore`
--

CREATE TABLE `coimbatore` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `select` varchar(255) NOT NULL,
  `textarea` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `mobile`, `address`, `select`, `textarea`) VALUES
(1, 'tester', 'test@tester.test', '9999999999', 'my address', 'customer', 'hie this is test'),
(2, 'tester', 'test@tester.test', '9876543210', 'my address', 'Vendor', 'hai this is test'),
(3, 'Md basha', 'mdbasha0110@gmail.com', '9182928844', 'vizianagaram', 'customer', 'I am looking for more surprises which can be unique. my budget is 1500. tell me which surprise could better in this range.'),
(4, 'jhjgjhgj', 'mdbasha0110@gmail.com', '9010163846', 'vzm', 'customer', 'jhgjgjkhgjhgjhgjhgjgh');

-- --------------------------------------------------------

--
-- Table structure for table `customizations`
--

CREATE TABLE `customizations` (
  `id` bigint(255) NOT NULL,
  `customization_product` varchar(2555) NOT NULL,
  `customization_name` varchar(2555) NOT NULL,
  `city` text NOT NULL,
  `value` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customizations`
--

INSERT INTO `customizations` (`id`, `customization_product`, `customization_name`, `city`, `value`) VALUES
(1, 'cake', 'eggless', 'vizianagaram', 80),
(2, 'cake', 'flavour.mango', 'vizianagaram', 120),
(3, 'cake', 'flavour.vanilla', 'vizianagaram', 130),
(4, 'cake', 'flavour.strawberry', 'vizianagaram', 100),
(5, 'cake', 'eggless', 'Kakinada', 120),
(7, 'cake', 'flavour.mango', 'Kakinada', 100),
(8, 'cake', 'flavour.butterscotch', 'Kakinada', 150),
(9, 'cake', 'eggless', 'Srikakulam', 100),
(12, 'cake', 'flavour.Butterscotch', 'vizianagaram', 100),
(13, 'cake', 'flavour.Butterscotch', 'Srikakulam', 100);

-- --------------------------------------------------------

--
-- Table structure for table `delhi`
--

CREATE TABLE `delhi` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guntur`
--

CREATE TABLE `guntur` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guntur`
--

INSERT INTO `guntur` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hyderabad`
--

CREATE TABLE `hyderabad` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hyderabad`
--

INSERT INTO `hyderabad` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kadapa`
--

CREATE TABLE `kadapa` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kadapa`
--

INSERT INTO `kadapa` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kakinada`
--

CREATE TABLE `kakinada` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kakinada`
--

INSERT INTO `kakinada` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kurnool`
--

CREATE TABLE `kurnool` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurnool`
--

INSERT INTO `kurnool` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nellore`
--

CREATE TABLE `nellore` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nellore`
--

INSERT INTO `nellore` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userimage` varchar(500) NOT NULL,
  `addons` varchar(20000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `products` text NOT NULL,
  `total` int(11) NOT NULL,
  `address` text NOT NULL,
  `area` varchar(55) NOT NULL,
  `delivery` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `paystat` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `occasion` varchar(2555) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userimage`, `addons`, `name`, `email`, `mobile`, `products`, `total`, `address`, `area`, `delivery`, `userid`, `paystat`, `delivery_date`, `occasion`, `datetime`, `status`, `city`) VALUES
(2, 'reciever2.png', 'nio', 'Mukesh Kalaga', 'kalagamukesh@gmail.com', '7661959689', '[{\"id\":1114,\"name\":\"Women', 749, '1-19-1,ramalayam street, sree ram nagar', 'temp', 'midnight', 2, 2, '2018-12-27', 'bday', '2018-01-21 19:48:51', 2, 'Kakinada'),
(6, 'reciever6.png', 'no', 'Mukesh Kalaga', 'kalagamukesh@gmail.com', '7661959689', '[{&quot;id&quot;:1114,&quot;name&quot;:&quot;Women\'s t shirt&quot;,&quot;summary&quot;:&quot;women\'s t shirt&quot;,&quot;price&quot;:&quot;100&quot;,&quot;quantity&quot;:2,&quot;image&quot;:&quot;images/prod20.png&quot;},{&quot;id&quot;:1117,&quot;name&quot;:&quot;men\'s t shirt&quot;,&quot;summary&quot;:&quot;Size- M,L,XL,XXL&quot;,&quot;price&quot;:&quot;150&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod1115.jpg&quot;}]', 649, '1-19-1,ramalayam street, sree ram nagar', 'temp', 'midnight', 2, 2, '2018-01-25', 'bday', '2018-01-21 19:39:05', 1, 'Kakinada'),
(7, 'reciever7.jpg', 'nothing', 'Md basha', 'drmwishers@gmail.com', '9182928844', '[{&quot;id&quot;:1117,&quot;name&quot;:&quot;men\'s t shirt&quot;,&quot;summary&quot;:&quot;Size- M,L,XL,XXL&quot;,&quot;price&quot;:&quot;150&quot;,&quot;quantity&quot;:&quot;2&quot;,&quot;image&quot;:&quot;images/prod1115.jpg&quot;}]', 360, 'vizianagaram', 'Gajularega', 'standard', 3, 2, '2018-01-25', 'birthday', '2018-01-21 19:48:36', 2, 'vizianagaram'),
(8, 'reciever8.png', 'wefwefwefwef', 'Mukesh Kalaga', 'kalagamukesh@gmail.com', '7661959689', '[{&quot;id&quot;:246,&quot;name&quot;:&quot;Personalised Magic mug&quot;,&quot;summary&quot;:&quot;Magic mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;price&quot;:&quot;490&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod13.png&quot;},{&quot;id&quot;:247,&quot;name&quot;:&quot;Teddy bear&quot;,&quot;summary&quot;:&quot;20 inches height&quot;,&quot;price&quot;:&quot;450&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod14.jpg&quot;},{&quot;id&quot;:242,&quot;name&quot;:&quot;Chocolate cake&quot;,&quot;summary&quot;:&quot;1 kg&quot;,&quot;price&quot;:&quot;600&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod9.png&quot;},{&quot;id&quot;:245,&quot;name&quot;:&quot;Personalised white mug&quot;,&quot;summary&quot;:&quot;White mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;price&quot;:&quot;160&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod12.png&quot;},{&quot;id&quot;:244,&quot;name&quot;:&quot;Fresh fruit cake&quot;,&quot;summary&quot;:&quot;1 kg&quot;,&quot;price&quot;:&quot;750&quot;,&quot;quantity&quot;:7,&quot;image&quot;:&quot;images/prod11.jpeg&quot;},{&quot;id&quot;:1118,&quot;name&quot;:&quot;Analog watch&quot;,&quot;summary&quot;:&quot;Stylish watch&quot;,&quot;price&quot;:&quot;400&quot;,&quot;quantity&quot;:2,&quot;image&quot;:&quot;images/prod1118.png&quot;}]', 8109, '1-19-1,ramalayam street, sree ram nagar', 'Kothagraharam', 'midnight', 2, 2, '2018-12-27', 'bday', '2018-01-21 19:48:43', 2, 'vizianagaram'),
(10, 'reciever10.png', 'no', 'Mukesh Kalaga', 'kalagamukesh@gmail.com', '7661959689', '[{&quot;id&quot;:243,&quot;name&quot;:&quot;Chocolate caramel cake&quot;,&quot;summary&quot;:&quot;1 kg&quot;,&quot;price&quot;:&quot;700&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod10.jpg&quot;},{&quot;id&quot;:244,&quot;name&quot;:&quot;Fresh fruit cake&quot;,&quot;summary&quot;:&quot;1 kg&quot;,&quot;price&quot;:&quot;750&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod11.jpeg&quot;},{&quot;id&quot;:245,&quot;name&quot;:&quot;Personalised white mug&quot;,&quot;summary&quot;:&quot;White mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;price&quot;:&quot;160&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod12.png&quot;},{&quot;id&quot;:1111,&quot;name&quot;:&quot;Customized T shirt&quot;,&quot;summary&quot;:&quot;Colours-Green, red, blue, white   Size- M,L,XL,XXL &quot;,&quot;price&quot;:&quot;350&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod21.png&quot;},{&quot;id&quot;:255,&quot;name&quot;:&quot;Pretty look watch&quot;,&quot;summary&quot;:&quot;Product Detail&quot;,&quot;price&quot;:&quot;400&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod19.png&quot;},{&quot;id&quot;:247,&quot;name&quot;:&quot;Teddy bear&quot;,&quot;summary&quot;:&quot;20 inches height&quot;,&quot;price&quot;:&quot;450&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod14.jpg&quot;},{&quot;id&quot;:246,&quot;name&quot;:&quot;Personalised Magic mug&quot;,&quot;summary&quot;:&quot;Magic mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;price&quot;:&quot;490&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod13.png&quot;},{&quot;id&quot;:242,&quot;name&quot;:&quot;Chocolate cake&quot;,&quot;summary&quot;:&quot;1 kg&quot;,&quot;price&quot;:&quot;600&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod9.png&quot;},{&quot;id&quot;:1113,&quot;name&quot;:&quot;wall poster surprise&quot;,&quot;summary&quot;:&quot;a poster displayed at desired place&quot;,&quot;price&quot;:&quot;30&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod20.png&quot;},{&quot;id&quot;:1114,&quot;name&quot;:&quot;Women\'s t shirt&quot;,&quot;summary&quot;:&quot;women\'s t shirt&quot;,&quot;price&quot;:&quot;100&quot;,&quot;quantity&quot;:2,&quot;image&quot;:&quot;images/prod20.png&quot;},{&quot;id&quot;:1117,&quot;name&quot;:&quot;men\'s t shirt&quot;,&quot;summary&quot;:&quot;Size- M,L,XL,XXL&quot;,&quot;price&quot;:&quot;150&quot;,&quot;quantity&quot;:3,&quot;image&quot;:&quot;images/prod1115.jpg&quot;},{&quot;id&quot;:1118,&quot;name&quot;:&quot;Analog watch&quot;,&quot;summary&quot;:&quot;Stylish watch&quot;,&quot;price&quot;:&quot;400&quot;,&quot;quantity&quot;:2,&quot;image&quot;:&quot;images/prod1118.png&quot;}]', 5440, '1-19-1,ramalayam street, sree ram nagar', 'Kothagraharam', 'standard', 2, 2, '2018-01-24', 'Birthday', '2018-02-15 17:57:08', 2, 'Vizianagaram'),
(15, 'reciever15.jpg', 'surprise ', 'Md basha', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:247,&quot;name&quot;:&quot;Teddy bear&quot;,&quot;summary&quot;:&quot;20 inches height&quot;,&quot;price&quot;:&quot;450&quot;,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod14.jpg&quot;}]', 550, '15-151, jagannadh nagar, vizianagaram.', 'Phool bagh', 'standard', 12, 2, '1995-10-01', 'birthday', '2018-02-15 17:58:20', 1, 'VizIanagaram'),
(43, '', 'Mention the occasion on the cake and deliver the cake by morning 10.30', 'saran kumar', 'kaverkonan@gmail.com', '7013459535', '[{\"id\":1137,\"name\":\"Strawberry cake\",\"summary\":\"weight- 1 Kg\",\"customization\":{},\"category\":\"strawberry cakes pastries birthday anniversary wedding\",\"price\":650,\"quantity\":1,\"image\":\"images/prod1137.jpg\"}]', 720, '1-2-5, Teegala Veedhi, Cantonment, Vizianagaram', 'City limits', 'standard', 23, 2, '2018-02-12', '25th Marriage Anniversery', '2018-02-09 12:34:50', 1, 'vizianagaram'),
(44, '', 'need fast delivery', 'Md basha', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:1120,&quot;name&quot;:&quot;Red roses bouquet&quot;,&quot;summary&quot;:&quot;12 Red roses with perfect packing&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;flowers birthday anniversary wedding get well soon&quot;,&quot;price&quot;:300,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod249.jpg&quot;}]', 300, '15-151, jagannadh nagar, vizianagaram.', 'temp', 'standard', 12, 2, '2018-02-14', 'birthday', '2018-02-09 11:32:35', 1, 'Kakinada'),
(45, '', '', 'Md basha', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:246,&quot;name&quot;:&quot;Personalised Magic mug&quot;,&quot;summary&quot;:&quot;Magic mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;Personalised all gifts for birthday wedding anniversary getwell soon good luck&quot;,&quot;price&quot;:399,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod13.png&quot;}]', 479, '15-151, jagannadh nagar, vizianagaram.', 'City limits', '', 12, 2, '2018-03-04', '', '2018-03-02 11:42:46', 1, 'Visakhapatnam'),
(46, '', 'surprise ', 'gowtam', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:1180,&quot;name&quot;:&quot;Rotating cube&quot;,&quot;summary&quot;:&quot;Product type - Customization &lt;br&gt;Revolving.&lt;br&gt;Number of Images - 6.&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;Personalised valentines day cube  Birthday wedding anniversary gifts&quot;,&quot;price&quot;:460,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod1180.jpg&quot;}]', 829, 'jagannadh nagar', 'City limits', 'midnight', 12, 0, '2018-04-06', 'birthday', '2018-03-02 11:50:22', 0, 'vizianagaram'),
(47, '', '', 'gowtam', 'goutam.sandy25@gmail.com', '8341069771', '[{&quot;id&quot;:245,&quot;name&quot;:&quot;Personalised white mug&quot;,&quot;summary&quot;:&quot;White mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;Personalised mug all gifts for birthday anniversary getwell soon good luck&quot;,&quot;price&quot;:250,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod12.png&quot;}]', 250, 'hyderabad', 'temp', 'standard', 0, 0, '2018-03-06', 'birthday', '2018-03-02 11:53:19', 0, 'Hyderabad'),
(48, '', '', 'Md basha', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:1221,&quot;name&quot;:&quot;Strawberry flavored cake&quot;,&quot;summary&quot;:&quot;Weight - 0.5 kg&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;Strawberry cake pastries regular cakes&quot;,&quot;price&quot;:299,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod1221.png&quot;}]', 369, '15-151, jagannadh nagar, vizianagaram.', 'City limits', 'standard', 12, 2, '2018-03-10', '', '2018-03-09 16:46:07', 0, 'vizianagaram'),
(49, '', '', 'Md basha', 'mdbasha0110@gmail.com', '9010163846', '[{&quot;id&quot;:1149,&quot;name&quot;:&quot;Personalized stone plaque&quot;,&quot;summary&quot;:&quot;Product type - Square plaque with stand.&lt;br&gt;Material - Stone&quot;,&quot;customization&quot;:{},&quot;category&quot;:&quot;Personalised gifts valentines day birthday wedding anniversary&quot;,&quot;price&quot;:599,&quot;quantity&quot;:1,&quot;image&quot;:&quot;images/prod1149.jpg&quot;}]', 679, '15-151, jagannadh nagar, vizianagaram.', 'City limits', 'standard', 12, 2, '2018-03-31', '', '2018-03-29 11:18:33', 0, 'Visakhapatnam');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` varchar(2000) NOT NULL,
  `customizations` varchar(2555) NOT NULL DEFAULT '[]',
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `longName` varchar(500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `actual` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `vizianagaram` int(11) NOT NULL DEFAULT 0,
  `Visakhapatnam` int(11) NOT NULL DEFAULT 0,
  `Hyderabad` int(11) NOT NULL DEFAULT 0,
  `Srikakulam` int(11) NOT NULL DEFAULT 0,
  `Rajahmundry` int(11) NOT NULL DEFAULT 0,
  `Vijayawada` int(11) NOT NULL DEFAULT 0,
  `Kakinada` int(11) NOT NULL DEFAULT 0,
  `Guntur` int(11) NOT NULL DEFAULT 0,
  `Kadapa` int(11) NOT NULL DEFAULT 0,
  `Tirupati` int(11) NOT NULL DEFAULT 0,
  `Kurnool` int(11) NOT NULL DEFAULT 0,
  `Nellore` int(11) NOT NULL DEFAULT 0,
  `Coimbatore` int(11) NOT NULL DEFAULT 0,
  `Delhi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `customizations`, `image`, `name`, `longName`, `description`, `actual`, `price`, `vizianagaram`, `Visakhapatnam`, `Hyderabad`, `Srikakulam`, `Rajahmundry`, `Vijayawada`, `Kakinada`, `Guntur`, `Kadapa`, `Tirupati`, `Kurnool`, `Nellore`, `Coimbatore`, `Delhi`) VALUES
(236, 'pastries black forest cakes birthday wedding anniversary', '[]', 'prod236.jpg', 'Black forest cake', '1 kg', 'Delicious black forest cake to enhance happiness in every celebration', 750, 700, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 'pastries cakes butterscotch birthday wedding anniversary', '[]', 'prod4.JPG', 'Butterscotch cake', '1 kg', 'Delicious Butterscotch cake.', 700, 650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 'pastries milky butter scotch cakes birthday wedding anniversary', '[]', 'prod5.jpg', 'Milky butterscotch', '1 kg', 'Milky butterscotch cake with pure ingredients', 650, 600, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 'pastries chocolate almond cakes birthday wedding anniversary', '[]', 'prod6.png', 'Chocolate almond cake', '1 Kg', 'Fresh delicious cake', 700, 650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 'pastries pienapple cakes birthday wedding anniversary', '[]', 'prod7.png', 'Pienapple flavored cake', '1 kg', 'Delicious fresh pienapple cake', 650, 600, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 'pastries chocolate fantasy special cakes birthday wedding anniversary', '[]', 'prod241.jpg', 'Chocolate fantasy ', '1 kg', 'Yummy Chocolate fantasy cake with high sweetness', 700, 650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 'Chocolate pastries cakes birthday wedding anniversary', '[]', 'prod9.png', 'Chocolate cake', '1 kg', 'Delicious chocolate cake to express the sweetness of love.', 700, 650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 'birthday wedding anniversary chocolate cakes pastries', '[]', 'prod10.jpg', 'Chocolate caramel cake', '1 kg', 'Delicious chocolate caramel cake', 750, 700, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 'cakes pastries birthday wedding anniversary fruit cake', '[]', 'prod244.jpg', 'Fresh fruit cake', '1 kg', 'Fresh delicious fruit cake', 800, 750, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 'Personalised mug all gifts for birthday anniversary getwell soon good luck', '[]', 'prod12.png', 'Personalised white mug', 'White mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com', 'White mug With beautiful custom design', 300, 250, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 'Personalised all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod13.png', 'Personalised Magic mug', 'Magic mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com', 'customized magic mug.', 600, 399, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1120, 'flowers birthday anniversary wedding get well soon', '[]', 'prod249.jpg', 'Red roses bouquet', '12 Red roses with perfect packing', 'It is best way to Convey feel of love <br> <b>Delivery information</b><br>\r\nThe image displayed is indicative in nature. Actual product may vary in shape or design as per the availability. \r\n\r\nCertain flowers may be delivered in fully bloomed, semi-bloomed or bud stage.\r\n', 450, 300, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1121, 'flowers birthday anniversary wedding get well soon', '[]', 'prod1121.jpg', 'Red love', '14 roses packed with perfect bouquet shape to express the token of love', 'Feelings can talk with the beauty of roses<br>\r\n<b>Delivery information</b><br>The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability.\r\n\r\nCertain flowers may be delivered in fully bloomed, semi-bloomed or bud stage.<br> Fastest delivery available.', 600, 450, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1122, 'flowers birthday anniversary wedding get well soon', '[]', 'prod1122.jpg', 'Yellow roses bouquet', '12 fresh yellow roses arranged in perfect shape and design.', 'Freshness always need for any occasion.<br><b>Delivery information</b><br>The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability.\r\n\r\nCertain flowers may be delivered in fully bloomed, semi-bloomed or bud stage.<br>Fastest delivery available\r\n', 450, 320, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1123, 'flowers birthday anniversary wedding get well soon', '[]', 'prod1123.jpg', 'Extra freshness ', 'A beautiful arrangement of red and yellow roses wrapped in a perfect packing with ribbon', 'Fresh roses which can spread fresh impressions<br><b>Delivery information</b><br>The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability.<br>Fastest delivery available', 500, 380, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1124, 'surprises birthday anniversary wedding', '[]', 'prod1124.jpg', 'Theater surprise', 'Your wishes will be displayed on big screen with receiver images and wishes. ', 'Let your beloved one  enjoy the feel of this unique surprise on big screen<br>Call us at 8367424200 before ordering this product<br>Price varies according to the theater and movie time<br><b>Delivery information</b><br>Order has to be done before 5 days to exhibit on delivery date and time.', 5000, 2999, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1126, 'surprises birthday anniversary wedding', '[]', 'prod1126.png', 'Flash mob', '6 dancers.<br> Duration-15 minutes', 'The best way to surprise your beloved one.<br>Suddenly A person from the crowd start dancing followed by remaining dancers around the receiver. At the end of the event receiver will be presented with flowers and a gift.<br><b>Delivery information</b><br>Flash mob at Commercial locations may incur extra charges depending upon the place <br>Order has to be done before 7 days to exhibit on date and time.<br>Call us at 8367424200 before placing order', 9000, 7000, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1127, 'personalised gifts', '[]', 'prod1127.png', 'Customized T shirt', 'Size- M,L,XL,XXL.<br>Available colours- Black, Blue, White.<br>Add size and colour in additional requirements field at checkout form', 'Customize your text or photo on your favorite  t shirt.<br>Mail us your order id along with your photo or text that has to print on the t shirt .<br>Our mail id info2dreamwishers@gmail.com<br>Delivery within two days.', 490, 299, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1129, 'surprises birthday anniversary wedding', '[]', 'prod1129.png', 'Multi screen surprise', 'Surprise video or image slide show<br>quality of the video or photo should be in HD<br>Duration- upto 90 seconds', 'A video of desired wishes in multi televisions displayed at a time as soon as the receiver come in front  of it.<br>call at 8367424200 before placing this order<br><b>Delivery information</b><br>Order has to be done before three days to exhibit on date and time.<br> At the end of the event receiver will be presented with 10 rose flowers and sweet wishes', 5500, 3900, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(1132, 'vanilla cakes pastries birthday wedding anniversary ', '[\"Butterscotch\",\"Strawberry\",\"Blueberry\"]', 'prod1132.png', 'Vanilla cake', 'Weight- 1 Kg', 'Fresh cool cake with delicious sweetness.<br>Same day delivery available', 600, 550, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1133, 'cakes pineapple birthday wedding pastries ', '[\"Butterscotch\",\"Strawberry\",\"\"]', 'prod1133.jpg', 'Pineapple cake', 'weight- 1 Kg', 'Fresh custom designed cake.<br>Same day delivery available', 700, 650, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1134, 'butterscotch cakes patry  birthday annivasary wedding', '[]', 'prod1134.jpg', 'Butterscotch cake', 'weight- 1 Kg', 'Fresh cool cake with custom design.<br>Same day delivery available.', 700, 650, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1135, 'black forest valentines pastries cakes birthday wedding anniversary', '[]', 'prod1135.jpg', 'Black forest cake', 'weight- 1 Kg', 'Best cake to share the sweetness of love', 800, 750, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1136, 'Chocolate truffle  cakes pastries special cakes wedding birthday a', '[]', 'prod1136.jpg', 'Chocolate truffle cake', 'weight- 1 Kg', 'Delicious cake<br>Same day delivery available', 850, 750, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1137, 'strawberry cakes pastries birthday anniversary wedding', '[\"Pineapple\",\"Butterscotch\",\"Mango\",\"Blueberry\"]', 'prod1137.jpg', 'Strawberry cake', 'weight- 1 Kg', 'Delicious strawberry cake<br>Same day delivery available.', 750, 650, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1138, 'mango pastries cakes birthday wedding anniversary', '[\"Butterscotch\",\"Strawberry\"]', 'prod1138.jpg', 'Mango cake', 'weight- 1 Kg', 'Fresh delicious cool cake with added extra mango sweetness.', 700, 650, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1139, 'magic mugs personalised gifts birthday valentines day wedding anniversary', '[]', 'prod1139.jpg', 'Magic mug', 'Mug gets real design when hot liquid poured in it.', 'Fabulous gift for any occasion.<br><b>Delivery information</b><br>Magic mug with customized photo and text. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>We make best and unique designs on the mug.<br>Delivery within 24 Hours.', 600, 380, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1140, ' mugs personalised gifts birthday valentines day wedding anniversary', '[]', 'prod1140.jpg', 'Personalised black mug', 'Customized beautiful design with photo and text', 'Best way to make a difference.<br><b>Delivery information</b><br>Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 650, 380, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1141, 'Personalised mug all gifts for birthday anniversary getwell soon good luck', '[]', 'prod1141.jpg', 'Personalised blue mug', 'Customized beautiful design with photo and text on the mug.', 'Best way to bring a smile .<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 350, 280, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1142, 'Personalised mug all gifts for birthday anniversary getwell soon good luck', '[]', 'prod1142.png', 'Personalised yellow mug', 'Customized beautiful design with photo and text on the mug.', 'When words are not enough gift a mug to make a sweet memory .<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 350, 280, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1143, 'Personalised gifts mug all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod1143.jpg', 'Personalised red mug', 'Customized beautiful design with photo and text on the mug.', 'Best way to bring a smile .<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 350, 280, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1144, 'Personalised gifts mug all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod1144.png', 'Personalised sparkle gold mug', 'Customized beautiful design with photo and text on sparkle gold mug.', 'Unique gift to present and make receiver happy.<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 560, 390, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1145, 'Personalised gifts mug all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod1145.jpg', 'Personalised sparkle silver mug', 'Customized beautiful design with photo and text on sparkle silver mug.', 'Best way to bring a smile .<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 650, 390, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1146, 'Personalised gifts valentines daymug all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod1146.png', 'Polymer mug', 'Customized beautiful design with photo and text on the mug.<br>Product type - Unbreakable.<br>Available colours - Red, yellow,,pink,black and blue.', 'unbreakable mug to lasts memories .<br><b>Delivery information</b><br>We make best and unique designs on the mug. Mail us photo and text that has to print on mug along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 640, 385, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1147, 'Personalised gifts cushions valentines day all gifts for birthday wedding anniversary getwell soon good luck', '[]', 'prod1147.jpg', 'Personalised valentines cushion', 'Personalised heart shaped soft cushion with beautiful design', 'Best gift for valentines to share feelings with this beautiful gift .<br><b>Delivery information</b><br>We make best and unique designs on the cushion. Mail us photo and text that has to print on the pillow along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Delivery within 24 Hours.', 680, 440, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1148, 'personalised gifts birthday wedding valentines day', '[]', 'prod1148.jpg', 'wooden key chain', 'Product type - Heart shape key chain<br>Material - Wood.', 'Simple and best personalized gift to keep and use.<br>Mail us photo or text that has to print on the keychain along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.', 200, 160, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1149, 'Personalised gifts valentines day birthday wedding anniversary', '[]', 'prod1149.jpg', 'Personalized stone plaque', 'Product type - Square plaque with stand.<br>Material - Stone', 'Simple and best personalized gift to present forever .<br>We make best designs which can impress hearts.<br>Mail us photo or text that has to print on the plaque along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.', 750, 599, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1150, 'soft toys valentines day birthday  gifts wedding anniversary', '[]', 'prod1150.png', 'Cute  teddy pair', 'Soft toys', 'best gift to keep and use ', 450, 330, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1151, 'valentines day soft toys gifts birthday wedding anniversary wedding', '[]', 'prod1151.png', 'Cute Heart', 'Product type - Hanging', 'Remembers one\'s love and care.', 180, 150, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1152, 'valentines day gifts birthday wedding anniversary', '[]', 'prod1152.png', 'Glow bottle', 'product type-  blowing stars inside the bottle', 'Gives lightness when everything is dark. <br>Message on bottle- You light up my world like no body else.', 800, 699, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1153, 'valentines day birthday wedding anniversary gifts', '[]', 'prod1153.png', 'Valentines love', 'Product type - Breakable', 'Beautiful couple hand made love. Gift it when love you is not enough.', 430, 280, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1154, 'valentines day wedding anniversary gifts', '[]', 'prod1154.jpeg', 'Idol love', 'Showcase love .', 'Best gift to bring smile . Two teddy\'s under a beautiful tree. ', 700, 590, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1155, 'valentines day wedding anniversary gifts', '[]', 'prod1155.png', 'Love birds idol', 'Unique idol.', 'make moment beautiful with this natural expression love birds gift.<br>When words are not enough, give it and enjoy the feel of love.', 850, 650, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1156, 'valentines day wedding anniversary gifts', '[]', 'prod1156.png', 'Love forever', 'Product type -  unique.', 'make moment beautiful with this natural expression of love.<br>When words are not enough, give it.', 390, 280, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1157, 'Love tree', '[]', 'prod1157.png', 'Love tree', 'Beautiful product to showcase love.', 'This product can talk the beauty of love', 740, 650, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1158, 'valentines day birthday wedding anniversary gifts', '[]', 'prod1158.png', 'Showcase guitar', 'Product type -  Guitar with stand', 'Beautiful designed guitar where a girl idol dancing on middle.', 1320, 1170, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1159, 'valentines day birthday wedding anniversary gifts', '[]', 'prod1159.png', 'Teddy pair love', 'Gift Pack', 'Beautiful gift to showcase and memorize feelings.', 430, 410, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1160, 'pastries heartshape chocolate cakes birthday wedding anniversary', '[\"\"]', 'prod1160.png', 'Chocolate cake', 'Weight 1 KG<br>Fresh cool cake', 'Fresh delicious cake with excess chocolate sweetness', 750, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1161, 'pastries black forest heart shape cakes birthday wedding anniversary', '[]', 'prod1161.png', 'vanilla cake', 'Weight 1 KG<br>Fresh cool cake', 'Celebrations need this cake to make it sweet and enjoyable.', 650, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1162, 'soft toys valentines day birthday  gifts wedding anniversary', '[]', 'prod1162.png', 'Teddy love', 'Two little teddy s on a heart shaped cushion. ', 'Best gift for expressing love', 640, 490, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1163, 'valentines day wedding anniversary gifts', '[]', 'prod1163.png', 'Couple gift', 'Product type - Unbreakable.<br>Material - Fiber<br>Size - 10 cm', 'A liquid inside the fiber body to represent the glow of couple and A red flower to lighten the liquid .', 350, 298, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1164, 'soft toys valentines day birthday  gifts wedding anniversary', '[]', 'prod1164.png', 'Cutest teddy', 'A small teddy with heart symbol in hands.', 'Brings smile with its cuteness.', 290, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1165, 'Vanilla heart shape cake birthday valentines day anniversary', '[\"Butterscotch\",\"Strawberry\"]', 'prod1165.png', 'vanilla cake', 'Weight - 1 KG', 'Fresh delicious cake', 750, 600, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0),
(1166, 'combo gifts valentines day', '[]', 'prod1166.png', 'Combo gift', 'Products - One greeting card, A valentine chocolate and Fresh 1 KG vanilla cake', 'Best gift to catch the impression of your beloved one.', 1350, 1160, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1167, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1167.png', 'Personalised gift', 'Material - Ceramic', 'This is one form of best gift to bring smile  on your beloved one\'s face. Personalize your photo on this gift.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 650, 550, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1168, 'valentines day wedding anniversary gifts', '[]', 'prod1168.png', 'Love cushion', 'Product type - Hanging', 'Love can be expressed through any form as it simply expressed through pillow.', 260, 190, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1169, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1169.png', 'Wooden frame', 'Product type - Love shape Frame with back stand<br>Material - Wood', 'Personalize your photo on this gift.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 650, 560, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1170, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1170.png', 'Wooden frame', 'Product type - Love frame with back stand<br>Material - Wood', 'Personalize your photo on this gift.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 650, 560, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1171, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1171.png', 'More Love', 'Product type - Love with multiple photos on frame with back stand.<br>Material - Wood', 'Personalize your photos on this gift.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 560, 480, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1172, 'Personalised valentines day Birthday wedding  anniversary gifts', '[]', 'prod1172.png', 'Unique love', 'Product type - Love with customized photo<br>Material - Ceramic', 'Personalize your photo on this gift.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 690, 630, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1173, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1173.png', 'Express love', 'Product type - Love frame with back stand<br>Material - Wood', 'Personalize your photo on this gift and make your feel felt by your beloved one.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 720, 640, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1174, 'valentines day wedding anniversary gifts', '[]', 'prod1174.jpg', 'Love world', '<b>Product features:</b><br>-Music<br>-Couple Move Inside glass<br>-Sparkle elements to glow<br>-Glows light ', 'Unique gift to present on special occasions.', 890, 790, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1175, 'valentines day wedding anniversary gifts', '[]', 'prod1175.jpg', 'Love world', '<b>Product features:</b><br>-Music<br>-Couple Move Inside glass<br>-Sparkle elements to glow<br>-Glows light ', 'Unique gift to present on special occasions.', 890, 790, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1176, 'valentines day birthday wedding anniversary gifts', '[]', 'prod1176.jpeg', 'Unique world', '<b>Product features:</b><br>-Music<br>-Couple Move Inside glass<br>-Sparkle elements to glow<br>-Glows light ', 'Best gift to present on special occasion.', 890, 790, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1178, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1177.png', 'Wooden frame', 'Product type - Love frame with back stand<br>Material - Wood', 'Personalize your photo on this gift and make your feel felt by your beloved one.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the frame along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 690, 590, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1179, 'Personalised valentines day Birthday wedding anniversary gifts', '[]', 'prod1179.png', 'Revolving cube', 'Product type - magnetic<br>Revolving.<br>Number of Images - 6.', 'Personalize your 6 photos on this gift.Cube fixed in between magnetic fields.<br><b>Delivery information</b><br> Mail us 6 photos that have to print on the cube along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 640, 360, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1180, 'Personalised valentines day cube  Birthday wedding anniversary gifts', '[]', 'prod1180.jpg', 'Rotating cube', 'Product type - Customization <br>Revolving.<br>Number of Images - 6.', 'Personalize your 6 photos on this gift.<br><b>Delivery information</b><br> Mail us 6 photos that have to print on the cube along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 630, 460, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1181, 'new born personalised all gifts', '[]', 'prod1181.jpg', 'musical trinket box ', 'box with photo frame', 'useful to babies precious small things like mementos <br>plays delightful music <br> can remember baby\'s first step.<br> the horse shape consists of lid<br> fast delivery available<br> <b>Dimensions : box H7.5xW7xD7<br>Photo size : 6.5cmx6.5cm per slot', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1182, 'new born personalised all gifts', '[]', 'prod1182.jpg', 'musical trinket box ', 'box with photo frame', 'useful to babies precious small things like mementos <br>plays delightful music <br> can remember baby\'s first step.<br> the horse shape consists of lid<br> fast delivery available<br> <b>Dimensions : box H7.5xW7xD7<br>Photo size : 6.5cmx6.5cm per slot', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1183, 'new born personalised all gifts', '[]', 'prod1183.jpg', 'musical trinket box ', 'box with photo frame', 'useful to babies precious small things like mementos <br>plays delightful music <br> can remember baby\'s first step.<br> the horse shape consists of lid<br> fast delivery available<br> <b>Dimensions : box H7.5xW7xD7<br>Photo size : 6.5cmx6.5cm per slot', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1184, 'Personalised mobile case cover valentines day ', '[]', 'prod1184.jpg', 'Personalized mobile case ', 'Product type - Photo print on case cover<br>Availability-  All models are available. Just Add mobile model in additional requirements field at checkout form to get your product.', 'Its nice feeling to have your photo on your mobile case.Because its your\'s.<br><b>Delivery information</b><br> Mail us photo or text that has to print on the case along with order id and receiver details. Our mail id info2dreamwishers@gmail.com.<br>Fastest delivery available', 460, 380, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1185, 'Surprises', '[]', 'prod1185.png', 'We tube', 'A beautiful video making with full of wishes, fun, smiles, memories, gossips etc.<br>- All wishes together from Various places and multiple persons<br>-Unique video making<br>-Max Wishes-20<br>-Max Video duration- 15 minutes.<br> Receiver will also presented with a surprise gift from Dream wishers.', 'Its a fantastic  Idea to make Receiver\'s day most memorable and delight.<br> This video will let the receiver to memorize his/her awesome moments that had in the past. It Remains forever. Don\'t wait to give such a beautiful memory to your beloved ones.<br><b>Delivery Information</b><br> Mail us the desired video wishes,Photos or text that have to merge in the video. Our mail id info2dreamwishers@gmail.com<br> Reach us at 83674241 00 to customize it according to your thoughts.', 4100, 2499, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(1186, 'surprises', '[]', 'prod1186.png', 'Dream car', 'Gift Audi Car for 4 hours to your beloved one to make his/her day memorable for lifetime.<br>Car- Audi A4<br>Duration - up to 4 hours<br> Maximum km- 40', 'Its an awesome moment for Audi car lovers to have fantastic ride on a special day. Make your beloved one\'s day the happiest day by making his/her dream come true.', 5999, 4999, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1187, 'pastries all cakes birthday anniversary wedding', '[\"\"]', 'prod1187.jpeg', 'chocolate cake', 'weight: 1 kg   ', ' The delicious chocolate for your loved ones. <br> the cake is beautifully outlined with yummy whipped cream.  ', 750, 700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1188, 'pastries all cakes birthday anniversary ', '[\"\"]', 'prod1188.jpeg', 'red velvet cake', 'Weight : 1 kg ', 'bored with common flavors and need unmatched flavor then this will be pleasing.  <br>  Can use to serve on Valentine\'s day <br> whipped with cream on the top', 950, 900, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1189, 'pastries all cakes anniversary wedding birthday heart shape', '[\"\"]', 'prod1189.jpeg', 'red velvet cake', 'weight: 1 kg', 'the color red mainly represents LOVE. <br> Surprise your loved ones with a heart on special occasions.<br> The cake is outlined with yummy vanilla cream.', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1190, 'special cake pastries all cake birthday anniversary ', '[\"\"]', 'prod1190.jpeg', '3D Fondant cake', 'weight: 1 kg', ' 3D cake <br> Make the occasion even more special with different colored filling', 3500, 3200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1191, 'pastries all cakes birthday anniversary wedding ', '[\"\"]', 'prod1191.jpeg', 'chocolate truffle cake', 'weight: 1 kg', 'Make your day more blissful with a chocolate truffle.<br> The cake is filling with full chocolate.', 800, 750, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1192, 'pastries all cakes anniversary wedding birthday', '[\"\"]', 'prod1192.jpeg', 'banana flavored cake', 'weight 1kg', 'make the special day with the banana flavor having colorful outlining', 700, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1193, 'pastries all cake anniversary wedding birthday', '[\"\"]', 'prod1193.jpeg', 'chocolate cake', 'weight: 1 kg', 'Have the sweetest experience with chocolate.<br> Outlined with the whipped vanilla cream and chocolate and vanilla grates', 750, 700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1194, 'pastries all cake wedding anniversary birthday', '[\"\"]', 'prod1194.jpeg', 'choco almond cake', 'weight: 1 kg', 'flavored with almonds fragrance<br> outlined with the yummy chocolate cream and almonds on the top', 700, 650, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1195, 'pastries all cake birthday special', '[\"\"]', 'prod1195.jpeg', '3D cake', 'weight 3 kg', 'shaped in an pineapple and also in other decorations <br> Having a uniqueness of 3D', 2800, 2300, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1196, 'pastries all cake birthday anniversary wedding special', '[\"\"]', 'prod1196.jpeg', 'vanilla special cake', 'weight: 1kg', 'the white vanilla cake is simple and delightful. <br> simple white color is suitable who like mild flavors.<br> outlined with chocolate biscuits.', 700, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1197, 'pastries all cake birthday ', '[\"\"]', 'prod1197.jpeg', 'black currant cake', 'weight: 2kg', 'The cake consists of pure ingredients.<br>to people, who want a different kind of flavor.<br> filled with vibrant color for children.', 1700, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1198, 'pastries all cake birthday anniversary wedding', '[\"\"]', 'prod1198.jpeg', 'Pista flavored cake', 'weight: 1kg', 'The cake consists of pure ingredients.<br> With a different flavor of pista.<br> outlined with beautiful flowers with whipped cream of vanilla.', 600, 550, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1199, 'pastries all cake birthday anniversary wedding', '[\"\"]', 'prod1199.jpeg', 'black carrant', 'weight: 1kg', 'The cake consists of pure ingredients.<br> To make your day more special.<br> outlined and filled with different colors.', 700, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1200, 'all cakes pastries anniversary wedding birthday', '[\"\"]', 'prod1200.png', 'dark chocolate cake', 'weight: 1 kg', 'Delightful chocolate makes your day beautiful.<br> Delicious chocolate for your close ones. <br> Outlined with chocolate and delicious chocolate on the top.', 2000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1201, 'all cakes pastries wedding anniversary birthday', '[]', 'prod1201.png', 'chocolate truffle', 'weight: 1 kg', 'The chocolate flavor is always favored to all people.<br> The cake is outlined  with delicious chocolate and decorated with grated chocolate', 1800, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1202, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1202.png', 'chocolate truffle', 'weight: 1 kg', 'Chocolate has universal lovers.<br> Make your ones happy with delightful chocolate.<br>Decorated with grated chocolate', 1800, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1203, 'all cakes pastries birthday anniversary wedding heart shape', '[\"\"]', 'prod1203.png', 'red love', 'weight: 1 kg', 'RED represents the beautiful feeling of LOVE.<br> make your sweethearts happy with the red heart.<br> decorated with the delightful color red with red roses on the top.', 1150, 1050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1204, 'all cakes pastries birthday anniversary wedding heart shape', '[\"\"]', 'prod1204.png', 'cream delight', 'weight: 1 kg', 'Present your pure heart to your loved ones.<br> White represents Pure.<br> covered with delicious whipped vanilla cream and pink roses on the top.', 1500, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1205, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1205.png', 'Delight', 'weight: 1 kg', 'Make your and your close one\'s day delightful with this.<br> Cake with a combination to water and blue which represents like water and sky.<br>Cake is decorated with blue roses as a division creating theirs on specialty.', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1206, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1206.png', 'Strawberry cake', 'weight: 1 kg', 'A beautiful cake for the beautiful life.<br> Make your day with the sweet essence of strawberry.<br>Decorated with beautiful pink roses with yummy whipped cream.', 1100, 1050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1207, 'all cakes pastries birthday anniversary wedding heart shape', '[\"\"]', 'prod1207.png', 'red velvet cake', 'weight: 1 kg', 'Present your sweetest and wonderful heart to your ones. <br> Covered with the red color of love.<br> Show your pure love to the person you love with this simple cake', 1450, 1350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1208, 'all cakes pastries birthday anniversary wedding ', '[\"\"]', 'prod1208.png', 'theme cake', 'weight: 1 kg', 'Cake presents the theme of the occasion easily.<br> Can easily give your idea to people with the decorations on the top of the cake.', 1550, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1209, 'all cakes pastries birthday anniversary wedding ', '[\"\"]', 'prod1209.png', 'butterscotch', 'weight: 1 kg', 'The cake is made with rich butter, delicious cream and butterscotch.<br> Rich cream and crunchy nuts are the attraction for the cake.<br> Get this cake to get a treat for your taste buds.', 1150, 1050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1210, 'all cakes pastries birthday wedding special', '[\"\"]', 'prod1210.png', 'rainbow cake', 'weight: 1 kg', 'Make your dear ones colorful with the rainbow cake.<br> Each color of the cake depicts a unique specialty in the life.', 1600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1211, 'all cakes pastries birthday wedding anniversary', '[\"\"]', 'prod1211.png', 'crispy vanilla ', 'weight: 1 kg', 'Vanilla has worldwide lovers.<br> Will be fluffy, moist due to special ingredients.<br>Perfect gift for the people of mild flavors.<br>outlined with different cherries around.', 1300, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1212, 'all cakes pastries birthday wedding anniversary special', '[\"\"]', 'prod1212.png', 'fruits almond cake', 'weight: 1 kg', 'Perfectly decorated with healthy fruits and delicious almonds.<br> Filled with the delicious whipped cream. <br> contains pure and fresh ingredients.', 1600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1213, 'all cakes pastries birthday wedding anniversary special', '[\"\"]', 'prod1213.png', 'dry fruits cake', 'weight: 1 kg', 'Perfectly decorated with rich different dry fruits.<br> outlined with delightful whipped cream.<br> make your ones more happy with the different cake.', 1600, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1214, 'all cakes pastries birthday wedding anniversary ', '[\"\"]', 'prod1214.png', 'Choco vanilla cake', 'weight: 1 kg', 'Combination of chocolate and vanilla is excellent combination.<br> The cake is layered with the rich chocolate and whipped vanilla cream.<br> decorated with the beautiful roses of vanilla and the chocolate layer on the top.', 1300, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1215, 'all cakes pastries birthday wedding anniversary ', '[\"\"]', 'prod1215.png', 'Blueberry cake', 'weight: 1 kg', 'Make your taste buds happy with the different flavor of blueberry. <br> Outlined with the beautiful stars with cream and filled with blueberry cream on the top. <br> outlined with whipped cream of vanilla and blueberry.', 1500, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1216, 'all cakes pastries birthday wedding anniversary ', '[\"\"]', 'prod1216.png', 'Vanilla cake', 'weight: 1 kg', 'The simple cake with a single pink rose for simple people.<br> White color represents the pure heart. <br> make your dear ones happy with the simple vanilla cake.', 1100, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1217, 'all cakes pastries birthday wedding anniversary ', '[\"\"]', 'prod1217.png', 'Vanilla delight cake', 'weight: 1 kg', 'Make the special cake more delight with Vanilla delight cake.<br> outlined with beautiful hearts on the bottom of the cake.<br> decorated with the oreo, vanilla and chocolate wafers.', 1500, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1218, 'all cakes pastries anniversary birthday', '[\"\"]', 'prod1218.png', 'pineapple cake', 'weight:1kg', 'Make your day with yummy pineapple flavor.<br> Decorated with pink colored whipped cream in the top and delicious green cream as outline', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(1219, 'special cakes pastries photo cakes birthday wedding ', '[\"\"]', 'prod1219.png', 'Vanilla photo cake', 'weight- 1 Kg', 'Delicious and yummy cake . Its a beautiful celebration with this special cake. <br>Mail us your photo that has to make on pastry. Our mail id info2dreamwishers@gmail.com', 1200, 950, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1220, 'black forest pastry cakes for birthday anniversary', '[]', 'prod1220.png', 'Black forest cake', 'weight- 1 Kg', 'Share the sweetness of emotions with this beautiful cake.', 750, 650, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(1221, 'Strawberry cake pastries regular cakes', '[\"\"]', 'prod1221.png', 'Strawberry flavored cake', 'Weight - 0.5 kg', 'Fresh delicious strawberry flavored cake', 370, 299, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1222, 'all cakes birthday anniversary pastries wedding', '[\"\"]', 'prod1222.jpg', 'berry bleast', 'weight: 1 kg', 'have a different flavor on the special day of your and your one\'s life.', 1200, 1050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1223, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1223.png', 'blueberry cake', 'weight: 1kg', 'Make your day more special with the different flavor.<br> Decorated with grated chocolate and cherries with delicious cream on the top.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1224, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1224.jpg', 'butterscotch cake', 'weight: 1kg', 'This flavor savored by all age grouped people.<br> Topped with fresh whipped cream and the fresh fruits on the top.', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1225, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1225.jpg', 'Caramel cake', 'weight: 1kg', 'Caramel is mostly loved by children.<br>The caramel cake will take you back to the wonder and tase of that time.', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1226, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1226.png', 'Crunchy choco maltine cake', 'weight: 1kg', 'Caramel is mostly loved by children.<br>The chocolate is all time fav of the people. So cherish with both the flavors.', 1300, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1227, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1227.jpg', 'Honey Almond cake', 'weight: 1kg', 'Honey is the symbol of the love for your loved ones.<br>Topped with the fresh almonds on the cake.', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1228, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1228.jpg', 'Fruits of forest cake', 'weight: 1kg', 'Decorated with fresh fruits.<br> Loaded with the seasonal fruits on the top.<br> Surprise with the fresh fruits to your family.', 1100, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1229, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1229.jpg', 'Green apple cake', 'weight: 1kg', 'Give a different taste to the special one.', 1100, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1230, 'all cakes pastries birthday anniversary', '[\"\"]', 'prod1230.png', 'Trish coffee', 'weight: 1kg', 'Flavorful coffee cake for coffee lovers.<br> Experience the engaging flavor of caffeine.', 1100, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1231, 'all cakes pastries birthday anniversary ', '[\"\"]', 'prod1231.jpg', 'Mango cake', 'weight: 1kg', 'Make happy your taste buds with the flavor of Mango.<br> decorated with the slices of mango on the top with whipped cream.', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1232, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1232.jpg', 'passion fruit cake', 'weight: 1kg', 'Fresh cake with delicious and fresh fruits.<br> Decorated with different fruits and grated chocolate with whipped cream on the sides', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1233, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1233.jpg', 'peanut punch cake', 'weight: 1kg', 'Make special day with the peanuts and its flavor.<br> Covered with delicious whipped cream and cherries in the top of the cake.', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1234, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1234.png', 'pineapple cake', 'weight: 1kg', 'Make your special day with the pineapple flavor.<br> the cake with the base soft vanilla sponge with creme with the most demanded cakes.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1235, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1235.png', 'Raspberry cake', 'weight: 1kg', 'Bored with the normal flavors? <br> Share a unique taste with your loved ones with raspberry', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1236, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1236.jpg', 'red velvet cake  ', 'weight: 1kg', 'Red depicts Love. <br> Make your loved ones more  special with red velvet ', 1250, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1237, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1237.jpg', 'Strawberry cake  ', 'weight: 1kg', 'Strawberry syrup mixed with fresh cream will make delicious. <br> Decorated with the strawberry on the top and also whipped cream too.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1238, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1238.png', 'tiramisu cake  ', 'weight: 1kg', 'Order a classic Italian cake that has the rich flavor of coffee.<br> decorated with delicious whipped cream on the top.', 1300, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1239, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1239.jpg', 'White forest cake  ', 'weight: 1kg', 'Cake with full of the delicious whipped cream.<br> Topped with delicious seasonal fruits and some almonds.', 1000, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1240, 'all cakes pastries birthday', '[\"\"]', 'prod1240.jpg', 'Cheese cake  ', 'weight: 1kg', 'Cheese is the favorite to the children.<br> So make your kids day more special.', 1300, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1241, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1241.jpg', 'black forest cake  ', 'weight: 1kg', 'Celebrate with the beautiful cake filled with chocolate.<br> The chocolate is the most favorite dessert to all people.<br> Make your special day more special', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1242, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1242.jpg', 'Choco Almond cake  ', 'weight: 1kg', 'Add the more delicious flavor of almonds with chocolate.<br>Topped with delicious almonds on the top.', 1100, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1243, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1243.jpg', 'Choco Almond cake  ', 'weight: 1kg', 'The delicious combination of chocolate and butterscotch.<br>Decorated with pieces of chocolate and butterscotch.', 1000, 1100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1244, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1244.jpg', 'Choco Caramel cake  ', 'weight: 1kg', 'cake filled with the delicious caramel taste. <br> Decorated with the chocolate around the cake and wafers on the top.', 1200, 1250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1245, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1245.jpg', 'Choco Mousse cake  ', 'weight: 1kg', 'The cake consists of delicious chocolate for the chocolate lovers.', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1246, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1246.jpg', 'Choco Orange cake  ', 'weight: 1kg', 'Combination of the chocolate and orange.<br> make your day more delicious with orange flavor.', 900, 850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1247, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1247.jpg', 'Choco rain cake  ', 'weight: 1kg', 'Shower your love and wishes on your loved ones with chocolates.', 1050, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1248, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1248.jpg', 'Choco raspberry cake  ', 'weight: 1kg', ' Each of the four layers of moist, chocolate cake is filled with chocolate mousse and raspberry puree.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1249, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1249.jpg', 'Choco strawberry cake  ', 'weight: 1kg', 'Combination of yummy strawberry and delicious chocolate for your loved ones.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1250, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1250.jpg', 'Choco truffle cake  ', 'weight: 1kg', 'Make your day more blissful with a chocolate truffle.<br>\r\nThe cake is filling with full chocolate.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1251, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1251.jpg', 'Choco vanilla cake  ', 'weight: 1kg', 'Combination of vanilla and chocolate.<br> vanilla essence is the all-time favorite.', 1000, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1252, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1252.jpg', 'Choco walnut cake  ', 'weight: 1kg', 'Cherish your day with delicious walnut taste.', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1253, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1253.jpg', 'Ferraro Rocher cake  ', 'weight: 1kg', 'To the people to hardcore lovers of the chocolate present, this to your sweethearts.', 1500, 1350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1254, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1254.jpg', 'kitkat cake  ', 'weight: 1kg', 'Make happier with KitKat.<br> The wafers will be more delicious ', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1255, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1255.jpg', 'Mocha cake  ', 'weight: 1kg', 'A sublime treat for all coffee lovers, this cake is a perfect surprise needing no occasion at all.', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1256, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1256.jpg', 'Oreo cake  ', 'weight: 1kg', 'The cake with the Oreo flavor. <br> Topped with oreo and chocolate wafers.', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1257, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1257.jpg', 'Snicker treat cake  ', 'weight: 1kg', 'Have a snicker taste and caramel taste with delicious nuts', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1258, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1258.jpg', 'choco caramel cake', 'weight: 1 kg', 'cake filled with the delicious caramel taste.', 1200, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1259, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1259.jpg', 'choco walnut cake', 'weight: 1 kg', 'Enjoy your day with walnut essence', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1260, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1260.jpg', 'choco mousse cake', 'weight: 1 kg', 'delicious chocolate for the chocolate lovers', 1200, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(1261, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1261.jpg', 'Chocolate Truffle Cake', 'weight: 1kg', 'A treat for the chocolate lovers with freshly baked chocolate truffle cake.<br> There will be some changes in the decorations of cake.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` (`id`, `category`, `customizations`, `image`, `name`, `longName`, `description`, `actual`, `price`, `vizianagaram`, `Visakhapatnam`, `Hyderabad`, `Srikakulam`, `Rajahmundry`, `Vijayawada`, `Kakinada`, `Guntur`, `Kadapa`, `Tirupati`, `Kurnool`, `Nellore`, `Coimbatore`, `Delhi`) VALUES
(1262, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1262.jpg', 'Blackforest Cake', 'weight: 1 kg', 'Share the sweetness of emotions with this beautiful cake. <br>Make your day more blissful with a chocolate truffle.<br>\r\nThe cake is filling with full chocolate.<br> There may be some change in the decoration of cake with the comparison to the pic.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1263, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1263.jpg', 'Whiteforest  Cake', 'weight: 1 kg', 'Cake with full of the delicious whipped cream.<br>\r\nTopped with delicious seasonal fruits and some almonds.<br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 900, 750, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1264, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1264.jpg', 'Butterscotch  Cake', 'weight: 1 kg', 'This flavor savored by all age grouped people.<br>\r\nTopped with fresh whipped cream and the fresh fruits on the top.<br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1265, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1265.jpg', 'Vanilla Cake', 'weight: 1 kg', 'The white vanilla cake is simple and delightful. \r\nSimple white color is suitable who like mild flavors.\r\n<br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1266, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1266.jpg', 'Strawberry Cake', 'weight: 1 kg', 'Strawberry syrup mixed with fresh cream will make delicious.<br> \r\nDecorated with the fresh strawberries on the top and also whipped cream too. \r\n<br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1267, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1267.png', 'Coffee Cake', 'weight: 1 kg', 'Flavorful coffee cake for coffee lovers.<br>\r\nExperience the engaging flavor of caffeine. \r\n<br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 900, 750, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1268, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1268.png', 'Pineapple Cake', 'weight: 1 kg', 'Make your special day with the pineapple flavor.<br>The cake with the base soft vanilla sponge with creme with the most demanded cakes and decorated with pineapple slices and pineapple flavor <br> There may be changes in the decoration \r\nof the cake with the comparison to the pic displayed.', 800, 650, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1269, 'all cakes pastries birthday anniversary wedding', '[\"\"]', 'prod1269.jpg', 'Fruit Cake', 'weight: 1 kg', 'Fresh cake with delicious and fresh fruits.\r\nDecorated with different fruits and grated chocolate with whipped cream on the sides. The fruits are used are seasonal fruits. <br> There may be changes in the decoration of the cake with the comparison to the pic displayed.', 1000, 750, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1270, 'all cakes pastries anniversary birthday wedding', '[\"\"]', 'prod1270.png', 'heart shape cake', 'weight: 1 kg', 'Present your heart as a cake with sweet wishes and dreams to your partner.<br> Heart full of love will always keep your loved ones happy.<br> there may be some difference in the decoration of the cake with the comparison with the photo displayed.', 900, 750, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1271, 'all cakes pastries anniversary birthday wedding', '[\"\"]', 'prod1271.jpg', 'Fruit  cake', 'weight: 2 kg', 'Decorated with fresh fruits<br>.\r\nLoaded with the seasonal fruits on the top.<br>\r\nSurprise with the fresh fruits of your family.<br> There may be some difference in the decoration of the cake with the comparison with the photo displayed.', 1500, 1350, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1272, 'all cakes pastries anniversary birthday wedding', '[\"\"]', 'prod1272.jpeg', 'Red velvet cake', 'weight: 1 kg', 'Red depicts Love.<br>\r\nMake your loved ones more special with red velvet<br> There may be some difference in the decoration of the cake with the comparison with the photo displayed.', 1000, 850, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1273, 'all cakes pastries anniversary birthday wedding', '[\"\"]', 'prod1273.png', 'Blueberry cake', 'weight: 1 kg', 'Make your day more special with the different flavor.\r\n<br> Decorated with grated chocolate and cherries with delicious cream on the top.<br> There may be some difference in the decoration of the cake with the comparison with the photo displayed.', 1000, 850, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1274, 'all cakes pastries birthday ', '[\"\"]', 'prod1274.jpg', 'Barbie doll cake', 'weight: 3 kg', 'Make your princess heart happy with the beautiful Barbie doll.<br> Make her special day more memorable and exciting. <br> There may be some difference in the decoration of the cake with the comparison with the photo displayed.', 2500, 2300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1275, 'Caring Get well soon ', '[]', 'prod1275.png', 'Fruits delivery ', 'Send fruits to your beloved one', 'It is the best way to expess caring <br><b>Delivery Information</b><br>maximum quantity 4KG<br>Maximum fruits variants- 5<br> Fruits cost extra', 250, 180, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rajahmundry`
--

CREATE TABLE `rajahmundry` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rajahmundry`
--

INSERT INTO `rajahmundry` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `srikakulam`
--

CREATE TABLE `srikakulam` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `srikakulam`
--

INSERT INTO `srikakulam` (`id`, `area`, `price`) VALUES
(1, 'City limits', 80);

-- --------------------------------------------------------

--
-- Table structure for table `tirupati`
--

CREATE TABLE `tirupati` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tirupati`
--

INSERT INTO `tirupati` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `newsletter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `address`, `city`, `password`, `dob`, `mobile`, `newsletter`) VALUES
(2, 'Mukesh Kalaga', 'kalagamukesh@gmail.com', '1-19-1,ramalayam street, sree ram nagar', 'Kakinada', 'thoughts', '1999-12-27', '7661959689', 1),
(10, 'girishd94@gmail.com', 'girishd94@gmail.com', 'Gudi veedhi, Srikakulam District', 'Srikakulam', 'giri5463', '0000-00-00', '8985994892', 0),
(12, 'Md basha', 'mdbasha0110@gmail.com', '15-151, jagannadh nagar, vizianagaram.', 'vizianagaram', '90101638', '0000-00-00', '9010163846', 1),
(13, 'Lakshmi Bhargavi ', 'lakshmibhargavi369@gmail.com', 'Dno:23-2-1/6,  gowdu veedhi, Vizianagaram ', 'Vizianagaram ', '809905d', '0000-00-00', '8099246184', 1),
(14, 'Monika', 'riyanahanumanthu@gmail.com', 'Hanuman towers near babametta', 'Vizianagaram', 'monika123', '0000-00-00', '7075942560', 0),
(15, 'Naveen Krishnam Raju', 'naveenkrishnamraju22@gmail.com', '53-20-20/9, chaitanya nagar, maddilipalem', 'visakhapatnam', 'spyder@22', '0000-00-00', '8885418937', 1),
(16, 'Renuka varma', 'renurockz1995@gmail.com', 'Flat no 201,rupas residency, road no 4,tirumulanagar,vadlapudi, vsp', 'Visakhapatnam', 'renudestiny', '0000-00-00', '9866337436', 1),
(17, 'Susmitha Patnaik ', 'patnaiklavudi27@gmail.com', 'Anupama hostels,bkguda,sr nagar,  Hyderabad ', 'Hyderabad', 'susmi@1995', '2018-05-27', '9154648375', 1),
(19, 'mahammadbasha', 'mahammadbasha1995@gmail.com', 'jagannadh nagar', 'vizianagaram', '90101638', '1995-10-01', '9010163846', 1),
(20, 'Priyanka', 'priyankaadapa3@gmail.com', 'Block A, T1, Sri Lakshmi Venkateswara towers, Palepuvari veedhi', 'vizianagaram', 'priyaajay', '1994-04-25', '9866996192', 1),
(21, 'Adarsh', 'Adarshsharma73@gmail.com', 'Dakkini veedhi d/no 2-7-3', 'Vizianagaram-1', '8185991150', '1995-02-11', '8185991150', 1),
(22, 'Mounica', 'mounica.gandimani@gmail.com', 'Plot No 70,s. V. N nagar,  near Saraswati devi temple ', 'vizianagaram', '12101993', '1993-10-12', '9059547999', 1),
(23, 'saran kumar', 'kaverkonan@gmail.com', '1-2-5, Teegala Veedhi, Cantonment, Vizianagaram', 'vizianagaram', 'fandbking', '1994-11-10', '7013459535', 1),
(24, 'Swetha', 'swethagottumukkala.95@gmail.com', 'Vizianagaram', 'vizianagaram', 'viratkohili', '1995-08-06', '9493562895', 1),
(25, 'S.R.Munisha', 'munishasavaravilli@gmail.com', 'Door no 3-88, chinthalavalasa,post office,denkada mandalam, vizianagaram', 'vizianagaram', 'munisha@94', '1994-04-07', '9553453631', 1),
(26, 'kushuma', 'kushumareddy@gmail.com', 'Dr.no 19-23-5/1,pedagantyada,gajuwaka', 'Visakhapatnam', 'yashoda', '1993-11-04', '8919147210', 1),
(27, 'Abc', 'abvx@gmail.com', 'Haa ', 'Coimbatore', 'qwerty', '1989-02-10', '9123456789', 1),
(28, 'goutam', 'goutam.sandy25@gmail.com', 'madhapur', 'Hyderabad', 'passward123', '1993-11-20', '8341069771', 1),
(29, 'tho lal', 'teja8019558863@gmail.com', 'anakapalli', 'Visakhapatnam', 'lalithteja', '1994-09-02', '8500981863', 1),
(30, 'raja', 'rajark1234@gmail.com', 'd.no.15-7-17, near santhoshi mata temple,gavarapalem, anakapalli.', 'anakapalli', 'rajark123', '1985-03-04', '7382074468', 1),
(31, 'dineshsatya', 'lxmndinesh0@gmail.com', 'srungarapuram nea gems Public school Bapatla 522101', 'bapatla', '9346428000', '1993-06-07', '9492901215', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vijayawada`
--

CREATE TABLE `vijayawada` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vijayawada`
--

INSERT INTO `vijayawada` (`id`, `area`, `price`) VALUES
(1, 'temp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visakhapatnam`
--

CREATE TABLE `visakhapatnam` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visakhapatnam`
--

INSERT INTO `visakhapatnam` (`id`, `area`, `price`) VALUES
(1, 'City limits', 80);

-- --------------------------------------------------------

--
-- Table structure for table `vizianagaram`
--

CREATE TABLE `vizianagaram` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vizianagaram`
--

INSERT INTO `vizianagaram` (`id`, `area`, `price`) VALUES
(1, 'City limits', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_guests`
--
ALTER TABLE `active_guests`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coimbatore`
--
ALTER TABLE `coimbatore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customizations`
--
ALTER TABLE `customizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delhi`
--
ALTER TABLE `delhi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guntur`
--
ALTER TABLE `guntur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hyderabad`
--
ALTER TABLE `hyderabad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kadapa`
--
ALTER TABLE `kadapa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kakinada`
--
ALTER TABLE `kakinada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurnool`
--
ALTER TABLE `kurnool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nellore`
--
ALTER TABLE `nellore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rajahmundry`
--
ALTER TABLE `rajahmundry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srikakulam`
--
ALTER TABLE `srikakulam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tirupati`
--
ALTER TABLE `tirupati`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vijayawada`
--
ALTER TABLE `vijayawada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visakhapatnam`
--
ALTER TABLE `visakhapatnam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vizianagaram`
--
ALTER TABLE `vizianagaram`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `coimbatore`
--
ALTER TABLE `coimbatore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customizations`
--
ALTER TABLE `customizations`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `delhi`
--
ALTER TABLE `delhi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guntur`
--
ALTER TABLE `guntur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hyderabad`
--
ALTER TABLE `hyderabad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kadapa`
--
ALTER TABLE `kadapa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kakinada`
--
ALTER TABLE `kakinada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kurnool`
--
ALTER TABLE `kurnool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nellore`
--
ALTER TABLE `nellore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1276;

--
-- AUTO_INCREMENT for table `rajahmundry`
--
ALTER TABLE `rajahmundry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `srikakulam`
--
ALTER TABLE `srikakulam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tirupati`
--
ALTER TABLE `tirupati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vijayawada`
--
ALTER TABLE `vijayawada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visakhapatnam`
--
ALTER TABLE `visakhapatnam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vizianagaram`
--
ALTER TABLE `vizianagaram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
