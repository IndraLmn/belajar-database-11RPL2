-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2022 pada 03.31
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `11rpl2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `jomblo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kelas`, `nilai`, `jomblo`) VALUES
('12100018', 'Adnan Maulana', 'L', 'Subang', '2005-08-17', 'Cigadung', '11-RPL-2', 81.32, 1),
('12100027', 'Agil Muhammad Hamzah', 'L', 'Subang', '2005-11-22', 'Tambakan', '11-RPL-2', 75.22, 1),
('12100029', 'Agung Aryanto', 'L', 'Subang', '2005-01-27', 'Tanjung Wangi', '11-RPL-2', 83.33, 1),
('12100113', 'Bayu Putra Pratama', 'L', 'Subang', '2005-01-24', 'Curugrendeng', '11-RPL-2', 83.12, 1),
('12100126', 'Chinta Bella', 'P', 'Subang', '2005-07-04', 'Jalancagak', '11-RPL-2', 43.23, 1),
('12100147', 'Davanza Naufal Andika', 'L', 'Subang', '2005-09-03', 'Tambakan', '11-RPL-2', 32.46, 1),
('12100152', 'Dea Dwi Agustin', 'P', 'Subang', '2005-04-22', 'Palasari', '11-RPL-2', 75.35, 1),
('12100194', 'Dian Winata', 'L', 'Subang', '2005-08-02', 'Bandung', '11-RPL-2', 57.53, 1),
('12100213', 'Dwi Gita Anggraeni', 'P', 'Subang', '2005-09-05', 'Dangdeur', '11-RPL-2', 75.53, 1),
('12100220', 'Egi Subastian', 'L', 'Subang', '2005-04-28', 'Babakan', '11-RPL-2', 54.75, 1),
('12100240', 'Eryan Gusman', 'L', 'Subang', '2005-02-22', 'Pagaden', '11-RPL-2', 88.56, 1),
('12100246', 'Fabiyan Airlangga', 'L', 'Subang', '2005-03-12', 'Kalijati', '11-RPL-2', 56.85, 1),
('12100253', 'Fahmi Maulana Fadila', 'L', 'Subang', '2005-05-02', 'Lembang', '11-RPL-2', 53.65, 1),
('12100265', 'Farel Vandi Ardiwinata', 'L', 'Subang', '2005-01-22', 'Tanjungwangi', '11-RPL-2', 53.85, 1),
('12100274', 'Ferdinand Maulana Za Fauzi', 'L', 'Subang', '2005-02-02', 'BBC', '11-RPL-2', 57.58, 1),
('12100319', 'Ibnu Nasrullah', 'L', 'Subang', '2005-04-12', 'Cidaki', '11-RPL-2', 57.53, 1),
('12100328', 'Indra Lesmana', 'L', 'Subang', '2005-07-13', 'Cihampelas', '11-RPL-2', 85.53, 1),
('12100364', 'Kasih Susilawati', 'P', 'Subang', '2005-06-12', 'Ciherang', '11-RPL-2', 65.35, 1),
('12100373', 'Kharisya Mergianti', 'P', 'Subang', '2005-08-13', 'Ciater', '11-RPL-2', 55.53, 1),
('12100459', 'Muhamad Ilyas Ruswandi', 'L', 'Subang', '2005-10-22', 'Cikahuripan', '11-RPL-2', 85.65, 1),
('12100463', 'Muhammad Ma\'ruf Hartanto', 'L', 'Subang', '2005-10-22', 'Manyingsal', '11-RPL-2', 65.53, 1),
('12100494', 'Muhammad Tegep Rahmanda', 'L', 'Subang', '2005-02-13', 'Tanjungwangi', '11-RPL-2', 56.53, 1),
('12100525', 'Naufal Irfan Haidar', 'L', 'Subang', '2005-03-21', 'Cijambe', '11-RPL-2', 75.43, 1),
('12100549', 'Novaliza Putri Helnanda', 'P', 'Subang', '2005-01-02', 'Subang', '11-RPL-2', 85.34, 1),
('12100550', 'Novi Putri Agistiani', 'P', 'Subang', '2005-06-28', 'Pagaden', '11-RPL-2', 45.66, 1),
('12100562', 'Nursifa Septiani', 'P', 'Subang', '2005-07-20', 'Subang', '11-RPL-2', 86.43, 1),
('12100564', 'Nurul Hamidah', 'P', 'Subang', '2005-08-20', 'Binong', '11-RPL-2', 45.64, 1),
('12100665', 'Rizki Ramdhani', 'L', 'Subang', '2005-09-18', 'Subang', '11-RPL-2', 43.46, 1),
('12100688', 'Salsa Amelia', 'P', 'Subang', '2005-12-22', 'Tanjungwangi', '11-RPL-2', 98.45, 1),
('12100696', 'Salsabila Zahra Andina', 'P', 'Subang', '2005-08-21', 'Pagaden', '11-RPL-2', 23.43, 1),
('12100707', 'Satrio Augistiawan', 'L', 'Subang', '2005-08-04', 'Ciloa', '11-RPL-2', -70.33, 1),
('12100744', 'Shinta Nur Wulan', 'P', 'Subang', '2005-09-28', 'Kalijati', '11-RPL-2', 90.34, 1),
('12100803', 'Tri Tarjiansa Saputra', 'L', 'Subang', '2005-10-22', 'Tambakan', '11-RPL-2', 32.34, 1),
('12100822', 'Waliyudin Helmi', 'L', 'Subang', '2005-02-07', 'Kalijati', '11-RPL-2', 34.32, 1),
('12100845', 'Yoshi Kardiana', 'L', 'Subang', '2005-01-19', 'Tambakan', '11-RPL-2', 90.43, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
