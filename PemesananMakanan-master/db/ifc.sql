-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Des 2016 pada 13.52
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ifc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_franchise`
--

CREATE TABLE `tbl_franchise` (
  `id_franchise` varchar(10) NOT NULL,
  `alamat_franchise` varchar(30) NOT NULL,
  `tlp_franchise` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_franchise`
--

INSERT INTO `tbl_franchise` (`id_franchise`, `alamat_franchise`, `tlp_franchise`) VALUES
('CA001', 'Senayan', '8029009'),
('CA002', 'Tebet', '2902112'),
('CA003', 'Depok', '8012009');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` varchar(10) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `alamat_karyawan` varchar(30) NOT NULL,
  `pekerjaan_karyawan` varchar(30) NOT NULL,
  `tlp_karyawan` int(15) NOT NULL,
  `id_franchise` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `pekerjaan_karyawan`, `tlp_karyawan`, `id_franchise`) VALUES
('KA001', 'Mawar', 'Jakarta', 'Kasir', 812812099, 'CA001'),
('KA002', 'Melati', 'Depok', 'Kasir', 812812092, 'CA003'),
('KO001', 'Ahmad', 'Jakarta', 'Koki', 812812121, 'CA002'),
('KO002', 'Agung', 'Jakarta', 'Koki', 812912931, 'CA002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `kemampuan_bahasa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`id_kasir`, `kemampuan_bahasa`) VALUES
('KA001', 'Indonesia, Inggris'),
('KA002', 'Indonesia, Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_koki`
--

CREATE TABLE `tbl_koki` (
  `id_koki` varchar(10) NOT NULL,
  `jenis_masakan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_koki`
--

INSERT INTO `tbl_koki` (`id_koki`, `jenis_masakan`) VALUES
('KO001', 'Dessert'),
('KO002', 'Main Course');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_makanan`
--

CREATE TABLE `tbl_makanan` (
  `id_makanan` varchar(10) NOT NULL,
  `stok_makanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_makanan`
--

INSERT INTO `tbl_makanan` (`id_makanan`, `stok_makanan`) VALUES
('F01', 80),
('F02', 40),
('F03', 55),
('F04', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` varchar(5) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `foto_menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `nama_menu`, `harga_menu`, `foto_menu`) VALUES
('D01', 'Fanta', 9000, 'fanta'),
('D02', 'Coca Cola', 9000, 'cocacola'),
('D03', 'Pepsi', 9000, 'pepsi'),
('D04', 'Ice Cream', 8000, 'icecream'),
('F01', 'Fried Chicken', 16500, 'friedchicken'),
('F02', 'Burger', 10000, 'burger'),
('F03', 'French Fries', 13000, 'frenchfries'),
('F04', 'Spaghetti', 14000, 'spaghetti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_minuman`
--

CREATE TABLE `tbl_minuman` (
  `id_minuman` varchar(10) NOT NULL,
  `stok_minuman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_minuman`
--

INSERT INTO `tbl_minuman` (`id_minuman`, `stok_minuman`) VALUES
('D01', 22),
('D02', 9),
('D03', 75),
('D04', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `fanta` int(11) NOT NULL,
  `coca_cola` int(11) NOT NULL,
  `pepsi` int(11) NOT NULL,
  `ice_cream` int(11) NOT NULL,
  `fried_chicken` int(11) NOT NULL,
  `burger` int(11) NOT NULL,
  `french_fries` int(11) NOT NULL,
  `spaghetti` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `waktu_transaksi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `fanta`, `coca_cola`, `pepsi`, `ice_cream`, `fried_chicken`, `burger`, `french_fries`, `spaghetti`, `status`, `total`, `tanggal_transaksi`, `waktu_transaksi`) VALUES
(1, 0, 0, 0, 11, 0, 0, 0, 11, 'Selesai', 0, '0000-00-00', '00:00:00'),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(3, 0, 0, 0, 1, 0, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(5, 0, 0, 0, 0, 2, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(6, 0, 0, 1, 0, 0, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(7, 0, 1, 0, 0, 0, 0, 1, 1, 'Selesai', 0, '0000-00-00', '00:00:00'),
(8, 0, 1, 0, 0, 0, 0, 0, 0, 'Waiting', 0, '0000-00-00', '00:00:00'),
(9, 0, 0, 0, 0, 0, 0, 0, 3, 'Waiting', 0, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `level`) VALUES
('KA001', 'c7911af3adbd12a035b289556d96470a', 1),
('KA002', 'c7911af3adbd12a035b289556d96470a', 1),
('KO001', 'c38be0f1f87d0e77a0cd2fe6941253eb', 2),
('KO002', 'c38be0f1f87d0e77a0cd2fe6941253eb', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_franchise`
--
ALTER TABLE `tbl_franchise`
  ADD PRIMARY KEY (`id_franchise`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `tbl_koki`
--
ALTER TABLE `tbl_koki`
  ADD PRIMARY KEY (`id_koki`);

--
-- Indexes for table `tbl_makanan`
--
ALTER TABLE `tbl_makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_minuman`
--
ALTER TABLE `tbl_minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
