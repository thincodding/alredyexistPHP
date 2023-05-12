-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 04:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avoid_duplicate`
--

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`id`, `username`, `email`, `password`) VALUES
(1, 'sokthin', 'sowkthin33@gmail.com', 1234),
(2, 'sokthin', 'sowkthin33@gmail.com', 1234),
(3, 'phapsokthin', 'sokgg@gmail.com', 33445),
(4, 'sokcheat', 'sokthinqwe223@gmail.com', 334455),
(5, 'Soktheav', 'theav@gamil.com', 9833663),
(6, 'Sokthininfc', 'sokthinfc@gmail.com', 98432),
(7, 'yyyy', 'sokthin7qwe223@gmail.com', 3344588),
(8, '', '', 0),
(9, 'bearn', 'beatn@gamil.com', 8292892),
(10, '', '', 0),
(11, 'bb', 'bb@gmail.com', 88909028),
(21, 'sok', 'sok@gmail.com', 78422),
(22, 'សៅ', 'sov@gmail.com', 12345),
(23, 'sokthinfwe', 'sowkth2in33@gmail.com', 8994982),
(24, 'phapsokthin31', 'so3wkthin33@gmail.com', 78331),
(25, 'ប៉ោត', 'sokthinqwewe223@gmail.com', 234134),
(26, 'ប៉ាប​ សុធិន', 'sokthin@gmail.com', 12334),
(27, 'សុខ សំណាង', 'sokthin5qwe223@gmail.com', 123409),
(28, 'block45', 'block45@gmail.com', 883922),
(29, 'blueSky', 'box@gmail.com', 98848443),
(30, 'Sokthinbb1', 'Sokthinbb1@gmail.com', 8837377),
(31, 'Sokthinff', 'sokthinff@gmail.com', 998333),
(32, 'sokthinwee', 'sokthinweee', 1234099),
(33, 'blockcode', 'blockcode@gmail.com', 900393),
(34, 'sokthins', 'sokthin334@gmail.com', 8998737),
(35, 'blue2992', 'blue@gmail.com', 29998838),
(36, 'sokthinbbu', 'sokthinbbu@gmail.com', 8838772),
(37, 'sokthinheader', 'sokthinheader@gmail.com', 90883333),
(38, '', '', 0),
(39, '', '', 0),
(40, 'sokthinvv', '', 0),
(41, 'sokthinfcs', 'sokthinfcs@gmail.com', 998844747),
(42, '8923', '322', 78333),
(43, 'sokthinwer2', '2r3r@gmail.com', 23),
(44, '322', 'sowkthi332n33@gmail.com3', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
