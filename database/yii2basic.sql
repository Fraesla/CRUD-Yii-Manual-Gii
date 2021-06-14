-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 10:46 AM
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
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(1, 'KD001', 'Pena', 'Buah', 7, 3, 2000, 100),
(2, 'KD002', 'Buku', 'Buah', 7, 2, 5000, 150),
(3, 'KD003', 'Beras', 'Liter', 1, 3, 10000, 10),
(4, 'KD004', 'Minyak Makan', 'Liter', 1, 3, 3000, 45),
(5, 'KD005', 'Kamus Bahasa Inggris', 'Buah', 3, 4, 50000, 25),
(6, 'KD006', 'Buku Panduan', 'Buah', 3, 3, 50000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Makanan', 'Produk Makanan'),
(2, 'Minuman', 'Produk Minuman'),
(3, 'Buku', 'Toko Buku'),
(4, 'Baju', 'Toko Pakaian'),
(5, 'Celana', 'Toko Pakaian'),
(6, 'Mainan', 'Toko Mainan'),
(7, 'Alat Tulis', 'Toko Buku'),
(8, 'Peralatan', 'Toko Peralatan'),
(9, 'Elektronik', 'Toko Elektronik'),
(10, 'Obat-obatan', 'Medis'),
(12, 'Aksesoris', 'Toko Survernir');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jekel` char(1) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jekel`, `id_prodi`, `email`, `alamat`) VALUES
(1, '192142141', 'Andrian', 'L', 4, 'adrian@gmail.com', 'Padang'),
(2, '192423523', 'Siska', 'P', 5, 'Siska@gmail.com', 'Padang'),
(3, '19535314', 'Okta', 'L', 6, 'Okta@gmail.com', 'Padang'),
(4, '19245235', 'Nina', 'P', 4, 'Nina@gmail.com', 'Pasaman'),
(5, '191253456', 'Andi', 'L', 5, 'Andi@gmail.com', 'Pasaman'),
(6, '19215233', 'Dina', 'P', 6, 'Dina@gmail.com', 'Pasaman'),
(7, '191108341', 'Budi', 'L', 4, 'Budi@gmail.com', 'Pariaman'),
(8, '19242352', 'Intan', 'P', 5, 'Intan@gmail.com', 'Pariaman'),
(9, '194324235', 'Ahmad', 'L', 6, 'Ahmad@gmail.com', 'Pariaman'),
(10, '19153251', 'Yani', 'P', 4, 'Yani@gmail.com', 'Padang Panjang'),
(12, '191108241', 'Lisa', 'P', 4, 'Lisa@gmail.com', 'Padang');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `keterangan`) VALUES
(4, 'TRPL', 'Teknologi Rekayasa Perangkat Lunak'),
(5, 'MI', 'Manajemen Informatika'),
(6, 'SI', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(1, 'Pratama', '08534683124', 'Pramata@gmail.com', 'Padang'),
(2, 'Intan', '08567734123', 'Intan@gmail.com', 'Bukittinggi'),
(3, 'Andika', '085437568312', 'Andika@gmail.com', 'Solok'),
(4, 'Rena', '08534712532', 'Rena@gmail.com', 'Pariaman'),
(5, 'Wahyu', '08534634131', 'Wahyu@gmail.com', 'Pasaman');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kdtrans` varchar(5) NOT NULL,
  `kdbrg` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL,
  `idsup` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kdtrans`),
  ADD KEY `idjenis` (`idjenis`),
  ADD KEY `idsup` (`idsup`),
  ADD KEY `kdbrg` (`kdbrg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idjenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`idsup`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
