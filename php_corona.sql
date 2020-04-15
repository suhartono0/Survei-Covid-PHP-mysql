-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 12:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_corona`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `jawaban_ya` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id`, `jawaban_ya`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 21),
(12, 7),
(13, 0),
(14, 0),
(15, 0),
(16, 21),
(17, 21),
(18, 21),
(19, 21),
(20, 21),
(21, 21),
(22, 21),
(23, 21),
(24, 21),
(25, 20),
(26, 20),
(27, 21),
(28, 21),
(29, 21),
(30, 21),
(31, 21),
(32, 21),
(33, 21),
(34, 21),
(35, 21),
(36, 21),
(37, 21),
(38, 21),
(39, 21),
(40, 21),
(41, 13),
(42, 13),
(43, 17),
(44, 17),
(45, 21),
(46, 8),
(47, 21),
(48, 18),
(49, 18),
(50, 18),
(51, 21),
(52, 21),
(53, 21),
(54, 21),
(55, 21),
(56, 21),
(57, 21),
(58, 21),
(59, 21),
(60, 21),
(61, 21),
(62, 21),
(63, 21),
(64, 21),
(65, 21),
(66, 21),
(67, 21),
(68, 21),
(69, 21),
(70, 21),
(71, 21),
(72, 21),
(73, 21),
(74, 21),
(75, 21),
(76, 21),
(77, 21),
(78, 21),
(79, 21),
(80, 21),
(81, 21),
(82, 21),
(83, 21),
(84, 21),
(85, 21),
(86, 21),
(87, 21),
(88, 21),
(89, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `umur`, `hp`, `alamat`) VALUES
(12, 'Suhartono1234', '17', '0812-1212-1212', 'Jakarta'),
(13, 'Suhartono1234', '17', '0812-1212-1212', 'Jakarta'),
(31, 'Ucox11111111', 'aa', '0812-1212-1212', 'Jakarta'),
(32, 'muhammad ibrahim', '9', '21212', 'Jakarta'),
(33, 'muhammad ibrahim', '9', '21212', 'Jakarta'),
(38, 'Ucox12122112211212121212', '102', '21212', 'Jakarta'),
(39, 'yunus', '18', '08743323232', 'Jakarta'),
(44, 'Ucox', '17', '121', 'Jakarta'),
(45, 'jaelani', '111', '1212212', 'Jakarta'),
(46, 'hasan M', '12', '11111111111111111111', 'Jakarta'),
(47, 'Suhartono', '17', '9875312121210', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `ya_a` varchar(255) NOT NULL,
  `tidak_b` varchar(255) NOT NULL,
  `jawaban` enum('a','b') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `pertanyaan`, `ya_a`, `tidak_b`, `jawaban`) VALUES
(1, 'Saya Pergi Keluar Rumah.', '', '', 'a'),
(2, 'Saya Menggunakan Transportasi Umum: Online, Angkot, Taksi, \r\nKereta Api.', '', '', 'a'),
(3, 'Saya Tidak Memakai Masker Pada Saat Berkumpul Dengan Orang Lain.', '', '', 'a'),
(4, 'Saya Berjabat Tangan Dengan Orang Lain.', '', '', 'a'),
(5, 'Saya Tidak Membersihkan Tangan Dengan Hand Sanitizer / Tissue Basah Sebelum Pegang Kemudi Mobil / Motor.', '', '', 'a'),
(6, 'Saya Menyentuh Benda / Uang Yang Juga Orang Lain Sentuh.', '', '', 'a'),
(7, 'Saya Tidak Menjaga Jarak 1,5 Meter Dengan Orang Lain Ketika: Berbelanja, Bekerja, Belajar, Beribadah.', '', '', 'a'),
(8, 'Saya Makan Diluar Rumah (Warung / Restaurant).', '', '', 'a'),
(9, 'Saya Tidak Minum Hangat & Cuci Tangan Setelah Sampai Tempat Tujuan.', '', '', 'a'),
(10, 'Saya Berada di Wilayah Kelurahan Yang Tempat Pasien Tertular.', '', '', 'a'),
(11, 'Saya Tidak Pasang Hand Sanitizer di Depan Pintu Masuk, Untuk Bersihkan Tangan Sebelum Pegang Gagang (Handel) Pintu Masuk Rumah.', '', '', 'a'),
(12, 'Saya Tidak Mencuci Tangan Dengan Sabun Setelah Tiba di Rumah.', '', '', 'a'),
(13, 'Saya Tidak Menyediakan : Tissue Basah / Antiseptic, Masker, Sabun Antiseptic Bagi Keluarga di Rumah.', '', '', 'a'),
(14, 'Saya Tidak Segera Merendam Baju & Celana Bekas Pakai di Luar Rumah ke Dalam Air Panas / Sabun.', '', '', 'a'),
(15, 'Saya Tidak Segera Mandi dan Keramas Setelah Saya Tiba di Rumah.', '', '', 'a'),
(16, 'Saya Tidak Mensosialisasikan Check List Penilaian Resiko Pribadi Ini Kepada Keluarga di Rumah.', '', '', 'a'),
(17, 'Saya Dalam Sehari Tidak Terkena Cahaya Matahari Minimal 15 Menit.', '', '', 'a'),
(18, 'Saya Tidak Jalan Kaki / Berolah Raga Minimal 30 Menit Setiap Hari.', '', '', 'a'),
(19, 'Saya Jarang Minum Vitamin C & E, dan Kurang Tidur.', '', '', 'a'),
(20, 'Usia Saya Diatas 60 Tahun.', '', '', 'a'),
(21, 'Saya Mempunyai Penyakit: Jantung / Diabetes / Gangguan Pernapasan Kronik.', '', '', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
