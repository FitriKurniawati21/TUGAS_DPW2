-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 02:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsdesi`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(26, 6, 'Seni bela diri', 'desi', 'Seni bela diri merupakan satu kesenian yang timbul sebagai satu cara seseorang untuk mempertahankan/membela diri. Seni bela diri telah lama ada dan berkembang dari masa ke masa. Pada dasarnya, manusia mempunyai insting untuk selalu melindungi diri dan hidupnya. Dalam tumbuh atau berkembang, manusia tidak dapat lepas dari kegiatan fisiknya. Hal inilah yang akan memicu aktivitas fisiknya sepanjang waktu. Pada zaman kuno, tepatnya sebelum adanya persenjataan modern, manusia tidak memikirkan cara lain untuk mempertahankan dirinya selain dengan tangan kosong. Pada saat itu, kemampuan bertarung dengan tangan kosong dikembangkan sebagai cara untuk menyerang dan bertahan, kemudian digunakan untuk meningkatkan kemampuan fisik/badan seseorang. Meskipun begitu, pada zaman-zaman selanjutnya, persenjataan mulai dikenal dan dijadikan sebagai alat untuk mempertahankan diri.\r\n\r\nDapat dikatakan bahwa seni bela diri tersebar di seluruh penjuru dunia ini dan hampir setiap negara mempunyai seni bela diri yang berkembang di daerah masing-masing maupun merupakan sebuah serapan dari seni bela diri lain yang berkembang di daerah asalnya. Sebagai contoh, seni silat adalah seni bela diri yang berkembang di negara ASEAN dan terdapat di Malaysia, Indonesia, Thailand, dan Brunei.', '2021-12-19 06:03:09', '2021-12-19 06:03:09'),
(28, 7, 'Shorinji Kempo', 'dewi', 'Shorinji Kempo (少林寺拳法) adalah salah satu dari seni bela diri yang berasal dari Jepang. Di Indonesia biasa disebut dengan Kempo saja. Shorinji Kempo diciptakan oleh Doshin So[1] (宗 道臣) pada tahun 1947 sebagai sistem pelatihan dan pengembangan diri (行: gyo atau disiplin dalam bahasa jepang).[2] Kata Shorinji Kempo sendiri berasal dari kata sho = kecil, rin = hutan, ji = kuil, ken = kepalan tangan/tinju, po = metoda.[3] Kata Shorinji merujuk pada kuil Shaolin di Tiongkok (yang bernama dengan huruf Kanji yang sama 少林寺 namun dilafalkan sebagai Shaolinsi dalam bahasa Tionghoa). Shorinji Kempo secara umum dipandang sebagai versi modifikasi dari seni bela diri Shaolinsi Kung Fu.', '2021-12-19 06:29:03', '2021-12-19 06:29:03'),
(29, 7, 'Wing Tsun', 'dewi', 'Wing Tsun adalah sejenis seni bela diri yang merupakan salah satu cabang kung fu yang dikembangkan oleh Guru Ip Man. bela diri ini merupakan akar dari wushu.namun Yip Man mendapat ajaran lain saat ia kuliah di hongkong yang menyimpang dari ajaran guru aslinya. Bela diri ini turut menjadi populer karena juga dipelajari aktor bela diri terkenal, Bruce Lee.', '2021-12-19 06:30:34', '2021-12-19 06:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(27, 'keren', 'desi', '2021-12-19 06:21:50', '2021-12-19 06:21:50'),
(28, 'kerennn', 'dewi', '2021-12-19 06:29:23', '2021-12-19 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'desi', 'desi@gmail.com', 'desi', '$2y$10$QFQMl8wzu538S2CuqDYOneKARAWcXGWvJM4yVSn3bmn.B0fqaY86m', NULL, '2021-12-19 06:01:45', '2021-12-19 06:01:45'),
(7, 'dewi', 'dewi@gmail.com', 'dewi', '$2y$10$2g01.jTQAfmJCNsT7B3ScO3Nx6MwlA.hdJc7IvsHvuvalMiZp1Tvy', NULL, '2021-12-19 06:28:18', '2021-12-19 06:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 3, '089689203086', '2021-11-13 22:47:36', '2021-11-13 22:47:36'),
(2, 4, '089689203086', '2021-11-15 05:38:12', '2021-11-15 05:38:12'),
(4, 6, NULL, '2021-11-16 23:42:47', '2021-11-16 23:42:47'),
(5, 7, '089689203086', '2021-11-16 23:44:43', '2021-11-16 23:44:43'),
(6, 5, '089689203086', '2021-11-18 00:41:24', '2021-11-18 00:41:24'),
(7, 6, NULL, '2021-12-19 06:01:45', '2021-12-19 06:01:45'),
(8, 7, NULL, '2021-12-19 06:28:18', '2021-12-19 06:28:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
