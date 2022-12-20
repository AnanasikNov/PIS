-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2022 at 10:20 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aura`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `login`, `Name`) VALUES
(1, '111', 'Nastya'),
(2, 'Nastya', 'JIUJO');

-- --------------------------------------------------------

--
-- Table structure for table `tovar`
--

CREATE TABLE `tovar` (
  `id` int(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `PlatieCheck` varchar(45) NOT NULL,
  `JeansCheck` varchar(45) NOT NULL,
  `BluzkaCheck` varchar(45) NOT NULL,
  `Provider` varchar(45) NOT NULL,
  `Prise` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Cloth` varchar(45) NOT NULL,
  `Sezon` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tovar`
--

INSERT INTO `tovar` (`id`, `Type`, `PlatieCheck`, `JeansCheck`, `BluzkaCheck`, `Provider`, `Prise`, `Name`, `Cloth`, `Sezon`) VALUES
(1, 'Dress', '+', '-', '-', 'Italy', '30000', 'LIUJO', 'Jersy', 'All');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(45) NOT NULL,
  `login` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `City` varchar(45) CHARACTER SET utf8 NOT NULL,
  `e-mail` varchar(45) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `City`, `e-mail`, `phone_number`) VALUES
(8, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin'),
(10, 'Nastya', 'Nastya', 'Nastya', 'Nastya', 'Nastya');

-- --------------------------------------------------------

--
-- Table structure for table `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `adress` varchar(45) CHARACTER SET utf8 NOT NULL,
  `check` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Courier` varchar(45) CHARACTER SET utf8 NOT NULL,
  `city` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Artikul` varchar(45) CHARACTER SET utf8 NOT NULL,
  `TypeOplati` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zakaz`
--

INSERT INTO `zakaz` (`id`, `Name`, `adress`, `check`, `Courier`, `city`, `Artikul`, `TypeOplati`, `Status`) VALUES
(3, 'Nastya', '1', '+', 'Alex', 'Nastya', '1', '1', 'получено'),
(4, 'Nastya', 'test1', '', '', 'Nastya', 'Наличными', 'JIUJO', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
