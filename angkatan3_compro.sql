-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 09:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkatan3_compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_profile`
--

CREATE TABLE `category_profile` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_profile`
--

INSERT INTO `category_profile` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Latar Belakang', '2024-10-25 07:38:50', '2024-10-25 07:38:50'),
(2, 'Visi dan Misi', '2024-10-25 07:38:50', '2024-10-25 07:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `website_link` varchar(255) NOT NULL,
  `website_phone` varchar(255) NOT NULL,
  `website_email` varchar(255) NOT NULL,
  `website_address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `website_name`, `website_link`, `website_phone`, `website_email`, `website_address`, `logo`) VALUES
(1, 'Aselole', 'http://aselole.com', '1234567890', 'admin@aselole.com', 'Jalan Jalan aja dulu', 'fbe7eb7e8022d73a6739026a7d448926.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `instructor_major` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `instructor_name`, `instructor_major`, `photo`, `facebook_link`, `instagram_link`, `twitter_link`, `created_at`, `updated_at`) VALUES
(2, 'Kakek Sugiono', 'Senam Pinggul', 'kakekSugiono.jpeg', NULL, NULL, NULL, '2024-10-25 04:05:34', '2024-10-25 04:35:07'),
(3, 'Abang Jordi', 'Kimia Forensik', 'bangJordi.jpg', NULL, NULL, NULL, '2024-10-25 04:09:49', '2024-10-25 04:09:49'),
(4, 'Joni Dosa', 'Astronot Black Hole', 'joniDosa.jpg', NULL, NULL, NULL, '2024-10-25 04:10:33', '2024-10-25 04:10:33'),
(5, 'Bang Ganteng', 'Musik Koplo', 'bangGanteng.jpeg', NULL, NULL, NULL, '2024-10-25 06:49:00', '2024-10-25 06:49:00'),
(6, 'Orang Lebanon', 'Fisika Dasar', 'mbakLebanon.jpeg', NULL, NULL, NULL, '2024-10-25 07:23:34', '2024-10-25 07:23:34'),
(7, 'Horang Kaya', 'Money Management', 'horangKaya.jpg', NULL, NULL, NULL, '2024-10-25 07:24:37', '2024-10-25 07:24:37'),
(8, 'Pake Item Immortal Enam', 'Tata Cara Abadi', 'itemImmortalML.jpg', NULL, NULL, NULL, '2024-10-25 07:36:28', '2024-10-25 07:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_img`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345678', '', '2024-10-23 01:09:36', '2024-10-23 01:26:45'),
(5, 'John Doe', 'johndoe@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(6, 'Jane Smith', 'janesmith@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 04:15:30'),
(7, 'Michael Johnson', 'michaeljohnson@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(8, 'Emily Davis', 'emilydavis@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 04:15:25'),
(9, 'William Brown', 'williambrown@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(10, 'Jessica Wilson', 'jessicawilson@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 04:15:33'),
(11, 'Daniel Moore', 'danielmoore@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(12, 'Laura Taylor', 'laurataylor@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(13, 'James Anderson', 'jamesanderson@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(14, 'Sophia Thomas', 'sophiathomas@gmail.com', '12345678', '', '2024-10-23 02:46:18', '2024-10-23 02:46:18'),
(15, 'David Miller', 'davidmiller@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(16, 'Olivia Martinez', 'oliviamartinez@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(17, 'Robert Garcia', 'robertgarcia@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(18, 'Sophia Robinson', 'sophiarobinson@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(19, 'Benjamin Lee', 'benjaminlee@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(20, 'Isabella Harris', 'isabellaharris@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(21, 'Matthew Clark', 'matthewclark@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(22, 'Charlotte Lewis', 'charlottelewis@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(23, 'Elijah Walker', 'elijahwalker@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(24, 'Amelia King', 'ameliaking@gmail.com', '12345678', '', '2024-10-23 06:42:40', '2024-10-23 06:42:40'),
(25, 'Bang Ganteng', 'gantengs@gmail.com', '12345678', 'bangGanteng2.jpeg', '2024-10-23 07:25:43', '2024-10-23 07:45:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_profile`
--
ALTER TABLE `category_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_profile`
--
ALTER TABLE `category_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
