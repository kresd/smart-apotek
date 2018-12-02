-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2018 pada 03.03
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smartapotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_apotek`
--

CREATE TABLE `tb_apotek` (
  `Nama_Apotek` varchar(30) NOT NULL,
  `Longtd` varchar(100) NOT NULL,
  `Latttd` varchar(100) NOT NULL,
  `NIA` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_apoteker`
--

CREATE TABLE `tb_apoteker` (
  `ID_Apoteker` int(8) NOT NULL,
  `Nama_Apoteker` varchar(30) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `No_HP` int(13) NOT NULL,
  `Email` text,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_obat`
--

CREATE TABLE `tb_obat` (
  `ID_Obat` int(100) NOT NULL,
  `Nama_Obat` varchar(100) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_apotek`
--
ALTER TABLE `tb_apotek`
  ADD PRIMARY KEY (`NIA`);

--
-- Indeks untuk tabel `tb_apoteker`
--
ALTER TABLE `tb_apoteker`
  ADD PRIMARY KEY (`ID_Apoteker`);

--
-- Indeks untuk tabel `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`ID_Obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
