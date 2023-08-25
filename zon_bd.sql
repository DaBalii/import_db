-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 05:48 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zon_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `prenom`, `email`, `email_verified_at`, `tel`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Papadopolos', 'Awesso', 'alexisabilimi1@gmail.com', NULL, '228 98767654', '$2y$10$HqL8/U4ruS6v.r/8v2c.i.L.uMxrp8xrJYLj8Sm39xnAayagZKfiq', NULL, '2023-08-24 09:41:34', '2023-08-24 09:41:34'),
(2, 'Papadopolos', 'Awesso', 'alexisabili1@gmail.com', NULL, '228 98653204', '$2y$10$MvI08VQbKE/cSVKAK0N3S.04hqybU0JlaN3mwzletR0QOYde7m8VS', NULL, '2023-08-24 12:03:22', '2023-08-24 12:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Maison', '2023-08-24 09:32:04', '2023-08-24 09:32:04'),
(2, 'Villa', '2023-08-24 09:32:12', '2023-08-24 09:32:12'),
(3, 'pièce', '2023-08-24 09:32:20', '2023-08-24 09:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `item_code`, `price`, `localisation`, `description`, `bathrooms`, `area`, `model`, `category`, `quartier`, `position`, `path`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', '400000.00', 'Lomé', 'vc et douche interne', 3, 2, 'Maison de luxe', 'Maison', 'Vakpossito', 'LNG1.292124,LAT6.412169', 'images/UJ01ysoNV2xlXN8mzhjpd1AhOfeQrS97xQMxmBAV.jpg', '2023-08-24 09:33:50', '2023-08-24 09:33:50'),
(2, 'ABS123', '500000.00', 'sokodé', 'vc et douche interne', 5, 2, 'Maison de luxe', 'Maison', 'kouma', 'LNG1.214989,LAT6.831755', 'images/zlvTE5PEeqNpbQAjOWYn3bey8xVZxFMX6rncuGsW.jpg', '2023-08-24 09:35:20', '2023-08-24 09:35:20'),
(3, 'AB0123', '600000.00', 'Lomé', 'vc et douche interne', 3, 2, 'Maison de luxe', 'Villa', 'zomayi', 'LNG0.744834,LAT6.802578', 'images/mquK5WctyO4sFKVsNAVcPANLUvIHXqX0vXjogqfd.jpg', '2023-08-24 09:37:08', '2023-08-24 09:37:08'),
(4, 'ABC103', '200000.00', 'Lomé', 'vc et douche externe', 3, 1, 'Maison Coloniale', 'Maison', 'Vakpossito', 'LNG6.12873,LAT1.22154', 'images/fBloRDSqMEkihBtzxwK5W1g7v5wiH3lTi2YG3QEQ.jpg', '2023-08-24 12:17:20', '2023-08-24 12:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_23_144547_create_homes_table', 1),
(6, '2023_08_23_144630_create_categories_table', 1),
(7, '2023_08_23_144656_create_admins_table', 1),
(8, '2023_08_23_144721_create_reservations_table', 1),
(9, '2023_08_23_144750_create_visiters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\admin', 1, 'CLE_SECRETE', 'a9a0b44e1154cf5b79c31b80d5a9fb1e7539430b59650adc9ec2ad372cf1f6ef', '[\"*\"]', NULL, NULL, '2023-08-24 09:41:49', '2023-08-24 09:41:49'),
(2, 'App\\Models\\admin', 2, 'CLE_SECRETE', '24a891904719bba7beb961d7d169916ed8e5c1af90110795d81f413069f68144', '[\"*\"]', NULL, NULL, '2023-08-24 12:05:36', '2023-08-24 12:05:36'),
(3, 'App\\Models\\admin', 1, 'CLE_SECRETE', 'bd4d587c9277823bfe73518911b900d726020cf785410900b3da103226efa25a', '[\"*\"]', NULL, NULL, '2023-08-24 12:18:43', '2023-08-24 12:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_tel` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `date_arr` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `address`, `num_tel`, `duration`, `date_arr`, `created_at`, `updated_at`) VALUES
(1, 'Awesso', 'ert@gmail.com', 98765445, 34, '2029-08-23', '2023-08-24 09:43:37', '2023-08-24 09:43:37'),
(2, 'Awert', 'juoip@gmail.com', 98766432, 43, '2030-08-23', '2023-08-24 09:59:41', '2023-08-24 09:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maison', 'alexisabilimi1@gmail.com', NULL, '$2y$10$nkqdNG6jBLehpDTfiGKmqusQo6ucGj0m7QUsK2wsSsAml5ql/Q9IK', 'Admin', NULL, '2023-08-24 09:31:41', '2023-08-24 09:31:41'),
(2, 'alexis', 'alexisabilimi@gmail.com', NULL, '$2y$10$t9Xrg/ml4T3tLrzL69q.I.UO66cHKajcx6ZkCliYYEDsCnAzrlttC', 'Admin', NULL, '2023-08-24 12:13:52', '2023-08-24 12:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `visiters`
--

CREATE TABLE `visiters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visiters`
--

INSERT INTO `visiters` (`id`, `name`, `date_view`, `email`, `localisation`, `periode`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Jon Doe', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:45:22', '2023-08-24 09:45:22'),
(2, 'Jon Doe', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:45:26', '2023-08-24 09:45:26'),
(3, 'Jon Doe', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:45:38', '2023-08-24 09:45:38'),
(4, 'Jon Doe', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:45:41', '2023-08-24 09:45:41'),
(5, 'Jone', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:45:55', '2023-08-24 09:45:55'),
(6, 'Jone', '21-08-23', 'jhn@gl.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:46:04', '2023-08-24 09:46:04'),
(7, 'Jon Doe', '21-08-23', 'jhn@gmail.com', 'Adresseieu visité', 2, 1234567890, '2023-08-24 09:47:15', '2023-08-24 09:47:15'),
(8, 'errt', '30-08-23', 'alexisx@gmail.com', 'lomé', 98765433, 34, '2023-08-24 09:57:25', '2023-08-24 09:57:25'),
(9, 'erffggg', '29-08-23', 'serxg@gmail.com', 'bafilo', 98765434, 2, '2023-08-24 09:58:33', '2023-08-24 09:58:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_tel_unique` (`tel`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visiters`
--
ALTER TABLE `visiters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visiters`
--
ALTER TABLE `visiters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
