-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2020 at 10:43 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fawazalr_epengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` bigint(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `foto_profile` varchar(225) DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`, `foto_profile`) VALUES
(123, 'Fawaz Al Rasyid', 'fawazalrasyid', '$2y$10$BqCVWU56ME/Y.MctVXBw7uI8w26d1gK/HY219JiQWe./ppfYVEeYS', '123', 'fawazalrasyid.png'),
(56468, 'Alya Saputri', 'alya', '$2y$10$ycPlCK8nunt7frlIdfo.s.AVASEonPOOO0tOB2Qe4XYJycxiy0O8O', '0894686', 'user.png'),
(839183938, 'Fawaz', 'fawaz123', '$2y$10$Ab3r/SsQf98up/qyFJ7nTO98R6tBU9J/oo16ZlkQ7DWqjAvQqr4la', '0881381830183', 'user.png'),
(182039029313, 'Masyarakat', 'masyarakat', '$2y$10$M4FFeHix9NF6w6VMDLkahuNorydQdf1havXif0WDDh1.ZcDVhi742', '08938239203', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` bigint(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('0','proses','selesai','tolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(20, '2020-11-14', 123, 'Test', '', 'selesai'),
(21, '2020-11-14', 123, 'Test', NULL, 'tolak'),
(22, '2020-11-15', 123, 'Test', NULL, 'tolak'),
(23, '2020-11-15', 123, 'Test', NULL, 'selesai'),
(24, '2020-11-23', 123, 'Pada saat sosialisasi yang di sampaikan adalah bahwa setiap lahan masyarakat yangmasuk pada kawasan HTI akan di hargai dengan uang sebesar Rp. 450.000 perhektarnya.akan tetapi pada saat proses pembayaran perusahaan membayar lahan masyarakat termasuklahan saya di bayar hanya 9 Hektar dari keseluruhan lahan milik saya sebesar 23,5 H. Jadiluas lahan yang di gelapkan adalah 14,5 H.Bedasarkan permasalahan yang saya alami di atas maka saya merasa sudah di tipu dandi rugikan. oleh pihak - pihak yang sudah masuk di dalamya.', NULL, 'proses'),
(25, '2020-11-23', 1820390293313, 'Pada saat sosialisasi yang di sampaikan ', NULL, '0'),
(26, '2020-11-23', 182039029313, 'Pada saat sosialisasi yang di sampaikan ', NULL, 'proses'),
(28, '2020-11-26', 182039029313, 'Pada saat sosialisasi yang di sampaikan ', NULL, '0'),
(41, '2020-11-26', 123, 'Terjadi kebakaran di sekitar rumah saya', NULL, '0'),
(42, '2020-11-26', 123, 'Terjadi tawuran antar warga disekitar rumah saya.', NULL, '0'),
(43, '2020-11-27', 123, 'Telah terjadi kebakaran di sekitar tempat saya, pada pukul 8.00 pagi', NULL, 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `foto_profile` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `foto_profile`) VALUES
(2, 'Fawaz Al Rasyid', 'admin', '$2y$10$YlpZmz2Uq.RxG5bHvMjYjej5y2AYkEzr9JbDKGHe3sWbpFkVhkury', '123242424', 'admin', 'user.png'),
(7, 'Petugas', 'petugas', '$2y$10$HH8d/ovwKJQjRXFTIvtpBuIc2UCJPBiJWPkaPJRRQVjnrla5UjLI6', '123', 'petugas', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(26, 20, '2020-11-15', 'Test', 2),
(27, 21, '2020-11-15', 'Testt', 2),
(28, 22, '2020-11-16', 'Okee Test..', 2),
(29, 23, '2020-11-16', 'OK', 2),
(30, 24, '2020-11-23', 'Lorem Ipsum', 2),
(31, 26, '2020-11-23', 'y', 2),
(32, 43, '2020-11-27', 'Baik tim akan segera kesana.', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` bigint(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
