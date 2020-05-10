-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 05:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp_murni2`
--

-- --------------------------------------------------------

--
-- Table structure for table `gurumurni`
--

CREATE TABLE `gurumurni` (
  `id_guru` char(2) NOT NULL,
  `Nama_Guru` varchar(20) NOT NULL,
  `Jenkel` varchar(10) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gurumurni`
--

INSERT INTO `gurumurni` (`id_guru`, `Nama_Guru`, `Jenkel`, `Alamat`) VALUES
('H', 'Ninik H', 'Perempuan', 'Surakarta'),
('R', 'Kun Ana', 'Perempuan', 'Sukoharjo');

-- --------------------------------------------------------

--
-- Table structure for table `kelasmurni`
--

CREATE TABLE `kelasmurni` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `program_keahlian` varchar(30) NOT NULL,
  `id_guru` char(2) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `tagihan_spp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelasmurni`
--

INSERT INTO `kelasmurni` (`id_kelas`, `nama_kelas`, `program_keahlian`, `id_guru`, `nama_guru`, `tagihan_spp`) VALUES
('AK1', 'SEBELAS', 'Akuntansi', 'N', 'Ninik H', 260000),
('AP1', 'SEPULUH', 'Administrasi Perkantoran', 'P', 'Purnami W S.Pd', 250000),
('PM1', 'SEPULUH', 'Pemasaran', 'R', 'Kun Ana', 250000),
('RPL1', 'SEPULUH', 'Rekayasa Perangkat Lunak', 'Q', 'Emila Rosetti, S.Pd', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` varchar(11) NOT NULL,
  `Nama_Siswa` varchar(20) NOT NULL,
  `Tanggal_Lahir` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL,
  `Kelas` char(3) NOT NULL,
  `Program_Keahlian` varchar(50) NOT NULL,
  `Angkatan` varchar(10) NOT NULL,
  `No_HP` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NIS`, `Nama_Siswa`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Kelas`, `Program_Keahlian`, `Angkatan`, `No_HP`) VALUES
('58190', 'Anisa', '20 Oktober 2002', 'Perempuan', 'XII', 'REKAYASA PERANGKAT LUNAK', '2018/2019', 87655),
('58191', 'Kristina', '21 April 2003', 'Perempuan', 'XII', 'REKAYASA PERANGKAT LUNAK', '2018/2019', 87654),
('58192', 'Masruri', '15 Maret 2000', 'Laki-laki', 'XII', 'REKAYASA PERANGKAT LUNAK', '2018/2019', 23456),
('58193', 'SUCI', '23 Mei 2001', 'Perempuan', 'XII', 'ADMINISTRASI PERKANTORAN', '2018/2019', 34567),
('58194', 'Yeni', '15 Agustus 2001', 'Perempuan', 'XII', 'ADMINISTRASI PERKANTORAN', '2018/2019', 82012);

-- --------------------------------------------------------

--
-- Table structure for table `sppmurni`
--

CREATE TABLE `sppmurni` (
  `id_trans` varchar(15) NOT NULL,
  `NIS` varchar(10) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Kelas` varchar(5) NOT NULL,
  `Tanggal` varchar(30) NOT NULL,
  `Tagihan` int(15) NOT NULL,
  `JumlahBln` int(5) NOT NULL,
  `TotalBayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppmurni`
--

INSERT INTO `sppmurni` (`id_trans`, `NIS`, `Nama`, `Kelas`, `Tanggal`, `Tagihan`, `JumlahBln`, `TotalBayar`) VALUES
('TR/01', '58190', 'MASRURI', 'XII', '21 jANUARI 2020', 300000, 4, 1200000),
('TR/02', '58191', 'ANISA', 'XII', '2 MARET 2020', 300000, 2, 600000),
('TR/03', '58192', 'KRISTINA', 'XII', '01 Mei 2020', 300000, 1, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Password`) VALUES
('BENDAHARA 1', '12345'),
('BENDAHARA 2', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`username`, `password`, `level`) VALUES
('asih', 'asih123', 'User'),
('pur', 'pur123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gurumurni`
--
ALTER TABLE `gurumurni`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kelasmurni`
--
ALTER TABLE `kelasmurni`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);

--
-- Indexes for table `sppmurni`
--
ALTER TABLE `sppmurni`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
