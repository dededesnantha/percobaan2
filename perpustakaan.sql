-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 07:12 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_buku`
--

CREATE TABLE `t_buku` (
  `id_buku` varchar(11) NOT NULL,
  `id_judul` int(4) NOT NULL DEFAULT '0',
  `id_user` varchar(5) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_buku`
--

INSERT INTO `t_buku` (`id_buku`, `id_judul`, `id_user`, `tgl_input`, `status`) VALUES
('20140420001', 1, 'admin', '2014-04-23 09:13:06', 0),
('20140420002', 5, 'agus', '2014-04-23 09:13:06', 1),
('20140420003', 1, 'agus', '2014-04-23 09:13:44', 1),
('20140420004', 2, 'admin', '2014-04-23 09:13:44', 1),
('20140420005', 3, 'agus', '2014-04-23 09:16:56', 1),
('20140420006', 2, 'agus', '2014-04-23 09:16:56', 1),
('20140420007', 4, 'agus', '2014-04-23 09:16:56', 1),
('20140420008', 4, 'admin', '2014-04-23 09:16:56', 1),
('20140420009', 6, 'agus', '2014-04-23 09:16:56', 1),
('20140420010', 7, 'putu', '2014-04-23 09:16:56', 1),
('20140420011', 7, 'agus', '2014-04-23 09:16:56', 1),
('20140420012', 8, 'agus', '2014-04-23 09:16:56', 0),
('20140420013', 9, 'agus', '2014-04-23 09:16:56', 0),
('20140420014', 1, 'putu', '2014-04-23 09:16:56', 1),
('20140420015', 3, 'admin', '2020-04-05 12:03:53', 1),
('20140420016', 12, 'agus', '2020-04-05 12:40:44', 1),
('20140420017', 11, 'agus', '2020-04-05 12:36:26', 1),
('20140420018', 31, 'putu', '2020-04-05 12:36:26', 1),
('20140420019', 13, 'agus', '2020-04-05 12:36:26', 1),
('20140420020', 32, 'admin', '2020-04-05 12:36:26', 1),
('20140420021', 14, 'putu', '2020-04-05 12:36:26', 1),
('20140420022', 15, 'admin', '2020-04-05 12:36:26', 1),
('20140420023', 16, 'admin', '2020-04-05 12:36:26', 1),
('20140420024', 17, 'putu', '2020-04-05 12:36:27', 1),
('20140420025', 18, 'admin', '2020-04-05 12:36:27', 1),
('20140420026', 28, 'putu', '2020-04-05 12:36:27', 1),
('20140420027', 31, 'admin', '2020-04-05 12:36:27', 1),
('20140420028', 23, 'agus', '2020-04-05 12:36:27', 1),
('20140420029', 21, 'admin', '2020-04-05 12:36:26', 1),
('20140420030', 20, 'putu', '2020-04-05 12:36:26', 1),
('20140420031', 20, 'admin', '2020-04-05 12:36:10', 1),
('20140420032', 24, 'putu', '2020-04-05 12:36:26', 1),
('20140420033', 27, 'putu', '2020-04-05 12:36:26', 1),
('20140420034', 25, 'agus', '2020-04-05 12:36:26', 1),
('20140420035', 9, 'admin', '2020-04-05 12:36:26', 1),
('20140420036', 11, 'putu', '2020-04-05 12:36:26', 1),
('20140420037', 10, 'putu', '2020-04-05 12:36:26', 1),
('20140420038', 22, 'putu', '2020-04-05 12:36:26', 1),
('20140420039', 26, 'putu', '2020-04-05 12:36:26', 1),
('20140420040', 25, 'admin', '2020-04-05 12:36:26', 1),
('20140420041', 8, 'admin', '2020-04-05 12:36:26', 1),
('20140420042', 23, 'admin', '2020-04-05 12:36:26', 1),
('20140420043', 38, 'putu', '2020-04-05 12:35:54', 1),
('20140420044', 29, 'admin', '2020-04-05 12:36:27', 1),
('20140420045', 7, 'agus', '2020-04-05 12:40:44', 1),
('20140420046', 40, 'putu', '2020-04-05 12:40:44', 1),
('20140420047', 10, 'admin', '2020-04-05 12:40:44', 1),
('20140420048', 19, 'agus', '2020-04-05 12:40:44', 1),
('20140420049', 21, 'agus', '2020-04-05 12:40:44', 1),
('20140420050', 40, 'agus', '2020-04-05 12:40:44', 1),
('20140420051', 4, 'agus', '2020-04-05 12:40:44', 1),
('20140420052', 23, 'agus', '2020-04-05 12:40:44', 1),
('20140420053', 4, 'agus', '2020-04-05 12:40:44', 1),
('20140420054', 14, 'agus', '2020-04-05 12:40:44', 1),
('20140420055', 25, 'agus', '2020-04-05 12:40:44', 1),
('20140420056', 40, 'agus', '2020-04-05 12:40:44', 1),
('20140420057', 36, 'agus', '2020-04-05 12:40:44', 1),
('20140420058', 27, 'agus', '2020-04-05 12:40:44', 1),
('20140420059', 38, 'agus', '2020-04-05 12:40:44', 1),
('20140420060', 24, 'agus', '2020-04-05 12:40:44', 1),
('20140420061', 24, 'agus', '2020-04-05 12:40:44', 1),
('20140420062', 33, 'agus', '2020-04-05 12:40:44', 1),
('20140420063', 33, 'agus', '2020-04-05 12:40:44', 1),
('20140420064', 33, 'agus', '2020-04-05 12:40:44', 1),
('20140420065', 36, 'agus', '2020-04-05 12:40:44', 1),
('20140420066', 35, 'agus', '2020-04-05 12:40:44', 1),
('20140420067', 36, 'agus', '2020-04-05 12:40:44', 1),
('20140420068', 36, 'agus', '2020-04-05 12:40:44', 1),
('20140420069', 34, 'agus', '2020-04-05 12:40:44', 1),
('20140420070', 34, 'agus', '2020-04-05 12:40:44', 1),
('20140420071', 32, 'agus', '2020-04-05 12:40:44', 1),
('20140420072', 38, 'agus', '2020-04-05 12:40:44', 1),
('20140420073', 29, 'agus', '2020-04-05 12:40:44', 1),
('20140420074', 19, 'agus', '2020-04-05 12:40:44', 1),
('20140420075', 9, 'agus', '2020-04-05 12:40:44', 1),
('20140420076', 19, 'agus', '2020-04-05 12:40:44', 1),
('20140420077', 5, 'agus', '2020-04-05 12:40:44', 1),
('20140420078', 23, 'agus', '2020-04-05 12:40:44', 1),
('20140420079', 6, 'agus', '2020-04-05 12:40:44', 1),
('20140420080', 6, 'agus', '2020-04-05 12:40:44', 1),
('20140420081', 34, 'agus', '2020-04-05 12:40:44', 1),
('20140420082', 34, 'agus', '2020-04-05 12:40:44', 1),
('20140420083', 34, 'agus', '2020-04-05 12:40:44', 1),
('20140420084', 35, 'agus', '2020-04-05 12:40:44', 1),
('20140420085', 35, 'agus', '2020-04-05 12:40:44', 1),
('20140420086', 35, 'agus', '2020-04-05 12:40:44', 1),
('20140420087', 37, 'agus', '2020-04-05 12:40:44', 1),
('20140420088', 30, 'agus', '2020-04-05 12:40:44', 1),
('20140420089', 37, 'agus', '2020-04-05 12:40:44', 1),
('20140420090', 39, 'agus', '2020-04-05 12:40:44', 1),
('20140420091', 27, 'agus', '2020-04-05 12:40:44', 1),
('20140420092', 37, 'agus', '2020-04-05 12:40:44', 1),
('20140420093', 20, 'agus', '2020-04-05 12:40:44', 1),
('20140420094', 20, 'agus', '2020-04-05 12:40:44', 1),
('20140420095', 18, 'agus', '2020-04-05 12:40:44', 1),
('20140420096', 18, 'agus', '2020-04-05 12:40:44', 1),
('20140420097', 16, 'agus', '2020-04-05 12:40:44', 1),
('20140420098', 28, 'agus', '2020-04-05 12:40:44', 1),
('20140420099', 22, 'agus', '2020-04-05 12:40:44', 1),
('20140420100', 22, 'agus', '2020-04-05 12:40:44', 1),
('20140420101', 15, 'agus', '2020-04-05 12:40:44', 1),
('20140420102', 20, 'agus', '2020-04-05 12:40:44', 1),
('20140420103', 15, 'agus', '2020-04-05 12:40:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_judul`
--

CREATE TABLE `t_judul` (
  `id_judul` int(4) NOT NULL,
  `judul` varchar(100) NOT NULL DEFAULT '-',
  `id_kategori` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_judul`
--

INSERT INTO `t_judul` (`id_judul`, `judul`, `id_kategori`, `status`) VALUES
(1, '101 Tip dan Trik Pemrograman PHP', 1, 0),
(2, 'Algoritma & Pemrograman Dengan Borland C++', 1, 1),
(3, 'Algoritma & Pemrograman Menggunakan Java', 1, 1),
(4, 'Konsep Dasar Pemrograman Bahasa C', 1, 1),
(5, 'Pemrograman Internet Dan Xml Pada Ponsel Dengan Midlet Java', 1, 0),
(6, 'Pemrograman Visual Basic 6.0 Dan Microsoft Access', 1, 1),
(7, '25 Inspirasi Desain Wedding Invitation Dengan Coreldraw Floral,Retro,Couple,Unique & Heart', 3, 1),
(8, '3 In 1 Aplikasi Grafis Langsung Bisa Desain Grafis Tanpa Guru ', 3, 0),
(9, 'Adobe Dreamweaver Cs5 Untuk Beragam Desain Website Interaktif ', 3, 1),
(10, '42 Contoh Desain Corel Draw 12', 3, 1),
(11, 'Information Technology And Mobile Communication ', 4, 1),
(12, 'Handbook Of Algorithms For Wireless Networking And Mobile Computing', 4, 1),
(13, 'Membangun Aplikasi Mobile Dengan QT SDK', 4, 1),
(14, 'Mudah Membuat Mobile Application Dengan Flash Lite 3.0', 4, 1),
(15, 'Matematika Numerik Dengan Implementasi Matlab', 7, 1),
(16, 'Matematika Untuk Ilmu Fisika & Teknik', 7, 0),
(17, 'Logika Matematika Untuk Ilmu Komputer ', 7, 1),
(18, 'Matematika Dasar Untuk Perguruan Tinggi ', 7, 1),
(19, '15 Program Bantu Populer Untuk Mengembangkan & Mengelola Situs Web Anda', 5, 1),
(20, 'AJAX Membangun Web Dengan Teknologi ASYNCHRONOUSE JavaScript & XML ', 5, 1),
(21, 'Aplikasi Web Database Dengan Dreamweaver Dan Php-Mysql ', 5, 1),
(22, 'Aplikasi Web Dengan Xml Menggunakan Dreamweaver 8', 5, 1),
(23, 'Pemrograman Web Database Menggunakan ADODB PHP', 5, 1),
(24, 'Seri Desain Web Promosi Web & Registrasi Domain (Dengan Berbagai Teknik Dan Tool)', 5, 0),
(25, 'Panduan Lengkap Menggunakan ZOPE Membangun dan Membuat Aplikasi Web', 5, 0),
(26, 'Panduan Lengkap Menguasai Pemrograman Web dengan PHP 5', 5, 1),
(27, 'Web Hacking Serangan Dan Pertahanannya', 5, 1),
(28, 'Visual Web Developer Untuk Pengembangan Aplikasi Web Dinamis', 5, 1),
(29, 'Cermat Berbahasa Indonesia Untuk Perguruan Tinggi', 6, 1),
(30, 'Kamus Peribahasa Bahasa Indonesia', 6, 1),
(31, 'Teori Bahasa Dan Otomata', 6, 1),
(32, 'Pedoman Umum Ejaan Bahasa Indonesia Yang Disempurnakan & Pedoman Umum Pembentukan Istilah', 6, 1),
(33, 'Sistem Basis Data Menggunakan Microsoft Sql Server 2005', 2, 1),
(34, 'Membangun Sistem Basis Data dengan Oracle XE', 2, 1),
(35, 'Membangun Aplikasi Multimedia Interaktif Pembelajaran', 12, 1),
(36, 'Sistem Basis Data Dalam Paket Five In One', 2, 1),
(37, 'Konsep & Tuntunan Praktis Basis Data', 2, 1),
(38, 'Etika Profesi Pendidikan', 12, 1),
(39, 'Etika Bisnis Konsep Dan Kasus', 8, 1),
(40, 'Etika Komputer Dan Tanggung Jawab Profesional Di Bidang Teknologi Informasi', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE `t_kategori` (
  `id_kategori` tinyint(1) NOT NULL,
  `kategori` varchar(100) NOT NULL DEFAULT '-',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `kategori`, `status`) VALUES
(1, 'Pemrograman', 1),
(2, 'Basis Data', 1),
(3, 'Desain', 1),
(4, 'Mobile', 1),
(5, 'Web', 1),
(6, 'Literatur dan Sastra', 1),
(7, 'Sains dan Matematika', 1),
(8, 'Ekonomi', 1),
(9, 'Rekayasa Sistem', 1),
(10, 'Agama', 1),
(11, 'Statistik', 1),
(12, 'Pendidikan', 1),
(13, 'Biografi', 1),
(14, 'Ensiklopedi', 1),
(15, 'Seni dan Rekreasi\r\n', 1),
(16, 'Filsafat dan Psikologi', 1),
(17, 'Ilmu Politik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(60) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama`, `password`, `email`, `hp`, `status`, `foto`) VALUES
('admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 'admin.perpus@stikom-bali.ac.id', '0361244445', 1, 'profile1.png'),
('agus', 'Agus Mahendra', '827ccb0eea8a706c4c34a16891f84e7b', 'agus2020@gmail.com', '08123456789', 1, 'profile2.png'),
('made', 'Made Surya', '827ccb0eea8a706c4c34a16891f84e7b', 'surya.made@gmail.com', '082123445544', 0, 'profile3.png'),
('putu', 'Putu Aditama', '827ccb0eea8a706c4c34a16891f84e7b', 'putu_aditama@gmail.com', '08212366547', 1, 'profile3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `t_judul`
--
ALTER TABLE `t_judul`
  ADD PRIMARY KEY (`id_judul`),
  ADD UNIQUE KEY `judul` (`judul`);

--
-- Indexes for table `t_kategori`
--
ALTER TABLE `t_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori` (`kategori`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_judul`
--
ALTER TABLE `t_judul`
  MODIFY `id_judul` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `t_kategori`
--
ALTER TABLE `t_kategori`
  MODIFY `id_kategori` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
