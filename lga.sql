-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 09:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lga`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_desc` varchar(128) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_desc`, `status`) VALUES
(1, 'Frat Shirts', 'A'),
(2, 'LGA Designed Shirts', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` int(11) NOT NULL,
  `cust_user_address` int(11) NOT NULL,
  `cust_user_contact` varchar(128) NOT NULL,
  `cust_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_img` varchar(128) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_desc`, `item_img`, `item_price`, `item_category_id`, `date_added`) VALUES
(1, 'White Triskelion 1968', 'Triskelion White Shirt', 'F1.jpg', 450, 1, '2021-05-04 13:35:22'),
(2, 'Triskelion-Live and let live', 'Live and let live Shirt', 'F2.jpg', 450, 1, '2021-05-04 13:47:07'),
(3, 'Master Initiator', 'Triskelion T-shirt Cotton', 'F3.jpg', 500, 1, '2021-05-04 13:59:22'),
(4, 'Triskelion Three Dynamic ', 'T-Shirt Sublimation', 'F4.jpg', 500, 1, '2021-05-07 14:15:33'),
(5, 'White Triskelion Translucent ', 'Translucent Shirt', 'F5.jpg', 400, 1, '2021-05-07 14:21:51'),
(6, 'Black Triskelion Translucent', 'Translucent Shirt', 'F6.jpg', 400, 1, '2021-05-07 14:23:47'),
(7, 'Spartan-Rise to Defend', 'T-Shirt Sublimation', 'F7.jpg', 500, 1, '2021-05-07 14:25:39'),
(8, 'White Technical-Tau Gamma PHI', 'T-Shirt Cotton ', 'F8.jpg', 500, 1, '2021-05-07 14:28:11'),
(9, 'Black Technical-Tau Gamma PHI', 'T-Shirt Cotton ', 'F9.jpg', 500, 1, '2021-05-07 14:29:33'),
(10, 'Hunter-Solido', 'T-Shirt Cotton', 'hunter.jpeg', 500, 2, '2021-05-07 14:31:31'),
(11, 'DLC', 'DUPRI\'S & LOKAL', 'L1.jpg', 450, 2, '2021-05-07 14:33:22'),
(12, 'Enjoy-LA FAMILIA', 'La Familia Shirt EST. 20', 'L2.jpg', 500, 2, '2021-05-07 14:36:57'),
(13, 'Black-Santo Entierro', 'Santo Entierro Shirt', 'L3.jpeg', 400, 2, '2021-05-07 14:39:49'),
(14, 'White Hunter-Solido', 'T-Shirt Cotton', 'L4.jpeg', 500, 2, '2021-05-07 14:40:43'),
(15, 'White Santo Entierro', 'Santo Entierro Shirt', 'L5.jpeg', 400, 2, '2021-05-07 14:41:47'),
(16, 'Polangui-Solido', 'T-Shirt Cotton', 'L6.jpeg', 500, 2, '2021-05-07 14:42:34'),
(17, 'Black Polangui-Solido', 'T-Shirt Cotton', 'L7.jpeg', 500, 2, '2021-05-07 14:43:29'),
(18, 'Solido Familia', 'T-Shirt Cotton', 'L8.jpeg', 450, 2, '2021-05-07 14:45:14'),
(19, 'Vaping is Better', 'T-Shirt Cotton', 'L10.jpeg', 450, 2, '2021-05-07 14:46:28'),
(20, 'White Polangui-Solido', 'T-Shirt Cotton', 'pol.jpeg', 500, 2, '2021-05-07 14:48:57'),
(21, 'White Solido-Familia', 'T-Shirt Cotton', 'solido.jpeg', 450, 2, '2021-05-07 14:52:50'),
(22, 'White-Vaping is Better', 'T-Shirt Cotton', 'vaping.jpeg', 450, 2, '2021-05-07 14:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cust_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `ordertrack_num` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `tracking_id` int(11) NOT NULL,
  `tracking_ordertrack_num` int(11) NOT NULL,
  `track_order_id` int(11) NOT NULL,
  `track_status` int(11) NOT NULL,
  `tracking_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `usertype` int(11) NOT NULL,
  `datejoined` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(128) NOT NULL,
  `user_contact` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`tracking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `tracking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
