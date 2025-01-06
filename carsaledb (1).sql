-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 06:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carsaledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `availablecars`
--

CREATE TABLE `availablecars` (
  `purid` int(200) NOT NULL,
  `dealerid` int(200) NOT NULL,
  `dealername` varchar(200) NOT NULL,
  `carname` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `registno` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `fueltype` varchar(250) NOT NULL,
  `kmsdriven` bigint(200) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availablecars`
--

INSERT INTO `availablecars` (`purid`, `dealerid`, `dealername`, `carname`, `manufacturer`, `registno`, `model`, `fueltype`, `kmsdriven`, `amount`, `discount`, `total`, `date`) VALUES
(1, 1, 'Jaswal', 'Altroz', 'Tata', 'ch45rc5566', '2020', 'Petrol', 27000, 660000, 38000, 622000, '2022-09-02'),
(4, 5, 'Oberoi', 'Thar', 'Mahindra', 'gt99fc0001', '2021', 'Petrol', 9000, 1400000, 60000, 1340000, '2022-09-06'),
(6, 1, 'Jaswal', 'Venue', 'Hyundai', 'hr45jp5284', '2019', 'Diesel', 32000, 750000, 40000, 710000, '2022-09-17'),
(2, 3, 'Dewan', 'i20 Sportz', 'Hyundai', 'hr89gt4745', '2019', 'Petrol', 10000, 680000, 40000, 640000, '2022-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `sno` int(200) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `manufacturer` varchar(200) NOT NULL,
  `registno` varchar(200) NOT NULL,
  `fueltype` varchar(200) NOT NULL,
  `kmsdriven` varchar(250) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`sno`, `name`, `phone`, `date`, `address`, `pic`, `cname`, `model`, `manufacturer`, `registno`, `fueltype`, `kmsdriven`, `price`) VALUES
(1, 'Prachi', '8523694175', '2022-09-12', 'Delhi', '1663605405783aadhaar.jpg', 'Swift', '2018', 'Maruti Suzuki', 'pb96zm9988', 'Petrol', '15000', 235000),
(2, 'Sumit', '9865326989', '2022-09-16', 'Mohali', '1663605474839aadharimg2.jpg', 'Baleno', '2021', 'Maruti Suzuki', 'hp23yz2323', 'Diesel', '11000', 750000);

-- --------------------------------------------------------

--
-- Table structure for table `dealertable`
--

CREATE TABLE `dealertable` (
  `dealerid` int(250) NOT NULL,
  `dname` varchar(100) NOT NULL,
  `dphone` varchar(100) NOT NULL,
  `daddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealertable`
--

INSERT INTO `dealertable` (`dealerid`, `dname`, `dphone`, `daddress`) VALUES
(1, 'Jaswal', '9865326598', 'Himachal'),
(2, 'Kamboj', '7896541232', 'Punjab'),
(3, 'Dewan', '8896547458', 'Chandigarh'),
(4, 'Dutt', '8965235471', 'Delhi'),
(5, 'Oberoi', '9745699856', 'Hydrabad');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purid` int(200) NOT NULL,
  `dealerid` int(200) NOT NULL,
  `dealername` varchar(250) NOT NULL,
  `carname` varchar(250) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `registno` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `fueltype` varchar(250) NOT NULL,
  `kmsdriven` bigint(250) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purid`, `dealerid`, `dealername`, `carname`, `manufacturer`, `registno`, `model`, `fueltype`, `kmsdriven`, `amount`, `discount`, `total`, `date`) VALUES
(1, 1, 'Jaswal', 'Altroz', 'Tata', 'ch45rc5566', '2020', 'Petrol', 27000, 660000, 38000, 622000, '2022-09-02'),
(4, 5, 'Oberoi', 'Thar', 'Mahindra', 'gt99fc0001', '2021', 'Petrol', 9000, 1400000, 60000, 1340000, '2022-09-06'),
(3, 2, 'Kamboj', 'Baleno', 'Maruti Suzuki', 'hp23yz2323', '2021', 'Diesel', 11000, 750000, 38000, 712000, '2022-09-05'),
(6, 1, 'Jaswal', 'Venue', 'Hyundai', 'hr45jp5284', '2019', 'Diesel', 32000, 750000, 40000, 710000, '2022-09-17'),
(2, 3, 'Dewan', 'i20 Sportz', 'Hyundai', 'hr89gt4745', '2019', 'Petrol', 10000, 680000, 40000, 640000, '2022-09-03'),
(5, 4, 'Dutt', 'Swift', 'Maruti Suzuki', 'pb96zm9988', '2018', 'Petrol', 15000, 235000, 30000, 205000, '2022-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `name` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`name`, `phone`, `gender`, `dob`, `address`, `username`, `password`, `usertype`) VALUES
('Abhay rana', '7896542365', 'male', '2002-08-01', 'Jalandhar', 'abhay', '123', 'Admin'),
('Aman', '8965236598', 'male', '2003-09-08', 'Delhi', 'aman', '456', 'User'),
('Ria', '8523647198', 'female', '2005-01-13', 'Mohali', 'ria', '456', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availablecars`
--
ALTER TABLE `availablecars`
  ADD PRIMARY KEY (`registno`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `dealertable`
--
ALTER TABLE `dealertable`
  ADD PRIMARY KEY (`dealerid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`registno`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `sno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dealertable`
--
ALTER TABLE `dealertable`
  MODIFY `dealerid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
