-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 01:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakes`
--

CREATE TABLE `cakes` (
  `cake_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes`
--

INSERT INTO `cakes` (`cake_id`, `name`, `price`) VALUES
('cake001', 'Blackforest', 549),
('cake002', 'butterscotch', 499),
('cake003', 'Chocolate', 649),
('cake004', 'Pineapple', 499),
('cake005', 'Strawberry', 599);

-- --------------------------------------------------------

--
-- Table structure for table `chocolate`
--

CREATE TABLE `chocolate` (
  `choco_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chocolate`
--

INSERT INTO `chocolate` (`choco_id`, `name`, `price`, `company`) VALUES
('choco_001', 'FerreroRocher', 875, 'FerreroRocher'),
('choco_002', 'kitkat', 80, 'kitkat'),
('choco_003', 'Mars bites and bouchees', 160, 'Mars'),
('choco_004', 'Dairymilk Silk', 70, 'Cadbury'),
('choco_005', 'Toblerone Swiss Milk', 280, 'Toblerone');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `phone`, `message`) VALUES
('Nagendra B', 8147349822, 'Hii');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `custom` varchar(255) NOT NULL,
  `payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `phone`, `address`, `pincode`, `item_id`, `custom`, `payment`) VALUES
(1000, 'Moulya E', 6361372914, 'KR pete', 577133, 'choco004', '', 'UPI'),
(1001, 'xyz', 9876543210, 'abc', 1245686, 'ice001', '', 'Credit card'),
(1002, 'moulya', 8904229828, 'mysore', 572960, 'cake001', 'happy bday', 'Credit card');

-- --------------------------------------------------------

--
-- Table structure for table `icecream`
--

CREATE TABLE `icecream` (
  `ice_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icecream`
--

INSERT INTO `icecream` (`ice_id`, `name`, `price`, `company`) VALUES
('ice001', 'Cornetto', 70, 'kwality walls'),
('ice002', 'Death By Chocolate', 625, 'Baskin Robins'),
('ice003', 'Royale Dark Fantasy\r\n', 135, 'Polar Bear'),
('ice004', ' Magnum', 85, 'Magnum'),
('ice005', ' Soft icecream', 99, 'Mcdonalds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cakes`
--
ALTER TABLE `cakes`
  ADD PRIMARY KEY (`cake_id`);

--
-- Indexes for table `chocolate`
--
ALTER TABLE `chocolate`
  ADD PRIMARY KEY (`choco_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `icecream`
--
ALTER TABLE `icecream`
  ADD PRIMARY KEY (`ice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
