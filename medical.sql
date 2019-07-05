-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 12:48 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(9) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `phone` text NOT NULL,
  `roll` text NOT NULL,
  `email` text NOT NULL,
  `dept` text NOT NULL,
  `hall` text NOT NULL,
  `blood_group` text NOT NULL,
  `weight` text NOT NULL,
  `height` text NOT NULL,
  `symptoms` text NOT NULL,
  `analysis` text NOT NULL,
  `rx` text NOT NULL,
  `doctor_id` text NOT NULL,
  `status` int(2) NOT NULL,
  `status_medicine` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `phone`, `roll`, `email`, `dept`, `hall`, `blood_group`, `weight`, `height`, `symptoms`, `analysis`, `rx`, `doctor_id`, `status`, `status_medicine`) VALUES
(13, 'Aswin', 42, '9876543210', '1', 'aswin@gmail.com', '', '', 'O+', '70', '1.7', 'breath sweating,indigestion,body pain', 'Cardiovascular', 'clopidogrel,palvix', 'Cardiologist', 1, 0),
(14, 'Sankar', 60, '9786563421', '2', 'sankar3211@hotmail.com', '', '', 'A+', '67', '1.68', 'teeth pain', '', '', 'Dentist', 0, 0),
(15, 'Bony', 9, '9290032321', '3', '', '', '', 'O+', '30', '1.2', 'runny nose,congestion,cough', '', '', 'Pediatrician', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'mda', 'mda', 1),
(2, 'doc', 'doc', 2),
(3, 'med', 'med', 3),
(4, 'admin', 'admin', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
