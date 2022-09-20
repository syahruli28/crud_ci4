-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 09:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto Tes', 'naruto-tes', 'Masashi Kishimoto', 'Shonen Jump', '1663582131_f261090143e97fc70cfd.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'One Piece', 'one-piece', 'Eichiro Aqil Emeraldi', 'Gramedia', 'onepiece.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-09-20-065134', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1663657425, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(6, 'Faizah Pertiwi', 'Dk. Veteran No. 917, Sibolga 94831, Kaltim', '1982-03-01 13:56:23', '2022-09-20 02:34:03'),
(7, 'Ani Dinda Mulyani', 'Ds. Gajah No. 665, Kendari 41127, Kaltara', '1972-05-23 02:29:07', '2022-09-20 02:34:03'),
(8, 'Estiawan Nashiruddin', 'Gg. Krakatau No. 719, Batam 25183, Riau', '2006-11-27 03:23:37', '2022-09-20 02:34:03'),
(9, 'Ivan Okto Nugroho S.E.', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 532, Probolinggo 96585, Bali', '1983-11-03 21:24:38', '2022-09-20 02:34:03'),
(10, 'Hasim Habibi', 'Kpg. Baranang Siang No. 870, Langsa 37232, Jambi', '1977-12-03 05:02:30', '2022-09-20 02:34:03'),
(11, 'Gabriella Suryatmi', 'Jr. Yosodipuro No. 428, Pagar Alam 53272, Babel', '1984-12-21 17:05:15', '2022-09-20 02:34:03'),
(12, 'Latika Oktaviani', 'Kpg. Cemara No. 865, Batam 31436, Bengkulu', '1984-06-07 13:11:39', '2022-09-20 02:34:03'),
(13, 'Margana Hardi Saptono', 'Ds. Bakau No. 976, Bukittinggi 79193, Sulut', '1990-10-16 02:43:57', '2022-09-20 02:34:03'),
(14, 'Maria Hartati S.Kom', 'Jln. Nangka No. 353, Ambon 77612, Sulteng', '1973-01-22 21:27:05', '2022-09-20 02:34:03'),
(15, 'Yani Permata M.Farm', 'Dk. Nangka No. 111, Tebing Tinggi 42209, Kalbar', '1971-07-09 13:10:13', '2022-09-20 02:34:03'),
(16, 'Asirwanda Dariati Samosir M.Farm', 'Ki. Barat No. 203, Kediri 94247, Pabar', '2007-06-21 16:36:14', '2022-09-20 02:34:03'),
(17, 'Oman Tamba', 'Dk. Aceh No. 775, Metro 58164, Sumbar', '1992-06-05 17:14:06', '2022-09-20 02:34:03'),
(18, 'Johan Damanik', 'Kpg. Orang No. 19, Pontianak 67305, Kalteng', '1981-08-19 13:11:52', '2022-09-20 02:34:03'),
(19, 'Wira Budiman', 'Jr. Ciumbuleuit No. 566, Sungai Penuh 77062, Lampung', '2009-05-09 21:24:52', '2022-09-20 02:34:03'),
(20, 'Tantri Namaga', 'Ds. Elang No. 565, Bukittinggi 40774, Lampung', '1976-12-14 07:08:39', '2022-09-20 02:34:03'),
(21, 'Galih Mandala', 'Jr. Abang No. 883, Tegal 24184, Sumut', '2021-01-25 04:49:23', '2022-09-20 02:34:03'),
(22, 'Okta Timbul Nashiruddin M.Ak', 'Jr. Baabur Royan No. 281, Kotamobagu 92842, Sulut', '1983-05-24 14:55:11', '2022-09-20 02:34:03'),
(23, 'Heryanto Prasasta S.Ked', 'Jr. Ronggowarsito No. 623, Tanjungbalai 22569, Pabar', '1972-06-01 03:58:00', '2022-09-20 02:34:03'),
(24, 'Yani Safitri', 'Kpg. Basudewo No. 448, Bandung 69345, Bali', '2022-02-16 20:25:09', '2022-09-20 02:34:03'),
(25, 'Dalimin Widodo', 'Kpg. Otista No. 657, Jambi 10788, Sultra', '2006-05-19 07:22:05', '2022-09-20 02:34:03'),
(26, 'Adikara Tampubolon', 'Dk. Peta No. 621, Pagar Alam 90294, Sulteng', '2020-10-24 20:54:07', '2022-09-20 02:34:03'),
(27, 'Maria Halimah', 'Dk. Rajawali No. 445, Bandar Lampung 34447, Lampung', '1981-08-03 10:07:05', '2022-09-20 02:34:03'),
(28, 'Nilam Cindy Nuraini', 'Dk. Cokroaminoto No. 51, Lhokseumawe 70966, Kaltim', '1994-10-07 19:04:38', '2022-09-20 02:34:03'),
(29, 'Laras Usada', 'Ki. Bhayangkara No. 758, Pariaman 20968, Kaltara', '1990-10-14 16:08:25', '2022-09-20 02:34:03'),
(30, 'Dadap Laksana Simbolon S.IP', 'Ki. Pelajar Pejuang 45 No. 175, Bengkulu 25885, NTB', '2020-05-05 17:31:30', '2022-09-20 02:34:03'),
(31, 'Aurora Betania Yuliarti', 'Gg. Cikapayang No. 37, Medan 49331, Jateng', '1997-06-01 05:59:26', '2022-09-20 02:34:03'),
(32, 'Gandi Rangga Tampubolon S.Pt', 'Jln. Perintis Kemerdekaan No. 891, Gorontalo 16949, DKI', '1991-05-16 16:33:17', '2022-09-20 02:34:03'),
(33, 'Marwata Prabowo M.TI.', 'Ki. Reksoninten No. 155, Pontianak 92979, Gorontalo', '1985-11-11 05:35:23', '2022-09-20 02:34:04'),
(34, 'Hani Mulyani', 'Psr. Sukajadi No. 129, Pagar Alam 35210, Bali', '1977-12-31 07:16:12', '2022-09-20 02:34:06'),
(35, 'Budi Prasetyo', 'Jln. Jayawijaya No. 639, Payakumbuh 24746, Kalbar', '1997-03-28 07:36:39', '2022-09-20 02:34:06'),
(36, 'Arsipatra Uwais', 'Kpg. Achmad No. 214, Dumai 93220, Bali', '2003-08-12 11:56:05', '2022-09-20 02:34:06'),
(37, 'Zelaya Utami', 'Dk. Bakau Griya Utama No. 603, Bukittinggi 17975, Babel', '1977-07-13 21:02:11', '2022-09-20 02:34:06'),
(38, 'Farhunnisa Salsabila Safitri', 'Kpg. Bagonwoto  No. 761, Tanjung Pinang 27943, Sumbar', '2010-03-28 16:21:07', '2022-09-20 02:34:06'),
(39, 'Tari Puspasari', 'Jr. Bak Air No. 892, Bima 40572, Sulbar', '2009-05-16 20:06:57', '2022-09-20 02:34:06'),
(40, 'Zelaya Agustina S.Gz', 'Ki. Baha No. 986, Lhokseumawe 45298, Sulbar', '2017-10-15 06:09:43', '2022-09-20 02:34:06'),
(41, 'Vera Diana Purwanti', 'Gg. Pahlawan No. 160, Depok 27117, Gorontalo', '1999-03-19 01:04:20', '2022-09-20 02:34:06'),
(42, 'Vivi Hartati', 'Gg. Suharso No. 702, Ambon 41098, Sumbar', '2008-08-25 22:43:36', '2022-09-20 02:34:06'),
(43, 'Farah Syahrini Winarsih', 'Gg. Nanas No. 952, Pariaman 48099, Sulsel', '1998-04-06 15:10:20', '2022-09-20 02:34:06'),
(44, 'Cengkir Emin Waluyo S.Ked', 'Gg. Baranangsiang No. 812, Singkawang 95443, Malut', '2006-10-28 08:16:33', '2022-09-20 02:34:06'),
(45, 'Hilda Novitasari', 'Jr. Samanhudi No. 277, Pekalongan 65360, Sultra', '1976-06-18 19:08:26', '2022-09-20 02:34:06'),
(46, 'Aisyah Mardhiyah', 'Gg. Kebonjati No. 857, Depok 20698, Malut', '2022-05-05 17:42:16', '2022-09-20 02:34:06'),
(47, 'Genta Mulyani', 'Kpg. Orang No. 881, Batam 65095, Sumsel', '1989-03-22 02:19:22', '2022-09-20 02:34:06'),
(48, 'Cemeti Himawan Prasasta', 'Kpg. Kyai Mojo No. 230, Pagar Alam 45345, Lampung', '2008-02-02 02:46:43', '2022-09-20 02:34:06'),
(49, 'Citra Diah Haryanti', 'Jln. K.H. Maskur No. 768, Bontang 15862, Sulut', '1993-08-17 13:37:22', '2022-09-20 02:34:06'),
(50, 'Muni Gunarto', 'Gg. Baya Kali Bungur No. 302, Depok 21230, Kalbar', '2010-01-01 16:40:06', '2022-09-20 02:34:06'),
(51, 'Rosman Napitupulu', 'Ds. Bakhita No. 975, Subulussalam 61271, Malut', '1974-11-13 13:00:17', '2022-09-20 02:34:06'),
(52, 'Jasmani Perkasa Habibi', 'Jln. Cemara No. 296, Tomohon 84245, Aceh', '1985-11-09 04:22:53', '2022-09-20 02:34:06'),
(53, 'Cahyadi Suryono', 'Dk. Banda No. 897, Langsa 79658, Sultra', '1984-08-08 08:53:49', '2022-09-20 02:34:06'),
(54, 'Edison Rangga Maulana', 'Dk. Honggowongso No. 88, Tebing Tinggi 83153, Bengkulu', '1995-11-11 09:22:03', '2022-09-20 02:34:06'),
(55, 'Banawa Sirait', 'Gg. Moch. Ramdan No. 523, Tegal 97021, Jambi', '2003-10-12 08:39:25', '2022-09-20 02:34:06'),
(56, 'Alika Oktaviani S.E.', 'Ds. Wora Wari No. 565, Palangka Raya 68347, Bali', '1992-05-11 07:14:49', '2022-09-20 02:34:06'),
(57, 'Darijan Suwarno', 'Dk. Dr. Junjunan No. 69, Padangpanjang 69380, Sumsel', '2017-07-11 11:53:31', '2022-09-20 02:34:06'),
(58, 'Kasusra Winarno', 'Jr. Kartini No. 712, Ternate 77402, NTB', '2001-04-07 14:43:57', '2022-09-20 02:34:06'),
(59, 'Qori Melani S.Sos', 'Jr. Gegerkalong Hilir No. 901, Jambi 63038, Kalbar', '1973-11-27 10:16:44', '2022-09-20 02:34:06'),
(60, 'Zelaya Diah Nurdiyanti M.Ak', 'Kpg. Dago No. 153, Mataram 53658, Gorontalo', '2016-09-30 20:16:13', '2022-09-20 02:34:06'),
(61, 'Hasna Nova Purnawati', 'Kpg. Bakau Griya Utama No. 281, Pekalongan 68244, Sulut', '2012-04-17 04:16:57', '2022-09-20 02:34:06'),
(62, 'Cahyadi Lazuardi', 'Ki. Sutan Syahrir No. 767, Cimahi 51837, DKI', '1992-11-14 03:56:35', '2022-09-20 02:34:06'),
(63, 'Gandi Prasetyo', 'Ki. Imam Bonjol No. 940, Pekanbaru 37852, Kaltara', '2013-08-18 22:24:17', '2022-09-20 02:34:06'),
(64, 'Talia Yunita Lailasari', 'Jr. Karel S. Tubun No. 159, Bandar Lampung 33667, Lampung', '1983-01-20 19:36:15', '2022-09-20 02:34:06'),
(65, 'Edison Natsir S.H.', 'Jr. Villa No. 45, Administrasi Jakarta Pusat 75966, Aceh', '1978-09-01 08:26:01', '2022-09-20 02:34:06'),
(66, 'Zulaikha Pratiwi', 'Dk. Ters. Buah Batu No. 198, Medan 64753, Kaltim', '1982-08-05 15:20:11', '2022-09-20 02:34:06'),
(67, 'Edison Cahyono Gunawan', 'Psr. Mulyadi No. 626, Salatiga 16636, Kaltim', '1996-10-06 04:25:46', '2022-09-20 02:34:06'),
(68, 'Catur Ardianto', 'Jr. Ciwastra No. 369, Cimahi 12999, Jatim', '2015-10-14 10:55:56', '2022-09-20 02:34:06'),
(69, 'Tantri Indah Usada', 'Jr. Cemara No. 343, Kendari 29853, Jambi', '1984-02-06 14:21:29', '2022-09-20 02:34:06'),
(70, 'Chelsea Wahyuni', 'Psr. Baja No. 949, Tomohon 82289, NTB', '2022-04-10 18:09:38', '2022-09-20 02:34:06'),
(71, 'Tira Kezia Hassanah S.IP', 'Gg. Achmad Yani No. 382, Banjar 96588, Kalteng', '2005-04-28 16:27:51', '2022-09-20 02:34:06'),
(72, 'Tantri Maya Andriani', 'Ds. Cikutra Timur No. 813, Bekasi 42733, Riau', '1978-04-18 06:08:15', '2022-09-20 02:34:06'),
(73, 'Lukita Dabukke', 'Gg. Pelajar Pejuang 45 No. 662, Bandung 28456, Sumut', '1986-05-10 17:43:16', '2022-09-20 02:34:06'),
(74, 'Tirta Wibisono S.Psi', 'Psr. Baja No. 968, Pariaman 16380, DKI', '1988-06-19 00:17:44', '2022-09-20 02:34:06'),
(75, 'Prabawa Sitompul', 'Psr. Gardujati No. 545, Samarinda 98341, Sumsel', '1998-10-28 12:32:15', '2022-09-20 02:34:06'),
(76, 'Rahmi Puput Safitri', 'Psr. Abdullah No. 997, Serang 58713, Riau', '2015-02-05 05:43:06', '2022-09-20 02:34:06'),
(77, 'Narji Gada Prakasa S.E.', 'Psr. Sunaryo No. 269, Lubuklinggau 66332, Jatim', '1989-07-04 07:17:44', '2022-09-20 02:34:06'),
(78, 'Elon Putra S.Kom', 'Dk. Orang No. 306, Mojokerto 27037, Babel', '2007-03-30 14:32:06', '2022-09-20 02:34:06'),
(79, 'Rendy Simanjuntak', 'Jln. Imam No. 294, Tidore Kepulauan 99339, Sulbar', '1982-12-01 15:26:38', '2022-09-20 02:34:06'),
(80, 'Mitra Salahudin S.Pd', 'Kpg. Gatot Subroto No. 821, Samarinda 42861, Sulut', '1983-11-21 06:09:40', '2022-09-20 02:34:06'),
(81, 'Eko Najam Situmorang S.Pt', 'Jr. Siliwangi No. 1, Lubuklinggau 61235, Kalsel', '1998-06-05 14:54:59', '2022-09-20 02:34:06'),
(82, 'Belinda Yuniar', 'Jr. Basoka No. 565, Pariaman 96512, Bali', '1987-12-16 01:08:37', '2022-09-20 02:34:06'),
(83, 'Simon Gaduh Nainggolan M.Pd', 'Kpg. Veteran No. 742, Palopo 63560, Malut', '1970-04-06 02:01:06', '2022-09-20 02:34:06'),
(84, 'Ira Yessi Maryati S.H.', 'Psr. Jaksa No. 739, Blitar 42209, Jabar', '1997-03-19 01:08:55', '2022-09-20 02:34:06'),
(85, 'Jayeng Tampubolon S.IP', 'Ds. Salam No. 175, Salatiga 65249, Bengkulu', '2019-05-24 01:58:27', '2022-09-20 02:34:06'),
(86, 'Uchita Hartati', 'Dk. Lada No. 343, Surakarta 20250, Aceh', '2019-04-12 07:50:36', '2022-09-20 02:34:06'),
(87, 'Nadia Ami Nasyidah', 'Jr. Bhayangkara No. 73, Sabang 39616, Jambi', '2006-11-15 19:13:27', '2022-09-20 02:34:06'),
(88, 'Aswani Santoso', 'Jr. Teuku Umar No. 891, Gunungsitoli 11079, Sulut', '1982-03-24 22:40:06', '2022-09-20 02:34:06'),
(89, 'Titin Prastuti', 'Jr. Kyai Mojo No. 981, Sungai Penuh 28852, Babel', '1988-05-12 13:54:44', '2022-09-20 02:34:06'),
(90, 'Abyasa Joko Pangestu M.Pd', 'Kpg. Gremet No. 350, Bengkulu 57689, Jatim', '1994-07-02 21:01:23', '2022-09-20 02:34:06'),
(91, 'Samsul Kala Uwais S.Sos', 'Ki. Bak Mandi No. 829, Payakumbuh 12041, Maluku', '2016-07-04 21:25:16', '2022-09-20 02:34:06'),
(92, 'Hesti Sakura Widiastuti', 'Ki. Urip Sumoharjo No. 832, Bogor 22841, DKI', '1970-09-18 07:34:56', '2022-09-20 02:34:06'),
(93, 'Cinthia Farida S.I.Kom', 'Jr. Barat No. 349, Lhokseumawe 95981, Sumsel', '2017-02-27 05:25:05', '2022-09-20 02:34:06'),
(94, 'Farhunnisa Nasyidah S.Ked', 'Gg. Wora Wari No. 196, Binjai 15744, NTB', '1998-07-17 03:47:15', '2022-09-20 02:34:06'),
(95, 'Rini Safitri M.TI.', 'Jr. Baladewa No. 164, Bitung 70431, Sulbar', '1998-01-27 20:10:36', '2022-09-20 02:34:06'),
(96, 'Silvia Ifa Purwanti S.E.I', 'Psr. Pattimura No. 818, Surakarta 87890, Jabar', '2011-10-30 12:27:37', '2022-09-20 02:34:06'),
(97, 'Natalia Hasanah', 'Jln. Bak Air No. 793, Palu 65847, NTT', '1971-01-23 16:59:52', '2022-09-20 02:34:06'),
(98, 'Raden Harto Prasetyo S.Ked', 'Psr. S. Parman No. 665, Kendari 85192, Jatim', '1985-10-26 10:33:04', '2022-09-20 02:34:06'),
(99, 'Zamira Safina Widiastuti M.Farm', 'Ds. Ters. Pasir Koja No. 998, Blitar 78555, Sulbar', '1988-04-27 18:58:31', '2022-09-20 02:34:06'),
(100, 'Puput Tina Hasanah', 'Ds. Haji No. 287, Batu 71836, Bengkulu', '1993-02-24 03:44:34', '2022-09-20 02:34:06'),
(101, 'Julia Yulia Kusmawati', 'Dk. Bara No. 177, Medan 45005, Bengkulu', '1984-10-16 20:49:49', '2022-09-20 02:34:06'),
(102, 'Gamanto Iswahyudi', 'Psr. Ki Hajar Dewantara No. 959, Bima 45976, Riau', '1973-05-18 04:13:58', '2022-09-20 02:34:06'),
(103, 'Garan Lulut Wacana S.Sos', 'Jln. Basudewo No. 230, Malang 48584, Jatim', '1995-09-12 13:35:08', '2022-09-20 02:34:06'),
(104, 'Vivi Namaga', 'Jln. Ronggowarsito No. 507, Bandung 99684, Malut', '2014-04-29 08:55:22', '2022-09-20 02:34:06'),
(105, 'Pia Suryatmi S.T.', 'Kpg. Jamika No. 563, Gorontalo 80439, Maluku', '1974-10-15 00:51:57', '2022-09-20 02:34:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
