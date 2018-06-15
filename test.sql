-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2018 at 10:57 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comtable`
--

CREATE TABLE `comtable` (
  `comId` int(15) NOT NULL,
  `empId` varchar(15) NOT NULL,
  `empName` varchar(25) NOT NULL,
  `comType` varchar(30) NOT NULL,
  `comDesc` varchar(250) NOT NULL,
  `comRecDt` date NOT NULL,
  `comTarDt` date NOT NULL,
  `comStat` varchar(50) NOT NULL DEFAULT 'complainted',
  `comStatus` int(11) NOT NULL DEFAULT '1',
  `comCreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comtable`
--

INSERT INTO `comtable` (`comId`, `empId`, `empName`, `comType`, `comDesc`, `comRecDt`, `comTarDt`, `comStat`, `comStatus`, `comCreateAt`) VALUES
(1, 'emp003', 'sara', 'about Service', 'Cannot receive any response', '2018-03-30', '2018-04-02', 'complainted', 1, '2018-03-30 07:32:03'),
(2, 'emp002', 'deepi', 'about my request', 'when you accept my request', '2018-04-03', '2018-04-06', 'Inprogress', 1, '2018-04-03 03:33:49'),
(3, 'emp003', 'sara', 'about request', 'Cannot receive response for my request', '2018-04-03', '2018-04-04', 'viewed', 1, '2018-04-03 04:29:10'),
(4, 'emp002', 'deepi', 'Response', 'You are not give any response to my request', '2018-04-03', '2018-04-06', 'solved', 0, '2018-04-03 04:50:16'),
(5, 'emp001', 'gayu', 'about operating system', 'windows 10 cannot work properly', '2018-04-01', '2018-04-05', 'complainted', 1, '2018-04-03 04:52:20'),
(6, 'emp001', 'gayu', 'about desktop service', 'I am not Statisfy with your service', '2018-04-03', '2018-04-05', 'complainted', 1, '2018-04-03 04:49:02'),
(7, 'emp001', 'Gayu', 'ss', 'ssssss', '2018-04-15', '2018-04-14', 'complainted', 1, '2018-04-10 05:36:41'),
(8, 'emp002', 'Deepi', 'about query', 'my query doesnot work', '2018-04-10', '2018-04-17', 'complainted', 1, '2018-04-10 05:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `emptable`
--

CREATE TABLE `emptable` (
  `id` int(10) NOT NULL,
  `empId` varchar(30) NOT NULL,
  `empName` varchar(30) NOT NULL,
  `empDob` date NOT NULL,
  `empGen` varchar(15) NOT NULL,
  `empMail` varchar(35) NOT NULL,
  `empMobile` bigint(10) NOT NULL,
  `empPwd` varchar(15) NOT NULL,
  `empConPwd` varchar(15) NOT NULL,
  `empDoj` date NOT NULL,
  `empSal` bigint(7) NOT NULL,
  `empAdrs` varchar(50) NOT NULL,
  `empStatus` int(5) NOT NULL DEFAULT '1',
  `empCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptable`
--

INSERT INTO `emptable` (`id`, `empId`, `empName`, `empDob`, `empGen`, `empMail`, `empMobile`, `empPwd`, `empConPwd`, `empDoj`, `empSal`, `empAdrs`, `empStatus`, `empCreate`) VALUES
(1, 'emp001', 'Gayu', '1992-11-10', 'Female', 'gayu@gmail.com', 9629332436, 'Gayu@123', 'Gayu@123', '2018-02-24', 15000, 'Coimbatore', 1, '2018-02-26 08:09:20'),
(2, 'emp002', 'Deepi', '1995-04-11', 'Female', 'deepi@gmail.com', 9003731872, 'Deepi@123', 'Deepi@123', '2018-02-27', 13000, 'Coimbatore', 1, '2018-02-27 02:45:57'),
(3, 'emp003', 'Sara', '1997-09-07', 'Female', 'sara@gmail.com', 8903893244, 'Sara@1234', 'Sara@1234', '2018-03-05', 11000, 'Madurai', 1, '2018-03-06 17:54:30'),
(4, 'emp004', 'Venu', '1996-04-09', 'Male', 'venu@gmail.com', 7897896521, 'Venu@123', 'Venu@123', '2018-04-04', 12000, 'Chennai', 1, '2018-04-05 18:14:32'),
(5, 'emp005', 'Bala', '1992-09-08', 'Male', 'Bala@gmail.com', 8965412220, 'Bala@123', 'Bala@123', '2016-05-06', 21500, 'Velur', 1, '2018-04-05 18:35:40'),
(6, 'emp006', 'Manju', '1989-10-24', 'Female', 'Manju@gmail.com', 8652325211, 'Manju@123', 'Manju@123', '2014-04-11', 25000, 'Tirupur', 1, '2018-04-05 18:37:38'),
(7, 'emp007', 'Arun', '1998-10-23', 'Male', 'arun@gmail.com', 8756332212, 'Arun@123', 'Arun@123', '2018-04-10', 15000, 'Bangalure', 1, '2018-04-10 04:29:16'),
(8, 'emp008', 'Aruna', '1998-05-02', 'Female', 'aruna@gmail.com', 8523285232, 'Aruna@123', 'Aruna@123', '2018-04-06', 15000, 'Bangalure', 1, '2018-04-10 04:30:18'),
(9, 'emp009', 'Dhanu', '1996-03-22', 'Female', 'dhanu@gmail.com', 8923589256, 'Dhanu@123', 'Dhanu@123', '2018-04-05', 21000, 'Coimbatore', 1, '2018-04-10 04:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `hardtable`
--

CREATE TABLE `hardtable` (
  `id` int(10) NOT NULL,
  `hardId` varchar(30) NOT NULL,
  `hardCat` varchar(30) NOT NULL,
  `hardBrand` varchar(30) NOT NULL,
  `hardDes` varchar(30) NOT NULL,
  `hardStock` int(10) NOT NULL,
  `hardWar` varchar(15) NOT NULL,
  `hardStatus` int(10) NOT NULL DEFAULT '1',
  `hardCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardtable`
--

INSERT INTO `hardtable` (`id`, `hardId`, `hardCat`, `hardBrand`, `hardDes`, `hardStock`, `hardWar`, `hardStatus`, `hardCreate`) VALUES
(1, 'hard001', 'HardDisk', 'HP', '1TB', 13, '1year', 1, '2018-02-26 08:41:14'),
(2, 'hard002', 'RAM Chip', 'DELL', '4GB RAM', 7, '2years', 1, '2018-03-10 05:29:49'),
(3, 'hard003', 'DVD driver', 'ACER', 'CD and DVD track', 12, '3years', 1, '2018-03-18 06:01:50'),
(4, 'hard004', 'Desktop', 'SONY', 'Desktop system', 15, '5years', 1, '2018-04-05 18:19:54'),
(5, 'hard005', 'Modem', 'Lenovo', 'Wifi Modem', 9, '2years', 1, '2018-04-05 18:22:10'),
(6, 'hard006', 'MotherBoard', 'HP', 'Hp motherboard', 21, '3years', 1, '2018-04-05 18:24:44'),
(7, 'hard007', 'SoundCard', 'DELL', 'Dell soundcard', 5, '1year', 1, '2018-04-05 18:25:32'),
(8, 'hard008', 'Microprocessor', 'ACER', 'microprocessor', 7, '3years', 1, '2018-04-05 18:27:03'),
(9, 'hard009', 'VideoCard', 'SONY', 'videocard', 8, '4years', 1, '2018-04-05 18:27:48'),
(10, 'hard010', 'CD-DVD', 'Lenovo', 'CD-DVD drive', 9, '6years', 1, '2018-04-05 18:28:46'),
(11, 'hard011', 'Casing', 'DELL', 'Casing card', 7, '4years', 1, '2018-04-05 18:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `ostable`
--

CREATE TABLE `ostable` (
  `id` int(10) NOT NULL,
  `osId` varchar(30) NOT NULL,
  `osType` varchar(15) NOT NULL,
  `osVer` varchar(25) NOT NULL,
  `osLice` varchar(15) NOT NULL,
  `osBit` varchar(25) NOT NULL,
  `osCost` varchar(10) NOT NULL,
  `osAvl` int(20) NOT NULL,
  `osStatus` int(5) NOT NULL DEFAULT '1',
  `osCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ostable`
--

INSERT INTO `ostable` (`id`, `osId`, `osType`, `osVer`, `osLice`, `osBit`, `osCost`, `osAvl`, `osStatus`, `osCreate`) VALUES
(1, 'os001', 'windows', '8.1', 'microsoft', '64', 'paid', 14, 1, '2018-02-26 08:56:26'),
(2, 'os002', 'windows', '10', 'microsoft', '64', 'paid', 12, 1, '2018-02-27 10:15:40'),
(3, 'os003', 'DOS', '10.2', 'open source', '32', 'free', 9, 1, '2018-03-18 05:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `reqtable`
--

CREATE TABLE `reqtable` (
  `reqId` int(10) NOT NULL,
  `reqType` varchar(25) NOT NULL,
  `reqTypeId` varchar(10) NOT NULL,
  `reqName` varchar(25) NOT NULL,
  `reqVer` varchar(25) NOT NULL,
  `reqQry` varchar(50) NOT NULL,
  `reqStatus` varchar(15) NOT NULL DEFAULT 'requested',
  `reqStat` int(10) NOT NULL DEFAULT '1',
  `reqCreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empId` varchar(25) NOT NULL,
  `empName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reqtable`
--

INSERT INTO `reqtable` (`reqId`, `reqType`, `reqTypeId`, `reqName`, `reqVer`, `reqQry`, `reqStatus`, `reqStat`, `reqCreateAt`, `empId`, `empName`) VALUES
(1, 'hardware', 'hard001', 'HardDisk', '1TB', 'no', 'requested', 1, '2018-03-28 04:30:29', 'emp003', 'sara'),
(2, 'hardware', 'hard002', 'RAM', '4GB', 'no', 'requested', 1, '2018-03-28 04:54:10', 'emp002', 'deepi'),
(3, 'software', 'soft002', 'visualcode', '2010', 'no', 'requested', 1, '2018-03-28 04:55:48', 'emp001', 'gayu'),
(4, 'opsys', 'os002', 'windows', '10', 'no', 'accepted', 0, '2018-03-28 04:56:38', 'emp003', 'sara'),
(5, 'opsys', 'os003', 'DOS', '10.2', 'no', 'accepted', 0, '2018-03-29 03:02:27', 'emp002', 'deepi'),
(6, 'opsys', 'os002', 'windows', '10', 'no', 'requested', 1, '2018-04-04 06:25:35', 'emp002', 'deepi'),
(7, 'opsys', 'os002', 'windows', '10', 'no', 'requested', 1, '2018-04-04 06:32:28', 'emp001', 'gayu'),
(8, 'software', 'soft001', 'tomcat', '8.0.45', 'I need next version', 'rejected', 2, '2018-04-05 09:15:34', 'emp003', 'sara'),
(9, 'hardware', 'hard003', 'DVD', 'CD', 'kkk', 'requested', 1, '2018-04-10 04:43:43', 'emp003', 'Sara'),
(10, 'opsys', 'os003', 'DOS', '10.2', 'ok', 'requested', 1, '2018-04-10 10:07:35', 'emp001', 'Gayu');

-- --------------------------------------------------------

--
-- Table structure for table `softtable`
--

CREATE TABLE `softtable` (
  `id` int(5) NOT NULL,
  `softId` varchar(15) NOT NULL,
  `softName` varchar(30) NOT NULL,
  `softVer` varchar(20) NOT NULL,
  `softLice` varchar(25) NOT NULL,
  `softPlat` varchar(30) NOT NULL,
  `softAvl` int(10) NOT NULL,
  `softStatus` int(5) NOT NULL DEFAULT '1',
  `softCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `softtable`
