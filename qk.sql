-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 03:41 PM
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
(23, '2024-01-04', 'Dilshan', '', '0777769999', 'Havelock city', 1, 2, '2024-01-04 04:49:45', NULL, '2024-01-04 04:49:45'),
(24, '2024-01-04', 'Mr ajith', '', '0718203870', 'Hatton', 1, 2, '2024-01-04 04:55:03', NULL, '2024-01-04 04:55:03'),
(25, '2024-01-04', 'Mr burty', '', '0777770400', 'Nugegoda', 1, 2, '2024-01-04 09:08:06', NULL, '2024-01-04 09:08:06'),
(26, '2024-01-04', 'Mr. Berty', '', '0777770400', 'Nuegoda', 1, 2, '2024-01-04 09:11:22', NULL, '2024-01-04 09:11:22'),
(27, '2024-01-04', 'Yashodara', '', '0767851760', 'Havelock City', 1, 2, '2024-01-04 15:16:46', NULL, '2024-01-04 15:16:46');

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
(23, 23, 140, 100000, 1, 2, '2024-01-04 04:49:45', NULL, '2024-01-04 04:49:45'),
(24, 24, 53, 47900, 1, 2, '2024-01-04 04:55:03', NULL, '2024-01-04 04:55:03'),
(25, 25, 41, 9500, 1, 2, '2024-01-04 09:08:06', NULL, '2024-01-04 09:08:06'),
(26, 25, 43, 26500, 1, 2, '2024-01-04 09:08:06', NULL, '2024-01-04 09:08:06'),
(27, 26, 41, 9500, 1, 2, '2024-01-04 09:11:22', NULL, '2024-01-04 09:11:22'),
(28, 27, 113, 8750, 1, 2, '2024-01-04 15:16:46', NULL, '2024-01-04 15:16:46');

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
(3, 7, 100, 2, 1, '2024-01-02 15:28:33'),
(4, 10, 500, 1, 1, '2024-01-03 03:02:59'),
(5, 12, 18000, 1, 1, '2024-01-03 03:53:45'),
(6, 12, 9000, 1, 1, '2024-01-03 05:26:33'),
(7, 12, 9000, 1, 1, '2024-01-03 05:26:33'),
(8, 12, 8000, 1, 1, '2024-01-03 05:26:33'),
(9, 12, 9000, 1, 1, '2024-01-03 05:26:34'),
(10, 16, 18500, 1, 1, '2024-01-03 08:13:17'),
(11, 18, 18500, 1, 1, '2024-01-03 08:34:04'),
(12, 19, 37000, 2, 1, '2024-01-03 09:24:46'),
(13, 17, 10000, 1, 1, '2024-01-03 09:27:42'),
(14, 20, 45500, 1, 1, '2024-01-03 15:27:37'),
(15, 20, 10000, 2, 1, '2024-01-03 15:27:47'),
(16, 21, 55500, 1, 1, '2024-01-04 04:37:28'),
(17, 21, 10000, 1, 1, '2024-01-04 04:37:45'),
(18, 22, 55500, 1, 1, '2024-01-04 04:40:45'),
(19, 23, 100000, 1, 1, '2024-01-04 04:50:29'),
(20, 24, 47900, 2, 1, '2024-01-04 04:55:47'),
(21, 27, 8750, 1, 1, '2024-01-04 15:17:29');

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
(37, 'QK Hat', 15, 18500, 'QKHT001', 1, 2, 13, 1, 1, '2024-01-03 15:21:25', 1, '2024-01-03 15:29:34'),
(38, 'QK WALLET', 20, 7990, 'QKWT002', 1, 2, 15, 1, 1, '2024-01-03 15:31:05', NULL, '2024-01-03 15:31:05'),
(39, 'QK UMBRELLA', 488, 9750, 'QKUMB0017', 1, 2, 16, 1, 1, '2024-01-03 15:31:58', NULL, '2024-01-03 15:31:58'),
(40, 'QK UNDERWEAR', 4008, 3250, 'QKUDW005', 1, 2, 17, 1, 1, '2024-01-03 15:33:58', NULL, '2024-01-03 15:33:58'),
(41, 'QK TIE', 23, 9500, 'QK TIED1-5', 1, 2, 32, 1, 1, '2024-01-03 15:45:19', NULL, '2024-01-03 15:45:19'),
(42, 'QK TIE', 10, 37990, 'QK TIED1-4', 1, 2, 32, 1, 1, '2024-01-03 15:45:59', NULL, '2024-01-03 15:45:59'),
(43, 'QK TIE ', 24, 26500, 'QK TIED1-3', 1, 2, 32, 1, 1, '2024-01-03 15:51:42', NULL, '2024-01-03 15:51:42'),
(44, 'QK TIE', 15, 12900, 'QK TIED1-2', 1, 2, 32, 1, 1, '2024-01-03 15:52:36', NULL, '2024-01-03 15:52:36'),
(45, 'QK TIE', 90, 6900, 'QK TIED1', 1, 2, 32, 1, 1, '2024-01-03 15:53:53', NULL, '2024-01-03 15:53:53'),
(46, 'QK Slipper', 18, 39000, 'QK0501', 1, 2, 31, 1, 1, '2024-01-03 15:55:37', NULL, '2024-01-03 15:55:37'),
(47, 'QK SHOES', 10, 47900, 'QK0409', 1, 2, 30, 1, 1, '2024-01-03 15:56:14', NULL, '2024-01-03 15:56:14'),
(48, 'QK SHOES', 10, 47900, 'QK0408', 1, 2, 30, 1, 1, '2024-01-03 15:56:44', NULL, '2024-01-03 15:56:44'),
(49, 'QK HANDKERCHIEF', 603, 950, 'QKHRCH0015', 1, 1, 33, 1, 1, '2024-01-03 15:56:51', NULL, '2024-01-03 15:56:51'),
(50, 'QK SHOES', 10, 47900, 'QK0407', 1, 2, 30, 1, 1, '2024-01-03 15:57:16', NULL, '2024-01-03 15:57:16'),
(51, 'QK SHOES', 10, 24950, 'QK0406', 1, 2, 30, 1, 1, '2024-01-03 15:57:41', NULL, '2024-01-03 15:57:41'),
(52, 'QK SHOES', 10, 47900, 'QK0405', 1, 2, 30, 1, 1, '2024-01-03 15:58:05', NULL, '2024-01-03 15:58:05'),
(53, 'QK SHOES', 9, 47900, 'QK0404', 1, 2, 30, 1, 1, '2024-01-03 15:58:40', NULL, '2024-01-03 15:58:40'),
(54, 'QK SHOES', 10, 107000, 'QK0403', 1, 2, 30, 1, 1, '2024-01-03 15:59:11', NULL, '2024-01-03 15:59:11'),
(55, 'QK SHOES', 10, 107000, 'QK0402', 1, 2, 30, 1, 1, '2024-01-03 15:59:35', NULL, '2024-01-03 15:59:35'),
(56, 'QK SHOES', 10, 85000, 'QK0401', 1, 2, 30, 1, 1, '2024-01-03 16:00:08', NULL, '2024-01-03 16:00:08'),
(57, 'QK GENTS SHOE', 177, 39000, 'QKSHB717', 1, 2, 19, 1, 1, '2024-01-03 16:00:52', NULL, '2024-01-03 16:00:52'),
(58, 'QK GENTS SUIT', 11, 188950, 'QKK31102-3', 1, 2, 29, 1, 1, '2024-01-03 16:01:04', NULL, '2024-01-03 16:01:04'),
(59, 'QK GENTS SUIT', 11, 96950, 'QK3899-30', 1, 2, 29, 1, 1, '2024-01-03 16:01:30', NULL, '2024-01-03 16:01:30'),
(60, 'QK GENTS SUIT', 10, 96950, 'QK2138/4', 1, 2, 29, 1, 1, '2024-01-03 16:01:53', NULL, '2024-01-03 16:01:53'),
(61, 'QK GENTS SUIT', 11, 84950, 'QKH5', 1, 2, 29, 1, 1, '2024-01-03 16:02:50', NULL, '2024-01-03 16:02:50'),
(62, 'QK GENTS SUIT', 11, 84950, 'QKH5', 1, 2, 29, 1, 1, '2024-01-03 16:04:10', NULL, '2024-01-03 16:04:10'),
(63, 'QK GENTS SUIT', 11, 82950, 'QKK2-2', 1, 2, 29, 1, 1, '2024-01-03 16:04:36', NULL, '2024-01-03 16:04:36'),
(64, 'QK GENTS SUIT', 11, 82950, 'QKK21-1', 1, 2, 29, 1, 1, '2024-01-03 16:05:01', NULL, '2024-01-03 16:05:01'),
(65, 'QK GENTS SUIT', 11, 96950, 'QK-900', 1, 2, 29, 1, 1, '2024-01-03 16:05:26', NULL, '2024-01-03 16:05:26'),
(66, 'QK GENTS SUIT', 11, 84950, 'QK2169/16', 1, 2, 29, 1, 1, '2024-01-03 16:05:52', NULL, '2024-01-03 16:05:52'),
(67, 'QK GENTS SUIT', 11, 196950, 'QKW-W23-1', 1, 2, 29, 1, 1, '2024-01-03 16:06:20', NULL, '2024-01-03 16:06:20'),
(68, 'QK GENTS SUIT', 11, 192950, 'QKK3-3', 1, 2, 29, 1, 1, '2024-01-03 16:06:53', NULL, '2024-01-03 16:06:53'),
(69, 'QK GENTS SUIT', 11, 196950, 'QKK3-1', 1, 2, 29, 1, 1, '2024-01-03 16:07:22', NULL, '2024-01-03 16:07:22'),
(70, 'QK GENTS SUIT', 11, 96950, 'QK9199-6', 1, 2, 29, 1, 1, '2024-01-03 16:07:45', NULL, '2024-01-03 16:07:45'),
(71, 'QK GENTS SUIT', 11, 94950, 'QK-4', 1, 2, 29, 1, 1, '2024-01-03 16:08:17', NULL, '2024-01-03 16:08:17'),
(72, 'QK GENTS SUIT', 11, 94950, 'QK-729', 1, 2, 29, 1, 1, '2024-01-03 16:08:40', NULL, '2024-01-03 16:08:40'),
(73, 'QK GENTS SUIT', 11, 94950, 'QK-752', 1, 2, 29, 1, 1, '2024-01-03 16:09:11', NULL, '2024-01-03 16:09:11'),
(74, 'QK GENTS SUIT', 11, 92950, 'QK-1-1', 1, 2, 29, 1, 1, '2024-01-03 16:09:37', NULL, '2024-01-03 16:09:37'),
(75, 'QK GENTS SUIT', 11, 91950, 'QKW-51', 1, 2, 29, 1, 1, '2024-01-03 16:10:03', NULL, '2024-01-03 16:10:03'),
(76, 'QK GENTS SUIT', 11, 86950, 'QK-753', 1, 2, 29, 1, 1, '2024-01-03 16:10:36', NULL, '2024-01-03 16:10:36'),
(77, 'QK GENTS SHOE', 168, 49000, 'QKSHK66', 1, 2, 19, 1, 1, '2024-01-03 16:11:06', NULL, '2024-01-03 16:11:06'),
(78, 'QK GENTS SUIT', 11, 86950, 'QK2138-6', 1, 2, 29, 1, 1, '2024-01-03 16:11:21', NULL, '2024-01-03 16:11:21'),
(79, 'QK GENTS SUIT', 11, 83950, 'QKW31-1', 1, 2, 29, 1, 1, '2024-01-03 16:11:45', NULL, '2024-01-03 16:11:45'),
(80, 'QK GENTS SUIT', 11, 79950, 'QKW-4', 1, 2, 29, 1, 1, '2024-01-03 16:12:10', NULL, '2024-01-03 16:12:10'),
(81, 'QK GENTS SUIT', 11, 83950, 'QKW-19', 1, 2, 29, 1, 1, '2024-01-03 16:12:36', NULL, '2024-01-03 16:12:36'),
(82, 'QK GENTS SUIT', 11, 79950, 'QKW-1', 1, 2, 29, 1, 1, '2024-01-03 16:12:58', NULL, '2024-01-03 16:12:58'),
(83, 'QK GENTS SUIT', 11, 81950, 'QK-191', 1, 2, 29, 1, 1, '2024-01-03 16:13:28', NULL, '2024-01-03 16:13:28'),
(84, 'QK GENTS SHOE', 98, 69000, 'QKSHB716', 1, 2, 19, 1, 1, '2024-01-03 16:14:02', NULL, '2024-01-03 16:14:02'),
(85, 'QK GENTS SUIT', 11, 86950, 'QK-103', 1, 2, 29, 1, 1, '2024-01-03 16:14:24', NULL, '2024-01-03 16:14:24'),
(86, 'QK X BELT KIDS', 100, 3750, 'QKXBKD0008', 1, 2, 23, 1, 1, '2024-01-03 16:15:21', NULL, '2024-01-03 16:15:21'),
(87, 'QK X BELT', 20, 9450, 'QK0006', 1, 2, 23, 1, 1, '2024-01-03 16:16:12', NULL, '2024-01-03 16:16:12'),
(88, 'QK X BELT', 20, 3950, 'QK0005', 1, 2, 23, 1, 1, '2024-01-03 16:16:50', NULL, '2024-01-03 16:16:50'),
(89, 'QK X BELT', 20, 4950, 'QK0004', 1, 2, 23, 1, 1, '2024-01-03 16:17:26', NULL, '2024-01-03 16:17:26'),
(90, 'QK X BELT', 20, 6850, 'QK0003', 1, 2, 23, 1, 1, '2024-01-03 16:18:11', NULL, '2024-01-03 16:18:11'),
(91, 'QK X BELT', 20, 6850, 'QK0002', 1, 2, 23, 1, 1, '2024-01-03 16:18:37', NULL, '2024-01-03 16:18:37'),
(92, 'QK X BELT', 20, 12900, 'QK0001', 1, 2, 23, 1, 1, '2024-01-03 16:19:13', NULL, '2024-01-03 16:19:13'),
(93, 'QK LADIES SUIT', 5, 64950, 'QKLYW7005-2', 1, 1, 28, 1, 1, '2024-01-03 16:20:09', NULL, '2024-01-03 16:20:09'),
(94, 'QK LADIES SUIT', 5, 79950, 'QKBWT20183084P', 1, 1, 28, 1, 1, '2024-01-03 16:20:48', NULL, '2024-01-03 16:20:48'),
(95, 'QK LADIES SUIT', 5, 126750, 'QKBWX301014P', 1, 1, 28, 1, 1, '2024-01-03 16:21:47', NULL, '2024-01-03 16:21:47'),
(96, 'QK LADIES SUIT', 5, 83950, 'QKBWT10212052P', 1, 1, 28, 1, 1, '2024-01-03 16:22:18', NULL, '2024-01-03 16:22:18'),
(97, 'QK LADIES SUIT', 5, 135950, 'QKBWX301015P', 1, 1, 28, 1, 1, '2024-01-03 16:22:48', NULL, '2024-01-03 16:22:48'),
(98, 'QK LADIES SUIT', 5, 83950, 'QK2307059', 1, 1, 28, 1, 1, '2024-01-03 16:23:16', NULL, '2024-01-03 16:23:16'),
(99, 'QK LADIES SUIT', 5, 127950, 'QK2307060', 1, 1, 28, 1, 1, '2024-01-03 16:23:50', NULL, '2024-01-03 16:23:50'),
(100, 'QK LADIES SUIT', 5, 42950, 'LYW3019', 1, 1, 28, 1, 1, '2024-01-03 16:24:15', NULL, '2024-01-03 16:24:15'),
(101, 'QK LADIES SUIT', 5, 56950, 'QKLSWY2830', 1, 1, 28, 1, 1, '2024-01-03 16:24:41', NULL, '2024-01-03 16:24:41'),
(102, 'QK LADIES SUIT', 5, 62950, 'QKLSWY2827', 1, 1, 28, 1, 1, '2024-01-03 16:25:06', NULL, '2024-01-03 16:25:06'),
(103, 'QK LADIES SUIT', 5, 73950, 'QKLSWY2813', 1, 1, 28, 1, 1, '2024-01-03 16:25:29', NULL, '2024-01-03 16:25:29'),
(104, 'QK LADIES SUIT', 5, 79950, 'QKLSWY2802', 1, 1, 28, 1, 1, '2024-01-03 16:25:50', NULL, '2024-01-03 16:25:50'),
(105, 'QK LEATHER BACK PACK', 10, 43500, 'QKLBP0019', 1, 2, 27, 1, 1, '2024-01-03 16:26:35', NULL, '2024-01-03 16:26:35'),
(106, 'QK LEATHER BAG TWO POCKET', 10, 69000, 'QKLBTP0018', 1, 2, 27, 1, 1, '2024-01-03 16:27:01', NULL, '2024-01-03 16:27:01'),
(107, 'QK BOW DESIGN', 90, 6950, 'QKBWD001', 1, 2, 26, 1, 1, '2024-01-03 16:27:32', NULL, '2024-01-03 16:27:32'),
(108, 'QK BOW', 240, 3950, 'QKBW0016', 1, 2, 26, 1, 1, '2024-01-03 16:27:58', NULL, '2024-01-03 16:27:58'),
(109, 'QK CUFFLINKS', 3400, 4950, 'QKCFNK0014', 1, 2, 25, 1, 1, '2024-01-03 16:28:28', NULL, '2024-01-03 16:28:28'),
(110, 'QK VEST', 197, 4750, 'QKVST008', 1, 2, 21, 1, 1, '2024-01-03 16:30:19', NULL, '2024-01-03 16:30:19'),
(111, 'QK  SHIRT', 200, 11500, 'QK3F001', 1, 2, 20, 1, 1, '2024-01-03 16:30:51', NULL, '2024-01-03 16:30:51'),
(112, 'QK  SHIRT', 1000, 14500, 'QKMT813', 1, 2, 20, 1, 1, '2024-01-03 16:31:27', NULL, '2024-01-03 16:31:27'),
(113, 'QK  SHIRT', 399, 8750, 'QKSG002', 1, 2, 20, 1, 1, '2024-01-03 16:31:58', NULL, '2024-01-03 16:31:58'),
(114, 'QK  SHIRT', 300, 9990, 'QKZT70', 1, 2, 20, 1, 1, '2024-01-03 16:32:26', NULL, '2024-01-03 16:32:26'),
(115, 'QK  SHIRT', 700, 14950, 'QKZT110', 1, 2, 20, 1, 1, '2024-01-03 16:32:54', NULL, '2024-01-03 16:32:54'),
(116, 'G21238-103', 70, 0, 'QKG21238-103', 2, 2, 11, 1, 1, '2024-01-03 16:35:11', NULL, '2024-01-03 16:35:11'),
(117, 'G21238-191', 70, 0, 'QKG21238-191', 2, 2, 11, 1, 1, '2024-01-03 16:35:31', NULL, '2024-01-03 16:35:31'),
(118, 'W375003-1', 72, 0, 'QKW375003-1', 2, 2, 11, 1, 1, '2024-01-03 16:35:50', NULL, '2024-01-03 16:35:50'),
(119, 'W315006-19', 73, 0, 'QKW315006-19', 2, 2, 11, 1, 1, '2024-01-03 16:36:37', NULL, '2024-01-03 16:36:37'),
(120, 'W317007-4', 66, 0, 'QKW317007-4', 2, 2, 11, 1, 1, '2024-01-03 16:37:05', NULL, '2024-01-03 16:37:05'),
(121, 'W315082-1', 72, 0, 'QKW315082-1', 2, 2, 11, 1, 1, '2024-01-03 16:37:25', NULL, '2024-01-03 16:37:25'),
(122, '2138-6#', 50, 0, 'QK2138-6#', 2, 2, 11, 1, 1, '2024-01-03 16:37:53', NULL, '2024-01-03 16:37:53'),
(123, 'G21238-753', 72, 0, 'QKG21238-753', 2, 2, 11, 1, 1, '2024-01-03 16:38:18', NULL, '2024-01-03 16:38:18'),
(124, 'W315018-51', 70, 0, 'QKW315018-51', 2, 2, 11, 1, 1, '2024-01-03 16:38:44', NULL, '2024-01-03 16:38:44'),
(125, 'W318351-1-1', 69, 0, 'QKW318351-1-1', 2, 2, 11, 1, 1, '2024-01-03 16:39:03', NULL, '2024-01-03 16:39:03'),
(126, 'G21238-752', 71, 0, 'QKG21238-752', 2, 2, 11, 1, 1, '2024-01-03 16:39:26', NULL, '2024-01-03 16:39:26'),
(127, 'G21238-729', 75, 0, 'QKG21238-729', 2, 2, 11, 1, 1, '2024-01-03 16:39:48', NULL, '2024-01-03 16:39:48'),
(128, 'X311205-4', 71, 0, 'QKX311205-4', 2, 2, 11, 1, 1, '2024-01-03 16:40:22', NULL, '2024-01-03 16:40:22'),
(129, '9199-6', 63, 0, 'QK9199-6', 2, 2, 11, 1, 1, '2024-01-03 16:40:43', NULL, '2024-01-03 16:40:43'),
(130, 'K37007-1', 70, 0, 'QKK37007-1', 2, 2, 11, 1, 1, '2024-01-03 16:41:29', NULL, '2024-01-03 16:41:29'),
(131, 'K31102-2', 68, 0, 'QKK31102-2', 2, 2, 11, 1, 1, '2024-01-03 16:41:49', NULL, '2024-01-03 16:41:49'),
(132, 'W239005-1', 70, 0, 'QKW239005-1', 2, 2, 11, 1, 1, '2024-01-03 16:42:15', NULL, '2024-01-03 16:42:15'),
(133, '2169/16', 75, 0, 'QK2169/16', 2, 2, 11, 1, 1, '2024-01-03 16:42:42', NULL, '2024-01-03 16:42:42'),
(134, 'G21238-900', 70, 0, 'QKG21238-900', 2, 2, 11, 1, 1, '2024-01-03 16:43:00', NULL, '2024-01-03 16:43:00'),
(135, 'K21001-1', 60, 0, 'QKK21001-1', 2, 2, 11, 1, 1, '2024-01-03 16:43:29', NULL, '2024-01-03 16:43:29'),
(136, 'K21001-2', 64, 0, 'QKK21001-2', 2, 2, 11, 1, 1, '2024-01-03 16:44:19', NULL, '2024-01-03 16:44:19'),
(137, 'H57154-1', 68, 0, 'QKH57154-1', 2, 2, 11, 1, 1, '2024-01-03 16:44:40', NULL, '2024-01-03 16:44:40'),
(138, '2138/4', 73, 0, 'QK2138/4', 2, 2, 11, 1, 1, '2024-01-03 16:45:01', NULL, '2024-01-03 16:45:01'),
(139, '3899-30', 72, 0, 'QK3899-30', 2, 2, 11, 1, 1, '2024-01-03 16:45:19', NULL, '2024-01-03 16:45:19'),
(140, 'K31102-3', 72, 0, 'QKK31102-3', 2, 2, 11, 1, 1, '2024-01-03 16:45:39', NULL, '2024-01-03 16:45:39'),
(141, '3F-11', 100, 0, '3F-11', 2, 2, 12, 1, 1, '2024-01-03 16:46:01', NULL, '2024-01-03 16:46:01'),
(142, '3F-03', 100, 0, '3F-03', 2, 2, 12, 1, 1, '2024-01-03 16:46:23', NULL, '2024-01-03 16:46:23'),
(143, '3F-05', 100, 0, '3F-05', 2, 2, 12, 1, 1, '2024-01-03 16:46:49', NULL, '2024-01-03 16:46:49'),
(144, 'WHITE', 500, 0, 'WHITE', 2, 2, 12, 1, 1, '2024-01-03 16:47:22', NULL, '2024-01-03 16:47:22'),
(145, 'BLACK', 100, 0, 'BLACK', 2, 2, 12, 1, 1, '2024-01-03 16:47:48', NULL, '2024-01-03 16:47:48');

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
(11, 'SUITE FABRIC', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/suit-l.png', 2, 1, 1, '2024-01-03 03:43:49', NULL, '2024-01-03 03:43:49'),
(12, 'SHIRT FABRIC', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/shirt.png', 2, 1, 1, '2024-01-03 03:44:03', NULL, '2024-01-03 03:44:03'),
(13, 'QK HAT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/cap.png', 2, 1, 1, '2024-01-03 03:44:53', 1, '2024-01-03 14:46:40'),
(14, 'QK FROCK', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/frock.png', 2, 1, 1, '2024-01-03 03:45:23', 1, '2024-01-03 15:57:11'),
(15, 'QK WALLET', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/wallet.png', 2, 1, 1, '2024-01-03 14:47:17', NULL, '2024-01-03 14:47:17'),
(16, 'QK UMBRELLA', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/umbrella.png', 2, 1, 1, '2024-01-03 14:49:38', NULL, '2024-01-03 14:49:38'),
(17, 'QK UNDERWEAR', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/underwear.png', 2, 1, 1, '2024-01-03 14:50:08', NULL, '2024-01-03 14:50:08'),
(18, 'QK HANDKERCHIEF', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/handkerchief.png', 2, 1, 1, '2024-01-03 14:50:20', NULL, '2024-01-03 14:50:20'),
(19, 'QK GENTS SHOE', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/mens-shoe.png', 2, 1, 1, '2024-01-03 14:50:34', NULL, '2024-01-03 14:50:34'),
(20, 'QK  SHIRT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/shirt.png', 2, 1, 1, '2024-01-03 14:50:51', NULL, '2024-01-03 14:50:51'),
(21, 'QK VEST', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/vest.png', 2, 1, 1, '2024-01-03 14:52:11', NULL, '2024-01-03 14:52:11'),
(22, 'QK T SHIRT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/polo-shirt.png', 2, 1, 1, '2024-01-03 14:54:04', NULL, '2024-01-03 14:54:04'),
(23, 'QK BELT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/belt.png', 2, 1, 1, '2024-01-03 14:58:02', NULL, '2024-01-03 14:58:02'),
(25, 'QK CUFFLINKS', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/cufflinks.png', 2, 1, 1, '2024-01-03 15:06:07', NULL, '2024-01-03 15:06:07'),
(26, 'QK BOW', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/bow-tie.png', 2, 1, 1, '2024-01-03 15:07:36', NULL, '2024-01-03 15:07:36'),
(27, 'QK LEATHER BAG', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/school-bag.png', 2, 1, 1, '2024-01-03 15:10:03', NULL, '2024-01-03 15:10:03'),
(28, 'QK LADIES SUIT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/suit-l.png', 1, 1, 1, '2024-01-03 15:11:54', NULL, '2024-01-03 15:11:54'),
(29, 'QK GENTS SUIT', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/suit%20-%201.png', 2, 1, 1, '2024-01-03 15:14:04', NULL, '2024-01-03 15:14:04'),
(30, 'QK SHOES', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/mens-shoe.png', 2, 1, 1, '2024-01-03 15:14:29', NULL, '2024-01-03 15:14:29'),
(31, 'QK SLIPPER', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/flip-flops.png', 2, 1, 1, '2024-01-03 15:15:37', NULL, '2024-01-03 15:15:37'),
(32, 'QK TIE ', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/tie.png', 2, 1, 1, '2024-01-03 15:16:48', NULL, '2024-01-03 15:16:48'),
(33, 'QK HANDKERCHIEF', 'https://nbc-storage.s3.ap-southeast-1.amazonaws.com/images/handkerchief.png', 1, 1, 1, '2024-01-03 15:55:10', NULL, '2024-01-03 15:55:10');

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
(1, 'user 01', 'cashier@queenkuweni.com', '0719850755', '$2a$10$ceeb2bcf773c7cd2c40b1uJDVGS8El.tXS4N0LhDK7DQ5OfSbq2h.', 1, 1, 1, '2023-12-27 11:22:20', 1, '2023-12-27 11:22:20'),
(2, 'user 02', 'sales@queenkuweni.com', '0719850755', '$2a$10$ceeb2bcf773c7cd2c40b1uxZgaCW87CpcT.NK.rnFyi0oETpfvbXK', 2, 1, 1, '2023-12-29 07:07:34', 1, '2023-12-29 07:07:34');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
