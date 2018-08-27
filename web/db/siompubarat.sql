-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2018 at 08:40 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siompubarat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `status` enum('Aktif','Blokir') COLLATE latin1_general_ci NOT NULL DEFAULT 'Aktif',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `status`, `id_session`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin@gmail.com', '', 'admin', 'Aktif', ''),
(5, 'kepdes', '8556db435ca001dc364d41a069667fad', 'Kepala Desa', '', '', 'kepdes', 'Aktif', '');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `judul_seo` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_post` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `judul_seo`, `deskripsi`, `gambar`, `tgl_post`, `tgl_update`, `keyword`, `description`) VALUES
(5, 'Berita Terbaru 4', 'berita-terbaru-4', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-4-52.png', '2018-05-23 10:43:05', '2018-05-23 10:43:05', 'berita terbaru', 'berita terbaru'),
(6, 'Berita Terbaru 5', 'berita-terbaru-5', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-5-43.png', '2018-05-23 10:52:45', '2018-05-23 10:53:04', '', ''),
(7, 'Berita Terbaru 6', 'berita-terbaru-6', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'berita-terbaru-6-24.png', '2018-05-23 10:53:19', '2018-05-23 10:53:19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(5) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `judul_seo` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `sejarah` text NOT NULL,
  `tgl_post` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `jml_penduduk` varchar(100) NOT NULL,
  `jml_kematian` varchar(100) NOT NULL,
  `jml_lahir` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `judul`, `judul_seo`, `deskripsi`, `sejarah`, `tgl_post`, `tgl_update`, `keyword`, `description`, `gambar`, `jml_penduduk`, `jml_kematian`, `jml_lahir`, `foto`) VALUES
(1, 'Desa 1', 'desa-1', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:26', '2018-07-21 07:40:58', '', '', 'desa-1-17.jpeg', '500 Orang', '8 Orang', '10 Orang', ''),
(2, 'Desa 2', 'desa-2', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align:justify\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:39', '2018-07-21 07:41:24', '', '', 'desa-2-74.jpeg', '', '', '', ''),
(3, 'Desa 3', 'desa-3', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align: justify;\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:02:54', '2018-07-21 07:35:16', '', '', '', '', '', '', ''),
(4, 'Desa 4', 'desa-4', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', '<p style=\"text-align: justify;\">ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;ini adalah sejarah dan masih dalam penginputan data&nbsp;</p>\r\n', '2018-05-24 13:03:07', '2018-07-21 07:35:05', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dusun`
--

