-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 02:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qk`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_bill`
--

CREATE TABLE `order_bill` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(200) DEFAULT NULL,
  `email` varchar(320) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` int(11) DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_bill`
--

INSERT INTO `order_bill` (`id`, `date`, `customer_name`, `email`, `phone`, `address`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(4, '2024-01-02', 'Kavindu Nimesh', 'knimesh.work@gmail.com', '+94760358784', '237, Adawelayaya', 1, 2, '2024-01-02 04:10:52', NULL, '2024-01-02 09:40:52'),
(5, '2024-01-02', 'Kavindu Nimesh', 'knimesh.work@gmail.com', '+94760358784', '237, Adawelayaya', 1, 2, '2024-01-02 04:13:59', NULL, '2024-01-02 09:43:59'),
(7, '2024-01-02', 'Kavindu Nimesh', 'knimesh.work@gmail.com', '+94760358784', '237, Adawelayaya', 1, 2, '2024-01-02 07:10:50', NULL, '2024-01-02 12:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product`, `price`, `qty`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(1, 4, 28, 100, 1, 2, '2024-01-02 04:10:52', NULL, '2024-01-02 09:40:52'),
(2, 4, 27, 200, 1, 2, '2024-01-02 04:10:52', NULL, '2024-01-02 09:40:52'),
(3, 5, 28, 100, 1, 2, '2024-01-02 04:13:59', NULL, '2024-01-02 09:43:59'),
(4, 5, 27, 200, 1, 2, '2024-01-02 04:13:59', NULL, '2024-01-02 09:43:59'),
(7, 7, 28, 100, 1, 2, '2024-01-02 07:10:50', NULL, '2024-01-02 12:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 - cash, 2 - card',
  `added_by` int(11) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `amount`, `type`, `added_by`, `added_time`) VALUES
(1, 5, 1, 1, 1, '2024-01-02 08:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `status`) VALUES
(1, 'Added');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `product_id` varchar(500) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `stock`, `price`, `product_id`, `type`, `category`, `sub_category`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(27, 'QK HAT', 11, 200, 'QKHT001', 2, 2, 9, 1, 1, '2024-01-02 01:44:09', 1, '2024-01-02 02:08:34'),
(28, 'QK Wallet', 12, 100, 'QKHT002', 2, 2, 10, 1, 1, '2024-01-02 01:44:09', 1, '2024-01-02 02:08:34'),
(29, 'QKG21238-103', 10, 0, 'QKG21238-103', 1, 2, 9, 1, 1, '2024-01-02 06:50:04', NULL, '2024-01-02 12:20:05'),
(30, 'test custom', 10, 0, '10', 2, 2, 9, 1, 1, '2024-01-02 07:13:43', NULL, '2024-01-02 12:43:43'),
(31, 'test readymate', 10, 10, '10', 1, 2, 10, 1, 1, '2024-01-02 07:14:06', NULL, '2024-01-02 12:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(1, 'Ladies', 1, 1, '2023-12-28 05:54:43', 1, '2023-12-28 05:54:43'),
(2, 'Gents', 1, 1, '2023-12-28 05:54:43', 1, '2023-12-28 05:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `status`) VALUES
(1, 'active'),
(2, 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `name`, `img_url`, `category`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(9, 'Caps', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/cap%201.png', 2, 1, 1, '2024-01-02 01:41:13', 1, '2024-01-02 02:23:24'),
(10, 'wallet', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/wallet.png', 2, 1, 1, '2024-01-02 03:32:27', 1, '2024-01-02 03:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(1, 'Readymate', 1, 1, '2023-12-28 05:55:07', 1, '2023-12-28 05:55:07'),
(2, 'Custom', 1, 1, '2023-12-28 05:55:07', 1, '2023-12-28 05:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(300) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `password`, `role`, `status`, `added_by`, `added_time`, `updated_by`, `updated_time`) VALUES
(1, 'user 01', 'admin@gmail.com', '0719850755', '$2a$10$ceeb2bcf773c7cd2c40b1uatuB3DuIyFpA3PTe2Dl/uTqWwmP5Pti', 1, 1, 1, '2023-12-27 11:22:20', 1, '2023-12-27 11:22:20'),
(2, 'user 02', 'user@gmail.com', '0719850755', '$2a$10$ceeb2bcf773c7cd2c40b1uatuB3DuIyFpA3PTe2Dl/uTqWwmP5Pti', 2, 1, 1, '2023-12-29 07:07:34', 1, '2023-12-29 07:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id`, `status`) VALUES
(1, 'active'),
(2, 'deactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_bill`
--
ALTER TABLE `order_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_bill_added_by` (`added_by`),
  ADD KEY `order_bill_updated_by` (`updated_by`),
  ADD KEY `order_bill_status` (`status`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_added_by` (`added_by`),
  ADD KEY `order_item_updated_by` (`updated_by`),
  ADD KEY `order_item_product` (`product`),
  ADD KEY `order_item_order_bill` (`order_id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_added_by` (`added_by`),
  ADD KEY `product_updated_by` (`updated_by`),
  ADD KEY `product_status` (`status`),
  ADD KEY `product_type` (`type`),
  ADD KEY `product_category` (`category`),
  ADD KEY `product_sub_category` (`sub_category`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_added_by` (`added_by`),
  ADD KEY `product_category_updated_by` (`updated_by`),
  ADD KEY `product_category_status` (`status`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Structureproduct_sub_category_added_by` (`added_by`),
  ADD KEY `Structureproduct_sub_category_updated_by` (`updated_by`),
  ADD KEY `Structureproduct_sub_category_category` (`category`),
  ADD KEY `Structureproduct_sub_category_status` (`status`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_type_added_by` (`added_by`),
  ADD KEY `product_type_updated_by` (`updated_by`),
  ADD KEY `product_type_status` (`status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_added_by` (`added_by`),
  ADD KEY `user_updated_by` (`updated_by`),
  ADD KEY `user_status` (`status`),
  ADD KEY `user_role` (`role`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_bill`
--
ALTER TABLE `order_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_bill`
--
ALTER TABLE `order_bill`
  ADD CONSTRAINT `order_bill_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_bill_status` FOREIGN KEY (`status`) REFERENCES `order_status` (`id`),
  ADD CONSTRAINT `order_bill_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_item_order_bill` FOREIGN KEY (`order_id`) REFERENCES `order_bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_product` FOREIGN KEY (`product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_item_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_category` FOREIGN KEY (`category`) REFERENCES `product_category` (`id`),
  ADD CONSTRAINT `product_status` FOREIGN KEY (`status`) REFERENCES `product_status` (`id`),
  ADD CONSTRAINT `product_sub_category` FOREIGN KEY (`sub_category`) REFERENCES `product_sub_category` (`id`),
  ADD CONSTRAINT `product_type` FOREIGN KEY (`type`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `product_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_category_status` FOREIGN KEY (`status`) REFERENCES `product_status` (`id`),
  ADD CONSTRAINT `product_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `Structureproduct_sub_category_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `Structureproduct_sub_category_category` FOREIGN KEY (`category`) REFERENCES `product_category` (`id`),
  ADD CONSTRAINT `Structureproduct_sub_category_status` FOREIGN KEY (`status`) REFERENCES `product_status` (`id`),
  ADD CONSTRAINT `Structureproduct_sub_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_type_status` FOREIGN KEY (`status`) REFERENCES `product_status` (`id`),
  ADD CONSTRAINT `product_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_role` FOREIGN KEY (`role`) REFERENCES `user_role` (`id`),
  ADD CONSTRAINT `user_status` FOREIGN KEY (`status`) REFERENCES `user_status` (`id`),
  ADD CONSTRAINT `user_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
