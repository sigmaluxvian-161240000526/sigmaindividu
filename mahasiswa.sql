-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Des 2019 pada 16.18
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxvian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama_mhs`, `alamat`, `jk`, `no_hp`) VALUES
(1, '161240000526', 'sigma luxvian', 'cepogo rt 02 rw 10 kembang jep', 'La', '085656759001'),
(2, '161240000523', 'ananda rizqi winantasya', 'srobyong rt 04 rw 02 mlonggo j', 'P', '089560567456'),
(3, '161240000478', 'adlin safira a', 'tegal sambi rt 05 rw 01 tahuna', 'P', '082223034169'),
(4, '161240000511', 'novia kris m', 'dermolo rt 04 rw 02', 'P', '089560361731'),
(5, '161240000482', 'ahmad feri setyawan', 'sukosono rt 28 rw 07 kedung je', 'L', '085225678908'),
(6, '1612478762', 'arki', 'tahunan', 'La', '087654325671111'),
(7, '161240000533', 'hikam', 'kauman jepara', 'La', '08765487777'),
(8, '161240000551', 'reto nur cahyanti', 'Demaan Kabupaten Jepara', 'Pe', '081324567000'),
(9, '161240000580', 'melati nur indah ', 'Ngabul Kabupaten Jepara', 'Pe', '081222554870'),
(10, '161240000550', 'ibrahim dasuki', 'Mulyoharjo', 'La', '085243111908'),
(11, '161240000524', 'Ana Nurul Fatmawati', 'Bandengan', 'Pe', '087444321879');

--
-- Trigger `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `sigma` BEFORE UPDATE ON `mahasiswa` FOR EACH ROW BEGIN
insert into log
set nim_mhs=old.nim,
no_hp_baru=new.no_hp,
no_hp_lama=old.no_hp,
tgl_diubah=NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
