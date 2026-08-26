-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2026 at 03:42 AM
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
-- Database: `praktikum11`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataguru`
--

CREATE TABLE `dataguru` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataguru`
--

INSERT INTO `dataguru` (`id`, `nama`, `nip`, `mapel`, `alamat`, `foto`) VALUES
(1, 'Ahmad Mauludin', '1990081720200410', 'P. Web', 'Cibaduyut', 'man-avatar-icon-free-vector.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `datasiswa`
--

CREATE TABLE `datasiswa` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` enum('X','XI','XII') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datasiswa`
--

INSERT INTO `datasiswa` (`id`, `nama`, `kelas`, `tanggal_lahir`, `alamat`, `foto`) VALUES
(2, 'saheela', 'X', '2026-08-12', 'Dusun Gunungdatar RT. 01 RW. 05 Desa Gunturmekar', 'avatar-of-a-student-character-free-vector.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataguru`
--
ALTER TABLE `dataguru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasiswa`
--
ALTER TABLE `datasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataguru`
--
ALTER TABLE `dataguru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datasiswa`
--
ALTER TABLE `datasiswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;