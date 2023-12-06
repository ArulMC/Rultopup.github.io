-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2022 pada 08.40
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak_9`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `User_ID` int(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`User_ID`, `Username`, `password`, `email`, `level`) VALUES
(1, 'Feri', 'feri', 'feri@gmail.com', 'user'),
(2, 'admin', 'admin', 'admin@gmail.com', 'admin'),
(3, 'zaedar', 'zaedar', 'zaedar@gmail.com', 'user'),
(4, 'alba', 'alba', 'alba@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `jumlah_diamond` int(11) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `jumlah_diamond`, `harga`) VALUES
(1, 20, '15000'),
(2, 50, '30000'),
(3, 100, '50000'),
(4, 120, '130000'),
(5, 320, '350000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topup`
--

CREATE TABLE `topup` (
  `user_id` int(11) NOT NULL,
  `ID_GAME` int(10) NOT NULL,
  `nomor_hp` int(12) NOT NULL,
  `jumlah_diamond` text NOT NULL,
  `metod_pemabayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `topup`
--

INSERT INTO `topup` (`user_id`, `ID_GAME`, `nomor_hp`, `jumlah_diamond`, `metod_pemabayaran`) VALUES
(3, 12345, 2147483647, '1', 'Virtual Account'),
(3, 123456, 2147483647, '2', 'Kartu Kredit'),
(3, 12345678, 2147483647, '3', 'QRIS'),
(3, 123456789, 2147483647, '4', 'Paypal'),
(3, 76543, 998988998, '3', 'Indomaret');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `User_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