--

INSERT INTO `softtable` (`id`, `softId`, `softName`, `softVer`, `softLice`, `softPlat`, `softAvl`, `softStatus`, `softCreate`) VALUES
(1, 'soft001', 'tomcat', '8.0.45', 'apache', 'Windows', 12, 1, '2018-02-26 08:48:47'),
(2, 'soft002', 'visualcode', '2010', 'microsoft', 'Windows', 8, 1, '2018-02-28 09:42:49'),
(3, 'soft003', 'VisualBasic', '6.0', 'CGL', 'Windows', 5, 1, '2018-04-05 18:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(5) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userMail` varchar(30) NOT NULL,
  `userPwd` varchar(30) NOT NULL,
  `userStatus` int(10) NOT NULL DEFAULT '1',
  `userCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `userId`, `userName`, `userMail`, `userPwd`, `userStatus`, `userCreate`) VALUES
(1, 'emp002', 'Deepi', 'deepi@gmail.com', 'Deepi@123', 1, '2018-03-01 10:23:06'),
(2, 'emp000', 'admin', 'admin@gmail.com', 'admin', 1, '2018-03-01 10:23:55'),
(3, 'emp003', 'Sara', 'sara@gmail.com', 'Sara@1234', 1, '2018-03-06 17:59:15'),
(4, 'emp001', 'Gayu', 'gayu@gmail.com', 'Gayu@123', 1, '2018-03-06 18:00:21'),
(5, 'emp004', 'Venu', 'venu@gmail.com', 'Venu@123', 1, '2018-04-05 18:13:16'),
(6, 'emp005', 'Bala', 'Bala@gmail.com', 'Bala@123', 1, '2018-04-05 18:35:40'),
(7, 'emp006', 'Manju', 'Manju@gmail.com', 'Manju@123', 1, '2018-04-05 18:37:38'),
(8, 'emp007', 'Arun', 'arun@gmail.com', 'Arun@123', 1, '2018-04-10 04:29:16'),
(9, 'emp008', 'Aruna', 'aruna@gmail.com', 'Aruna@123', 1, '2018-04-10 04:30:18'),
(10, 'emp009', 'Dhanu', 'dhanu@gmail.com', 'Dhanu@123', 1, '2018-04-10 04:33:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comtable`
--
ALTER TABLE `comtable`
  ADD PRIMARY KEY (`comId`);

--
-- Indexes for table `emptable`
--
ALTER TABLE `emptable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardtable`
--
ALTER TABLE `hardtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ostable`
--
ALTER TABLE `ostable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reqtable`
--
ALTER TABLE `reqtable`
  ADD PRIMARY KEY (`reqId`),
  ADD UNIQUE KEY `reqId` (`reqId`),
  ADD UNIQUE KEY `reqId_2` (`reqId`),
  ADD KEY `reqId_3` (`reqId`);

--
-- Indexes for table `softtable`
--
ALTER TABLE `softtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comtable`
--
ALTER TABLE `comtable`
  MODIFY `comId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emptable`
--
ALTER TABLE `emptable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hardtable`
--
ALTER TABLE `hardtable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ostable`
--
ALTER TABLE `ostable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reqtable`
--
ALTER TABLE `reqtable`
  MODIFY `reqId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `softtable`
--
ALTER TABLE `softtable`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
