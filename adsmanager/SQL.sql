-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 03, 2021 at 08:33 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `adsmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `brand_id`, `created_at`, `updated_at`) VALUES
(3, 'image/banners/1714964267714175.jpeg', 1, NULL, NULL),
(4, 'image/banners/1714964267855553.jpeg', 1, NULL, NULL),
(5, 'image/banners/1714964267887645.jpeg', 1, NULL, NULL),
(6, 'image/banners/1714965361944815.jpeg', 2, NULL, NULL),
(7, 'image/banners/1714965362031559.jpeg', 2, NULL, NULL),
(8, 'image/banners/1715327043466629.jpeg', 3, NULL, NULL),
(9, 'image/banners/1715327043617557.jpeg', 3, NULL, NULL),
(10, 'image/banners/1715341919886952.jpeg', 4, NULL, NULL),
(11, 'image/banners/1715341920123242.jpeg', 4, NULL, NULL),
(14, 'image/banners/1715385584652759.jpeg', 15, NULL, NULL),
(15, 'image/banners/1715385584695245.jpeg', 15, NULL, NULL),
(16, 'image/banners/1715385712501542.jpeg', 18, NULL, NULL),
(17, 'image/banners/1715385712541518.jpeg', 18, NULL, NULL),
(18, 'image/banners/1715385712566986.jpeg', 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `total_budget` double(8,2) NOT NULL,
  `daily_budget` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `from`, `to`, `total_budget`, `daily_budget`, `created_at`, `updated_at`) VALUES
(1, 'AkelloTech', '2021-10-28', '2021-11-10', 20000.00, 2000.00, '2021-10-28 12:08:48', NULL),
(2, 'Technology City', '2021-10-28', '2021-11-08', 280000.00, 2200.00, '2021-10-28 12:10:52', NULL),
(3, 'Test City', '2021-11-02', '2021-11-12', 20000.00, 2000.00, NULL, NULL),
(4, 'Another Test', '2021-11-02', '2021-11-12', 20000.00, 2000.00, '2021-11-02 05:49:15', NULL),
(5, 'Test Two', '2021-11-02', '2021-11-12', 20000.00, 2000.00, '2021-11-02 06:01:26', '2021-11-02 06:01:26'),
(6, 'Test Three', '2021-11-02', '2021-11-12', 10000.00, 1000.00, '2021-11-02 06:03:52', '2021-11-02 06:03:52'),
(7, 'Test Akello', '2021-11-02', '2021-11-12', 10000.00, 1000.00, '2021-11-02 06:06:20', '2021-11-02 06:06:20'),
(8, 'Test Dalton', '2021-11-02', '2021-11-12', 10000.00, 1000.00, '2021-11-02 06:10:07', '2021-11-02 06:10:07'),
(9, 'Test Nzioki', '2021-11-02', '2021-11-12', 20000.00, 2000.00, '2021-11-02 06:12:11', '2021-11-02 06:12:11'),
(10, 'Evance Development', '2021-11-02', '2021-11-12', 30000.00, 3000.00, '2021-11-02 06:15:14', '2021-11-02 06:15:14'),
(11, 'Development Test', '2021-11-02', '2021-11-12', 50000.00, 5000.00, '2021-11-02 06:19:16', '2021-11-02 06:19:16'),
(12, 'Another Dev Advert', '2021-11-02', '2021-11-12', 10000.00, 1000.00, '2021-11-02 06:20:36', '2021-11-02 06:20:36'),
(13, 'Final Advert', '2021-11-02', '2021-11-12', 30000.00, 3000.00, '2021-11-02 06:22:53', '2021-11-02 06:22:53'),
(14, 'Sportpesa', '2021-11-02', '2021-11-12', 20000.00, 2000.00, '2021-11-02 06:30:53', '2021-11-02 06:30:53'),
(15, 'Equity Bank', '2021-11-02', '2021-12-02', 200000.00, 20000.00, '2021-11-02 06:32:54', '2021-11-02 06:32:54'),
(16, 'Betika', '2021-11-02', '2021-11-30', 28000.00, 1200.00, '2021-11-02 06:35:28', '2021-11-02 06:35:28'),
(18, 'Airtel', '2021-11-03', '2021-11-13', 30000.00, 3000.00, '2021-11-03 03:01:21', '2021-11-03 03:01:21'),
(19, 'Telkom', '2021-11-12', '2021-11-12', 20000.00, 2000.00, '2021-11-03 04:36:18', '2021-11-03 04:36:18');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_10_28_134255_create_brands_table', 1),
(12, '2021_10_28_134341_create_multipics_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_id` (`brand_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
