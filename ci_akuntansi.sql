-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2022 pada 09.12
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_akuntansi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('a2765d1af4759cd0862537a9af711cb7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 1667289897, 'a:6:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";s:22:\"aingLoginAkuntansiYeuh\";s:8:\"username\";s:5:\"admin\";s:12:\"nama_lengkap\";s:13:\"Administrator\";s:5:\"level\";s:11:\"super admin\";s:4:\"foto\";s:7:\"252.jpg\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_penyesuaian`
--

CREATE TABLE `jurnal_penyesuaian` (
  `no_jurnal` varchar(20) NOT NULL,
  `tgl_jurnal` date NOT NULL,
  `no_rek` char(10) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tgl_insert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_umum`
--

CREATE TABLE `jurnal_umum` (
  `no_jurnal` varchar(20) NOT NULL,
  `tgl_jurnal` date NOT NULL,
  `ket` varchar(255) NOT NULL,
  `no_bukti` varchar(100) NOT NULL,
  `no_rek` char(10) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tgl_insert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `no_rek` char(10) NOT NULL DEFAULT '',
  `induk` char(10) NOT NULL DEFAULT '0',
  `level` smallint(6) DEFAULT '0',
  `nama_rek` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo_awal`
--

CREATE TABLE `saldo_awal` (
  `periode` year(4) NOT NULL,
  `no_rek` char(10) NOT NULL,
  `debet` int(11) NOT NULL DEFAULT '0',
  `kredit` int(11) NOT NULL DEFAULT '0',
  `tgl_insert` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saldo_awal`
--

INSERT INTO `saldo_awal` (`periode`, `no_rek`, `debet`, `kredit`, `tgl_insert`, `username`) VALUES
(2012, '1101', 5000000, 0, '2013-04-11', 'admin'),
(2012, '1102', 8000000, 0, '2013-04-11', 'admin'),
(2012, '1103', 1200000, 0, '2013-04-11', 'admin'),
(2012, '1104', 600000, 0, '2013-04-11', 'admin'),
(2012, '1201', 35000000, 0, '2013-04-11', 'admin'),
(2012, '2101', 0, 4400000, '2013-04-11', 'admin'),
(2012, '2102', 0, 0, '2013-04-11', 'admin'),
(2012, '3101', 0, 42500000, '2013-04-11', 'admin'),
(2012, '3102', 2100000, 0, '2013-04-11', 'admin'),
(2012, '4101', 0, 7100000, '2013-04-11', 'admin'),
(2012, '5101', 1800000, 0, '2013-04-11', 'admin'),
(2012, '5102', 0, 0, '2013-04-11', 'admin'),
(2012, '5103', 300000, 0, '2013-04-11', 'admin'),
(2012, '5104', 0, 0, '2013-04-11', 'admin'),
(2014, '0900', 312, 11, '2015-09-17', 'admin'),
(2014, '103', 0, 100000, '2015-11-27', 'admin'),
(2014, '1213', 0, 0, '2015-08-21', 'admin'),
(2014, '202', 12000000, 0, '2015-09-23', 'admin'),
(2014, '301', 0, 0, '2015-10-09', 'admin'),
(2014, '401', 6000000, 0, '2015-10-23', 'admin'),
(2014, 'c001', 1000, 0, '2015-06-12', 'admin'),
(2014, 'R1', 900000, 0, '2015-10-30', 'admin'),
(2015, '0001', 10000000, 4000000, '2016-05-24', 'admin'),
(2015, '0002', 6000000, 0, '2015-12-26', 'admin'),
(2015, '0022', 5000, 2000, '2015-07-25', 'admin'),
(2015, '007222222', 5000000, 2000000, '2016-05-25', 'admin'),
(2015, '010101', 80000000, 0, '2015-12-26', 'admin'),
(2015, '0200', 0, 0, '2015-09-17', 'admin'),
(2015, '0203', 100000, 10000000, '2015-09-13', 'admin'),
(2015, '0206', 3000, 2000, '2015-09-13', 'admin'),
(2015, '0212132131', 0, 0, '2016-01-21', 'admin'),
(2015, '0866', 1000000, 0, '2015-05-05', 'admin'),
(2015, '0876888277', 0, 0, '2015-05-11', 'admin'),
(2015, '100.100', 0, 0, '2016-12-05', 'admin'),
(2015, '1001', 20000000, 0, '2016-08-13', 'admin'),
(2015, '103', 100000, 0, '2015-10-24', 'admin'),
(2015, '1030005276', 0, 0, '2015-09-02', 'admin'),
(2015, '106', 10000, 0, '2015-10-30', 'admin'),
(2015, '110', 123123, 12312312, '2015-08-11', 'admin'),
(2015, '11001', 10, 0, '2016-03-27', 'admin'),
(2015, '1101', 20000, 0, '2015-02-23', 'admin'),
(2015, '111.00', 0, 10000000, '2015-05-17', 'admin'),
(2015, '1110111', 100000, 0, '2016-01-13', 'admin'),
(2015, '119', 40000, 80000, '2016-05-21', 'admin'),
(2015, '123', 1000000, 0, '2015-05-12', 'admin'),
(2015, '13455', 0, 0, '2015-10-30', 'admin'),
(2015, '1717', 0, 0, '2015-09-16', 'admin'),
(2015, '202', 100000, 0, '2015-11-27', 'admin'),
(2015, '212', 500000000, 0, '2015-06-27', 'admin'),
(2015, '301', 0, 2147483647, '2016-08-30', 'admin'),
(2015, '51010101', 500000000, 0, '2015-05-03', 'admin'),
(2015, '5101010101', 500000000, 0, '2015-05-03', 'admin'),
(2015, '6677', 8000, 6000, '2015-10-01', 'admin'),
(2015, '8923', 4000, 2000, '2015-10-01', 'admin'),
(2015, '8932', 8000, 4000, '2015-10-08', 'admin'),
(2015, 'AK001', 5000000, 0, '2016-03-17', 'admin'),
(2015, 'anak 119', 212, 0, '2016-09-21', 'admin'),
(2015, 'Kas Awal', 0, 0, '2016-12-07', 'admin'),
(2015, 'R1', 0, 10000, '2015-10-24', 'admin'),
(2016, '0003', 123123, 1231, '2016-01-14', 'admin'),
(2016, '01254242', 10000000, 0, '2016-12-21', 'admin'),
(2016, '081544658', 200000, 200000, '2016-03-22', 'admin'),
(2016, '100.112', 0, 0, '2017-03-24', 'admin'),
(2016, '100.113', 888888, 0, '2017-03-17', 'admin'),
(2016, '100.114', 500000, 500000, '2016-12-08', 'admin'),
(2016, '101', 0, 100000, '2016-10-20', 'admin'),
(2016, '103', 1000000, 0, '2016-01-11', 'admin'),
(2016, '107', 2000000, 2000000, '2016-02-10', 'admin'),
(2016, '11001', 2000000, 0, '2016-04-22', 'admin'),
(2016, '111', 0, 0, '2016-10-13', 'admin'),
(2016, '1110111', 23423424, 24242, '2016-06-18', 'admin'),
(2016, '112', 100000, 100000, '2016-08-24', 'admin'),
(2016, '119', 0, 200000, '2016-05-23', 'admin'),
(2016, '1234121', 20000000, 0, '2016-08-08', 'admin'),
(2016, '12345', 1000000, 0, '2016-11-28', 'admin'),
(2016, '123456', 123, 321, '2017-05-22', 'admin'),
(2016, '46', 34534, 345435, '2017-05-26', 'admin'),
(2016, '5001', 0, 0, '2016-04-26', 'admin'),
(2016, '783', 0, 90000000, '2016-04-21', 'admin'),
(2016, '899', 90000000, 0, '2016-04-21', 'admin'),
(2016, 'AK001', 300000, 0, '2016-03-18', 'admin'),
(2016, 'AK098', 5000000, 0, '2016-03-18', 'admin'),
(2016, 'ASDADADADA', 0, 0, '2016-01-06', 'admin'),
(2016, 'Kas Awal', 5000000, 10000, '2016-08-27', 'admin'),
(2017, '002', 700000, 40000, '2017-06-20', 'admin'),
(2017, '009', 2000000, 900000, '2017-06-12', 'admin'),
(2017, '100', 435345, 435435345, '2017-05-26', 'admin'),
(2017, '100.110', 1000000, 0, '2017-04-01', 'admin'),
(2017, '100.110.11', 100000000, 0, '2017-02-05', 'admin'),
(2017, '100.111', 100000000, 100000000, '2017-02-05', 'admin'),
(2017, '1001', 11, 11, '2017-04-26', 'admin'),
(2017, '1111', 52350000, 0, '2017-07-06', 'admin'),
(2017, '1131', 10000000, 0, '2017-07-06', 'admin'),
(2017, '1211', 41300000, 0, '2017-07-06', 'admin'),
(2017, '1221', 96150000, 0, '2017-07-06', 'admin'),
(2017, '1311', 10000000, 0, '2017-07-06', 'admin'),
(2017, '1411', 1000000000, 0, '2017-07-06', 'admin'),
(2017, '1421', 0, 0, '2017-07-06', 'admin'),
(2017, '1511', 115000000, 0, '2017-07-06', 'admin'),
(2017, '1512', 0, 0, '2017-07-06', 'admin'),
(2017, '1521', 480000000, 0, '2017-07-06', 'admin'),
(2017, '1522', 0, 0, '2017-07-06', 'admin'),
(2017, '2111', 0, 12050000, '2017-07-06', 'admin'),
(2017, '2121', 0, 25000568, '2017-07-06', 'admin'),
(2017, '2131', 0, 0, '2017-07-06', 'admin'),
(2017, '2211', 0, 1363000000, '2017-07-06', 'admin'),
(2017, '2311', 0, 457600000, '2017-07-06', 'admin'),
(2017, '2321', 0, 350000, '2017-07-06', 'admin'),
(2017, '2331', 0, 36000000, '2017-07-06', 'admin'),
(2017, '2411', 20000000, 0, '2017-07-06', 'admin'),
(2017, '2421', 22000000, 0, '2017-07-06', 'admin'),
(2017, '2431', 4000000, 0, '2017-07-06', 'admin'),
(2017, '4,010', 569, 1, '2017-04-26', 'admin'),
(2017, '6969', 5000000, 0, '2017-04-26', 'admin'),
(2017, 'anak 119', 20000000, 0, '2017-03-23', 'admin'),
(2017, 'jkkjkjk', 10000000, 0, '2017-02-07', 'admin'),
(2017, 'Kas Awal', 5000000, 0, '2017-01-20', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` enum('super admin','admin','user') COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `foto` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `level`, `foto`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'super admin', '252.jpg'),
('deddy', 'e10adc3949ba59abbe56e057f20f883e', 'Deddy Rusdiansyah', 'admin', ''),
('danish', '827ccb0eea8a706c4c34a16891f84e7b', 'Danish Putra Pramudya', 'user', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indeks untuk tabel `jurnal_penyesuaian`
--
ALTER TABLE `jurnal_penyesuaian`
  ADD PRIMARY KEY (`no_jurnal`,`no_rek`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no_rek`);

--
-- Indeks untuk tabel `saldo_awal`
--
ALTER TABLE `saldo_awal`
  ADD PRIMARY KEY (`periode`,`no_rek`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
