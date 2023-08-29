-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 07:21 AM
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
-- Database: `id20230661_myoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `company_name` varchar(250) NOT NULL,
  `owner_name` text NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`company_name`, `owner_name`, `password`) VALUES
('bansri', 'bansri', '12345678'),
('kp', 'kiran modi', '12345678'),
('meet', 'meet', '12345678'),
('meet12', 'meet12', '12345678'),
('meetmistry', 'meet', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `cust_date`
--

CREATE TABLE `cust_date` (
  `cname` varchar(250) NOT NULL,
  `estimate` int(250) NOT NULL,
  `company_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cust_date`
--

INSERT INTO `cust_date` (`cname`, `estimate`, `company_name`) VALUES
('abc', 100000, 'bansri'),
('laxmi hotel', 300000, 'meetmistry'),
('meet', 34354, 'meet'),
('nikhil', 10000, 'meetmistry'),
('panorama', 1000000, 'bansri'),
('Ti tech', 150000, 'bansri');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dname`) VALUES
('exam'),
('GH kher'),
('Hariom'),
('kj'),
('KJ pipes'),
('Nk');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `eid` bigint(255) NOT NULL,
  `hsncode` text NOT NULL,
  `cname` varchar(250) NOT NULL,
  `dname` varchar(250) NOT NULL,
  `pname` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `amount` int(250) NOT NULL,
  `qty` int(250) NOT NULL,
  `unit` text NOT NULL,
  `p_u` varchar(250) NOT NULL,
  `amt_date` date DEFAULT NULL,
  `productdis` text NOT NULL,
  `des` text NOT NULL,
  `company_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`eid`, `hsncode`, `cname`, `dname`, `pname`, `date`, `amount`, `qty`, `unit`, `p_u`, `amt_date`, `productdis`, `des`, `company_name`) VALUES
(28, '123HS', 'Ti tech', 'Nk', 'pipe', '2023-04-17', 100000, 20, 'nos', 'paid', '2023-04-18', '3', 'cash', 'bansri'),
(29, '143HS', 'Ti tech', 'Hariom', 'Fire bottle ', '2023-04-17', 30000, 3, 'nos', 'paid', '2023-04-17', 'abc bottle', 'cash', 'bansri'),
(30, '232HS', 'panorama', 'Nk', 'pipe', '2023-04-05', 400000, 400, 'nos', 'paid', '2023-04-13', '9', 'cash', 'bansri'),
(31, '123HS', 'laxmi hotel', 'Nk', 'sprinklar', '2023-04-11', 100000, 50, 'nos', 'paid', '2023-04-12', 'RIB sprinkals', 'cash', 'meetmistry'),
(32, '122HS', 'abc', 'kj', 'pipe', '2023-04-18', 10000, 20, 'ft', 'unpaid', '2023-04-18', '3', 'bank', 'bansri'),
(36, '2', 'meet', 'KJ pipes', 'bolt', '2023-08-22', 7668, 5, 'nos', 'paid', '2023-08-30', 'hdhsk', 'jhsa', 'meetmistry');

-- --------------------------------------------------------

--
-- Table structure for table `godown`
--

CREATE TABLE `godown` (
  `pname` varchar(250) NOT NULL,
  `qty` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `inid` bigint(255) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `amount` int(250) NOT NULL,
  `amt_date` date NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`inid`, `cname`, `company_name`, `amount`, `amt_date`, `des`) VALUES
(17, 'Ti tech', 'bansri', 120000, '2023-04-13', 'cash'),
(18, 'panorama', 'bansri', 1000000, '2023-04-18', 'RTGS to bansri'),
(19, 'laxmi hotel', 'meetmistry', 15000, '2023-04-12', 'cash'),
(21, 'raju', 'meetmistry', 67867, '2023-08-29', 'jhgjhg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pname`) VALUES
('bolt'),
('pipe'),
('TYU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`company_name`);

--
-- Indexes for table `cust_date`
--
ALTER TABLE `cust_date`
  ADD PRIMARY KEY (`cname`),
  ADD KEY `comname` (`company_name`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `did` (`dname`),
  ADD KEY `pid` (`pname`),
  ADD KEY `conname` (`company_name`),
  ADD KEY `cid` (`cname`);

--
-- Indexes for table `godown`
--
ALTER TABLE `godown`
  ADD PRIMARY KEY (`pname`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`inid`),
  ADD KEY `compnay_name` (`company_name`),
  ADD KEY `c_id` (`cname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `eid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `inid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cust_date`
--
ALTER TABLE `cust_date`
  ADD CONSTRAINT `comname` FOREIGN KEY (`company_name`) REFERENCES `contractor` (`company_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cname`) REFERENCES `cust_date` (`cname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `conname` FOREIGN KEY (`company_name`) REFERENCES `contractor` (`company_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `c_id` FOREIGN KEY (`cname`) REFERENCES `cust_date` (`cname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compnay_name` FOREIGN KEY (`company_name`) REFERENCES `contractor` (`company_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
