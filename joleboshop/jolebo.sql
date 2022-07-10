-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 10:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jolebo`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` int(5) NOT NULL,
  `nm_barang` varchar(30) DEFAULT NULL,
  `satuan` varchar(15) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `stok_min` int(5) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `satuan`, `deskripsi`, `harga`, `harga_beli`, `stok`, `stok_min`, `gambar`) VALUES
(1, 'Flashdisk', 'pcs', 'Flashdisk Merk HP berkualitas', 65000, 60000, 9, 8, 'foto-Flashdisk.jpg'),
(2, 'Headphones ', 'pcs', 'Headphones Merk Boat Terbaru Berkualitas', 120000, 100000, 18, 10, 'foto-Headphones_.jpg'),
(3, 'Kabel OTG', 'pcs', 'Kabel OTG Berkualitas, Awet', 25000, 20000, 14, 10, 'foto-Kabel_OTG.jpg'),
(4, 'Keyboard ', 'pcs', 'Keyboard Keychron Terbaru', 200000, 150000, 20, 15, 'foto-Keyboard_.jpg'),
(5, 'Mouse Logitech', 'pcs', 'Mouse Logitech Terbaru', 60000, 50000, 17, 10, 'foto-Mouse_Logitech.jpg'),
(6, 'Keyboard Iphun', 'pcs', 'Keyboard berkualitas', 320000, 300000, 9, 8, 'foto-Keyboard_Iphun.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(5) NOT NULL,
  `no_nota` int(5) DEFAULT NULL,
  `kd_brg` int(5) DEFAULT NULL,
  `hrg_brg` decimal(12,2) DEFAULT NULL,
  `jml_brg` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_nota`, `kd_brg`, `hrg_brg`, `jml_brg`) VALUES
(32, 104, 14, '30000.00', 1),
(33, 105, 13, '30000.00', 2),
(34, 106, 8, '30000.00', 4),
(35, 107, 6, '35000.00', 1),
(36, 0, 2, '40000.00', 1),
(37, 0, 5, '25000.00', 1),
(38, 109, 4, '56000.00', 1),
(39, 110, 2, '40000.00', 1),
(40, 111, 2, '40000.00', 1),
(41, 112, 15, '30000.00', 1),
(42, 113, 2, '40000.00', 1),
(43, 114, 7, '30000.00', 1),
(44, 114, 9, '30000.00', 1),
(45, 114, 10, '30000.00', 1),
(46, 115, 4, '56000.00', 1),
(47, 115, 6, '35000.00', 1),
(48, 115, 8, '30000.00', 1),
(49, 116, 4, '56000.00', 1),
(50, 117, 7, '30000.00', 1),
(51, 117, 8, '30000.00', 2),
(52, 118, 1, '30000.00', 1),
(53, 119, 2, '40000.00', 1),
(54, 119, 4, '56000.00', 1),
(55, 120, 9, '30000.00', 1),
(56, 121, 2, '40000.00', 1),
(57, 122, 2, '40000.00', 1),
(58, 123, 2, '40000.00', 1),
(59, 124, 7, '30000.00', 1),
(60, 125, 11, '30000.00', 1),
(61, 126, 11, '30000.00', 1),
(62, 127, 16, '30000.00', 1),
(63, 128, 17, '30000.00', 4),
(64, 129, 11, '30000.00', 1),
(65, 130, 23, '22.00', 1),
(66, 131, 22, '90.00', 1),
(67, 132, 12, '30000.00', 1),
(68, 133, 15, '30000.00', 1),
(69, 134, 24, '22.00', 1),
(70, 135, 24, '22.00', 1),
(71, 136, 11, '30000.00', 1),
(72, 137, 11, '30000.00', 2),
(73, 138, 5, '25000.00', 1),
(74, 139, 11, '30000.00', 1),
(75, 140, 13, '30000.00', 1),
(76, 141, 10, '30000.00', 1),
(77, 142, 2, '40000.00', 1),
(78, 142, 7, '30000.00', 1),
(79, 143, 2, '40000.00', 1),
(80, 144, 20, '30000.00', 1),
(81, 145, 1, '30000.00', 1),
(82, 146, 9, '30000.00', 1),
(83, 147, 3, '38000.00', 1),
(84, 148, 7, '30000.00', 1),
(85, 148, 10, '30000.00', 1),
(86, 149, 10, '30000.00', 1),
(87, 149, 11, '30000.00', 1),
(88, 149, 12, '30000.00', 1),
(89, 150, 4, '56000.00', 5),
(90, 150, 10, '30000.00', 3),
(91, 151, 2, '40000.00', 1),
(92, 152, 8, '30000.00', 1),
(93, 153, 8, '30000.00', 3),
(94, 153, 2, '40000.00', 1),
(95, 154, 8, '30000.00', 1),
(96, 154, 20, '30000.00', 2),
(97, 154, 9, '30000.00', 2),
(98, 155, 3, '38000.00', 1),
(99, 156, 2, '40000.00', 1),
(100, 157, 2, '40000.00', 1),
(101, 158, 12, '30000.00', 1),
(102, 158, 13, '30000.00', 1),
(103, 158, 14, '30000.00', 1),
(104, 159, 1, '30000.00', 1),
(105, 160, 9, '30000.00', 1),
(106, 160, 10, '30000.00', 1),
(107, 160, 12, '30000.00', 1),
(108, 161, 3, '38000.00', 4),
(109, 162, 10, '38000.00', 1),
(110, 162, 2, '40000.00', 2),
(111, 163, 2, '40000.00', 1),
(112, 164, 4, '56000.00', 1),
(113, 165, 2, '40000.00', 4),
(114, 166, 2, '40000.00', 2),
(115, 167, 2, '40000.00', 1),
(116, 168, 2, '40000.00', 1),
(117, 169, 4, '56000.00', 3),
(118, 169, 9, '38000.00', 1),
(119, 1, 1, '65000.00', 1),
(120, 2, 3, '25000.00', 1),
(121, 3, 2, '120000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_konsumen` int(5) NOT NULL,
  `oauth_provider` enum('facebook','google','twitter','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oauth_uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_konsumen` varchar(35) DEFAULT '',
  `alamat` text DEFAULT '',
  `kodepos` varchar(5) DEFAULT '',
  `kota` varchar(35) DEFAULT '',
  `no_hp` varchar(13) DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `foto` tinytext DEFAULT 'default.jpg',
  `group` int(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`kd_konsumen`, `oauth_provider`, `oauth_uid`, `nm_konsumen`, `alamat`, `kodepos`, `kota`, `no_hp`, `email`, `username`, `password`, `foto`, `group`) VALUES
(1, '', '', 'administrator', 'lorem ipsum dolor sit amet', '50221', 'Semarang', '088888', 'Admin@joleboshop.com', 'admin123', '0192023a7bbd73250516f069df18b500', 'default.jpg', 1),
(56, '', '', NULL, NULL, NULL, NULL, NULL, 'candra@gmail.com', 'candra', 'e999cd3950bd8db879e2fd401e95ed9d', NULL, 2),
(57, '', '', NULL, NULL, NULL, NULL, NULL, 'candra111@gmail.com', 'candra', '25d55ad283aa400af464c76d713c07ad', NULL, 2),
(58, '', '', NULL, NULL, NULL, NULL, NULL, 'faris@gmail.com', 'Faris', 'c73f227db1b523334ea3aef35bf06af8', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_nota` int(5) NOT NULL,
  `kd_konsumen` int(5) DEFAULT NULL,
  `tgl_jual` datetime NOT NULL DEFAULT current_timestamp(),
  `due_date` datetime DEFAULT NULL,
  `pembelian` decimal(12,2) DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `kode_kab` int(11) DEFAULT NULL,
  `kurir` varchar(5) DEFAULT NULL,
  `expedisi` varchar(40) DEFAULT NULL,
  `wkt_pengiriman` varchar(20) NOT NULL,
  `ongkir` decimal(12,2) DEFAULT NULL,
  `total_biaya` decimal(12,2) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` enum('Belum dibayar','Sudah dibayar') NOT NULL DEFAULT 'Belum dibayar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_nota`, `kd_konsumen`, `tgl_jual`, `due_date`, `pembelian`, `tujuan`, `kode_kab`, `kurir`, `expedisi`, `wkt_pengiriman`, `ongkir`, `total_biaya`, `image`, `status`) VALUES
(1, 57, '2022-07-08 07:06:53', '2022-07-15 07:06:53', '65000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '79000.00', 'BuktiPembayaran-1.jpg', 'Sudah dibayar'),
(2, 57, '2022-07-08 08:14:27', '2022-07-15 08:14:27', '25000.00', 'Semarang', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '14000.00', '39000.00', 'BuktiPembayaran-2.jpg', 'Sudah dibayar'),
(3, 58, '2022-07-09 10:35:05', '2022-07-16 10:35:05', '120000.00', 'Rumah', 399, 'pos', 'POS - Paket Kilat Khusus', '2 HARI', '20000.00', '140000.00', 'BuktiPembayaran-3.png', 'Sudah dibayar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_konsumen`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_nota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kd_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `kd_konsumen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `no_nota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
