-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 05:20 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ql_quancafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `username`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Admin'),
(2, 'dinhloc', '123456', 'Đinh Thị Lộc'),
(3, 'khanhngoc', '123456', 'Đào Khánh Ngọc'),
(4, 'thuha', '123456', 'Nguyễn Thu Hà');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`ID`, `name`, `price`, `start_date`, `end_date`) VALUES
(4, 'Cafe truyền thống', 50000, '2021-01-01', '2021-01-01'),
(5, 'Cafe Cacao', 60000, '2021-01-01', '2021-01-02'),
(6, 'Cafe Capuchino', 75000, '2021-01-01', '2021-01-03'),
(7, 'Espresso', 65000, '2021-01-01', '2021-01-05'),
(8, 'Trà tắc', 15000, '2021-01-01', '2021-01-03'),
(10, 'Trà đào cam sả', 35000, '2021-01-02', '2021-01-04'),
(11, 'Trà sữa chân trâu ', 40000, '2021-01-01', '2021-01-04'),
(12, 'Trà xanh matcha', 45000, '2021-02-01', '2021-02-14'),
(13, 'Trà sữa bạc hà', 30000, '2021-02-01', '2021-02-14'),
(14, 'Trà vải', 25000, '2021-03-01', '2021-03-08'),
(15, 'Trà hoa nhài', 40000, '2021-04-01', '2021-04-03'),
(16, 'Trà Ô Long', 45000, '2021-04-28', '2021-05-01'),
(17, 'Sinh tố xoài', 35000, '2021-06-02', '2021-06-03'),
(18, 'Sinh tố dâu', 30000, '2021-06-03', '2021-06-04'),
(19, 'Nước ép táo', 20000, '2021-06-04', '2021-06-04'),
(20, 'Nước ép cam', 20000, '2021-06-04', '2021-06-04'),
(21, 'Nước ép dưa hấu', 20000, '2021-06-01', '2021-06-04'),
(22, 'Nước ép mía', 10000, '2021-04-01', '2021-06-04'),
(23, 'Bánh Flan', 25000, '2021-06-11', '2021-06-12'),
(24, 'Bánh Tiramisu', 35000, '2021-06-11', '2021-06-13'),
(25, 'Bánh Cheesecake', 35000, '2021-06-11', '2021-06-11'),
(26, 'Kem dâu', 25000, '2021-06-11', '2021-06-11'),
(27, 'Kem sầu riêng', 30000, '2021-06-11', '2021-06-12'),
(28, 'Kem xôi ', 30000, '2021-06-12', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `ID` int(11) NOT NULL,
  `account_ID` int(11) NOT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tables_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`ID`, `account_ID`, `invoice_date`, `tables_id`, `status`, `total_price`) VALUES
(8, 2, '2021-05-03 00:04:50', 1, 1, 260000),
(9, 2, '2021-05-04 00:04:47', 2, 1, 200000),
(10, 3, '2021-05-04 02:04:00', 5, 1, 170000),
(11, 4, '2021-05-05 00:07:15', 2, 1, 300000),
(12, 3, '2021-05-06 14:19:46', 1, 1, 220000),
(13, 3, '2021-05-06 14:24:19', 7, 1, 60000),
(14, 2, '2021-05-06 14:24:33', 7, 1, 40000),
(15, 2, '2021-05-07 15:03:44', 1, 1, 40000),
(16, 2, '2021-05-08 15:06:24', 2, 1, 80000),
(17, 4, '2021-05-09 02:12:10', 13, 1, 160000),
(18, 3, '2021-06-01 04:49:31', 1, 1, 80000),
(19, 3, '2021-06-02 07:38:16', 1, 1, 270000),
(20, 3, '2021-06-03 04:50:36', 2, 1, 620000),
(21, 4, '2021-06-12 07:51:40', 2, 1, 50000),
(22, 4, '2021-06-05 04:51:20', 3, 1, 1140000),
(23, 2, '2021-06-06 07:52:11', 3, 2, 50000),
(24, 4, '2021-06-07 04:51:31', 4, 1, 35000),
(25, 3, '2021-06-08 04:51:37', 5, 1, 75000),
(26, 3, '2021-06-09 04:51:51', 7, 2, 90000),
(27, 2, '2021-06-12 07:38:47', 1, 1, 50000),
(28, 4, '2021-06-12 07:55:56', 16, 1, 60000),
(29, 4, '2021-06-12 08:57:59', 9, 1, 315000),
(30, 2, '2021-06-12 09:25:45', 15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `drinks_ID` int(11) NOT NULL,
  `count` int(50) NOT NULL,
  `invoice_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `drinks_ID`, `count`, `invoice_ID`) VALUES
(13, 4, 1, 8),
(14, 6, 1, 8),
(15, 5, 1, 9),
(16, 7, 1, 10),
(17, 6, 1, 11),
(18, 4, 1, 11),
(19, 5, 1, 11),
(20, 7, 1, 11),
(23, 4, 2, 12),
(24, 5, 2, 12),
(25, 5, 2, 13),
(26, 6, 2, 14),
(27, 4, 1, 15),
(28, 7, 2, 16),
(29, 10, 2, 17),
(30, 11, 2, 17),
(31, 7, 2, 18),
(32, 4, 2, 19),
(34, 4, 1, 20),
(35, 10, 2, 20),
(36, 8, 2, 20),
(37, 4, 2, 21),
(38, 10, 1, 21),
(39, 8, 1, 21),
(40, 11, 1, 22),
(41, 11, 1, 23),
(42, 13, 3, 24),
(43, 5, 3, 25),
(44, 4, 1, 25),
(45, 10, 1, 26),
(46, 7, 4, 26),
(47, 10, 2, 19),
(48, 26, 2, 27),
(49, 27, 2, 28),
(50, 4, 2, 29),
(51, 8, 1, 29),
(52, 7, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `ID` int(11) NOT NULL,
  `table_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`ID`, `table_name`, `note`, `status`) VALUES
(1, 'Bàn 1', '2 người', 0),
(2, 'Bàn 2', '4 người', 1),
(3, 'Bàn 3', '1 người', 1),
(4, 'Bàn 4', '3 người', 1),
(5, 'Bàn 5', '5 người', 1),
(7, 'Bàn 6', '5 người', 1),
(9, 'Bàn 7', 'Còn trống', 0),
(13, 'Bàn 8', 'Còn trống', 0),
(14, 'Bàn 9', 'Còn trống', 0),
(15, 'Bàn 10', 'Còn trống', 1),
(16, 'Bàn 11', 'Còn trống', 0),
(17, 'Bàn 12', 'Còn trống', 0),
(18, 'Bàn 13', 'Còn trống', 0),
(19, 'Bàn 14', 'Còn trống', 0),
(20, 'Bàn 15', 'Còn trống', 0),
(21, 'Bàn 16', 'Còn trống', 0),
(22, 'Bàn 17', 'Còn trống', 0),
(23, 'Bàn 18', 'Còn trống', 0),
(24, 'Bàn 19', 'Còn trống', 0),
(25, 'Bàn 20', 'Còn trống', 0),
(26, 'Bàn 21', 'Còn trống', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `account_ID` (`account_ID`),
  ADD KEY `tables_id` (`tables_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `drinks_ID` (`drinks_ID`),
  ADD KEY `invoice_ID` (`invoice_ID`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`account_ID`) REFERENCES `account` (`ID`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`tables_id`) REFERENCES `tables` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`drinks_ID`) REFERENCES `drinks` (`ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`invoice_ID`) REFERENCES `invoice` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
