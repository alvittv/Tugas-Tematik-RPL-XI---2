-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 06:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid-19`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Potensi Tertular Di Luar Rumah', NULL, '2020-04-13 07:24:21', NULL),
(2, 'Potensi Tertular Di Dalam Rumah', NULL, '2020-04-13 07:24:36', NULL),
(3, 'Daya Tahan Tubuh (Imunitas)', NULL, '2020-04-13 07:24:52', NULL),
(4, 'Sed eveniet reprehenderit repellendus.', NULL, '2020-04-13 07:59:04', '2020-04-13 07:59:04'),
(5, 'Unde sit eum.', NULL, '2020-04-13 07:59:07', '2020-04-13 07:59:07');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_12_23_000001_create_permissions_table', 1),
(8, '2019_12_23_000002_create_roles_table', 1),
(9, '2019_12_23_000003_create_users_table', 1),
(10, '2019_12_23_000004_create_categories_table', 1),
(11, '2019_12_23_000005_create_questions_table', 1),
(12, '2019_12_23_000006_create_options_table', 1),
(13, '2019_12_23_000007_create_results_table', 1),
(14, '2019_12_23_000008_create_permission_role_pivot_table', 1),
(15, '2019_12_23_000009_create_role_user_pivot_table', 1),
(16, '2019_12_23_000010_create_question_result_pivot_table', 1),
(17, '2019_12_23_000011_add_relationship_fields_to_questions_table', 1),
(18, '2019_12_23_000012_add_relationship_fields_to_options_table', 1),
(19, '2019_12_23_000013_add_relationship_fields_to_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_text`, `points`, `created_at`, `updated_at`, `deleted_at`, `question_id`) VALUES
(1, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:28:18', NULL, 1),
(2, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:13', NULL, 1),
(3, 'qui', 1, '2020-04-13 07:03:06', '2020-04-13 07:27:49', '2020-04-13 07:27:49', 1),
(4, 'minima', 0, '2020-04-13 07:03:06', '2020-04-13 07:27:49', '2020-04-13 07:27:49', 1),
(5, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:29:02', NULL, 2),
(6, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:58', NULL, 2),
(7, 'aut', 1, '2020-04-13 07:03:06', '2020-04-13 07:28:29', '2020-04-13 07:28:29', 2),
(8, 'distinctio', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:29', '2020-04-13 07:28:29', 2),
(9, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:29:13', NULL, 3),
(10, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:29:20', NULL, 3),
(11, 'consequatur', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:41', '2020-04-13 07:28:41', 3),
(12, 'sit', 1, '2020-04-13 07:03:06', '2020-04-13 07:28:41', '2020-04-13 07:28:41', 3),
(13, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:33:16', NULL, 4),
(14, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:33:24', NULL, 4),
(15, 'quos', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:41', '2020-04-13 07:28:41', 4),
(16, 'corrupti', 0, '2020-04-13 07:03:06', '2020-04-13 07:28:41', '2020-04-13 07:28:41', 4),
(17, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:49:39', NULL, 5),
(18, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:48', NULL, 5),
(19, 'nam', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 5),
(20, 'praesentium', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 5),
(21, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:49:56', NULL, 6),
(22, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:50:04', NULL, 6),
(23, 'consequuntur', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 6),
(24, 'molestiae', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 6),
(25, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:50:19', NULL, 7),
(26, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:50:28', NULL, 7),
(27, 'rerum', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 7),
(28, 'eligendi', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 7),
(29, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:50:34', NULL, 8),
(30, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:50:40', NULL, 8),
(31, 'eius', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 8),
(32, 'ipsa', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 8),
(33, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 07:50:52', NULL, 9),
(34, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 07:51:01', NULL, 9),
(35, 'doloremque', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 9),
(36, 'nostrum', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 9),
(37, 'Tidak', 0, '2020-04-13 07:03:06', '2020-04-13 08:06:11', NULL, 10),
(38, 'Ya', 1, '2020-04-13 07:03:06', '2020-04-13 08:06:03', NULL, 10),
(39, 'quis', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 10),
(40, 'saepe', 0, '2020-04-13 07:03:06', '2020-04-13 07:49:25', '2020-04-13 07:49:25', 10),
(41, 'Ya', 1, '2020-04-13 07:53:25', '2020-04-13 07:53:25', NULL, 11),
(42, 'Tidak', 0, '2020-04-13 07:53:40', '2020-04-13 07:53:40', NULL, 11),
(43, 'Ya', 1, '2020-04-13 07:54:03', '2020-04-13 07:54:03', NULL, 12),
(44, 'Tidak', 0, '2020-04-13 07:54:18', '2020-04-13 07:54:18', NULL, 12),
(45, 'Ya', 1, '2020-04-13 07:54:38', '2020-04-13 07:54:38', NULL, 13),
(46, 'Tidak', 0, '2020-04-13 07:54:51', '2020-04-13 07:54:51', NULL, 13),
(47, 'Ya', 1, '2020-04-13 07:55:06', '2020-04-13 07:55:06', NULL, 14),
(48, 'Tidak', 0, '2020-04-13 07:55:27', '2020-04-13 07:55:27', NULL, 14),
(49, 'Ya', 1, '2020-04-13 07:55:43', '2020-04-13 07:55:43', NULL, 15),
(50, 'Tidak', 0, '2020-04-13 07:55:52', '2020-04-13 07:55:52', NULL, 15),
(51, 'Ya', 1, '2020-04-13 07:56:15', '2020-04-13 07:56:15', NULL, 16),
(52, 'Tidak', 0, '2020-04-13 07:56:27', '2020-04-13 07:56:27', NULL, 16),
(53, 'Ya', 1, '2020-04-13 07:56:43', '2020-04-13 07:56:43', NULL, 17),
(54, 'Tidak', 0, '2020-04-13 07:56:51', '2020-04-13 07:56:51', NULL, 17),
(55, 'Ya', 1, '2020-04-13 07:57:03', '2020-04-13 07:57:03', NULL, 18),
(56, 'Tidak', 0, '2020-04-13 07:57:12', '2020-04-13 07:57:12', NULL, 18),
(57, 'Ya', 1, '2020-04-13 07:57:25', '2020-04-13 07:57:25', NULL, 19),
(58, 'Tidak', 0, '2020-04-13 07:58:08', '2020-04-13 08:01:29', NULL, 19),
(59, 'Ya', 1, '2020-04-13 07:58:22', '2020-04-13 07:58:22', NULL, 20),
(60, 'Tidak', 0, '2020-04-13 07:58:32', '2020-04-13 07:58:32', NULL, 20),
(61, 'Ya', 1, '2020-04-13 07:58:43', '2020-04-13 07:58:43', NULL, 21),
(62, 'Tidak', 0, '2020-04-13 07:58:52', '2020-04-13 07:58:52', NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('laku0505@gmail.com', '$2y$10$Ky9/SSaoT6fd.aPvuXV6HuR2W.kH..sIVby/xonuG9AcbXA6lM0nK', '2020-04-13 07:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'category_create', NULL, NULL, NULL),
(18, 'category_edit', NULL, NULL, NULL),
(19, 'category_show', NULL, NULL, NULL),
(20, 'category_delete', NULL, NULL, NULL),
(21, 'category_access', NULL, NULL, NULL),
(22, 'question_create', NULL, NULL, NULL),
(23, 'question_edit', NULL, NULL, NULL),
(24, 'question_show', NULL, NULL, NULL),
(25, 'question_delete', NULL, NULL, NULL),
(26, 'question_access', NULL, NULL, NULL),
(27, 'option_create', NULL, NULL, NULL),
(28, 'option_edit', NULL, NULL, NULL),
(29, 'option_show', NULL, NULL, NULL),
(30, 'option_delete', NULL, NULL, NULL),
(31, 'option_access', NULL, NULL, NULL),
(32, 'result_create', NULL, NULL, NULL),
(33, 'result_edit', NULL, NULL, NULL),
(34, 'result_show', NULL, NULL, NULL),
(35, 'result_delete', NULL, NULL, NULL),
(36, 'result_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(1, 'Saya Pergi Keluar Rumah', '2020-04-13 07:03:05', '2020-04-13 07:25:30', NULL, 1),
(2, 'Saya menggunakan transportasi umum : online, angkot, bus, taksi, kereta api', '2020-04-13 07:03:05', '2020-04-13 07:26:23', NULL, 1),
(3, 'Saya tidak memakai masker pada saat berkumpul dengan orang lain', '2020-04-13 07:03:05', '2020-04-13 07:26:56', NULL, 1),
(4, 'Saya berjabat tangan dengan orang lain', '2020-04-13 07:03:06', '2020-04-13 07:27:26', NULL, 1),
(5, 'Saya tidak membersihkan tangan dengan hand sanitizer / tissue basah sebelum pegang kemudi mobil/motor.', '2020-04-13 07:03:06', '2020-04-13 07:35:07', NULL, 1),
(6, 'Saya menyentuh benda / uang yang juga disentuh orang lain.', '2020-04-13 07:03:06', '2020-04-13 07:39:07', NULL, 1),
(7, 'Saya tidak menjaga jarak 1,5 meter dengan orang lain ketika : belanja, bekerja, belajar, ibadah', '2020-04-13 07:03:06', '2020-04-13 07:51:40', NULL, 1),
(8, 'Saya makan diluar rumah (warung / restaurant)', '2020-04-13 07:03:06', '2020-04-13 07:40:37', NULL, 1),
(9, 'Saya tidak minum air hangat & cuci tangan dengan sabun ketika sampai ke tujuan', '2020-04-13 07:03:06', '2020-04-13 07:41:31', NULL, 1),
(10, 'Saya berada di wilayah kelurahan tempat pasien tertular.', '2020-04-13 07:03:06', '2020-04-13 07:42:10', NULL, 1),
(11, 'Saya tidak pasang hand sanitizer di depan pintu masuk, untuk membersihkan tangan sebelum pegang gagang(handle) pintu rumah masuk.', '2020-04-13 07:43:07', '2020-04-13 07:43:07', NULL, 2),
(12, 'Saya tidak mencuci tangan dengan sabun setelah tiba di rumah.', '2020-04-13 07:43:29', '2020-04-13 07:43:29', NULL, 2),
(13, 'Saya tidak menyediakan : tissue basah / antiseptic , masker, sabun antiseptic bagi keluarga di rumah.', '2020-04-13 07:44:14', '2020-04-13 07:44:14', NULL, 2),
(14, 'Saya tidak segera merendam baju & celana bekas pakai di luar rumah kedalam air panas/sabun', '2020-04-13 07:45:07', '2020-04-13 07:45:07', NULL, 2),
(15, 'Saya tidak segera mandi & keramas setelah saya tiba di rumah.', '2020-04-13 07:45:56', '2020-04-13 07:45:56', NULL, 2),
(16, 'Saya tidak mensosialisasikan check list penilaian resiko pribadi ini kepada keluarga di rumah.', '2020-04-13 07:46:50', '2020-04-13 07:46:50', NULL, 2),
(17, 'Saya dalam sehari tidak kena cahaya matahari minimal 15 menit', '2020-04-13 07:47:19', '2020-04-13 07:47:19', NULL, 3),
(18, 'Saya tidak jalan kaki / olahraga minimal 30 menit setiap hari', '2020-04-13 07:47:41', '2020-04-13 07:47:41', NULL, 3),
(19, 'Saya jarang minum vitamin C & E, dan kurang tidur', '2020-04-13 07:48:09', '2020-04-13 07:48:09', NULL, 3),
(20, 'Usia saya diatas 60 tahun', '2020-04-13 07:48:25', '2020-04-13 07:48:25', NULL, 3),
(21, 'Saya mempunyai penyakit : jantung/diabetes/gangguan pernafasan kronik', '2020-04-13 07:48:53', '2020-04-13 07:48:53', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question_result`
--

CREATE TABLE `question_result` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_result`
--

INSERT INTO `question_result` (`result_id`, `question_id`, `option_id`, `points`) VALUES
(1, 1, 2, 0),
(1, 2, 6, 0),
(1, 3, 11, 0),
(1, 4, 15, 0),
(1, 5, 20, 0),
(1, 6, 21, 0),
(1, 7, 28, 0),
(1, 8, 29, 1),
(1, 9, 33, 0),
(1, 10, 37, 0),
(2, 1, 1, 1),
(2, 2, 5, 1),
(2, 3, 9, 1),
(2, 4, 14, 0),
(2, 5, 18, 0),
(2, 6, 23, 0),
(2, 7, 25, 0),
(2, 8, 32, 0),
(2, 9, 34, 1),
(2, 10, 38, 1),
(3, 1, 1, 1),
(3, 2, 6, 0),
(3, 3, 9, 1),
(3, 4, 13, 1),
(3, 5, 18, 0),
(3, 6, 21, 1),
(3, 7, 25, 1),
(3, 8, 29, 1),
(3, 9, 34, 0),
(3, 10, 37, 0),
(3, 11, 41, 1),
(3, 12, 43, 1),
(3, 13, 45, 1),
(3, 14, 48, 0),
(3, 15, 49, 1),
(3, 16, 51, 1),
(3, 17, 53, 1),
(3, 18, 55, 1),
(3, 19, 57, 1),
(3, 20, 60, 0),
(3, 21, 62, 0),
(4, 1, 2, 0),
(4, 2, 6, 0),
(4, 3, 10, 0),
(4, 4, 14, 0),
(4, 5, 17, 1),
(4, 6, 21, 1),
(4, 7, 25, 1),
(4, 8, 29, 1),
(4, 9, 34, 0),
(4, 10, 37, 0),
(4, 11, 41, 1),
(4, 12, 43, 1),
(4, 13, 45, 1),
(4, 14, 48, 0),
(4, 15, 49, 1),
(4, 16, 51, 1),
(4, 17, 53, 1),
(4, 18, 55, 1),
(4, 19, 58, 0),
(4, 20, 59, 1),
(4, 21, 61, 1),
(5, 1, 1, 1),
(5, 2, 5, 1),
(5, 3, 9, 1),
(5, 4, 13, 1),
(5, 5, 17, 1),
(5, 6, 22, 0),
(5, 7, 25, 1),
(5, 8, 30, 0),
(5, 9, 34, 0),
(5, 10, 37, 0),
(5, 11, 41, 1),
(5, 12, 43, 1),
(5, 13, 45, 1),
(5, 14, 47, 1),
(5, 15, 49, 1),
(5, 16, 52, 0),
(5, 17, 54, 0),
(5, 18, 55, 1),
(5, 19, 58, 0),
(5, 20, 59, 1),
(5, 21, 61, 1),
(6, 1, 2, 0),
(6, 2, 5, 1),
(6, 3, 10, 0),
(6, 4, 13, 1),
(6, 5, 18, 0),
(6, 6, 22, 0),
(6, 7, 26, 0),
(6, 8, 30, 0),
(6, 9, 34, 0),
(6, 10, 37, 0),
(6, 11, 41, 1),
(6, 12, 44, 0),
(6, 13, 46, 0),
(6, 14, 48, 0),
(6, 15, 49, 1),
(6, 16, 51, 1),
(6, 17, 54, 0),
(6, 18, 56, 0),
(6, 19, 58, 0),
(6, 20, 60, 0),
(6, 21, 61, 1),
(7, 1, 2, 0),
(7, 2, 6, 0),
(7, 3, 10, 0),
(7, 4, 14, 0),
(7, 5, 18, 0),
(7, 6, 22, 0),
(7, 7, 26, 0),
(7, 8, 30, 0),
(7, 9, 34, 0),
(7, 10, 37, 0),
(7, 11, 42, 0),
(7, 12, 44, 0),
(7, 13, 46, 0),
(7, 14, 48, 0),
(7, 15, 50, 0),
(7, 16, 52, 0),
(7, 17, 54, 0),
(7, 18, 56, 0),
(7, 19, 58, 0),
(7, 20, 60, 0),
(7, 21, 62, 0),
(8, 1, 1, 1),
(8, 2, 5, 1),
(8, 3, 10, 0),
(8, 4, 13, 1),
(8, 5, 17, 1),
(8, 6, 21, 1),
(8, 7, 25, 1),
(8, 8, 30, 0),
(8, 9, 33, 1),
(8, 10, 37, 0),
(8, 11, 41, 1),
(8, 12, 44, 0),
(8, 13, 46, 0),
(8, 14, 47, 1),
(8, 15, 49, 1),
(8, 16, 52, 0),
(8, 17, 54, 0),
(8, 18, 55, 1),
(8, 19, 57, 1),
(8, 20, 59, 1),
(8, 21, 61, 1),
(9, 1, 2, 0),
(9, 2, 6, 0),
(9, 3, 10, 0),
(9, 4, 13, 1),
(9, 5, 17, 1),
(9, 6, 22, 0),
(9, 7, 26, 0),
(9, 8, 30, 0),
(9, 9, 34, 0),
(9, 10, 37, 0),
(9, 11, 41, 1),
(9, 12, 44, 0),
(9, 13, 46, 0),
(9, 14, 48, 0),
(9, 15, 50, 0),
(9, 16, 51, 1),
(9, 17, 54, 0),
(9, 18, 55, 1),
(9, 19, 58, 0),
(9, 20, 60, 0),
(9, 21, 61, 1),
(10, 1, 2, 0),
(10, 2, 5, 1),
(10, 3, 9, 1),
(10, 4, 13, 1),
(10, 5, 17, 1),
(10, 6, 21, 1),
(10, 7, 25, 1),
(10, 8, 29, 1),
(10, 9, 33, 1),
(10, 10, 37, 0),
(10, 11, 42, 0),
(10, 12, 43, 1),
(10, 13, 46, 0),
(10, 14, 47, 1),
(10, 15, 50, 0),
(10, 16, 52, 0),
(10, 17, 54, 0),
(10, 18, 55, 1),
(10, 19, 58, 0),
(10, 20, 60, 0),
(10, 21, 62, 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `total_points`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 1, '2020-04-13 07:04:08', '2020-04-13 07:04:08', NULL, 2),
(2, 5, '2020-04-13 07:30:01', '2020-04-13 07:30:01', NULL, 2),
(3, 14, '2020-04-13 08:06:50', '2020-04-13 08:06:50', NULL, 2),
(4, 13, '2020-04-13 08:14:31', '2020-04-13 08:14:31', NULL, 2),
(5, 14, '2020-04-13 08:19:05', '2020-04-13 08:19:05', NULL, 2),
(6, 6, '2020-04-13 08:20:33', '2020-04-13 08:20:33', NULL, 2),
(7, 0, '2020-04-13 08:30:30', '2020-04-13 08:30:30', NULL, 2),
(8, 14, '2020-04-13 08:31:23', '2020-04-13 08:31:23', NULL, 2),
(9, 6, '2020-04-13 09:01:03', '2020-04-13 09:01:03', NULL, 2),
(10, 11, '2020-04-13 09:08:04', '2020-04-13 09:08:04', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$wNIDxA5tfzPm6XEsjrt0IOS9dbUrhjZSigPvzruq2Rz0BEqudStyK', NULL, NULL, NULL, NULL),
(2, 'Iqbal Fadilah', 'laku0505@gmail.com', NULL, '$2y$10$x3gmPU//mMIZm.baZvFiEuc2jXbI0fuB5jGqm3N7XOxPt7UyCp.EC', NULL, '2020-04-13 07:03:47', '2020-04-13 07:03:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_fk_773758` (`question_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_773672` (`role_id`),
  ADD KEY `permission_id_fk_773672` (`permission_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_fk_773713` (`category_id`);

--
-- Indexes for table `question_result`
--
ALTER TABLE `question_result`
  ADD KEY `result_id_fk_773767` (`result_id`),
  ADD KEY `question_id_fk_773767` (`question_id`),
  ADD KEY `option_id_fk_773767` (`option_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_773765` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_773681` (`user_id`),
  ADD KEY `role_id_fk_773681` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `question_fk_773758` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_773672` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_773672` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `category_fk_773713` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `option_id_fk_773767` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_id_fk_773767` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `result_id_fk_773767` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `user_fk_773765` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_773681` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_773681` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
