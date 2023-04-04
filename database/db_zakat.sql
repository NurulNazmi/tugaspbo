-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 12:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga_beras`
--

CREATE TABLE `harga_beras` (
  `id` int(3) NOT NULL,
  `harga_beras` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga_beras`
--

INSERT INTO `harga_beras` (`id`, `harga_beras`) VALUES
(1, 12000),
(2, 15000),
(3, 20000),
(4, 25000),
(5, 30000),
(6, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayar_zakat`
--

CREATE TABLE `pembayar_zakat` (
  `id` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggungan` int(2) NOT NULL,
  `harga_beras` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `nama_amil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayar_zakat`
--

INSERT INTO `pembayar_zakat` (`id`, `nama`, `tanggungan`, `harga_beras`, `total_bayar`, `nama_amil`) VALUES
(1, 'vina', 2, 1, 0, 'nazm'),
(2, 'vani', 2, 1, 0, 'maxel'),
(3, 'vani', 2, 1, 0, 'maxel'),
(4, 'vani', 2, 1, 0, 'maxel'),
(5, 'vani', 2, 1, 103200, 'maxel'),
(6, 'vani', 2, 1, 103200, 'maxel'),
(7, 'vina', 4, 1, 206400, 'azke'),
(8, 'vina', 3, 1, 154800, 'azm'),
(9, 'vina', 3, 1, 154800, 'azm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga_beras`
--
ALTER TABLE `harga_beras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayar_zakat`
--
ALTER TABLE `pembayar_zakat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harga_beras`
--
ALTER TABLE `harga_beras`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayar_zakat`
--
ALTER TABLE `pembayar_zakat`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
