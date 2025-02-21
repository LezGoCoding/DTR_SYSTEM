-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dtr`
--

-- --------------------------------------------------------

--
-- Table structure for table `dtr_employeetble`
--

CREATE TABLE `dtr_employeetble` (
  `EMPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dtr_timelog`
--

CREATE TABLE `dtr_timelog` (
  `TIMEID` int(11) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `TIME_IN` int(11) NOT NULL,
  `TIME_OUT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dtr_user`
--

CREATE TABLE `dtr_user` (
  `USERID` int(11) NOT NULL,
  `FULLNAME` text NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `CONTACT` varchar(30) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `EMPID` varchar(30) NOT NULL,
  `PASSWORD` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dtr_user`
--

INSERT INTO `dtr_user` (`USERID`, `FULLNAME`, `FNAME`, `MNAME`, `LNAME`, `CONTACT`, `ADDRESS`, `EMPID`, `PASSWORD`) VALUES
(1, 'gan,james emmanuel', 'james emmanuel', 'gan', 'ramirez', '987456', 'payao', '123', '*23AE809DDACAF96AF0FD78ED04B6A');

-- --------------------------------------------------------

--
-- Table structure for table `loginattemp`
--

CREATE TABLE `loginattemp` (
  `ATTEMPID` int(11) NOT NULL,
  `IPADDRESS` varchar(100) NOT NULL,
  `ATTEMPCOUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `LOGID` int(11) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `ACCOUNT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtr_employeetble`
--
ALTER TABLE `dtr_employeetble`
  ADD PRIMARY KEY (`EMPID`);

--
-- Indexes for table `dtr_user`
--
ALTER TABLE `dtr_user`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `loginattemp`
--
ALTER TABLE `loginattemp`
  ADD PRIMARY KEY (`ATTEMPID`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`LOGID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtr_employeetble`
--
ALTER TABLE `dtr_employeetble`
  MODIFY `EMPID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtr_user`
--
ALTER TABLE `dtr_user`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loginattemp`
--
ALTER TABLE `loginattemp`
  MODIFY `ATTEMPID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
