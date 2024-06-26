-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 03:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\Contact', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 20:07:31', '2024-06-23 20:07:31'),
(2, 'default', 'created', 'App\\Models\\Contact', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 21:09:52', '2024-06-23 21:09:52'),
(3, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 22:20:54', '2024-06-23 22:20:54'),
(4, 'default', 'created', 'App\\Models\\Contact', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 22:20:59', '2024-06-23 22:20:59'),
(5, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 23:32:54', '2024-06-23 23:32:54'),
(6, 'default', 'created', 'App\\Models\\Contact', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 23:33:01', '2024-06-23 23:33:01'),
(7, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 4, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 23:48:42', '2024-06-23 23:48:42'),
(8, 'default', 'created', 'App\\Models\\Contact', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"hhh\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-23 23:48:49', '2024-06-23 23:48:49'),
(9, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 3, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:04:22', '2024-06-24 00:04:22'),
(10, 'default', 'created', 'App\\Models\\Contact', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:04:27', '2024-06-24 00:04:27'),
(11, 'default', 'created', 'App\\Models\\Contact', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:19:35', '2024-06-24 00:19:35'),
(12, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 5, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"hhh\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:19:39', '2024-06-24 00:19:39'),
(13, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:19:47', '2024-06-24 00:19:47'),
(14, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:54:45', '2024-06-24 00:54:45'),
(15, 'default', 'updated', 'App\\Models\\Contact', 'updated', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 00:57:38', '2024-06-24 00:57:38'),
(16, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 01:08:40', '2024-06-24 01:08:40'),
(17, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 01:18:05', '2024-06-24 01:18:05'),
(18, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:08:07', '2024-06-24 02:08:07'),
(19, 'default', 'created', 'App\\Models\\Contact', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:13:24', '2024-06-24 02:13:24'),
(20, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 8, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:13:30', '2024-06-24 02:13:30'),
(21, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:17:33', '2024-06-24 02:17:33'),
(22, 'default', 'updated', 'App\\Models\\Contact', 'updated', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:19:58', '2024-06-24 02:19:58'),
(23, 'default', 'restored', 'App\\Models\\Contact', 'restored', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:19:59', '2024-06-24 02:19:59'),
(24, 'default', 'updated', 'App\\Models\\Contact', 'updated', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:20:25', '2024-06-24 02:20:25'),
(25, 'default', 'restored', 'App\\Models\\Contact', 'restored', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:20:25', '2024-06-24 02:20:25'),
(26, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:55:40', '2024-06-24 02:55:40'),
(27, 'default', 'restored', 'App\\Models\\Contact', 'restored', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 02:55:40', '2024-06-24 02:55:40'),
(28, 'default', 'updated', 'App\\Models\\Contact', 'updated', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGsss\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 05:53:01', '2024-06-24 05:53:01'),
(29, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 05:53:07', '2024-06-24 05:53:07'),
(30, 'default', 'updated', 'App\\Models\\Contact', 'updated', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 06:52:18', '2024-06-24 06:52:18'),
(31, 'default', 'restored', 'App\\Models\\Contact', 'restored', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-24 06:52:19', '2024-06-24 06:52:19'),
(32, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 06:49:09', '2024-06-25 06:49:09'),
(33, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 06:49:14', '2024-06-25 06:49:14'),
(34, 'default', 'restored', 'App\\Models\\Contact', 'restored', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 06:49:14', '2024-06-25 06:49:14'),
(35, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 09:04:10', '2024-06-25 09:04:10'),
(36, 'default', 'created', 'App\\Models\\Contact', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 09:50:07', '2024-06-25 09:50:07'),
(37, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 9, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 09:59:10', '2024-06-25 09:59:10'),
(38, 'default', 'updated', 'App\\Models\\Contact', 'updated', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 09:59:25', '2024-06-25 09:59:25'),
(39, 'default', 'restored', 'App\\Models\\Contact', 'restored', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-25 09:59:25', '2024-06-25 09:59:25'),
(40, 'default', 'updated', 'App\\Models\\Contact', 'updated', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANGs\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 03:42:32', '2024-06-26 03:42:32'),
(41, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 04:54:21', '2024-06-26 04:54:21'),
(42, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 04:54:40', '2024-06-26 04:54:40'),
(43, 'default', 'restored', 'App\\Models\\Contact', 'restored', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 04:54:40', '2024-06-26 04:54:40'),
(44, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 6, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 04:56:14', '2024-06-26 04:56:14'),
(45, 'default', 'updated', 'App\\Models\\Contact', 'updated', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"},\"old\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 05:00:31', '2024-06-26 05:00:31'),
(46, 'default', 'restored', 'App\\Models\\Contact', 'restored', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"GIO M LARANANG\",\"email\":\"giolaranang@gmail.com\",\"number\":95641389438787,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 05:00:31', '2024-06-26 05:00:31'),
(47, 'default', 'deleted', 'App\\Models\\Contact', 'deleted', 7, 'App\\Models\\User', 1, '{\"old\":{\"name\":\"GIO M LARANANGjjj\",\"email\":\"giolaranang@gmail.com\",\"number\":9564138943,\"address\":\"#21, Lower P burgos, infront of Sto Nino Hospital\"}}', NULL, '2024-06-26 05:00:44', '2024-06-26 05:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_list`
--

CREATE TABLE `contacts_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts_list`
--

INSERT INTO `contacts_list` (`id`, `name`, `email`, `number`, `address`, `created_at`, `updated_at`, `profile_picture`, `deleted_at`) VALUES
(6, 'GIO M LARANANG', 'giolaranang@gmail.com', 95641389438787, '#21, Lower P burgos, infront of Sto Nino Hospital', '2024-06-24 00:04:27', '2024-06-26 05:00:31', 'profile_pictures/c53vwwLNfSkCUDkj8HZClAhhJF4D1uxulqlKXzPb.jpg', NULL),
(7, 'GIO M LARANANGjjj', 'giolaranang@gmail.com', 9564138943, '#21, Lower P burgos, infront of Sto Nino Hospital', '2024-06-24 00:19:35', '2024-06-26 05:00:44', 'profile_pictures/iIAdcwfPB1lIdQtDmZ84iKfTj900ci4izfN8XKLM.png', '2024-06-26 05:00:44'),
(8, 'GIO M LARANANGsss', 'giolaranang@gmail.com', 9564138943, '#21, Lower P burgos, infront of Sto Nino Hospital', '2024-06-24 02:13:24', '2024-06-24 05:53:01', 'profile_pictures/uvOaZRdpeHeYo4MSvqmeCJ0q81nKtv5b037HVxbu.png', NULL),
(9, 'GIO M LARANANGs', 'giolaranang@gmail.com', 9564138943, '#21, Lower P burgos, infront of Sto Nino Hospital', '2024-06-25 09:50:07', '2024-06-26 03:42:32', 'profile_pictures/LLjv53J8VcfVR8CMO0nWXa6SHUNtyX6wKmBLk5ry.jpg', NULL);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_23_091417_create_contacts_list_table', 1),
(5, '2024_06_23_153753_create_activity_log_table', 1),
(6, '2024_06_23_153754_add_event_column_to_activity_log_table', 1),
(7, '2024_06_23_153755_add_batch_uuid_column_to_activity_log_table', 1),
(8, '2024_06_24_034927_create_notes_table', 1),
(9, '2024_06_24_084355_add_contact_avatar_table', 2),
(10, '2024_06_24_093144_add_deleted_at_to_contacts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `contact_id`, `body`, `created_at`, `updated_at`) VALUES
(14, 7, 'entered note', '2024-06-26 04:24:05', '2024-06-26 04:24:05'),
(17, 6, 'im editing this note', '2024-06-26 04:41:51', '2024-06-26 04:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FFtMzuefGmWIhIPcdY8iQ7mtl3yaCOuagIvF4lzy', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieFZmdEM5VXVEZEk0UVJwd1dCVDVCTzJzckhHVGJDMlFjbFpXMENWSSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1719406875);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gio', 'giolaranang@gmail.com', NULL, '$2y$12$rGyP4KDj/P4BTWouNMl0S.IzCTUCU26I5JOvkf3ErSfx62M0SCQau', NULL, '2024-06-23 20:07:24', '2024-06-23 20:07:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts_list`
--
ALTER TABLE `contacts_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `contacts_list`
--
ALTER TABLE `contacts_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
