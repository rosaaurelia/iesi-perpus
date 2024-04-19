-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 02:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`) VALUES
(1, 'Star of Chaos'),
(2, 'Guardian'),
(3, 'Dumb Husky and His White Cat Shizun'),
(4, 'Omniscient Reader\'s Viewpoint'),
(5, 'Alien Stage');

-- --------------------------------------------------------

--
-- Table structure for table `dikembalikan`
--

CREATE TABLE `dikembalikan` (
  `id` int(11) NOT NULL,
  `peminjaman_id` int(11) DEFAULT NULL,
  `buku_id` int(11) DEFAULT NULL,
  `tanggal_kembali` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dipinjam`
--

CREATE TABLE `dipinjam` (
  `peminjaman_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `hari` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dipinjam`
--

INSERT INTO `dipinjam` (`peminjaman_id`, `buku_id`, `hari`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(12, 2, 1),
(13, 1, 1),
(13, 3, 1),
(14, 1, 1),
(14, 3, 1),
(15, 1, 1),
(15, 3, 1),
(16, 1, 1),
(16, 3, 1),
(17, 1, 1),
(17, 3, 1),
(18, 1, 1),
(19, 1, 1),
(19, 3, 1),
(20, 1, 1),
(20, 3, 1),
(21, 1, 1),
(21, 2, 1),
(21, 3, 1),
(22, 1, 1),
(22, 2, 1),
(22, 3, 1),
(23, 1, 1),
(23, 2, 1),
(23, 3, 1),
(24, 1, 1),
(24, 2, 1),
(24, 3, 1),
(25, 1, 1),
(25, 2, 1),
(25, 3, 1),
(26, 1, 1),
(26, 2, 1),
(26, 3, 1),
(27, 1, 1),
(27, 2, 1),
(27, 3, 1),
(28, 1, 1),
(28, 2, 1),
(28, 3, 1),
(28, 4, 1),
(29, 1, 1),
(29, 2, 1),
(29, 3, 1),
(29, 4, 1),
(30, 1, 1),
(30, 2, 1),
(30, 3, 1),
(31, 1, 1),
(31, 2, 1),
(31, 3, 1),
(32, 1, 1),
(32, 2, 1),
(32, 3, 1),
(33, 1, 1),
(33, 2, 1),
(33, 3, 1),
(34, 1, 1),
(34, 2, 1),
(34, 3, 1),
(35, 1, 1),
(35, 2, 1),
(35, 3, 1),
(36, 1, 1),
(36, 2, 1),
(36, 3, 1),
(37, 1, 1),
(37, 2, 1),
(37, 3, 1),
(38, 1, 1),
(38, 2, 1),
(38, 3, 1),
(39, 1, 1),
(39, 3, 1),
(40, 1, 1),
(40, 3, 1),
(41, 1, 1),
(41, 3, 1),
(42, 1, 1),
(43, 1, 1),
(44, 1, 1),
(45, 1, 1),
(46, 1, 1),
(47, 1, 1),
(48, 1, 1),
(49, 1, 1),
(50, 1, 1),
(51, 1, 1),
(52, 4, 1),
(53, 1, 1),
(53, 4, 1),
(54, 1, 1),
(54, 4, 1),
(55, 1, 1),
(55, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `tanggal`) VALUES
(1, '2024-04-19'),
(2, '2024-04-19'),
(3, '2024-04-19'),
(4, '2024-04-19'),
(5, '2024-04-19'),
(6, '2024-04-19'),
(7, '2024-04-19'),
(8, '2024-04-19'),
(9, '2024-04-19'),
(10, '2024-04-19'),
(11, '2024-04-19'),
(12, '2024-04-19'),
(13, '2024-04-19'),
(14, '2024-04-19'),
(15, '2024-04-19'),
(16, '2024-04-19'),
(17, '2024-04-19'),
(18, '2024-04-19'),
(19, '2024-04-19'),
(20, '2024-04-19'),
(21, '2024-04-19'),
(22, '2024-04-19'),
(23, '2024-04-19'),
(24, '2024-04-19'),
(25, '2024-04-19'),
(26, '2024-04-19'),
(27, '2024-04-19'),
(28, '2024-04-19'),
(29, '2024-04-19'),
(30, '2024-04-19'),
(31, '2024-04-19'),
(32, '2024-04-19'),
(33, '2024-04-19'),
(34, '2024-04-19'),
(35, '2024-04-19'),
(36, '2024-04-19'),
(37, '2024-04-19'),
(38, '2024-04-19'),
(39, '2024-04-19'),
(40, '2024-04-19'),
(41, '2024-04-19'),
(42, '2024-04-19'),
(43, '2024-04-19'),
(44, '2024-04-19'),
(45, '2024-04-19'),
(46, '2024-04-19'),
(47, '2024-04-19'),
(48, '2024-04-19'),
(49, '2024-04-19'),
(50, '2024-04-19'),
(51, '2024-04-19'),
(52, '2024-04-19'),
(53, '2024-04-19'),
(54, '2024-04-19'),
(55, '2024-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dikembalikan`
--
ALTER TABLE `dikembalikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id` (`peminjaman_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- Indexes for table `dipinjam`
--
ALTER TABLE `dipinjam`
  ADD PRIMARY KEY (`peminjaman_id`,`buku_id`),
  ADD KEY `fk_peminjaman_has_buku_buku1_idx` (`buku_id`),
  ADD KEY `fk_peminjaman_has_buku_peminjaman_idx` (`peminjaman_id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dikembalikan`
--
ALTER TABLE `dikembalikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dikembalikan`
--
ALTER TABLE `dikembalikan`
  ADD CONSTRAINT `dikembalikan_ibfk_1` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjaman` (`id`),
  ADD CONSTRAINT `dikembalikan_ibfk_2` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`);

--
-- Constraints for table `dipinjam`
--
ALTER TABLE `dipinjam`
  ADD CONSTRAINT `fk_peminjaman_has_buku_buku1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_peminjaman_has_buku_peminjaman` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjaman` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
