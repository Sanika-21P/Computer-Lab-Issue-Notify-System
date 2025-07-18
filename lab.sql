-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2025 at 01:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(5) NOT NULL,
  `Aname` varchar(50) NOT NULL,
  `Aemail` varchar(50) NOT NULL,
  `Apwd` varchar(15) NOT NULL,
  `Amob` varchar(15) NOT NULL,
  `Admintyp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Aname`, `Aemail`, `Apwd`, `Amob`, `Admintyp`) VALUES
(7, 'Sakshi Patil', 'sakshivpatil211@gmail.com', '12345', '7845963210', 'LabAssistant'),
(8, 'Sanika Patil', 'sanikapatil9209@gmail.com', '123456789', '9209016602', 'Admin'),
(10, 'Sanchita Sid', 'sanchitasid7@gmail.com', '54321', '9209016609', 'Teacher'),
(11, 'Sejal Minchekar', 'minchekarsejal@gmail.com', '123456', '8767259397', 'Teacher'),
(12, 'Sakshi Gaikwad', 'gaikwad.sakshib@gmail.com', '123456', '9209095186', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `lab_assistant`
--

CREATE TABLE `lab_assistant` (
  `Lid` int(5) NOT NULL,
  `LabName` varchar(30) NOT NULL,
  `Assistant` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_assistant`
--

INSERT INTO `lab_assistant` (`Lid`, `LabName`, `Assistant`) VALUES
(8, 'Database', 7);

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `Pid` int(5) NOT NULL,
  `ProblemSubject` text NOT NULL,
  `ProblemDetails` text NOT NULL,
  `Lab` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `Posteddate` datetime NOT NULL,
  `Resolve` text NOT NULL,
  `ResolveDetails` text NOT NULL,
  `Resolvedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`Pid`, `ProblemSubject`, `ProblemDetails`, `Lab`, `UID`, `Posteddate`, `Resolve`, `ResolveDetails`, `Resolvedate`) VALUES
(16, 's gsgdfgd', ' f gfdgd', 1, 6, '2024-04-22 11:22:58', '', '', '0000-00-00 00:00:00'),
(17, 'Network issue in my lab', 'internet not access ', 5, 3, '2024-04-22 01:09:39', '', '', '0000-00-00 00:00:00'),
(18, 'Network issue in my lab	', ' internet not access	', 5, 3, '2024-04-22 01:11:54', '', '', '0000-00-00 00:00:00'),
(19, 'Network', ' no internet connection', 4, 10, '2024-04-22 09:02:31', '', '', '0000-00-00 00:00:00'),
(20, 'network', ' internet not working', 4, 10, '2024-04-23 02:56:48', '', '', '0000-00-00 00:00:00'),
(21, 'network', ' internet problem', 4, 10, '2024-04-23 03:05:20', '', '', '0000-00-00 00:00:00'),
(22, 'network', ' internet issue', 4, 6, '2024-04-23 03:21:09', 'partially', ' external hardware requirements', '2024-04-23 03:24:19'),
(23, 'network', 'internet not working', 4, 6, '2024-04-23 03:37:42', '', '', '0000-00-00 00:00:00'),
(24, 'network', ' internet not working', 4, 6, '2024-04-23 03:39:20', '', '', '0000-00-00 00:00:00'),
(25, 'network', ' internet not working', 4, 6, '2024-04-23 03:39:27', '', '', '0000-00-00 00:00:00'),
(26, 'network', ' internet not working', 4, 6, '2024-04-23 03:39:33', 'partially', 'hardware requirement', '2024-04-23 03:41:08'),
(27, 'Database', ' internet not working', 8, 8, '2024-04-25 11:34:18', 'partially', ' external hardware requirements', '2024-04-26 06:31:20'),
(28, 'Database', ' internet not working', 8, 8, '2024-04-25 11:34:22', '', '', '0000-00-00 00:00:00'),
(29, 'Network', ' PC number DB-01 has network connectivity issues', 8, 10, '2024-04-26 06:27:01', 'Completely', ' ', '2024-04-26 06:34:07'),
(30, 'network', 'Pc no -04 DB has network not responding problem', 8, 10, '2024-04-27 10:22:47', 'partially', ' hardware requirements', '2024-04-27 10:25:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `lab_assistant`
--
ALTER TABLE `lab_assistant`
  ADD PRIMARY KEY (`Lid`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lab_assistant`
--
ALTER TABLE `lab_assistant`
  MODIFY `Lid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `Pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
