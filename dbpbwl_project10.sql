-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 01:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpbwl_project10`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE `tb_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `mahasiswa_nim` int(7) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `mahasiswa_kelas` varchar(255) NOT NULL,
  `mahasiswa_prodi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`mahasiswa_id`, `mahasiswa_nim`, `mahasiswa_nama`, `mahasiswa_kelas`, `mahasiswa_prodi`, `created_at`, `updated_at`) VALUES
(2, 2203003, 'Aditya Sukma Pratama', 'D3TI2A', 'D3 Teknik Informatika', '2023-12-05 16:37:34', '0000-00-00 00:00:00'),
(4, 2203006, 'Apriliady', 'D3TI2A', 'D3 Teknik Informatika', '2023-12-06 06:29:32', '0000-00-00 00:00:00'),
(5, 2203030, 'Wiranto', 'D3TI2A', 'D3TI', '2023-12-06 06:29:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_posts`
--

CREATE TABLE `tb_posts` (
  `post_id` int(11) NOT NULL,
  `post_id_cat` int(11) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_email`, `user_password`, `user_full_name`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 'Administrator', '2023-11-02 20:40:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`);

--
-- Indexes for table `tb_posts`
--
ALTER TABLE `tb_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_posts`
--
ALTER TABLE `tb_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
