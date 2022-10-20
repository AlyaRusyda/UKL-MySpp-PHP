-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 05:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasispp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `angkatan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `angkatan`) VALUES
(1, 'X RPL 1', 'RPL', 31),
(2, 'X RPL 2', 'RPL', 31),
(3, 'X TKJ 1', 'TKJ', 31),
(4, 'X TKJ 2', 'TKJ', 31),
(5, 'XI RPL 1', 'RPL', 30),
(6, 'XI RPL 2', 'RPL', 30),
(7, 'XI TKJ 1', 'TKJ', 30),
(8, 'XI TKJ 2', 'TKJ', 30);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` char(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `bulan_spp` int(2) NOT NULL,
  `tahun_spp` int(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `jatuh_tempo`, `bulan_spp`, `tahun_spp`, `id_spp`, `keterangan`) VALUES
(78165, 3, '59157010', '2022-10-07', '2022-07-01', 7, 2022, 1, 'lunas'),
(78166, 3, '59157010', '0000-00-00', '2022-08-01', 8, 2022, 1, 'belum lunas'),
(78167, 3, '59157010', '0000-00-00', '2022-09-01', 9, 2022, 1, 'belum lunas'),
(78168, 3, '59157010', '0000-00-00', '2022-10-01', 10, 2022, 1, 'belum lunas'),
(78169, 3, '59157010', '0000-00-00', '2022-11-01', 11, 2022, 1, 'belum lunas'),
(78170, 3, '59157010', '0000-00-00', '2022-12-01', 12, 2022, 1, 'belum lunas'),
(78171, 3, '59157010', '0000-00-00', '2023-01-01', 1, 2023, 1, 'belum lunas'),
(78172, 3, '59157010', '0000-00-00', '2023-02-01', 2, 2023, 1, 'belum lunas'),
(78173, 3, '59157010', '0000-00-00', '2023-03-01', 3, 2023, 1, 'belum lunas'),
(78174, 3, '59157010', '0000-00-00', '2023-04-01', 4, 2023, 1, 'belum lunas'),
(78175, 3, '59157010', '0000-00-00', '2023-05-01', 5, 2023, 1, 'belum lunas'),
(78176, 3, '59157010', '0000-00-00', '2023-06-01', 6, 2023, 1, 'belum lunas'),
(78177, 3, '59157008', '2022-10-06', '2022-07-01', 7, 2022, 1, 'lunas'),
(78178, 3, '59157008', '0000-00-00', '2022-08-01', 8, 2022, 1, 'belum lunas'),
(78179, 3, '59157008', '0000-00-00', '2022-09-01', 9, 2022, 1, 'belum lunas'),
(78180, 3, '59157008', '0000-00-00', '2022-10-01', 10, 2022, 1, 'belum lunas'),
(78181, 3, '59157008', '0000-00-00', '2022-11-01', 11, 2022, 1, 'belum lunas'),
(78182, 3, '59157008', '0000-00-00', '2022-12-01', 12, 2022, 1, 'belum lunas'),
(78183, 3, '59157008', '0000-00-00', '2023-01-01', 1, 2023, 1, 'belum lunas'),
(78184, 3, '59157008', '0000-00-00', '2023-02-01', 2, 2023, 1, 'belum lunas'),
(78185, 3, '59157008', '0000-00-00', '2023-03-01', 3, 2023, 1, 'belum lunas'),
(78186, 3, '59157008', '0000-00-00', '2023-04-01', 4, 2023, 1, 'belum lunas'),
(78187, 3, '59157008', '0000-00-00', '2023-05-01', 5, 2023, 1, 'belum lunas'),
(78188, 3, '59157008', '0000-00-00', '2023-06-01', 6, 2023, 1, 'belum lunas'),
(78189, 3, '59188088', '2022-10-07', '2022-07-01', 7, 2022, 2, 'lunas'),
(78190, 3, '59188088', '2022-10-07', '2022-08-01', 8, 2022, 2, 'lunas'),
(78191, 3, '59188088', '0000-00-00', '2022-09-01', 9, 2022, 2, 'belum lunas'),
(78192, 3, '59188088', '0000-00-00', '2022-10-01', 10, 2022, 2, 'belum lunas'),
(78193, 3, '59188088', '0000-00-00', '2022-11-01', 11, 2022, 2, 'belum lunas'),
(78194, 3, '59188088', '0000-00-00', '2022-12-01', 12, 2022, 2, 'belum lunas'),
(78195, 3, '59188088', '0000-00-00', '2023-01-01', 1, 2023, 2, 'belum lunas'),
(78196, 3, '59188088', '0000-00-00', '2023-02-01', 2, 2023, 2, 'belum lunas'),
(78197, 3, '59188088', '0000-00-00', '2023-03-01', 3, 2023, 2, 'belum lunas'),
(78198, 3, '59188088', '0000-00-00', '2023-04-01', 4, 2023, 2, 'belum lunas'),
(78199, 3, '59188088', '0000-00-00', '2023-05-01', 5, 2023, 2, 'belum lunas'),
(78200, 3, '59188088', '0000-00-00', '2023-06-01', 6, 2023, 2, 'belum lunas'),
(78201, 3, '59157009', '0000-00-00', '2022-07-01', 7, 2022, 2, 'belum lunas'),
(78202, 3, '59157009', '0000-00-00', '2022-08-01', 8, 2022, 2, 'belum lunas'),
(78203, 3, '59157009', '0000-00-00', '2022-09-01', 9, 2022, 2, 'belum lunas'),
(78204, 3, '59157009', '0000-00-00', '2022-10-01', 10, 2022, 2, 'belum lunas'),
(78205, 3, '59157009', '0000-00-00', '2022-11-01', 11, 2022, 2, 'belum lunas'),
(78206, 3, '59157009', '0000-00-00', '2022-12-01', 12, 2022, 2, 'belum lunas'),
(78207, 3, '59157009', '0000-00-00', '2023-01-01', 1, 2023, 2, 'belum lunas'),
(78208, 3, '59157009', '0000-00-00', '2023-02-01', 2, 2023, 2, 'belum lunas'),
(78209, 3, '59157009', '0000-00-00', '2023-03-01', 3, 2023, 2, 'belum lunas'),
(78210, 3, '59157009', '0000-00-00', '2023-04-01', 4, 2023, 2, 'belum lunas'),
(78211, 3, '59157009', '0000-00-00', '2023-05-01', 5, 2023, 2, 'belum lunas'),
(78212, 3, '59157009', '0000-00-00', '2023-06-01', 6, 2023, 2, 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('petugas','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(3, 'budi', '827ccb0eea8a706c4c34a16891f84e7b', 'Budi Pekerti', 'admin'),
(4, 'maharani', '827ccb0eea8a706c4c34a16891f84e7b', 'Maharani', 'petugas'),
(123, 'Maharann', '827ccb0eea8a706c4c34a16891f84e7b', 'Maharann', 'admin'),
(321, 'petugas', '827ccb0eea8a706c4c34a16891f84e7b', 'Calista Zalfa', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` int(10) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_tlp`) VALUES
(59157008, '11032', 'Khusnul Faddila', 3, 'Surabaya', '085736546070'),
(59157009, '11033', 'Alya Rusyda Maharistya', 3, 'Malang', '085727689878'),
(59157010, '11030', 'Maharani Banica Putri', 2, 'Malang', '085736541626'),
(59188088, '11031', 'Celline Regia', 1, 'Malang', '085727688888');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `angkatan` int(2) NOT NULL,
  `tahun` varchar(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `angkatan`, `tahun`, `nominal`) VALUES
(1, 30, '2022/2023', 600000),
(2, 31, '2022/2023', 700000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78213;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
