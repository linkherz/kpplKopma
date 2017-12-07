-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 05:06 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopma`
--

-- --------------------------------------------------------

--
-- Table structure for table `tt_barang`
--

CREATE TABLE `tt_barang` (
  `kode_barang` char(5) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_modal` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL,
  `file_gambar` varchar(100) NOT NULL,
  `berat` int(10) NOT NULL,
  `bahan` varchar(100) NOT NULL,
  `panjang` int(10) NOT NULL,
  `lebar` int(10) NOT NULL,
  `tebal` int(10) NOT NULL,
  `tali_panjang` varchar(100) NOT NULL,
  `bag_charm` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_barang`
--

INSERT INTO `tt_barang` (`kode_barang`, `kategori`, `nama_barang`, `harga_modal`, `harga_jual`, `file_gambar`, `berat`, `bahan`, `panjang`, `lebar`, `tebal`, `tali_panjang`, `bag_charm`) VALUES
('W-1', 'Wan', 'TAS HITAM IMPORT, HANDBAG, SHOULDER BAG', 145000, 170000, '1.jpg', 900, 'KULIT PU', 22, 26, 9, 'ada', 'ada'),
('W-2', 'Wan', 'TAS ABU-ABU IMPORT, HANDBAG, SHOULDER BAG', 145000, 170000, '2.jpg', 900, 'KULIT PU', 22, 26, 9, 'ada', 'ada'),
('W-3', 'Wan', 'TAS UNGU IMPORT, HANDBAG, SHOULDER BAG', 145000, 170000, '3.jpg', 900, 'KULIT PU', 22, 26, 9, 'ada', 'ada'),
('W-4', 'Wan', 'TAS ABU-ABU IMPORT, HANDBAG, SHOULDER BAG', 160000, 180000, '4.jpg', 700, 'KULIT PU', 24, 29, 10, 'ada', 'ada'),
('A-1', 'Anak', 'TAS ANAK CEWE PINK, IMPORT SHOULDER BAG', 72000, 90000, '5.jpg', 100, ' COTTON CREPE', 16, 17, 4, 'ADA', 'TIDAK ADA'),
('A-2', 'Anak', 'TAS ANAK CEWE UNGU, IMPORT SHOULDER BAG', 72000, 90000, '6.jpg', 100, ' COTTON CREPE', 16, 17, 4, 'ADA', 'TIDAK ADA'),
('A-3', 'Anak', 'TAS ANAK CEWE BABI PINK, IMPORT SHOULDER BAG', 65000, 80000, '7.jpg', 100, ' COTTON CREPE', 16, 18, 5, 'ADA', 'TIDAK ADA'),
('A-4', 'Anak', 'TAS ANAK CEWE KUCING, IMPORT SHOULDER BAG', 65000, 80000, '8.jpg', 100, ' COTTON CREPE', 16, 18, 5, 'ADA', 'TIDAK ADA'),
('MU-1', 'MU', 'TAS MAKE UP CLASSY NAVY TRAVEL POUCH', 36000, 50000, '9.jpg', 200, 'NYLON MESH', 22, 18, 8, 'TIDAK ADA', 'TIDAK ADA'),
('MU-2', 'MU', 'TAS MAKE UP JEWELRY DIOR UNGU IMPORT, DOUBLE ZIPPER', 185000, 200000, '10.jpg', 2000, 'NYLON MESH', 19, 21, 13, 'TIDAK ADA', 'TIDAK ADA'),
('MU-3', 'MU', 'TAS MAKE UP 3IN1 PINK ZEBRA IMPORT WATER PROOF', 25000, 40000, '11.jpeg', 170, 'NYLON MESH', 20, 16, 8, 'ADA', 'TIDAK ADA'),
('PRI-1', 'Pria', 'TAS RANSEL HIJAU LORENG ARMY', 105000, 120000, '12.jpg', 500, 'DINIR', 35, 40, 12, 'TIDAK ADA', 'TIDAK ADA'),
('W-5', 'Wan', 'TAS RANSEL JANSPORT HITAM +SLOT LAPTOP', 70000, 90000, '13.jpg', 500, 'CANVAS(LUAR), SATIN POLOS(DALAM)', 40, 35, 10, 'TIDAK ADA', 'TIDAK ADA'),
('PRI-2', 'Pria', 'TAS RANSEL ADIDAS BIRU ANTI AIR +SLOT LAPTOP', 100000, 120000, '14.jpg', 400, 'CORDURA PREMIUM', 40, 35, 14, 'TIDAK ADA', 'TIDAK ADA'),
('PRO-1', 'Prom', 'TAS MERAH IMPORT, HANDBAG, SHOULDER BAG', 120000, 130000, '15.jpg', 95, 'PU', 31, 28, 0, 'ADA', 'TIDAK ADA');

-- --------------------------------------------------------

--
-- Table structure for table `tt_cara_pesan`
--

CREATE TABLE `tt_cara_pesan` (
  `no` int(10) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_cara_pesan`
--

INSERT INTO `tt_cara_pesan` (`no`, `judul`, `isi`) VALUES
(1, 'PESAN VIA', 'Website (Cepat, No Waiting-List, LOGIN dulu), \nWa/SMS [081 335 68 2030], \nLINE [@tokotasmurah]'),
(2, 'FORMAT PESAN VIA WA/SMS/LINE', 'Kodebarang + Nama Pemesan + Alamat + Bank Tujuan (BCA/BNI) + No Hp'),
(3, 'CEK ONGKOS KIRIM', 'POS: http://www.posindonesia.co.id/tarif/ atau JNE: www.jne.co.id - Pengiriman dari Tulungagung'),
(4, 'Bank Tujuan', 'BCA : Ngo My Ling - 048 344 12468 atau BNI Ngo My Ling - 1268 3144 1246');

