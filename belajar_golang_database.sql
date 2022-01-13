-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 03:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_golang_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `comment`) VALUES
(1, 'razzi@email.com', 'Tes Komentar'),
(2, 'razzi@email.com', 'Tes Komentar'),
(3, 'razzi0@gmail.com', 'Komentar ke 0'),
(4, 'razzi1@gmail.com', 'Komentar ke 1'),
(5, 'razzi2@gmail.com', 'Komentar ke 2'),
(6, 'razzi3@gmail.com', 'Komentar ke 3'),
(7, 'razzi4@gmail.com', 'Komentar ke 4'),
(8, 'razzi5@gmail.com', 'Komentar ke 5'),
(9, 'razzi6@gmail.com', 'Komentar ke 6'),
(10, 'razzi7@gmail.com', 'Komentar ke 7'),
(11, 'razzi8@gmail.com', 'Komentar ke 8'),
(12, 'razzi9@gmail.com', 'Komentar ke 9'),
(13, 'razzi0@gmail.com', 'Komentar ke 0'),
(14, 'razzi1@gmail.com', 'Komentar ke 1'),
(15, 'razzi2@gmail.com', 'Komentar ke 2'),
(16, 'razzi3@gmail.com', 'Komentar ke 3'),
(17, 'razzi4@gmail.com', 'Komentar ke 4'),
(18, 'razzi5@gmail.com', 'Komentar ke 5'),
(19, 'razzi6@gmail.com', 'Komentar ke 6'),
(20, 'razzi7@gmail.com', 'Komentar ke 7'),
(21, 'razzi8@gmail.com', 'Komentar ke 8'),
(22, 'razzi9@gmail.com', 'Komentar ke 9'),
(23, 'repository@test.com', 'Test Repository');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `rating` double DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `birth_date` date DEFAULT NULL,
  `married` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `balance`, `rating`, `created_at`, `birth_date`, `married`) VALUES
('eko', 'Eko', NULL, 10000000, 90, '2022-01-11 01:56:45', NULL, 1),
('joko', 'Joko', 'Joko@email.com', 8000000, 80, '2022-01-11 01:58:22', '1998-08-13', 1),
('razzi', 'Razzi', 'Razzi@email.com', 8000000, 80, '2022-01-11 01:59:12', '1998-08-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin'),
('razzi', 'razzi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
