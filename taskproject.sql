-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item`) VALUES
(1, 'Apple Watch'),
(2, 'Samsung TV'),
(3, 'Nike Shoes'),
(4, 'Adidas Jacket'),
(5, 'Sony Headphones'),
(6, 'Dell Laptop'),
(7, 'HP Printer'),
(8, 'Canon Camera'),
(9, 'Fujifilm Lens'),
(10, 'Microsoft Xbox'),
(11, 'PlayStation Console'),
(12, 'Nintendo Switch'),
(13, 'Google Pixel'),
(14, 'OnePlus Phone'),
(15, 'Amazon Echo'),
(16, 'Facebook Portal'),
(17, 'Apple AirPods'),
(18, 'Samsung Galaxy'),
(19, 'Huawei Mate'),
(20, 'Xiaomi Redmi'),
(21, 'Oppo Reno'),
(22, 'Vivo V20'),
(23, 'LG G8'),
(24, 'Motorola One'),
(25, 'Asus Zenfone'),
(26, 'HTC U12'),
(27, 'Sony Xperia'),
(28, 'Nokia 8'),
(29, 'BlackBerry Key'),
(30, 'Google Home'),
(31, 'Amazon Fire'),
(32, 'Microsoft Surface'),
(33, 'Dell Inspiron'),
(34, 'HP Envy'),
(35, 'Lenovo ThinkPad'),
(36, 'Asus ROG'),
(37, 'Acer Predator'),
(38, 'MSI GS65'),
(39, 'Razer Blade'),
(40, 'Apple MacBook'),
(41, 'Dell XPS'),
(42, 'HP Spectre'),
(43, 'Lenovo Yoga'),
(44, 'Asus ZenBook'),
(45, 'Acer Aspire'),
(46, 'Microsoft Lumia'),
(47, 'Nokia Lumia'),
(48, 'Samsung Galaxy'),
(49, 'Google somethig'),
(50, 'The last record with longer text');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`) VALUES
(1, 'Ali Khan', 'ali.khan@example.com'),
(2, 'Aisha Malik', 'aisha.malik@example.com'),
(3, 'Bilal Ahmed', 'bilal.ahmed@example.com'),
(4, 'Fatima Noor', 'fatima.noor@example.com'),
(5, 'Hassan Raza', 'hassan.raza@example.com'),
(6, 'Zainab Shah', 'zainab.shah@example.com'),
(7, 'Omar Farooq', 'omar.farooq@example.com'),
(8, 'Sara Iqbal', 'sara.iqbal@example.com'),
(9, 'Usman Javed', 'usman.javed@example.com'),
(10, 'Nida Rehman', 'nida.rehman@example.com'),
(11, 'Kamran Hussain', 'kamran.hussain@example.com'),
(12, 'Sadia Bukhari', 'sadia.bukhari@example.com'),
(13, 'Tariq Mehmood', 'tariq.mehmood@example.com'),
(14, 'Ayesha Khan', 'ayesha.khan@example.com'),
(15, 'Faisal Qureshi', 'faisal.qureshi@example.com'),
(16, 'Hina Saleem', 'hina.saleem@example.com'),
(17, 'Shahid Anwar', 'shahid.anwar@example.com'),
(18, 'Rida Shahzad', 'rida.shahzad@example.com'),
(19, 'Nashit Ali', 'nashit.ali@example.com'),
(20, 'Sana Rafiq', 'sana.rafiq@example.com'),
(21, 'Waqas Niazi', 'waqas.niazi@example.com'),
(22, 'Mehak Aziz', 'mehak.aziz@example.com'),
(23, 'Naveed Akhtar', 'naveed.akhtar@example.com'),
(24, 'Kiran Malik', 'kiran.malik@example.com'),
(25, 'Zeeshan Iqbal', 'zeeshan.iqbal@example.com'),
(26, 'Sadia Khan', 'sadia.khan@example.com'),
(27, 'Aliya Farhan', 'aliya.farhan@example.com'),
(28, 'Bilal Junaid', 'bilal.junaid@example.com'),
(29, 'Rania Ali', 'rania.ali@example.com'),
(30, 'Salman Shah', 'salman.shah@example.com'),
(31, 'Nadia Hussain', 'nadia.hussain@example.com'),
(32, 'Farhan Malik', 'farhan.malik@example.com'),
(33, 'Areeba Khan', 'areeba.khan@example.com'),
(34, 'Yasir Ali', 'yasir.ali@example.com'),
(35, 'Hira Khan', 'hira.khan@example.com'),
(36, 'Shahbaz Ahmed', 'shahbaz.ahmed@example.com'),
(37, 'Anum Raza', 'anum.raza@example.com'),
(38, 'Saad Ahmed', 'saad.ahmed@example.com'),
(39, 'Saira Noor', 'saira.noor@example.com'),
(40, 'Ahsan Malik', 'ahsan.malik@example.com'),
(41, 'Tania Shah', 'tania.shah@example.com'),
(42, 'Owais Khan', 'owais.khan@example.com'),
(43, 'Fiza Ali', 'fiza.ali@example.com'),
(44, 'Nashmia Rehman', 'nashmia.rehman@example.com'),
(45, 'Sufyan Javed', 'sufyan.javed@example.com'),
(46, 'Iqra Ali', 'iqra.ali@example.com'),
(47, 'Umair Farooq', 'umair.farooq@example.com'),
(48, 'Nadia Bukhari', 'nadia.bukhari@example.com'),
(49, 'Ahsan Iqbal', 'ahsan.iqbal@example.com'),
(50, 'Zain Malik', 'zain.malik@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_items`
--

CREATE TABLE `user_items` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_items`
--

INSERT INTO `user_items` (`user_id`, `item_id`) VALUES
(1, 3),
(1, 5),
(1, 8),
(2, 1),
(2, 2),
(2, 4),
(2, 6),
(2, 11),
(3, 2),
(3, 7),
(4, 1),
(4, 9),
(5, 2),
(5, 10),
(6, 3),
(6, 11),
(7, 4),
(7, 12),
(8, 5),
(8, 13),
(9, 6),
(9, 14),
(10, 7),
(10, 15),
(11, 8),
(11, 16),
(12, 9),
(12, 17),
(13, 10),
(13, 18),
(14, 11),
(14, 19),
(15, 12),
(15, 20),
(16, 13),
(16, 21),
(17, 14),
(17, 22),
(18, 15),
(18, 23),
(19, 16),
(19, 24),
(20, 17),
(20, 25),
(21, 18),
(21, 26),
(22, 19),
(22, 27),
(23, 20),
(23, 28),
(24, 21),
(24, 29),
(25, 22),
(25, 30),
(26, 23),
(26, 31),
(27, 24),
(27, 32),
(28, 25),
(28, 33),
(29, 26),
(29, 34),
(30, 27),
(30, 35),
(31, 28),
(31, 36),
(32, 29),
(32, 37),
(33, 30),
(33, 38),
(34, 31),
(34, 39),
(35, 32),
(35, 40),
(36, 33),
(36, 41),
(37, 34),
(37, 42),
(38, 35),
(38, 43),
(39, 36),
(39, 44),
(40, 37),
(40, 45),
(41, 38),
(41, 46),
(42, 39),
(42, 47),
(43, 40),
(43, 48),
(44, 41),
(44, 49),
(45, 42),
(45, 43),
(46, 44),
(46, 45),
(47, 46),
(47, 47),
(48, 48),
(48, 49),
(49, 1),
(49, 2),
(50, 3),
(50, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_items`
--
ALTER TABLE `user_items`
  ADD PRIMARY KEY (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_items`
--
ALTER TABLE `user_items`
  ADD CONSTRAINT `user_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