-- --------------------------------------------------------

--
-- Table structure for table `tt_faq`
--

CREATE TABLE `tt_faq` (
  `no` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_faq`
--

INSERT INTO `tt_faq` (`no`, `judul`, `isi`) VALUES
(1, 'APAKAH HARGA TERTERA SUDAH TERMASUK ONGKOS KIRIM ?', 'Pengiriman kami dari Jakarta (kode pos 10640). Harga tertera  belum termasuk Ongkos Kirim. Keterangan ongkos kirim bisa di check di :\nPOS : http://www.posindonesia.co.id/tarif/\nJNE : http://www.jne.co.id/home.php'),
(2, 'BAGAIMANA JIKA SUDAH BAYAR TETAPI STOCK BARANG TERNYATA KOSONG ?', 'Ini bisa saja terjadi (dengan alasan apapun), solusi yg kami tawarkan adalah refund uang yg sudah ditransfer / ganti model lain sesuai kemauan pembeli\r\n\r\nProses REFUND (kembali uang) hanya dapat di transfer ke rekening BCA & BNI (tidak bank lain).'),
(3, 'APABILA SAYA SUDAH ORDER, DAPATKAH ORDER SAYA DISIMPAN SAMPAI MINGGU DEPAN?', 'Persediaan barang kami dapat berubah setiap waktu, jadi apabila sudah order sebaiknya langsung melakukan pembayaran setelah status order menjadi "TUNGGU PEMBAYARAN”\n\n# Untuk informasi lebih lanjut, dapat menghubungi kami pribadi');

-- --------------------------------------------------------

--
-- Table structure for table `tt_invoice`
--

CREATE TABLE `tt_invoice` (
  `kode_invoice` int(10) NOT NULL,
  `tanggal` datetime NOT NULL,
  `deadline` datetime NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` enum('paid','unpaid','canceled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_invoice`
--

INSERT INTO `tt_invoice` (`kode_invoice`, `tanggal`, `deadline`, `username`, `status`) VALUES
(1, '2017-05-26 05:22:31', '2017-05-27 05:22:31', 'user', ''),
(2, '2017-09-11 11:35:07', '2017-09-12 11:35:07', 'user', ''),
(3, '2017-11-28 16:32:17', '2017-11-29 16:32:17', 'user', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `tt_keranjang_belanja`
--

CREATE TABLE `tt_keranjang_belanja` (
  `kode_keranjang` int(10) NOT NULL,
  `username_pelanggan` varchar(100) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_keranjang_belanja`
--

INSERT INTO `tt_keranjang_belanja` (`kode_keranjang`, `username_pelanggan`, `kode_barang`, `total_harga`, `tanggal`) VALUES
(1, 'gab', 'W-1', 150000, '2016-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tt_pesanan`
--

CREATE TABLE `tt_pesanan` (
  `kode_pesanan` int(10) NOT NULL,
  `kode_invoice` int(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_pesanan`
--

INSERT INTO `tt_pesanan` (`kode_pesanan`, `kode_invoice`, `nama_barang`, `harga`, `options`) VALUES
(1, 1, 'W-1', 170000, ''),
(2, 2, 'PRO-1', 130000, ''),
(3, 2, 'PRI-1', 120000, ''),
(4, 3, 'PRO-1', 130000, ''),
(5, 3, 'W-1', 170000, ''),
(6, 3, 'PRI-1', 120000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tt_user`
--

CREATE TABLE `tt_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` bigint(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `privileges` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_user`
--

INSERT INTO `tt_user` (`username`, `password`, `nama`, `email`, `no_hp`, `jenis_kelamin`, `tanggal_lahir`, `privileges`, `status`) VALUES
('admin', 'admin', 'gabrielle', 'gab@gmail.com', 81335123456, 'perempuan', '1998-08-15', 1, 'login'),
('test', 'test', 'test', 'test@test.com', 1234567, 'perempuan', '2000-01-01', 0, 'login'),
('user', 'user', 'gab', 'resugab@gmail.com', 813353219399, 'perempuan', '2000-10-01', 0, 'login'),
('users', 'pass', 'gab', 'linkherzg@gmail.com', 897868, 'P', '0000-00-00', 0, 'login');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tt_barang`
--
ALTER TABLE `tt_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tt_cara_pesan`
--
ALTER TABLE `tt_cara_pesan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tt_faq`
--
ALTER TABLE `tt_faq`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tt_invoice`
--
ALTER TABLE `tt_invoice`
  ADD PRIMARY KEY (`kode_invoice`);

--
-- Indexes for table `tt_keranjang_belanja`
--
ALTER TABLE `tt_keranjang_belanja`
  ADD PRIMARY KEY (`kode_keranjang`);

--
-- Indexes for table `tt_pesanan`
--
ALTER TABLE `tt_pesanan`
  ADD PRIMARY KEY (`kode_pesanan`);

--
-- Indexes for table `tt_user`
--
ALTER TABLE `tt_user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tt_invoice`
--
ALTER TABLE `tt_invoice`
  MODIFY `kode_invoice` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tt_keranjang_belanja`
--
ALTER TABLE `tt_keranjang_belanja`
  MODIFY `kode_keranjang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_pesanan`
--
ALTER TABLE `tt_pesanan`
  MODIFY `kode_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
