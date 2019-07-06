-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 06, 2019 at 06:54 PM
-- Server version: 10.0.36-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `busDetails`
--

CREATE TABLE `busDetails` (
  `id` int(11) NOT NULL,
  `bus_code` varchar(1000) NOT NULL,
  `school_code` varchar(1000) NOT NULL,
  `brand` varchar(1000) NOT NULL,
  `model` varchar(1000) NOT NULL,
  `chasis_number` varchar(1000) NOT NULL,
  `numberplate` varchar(1000) NOT NULL,
  `drivername` varchar(1000) NOT NULL,
  `driver_telephone` int(11) NOT NULL,
  `driver_address` varchar(1000) NOT NULL,
  `addate` date NOT NULL,
  `addtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `busWorking`
--

CREATE TABLE `busWorking` (
  `id` int(11) NOT NULL,
  `working_code` varchar(1000) NOT NULL,
  `bus_code` varchar(1000) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `childDetails`
--

CREATE TABLE `childDetails` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `child_code` varchar(1000) NOT NULL,
  `parent_code` varchar(1000) NOT NULL,
  `school_code` varchar(1000) NOT NULL,
  `addate` date NOT NULL,
  `addtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `parent_code` varchar(1000) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parentDetails`
--

CREATE TABLE `parentDetails` (
  `id` int(11) NOT NULL,
  `parent_code` varchar(1000) NOT NULL,
  `child_code` varchar(100) NOT NULL,
  `school_code` varchar(100) NOT NULL,
  `confirmation_code` varchar(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `telephone` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `addate` date NOT NULL,
  `addtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `School_details`
--

CREATE TABLE `School_details` (
  `id` int(11) NOT NULL,
  `school_code` varchar(1000) NOT NULL,
  `bus_code` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `addate` date NOT NULL,
  `addtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busDetails`
--
ALTER TABLE `busDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busWorking`
--
ALTER TABLE `busWorking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childDetails`
--
ALTER TABLE `childDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `School_details`
--
ALTER TABLE `School_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busDetails`
--
ALTER TABLE `busDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `busWorking`
--
ALTER TABLE `busWorking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `childDetails`
--
ALTER TABLE `childDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `School_details`
--
ALTER TABLE `School_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
