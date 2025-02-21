-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2025 at 05:44 AM
-- Server version: 10.11.9-MariaDB-0+deb12u1
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginattemp`
--

CREATE TABLE `loginattemp` (
  `ATTEMPID` int(11) NOT NULL,
  `IPADDRESS` varchar(100) DEFAULT NULL,
  `ATTEMPCOUNT` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `loginattemp`
--

INSERT INTO `loginattemp` (`ATTEMPID`, `IPADDRESS`, `ATTEMPCOUNT`) VALUES
(976, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `LOGID` int(11) NOT NULL,
  `USERID` varchar(30) DEFAULT NULL,
  `USER_NAME` varchar(60) DEFAULT NULL,
  `ACTION` text DEFAULT NULL,
  `DATELOG` varchar(30) DEFAULT NULL,
  `TIMELOG` varchar(30) DEFAULT NULL,
  `user_ip_address` text DEFAULT NULL,
  `device_used` text DEFAULT NULL,
  `PORTAL` int(11) DEFAULT NULL,
  `AY` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `COMPANYID` varchar(60) DEFAULT NULL,
  `CAMPUSID` int(11) DEFAULT NULL,
  `IDENTIFIER` varchar(30) DEFAULT NULL,
  `ACCOUNT_ID` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`LOGID`, `USERID`, `USER_NAME`, `ACTION`, `DATELOG`, `TIMELOG`, `user_ip_address`, `device_used`, `PORTAL`, `AY`, `SEMESTER`, `COMPANYID`, `CAMPUSID`, `IDENTIFIER`, `ACCOUNT_ID`) VALUES
(170116, 'admin', 'White, Adam R.', 'Logout to the system.', '2025-01-04', '09:31:12', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGOUT', NULL),
(170117, 'admin', 'White, Adam R.', 'Login to the system.n', '2025-01-04', '09:31:20', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170118, 'admin', 'White, Adam R.', 'Logout to the system.', '2025-01-04', '09:43:58', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGOUT', NULL),
(170119, 'admin', 'White, Adam R.', 'Login to the system.', '2025-01-04', '09:47:20', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170120, 'admin', 'White, Adam R.', 'New User has been created successfully!', '2025-01-04', '10:01:19', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'INSERT', NULL),
(170121, 'admin', 'White, Adam R.', 'New User has been updated successfully!', '2025-01-04', '10:08:58', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170122, 'admin', 'White, Adam R.', 'Login to the system.', '2025-01-04', '10:19:41', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170123, 'admin', 'White, Adam R.', 'Logout to the system.', '2025-01-04', '10:19:49', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGOUT', NULL),
(170124, 'admin', 'White, Adam R.', 'Login to the system.', '2025-01-04', '10:20:20', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170125, 'admin', 'White, Adam R.', 'Logout to the system.', '2025-01-04', '10:22:41', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGOUT', NULL),
(170126, 'admin', 'White, Adam R.', 'Login to the system.', '2025-01-04', '10:23:00', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170127, 'admin', 'White, Adam R.', 'User with ID admin has been updated successfully!', '2025-01-04', '10:42:51', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170128, 'admin', 'White, Adam R.', 'User with ID admin has been updated successfully!', '2025-01-04', '10:42:56', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170129, 'admin', 'White, Adam R.', 'User with ID admin has been updated successfully!', '2025-01-04', '10:43:25', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170130, 'admin', 'White, Adam R.', 'User with ID admin has been updated successfully!', '2025-01-04', '10:43:29', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170131, 'admin', 'White, Adam R.', 'User with ID admin has been updated successfully!', '2025-01-04', '10:43:32', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'UPDATE', NULL),
(170132, 'admin', 'White, Adam R.', 'Logout to the system.', '2025-01-04', '10:57:32', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGOUT', NULL),
(170133, 'admin', 'White, Adam Ray', 'Login to the system.', '2025-01-04', '10:57:37', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL),
(170134, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:08:49', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170135, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:08:53', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170136, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:10:15', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170137, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:10:50', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170138, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:10:53', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170139, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:10:55', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170140, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:11:43', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170141, 'admin', 'White, Adam Ray', 'New User [EMPID: 1] has been created successfully!', '2025-01-04', '11:12:02', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'INSERT', NULL),
(170142, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:12:04', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170143, 'admin', 'White, Adam Ray', 'New User [EMPID: 1] has been created successfully!', '2025-01-04', '11:17:40', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'INSERT', NULL),
(170144, 'admin', 'White, Adam Ray', 'User has been removed successfully!', '2025-01-04', '11:20:14', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'DELETE', NULL),
(170145, 'admin', 'White, Adam Ray', 'Login to the system.', '2025-01-04', '13:06:14', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 12, '', '', NULL, NULL, 'LOGIN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERID` int(11) NOT NULL,
  `FULLNAME` text DEFAULT NULL,
  `FNAME` varchar(30) DEFAULT NULL,
  `MNAME` varchar(30) DEFAULT NULL,
  `LNAME` varchar(30) DEFAULT NULL,
  `CONTACT` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `EMPID` varchar(30) NOT NULL,
  `PASSWORD` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERID`, `FULLNAME`, `FNAME`, `MNAME`, `LNAME`, `CONTACT`, `ADDRESS`, `EMPID`, `PASSWORD`) VALUES
(1, 'White, Adam Ray', 'Adam', 'Ray', 'White', '1234567890', 'Bacolod', 'admin', '$2y$10$AUcGISnmnIkP7/iBgv/DkeG5xgFBwk.Rj/fiAaerx4XvzBQQc6RI6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginattemp`
--
ALTER TABLE `loginattemp`
  ADD PRIMARY KEY (`ATTEMPID`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`LOGID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `USER_NAME` (`USER_NAME`),
  ADD KEY `CAMPUSID` (`CAMPUSID`),
  ADD KEY `SEMESTER` (`SEMESTER`),
  ADD KEY `AY` (`AY`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginattemp`
--
ALTER TABLE `loginattemp`
  MODIFY `ATTEMPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170146;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
