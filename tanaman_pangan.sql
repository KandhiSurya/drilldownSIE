-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 09:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanaman_pangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `luas_panen`
--

CREATE TABLE `luas_panen` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL DEFAULT 0,
  `nilai` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luas_panen`
--

INSERT INTO `luas_panen` (`id`, `sub_sektor`, `indikator`, `level`, `propinsi`, `kabupaten_kota`, `status_angka`, `rentang_tahun`, `komoditi`, `satuan`, `tahun`, `nilai`) VALUES
(1, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 102964),
(2, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 93378),
(3, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 93371),
(4, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 89510),
(5, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 124685),
(6, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 117909),
(7, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 113856),
(8, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 113538),
(9, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 54428),
(10, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 56310),
(11, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 50150),
(12, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 50553),
(13, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 80402),
(14, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 80398),
(15, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 77873),
(16, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 75966),
(17, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 88756),
(18, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 83365),
(19, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 72941),
(20, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 82935),
(21, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 55153),
(22, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 51209),
(23, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 52925),
(24, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 55013),
(25, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 51502),
(26, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 44201),
(27, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 45786),
(28, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 47236),
(29, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 98982),
(30, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 87701),
(31, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 83233),
(32, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 84946),
(33, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 90248),
(34, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 94996),
(35, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 98038),
(36, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 97516),
(37, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 58924),
(38, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 56439),
(39, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 55892),
(40, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 53341),
(41, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 238108),
(42, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 215731),
(43, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 226626),
(44, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 227051),
(45, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 173693),
(46, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 156299),
(47, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 169416),
(48, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 163947),
(49, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 32959),
(50, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 26453),
(51, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 30316),
(52, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 32931),
(53, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 199475),
(54, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 185807),
(55, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 181915),
(56, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 197916),
(57, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 109811),
(58, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 97749),
(59, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 103172),
(60, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 100338),
(61, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 31642),
(62, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 29184),
(63, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 29197),
(64, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 27655),
(65, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 34219),
(66, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 29859),
(67, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 29313),
(68, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 27678),
(69, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 82),
(70, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 62),
(71, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 33),
(72, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 36),
(73, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 2566),
(74, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 2391),
(75, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 2336),
(76, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 2456),
(77, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 1376),
(78, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 1215),
(79, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 1074),
(80, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 1026),
(81, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 349),
(82, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 231),
(83, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 226),
(84, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 232),
(85, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 441),
(86, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 518),
(87, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 484),
(88, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 478),
(89, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 63),
(90, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 85),
(91, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 31),
(92, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 45),
(93, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 71),
(94, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 71),
(95, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 77),
(96, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 77),
(97, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 9096),
(98, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 7231),
(99, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 7569),
(100, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 8540),
(101, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 5642),
(102, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 5055),
(103, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 5344),
(104, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 5723),
(105, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2018, 61617),
(106, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2019, 54988),
(107, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2020, 55692),
(108, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ha', 2021, 57426);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `produksi` (`id`, `sub_sektor`, `indikator`, `level`, `propinsi`, `kabupaten_kota`, `status_angka`, `rentang_tahun`, `komoditi`, `satuan`, `tahun`, `nilai`) VALUES
(1, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 525859.03),
(2, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 468764.28),
(3, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 521459.25),
(4, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 492926),
(5, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 696725.99),
(6, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 641804.29),
(7, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 622992.32),
(8, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cianjur', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 611773),
(9, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 314869.16),
(10, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 344214.39),
(11, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 277156.28),
(12, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 310715),
(13, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 449584.54),
(14, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 449395.01),
(15, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 424913.90),
(16, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Garut', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 443320),
(17, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 510048.82),
(18, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 441241.69),
(19, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 444358.24),
(20, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 445909),
(21, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 316212.98),
(22, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 276734.07),
(23, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 282791.46),
(24, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Ciamis', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 320331),
(25, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 314443.94),
(26, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 219953.32),
(27, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 277317.90),
(28, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kuningan', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 275893),
(29, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 552564.77),
(30, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 502574.97),
(31, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 497080.10),
(32, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 464731),
(33, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 554231.74),
(34, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 572005.83),
(35, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 566334.48),
(36, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Majalengka', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 534250),
(37, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 330508.46),
(38, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 302668.85),
(39, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 307178),
(40, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sumedang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 262038),
(41, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 1414730.62),
(42, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 1376429.68),
(43, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 1363311.87),
(44, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Indramayu', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 1319624),
(45, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 990994.87),
(46, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 942932.04),
(47, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 970759.74),
(48, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Subang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 959456),
(49, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 177276.30),
(50, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 143820.03),
(51, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 159957.49),
(52, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Purwakarta', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 167865),
(53, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 1133671.33),
(54, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 1117813.97),
(55, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 1087873.90),
(56, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Karawang', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 1234134),
(57, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 544986.21),
(58, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 549639.74),
(59, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 504103.31),
(60, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 587586),
(61, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 170934.99),
(62, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 158988.38),
(63, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 164640.49),
(64, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bandung Barat', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 146495),
(65, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 194398.08),
(66, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 174597.02),
(67, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 154982.57),
(68, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Pangandaran', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 140001),
(69, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 420.38),
(70, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 304.28),
(71, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 152.26),
(72, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 172),
(73, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 14436.50),
(74, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 15103.37),
(75, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 14532.67),
(76, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Sukabumi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 15123),
(77, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 8244.51),
(78, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 7317.23),
(79, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 6799.08),
(80, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bandung', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 7098),
(81, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 1767.92),
(82, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 1090.79),
(83, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 1031.24),
(84, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Cirebon', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 1245),
(85, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 2459.63),
(86, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 3045.20),
(87, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 2723.05),
(88, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Bekasi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 2305),
(89, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 357.06),
(90, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 465.03),
(91, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 189.23),
(92, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Depok', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 244),
(93, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 393.82),
(94, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 406.54),
(95, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 437.44),
(96, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Cimahi', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 443),
(97, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 46943.05),
(98, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 37041.64),
(99, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 36349.80),
(100, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Tasikmalaya', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 49118),
(101, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 31610.43),
(102, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 28744.69),
(103, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 28371.86),
(104, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Kota Banjar', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 35625),
(105, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2018, 348683.62),
(106, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2019, 307860.89),
(107, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2020, 298974.65),
(108, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Barat', 'Bogor', 'Angka Tetap', '2018-2021', 'Padi', 'Ton', 2021, 285154);

-- --------------------------------------------------------

--
-- Table structure for table `produktivitas`
--

CREATE TABLE `produktivitas` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `luas_panen`
--
ALTER TABLE `luas_panen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produktivitas`
--
ALTER TABLE `produktivitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `luas_panen`
--
ALTER TABLE `luas_panen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produktivitas`
--
ALTER TABLE `produktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