CREATE TABLE `dusun` (
  `id_dusun` int(11) NOT NULL,
  `nama_dusun` varchar(50) DEFAULT NULL,
  `id_desa` int(11) DEFAULT NULL,
  `jumlah_rt` int(11) DEFAULT NULL,
  `jumlah_rw` int(11) DEFAULT NULL,
  `jml_penduduk` varchar(20) NOT NULL,
  `jml_lahir` varchar(20) NOT NULL,
  `jml_kematian` varchar(20) NOT NULL,
  `jml_mutasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusun`
--

INSERT INTO `dusun` (`id_dusun`, `nama_dusun`, `id_desa`, `jumlah_rt`, `jumlah_rw`, `jml_penduduk`, `jml_lahir`, `jml_kematian`, `jml_mutasi`) VALUES
(1, 'lalole', 1, 2, 2, '100', '20', '5', '2'),
(7, 'adad', 1, 1213, 1312, '', '', '', ''),
(10, 'Kalasan', 4, 10, 14, '', '', '', ''),
(11, 'Buru', 4, 12, 15, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `gambar` varchar(180) NOT NULL,
  `tgl_post` datetime NOT NULL,
  `seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `gambar`, `tgl_post`, `seo`) VALUES
(1, 'galeri 1', 'galeri-1-49', '2018-05-23 14:39:30', 'galeri-1'),
(2, 'galeri 2', 'galeri-2-92', '2018-05-23 14:40:30', 'galeri-2'),
(3, 'galeri 3', 'galeri-3-86', '2018-05-23 14:40:39', 'galeri-3'),
(4, 'galeri 4', 'galeri-4-13', '2018-05-29 12:04:01', 'galeri-4');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(50) DEFAULT NULL,
  `visi_misi` text,
  `sejarah` text,
  `total_penduduk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `visi_misi`, `sejarah`, `total_penduduk`) VALUES
(2, 'Siompu', 'Tidak ada', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(3, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(4, 'Siompu TImur', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(5, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(6, 'Siompu Barat', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000),
(7, 'Siompu TImur', 'Mangan telo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 21000);

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(50) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `id_dusun`, `tanggal_kematian`, `nik`, `keterangan`) VALUES
(2, 10, '2018-07-24', '7404265205630001', 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `kepdes`
--

CREATE TABLE `kepdes` (
  `id_kepdes` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kepdes`
--

INSERT INTO `kepdes` (`id_kepdes`, `id_desa`, `gambar`) VALUES
(4, 1, '92.png'),
(5, 1, '34.png');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Baru','Dibaca') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masukkan`
--

CREATE TABLE `masukkan` (
  `id_masukkan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukkan`
--

INSERT INTO `masukkan` (`id_masukkan`, `nama`, `email`, `subjek`, `pesan`) VALUES
(1, 'Siti Nurhalija', 'siti@gmail.com', 'Warna Website ', 'warna website kurang menarik sebaiknya diganti warna hijau'),
(2, 'Riki', 'riki@gmail.com', 'Logo website ', 'Logo website sebaiknya diganti , warna kuning terlalu cerah');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nama_seo` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `hapus` enum('Yes','No') NOT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images') NOT NULL,
  `tgl_update` datetime NOT NULL,
  `tampil` enum('Ya','Tidak') NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `no_urut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `hapus`, `jenis_modul`, `tgl_update`, `tampil`, `status`, `no_urut`) VALUES
(0, 'Nama Web', 'nama-web', '', 'panel', 'No', '', '2017-11-01 02:22:09', 'Tidak', 'On', 0),
(1, 'Alamat', 'alamat', '', '<p>Jl. Mondorakan no. 83 Kotagede Yogyakarta</p>\r\n', 'No', 'Textarea', '2018-02-22 21:41:36', 'Ya', 'On', 4),
(2, 'Home Footer 2', 'home-footer-2', '', '<p>Exclusive design, compact spatial, prestigious location, limited units, facilities, valuable investment with reasonable price. Find on OUR PROJECT In Yogyakarta..... <a class=\"g-transparent-a b3link\" href=\"project\" id=\"StBttn0link\" target=\"_self\"> </a>VIEW MORE<a class=\"g-transparent-a b3link\" href=\"project\" id=\"StBttn0link\" target=\"_self\"> </a></p>\r\n', 'No', 'Textarea', '2017-12-18 04:20:01', 'Tidak', 'Off', 0),
(8, 'No Telpon', 'no-telpon', '', '0813-7781-466 / 0818-0496-8908', 'No', 'Text', '2018-02-22 21:47:03', 'Ya', 'On', 5),
(9, 'Email', 'email', '', '', 'No', 'Text', '2018-02-22 11:54:21', 'Tidak', 'On', 6),
(10, 'Email 2', 'email', '', 'mail@gmail.com', 'No', '', '2017-10-18 22:59:49', 'Tidak', 'Off', 0),
(11, 'Maps', 'our-maps', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15810.750154014973!2d110.3630825!3d-7.822859!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x963b0545677bbbaf!2sJogja+Regale+Cake+Thiwul+Kekinian!5e0!3m2!1sen!2sid!4v1513851453113\" width=\"100%\" height=\"215\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'No', 'Text', '2017-09-21 12:30:05', 'Tidak', 'On', 7),
(12, 'No WA', 'no-wa', '', '+6285292315758', 'No', 'Text', '2018-01-26 12:42:12', 'Tidak', 'On', 6),
(13, 'No BBM', '', '', '', 'No', 'Text', '2017-06-12 02:14:28', 'Tidak', 'Off', 0),
(15, 'Fanspage Facebook', 'fanspage-facebook', '', 'https://www.facebook.com/gishanfloristklaten', 'No', 'Text', '2018-02-22 11:54:40', 'Tidak', 'On', 8),
(16, 'Twitter Link', 'twitter-link', '', '', 'No', 'Text', '2017-09-17 16:09:16', 'Tidak', 'Off', 0),
(17, 'Instagram Link', 'instagram-link', '', 'https://www.instagram.com/', 'No', '', '2017-10-14 00:08:16', 'Tidak', 'On', 3),
(18, 'Visitor Embed', 'visitor-embed', '', '21232f297a57a5a743894a0e4a801fc3-18', 'No', '', '2017-09-17 13:29:44', 'Tidak', 'Off', 0),
(19, 'Login', 'visitor-counter', '', '<b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-09-22 23:52:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-09-23 00:14:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-10 23:14:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-11 02:49:26 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 14:33:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 18:03:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 18:19:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 20:51:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-12 21:44:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 00:03:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 02:07:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 04:31:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-14 07:09:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-15 09:37:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-15 09:39:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-17 06:25:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-17 19:08:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-18 22:55:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 01:22:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 01:23:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 02:51:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 03:09:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 03:49:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-25 09:28:56 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 01:01:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 02:00:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 03:15:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 03:25:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 06:06:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 08:08:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:35:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:40:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 09:47:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 10:41:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 10:57:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-26 11:08:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-27 07:39:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-27 17:28:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-28 23:07:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 02:00:50 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 04:15:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 05:14:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 05:22:07 | User +Admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 11:06:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 12:59:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 19:43:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-29 21:08:49 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-30 07:13:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 18:29:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 19:26:50 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 21:09:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-10-31 22:46:04 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 02:00:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 02:33:12 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 13:05:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 18:12:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 19:24:44 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 20:21:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-01 20:21:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:09:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:25:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:27:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:30:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:32:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:42:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-14 14:49:00 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 07:50:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 12:39:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-18 19:53:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 16:29:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 16:42:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-19 17:03:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:37:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:47:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 21:59:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 22:01:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 22:25:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 23:49:24 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-21 23:54:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 00:27:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 01:07:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 02:09:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-22 19:35:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-23 17:12:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:39:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:39:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:40:22 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:42:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:43:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:44:28 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:52:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 17:56:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-11-30 18:04:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-04 20:07:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-04 20:09:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 00:32:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 02:43:44 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:25:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:50:49 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:51:07 | User +fauzi+ | Password +fauzi+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 20:51:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 22:17:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 22:18:18 | User +Admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-05 23:41:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 10:03:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 10:35:09 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 18:48:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 19:37:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 21:06:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-06 23:12:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-07 01:23:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-07 01:51:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:04:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:11:46 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:13:12 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:32:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:38:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 00:42:07 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 01:26:10 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-12 01:46:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-13 02:51:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 03:08:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 04:19:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-18 04:37:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 22:12:36 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 23:11:13 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-19 23:44:39 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-20 00:00:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 18:24:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:12:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:13:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:14:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-21 19:25:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 04:07:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 04:57:56 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 05:20:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 06:29:28 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 07:13:25 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:13:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:23:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 10:59:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:21:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:38:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 11:41:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-24 12:21:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2017-12-25 11:02:26 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-01-26 09:25:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-01-26 13:21:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-07 21:23:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 10:51:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 13:17:33 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 13:49:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-21 14:34:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 05:19:14 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 05:23:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 06:20:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 10:24:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 18:58:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 20:01:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 21:37:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-22 21:46:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:30:11 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:50:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 07:52:31 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 10:46:15 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-23 11:23:17 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 06:24:58 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 07:50:43 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 14:50:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 15:40:32 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-24 18:31:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 09:45:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 12:21:34 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-25 13:33:29 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-27 09:08:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-02-27 09:17:05 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-06 14:44:53 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-06 14:53:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-07 20:46:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-17 19:29:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-18 10:36:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-04-21 15:18:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 19:56:01 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 20:08:41 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 20:39:35 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:08:38 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:11:23 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:12:59 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-22 21:20:52 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 04:54:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 04:59:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 09:24:47 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 10:39:40 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 10:48:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 13:06:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 14:34:48 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 18:29:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-23 18:37:27 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 04:41:55 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 04:45:03 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 05:02:19 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 05:15:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-24 12:52:30 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-29 11:18:08 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-05-29 11:56:02 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-17 21:10:16 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-19 06:02:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-20 13:11:20 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-21 07:08:21 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-22 13:15:24 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-22 17:04:42 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-24 21:20:57 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 06:58:06 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 14:45:51 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-25 19:47:45 | User +admin+ | Password +admin+ <br><b>Login in &nbsp;&nbsp;&nbsp;: </b>2018-07-26 13:20:26 | User +kepdes+ | Password +kepdes+ <br>', 'No', 'Text', '2017-09-17 13:29:44', 'Tidak', 'Off', 0),
(20, 'FB', 'fb', '', 'https://www.facebook.com/jogjaregale', 'No', '', '2017-09-21 12:30:05', 'Tidak', 'On', 2),
(21, 'Logo WEB', 'logo-web', '', 'logo_new.png', 'No', 'Images', '2017-12-12 01:35:03', 'Tidak', 'On', 1),
(22, 'Logo WEB Small', 'logo-web-small', '', 'logo_new@2x.png', 'No', 'Images', '2017-11-21 22:56:16', 'Tidak', 'Off', 0),
(23, 'Profil', 'profil', '', '<p>tes ya</p>\r\n', '', '', '2018-02-22 06:00:31', '', '', 0),
(77, 'Title', 'title', '', 'desa sipirok', 'No', '', '2017-10-26 06:07:05', 'Tidak', 'Off', 0),
(78, 'Keywords', 'keywords', '', 'desa sipirok', 'No', 'Text', '2017-12-20 00:07:46', 'Tidak', 'Off', 0),
(79, 'Description', 'description', '', 'desa sipirok', 'No', 'Text', '2017-12-20 00:07:55', 'Tidak', 'Off', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(50) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `asal_dusun` varchar(100) NOT NULL,
  `tujuan_mutasi` varchar(20) NOT NULL,
  `tanggal_mutasi` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`id_mutasi`, `id_dusun`, `nik`, `asal_dusun`, `tujuan_mutasi`, `tanggal_mutasi`, `keterangan`) VALUES
(2, 10, '7404261105500001', 'Kalasan', '11', '2018-07-17', 'Karna pekerjaan'),
(3, 1, '7404265205630001', 'lalole', '10', '2018-07-24', 'Pekerjaan yang mengharuskan untuk pindah');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id_page` int(5) NOT NULL,
  `nama` varchar(180) NOT NULL,
  `nama_seo` varchar(200) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `deskripsi2` text,
  `hapus` enum('Yes','No') NOT NULL,
  `jenis_modul` enum('Text','Textarea','Judul & Text','Judul & Textarea','Text Images','Textarea Images','Images','Images SEO') NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `title` varchar(128) NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `description` varchar(156) NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `nama`, `nama_seo`, `gambar`, `deskripsi`, `deskripsi2`, `hapus`, `jenis_modul`, `status`, `title`, `keyword`, `description`, `tgl_update`) VALUES
(0, 'Home', 'home', '', '', '', 'No', 'Textarea Images', 'On', '', '', '', '2018-04-06 15:03:56'),
(1, 'Tentang Kami', 'tentang-kami', '', '<p>Siompu Barat adalah sebuah kecamatan di Kabupaten Buton Selatan, Sulawesi Tenggara, Indonesia.</p>\r\n', '', 'No', 'Textarea Images', 'On', 'tentang-kami', 'tentang-kami', 'tentang-kami', '2018-07-18 07:19:34'),
(2, 'Profil Desa', 'profil-desa', '', '<p>Profil Desa</p>\r\n', '', 'No', 'Textarea Images', 'On', 'profil Desa', 'profil Desa', 'profil Desa', '2018-07-18 07:07:47'),
(3, 'Kotak Saran', 'kotak-saran', '', '<p>Nama&nbsp; : iin Supia&nbsp;&nbsp;</p>\r\n\r\n<p>Email&nbsp; &nbsp;: iinsupia@gmail.com</p>\r\n\r\n<p>Alamat : Buton , Sioumpu Barat</p>\r\n\r\n<p>Telpon&nbsp;: 0817706635</p>\r\n', '', 'No', 'Textarea Images', 'On', 'kotak-saran', 'kotak-saran', 'kotak-saran', '2018-07-19 06:19:26'),
(4, 'Berita terbaru', 'Berita terbaru', '', '<p>berita terbaru</p>\r\n', '', 'No', 'Textarea Images', 'On', 'berita terbaru', 'berita terbaru', 'berita terbaru', '2018-05-23 10:40:10'),
(5, 'Galeri', 'galeri', '', 'galeri desa', 'galeri desa', 'No', 'Text Images', 'On', 'galeri desa', 'galeri desa', 'galeri desa', '2018-02-23 11:24:01'),
(6, 'Video', 'video', '', 'video', 'video', 'No', 'Text Images', 'On', 'video', 'video', 'video', '2018-02-22 05:12:18'),
(10, 'Data Desa', 'data-desa', '', 'data desa', 'data desa', 'No', 'Text Images', 'On', 'data desa', 'data desa', 'data desa', '2018-05-23 00:00:00'),
(11, 'Visi Misi', 'visi-misi', '', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data</p>\r\n', 'tes', 'No', 'Textarea Images', 'On', '', '', '', '2018-07-21 14:31:06'),
(12, 'Pakaian', 'pakaian', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'pakaian', 'No', 'Textarea Images', 'On', 'pakaian', 'pakaian', 'pakaian', '2018-05-24 04:50:34'),
(13, 'Tenunan', 'tenunan', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;</p>\r\n', 'tenunan', 'No', 'Textarea Images', 'On', 'tenunan', 'tenunan', 'tenunan', '2018-05-24 04:50:46'),
(14, 'Adat Istiadat', 'adat-istiadat', '', 'adat istiadat', 'adat istiadat', 'No', 'Textarea Images', 'On', 'adat-istiadat', 'adat-istiadat', 'adat-istiadat', '2018-05-24 00:00:00'),
(15, 'Makanan Khas', 'makanan-khas', '', 'makanan-khas', 'makanan-khas', 'No', 'Textarea Images', 'On', 'makanan-khas', 'makanan-khas', 'makanan-khas', '2018-05-24 00:00:00'),
(16, 'Wisata Pemandian', 'wisata-pemandian', '', 'Wisata Pemandian', 'Wisata Pemandian', 'No', 'Textarea Images', 'On', 'wisata-pemandian', 'wisata-pemandian', 'wisata-pemandian', '2018-05-24 00:00:00'),
(17, 'Wisata Pantai', 'wisata-pantai', '', 'Wisata Pantai', 'Wisata Pantai', 'No', 'Textarea Images', 'On', 'wisata-pantai', 'wisata-pantai', 'wisata-pantai', '2018-05-24 00:00:00'),
(23, 'Sejarah', 'sejarah', '', '<p style=\"text-align: justify;\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data</p>\r\n', 'asd', 'No', 'Textarea Images', 'On', 'sejarah', 'sejarah', 'sejarah', '2018-05-29 11:26:39'),
(24, 'Kependudukan', 'kependudukan', '', '<p style=\"text-align:justify\">Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data&nbsp;Masih dalam penginputan data</p>\r\n', 'kependudukan', 'No', 'Textarea Images', 'On', 'kependudukan', 'kependudukan', 'kependudukan', '2018-07-18 07:06:42'),
(25, 'Potensi Desa', 'potensi-desa', '', 'potensi-desa', 'potensi-desa', 'No', 'Textarea Images', 'On', 'potensi-desa', 'potensi-desa', 'potensi-desa', '2018-07-21 00:00:00'),
(26, 'Wisata', 'wisata', '', 'wisata', NULL, 'No', 'Textarea Images', 'On', 'wisata', 'wisata', 'wisata', '2018-07-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `nama_penduduk` varchar(50) DEFAULT NULL,
  `id_dusun` int(11) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `status_menikah` enum('Y','N') DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `agama` enum('Islam','Kristen','Hindu','Budha','Khatolik') NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `no_hp` varchar(50) NOT NULL,
  `pendidikan_terakhir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nama_penduduk`, `id_dusun`, `no_kk`, `nik`, `alamat`, `tempat_lahir`, `status_menikah`, `pekerjaan`, `agama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `pendidikan_terakhir`) VALUES
(1, 'La Safili', 11, '7404261806080069', '7404261105500001', 'jln.labolo', 'Molona', 'Y', 'Nelayan', 'Islam', '2014-05-11', 'L', '0817705514', 'SD'),
(2, 'Tatik', 10, '7404261806080069', '7404265205630001', 'Jln.labolo', 'Molona', 'N', 'Ibu Rumah Tangga', 'Budha', '2015-05-12', 'P', '0817708849', 'S1'),
(3, 'Sukma', 11, '2012399112313', '1231231231232', 'Buru', 'Yogyakarta', 'Y', 'Guru', 'Budha', '2014-11-11', 'L', '0817783321', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `potensi_desa`
--

CREATE TABLE `potensi_desa` (
  `id_potensi_desa` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `potensidesa` enum('PAKAIAN','TENUNAN','ADAT ISTIADAT','MAKANAN KHAS') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potensi_desa`
--

INSERT INTO `potensi_desa` (`id_potensi_desa`, `nama`, `deskripsi`, `potensidesa`, `gambar`) VALUES
(1, 'Pakaian 1', '<p style=\"text-align: justify;\">tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;</p>\r\n', 'PAKAIAN', ''),
(3, 'Pakaian 2', '<p style=\"text-align: justify;\">tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;</p>\r\n', 'PAKAIAN', ''),
(4, 'Pakaian 3', '<p style=\"text-align:justify\">tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;tes pakaian masih dalam penginputan data&nbsp;</p>\r\n', 'PAKAIAN', ''),
(5, 'Tenunan 1', '<p style=\"text-align:justify\">tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;</p>\r\n', 'TENUNAN', ''),
(6, 'Tenunan 2', '<p style=\"text-align: justify;\">tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;</p>\r\n', 'TENUNAN', ''),
(7, 'Tenunan 3', '<p style=\"text-align: justify;\">tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;tes tenunan masih dalam penginputan data&nbsp;</p>\r\n', 'TENUNAN', ''),
(8, 'Adat Istiadat 1', '<p style=\"text-align: justify;\">tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;</p>\r\n', 'ADAT ISTIADAT', ''),
(9, 'Adat Istiadat 2', '<p style=\"text-align: justify;\">tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;</p>\r\n', 'ADAT ISTIADAT', ''),
(10, 'Adat Istiadat 3', '<p style=\"text-align: justify;\">tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;tes adat istiadat masih dalam penginputan data&nbsp;</p>\r\n', 'ADAT ISTIADAT', ''),
(11, 'Makanan Khas 1', '<p style=\"text-align: justify;\">tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;</p>\r\n', 'MAKANAN KHAS', ''),
(12, 'Makanan Khas 2', '<p style=\"text-align: justify;\">tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;</p>\r\n', 'MAKANAN KHAS', ''),
(13, 'Makanan Khas 3', '<p style=\"text-align: justify;\">tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;tes makanan khas masih dalam penginputan data&nbsp;</p>\r\n', 'MAKANAN KHAS', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(5) NOT NULL,
  `judul` varchar(180) NOT NULL,
  `gambar` varchar(180) NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul`, `gambar`, `tgl_update`) VALUES
(1, 'Slider 1', 'slider-1-4.jpeg', '2018-07-17 21:15:59'),
(2, 'Slider 2', 'slider-2-64.jpeg', '2018-07-18 06:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `sosial`
--

CREATE TABLE `sosial` (
  `id_sosial` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosial`
--

INSERT INTO `sosial` (`id_sosial`, `nama`) VALUES
(1, 'https://id-id.facebook.com/'),
(2, 'https://twitter.com/'),
(3, 'https://www.instagram.com/?hl=id'),
(4, 'https://plus.google.com/discover'),
(5, '(+1) 000 123 456789'),
(6, 'info@example.com'),
(7, 'Buton , Pemerintah Desa Siompu Barat'),
(8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127624.2305618758!2d99.2459714141771!3d1.6028494030079163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x302c245bc766b06b%3A0xd663ee1f0b6d7d85!2sSipirok%2C+Kabupaten+Tapanuli+Selatan%2C+Sumatera+Utara!5e0!3m2!1sid!2sid!4v1527140910118\" ></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL,
  `hits` int(10) NOT NULL,
  `online` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `seo` varchar(200) NOT NULL,
  `video` varchar(250) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `seo`, `video`, `tanggal`) VALUES
(5, 'EFARINA TV - ETAH MELALAK SPESIAL - EKSOTISME SIPIROK BAGIAN DARI TAPANULI SELATAN', 'efarina-tv--etah-melalak-spesial--eksotisme-sipirok-bagian-dari-tapanuli-selatan', 'https://www.youtube.com/watch?v=GSo392bKIDw', '2018-05-23 14:52:21'),
(6, 'KOTA SIPIROK... TAPANULI SELATAN', 'kota-sipirok-tapanuli-selatan', 'https://www.youtube.com/watch?v=eF2icEAgxAM', '2018-05-23 14:53:15'),
(7, 'EKSOTISME SIPIROK BAGIAN DARI TAPANULI SELATAN ', 'eksotisme-sipirok-bagian-dari-tapanuli-selatan-', 'https://www.youtube.com/watch?v=zrAalPTSh_8', '2018-05-23 14:53:46'),
(8, 'Sisi Lain Kota Sipirok', 'sisi-lain-kota-sipirok', 'https://www.youtube.com/watch?v=VT7rPmX2JLo', '2018-05-29 11:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `wisata` enum('PEMANDIAN','PANTAI') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama`, `deskripsi`, `wisata`, `gambar`) VALUES
(1, 'Pemandian 1', '<p style=\"text-align: justify;\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(2, 'Pemandian 2', '<p style=\"text-align:justify\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(3, 'Pemandian 3', '<p style=\"text-align:justify\">tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;tes pemandian masiha dalam penginputan data&nbsp;</p>\r\n', 'PEMANDIAN', ''),
(4, 'Pantai 1', '<p style=\"text-align:justify\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', ''),
(5, 'Pantai 2', '<p style=\"text-align: justify;\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', ''),
(6, 'Pantai 3', '<p style=\"text-align: justify;\">tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;tes pantai masih dalam penginputan data&nbsp;</p>\r\n', 'PANTAI', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id_dusun`),
  ADD KEY `id_desa` (`id_desa`) USING BTREE;

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `kepdes`
--
ALTER TABLE `kepdes`
  ADD PRIMARY KEY (`id_kepdes`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `masukkan`
--
ALTER TABLE `masukkan`
  ADD PRIMARY KEY (`id_masukkan`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD UNIQUE KEY `no_ktp` (`nik`),
  ADD KEY `agama_id` (`agama`),
  ADD KEY `dusun_id` (`id_dusun`);

--
-- Indexes for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  ADD PRIMARY KEY (`id_potensi_desa`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `sosial`
--
ALTER TABLE `sosial`
  ADD PRIMARY KEY (`id_sosial`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id_kematian` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kepdes`
--
ALTER TABLE `kepdes`
  MODIFY `id_kepdes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masukkan`
--
ALTER TABLE `masukkan`
  MODIFY `id_masukkan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  MODIFY `id_potensi_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sosial`
--
ALTER TABLE `sosial`
  MODIFY `id_sosial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
