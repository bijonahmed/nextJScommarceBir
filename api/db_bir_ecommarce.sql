-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2026 at 09:17 PM
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
-- Database: `db_bir_ecommarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `home_slider` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `type`, `home_slider`, `banner_image`, `created_at`, `updated_at`) VALUES
(7, 'For Slider', 'slider', 'uploads/banner/thumb_1762003419.jpg', NULL, '2025-11-01 07:23:39', '2025-11-01 07:23:39'),
(8, 'For Slider', 'slider', 'uploads/banner/thumb_1762003424.jpg', NULL, '2025-11-01 07:23:44', '2025-11-01 07:23:44'),
(9, 'For Slider', 'slider', 'uploads/banner/thumb_1762003429.jpg', NULL, '2025-11-01 07:23:49', '2025-11-01 07:23:49'),
(14, 'For Top Banner', 'top_banner', NULL, 'uploads/banner/thumb_1762004608.jpg', '2025-11-01 07:43:28', '2025-11-01 07:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:9:\"role_type\";s:1:\"e\";s:9:\"parent_id\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:63:{i:0;a:6:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"view posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:6:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"create posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:6:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"edit posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"delete posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;}i:4;a:6:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:6:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:6:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"edit users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;}i:8;a:6:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"view products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:6:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"create products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:6:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"edit products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"delete products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;}i:12;a:6:{s:1:\"a\";i:14;s:1:\"b\";s:19:\"view posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:6:{s:1:\"a\";i:15;s:1:\"b\";s:21:\"create posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:6:{s:1:\"a\";i:16;s:1:\"b\";s:19:\"edit posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:5:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"delete posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;}i:16;a:6:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"view role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:6:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"create role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:1:{i:0;i:2;}}i:18;a:6:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:5:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;}i:20;a:5:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"Update website setting\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:21;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"Post Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:22;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"User Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:23;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:19:\"Products Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:24;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:24:\"Post Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:25;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"Role Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:26;a:5:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"Permission Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:27;a:6:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"view permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:6:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"create permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:6:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"edit permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:5:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"delete permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;}i:31;a:5:{s:1:\"a\";i:37;s:1:\"b\";s:28:\"Products Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:32;a:6:{s:1:\"a\";i:38;s:1:\"b\";s:21:\"view product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:6:{s:1:\"a\";i:39;s:1:\"b\";s:23:\"create product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:6:{s:1:\"a\";i:40;s:1:\"b\";s:21:\"edit product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:5:{s:1:\"a\";i:41;s:1:\"b\";s:23:\"delete product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;}i:36;a:5:{s:1:\"a\";i:42;s:1:\"b\";s:17:\"Banner Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:37;a:6:{s:1:\"a\";i:43;s:1:\"b\";s:11:\"view banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:6:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"create banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:6:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"edit banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:5:{s:1:\"a\";i:46;s:1:\"b\";s:13:\"delete banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;}i:41;a:5:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"Supplier Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:42;a:6:{s:1:\"a\";i:48;s:1:\"b\";s:13:\"view supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:6:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"create supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:6:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"edit supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:5:{s:1:\"a\";i:51;s:1:\"b\";s:15:\"delete supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;}i:46;a:5:{s:1:\"a\";i:52;s:1:\"b\";s:25:\"Purchase Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:47;a:6:{s:1:\"a\";i:53;s:1:\"b\";s:19:\"view purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:6:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"create purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:6:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"edit purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:5:{s:1:\"a\";i:56;s:1:\"b\";s:21:\"delete purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;}i:51;a:5:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"Product Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:52;a:6:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"view product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:6:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"create product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:6:{s:1:\"a\";i:60;s:1:\"b\";s:12:\"edit product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:5:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"delete product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;}i:56;a:5:{s:1:\"a\";i:62;s:1:\"b\";s:16:\"Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:57;a:6:{s:1:\"a\";i:63;s:1:\"b\";s:10:\"view order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:6:{s:1:\"a\";i:64;s:1:\"b\";s:12:\"create order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:6:{s:1:\"a\";i:65;s:1:\"b\";s:10:\"edit order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:5:{s:1:\"a\";i:66;s:1:\"b\";s:12:\"delete order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;}i:61;a:5:{s:1:\"a\";i:67;s:1:\"b\";s:19:\"Customer Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:62;a:6:{s:1:\"a\";i:68;s:1:\"b\";s:13:\"view Customer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:67;s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:1;}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:2;}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"viewer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:3;}}}', 1768664486);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `banner_sub_cat_image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `sorting`, `parent_id`, `sort_order`, `banner_sub_cat_image`, `status`, `thumbnail_image`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Bir Tools', 'bir-tools', 3, 0, 1, 'uploads/categories/thumb_1768591349.png', 1, 'uploads/categories/thumb_1761908947.gif', 'uploads/categories/thumb_1761909766.png', NULL, '2026-01-16 19:22:29'),
(2, 'KGI Hardware', 'kgi-hardware', 2, 0, 2, NULL, 1, 'uploads/categories/thumb_1761880670.gif', 'uploads/categories/thumb_1761911067.jpg', NULL, '2026-01-16 17:05:58'),
(27, 'Aluminium ladder - Industrial Grade I7100', 'aluminium-ladder-industrial-grade-i7100', 0, 152, 1, NULL, 1, NULL, NULL, NULL, '2026-01-14 13:49:50'),
(28, 'Aluminium ladder - Household Grade 1000', 'aluminium-ladder-household-grade-1000', 0, 152, 2, NULL, 1, NULL, NULL, NULL, NULL),
(29, 'Aluminium ladder - Household Grade 700', 'aluminium-ladder-household-grade-700', 0, 152, 3, NULL, 1, NULL, NULL, NULL, NULL),
(30, 'Concrete Nail - MS', 'concrete-nail-ms', 0, 152, 4, NULL, 1, NULL, NULL, NULL, NULL),
(31, 'Stainless Steel Screws', 'stainless-steel-screws', 0, 152, 5, NULL, 1, NULL, NULL, NULL, NULL),
(32, 'Brad Nails', 'brad-nails', 0, 152, 6, 'uploads/categories/thumb_1768325565.png', 1, NULL, NULL, NULL, '2026-01-13 17:42:52'),
(77, 'BMI', 'bmi', 0, 0, 3, NULL, 0, 'uploads/categories/thumb_1761909117.gif', 'uploads/categories/thumb_1761968367.png', NULL, '2026-01-11 17:11:35'),
(78, 'Vikars Ladder', 'vikars-ladder', 0, 0, 4, NULL, 0, 'uploads/categories/thumb_1761909181.gif', 'uploads/categories/thumb_1761966547.jpg', NULL, '2026-01-11 17:16:31'),
(79, 'WD-40', 'wd-40', 1, 0, 5, NULL, 1, 'uploads/categories/thumb_1761909067.gif', 'uploads/categories/thumb_1761966831.jpg', NULL, '2026-01-13 18:04:47'),
(80, 'Makita Power Tools', 'makita-power-tools', 0, 0, 6, NULL, 0, 'uploads/categories/thumb_1761908999.gif', 'uploads/categories/thumb_1761968977.png', NULL, '2025-12-12 13:27:16'),
(81, 'Spare Parts-Power Tools', 'spare-parts-power-tools', 0, 0, 7, NULL, 0, NULL, NULL, NULL, '2026-01-11 18:23:51'),
(82, 'Bir Consumer', 'bir-consumer', 5, 0, 8, NULL, 0, 'uploads/categories/thumb_1765546049.gif', 'uploads/categories/thumb_1765546059.png', NULL, '2026-01-14 13:53:07'),
(96, 'Aluminium Level', 'aluminium-level', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:13', '2025-12-07 20:49:13'),
(97, 'Cutting Disc', 'cutting-disc', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:23', '2025-12-07 20:49:23'),
(98, 'Cutting Tools', 'cutting-tools', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:31', '2025-12-07 20:49:31'),
(99, 'Dril Bit', 'dril-bit', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:42', '2025-12-07 20:49:42'),
(100, 'Drill chuck', 'drill-chuck', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:48', '2025-12-07 20:49:48'),
(101, 'File', 'file', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:53', '2025-12-07 20:49:53'),
(102, 'Hammer', 'hammer', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:49:58', '2025-12-07 20:49:58'),
(103, 'Hand Saw', 'hand-saw', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:50:03', '2025-12-07 20:50:03'),
(104, 'House Tools', 'house-tools', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:50:08', '2025-12-07 20:50:08'),
(105, 'LN Key', 'ln-key', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:50:14', '2025-12-07 20:50:14'),
(108, 'Pad Lock', 'pad-lock', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:50:54', '2025-12-07 20:50:54'),
(109, 'Plier', 'plier', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:03', '2025-12-07 20:51:03'),
(110, 'Power Tools', 'power-tools', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:09', '2025-12-07 20:51:09'),
(111, 'Rivet Gun', 'rivet-gun', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:16', '2025-12-07 20:51:16'),
(112, 'Screw Driver', 'screw-driver', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:21', '2025-12-07 20:51:21'),
(113, 'Socket', 'socket', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:26', '2025-12-07 20:51:26'),
(114, 'Spanner', 'spanner', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:32', '2025-12-07 20:51:32'),
(115, 'Tape', 'tape', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:37', '2025-12-07 20:51:37'),
(116, 'Wrench', 'wrench', 0, 1, 0, NULL, 1, NULL, NULL, '2025-12-07 20:51:42', '2025-12-07 20:51:42'),
(117, 'SS Door Hinge', 'ss-door-hinge', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:08', '2026-01-16 14:21:29'),
(118, 'Butterfy Hinge', 'butterfy-hinge', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:15', '2026-01-16 14:21:02'),
(119, 'Tower Bolt', 'tower-bolt', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:22', '2026-01-16 14:20:36'),
(120, '6\" Piano Hinge', '6-piano-hinge', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:27', '2026-01-16 13:48:24'),
(121, 'Iron Drawer Lock', 'iron-drawer-lock', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:32', '2026-01-16 14:21:19'),
(122, 'Window Roller', 'window-roller', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:38', '2026-01-16 14:21:10'),
(123, 'SS Drawer Channel', 'ss-drawer-channel', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 20:12:46', '2026-01-16 14:20:45'),
(129, 'Foldable Cloth Drying Rack (Stainless Steel & Aluminium Bar)', 'foldable-cloth-drying-rack-stainless-steel-aluminium-bar', 0, 152, 0, 'uploads/categories/thumb_1768322620.png', 1, NULL, NULL, '2025-12-10 21:53:58', '2026-01-13 17:42:38'),
(130, 'Sponge Kit', 'sponge-kit', 0, 152, 0, NULL, 0, NULL, NULL, '2025-12-10 22:27:08', '2025-12-10 22:27:08'),
(131, 'Painting Tools 7\" Roller', 'painting-tools-7-roller', 0, 152, 0, NULL, 0, NULL, NULL, '2025-12-10 22:27:22', '2025-12-10 22:27:22'),
(132, 'Painting Tools 6\" Roller', 'painting-tools-6-roller', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:27:30', '2025-12-10 22:27:30'),
(133, 'Hydrolic & Normal Concealed Hinge', 'hydrolic-normal-concealed-hinge', 0, 152, 0, NULL, 0, NULL, NULL, '2025-12-10 22:27:39', '2025-12-10 22:27:39'),
(134, 'LPG Regulator', 'lpg-regulator', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:27:55', '2025-12-10 22:27:55'),
(135, 'Drawer Lock-Zinc', 'drawer-lock-zinc', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:00', '2025-12-10 22:28:00'),
(136, 'Piano Hinge', 'piano-hinge', 0, 152, 0, NULL, 0, NULL, NULL, '2025-12-10 22:28:05', '2025-12-10 22:28:05'),
(137, 'Rim Lock-Iron', 'rim-lock-iron', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:12', '2025-12-10 22:28:12'),
(138, 'Liver Lock-High Quality', 'liver-lock-high-quality', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:38', '2025-12-10 22:28:38'),
(139, 'Door Closer- Can hold up to 80 kg', 'door-closer-can-hold-up-to-80-kg', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:44', '2025-12-10 22:28:44'),
(140, 'Door Knocker with Viewer-Zinc', 'door-knocker-with-viewer-zinc', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:50', '2025-12-10 22:28:50'),
(141, 'Door Chain-Zinc', 'door-chain-zinc', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:28:55', '2025-12-10 22:28:55'),
(142, 'Door Viewer', 'door-viewer', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:29:03', '2026-01-16 14:04:56'),
(143, 'Door Stopper', 'door-stopper', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:29:09', '2025-12-10 22:29:09'),
(144, 'Dead Bolt / Security Lock', 'dead-bolt-security-lock', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:29:14', '2025-12-10 22:29:14'),
(145, 'Handle Lock -Big - 68 MM X 60 MM. SS Body Cylinder & Latch Brass With SB Finish.', 'handle-lock-big-68-mm-x-60-mm-ss-body-cylinder-latch-brass-with-sb-finish', 0, 152, 0, NULL, 0, NULL, NULL, '2025-12-10 22:29:34', '2025-12-10 22:29:34'),
(146, 'Zinc Handle Lock -Medium- 85 MM', 'zinc-handle-lock-medium-85-mm', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:30:09', '2026-01-16 16:02:33'),
(147, 'Round Lock- Zinc-58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-zinc-58-mm-knob80-mm-rose-plate-brass-key', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:30:24', '2025-12-10 22:30:24'),
(148, 'Round Lock- SS Sheet - 58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-ss-sheet-58-mm-knob80-mm-rose-plate-brass-key', 0, 152, 0, NULL, 1, NULL, NULL, '2025-12-10 22:30:40', '2025-12-10 22:30:40'),
(149, 'Bir and KAI Silicone', 'bir-and-kai-silicone', 0, 153, 0, 'uploads/categories/thumb_1768593009.png', 1, NULL, NULL, '2026-01-10 17:53:34', '2026-01-16 19:50:09'),
(150, 'V-Tech Silicone', 'v-tech-silicone', 0, 153, 0, 'uploads/categories/thumb_1768593000.png', 1, NULL, NULL, '2026-01-10 17:53:55', '2026-01-16 19:50:00'),
(151, 'RTV', 'rtv', 0, 153, 0, 'uploads/categories/thumb_1768592845.png', 1, NULL, NULL, '2026-01-10 18:08:18', '2026-01-16 19:47:25'),
(152, 'Vikars', 'vikars', 4, 0, 0, NULL, 1, NULL, NULL, '2026-01-14 19:51:45', '2026-01-14 13:53:00'),
(153, 'V-Tech', 'v-tech', 2, 0, 0, NULL, 1, NULL, NULL, '2026-01-14 19:52:34', '2026-01-14 13:52:41'),
(154, 'WD-40 Mup', 'wd-40-mup', NULL, 79, 0, NULL, 1, NULL, NULL, '2026-01-14 20:08:11', '2026-01-14 20:08:11'),
(155, 'WD-40 Specialst', 'wd-40-specialst', NULL, 79, 0, NULL, 1, NULL, NULL, '2026-01-14 20:08:32', '2026-01-14 20:08:32'),
(156, 'Professional tools', 'professional-tools', NULL, 1, 0, 'uploads/categories/thumb_1768593690.png', 1, NULL, NULL, '2026-01-16 00:10:40', '2026-01-16 20:01:30'),
(157, 'Hyfrolic and normal concealed hingle', 'hyfrolic-and-normal-concealed-hingle', NULL, 152, 0, NULL, 1, NULL, NULL, '2026-01-16 20:15:05', '2026-01-16 20:15:05'),
(161, 'Pad Locks', 'pad-locks', NULL, 152, 0, NULL, 1, NULL, NULL, '2026-01-16 20:22:56', '2026-01-16 20:22:56'),
(164, 'Sponge Kits', 'sponge-kits', NULL, 152, 0, NULL, 1, NULL, NULL, '2026-01-16 21:54:58', '2026-01-16 21:54:58'),
(165, 'UN KNOWN', 'un-known', NULL, 152, 0, NULL, 1, NULL, NULL, '2026-01-16 22:17:49', '2026-01-16 22:17:49'),
(166, 'Z 9106 Z 96 ORB', 'z-9106-z-96-orb', NULL, 152, 0, NULL, 1, NULL, NULL, '2026-01-16 22:19:36', '2026-01-16 22:19:36');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
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
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
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
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_09_160506_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `pathao_consignment_id` varchar(255) DEFAULT NULL,
  `pathao_merchant_order_id` varchar(255) DEFAULT NULL,
  `pathao_order_status` varchar(100) DEFAULT NULL,
  `pathao_delivery_fee` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'ref users table role_id=2',
  `shipping_phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `coupons` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '%',
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `advance` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Pending\r\n2=Order Received\r\n3=Shipped\r\n4=Out for Delivery\r\n5=Delivered\r\n6=Cancelled\r\n7=Returned\r\n8=Refunded\r\n9=Return complete\r\n',
  `bkash_number` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `devliery_charge` decimal(10,2) DEFAULT NULL,
  `order_type` int(1) NOT NULL COMMENT '1=online\r\n2=instant_order',
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_offer_status` int(11) DEFAULT NULL,
  `orderUpdateDate` date DEFAULT NULL,
  `orderUpdateby` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribue_id` int(11) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'The order has been placed but not yet confirmed or paid.', 1, '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'Order Received', 'Payment has been received (for prepaid), and the order is being prepared.', 1, '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Shipped', 'The order has been dispatched from the warehouse and is in transit.', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Out for Delivery', 'The order is with the delivery agent and will reach the customer soon.', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'Delivered', 'The order has successfully reached the customer.', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:14'),
(6, 'Cancelled', 'The order has been cancelled either by the user or the system (e.g., due to payment failure or stock issues).', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:42'),
(7, 'Returned', 'The customer has returned the product after delivery.', 1, '2023-12-04 11:15:23', '2023-12-04 05:58:19'),
(8, 'Refunded', 'Returning', 1, '2023-12-04 11:15:23', '2023-12-04 05:58:53'),
(9, 'Return complete', 'A refund has been initiated and processed for the customer.', 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17'),
(10, 'Order Received & Send to Pathao', 'Send to Pathao', 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
-- Table structure for table `pathao_tokens`
--

CREATE TABLE `pathao_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_token` text NOT NULL,
  `refresh_token` text NOT NULL,
  `expires_in` int(11) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pathao_tokens`
--

INSERT INTO `pathao_tokens` (`id`, `access_token`, `refresh_token`, `expires_in`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzNTIiLCJhdWQiOlsiMjY3Il0sImV4cCI6MTc3MjEwOTI3NCwibmJmIjoxNzY0MzMzMjc0LCJpYXQiOjE3NjQzMzMyNzQsImp0aSI6IjY1NjU4YzY1ZjU5NzRjZDZhNGE3OGE3MTIwZWIyZjVjNGQxOTYzOGM3MjBiYWYwOTQyOWMyOWVjNzk0MzgyYmIiLCJtZXJjaGFudF9pZCI6Iks0b2VFOWtlMEIiLCJzY29wZXMiOltdfQ.HdpzFl10Ul7lDW9x2lsDt73FGDnCD8JNYfmIjVKviSp0lyJ_E4YV9b_3XLcLzvkXk8wuCWcR3QM4K3Lp4e3gpQ114g5BLXNYxZGIkA6nRs23inWUv43oM8g73LYwPMMDyZo6nTpL6HMKbQaeilSfl7n8f-yf5h-e2U21uEoeHdE-u2NyXxLvkvW0kIhsnO-uhXyYmoCCEZXHv31Z_xFRTAEgGDb4NsifWgOcCNbzAU6tiZXymCGmSuKE1Kod0Xnw7znqWGULNVofSrogYwc0kuLFRnUvagBp6jvydhPxUJfAgSKu4561xC7HI3mmwsnfOZ-UeGVSgblkNAcFnvGy4xCx3OhU8of63BbFY9eGbmP1lVp8UvvoKLn03A7MZWP8qNOr4Cn9clhuVYc0ZdER3QprIqhVsknPvPRs-eodnKsCuxR-gNr3NCaLYZSKxpY7y_RcxtbIBdJOr04nj3s0HgnaZ_gbuI5aGfdqGdqTD7AtJDqUvZg7w1ukazHQJL-fScbvAGmbzIBN8wV5IsYp8QswGzfqFCJh6uYLBSCJ5ZajwViNVX10bXUFyrefrZ_8-uxG53ozyWjThtvyR7UoRJSNA9Hx2U76yvdXlZi4PxwsPgCw5EGVXmPi-n3hNM6McMP5bffey-PnSVsDhbu1CYRMVw417NdOPtdT7WWq0oI', 'def502006775528b6f041dbeb1e89312605e2aa5d92fc7daf9eaad2fabccfa35e54f4cba0474e063cf12770d72be55b346a7cfda987df6dca6159bdbee1a20ec686326b705e7cc90a062f52167901f4145fe19165d3882a57920cab75f8e3c42d388ed0e7bc7d3b6abd608700e4b36fdcf2f8b7a461611f1850e1aa4f46ceceed2344f15785ab03b3fa44572b2830206e2d35942c3f827e89b1fd20220db48b725857f9bba5d0442748e5f102c7f03eccd903572edb8c713ed251026d6a45838b10279a3ce092c0cb2f92ce93ccea8145191b6e48f38b5193ad3b10c2a2fd67b0da5eedc1a9834a01e7d1d4b50e4ecb0e8d599f2e6dd4128faa5ecc3aec51c086f04980d9f30165d3cf6fd652b6b134542c7dfc6e3aa48be5b38ba09c62f9994d9e770b1cd2c52a5385ed7d0f15f74fb13e518f1d5304473e2f91587ff5ae614a00dd1dbdf09fcf176d945520ff67acdbb72ecc088caf08514', 7776000, '2026-02-26 06:34:36', '2025-11-28 06:34:36', '2025-11-28 06:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `role_type` varchar(255) DEFAULT NULL COMMENT '1=admin, 2=Editor, 3=Viewer, 4=General Post 5=Product Manage 6=User Manage ',
  `parent_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `role_type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'view posts', 'api', '1,2,3', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(2, 'create posts', 'api', '1,2', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(3, 'edit posts', 'api', '1,2', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(4, 'delete posts', 'api', '1,2,3', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(5, 'view users', 'api', '1,2,3', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(6, 'create users', 'api', '1,2', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(7, 'edit users', 'api', '1,2', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(8, 'delete users', 'api', '1,2,3', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(9, 'view products', 'api', '1,2,3', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(10, 'create products', 'api', '1,2', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(11, 'edit products', 'api', '1,2', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(12, 'delete products', 'api', '1,2,3', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(14, 'view posts category', 'api', '1,2,3', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(15, 'create posts category', 'api', '1,2', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(16, 'edit posts category', 'api', '1,2', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(17, 'delete posts category', 'api', '1,2,3', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(22, 'view role', 'api', '1,2,3', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(23, 'create role', 'api', '1,2', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(24, 'edit role', 'api', '1,2', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(25, 'delete role', 'api', '1,2,3', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(26, 'Update website setting', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(27, 'Post Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(28, 'User Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(29, 'Products Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(30, 'Post Category Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(31, 'Role Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(32, 'Permission Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(33, 'view permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(34, 'create permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(35, 'edit permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(36, 'delete permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(37, 'Products Category Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(38, 'view product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(39, 'create product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(40, 'edit product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(41, 'delete product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(42, 'Banner Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(43, 'view banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(44, 'create banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(45, 'edit banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(46, 'delete banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(47, 'Supplier Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(48, 'view supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(49, 'create supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(50, 'edit supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(51, 'delete supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(52, 'Purchase Order Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(53, 'view purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(54, 'create purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(55, 'edit purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(56, 'delete purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(57, 'Product Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(58, 'view product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(59, 'create product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(60, 'edit product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(61, 'delete product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(62, 'Order Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(63, 'view order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(64, 'create order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(65, 'edit order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(66, 'delete order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(67, 'Customer Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(68, 'view Customer', 'api', '1', 67, '2025-10-09 10:09:35', '2025-10-09 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_short` text DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL COMMENT '\r\n1=pdf\r\n2=torrent',
  `entry_by` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `meta_title`, `meta_description`, `meta_keyword`, `question`, `answer`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Bir Group Holdings', 'about-bir-group-holdings', '', '<p>Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.</p><p>To accomplish this vision, Bir Group Holdings pursues a clear mission. The company leverages the growth potential of its existing brands and products in the ever-expanding market, introduces new products to its established networks, and continuously expands the distribution of its current brands throughout the domestic market. By following these strategies, the company ensures consistent growth and strengthens its market presence year after year.</p><p>Bir Group Holdings also adheres to a set of core principles that guide its daily operations. These include maintaining equality in a competitive workplace, being open to innovative ideas and advice, taking calculated risks to promote growth and prosperity, and conducting all business activities with the highest ethical standards. Together, these values help the company grow responsibly while maintaining trust with customers, partners, and employees.</p>', 'About Bir Group Holdings', 'About Bir Group Holdings', 'About Bir Group Holdings', NULL, NULL, 1, 1, NULL, 1, '2025-11-04 16:03:29', '2025-11-15 22:09:52'),
(2, 'Terms and Conditions', 'terms-and-conditions', '', '<p>Welcome to Bir-ecommerce &nbsp;By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.</p><p>All products listed on our website are subject to availability. We reserve the right to modify, discontinue, or limit products at any time without prior notice. While we strive to provide accurate images, descriptions, and pricing, slight differences may occur between the displayed product and the actual item.</p><p>When placing an order, you acknowledge that all orders are subject to acceptance by [Your E-commerce Site Name]. Payments must be completed using the methods provided on our checkout page before we can process your order. Prices listed on the website are inclusive/exclusive of applicable taxes, as specified.</p><p>We make every effort to ensure timely delivery; however, delivery timelines are estimates and may vary due to location, product availability, or unforeseen circumstances. Ownership of the products passes to the customer upon delivery, and we are not liable for delays caused by courier services or external factors beyond our control.</p><p>Returns and refunds are processed in accordance with our Return Policy. Products must be returned in their original condition, with all tags and packaging intact. Refunds are issued only after the returned items have been inspected and approved.</p><p>To place an order, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and password, and for notifying us immediately of any unauthorized use of your account. Misuse of your account or any attempt to compromise the security of our website may result in termination of your account.</p><p>All content on our website, including text, images, logos, and designs, is the intellectual property of [Your E-commerce Site Name] or its licensors and may not be copied, reproduced, or distributed without prior written permission. You agree not to use our website for any unlawful purposes or to transmit harmful, offensive, or unauthorized content.</p><p>While we strive to maintain a secure and error-free website, [Your E-commerce Site Name] is not liable for any direct, indirect, or incidental damages resulting from the use of our website or products. We reserve the right to update these Terms and Conditions at any time, and continued use of our services after such changes constitutes acceptance of the updated terms.</p><p>These Terms and Conditions are governed by the laws of Bangladesh, and any disputes arising from them will be subject to the exclusive jurisdiction of courts in Bangladesh. For any questions or concerns regarding these Terms and Conditions</p>', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', NULL, NULL, 2, 1, NULL, 1, '2025-11-04 16:06:51', '2025-11-04 16:06:51'),
(3, 'Bir E-commerce Privacy and Policy', 'bir-e-commerce-privacy-and-policy', '', '<p>At Bir E-commerce, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, and safeguard your information when you visit or make purchases on our website. By using our services, you consent to the practices described in this policy.</p><p>We collect personal information that you voluntarily provide to us when creating an account, placing an order, subscribing to our newsletter, or contacting our customer service. This may include your name, email address, phone number, shipping and billing addresses, payment information, and other details necessary to complete your purchase or provide support.</p><p>The information we collect is used to process orders, manage your account, provide customer support, improve our website and services, and communicate with you about your orders, promotions, or updates that may interest you. We may also use your data to analyze shopping trends and improve our product offerings.</p><p>We are committed to protecting your personal information. All sensitive data, such as payment information, is encrypted and transmitted securely through trusted payment gateways. We implement reasonable administrative, technical, and physical safeguards to protect your data from unauthorized access, disclosure, alteration, or destruction.</p><p>We do not sell, trade, or rent your personal information to third parties. However, we may share your information with trusted service providers, such as delivery partners, payment processors, or IT service providers, strictly for the purpose of fulfilling your orders or improving our services. We require that these partners maintain confidentiality and use your data only for the purposes specified by us.</p><p>Our website may contain links to third-party websites. Please note that we are not responsible for the privacy practices or content of these external websites, and we encourage you to review their privacy policies before providing any personal information.</p><p>You have the right to access, update, or delete your personal information stored with us. If you wish to exercise any of these rights, please contact our support team at birgh.group.digital@gmail.com. We will respond to your request promptly in accordance with applicable laws.</p>', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', NULL, NULL, 4, 1, NULL, 1, '2025-11-04 16:10:04', '2025-11-04 16:10:04'),
(4, 'Return Policy', 'return-policy', '', '<p>At Bir E-commerce, we want you to be completely satisfied with your purchase. If for any reason you are not satisfied, our return policy allows you to return or exchange products under certain conditions. Please read this policy carefully to understand your rights and responsibilities.</p><p>Products can be returned or exchanged within [insert number] days from the date of delivery. To be eligible for a return, the product must be in its original condition, unused, and with all original packaging, tags, and accessories intact. Products that are damaged, altered, or missing parts will not be accepted for return or refund.</p><p>To initiate a return &nbsp;with your order details and reason for the return. Our team will guide you through the return process, including the return shipping instructions.</p><p>Once we receive and inspect the returned product, we will notify you about the approval or rejection of your return. If approved, your refund will be processed using the original payment method within 5 business days. Shipping costs, unless the return is due to our error, are typically the responsibility of the customer.</p><p>Certain items are non-returnable, including:</p><p>Personalized or custom-made products</p><p>Sale or clearance items (unless defective)</p><p>Products damaged due to misuse or mishandling</p><p>We strive to ensure all products are delivered in perfect condition. If you receive a defective or damaged product, please contact us immediately, and we will arrange a replacement or full refund at no additional cost to you.</p>', 'Return Policy', 'Return Policy', 'Return Policy', NULL, NULL, 5, 1, NULL, 1, '2025-11-04 16:11:56', '2025-11-15 23:09:04'),
(5, 'FAQ — Bir Group Holdings', 'faq-bir-group-holdings', '', '<p><strong>1. What is Bir Group Holdings?</strong></p><p>Bir Group Holdings is a diversified distribution and manufacturing company in Bangladesh. The company is committed to delivering high-quality products nationwide while taking full responsibility for everything it produces and distributes.</p><p><strong>2. What is the vision of Bir Group Holdings?</strong></p><p>The company aims to become one of Bangladesh’s leading diversified distribution and manufacturing organizations. Its vision includes ensuring fair treatment for all retailers and customers and building long-term trust and loyalty.</p><p><strong>3. What is the mission of Bir Group Holdings?</strong></p><p>Bir Group Holdings focuses on expanding the potential of its existing brands, introducing new products into established networks, and increasing distribution coverage across domestic markets. Through these strategies, the company strives for continuous growth and strong market presence.</p><p><strong>4. What core principles guide the company?</strong></p><p>Bir Group Holdings follows several key principles:</p><p><strong>Equality</strong> in a competitive workplace</p><p><strong>Encouragement of innovative ideas</strong></p><p><strong>Taking calculated risks</strong> to drive growth</p><p><strong>Upholding strong ethical standards</strong> in all business activities</p><p>These values help the company operate responsibly and maintain trust with all stakeholders.</p><p><strong>5. How does Bir Group Holdings ensure product quality?</strong></p><p>The company maintains responsibility for all its distributed and manufactured goods. It prioritizes quality control and ensures that products meet consistent standards before reaching retailers and customers.</p><p><strong>6. How does the company support its retailers and partners?</strong></p><p>Bir Group Holdings treats all partners fairly and equally. It focuses on building long-term relationships through transparency, dependable service, and ethical business practices.</p><p><strong>7. Is Bir Group Holdings planning to expand?</strong></p><p>Yes. The company continuously explores new product opportunities and expands the distribution network within domestic markets to strengthen its growth and reach new customers nationwide.</p>', 'Faq', 'Faq', 'Faq', NULL, NULL, 12, 1, NULL, 1, '2025-11-16 05:12:12', '2025-11-15 23:13:35'),
(6, 'Boost Your Online Sales with Smart E-Commerce Strategies', 'boost-your-online-sales-with-smart-e-commerce-strategies', '', '<p><strong>In today’s digital age</strong>, having an e-commerce store is no longer just an option—it’s a necessity. With more consumers shopping online than ever before, businesses of all sizes are turning to e-commerce to reach wider audiences and increase revenue. However, simply having a website is not enough. To truly succeed, online stores need a combination of smart strategies, seamless user experience, and effective marketing techniques.</p><p>First and foremost, a clean and user-friendly website design plays a crucial role in retaining customers. Shoppers are more likely to make purchases when they can easily navigate through categories, view products clearly, and check out without hassle. Mobile optimization is also key, as a significant portion of online shopping now happens on smartphones.</p>', 'Boost Your Online Sales with Smart E-Commerce Strategies', 'Boost Your Online Sales with Smart E-Commerce Strategies', 'Boost Your Online Sales with Smart E-Commerce Strategies', NULL, NULL, 13, 1, '/backend/files/ywu4n0GL6jI3pyvK4u7h.png', 1, '2026-01-08 16:40:13', '2026-01-08 10:40:34'),
(7, 'Equally important is product presentation', 'equally-important-is-product-presentation', '', '<p>Equally important is product presentation. High-quality images, detailed descriptions, and customer reviews can significantly influence purchasing decisions. Promotions, discounts, and personalized recommendations help keep shoppers engaged and encourage repeat purchases.</p><p>Marketing your e-commerce store effectively is another critical factor. Utilizing social media, email campaigns, and search engine optimization (SEO) can drive targeted traffic to your site. Paid advertising on platforms like Google and Facebook can also help attract potential buyers.</p><p>Finally, excellent customer service can turn first-time buyers into loyal customers. Fast responses, easy returns, and clear communication build trust and enhance the overall shopping experience.</p>', 'Equally important is product presentation.', 'Equally important is product presentation.', 'Equally important is product presentation.', NULL, NULL, 13, 1, '/backend/files/lz9nj2B10g8DBONbdDii.png', 1, '2026-01-08 16:41:17', '2026-01-08 16:41:17'),
(8, 'Top Trends Shaping the Future of E-Commerce in 2026', 'top-trends-shaping-the-future-of-e-commerce-in-2026', '', '<p>E-commerce has transformed the way people shop, and 2026 promises to be another exciting year for online businesses. With rapid advancements in technology, changing consumer behaviors, and innovative marketing strategies, e-commerce stores have endless opportunities to grow and connect with customers. Understanding these trends is crucial for businesses that want to stay ahead of the competition.</p><p>One major trend is the rise of <strong>personalized shopping experiences</strong>. Customers today expect websites to cater to their individual preferences. From product recommendations based on past purchases to personalized emails and offers, businesses that invest in personalization can increase engagement and sales. AI-driven tools are making this easier than ever, helping brands understand consumer behavior and optimize their strategies.</p>', 'Top Trends Shaping the Future of E-Commerce in 2026', 'Top Trends Shaping the Future of E-Commerce in 2026', 'Top Trends Shaping the Future of E-Commerce in 2026', NULL, NULL, 13, 1, '/backend/files/TMywVpuAyWoRxqnNv44R.png', 1, '2026-01-08 16:42:27', '2026-01-08 16:42:27'),
(9, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(11, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(12, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(13, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(14, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(15, 'Another key trend is mobile commerce (m-commerce)', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(16, 'Another key trend is mobile commerce (m-commerce)  5', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(17, 'Another key trend is mobile commerce (m-commerce) 10', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42'),
(18, 'Another key trend is mobile commerce (m-commerce) 11', 'another-key-trend-is-mobile-commerce-m-commerce-', '', '<p>Another key trend is <strong>mobile commerce (m-commerce)</strong>. With the majority of online shopping now happening on smartphones, mobile-optimized websites and apps are essential. Fast-loading pages, easy navigation, and secure checkout options are no longer optional—they are expected by consumers.</p><p>Sustainability is also shaping e-commerce. More shoppers are choosing brands that prioritize eco-friendly packaging, ethical sourcing, and transparent supply chains. Highlighting these initiatives can not only improve brand reputation but also attract conscious buyers.</p><p>Social commerce is growing rapidly as well. Platforms like Instagram, TikTok, and Facebook now allow users to shop directly from posts, reels, and ads. Leveraging social media for product discovery and engagement can dramatically increase sales and brand visibility.</p>', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', 'Another key trend is mobile commerce (m-commerce)', NULL, NULL, 13, 1, '/backend/files/Zmm4oH1epV3KtmZauaje.png', 1, '2026-01-08 16:43:42', '2026-01-08 16:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 1, '2025-10-11 19:01:22', '2025-10-11 13:01:35'),
(2, 'Terms & Conditions', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(4, 'Privacy Policy', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(5, 'Return Policy', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(12, 'FAQ', 1, '2025-11-16 05:09:19', '2025-11-16 05:09:19'),
(13, 'Blog', 1, '2026-01-08 16:32:30', '2026-01-08 16:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subcategoryId` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL COMMENT 'regular_price',
  `discount_price` decimal(10,2) DEFAULT NULL COMMENT 'discount_price',
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `first_update` int(11) NOT NULL DEFAULT 0 COMMENT '1=first update\r\n0=no update',
  `status` int(11) DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'V-Tech Rtv Vt 140b1 Se 56.8g', 'v-tech-rtv-vt-140b1-se-568g', '<p>V-Tech Rtv Vt 140b1 Se 56.8g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 140b1 Se 56.8g', 'V-Tech Rtv Vt 140b1 Se 56.8g', 'V-Tech Rtv Vt 140b1 Se 56.8g', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768582449_v-tech-rtv-vt-140b1-se-568g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:54:09'),
(2, 'V-Tech Rtv Vt 141', 'v-tech-rtv-vt-141', '<p>V-Tech Rtv Vt 141</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 141', 'V-Tech Rtv Vt 141', 'V-Tech Rtv Vt 141', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768582473_v-tech-rtv-vt-141.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:54:33'),
(3, 'V-Tech Rtv Vt 144 20 g', 'v-tech-rtv-vt-144-20-g', '<p>V-Tech Rtv Vt 144 20 g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 144 20 g', 'V-Tech Rtv Vt 144 20 g', 'V-Tech Rtv Vt 144 20 g', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582499_v-tech-rtv-vt-144-20-g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:54:59'),
(4, 'V-Tech Rtv Vt 144', 'v-tech-rtv-vt-144', '<p>V-Tech Rtv Vt 144</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 144', 'V-Tech Rtv Vt 144', 'V-Tech Rtv Vt 144', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768582522_v-tech-rtv-vt-144.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:55:22'),
(5, 'V-Tech Rtv Vt 151 Se 70 g', 'v-tech-rtv-vt-151-se-70-g', '<p>V-Tech Rtv Vt 151 Se 70 g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 151 Se 70 g', 'V-Tech Rtv Vt 151 Se 70 g', 'V-Tech Rtv Vt 151 Se 70 g', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768582551_v-tech-rtv-vt-151-se-70-g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:55:51'),
(7, 'V-Tech Rtv Vt 152 Se 70 g', 'v-tech-rtv-vt-152-se-70-g', '<p>V-Tech Rtv Vt 152 Se 70 g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 152 Se 70 g', 'V-Tech Rtv Vt 152 Se 70 g', 'V-Tech Rtv Vt 152 Se 70 g', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768582411_v-tech-rtv-vt-152-se-70-g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:53:31'),
(8, 'V-Tech Rtv Vt 161 32g', 'v-tech-rtv-vt-161-32g', '<p>V-Tech Rtv Vt 161 32g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 161 32g', 'V-Tech Rtv Vt 161 32g', 'V-Tech Rtv Vt 161 32g', NULL, NULL, 100.00, 60.00, NULL, 100, NULL, NULL, 'uploads/products/1768582584_v-tech-rtv-vt-161-32g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:56:24'),
(9, 'V-Tech Rtv Vt 173 32 g', 'v-tech-rtv-vt-173-32-g', '<p>V-Tech Rtv Vt 173 32 g</p>', 25, 2, 153, 151, 'V-Tech Rtv Vt 173 32 g', 'V-Tech Rtv Vt 173 32 g', 'V-Tech Rtv Vt 173 32 g', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582610_v-tech-rtv-vt-173-32-g.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:56:50'),
(10, 'Vital Band vt 420', 'vital-band-vt-420', '<p>Vital Band vt 420</p>', 25, 2, 153, 150, 'Vital Band vt 420', 'Vital Band vt 420', 'Vital Band vt 420', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582689_vital-band-vt-420.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:58:09'),
(11, 'V-Tech Vt 200 clear', 'v-tech-vt-200-clear', '<p>V-Tech Vt 200 clear</p>', 25, 2, 153, 150, 'V-Tech Vt 200 clear', 'V-Tech Vt 200 clear', 'V-Tech Vt 200 clear', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582722_v-tech-vt-200-clear.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:58:42'),
(12, 'V-Tech Vt 201 clear', 'v-tech-vt-201-clear', '<p>V-Tech Vt 201 clear</p>', 25, 2, 153, 150, 'V-Tech Vt 201 clear', 'V-Tech Vt 201 clear', 'V-Tech Vt 201 clear', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582754_v-tech-vt-201-clear.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:59:14'),
(13, 'V-Tech Vt 220  White', 'v-tech-vt-220-white', '', 25, 2, 153, 150, 'V-Tech Vt 220  White', 'V-Tech Vt 220  White', 'V-Tech Vt 220  White', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582792_v-tech-vt-220-white.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 16:59:52'),
(14, 'Vtech Vt 224', 'vtech-vt-224', '<p>Vtech Vt 224</p>', 25, 2, 153, 150, 'Vtech Vt 224', 'Vtech Vt 224', 'Vtech Vt 224', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582819_vtech-vt-224.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 17:00:19'),
(15, 'V-Tech Vt 230  White', 'v-tech-vt-230-white', '<p>V-Tech Vt 230 &nbsp;White</p>', 25, 2, 153, 150, 'V-Tech Vt 230  White', 'V-Tech Vt 230  White', 'V-Tech Vt 230  White', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582845_v-tech-vt-230-white.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 17:00:45'),
(16, 'V-Tech Vt 620 sg', 'v-tech-vt-620-sg', '<p>V-Tech Vt 620 sg</p>', 25, 2, 153, 150, 'V-Tech Vt 620 sg', 'V-Tech Vt 620 sg', 'V-Tech Vt 620 sg', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582877_v-tech-vt-620-sg.png', 1, 1, NULL, '2026-01-15 21:41:28', '2026-01-16 17:01:17'),
(17, 'WD-40 Specialist Silicone 360 ML', 'wd-40-specialist-silicone-360-ml', NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:31', '2026-01-15 21:41:31'),
(18, 'WD-40 Specialsit Air Condition Cleaner', 'wd-40-specialsit-air-condition-cleaner', NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:31', '2026-01-15 21:41:31'),
(19, 'WD-40 Specialsit Belt Dressing', 'wd-40-specialsit-belt-dressing', NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:31', '2026-01-15 21:41:31'),
(20, 'WD-40 Specialsit Contact Cleaner', 'wd-40-specialsit-contact-cleaner', NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:31', '2026-01-15 21:41:31'),
(21, 'WD-40 Specilaist Brakes And Parts Cleaner 450 Ml', 'wd-40-specilaist-brakes-and-parts-cleaner-450-ml', NULL, 24, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:31', '2026-01-15 21:41:31'),
(22, 'WD 40 Mup 4 liter', 'wd-40-mup-4-liter', NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:37', '2026-01-15 21:41:37'),
(23, 'WD-40 277 ML Mup', 'wd-40-277-ml-mup', NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:37', '2026-01-15 21:41:37'),
(24, 'WD-40 382 ML Mup', 'wd-40-382-ml-mup', NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:37', '2026-01-15 21:41:37'),
(25, 'WD-40 412 ML Smart Straw', 'wd-40-412-ml-smart-straw', NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 21:41:37', '2026-01-15 21:41:37'),
(26, 'Ball Pein Hammer 08 oz', 'ball-pein-hammer-08-oz', '<p>Ball Pein Hammer 08 oz</p>', 28, 1, 1, 102, 'Ball Pein Hammer 08 oz', 'Ball Pein Hammer 08 oz', 'Ball Pein Hammer 08 oz', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498793_ball-pein-hammer-08-oz.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:40:36'),
(27, 'Chipping hammer with wooden handle', 'chipping-hammer-with-wooden-handle', '<p>Chipping hammer with wooden handle</p>', 28, 1, 1, 102, 'Chipping hammer with wooden handle', 'Chipping hammer with wooden handle', 'Chipping hammer with wooden handle', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498823_chipping-hammer-with-wooden-handle.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:40:23'),
(28, 'Claw Hammer with fiber glass 160 z 08 oz', 'claw-hammer-with-fiber-glass-160-z-08-oz', '<p>Claw Hammer with fiber glass 160 z 08 oz</p>', 28, 1, 1, 102, 'Claw Hammer with fiber glass 160 z 08 oz', 'Claw Hammer with fiber glass 160 z 08 oz', 'Claw Hammer with fiber glass 160 z 08 oz', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498860_claw-hammer-with-fiber-glass-160-z-08-oz.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:41:00'),
(29, 'Fiber glass handle', 'fiber-glass-handle', '<p>Fiber glass handle</p>', 28, 1, 1, 102, 'Fiber glass handle', 'Fiber glass handle', 'Fiber glass handle', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498882_fiber-glass-handle.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:41:22'),
(30, 'Machinist hammer with wooden handle', 'machinist-hammer-with-wooden-handle', '<p>Machinist hammer with wooden handle</p>', 28, 1, 1, 102, 'Machinist hammer with wooden handle', 'machinist hammer with wooden handle', 'machinist hammer with wooden handle', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498917_machinist-hammer-with-wooden-handle.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:41:57'),
(31, 'Rubber mallat hammer with with fiber glass handle', 'rubber-mallat-hammer-with-with-fiber-glass-handle', '<p>Rubber mallat hammer with with fiber glass handle</p>', 28, 1, 1, 102, 'Rubber mallat hammer with with fiber glass handle', 'Rubber mallat hammer with with fiber glass handle', 'Rubber mallat hammer with with fiber glass handle', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498997_rubber-mallat-hammer-with-with-fiber-glass-handle.png', 1, 1, NULL, '2026-01-15 22:05:37', '2026-01-15 17:43:17'),
(32, 'Cup Wire Brush 3 inchi', 'cup-wire-brush-3-inchi', '<p>Cup Wire Brush 3 inchi</p>', 27, 4, 1, 104, 'Cup Wire Brush 3 inchi', 'Cup Wire Brush 3 inchi', 'Cup Wire Brush 3 inchi', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499747_cup-wire-brush-3-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:55:47'),
(33, 'Paint Brush Solid Filament with plastic handle', 'paint-brush-solid-filament-with-plastic-handle', '<p>Paint Brush Solid Filament with plastic handle</p>', 27, 4, 1, 104, 'Paint Brush Solid Filament with plastic handle', 'Paint Brush Solid Filament with plastic handle', 'Paint Brush Solid Filament with plastic handle', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499776_paint-brush-solid-filament-with-plastic-handle.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:56:16'),
(34, 'Roller brush 4 inchi white', 'roller-brush-4-inchi-white', '<p>roller brush 4 inchi white</p>', 27, 4, 1, 104, 'Roller brush 4 inchi white', 'roller brush 4 inchi white', 'roller brush 4 inchi white', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499810_roller-brush-4-inchi-white.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:56:50'),
(35, 'Roller brush 4 inchi yellow', 'roller-brush-4-inchi-yellow', '<p>Roller brush 4 inchi yellow</p>', 27, 4, 1, 104, 'Roller brush 4 inchi yellow', 'Roller brush 4 inchi yellow', 'Roller brush 4 inchi yellow', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499860_roller-brush-4-inchi-yellow.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:57:40'),
(36, 'Roller brush luxary 9 inchi', 'roller-brush-luxary-9-inchi', '<p>Roller brush luxary 9 inchi</p>', 27, 4, 1, 104, 'Roller brush luxary 9 inchi', 'Roller brush luxary 9 inchi', 'Roller brush luxary 9 inchi', NULL, NULL, 1000.00, 200.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499893_roller-brush-luxary-9-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:58:14'),
(37, 'Roller Handle', 'roller-handle', '<p>Roller Handle</p>', 27, 4, 1, 104, 'Roller Handle', 'Roller Handle', 'Roller Handle', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499926_roller-handle.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:58:46'),
(38, 'Shovel Steel handel round shape', 'shovel-steel-handel-round-shape', '<p>Shovel Steel handel round shape</p>', 27, 4, 1, 104, 'Shovel Steel handel round shape', 'Shovel Steel handel round shape', 'Shovel Steel handel round shape', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499959_shovel-steel-handel-round-shape.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:59:19'),
(39, 'Test Pencil', 'test-pencil', '<p>Test Pencil</p>', 27, 4, 1, 104, 'Test Pencil', 'Test Pencil', 'Test Pencil', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499992_test-pencil.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:59:52'),
(40, 'Tools Box Set 38 pc', 'tools-box-set-38-pc', '<p>Tools Box Set 38 pc</p>', 27, 4, 1, 104, 'Tools Box Set 38 pc', 'Tools Box Set 38 pc', 'Tools Box Set 38 pc', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500022_tools-box-set-38-pc.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 18:00:22'),
(41, 'Hand Saw Yellow black handle with fire teeth', 'hand-saw-yellow-black-handle-with-fire-teeth', '<p>Hand Saw Yellow black handle with fire teeth</p>', 27, 4, 1, 103, 'Hand Saw Yellow black handle with fire teeth', 'Hand Saw Yellow black handle with fire teeth', 'Hand Saw Yellow black handle with fire teeth', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499520_hand-saw-yellow-black-handle-with-fire-teeth.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:52:00'),
(42, 'Hack saw frame adjustable  black', 'hack-saw-frame-adjustable-black', '<p>Hack saw frame adjustable &nbsp;black</p>', 27, 4, 1, 103, 'Hack saw frame adjustable  black', 'Hack saw frame adjustable  black', 'Hack saw frame adjustable  black', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499407_hack-saw-frame-adjustable-black.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:50:07'),
(43, 'Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi', 'hand-saw-wooden-handle-with-fire-teeth-16-and-18-inchi', '<p>Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi</p>', 27, 4, 1, 103, 'Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi', 'Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi', 'Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499469_hand-saw-wooden-handle-with-fire-teeth-16-and-18-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:51:09'),
(44, 'Hac Saw Frame 834 Straigt', 'hac-saw-frame-834-straigt', '<p>Hac Saw Frame 834 Straigt</p>', 27, 4, 1, 103, 'Hac Saw Frame 834 Straigt', 'Hac Saw Frame 834 Straigt', 'Hac Saw Frame 834 Straigt', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499327_hac-saw-frame-834-straigt.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:48:47'),
(45, 'Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36', 'aluminium-level-sizes-9-12-14-16-18-20-22-24-30-36', '<p>Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36</p>', 27, 4, 1, 96, 'Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36', 'Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36', 'Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36', NULL, NULL, 1000.00, 50.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493286_aluminium-level-sizes-9-12-14-16-18-20-22-24-30-36.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:08:06'),
(47, '4 inchi diamond cup grinding disk', '4-inchi-diamond-cup-grinding-disk', '<p>4 inchi diamond cup grinding disk</p>', 27, 4, 1, 97, '4 inchi diamond cup grinding disk', '4 inchi diamond cup grinding disk', '4 inchi diamond cup grinding disk', NULL, NULL, 1000.00, 50.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493339_4-inchi-diamond-cup-grinding-disk.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:08:59'),
(48, '4 inchi diamond cutter', '4-inchi-diamond-cutter', '<p>4 inchi diamond cutter</p>', 27, 4, 1, 97, '4 inchi diamond cutter', '4 inchi diamond cutter', '4 inchi diamond cutter', NULL, NULL, 1000.00, 60.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493374_4-inchi-diamond-cutter.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:09:34'),
(49, '4 inchi Diamond cutter prof quality', '4-inchi-diamond-cutter-prof-quality', '<p>4 inchi Diamond cutter prof quality</p>', 27, 4, 1, 97, '4 inchi Diamond cutter prof quality', '4 inchi Diamond cutter prof quality', '4 inchi Diamond cutter prof quality', NULL, NULL, 1000.00, 250.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493412_4-inchi-diamond-cutter-prof-quality.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:10:12'),
(50, '4 inchi diamond cutter standard quality cutting and laing saw', '4-inchi-diamond-cutter-standard-quality-cutting-and-laing-saw', '<p>4 inchi diamond cutter standard quality cutting and laing saw</p>', 27, 4, 1, 97, '4 inchi diamond cutter standard quality cutting and laing saw', '4 inchi diamond cutter standard quality cutting and laing saw', '4 inchi diamond cutter standard quality cutting and laing saw', NULL, NULL, 1000.00, 330.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493448_4-inchi-diamond-cutter-standard-quality-cutting-and-laing-saw.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:10:48'),
(51, 'Diamond cutter 7 inchi seg cutting professional qiality', 'diamond-cutter-7-inchi-seg-cutting-professional-qiality', '<p>Diamond cutter 7 inchi seg cutting professional qiality</p>', 27, 4, 1, 97, 'Diamond cutter 7 inchi seg cutting professional qiality', 'Diamond cutter 7 inchi seg cutting professional qiality', 'Diamond cutter 7 inchi seg cutting professional qiality', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493480_diamond-cutter-7-inchi-seg-cutting-professional-qiality.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:11:20'),
(52, 'diamond cutter multi prof quality', 'diamond-cutter-multi-prof-quality', '<p>Diamond cutter multi prof quality</p>', 27, 4, 1, 97, 'diamond cutter multi prof quality', 'diamond cutter multi prof quality', 'diamond cutter multi prof quality', NULL, NULL, 1000.00, 250.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493513_diamond-cutter-multi-prof-quality.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:11:53'),
(53, 'Metal Cutting disk 14 inchi 16 inchii  4 inchi', 'metal-cutting-disk-14-inchi-16-inchii-4-inchi', '<p>Metal Cutting disk 14 inchi 16 inchii &nbsp;4 inchi</p>', 27, 4, 1, 97, 'Metal Cutting disk 14 inchi 16 inchii  4 inchi', 'Metal Cutting disk 14 inchi 16 inchii  4 inchi', 'Metal Cutting disk 14 inchi 16 inchii  4 inchi', NULL, NULL, 1000.00, 250.00, NULL, 1000, NULL, NULL, 'uploads/products/1768493545_metal-cutting-disk-14-inchi-16-inchii-4-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 16:12:25'),
(54, 'Axe ( Bir Brand) Premium Quality  small', 'axe-bir-brand-premium-quality-small', '<p>Axe ( Bir Brand) Premium Quality &nbsp;small</p>', 27, 4, 1, 98, 'Axe ( Bir Brand) Premium Quality  small', 'Axe ( Bir Brand) Premium Quality  small', 'Axe ( Bir Brand) Premium Quality  small', NULL, NULL, 1000.00, 200.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498232_axe-bir-brand-premium-quality-small.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:30:32'),
(55, 'Tiles cutter', 'tiles-cutter', '<p>Tiles cutter</p>', 27, 4, 1, 98, 'Tiles cutter', 'Tiles cutter', 'Tiles cutter', NULL, NULL, 1000.00, 540.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498542_tiles-cutter.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:35:42'),
(56, 'Tin Snip 10 inchi and 12 inchi', 'tin-snip-10-inchi-and-12-inchi', '<p>Tin Snip 10 inchi and 12 inchi</p>', 27, 4, 1, 98, 'Tin Snip 10 inchi and 12 inchi', 'Tin Snip 10 inchi and 12 inchi', 'Tin Snip 10 inchi and 12 inchi', NULL, NULL, 1000.00, 140.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498578_tin-snip-10-inchi-and-12-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:36:18'),
(57, 'Drill Bit  - Bir Tool', 'drill-bit-bir-tool', '<p>Drill Bit &nbsp;- Bir Tool</p>', 27, 4, 1, 98, 'Drill Bit  - Bir Tool', 'Drill Bit  - Bir Tool', 'Drill Bit  - Bir Tool', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498702_drill-bit-bir-tool.png', 1, 0, NULL, '2026-01-15 22:05:43', '2026-01-15 17:38:22'),
(58, 'Drill bit another', 'drill-bit-another', '<p>Drill bit another</p>', 27, 4, 1, 98, 'Drill bit another', 'Drill bit another', 'Drill bit another', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498754_drill-bit-another.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:39:14'),
(59, 'Bolt Cutter 12 18 24 36@sizes', 'bolt-cutter-12-18-24-36-at-sizes', '<p>Bolt Cutter 12 18 24 36@sizes</p>', 27, 4, 1, 98, 'Bolt Cutter 12 18 24 36@sizes', 'Bolt Cutter 12 18 24 36@sizes', 'Bolt Cutter 12 18 24 36@sizes', NULL, NULL, 1000.00, 34.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498300_bolt-cutter-12-18-24-36-at-sizes.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:31:40'),
(60, 'Carpenter Pincher 7 inchi 8 inchi', 'carpenter-pincher-7-inchi-8-inchi', '<p>Carpenter Pincher 7 inchi 8 inchi</p>', 27, 4, 1, 98, 'Carpenter Pincher 7 inchi 8 inchi', 'Carpenter Pincher 7 inchi 8 inchi', 'Carpenter Pincher 7 inchi 8 inchi', NULL, NULL, 1000.00, 45.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498334_carpenter-pincher-7-inchi-8-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:32:14'),
(61, 'Cutter knif 2 extra balde', 'cutter-knif-2-extra-balde', '<p>Cutter knif 2 extra balde</p>', 27, 4, 1, 98, 'Cutter knif 2 extra balde', 'Cutter knif 2 extra balde', 'Cutter knif 2 extra balde', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498379_cutter-knif-2-extra-balde.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:32:59'),
(63, 'Flad disk 60 grit 80 grit', 'flad-disk-60-grit-80-grit', '<p>Flad disk 60 grit 80 grit</p>', 27, 4, 1, 97, 'Flad disk 60 grit 80 grit', 'Flad disk 60 grit 80 grit', 'Flad disk 60 grit 80 grit', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498422_flad-disk-60-grit-80-grit.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:33:42'),
(64, 'Glass cutter black golde white colour', 'glass-cutter-black-golde-white-colour', '<p>Glass cutter black golde white colour</p>', 27, 4, 1, 98, 'Glass cutter black golde white colour', 'Glass cutter black golde white colour', 'Glass cutter black golde white colour', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498484_glass-cutter-black-golde-white-colour.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:34:44'),
(65, 'Scissor 8 inchi', 'scissor-8-inchi', '<p>Scissor 8 inchi</p>', 27, 4, 1, 98, 'Scissor 8 inchi', 'Scissor 8 inchi', 'Scissor 8 inchi', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768498514_scissor-8-inchi.png', 1, 1, NULL, '2026-01-15 22:05:43', '2026-01-15 17:35:14'),
(66, '2 pces lock installation Kit', '2-pces-lock-installation-kit', '<p>2 pces lock installation Kit</p>', 26, 4, 1, 103, '2 pces lock installation Kit', '2 pces lock installation Kit', '2 pces lock installation Kit', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499038_2-pces-lock-installation-kit.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:43:58'),
(67, '5 pcs hole saw set', '5-pcs-hole-saw-set', '<p>5 pcs hole saw set</p>', 26, 4, 1, 103, '5 pcs hole saw set', '5 pcs hole saw set', '5 pcs hole saw set', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499079_5-pcs-hole-saw-set.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:44:39'),
(68, '5 pcs JIg Saw Blade', '5-pcs-jig-saw-blade', '<p>5 pcs JIg Saw Blade</p>', 26, 4, 1, 103, '5 pcs JIg Saw Blade', '5 pcs JIg Saw Blade', '5 pcs JIg Saw Blade', NULL, NULL, 1000.00, 140.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499120_5-pcs-jig-saw-blade.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:45:20'),
(69, '16 pcs holes saw set', '16-pcs-holes-saw-set', '<p>16 pcs holes saw set</p>', 26, 4, 1, 103, '16 pcs holes saw set', '16 pcs holes saw set', '16 pcs holes saw set', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499173_16-pcs-holes-saw-set.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:46:13'),
(70, '5 pcs lock installation kit', '5-pcs-lock-installation-kit', '<p>5 pcs lock installation kit</p>', 26, 4, 1, 103, '5 pcs lock installation kit', '5 pcs lock installation kit', '5 pcs lock installation kit', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499143_5-pcs-lock-installation-kit.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:45:43'),
(71, 'Circular Saw Blade', 'circular-saw-blade', '<p>Circular Saw Blade</p>', 26, 4, 1, 103, 'Circular Saw Blade', 'Circular Saw Blade', 'Circular Saw Blade', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499230_circular-saw-blade.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:47:10'),
(72, 'Chisel for wood', 'chisel-for-wood', '<p>Chisel for wood</p>', 26, 4, 1, 103, 'Chisel for wood', 'Chisel for wood', 'Chisel for wood', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499203_chisel-for-wood.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:46:43'),
(74, 'Compass Saw ( plastic handle) 14 inchi', 'compass-saw-plastic-handle-14-inchi', '<p>Compass Saw ( plastic handle) 14 inchi</p>', 26, 4, 1, 103, 'Compass Saw ( plastic handle) 14 inchi', 'Compass Saw ( plastic handle) 14 inchi', 'Compass Saw ( plastic handle) 14 inchi', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499273_compass-saw-plastic-handle-14-inchi.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:47:53'),
(75, 'Electrode Holder 500a', 'electrode-holder-500a', '<p>Electrode Holder 500a</p>', 26, 4, 1, 103, 'Electrode Holder 500a', 'Electrode Holder 500a', 'Electrode Holder 500a', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499301_electrode-holder-500a.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:48:21'),
(76, 'Rander Fall  iron planner 1.5', 'rander-fall-iron-planner-15', '<p>Rander Fall &nbsp;iron planner 1.5</p>', 26, 4, 1, 103, 'Rander Fall  iron planner 1.5', 'Rander Fall  iron planner 1.5', 'Rander Fall  iron planner 1.5', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499549_rander-fall-iron-planner-15.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:52:29'),
(78, 'Hack Saw blade', 'hack-saw-blade', '<p>Hack Saw blade</p>', 26, 4, 1, 103, 'Hack Saw blade', 'Hack Saw blade', 'Hack Saw blade', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499368_hack-saw-blade.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:49:28'),
(79, 'LN KEY', 'ln-key', '<p>LN KEY</p>', 26, 4, 1, 105, 'LN KEY', 'LN KEY', 'LN KEY', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500071_ln-key.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:01:11'),
(81, 'Piller', 'piller', '<p>Piller</p>', 26, 4, 1, 109, 'Piller', 'Piller', 'Piller', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500434_piller.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:07:14'),
(83, 'Professional tools', 'professional-tools', '<p>Professional tools</p>', 26, 4, 1, 156, 'Professional tools', 'Professional tools', 'Professional tools', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500668_professional-tools.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:11:08'),
(84, 'Rivet Gun Gold Color 15 Inchi', 'rivet-gun-gold-color-15-inchi', '<p>Rivet Gun</p>', 26, 4, 1, 111, 'Rivet Gun Gold Color 15 Inchi', 'Rivet Gun', 'Rivet Gun', NULL, NULL, 1000.00, 355.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500741_rivet-gun-gold-color-15-inchi.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:12:21'),
(85, 'Silicon gun', 'silicon-gun', NULL, 26, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000.00, NULL, NULL, 1000, NULL, NULL, NULL, 0, 0, NULL, '2026-01-15 22:05:46', '2026-01-15 22:05:46'),
(86, 'Glue Gun 40 w & 60 w', 'glue-gun-40-w-60-w', '<p>Glue Gun 40 w &amp; 60 w</p>', 26, 4, 1, 111, 'Glue Gun 40 w & 60 w', 'Glue Gun 40 w & 60 w', 'Glue Gun 40 w & 60 w', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500709_glue-gun-40-w-60-w.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:11:49'),
(90, 'Combination spanner chorme', 'combination-spanner-chorme', '<p>Combination spanner chorme</p>', 26, 4, 1, 114, 'Combination spanner chorme', 'Combination spanner chorme', 'Combination spanner chorme', NULL, NULL, 1000.00, 200.00, NULL, 1000, NULL, NULL, 'uploads/products/1768501902_combination-spanner-chorme.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:31:42'),
(91, 'Spanner double right bright chorme', 'spanner-double-right-bright-chorme', '<p>Spanner double right bright chorme</p>', 26, 4, 1, 114, 'Spanner double right bright chorme', 'Spanner double right bright chorme', 'Spanner double right bright chorme', NULL, NULL, 1000.00, 355.00, NULL, 1000, NULL, NULL, 'uploads/products/1768501951_spanner-double-right-bright-chorme.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:32:31'),
(92, 'Measurement Tape 3m and 5 m dx 09', 'measurement-tape-3m-and-5-m-dx-09', '<p>Measurement Tape 3m and 5 m dx 09</p>', 26, 4, 1, 115, 'Measurement Tape 3m and 5 m dx 09', 'Measurement Tape 3m and 5 m dx 09', 'Measurement Tape 3m and 5 m dx 09', NULL, NULL, 1000.00, 500.00, NULL, 1000, NULL, NULL, 'uploads/products/1768501991_measurement-tape-3m-and-5-m-dx-09.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:33:11'),
(94, 'Measurement tape 3m and 5m a 70', 'measurement-tape-3m-and-5m-a-70', '<p>Measurement tape 3m and 5m a 70</p>', 26, 4, 1, 115, 'measurement tape 3m and 5m a 70', 'Measurement tape 3m and 5m a 70', 'measurement tape 3m and 5m a 70', NULL, NULL, 1000.00, 500.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502026_measurement-tape-3m-and-5m-a-70.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:33:46'),
(95, 'Measurement Tape 3m and 5m dx 37 and a69', 'measurement-tape-3m-and-5m-dx-37-and-a69', '<p>Measurement Tape 3m and 5m dx 37 and a69</p>', 26, 4, 1, 115, 'Measurement Tape 3m and 5m dx 37 and a69', 'Measurement Tape 3m and 5m dx 37 and a69', 'Measurement Tape 3m and 5m dx 37 and a69', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502078_measurement-tape-3m-and-5m-dx-37-and-a69.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:34:38'),
(96, 'Measurement Tape Hl 03 3m 5m (Nickle Blade)', 'measurement-tape-hl-03-3m-5m-nickle-blade', '<p>Measurement Tape Hl 03 3m 5m (Nickle Blade)</p>', 26, 4, 1, 115, 'Measurement Tape Hl 03 3m 5m (Nickle Blade)', 'Measurement Tape Hl 03 3m 5m (Nickle Blade)', 'Measurement Tape Hl 03 3m 5m (Nickle Blade)', NULL, NULL, 1000.00, 600.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502105_measurement-tape-hl-03-3m-5m-nickle-blade.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:35:05'),
(97, 'Measuremnt tape 3m and 5m a 70 3x16 non magnetic', 'measuremnt-tape-3m-and-5m-a-70-3x16-non-magnetic', '<p>Measuremnt tape 3m and 5m a 70 3x16 non magnetic</p>', 26, 4, 1, 115, 'Measuremnt tape 3m and 5m a 70 3x16 non magnetic', 'Measuremnt tape 3m and 5m a 70 3x16 non magnetic', 'Measuremnt tape 3m and 5m a 70 3x16 non magnetic', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502132_measuremnt-tape-3m-and-5m-a-70-3x16-non-magnetic.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:35:32'),
(98, 'Steel Tape 15m & 30 M', 'steel-tape-15m-30-m', '<p>Steel Tape 15m &amp; 30 M</p>', 26, 4, 1, 115, 'Steel Tape 15m & 30 M', 'Steel Tape 15m & 30 M', 'Steel Tape 15m & 30 M', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502190_steel-tape-15m-30-m.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:36:30'),
(101, 'Socket Set', 'socket-set', '<p>Socket Set</p>', 26, 4, 1, 113, 'Socket Set', 'Socket Set', 'Socket Set', NULL, NULL, 1000.00, 500.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500840_socket-set.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:14:00'),
(102, 'Adjustable wrench  green handle', 'adjustable-wrench-green-handle', '<p>Adjustable wrench &nbsp;green handle</p>', 26, 4, 1, 116, 'Adjustable wrench  green handle', 'Adjustable wrench  green handle', 'Adjustable wrench  green handle', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502218_adjustable-wrench-green-handle.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:36:58'),
(103, 'Adjustable Wrench Multi Color Bir Professional', 'adjustable-wrench-multi-color-bir-professional', '<p>Adjustable Wrench Multi Color Bir Professional</p>', 26, 4, 1, 116, 'Adjustable Wrench Multi Color Bir Professional', 'Adjustable Wrench Multi Color Bir Professional', 'Adjustable Wrench Multi Color Bir Professional', NULL, NULL, 1000.00, 100.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502246_adjustable-wrench-multi-color-bir-professional.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:37:26'),
(104, 'Adjustable wrench red', 'adjustable-wrench-red', '<p>Adjustable wrench red</p>', 26, 4, 1, 116, 'Adjustable wrench red', 'Adjustable wrench red', 'Adjustable wrench red', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502266_adjustable-wrench-red.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:37:46'),
(105, 'L Handle Wrench 12X15 mm super', 'l-handle-wrench-12x15-mm-super', '<p>L Handle Wrench 12X15 mm super</p>', 26, 4, 1, 116, 'L Handle Wrench 12X15 mm super', 'L Handle Wrench 12X15 mm super', 'L Handle Wrench 12X15 mm super', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502290_l-handle-wrench-12x15-mm-super.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:38:10'),
(106, 'T Handle socket 10 mm 8mm', 't-handle-socket-10-mm-8mm', '', 26, 4, 1, 116, 'T Handle socket 10 mm 8mm', 'T Handle socket 10 mm 8mm', 'T Handle socket 10 mm 8mm', NULL, NULL, 1000.00, 50.00, NULL, 1000, NULL, NULL, 'uploads/products/1768502329_t-handle-socket-10-mm-8mm.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:38:49'),
(107, 'Screw Driver', 'screw-driver', '<p>Screw Driver</p>', 26, 4, 1, 112, 'Screw Driver', 'Screw Driver', 'Screw Driver', NULL, NULL, 1000.00, 300.00, NULL, 1000, NULL, NULL, 'uploads/products/1768500772_screw-driver.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 18:12:52'),
(108, 'Adjustable roller handle extension pole 5 inchi', 'adjustable-roller-handle-extension-pole-5-inchi', '<p>Adjustable roller handle extension pole 5 inchi</p>', 26, 4, 1, 104, 'Adjustable roller handle extension pole 5 inchi', 'Adjustable roller handle extension pole 5 inchi', 'Adjustable roller handle extension pole 5 inchi', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499638_adjustable-roller-handle-extension-pole-5-inchi.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:53:58'),
(109, 'Adjustable roller handle pro 9 inchi', 'adjustable-roller-handle-pro-9-inchi', '<p>Adjustable roller handle pro 9 inchi</p>', 26, 4, 1, 104, 'Adjustable roller handle pro 9 inchi', 'Adjustable roller handle pro 9 inchi', 'Adjustable roller handle pro 9 inchi', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499674_adjustable-roller-handle-pro-9-inchi.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:54:34'),
(110, 'Cup Hook 12 pcs set', 'cup-hook-12-pcs-set', '<p>Cup Hook 12 pcs set</p>', 26, 4, 1, 104, 'Cup Hook 12 pcs set', 'Cup Hook 12 pcs set', 'Cup Hook 12 pcs set', NULL, NULL, 1000.00, 350.00, NULL, 1000, NULL, NULL, 'uploads/products/1768499706_cup-hook-12-pcs-set.png', 1, 1, NULL, '2026-01-15 22:05:46', '2026-01-15 17:55:06'),
(111, 'Garden SCissor 10 inchi', 'garden-scissor-10-inchi', '<p>Garden SCissor 10 inchi</p>', 29, 3, 1, 98, 'Garden SCissor 10 inchi', 'Garden SCissor 10 inchi', 'Garden SCissor 10 inchi', NULL, NULL, 100.00, 450.00, NULL, 100, NULL, NULL, 'uploads/products/1768498660_garden-scissor-10-inchi.png', 1, 1, NULL, '2026-01-15 23:37:06', '2026-01-15 17:37:40'),
(112, 'Cross key pad lock', 'cross-key-pad-lock', '<p>Cross key pad lock</p>', 30, 2, 1, 108, 'Cross key pad lock', 'Cross key pad lock', 'Cross key pad lock', NULL, NULL, 100.00, 350.00, NULL, 100, NULL, NULL, 'uploads/products/1768500338_cross-key-pad-lock.png', 1, 1, NULL, '2026-01-16 00:04:38', '2026-01-15 18:05:38'),
(113, 'Snake key pad lock', 'snake-key-pad-lock', '<p>Snake key pad lock</p>', 30, 2, 1, 108, 'Snake key pad lock', 'Snake key pad lock', 'Snake key pad lock', NULL, NULL, 100.00, 300.00, NULL, 100, NULL, NULL, 'uploads/products/1768500389_snake-key-pad-lock.png', 1, 1, NULL, '2026-01-16 00:04:38', '2026-01-15 18:06:29'),
(114, 'P 1166 H 254 DAC BLACK AC', 'p-1166-h-254-dac-black-ac', '<p>P 1166 H 254 DAC BLACK AC</p>', 32, 3, 152, 146, 'P 1166 H 254 DAC BLACK AC', 'P 1166 H 254 DAC BLACK AC', 'P 1166 H 254 DAC BLACK AC', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580163_p-1166-h-254-dac-black-ac.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:16:03'),
(115, 'X 830 L 8040 MSN', 'x-830-l-8040-msn', '<p>X 830 L 8040 MSN</p>', 32, 3, 152, 146, 'X 830 L 8040 MSN', 'X 830 L 8040 MSN', 'X 830 L 8040 MSN', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768580323_x-830-l-8040-msn.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:18:43'),
(116, 'Z 9106 Z 96 ORB', 'z-9106-z-96-orb', '<p>Z 9106 Z 96 ORB</p>', 32, 3, 152, 166, 'Z 9106 Z 96 ORB', 'Z 9106 Z 96 ORB', 'Z 9106 Z 96 ORB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768580398_z-9106-z-96-orb.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:19:58'),
(117, 'UN KNOWN', 'un-known', '<p>UN KNOWN</p>', 32, 3, 152, 165, 'UN KNOWN', 'UN KNOWN', 'UN KNOWN', NULL, NULL, 100.00, 10.00, NULL, 100, NULL, NULL, 'uploads/products/1768580291_un-known.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:18:11'),
(118, '9325 536 BRED', '9325-536-bred', '<p>9325 536 BRED</p>', 32, 3, 152, 146, '9325 536 BRED', '9325 536 BRED', '9325 536 BRED', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579799_9325-536-bred.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:09:59'),
(120, '7312 SS DEAD BOLT DOUBLE', '7312-ss-dead-bolt-double', '<p>7312 SS DEAD BOLT DOUBLE</p>', 32, 3, 152, 144, '7312 SS DEAD BOLT DOUBLE', '7312 SS DEAD BOLT DOUBLE', '7312 SS DEAD BOLT DOUBLE', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768571866_7312-ss-dead-bolt-double.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 13:57:46'),
(121, '9302 E 16 MCF', '9302-e-16-mcf', '<p>9302 E 16 MCF</p>', 32, 3, 152, 146, '9302 E 16 MCF', '9302 E 16 MCF', '9302 E 16 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579736_9302-e-16-mcf.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 16:08:56'),
(122, 'D 812 SS DEAD BOLT SINGLE SQUARE', 'd-812-ss-dead-bolt-single-square', '<p>D 812 SS DEAD BOLT SINGLE SQUARE</p>', 32, 3, 152, 144, 'D 812 SS DEAD BOLT SINGLE SQUARE', 'D 812 SS DEAD BOLT SINGLE SQUARE', 'D 812 SS DEAD BOLT SINGLE SQUARE', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768571891_d-812-ss-dead-bolt-single-square.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 13:58:11'),
(123, 'Door chain', 'door-chain', '<p>door chain</p>', 32, 3, 152, 141, 'Door chain', 'door chain', 'door chain', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571926_door-chain.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 13:58:46'),
(124, 'XH 052 door closer vikars', 'xh-052-door-closer-vikars', '<p>xh 052 door closer vikars</p>', 32, 3, 152, 139, 'XH 052 door closer vikars', 'xh 052 door closer vikars', 'xh 052 door closer vikars', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768571971_xh-052-door-closer-vikars.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 13:59:31'),
(125, 'Vikar door knocer with viewer ac 728', 'vikar-door-knocer-with-viewer-ac-728', '<p>Vikar door knocer with viewer ac 728</p>', 32, 3, 152, 140, 'Vikar door knocer with viewer ac 728', 'Vikar door knocer with viewer ac 728', 'Vikar door knocer with viewer ac 728', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768572006_vikar-door-knocer-with-viewer-ac-728.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:00:06'),
(126, 'Vikar door knocer with viewer ac 729', 'vikar-door-knocer-with-viewer-ac-729', '<p>Vikar door knocer with viewer ac 729</p>', 32, 3, 152, 140, 'Vikar door knocer with viewer ac 729', 'Vikar door knocer with viewer ac 729', 'Vikar door knocer with viewer ac 729', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768572028_vikar-door-knocer-with-viewer-ac-729.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:00:28'),
(127, '888 DOOR STOPPER SS', '888-door-stopper-ss', '<p>door stopper</p>', 32, 3, 152, 143, '888 DOOR STOPPER SS', 'door stopper', 'door stopper', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572059_888-door-stopper-ss.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:00:59'),
(130, 'Door viewer with shutter', 'door-viewer-with-shutter', '<p>door viewer</p>', 32, 3, 152, 142, 'Door viewer with shutter', 'door viewer', 'door viewer', NULL, NULL, 100.00, 85.00, NULL, 100, NULL, NULL, 'uploads/products/1768572320_door-viewer-with-shutter.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:05:20'),
(132, 'drawer channel', 'drawer-channel', '<p>drawer channel</p>', 32, 3, 152, 139, 'drawer channel', 'drawer channel', 'drawer channel', NULL, NULL, 1000.00, 450.00, NULL, 1000, NULL, NULL, 'uploads/products/1768572456_drawer-channel.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:07:36'),
(133, 'PAD LOCK CR 6360 CROSS KEY', 'pad-lock-cr-6360-cross-key', '<p>PAD LOCK CR 6360 CROSS KEY</p>', 32, 3, 152, 161, 'PAD LOCK CR 6360 CROSS KEY', 'PAD LOCK CR 6360 CROSS KEY', 'PAD LOCK CR 6360 CROSS KEY', NULL, NULL, 1000.00, 500.00, NULL, 1000, NULL, NULL, 'uploads/products/1768573426_pad-lock-cr-6360-cross-key.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:23:46'),
(134, '1314 B BIKE PAD LOCK', '1314-b-bike-pad-lock', '<p>1314 B BIKE PAD LOCK</p>', 32, 3, 152, 161, '1314 B BIKE PAD LOCK', '1314 B BIKE PAD LOCK', '1314 B BIKE PAD LOCK', NULL, NULL, 1000.00, 555.00, NULL, 1000, NULL, NULL, 'uploads/products/1768573401_1314-b-bike-pad-lock.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:23:21'),
(135, 'PAD LOCK NP 60 MATT', 'pad-lock-np-60-matt', '<p>PAD LOCK NP 60 MATT</p>', 32, 3, 152, 161, 'PAD LOCK NP 60 MATT', 'PAD LOCK NP 60 MATT', 'PAD LOCK NP 60 MATT', NULL, NULL, 1000.00, 500.00, NULL, 1000, NULL, NULL, 'uploads/products/1768573447_pad-lock-np-60-matt.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:24:07'),
(137, 'GR 03 soft Pattern Rubber 6', 'gr-03-soft-pattern-rubber-6', '<p>GR 03 soft Pattern Rubber 6</p>', 32, 3, 152, 132, 'GR 03 soft Pattern Rubber 6', 'GR 03 soft Pattern Rubber 6', 'GR 03 soft Pattern Rubber 6', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573482_gr-03-soft-pattern-rubber-6.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:24:42'),
(138, 'SF 9501 a decoration machine 7', 'sf-9501-a-decoration-machine-7', '<p>sf 9501 a decoration machine 7</p>', 32, 3, 152, 132, 'SF 9501 a decoration machine 7', 'sf 9501 a decoration machine 7', 'sf 9501 a decoration machine 7', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573506_sf-9501-a-decoration-machine-7.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:25:06'),
(139, '310 RIM LOCK 12 KEY AC WITHOUT CHAIN', '310-rim-lock-12-key-ac-without-chain', '<p>310 RIM LOCK 12 KEY AC WITHOUT CHAIN</p>', 32, 3, 152, 137, '310 RIM LOCK 12 KEY AC WITHOUT CHAIN', '310 RIM LOCK 12 KEY AC WITHOUT CHAIN', '310 RIM LOCK 12 KEY AC WITHOUT CHAIN', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573538_310-rim-lock-12-key-ac-without-chain.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:25:38'),
(140, 'Round Lock ss sheet', 'round-lock-ss-sheet', '<p>Round Lock ss sheet</p>', 32, 3, 152, 137, 'Round Lock ss sheet', 'Round Lock ss sheet', 'Round Lock ss sheet', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573573_round-lock-ss-sheet.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:26:13'),
(142, 'SS Door Hinge', 'ss-door-hinge', '<p>SS Door Hinge</p>', 32, 3, 152, 117, 'SS Door Hinge', 'SS Door Hinge', 'SS Door Hinge', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578966_ss-door-hinge.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 15:56:06'),
(144, 'Tower Bolt', 'tower-bolt', '<p>Tower Bolt</p>', 32, 3, 152, 119, 'Tower Bolt', 'Tower Bolt', 'Tower Bolt', NULL, NULL, 100.00, 54.00, NULL, 100, NULL, NULL, 'uploads/products/1768579037_tower-bolt.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 15:57:17'),
(145, 'Stainless Steel Screws', 'stainless-steel-screws', '<p>Stainless Steel Screws</p>', 32, 3, 152, 31, 'Stainless Steel Screws', 'Stainless Steel Screws', 'Stainless Steel Screws', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768579001_stainless-steel-screws.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 15:56:41'),
(146, 'Sponge kit', 'sponge-kit', '<p>Sponge Kit</p>', 32, 3, 152, 164, 'Sponge kit', 'sponge kit', 'sponge kit', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768578922_sponge-kit.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 15:55:22'),
(147, '138 22 SS DRAWER LOCK JB TYPE', '138-22-ss-drawer-lock-jb-type', '<p>138 22 SS DRAWER LOCK JB TYPE</p>', 32, 3, 152, 135, '138 22 SS DRAWER LOCK JB TYPE', '138 22 SS DRAWER LOCK JB TYPE', '138 22 SS DRAWER LOCK JB TYPE', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768572561_138-22-ss-drawer-lock-jb-type.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:09:21'),
(149, 'FURTINURE LOCK CP WAVE COMPUTER KEY', 'furtinure-lock-cp-wave-computer-key', '<p>FURTINURE LOCK CP WAVE COMPUTER KEY</p>', 32, 3, 152, 135, 'FURTINURE LOCK CP WAVE COMPUTER KEY', 'FURTINURE LOCK CP WAVE COMPUTER KEY', 'FURTINURE LOCK CP WAVE COMPUTER KEY', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768572633_furtinure-lock-cp-wave-computer-key.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:10:33'),
(150, 'Showcase lock', 'showcase-lock', '<p>showcase lock</p>', 32, 3, 152, 135, 'Showcase lock', 'showcase lock', 'showcase lock', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572664_showcase-lock.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:11:04'),
(151, '1.5 feet 8 Bar', '15-feet-8-bar', '<p>1.5 feet 8 Bar</p>', 32, 3, 152, 129, '1.5 feet 8 Bar', '1.5 feet 8 Bar', '1.5 feet 8 Bar', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572699_15-feet-8-bar.jpeg', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:11:39'),
(152, '1.5 fit 4 bar', '15-fit-4-bar', '<p>1.5 fit 4 bar</p>', 32, 3, 152, 129, '1.5 fit 4 bar', '1.5 fit 4 bar', '1.5 fit 4 bar', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572728_15-fit-4-bar.jpeg', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:12:08'),
(153, '2 fit 4 bar', '2-fit-4-bar', '<p>2 fit 4 bar</p>', 32, 3, 152, 129, '2 fit 4 bar', '2 fit 4 bar', '2 fit 4 bar', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572765_2-fit-4-bar.jpeg', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:12:45'),
(154, '2 fit 8 bar', '2-fit-8-bar', '<p>2 fit 8 bar</p>', 32, 3, 152, 129, '2 fit 8 bar', '2 fit 8 bar', '2 fit 8 bar', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572799_2-fit-8-bar.jpeg', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:13:19'),
(155, 'Hyfrolic and normal concealed hingle', 'hyfrolic-and-normal-concealed-hingle', '<p>hyfrolic and normal concealed hingle</p>', 32, 3, 152, 157, 'Hyfrolic and normal concealed hingle', 'hyfrolic and normal concealed hingle', 'hyfrolic and normal concealed hingle', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768572930_hyfrolic-and-normal-concealed-hingle.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:15:30'),
(156, 'Iron Drawer Lock With Steel Key', 'iron-drawer-lock-with-steel-key', '<p>Iron Drawer Lock with steel key</p>', 32, 3, 152, 121, 'Iron Drawer Lock With Steel Key', 'Iron Drawer Lock with steel key', 'Iron Drawer Lock with steel key', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768572963_iron-drawer-lock-with-steel-key.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:16:03'),
(157, 'Ab liver lock 6271', 'ab-liver-lock-6271', '<p>Ab liver lock 6271</p>', 32, 3, 152, 138, 'Ab liver lock 6271', 'Ab liver lock 6271', 'Ab liver lock 6271', NULL, NULL, 100.00, 56.00, NULL, 100, NULL, NULL, 'uploads/products/1768573017_ab-liver-lock-6271.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:16:57'),
(158, 'Black liver lock 6271', 'black-liver-lock-6271', '<p>black liver lock 6271</p>', 32, 3, 152, 138, 'Black liver lock 6271', 'black liver lock 6271', 'black liver lock 6271', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573048_black-liver-lock-6271.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:17:28');
INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(159, 'SS liver lock 6271', 'ss-liver-lock-6271', '<p>ss liver lock 6271</p>', 32, 3, 152, 138, 'SS liver lock 6271', 'ss liver lock 6271', 'ss liver lock 6271', NULL, NULL, 100.00, 55.00, NULL, 100, NULL, NULL, 'uploads/products/1768573074_ss-liver-lock-6271.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:17:54'),
(160, 'XX liver lock 6211', 'xx-liver-lock-6211', '<p>xx liver lock 6211</p>', 32, 3, 152, 138, 'XX liver lock 6211', 'xx liver lock 6211', 'xx liver lock 6211', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573095_xx-liver-lock-6211.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:18:15'),
(161, 'LPG Regulator orange 22 mm', 'lpg-regulator-orange-22-mm', '', 32, 3, 152, 134, 'LPG Regulator orange 22 mm', 'LPG Regulator orange 22 mm', 'LPG Regulator orange 22 mm', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768573124_lpg-regulator-orange-22-mm.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:18:44'),
(162, 'Lpg regulator silver 22 mm', 'lpg-regulator-silver-22-mm', '<p>Lpg regulator silver 22 mm</p>', 32, 3, 152, 134, 'Lpg regulator silver 22 mm', 'Lpg regulator silver 22 mm', 'Lpg regulator silver 22 mm', NULL, NULL, 100.00, 66.00, NULL, 100, NULL, NULL, 'uploads/products/1768573146_lpg-regulator-silver-22-mm.png', 1, 1, NULL, '2026-01-16 19:43:03', '2026-01-16 14:19:06'),
(163, '6 inchi Piano Hinge', '6-inchi-piano-hinge', '<p>6 inchi Piano Hinge</p>', 31, 2, 152, 120, '6 inchi Piano Hinge', '6 inchi Piano Hinge', '6 inchi Piano Hinge', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571130_6-inchi-piano-hinge.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:45:30'),
(164, '5 Steps 150 kg capacity', '5-steps-150-kg-capacity', '<p>5 Steps 150 kg capacity</p>', 31, 2, 152, 120, '5 Steps 150 kg capacity', '5 Steps 150 kg capacity', '5 Steps 150 kg capacity', NULL, NULL, 100.00, 95.00, NULL, 100, NULL, NULL, 'uploads/products/1768571180_5-steps-150-kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:46:20'),
(165, '6 Steps 150 kg capacity', '6-steps-150-kg-capacity', '<p>6 Steps 150 kg capacity</p>', 31, 2, 152, 120, '6 Steps 150 kg capacity', '6 Steps 150 kg capacity', '6 Steps 150 kg capacity', NULL, NULL, 100.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1768571244_6-steps-150-kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:47:24'),
(166, '7 steps 150 kg capacity', '7-steps-150-kg-capacity', '<p>7 steps 150 kg capacity</p>', 31, 2, 152, 120, '7 steps 150 kg capacity', '7 steps 150 kg capacity', '7 steps 150 kg capacity', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768571280_7-steps-150-kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:48:00'),
(167, '8 steps 150 kg capacity', '8-steps-150-kg-capacity', '<p>8 steps 150 kg capacity</p>', 31, 2, 152, 120, '8 steps 150 kg capacity', '8 steps 150 kg capacity', '8 steps 150 kg capacity', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768571378_8-steps-150-kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:49:38'),
(168, '9 Steps 150 kg capacity', '9-steps-150-kg-capacity', '<p>9 Steps 150 kg capacity</p>', 31, 2, 152, 120, '9 Steps 150 kg capacity', '9 Steps 150 kg capacity', '9 Steps 150 kg capacity', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768571440_9-steps-150-kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:50:40'),
(170, '6 Steps 180kg capacity', '6-steps-180kg-capacity', '<p>6 Steps 180kg capacity</p>', 31, 2, 152, 28, '6 Steps 180kg capacity', '6 Steps 180kg capacity', '6 Steps 180kg capacity', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768571537_6-steps-180kg-capacity.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:52:17'),
(171, '9 Steps', '9-steps', '<p>9 Steps</p>', 31, 2, 152, 28, '9 Steps', '9 Steps', '9 Steps', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571583_9-steps.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:53:03'),
(172, '5ftx8 Steps 200 kg', '5ftx8-steps-200-kg', '<p>5ftx8 Steps 200 kg</p>', 31, 2, 152, 27, '5ftx8 Steps 200 kg', '5ftx8 Steps 200 kg', '5ftx8 Steps 200 kg', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571633_5ftx8-steps-200-kg.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:53:53'),
(173, '6 ft10 steps 200 kg', '6-ft10-steps-200-kg', '<p>6 ft10 steps 200 kg</p>', 31, 2, 152, 27, '6 ft10 steps 200 kg', '6 ft10 steps 200 kg', '6 ft10 steps 200 kg', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571664_6-ft10-steps-200-kg.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:54:24'),
(174, '7ft 12 steps 200kg', '7ft-12-steps-200kg', '<p>7ft 12 steps 200kg</p>', 31, 2, 152, 27, '7ft 12 steps 200kg', '7ft 12 steps 200kg', '7ft 12 steps 200kg', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768571692_7ft-12-steps-200kg.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:54:52'),
(175, 'Brad Nails', 'brad-nails', '<p>Brad Nails</p>', 31, 2, 152, 32, 'Brad Nails', 'Brad Nails', 'Brad Nails', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571731_brad-nails.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 13:55:31'),
(176, '85 11 AC', '85-11-ac', '<p>85 11 AC</p>', 31, 2, 152, 146, '85 11 AC', '85 11 AC', '85 11 AC', NULL, NULL, 100.00, 18.00, NULL, 100, NULL, NULL, 'uploads/products/1768579166_85-11-ac.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 15:59:26'),
(177, '85 11 ORB', '85-11-orb', '<p>85 11 ORB</p>', 31, 2, 152, 146, '85 11 ORB', '85 11 ORB', '85 11 ORB', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579227_85-11-orb.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:00:27'),
(178, '85 11 MCF', '85-11-mcf', '<p>85 11 MCF</p>', 31, 2, 152, 146, '85 11 MCF', '85 11 MCF', '85 11 MCF', NULL, NULL, 100.00, 80.00, NULL, 100, NULL, NULL, 'uploads/products/1768579195_85-11-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 15:59:55'),
(181, '813 990 black ac', '813-990-black-ac', '<p>813 990 black ac</p>', 31, 2, 152, 146, '813 990 black ac', '813 990 black ac', '813 990 black ac', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579283_813-990-black-ac.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:01:23'),
(182, '1015 h 502 orb', '1015-h-502-orb', '<p>1015 h 502 orb</p>', 31, 2, 152, 146, '1015 h 502 orb', '1015 h 502 orb', '1015 h 502 orb', NULL, NULL, 100.00, 56.00, NULL, 100, NULL, NULL, 'uploads/products/1768579321_1015-h-502-orb.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:02:01'),
(183, '1232 A 1048 MCF', '1232-a-1048-mcf', '<p>1232 A 1048 MCF</p>', 31, 2, 152, 147, '1232 A 1048 MCF', '1232 A 1048 MCF', '1232 A 1048 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579383_1232-a-1048-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:03:03'),
(184, '1232 A 1048 MSN', '1232-a-1048-msn', '<p>1232 A 1048 MSN</p>', 31, 2, 152, 146, '1232 A 1048 MSN', '1232 A 1048 MSN', '1232 A 1048 MSN', NULL, NULL, 100.00, 52.00, NULL, 100, NULL, NULL, 'uploads/products/1768579423_1232-a-1048-msn.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:03:43'),
(185, '1232 A 1501 MCF', '1232-a-1501-mcf', '<p>1232 A 1501 MCF</p>', 31, 2, 152, 146, '1232 A 1501 MCF', '1232 A 1501 MCF', '1232 A 1501 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579471_1232-a-1501-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:04:31'),
(186, '1232 A 9044 MSN', '1232-a-9044-msn', '<p>1232 A 9044 MSN</p>', 31, 2, 152, 146, '1232 A 9044 MSN', '1232 A 9044 MSN', '1232 A 9044 MSN', NULL, NULL, 100.00, 25.00, NULL, 1000, NULL, NULL, 'uploads/products/1768579510_1232-a-9044-msn.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:05:10'),
(187, '1232A 1695 MSN', '1232a-1695-msn', '<p>1232A 1695 MSN</p>', 31, 2, 152, 146, '1232A 1695 MSN', '1232A 1695 MSN', '1232A 1695 MSN', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579543_1232a-1695-msn.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:05:43'),
(189, '1248  A 9043 MCF', '1248-a-9043-mcf', '<p>1248 &nbsp;A 9043 MCF</p>', 31, 2, 152, 146, '1248  A 9043 MCF', '1248  A 9043 MCF', '1248  A 9043 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579575_1248-a-9043-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:06:15'),
(190, '9252 301 SN CP', '9252-301-sn-cp', '<p>9252 301 SN CP</p>', 31, 2, 152, 146, '9252 301 SN CP', '9252 301 SN CP', '9252 301 SN CP', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579666_9252-301-sn-cp.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:07:46'),
(191, '9136 507 MCF', '9136-507-mcf', '<p>9136 507 MCF</p>', 31, 2, 152, 146, '9136 507 MCF', '9136 507 MCF', '9136 507 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579633_9136-507-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:07:13'),
(192, '9123 Z 454 MCF', '9123-z-454-mcf', '<p>9123 Z 454 MCF</p>', 31, 2, 152, 146, '9123 Z 454 MCF', '9123 Z 454 MCF', '9123 Z 454 MCF', NULL, NULL, 100.00, 20.00, NULL, 100, NULL, NULL, 'uploads/products/1768579606_9123-z-454-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:06:46'),
(193, '9302 442 MCF', '9302-442-mcf', '<p>9302 442 MCF</p>', 31, 2, 152, 146, '9302 442 MCF', '9302 442 MCF', '9302 442 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579707_9302-442-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:08:27'),
(194, '9302 ER 16 BRED', '9302-er-16-bred', '<p>9302 ER 16 BRED</p>', 31, 2, 152, 146, '9302 ER 16 BRED', '9302 ER 16 BRED', '9302 ER 16 BRED', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579771_9302-er-16-bred.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:09:31'),
(195, '9325 536 MCF', '9325-536-mcf', '<p>9325 536 MCF</p>', 31, 2, 152, 146, '9325 536 MCF', '9325 536 MCF', '9325 536 MCF', NULL, NULL, 100.00, 54.00, NULL, 100, NULL, NULL, 'uploads/products/1768579830_9325-536-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:10:30'),
(196, '9349 D 113 BSN MSN', '9349-d-113-bsn-msn', '<p>9349 D 113 BSN MSN</p>', 31, 2, 152, 146, '9349 D 113 BSN MSN', '9349 D 113 BSN MSN', '9349 D 113 BSN MSN', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579857_9349-d-113-bsn-msn.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:10:57'),
(197, '9522 406 MCF', '9522-406-mcf', '', 31, 2, 152, 146, '9522 406 MCF', '9522 406 MCF', '9522 406 MCF', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579886_9522-406-mcf.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:11:26'),
(198, '9577 583 BRED', '9577-583-bred', '<p>9577 583 BRED</p>', 31, 2, 152, 146, '9577 583 BRED', '9577 583 BRED', '9577 583 BRED', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579925_9577-583-bred.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:12:05'),
(199, '85138-377 ORB', '85138-377-orb', '<p>85138-377 ORB</p>', 31, 2, 152, 146, '85138-377 ORB', '85138-377 ORB', '85138-377 ORB', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579955_85138-377-orb.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:12:35'),
(200, '95479 826 BRED', '95479-826-bred', '<p>95479 826 BRED</p>', 31, 2, 152, 146, '95479 826 BRED', '95479 826 BRED', '95479 826 BRED', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579986_95479-826-bred.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:13:06'),
(201, 'H 58177 H 192 BLACK AC', 'h-58177-h-192-black-ac', '<p>H 58177 H 192 BLACK AC</p>', 31, 2, 152, 146, 'H 58177 H 192 BLACK AC', 'H 58177 H 192 BLACK AC', 'H 58177 H 192 BLACK AC', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580014_h-58177-h-192-black-ac.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:13:34'),
(202, 'H 58177 H 192 ORG', 'h-58177-h-192-org', '<p>H 58177 H 192 ORG</p>', 31, 2, 152, 146, 'H 58177 H 192 ORG', 'H 58177 H 192 ORG', 'H 58177 H 192 ORG', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580038_h-58177-h-192-org.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:13:58'),
(203, 'KG 09 XL 382 RG', 'kg-09-xl-382-rg', '', 31, 2, 152, 146, 'KG 09 XL 382 RG', 'KG 09 XL 382 RG', 'KG 09 XL 382 RG', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580070_kg-09-xl-382-rg.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:14:30'),
(204, 'M 1200 H 741 DAB', 'm-1200-h-741-dab', '<p>M 1200 H 741 DAB</p>', 31, 2, 152, 146, 'M 1200 H 741 DAB', 'M 1200 H 741 DAB', 'M 1200 H 741 DAB', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580098_m-1200-h-741-dab.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:14:58'),
(205, 'M1158 H 655 AC', 'm1158-h-655-ac', '<p>M1158 H 655 AC</p>', 31, 2, 152, 146, 'M1158 H 655 AC', 'M1158 H 655 AC', 'M1158 H 655 AC', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768580128_m1158-h-655-ac.png', 1, 1, NULL, '2026-01-16 19:43:10', '2026-01-16 16:15:28'),
(206, '1  1.5   2.5 3 4 inchi concrete Nail  per kg', '1-15-25-3-4-inchi-concrete-nail-per-kg', '<p>1 &nbsp;1.5 &nbsp; 2.5 3 4 inchi concrete Nail &nbsp;per kg</p>', 33, 3, 152, 30, '1  1.5   2.5 3 4 inchi concrete Nail  per kg', '1  1.5   2.5 3 4 inchi concrete Nail  per kg', '1  1.5   2.5 3 4 inchi concrete Nail  per kg', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768571820_1-15-25-3-4-inchi-concrete-nail-per-kg.png', 1, 1, NULL, '2026-01-16 19:56:28', '2026-01-16 13:57:00'),
(207, 'Door stoppe ss vikar 823', 'door-stoppe-ss-vikar-823', '<p>Door stoppe ss vikar 823</p>', 34, 3, 152, 143, 'Door stoppe ss vikar 823', 'Door stoppe ss vikar 823', 'Door stoppe ss vikar 823', NULL, NULL, 100.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1768572157_door-stoppe-ss-vikar-823.png', 1, 1, NULL, '2026-01-16 20:01:53', '2026-01-16 14:02:37'),
(208, 'Vikars door stopped 388 ss', 'vikars-door-stopped-388-ss', '<p>Vikars door stopped 388 ss</p>', 34, 3, 152, 143, 'Vikars door stopped 388 ss', 'Vikars door stopped 388 ss', 'Vikars door stopped 388 ss', NULL, NULL, 100.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1768572185_vikars-door-stopped-388-ss.png', 1, 1, NULL, '2026-01-16 20:01:53', '2026-01-16 18:23:31'),
(209, '5801 RG DIAMOND KNOB', '5801-rg-diamond-knob', '<p>5801 RG DIAMOND KNOB</p>', 35, 2, 152, 147, '5801 RG DIAMOND KNOB', '5801 RG DIAMOND KNOB', '5801 RG DIAMOND KNOB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578340_5801-rg-diamond-knob.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:45:40'),
(210, '5801 SS DIAMOND KNOB', '5801-ss-diamond-knob', '<p>5801 SS DIAMOND KNOB</p>', 35, 2, 152, 147, '5801 SS DIAMOND KNOB', '5801 SS DIAMOND KNOB', '5801 SS DIAMOND KNOB', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768578373_5801-ss-diamond-knob.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:46:13'),
(211, '5885 AC', '5885-ac', '<p>5885 AC</p>', 35, 2, 152, 147, '5885 AC', '5885 AC', '5885 AC', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578410_5885-ac.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:46:50'),
(212, '5887 D AC PB FULL ZINC', '5887-d-ac-pb-full-zinc', '<p>5887 D AC PB FULL ZINC</p>', 35, 2, 152, 147, '5887 D AC PB FULL ZINC', '5887 D AC PB FULL ZINC', '5887 D AC PB FULL ZINC', NULL, NULL, 100.00, 80.00, NULL, 100, NULL, NULL, 'uploads/products/1768578442_5887-d-ac-pb-full-zinc.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:47:22'),
(213, '5890 COFFEE', '5890-coffee', '<p>5890 COFFEE</p>', 35, 2, 152, 147, '5890 COFFEE', '5890 COFFEE', '5890 COFFEE', NULL, NULL, 100.00, 10.00, NULL, 100, NULL, NULL, 'uploads/products/1768578491_5890-coffee.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:48:11'),
(214, '5890-BN PB', '5890-bn-pb', '<p>5890-BN PB</p>', 35, 2, 152, 147, '5890-BN PB', '5890-BN PB', '5890-BN PB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578523_5890-bn-pb.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:48:43'),
(215, '5890-SB PB', '5890-sb-pb', '<p>5890-SB PB</p>', 35, 2, 152, 147, '5890-SB PB', '5890-SB PB', '5890-SB PB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578553_5890-sb-pb.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:49:13'),
(216, '5890-SS', '5890-ss', '<p>5890-SS</p>', 35, 2, 152, 147, '5890-SS', '5890-SS', '5890-SS', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578586_5890-ss.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:49:46'),
(217, '5892-AC', '5892-ac', '', 35, 2, 152, 147, '5892-AC', '5892-AC', '5892-AC', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578626_5892-ac.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:50:26'),
(218, '5893-AC', '5893-ac', '', 35, 2, 152, 146, '5893-AC', '5893-AC', '5893-AC', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578655_5893-ac.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:50:55'),
(220, 'CNCI AB', 'cnci-ab', '<p>CNCI AB</p>', 35, 2, 152, 147, 'CNCI AB', 'CNCI AB', 'CNCI AB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768578719_cnci-ab.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:51:59'),
(221, 'CNCI AC', 'cnci-ac', '<p>CNCI AC</p>', 35, 2, 152, 147, 'CNCI AC', 'CNCI AC', 'CNCI AC', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768578754_cnci-ac.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:52:34'),
(222, 'CNCI CP', 'cnci-cp', '<p>CNCI CP</p>', 35, 2, 152, 147, 'CNCI CP', 'CNCI CP', 'CNCI CP', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768578784_cnci-cp.png', 1, 1, NULL, '2026-01-16 21:44:35', '2026-01-16 15:53:04'),
(223, 'Window Roller', 'window-roller', '<p>Window Roller</p>', 36, 3, 152, 122, 'Window Roller', 'Window Roller', 'Window Roller', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768579113_window-roller.png', 1, 1, NULL, '2026-01-16 21:57:54', '2026-01-16 15:58:33'),
(224, '85 12 ORB', '85-12-orb', '<p>85 12 ORB</p>', 37, 2, 152, 146, '85 12 ORB', '85 12 ORB', '85 12 ORB', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1768581793_85-12-orb.png', 1, 1, NULL, '2026-01-16 22:42:35', '2026-01-16 16:43:13'),
(225, '1232 A 1501 BSN', '1232-a-1501-bsn', '<p>1232 A 1501 BSN</p>', 37, 2, 152, 146, '1232 A 1501 BSN', '1232 A 1501 BSN', '1232 A 1501 BSN', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768581858_1232-a-1501-bsn.png', 1, 1, NULL, '2026-01-16 22:42:35', '2026-01-16 16:44:18'),
(226, '1232 A 9014 MAB', '1232-a-9014-mab', '<p>1232 A 9014 MAB</p>', 37, 2, 152, 146, '1232 A 9014 MAB', '1232 A 9014 MAB', '1232 A 9014 MAB', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768581884_1232-a-9014-mab.png', 1, 1, NULL, '2026-01-16 22:42:35', '2026-01-16 16:44:44'),
(227, '232 A 9014 MCF', '232-a-9014-mcf', '<p>232 A 9014 MCF</p>', 37, 2, 152, 146, '232 A 9014 MCF', '232 A 9014 MCF', '232 A 9014 MCF', NULL, NULL, 100.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1768581828_232-a-9014-mcf.png', 1, 1, NULL, '2026-01-16 22:42:35', '2026-01-16 16:43:48'),
(228, 'Bir 107', 'bir-107', '<p>Bir 107</p>', 38, 4, 153, 149, 'Bir 107', 'Bir 107', 'Bir 107', NULL, NULL, 100.00, 60.00, NULL, 100, NULL, NULL, 'uploads/products/1768583036_bir-107.png', 1, 1, NULL, '2026-01-16 23:02:32', '2026-01-16 17:03:56'),
(229, 'Kai 104', 'kai-104', '<p>Kai 104</p>', 38, 4, 153, 149, 'Kai 104', 'Kai 104', 'Kai 104', NULL, NULL, 100.00, 90.00, NULL, 100, NULL, NULL, 'uploads/products/1768582998_kai-104.png', 1, 1, NULL, '2026-01-16 23:02:32', '2026-01-16 17:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribue`
--

CREATE TABLE `product_attribue` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributeName` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_img_history`
--

CREATE TABLE `product_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `gallery_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_img_history`
--

INSERT INTO `product_img_history` (`id`, `product_id`, `gallery_image`, `created_at`, `updated_at`) VALUES
(1, 45, 'uploads/product_gallery/1768493286_696910e66bb6e_aluminium-level-sizes-9-12-14-16-18-20-22-24-30-36.png', '2026-01-15 16:08:06', '2026-01-15 16:08:06'),
(2, 45, 'uploads/product_gallery/1768493286_696910e66bdad_aluminium-level-sizes-9-12-14-16-18-20-22-24-30-36.png', '2026-01-15 16:08:06', '2026-01-15 16:08:06'),
(3, 47, 'uploads/product_gallery/1768493339_6969111b78f62_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(4, 47, 'uploads/product_gallery/1768493339_6969111b7917d_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(5, 47, 'uploads/product_gallery/1768493339_6969111b79607_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(6, 47, 'uploads/product_gallery/1768493339_6969111b79756_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(7, 47, 'uploads/product_gallery/1768493339_6969111b79881_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(8, 47, 'uploads/product_gallery/1768493339_6969111b799b7_4-inchi-diamond-cup-grinding-disk.png', '2026-01-15 16:08:59', '2026-01-15 16:08:59'),
(9, 48, 'uploads/product_gallery/1768493374_6969113ed38e2_4-inchi-diamond-cutter.png', '2026-01-15 16:09:34', '2026-01-15 16:09:34'),
(10, 49, 'uploads/product_gallery/1768493412_6969116478b36_4-inchi-diamond-cutter-prof-quality.png', '2026-01-15 16:10:12', '2026-01-15 16:10:12'),
(11, 49, 'uploads/product_gallery/1768493412_6969116478d8b_4-inchi-diamond-cutter-prof-quality.png', '2026-01-15 16:10:12', '2026-01-15 16:10:12'),
(12, 50, 'uploads/product_gallery/1768493448_696911886b332_4-inchi-diamond-cutter-standard-quality-cutting-and-laing-saw.png', '2026-01-15 16:10:48', '2026-01-15 16:10:48'),
(13, 50, 'uploads/product_gallery/1768493448_696911886b52a_4-inchi-diamond-cutter-standard-quality-cutting-and-laing-saw.png', '2026-01-15 16:10:48', '2026-01-15 16:10:48'),
(14, 51, 'uploads/product_gallery/1768493480_696911a81860a_diamond-cutter-7-inchi-seg-cutting-professional-qiality.png', '2026-01-15 16:11:20', '2026-01-15 16:11:20'),
(15, 52, 'uploads/product_gallery/1768493513_696911c96bc57_diamond-cutter-multi-prof-quality.png', '2026-01-15 16:11:53', '2026-01-15 16:11:53'),
(16, 53, 'uploads/product_gallery/1768493545_696911e949237_metal-cutting-disk-14-inchi-16-inchii-4-inchi.png', '2026-01-15 16:12:25', '2026-01-15 16:12:25'),
(17, 53, 'uploads/product_gallery/1768493545_696911e9494e3_metal-cutting-disk-14-inchi-16-inchii-4-inchi.png', '2026-01-15 16:12:25', '2026-01-15 16:12:25'),
(18, 54, 'uploads/product_gallery/1768498232_69692438ec994_axe-bir-brand-premium-quality-small.png', '2026-01-15 17:30:32', '2026-01-15 17:30:32'),
(19, 54, 'uploads/product_gallery/1768498232_69692438ed157_axe-bir-brand-premium-quality-small.png', '2026-01-15 17:30:32', '2026-01-15 17:30:32'),
(20, 59, 'uploads/product_gallery/1768498300_6969247c48b03_bolt-cutter-12-18-24-36-at-sizes.png', '2026-01-15 17:31:40', '2026-01-15 17:31:40'),
(21, 60, 'uploads/product_gallery/1768498333_6969249dbfc9a_carpenter-pincher-7-inchi-8-inchi.png', '2026-01-15 17:32:13', '2026-01-15 17:32:13'),
(22, 60, 'uploads/product_gallery/1768498334_6969249e32778_carpenter-pincher-7-inchi-8-inchi.png', '2026-01-15 17:32:14', '2026-01-15 17:32:14'),
(23, 61, 'uploads/product_gallery/1768498379_696924cbb51e0_cutter-knif-2-extra-balde.png', '2026-01-15 17:32:59', '2026-01-15 17:32:59'),
(24, 61, 'uploads/product_gallery/1768498379_696924cbb5414_cutter-knif-2-extra-balde.png', '2026-01-15 17:32:59', '2026-01-15 17:32:59'),
(25, 63, 'uploads/product_gallery/1768498422_696924f6678c5_flad-disk-60-grit-80-grit.png', '2026-01-15 17:33:42', '2026-01-15 17:33:42'),
(26, 63, 'uploads/product_gallery/1768498422_696924f667a95_flad-disk-60-grit-80-grit.png', '2026-01-15 17:33:42', '2026-01-15 17:33:42'),
(27, 64, 'uploads/product_gallery/1768498484_6969253418726_glass-cutter-black-golde-white-colour.png', '2026-01-15 17:34:44', '2026-01-15 17:34:44'),
(28, 64, 'uploads/product_gallery/1768498484_69692534188d8_glass-cutter-black-golde-white-colour.png', '2026-01-15 17:34:44', '2026-01-15 17:34:44'),
(29, 64, 'uploads/product_gallery/1768498484_69692534189e8_glass-cutter-black-golde-white-colour.png', '2026-01-15 17:34:44', '2026-01-15 17:34:44'),
(30, 65, 'uploads/product_gallery/1768498514_6969255225f7f_scissor-8-inchi.png', '2026-01-15 17:35:14', '2026-01-15 17:35:14'),
(31, 55, 'uploads/product_gallery/1768498542_6969256e0de92_tiles-cutter.png', '2026-01-15 17:35:42', '2026-01-15 17:35:42'),
(32, 56, 'uploads/product_gallery/1768498578_696925921cc40_tin-snip-10-inchi-and-12-inchi.png', '2026-01-15 17:36:18', '2026-01-15 17:36:18'),
(33, 56, 'uploads/product_gallery/1768498578_696925921ce2f_tin-snip-10-inchi-and-12-inchi.png', '2026-01-15 17:36:18', '2026-01-15 17:36:18'),
(34, 56, 'uploads/product_gallery/1768498578_696925921cf66_tin-snip-10-inchi-and-12-inchi.png', '2026-01-15 17:36:18', '2026-01-15 17:36:18'),
(35, 56, 'uploads/product_gallery/1768498578_696925921d0f9_tin-snip-10-inchi-and-12-inchi.png', '2026-01-15 17:36:18', '2026-01-15 17:36:18'),
(36, 111, 'uploads/product_gallery/1768498660_696925e4dcc86_garden-scissor-10-inchi.png', '2026-01-15 17:37:40', '2026-01-15 17:37:40'),
(37, 111, 'uploads/product_gallery/1768498660_696925e4dcf79_garden-scissor-10-inchi.png', '2026-01-15 17:37:40', '2026-01-15 17:37:40'),
(38, 57, 'uploads/product_gallery/1768498702_6969260e98a17_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(39, 57, 'uploads/product_gallery/1768498702_6969260e98c49_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(40, 57, 'uploads/product_gallery/1768498702_6969260e98e0d_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(41, 57, 'uploads/product_gallery/1768498702_6969260e98fb9_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(42, 57, 'uploads/product_gallery/1768498702_6969260e9915c_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(43, 57, 'uploads/product_gallery/1768498702_6969260e992e3_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(44, 57, 'uploads/product_gallery/1768498702_6969260e9947a_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(45, 57, 'uploads/product_gallery/1768498702_6969260e995b5_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(46, 57, 'uploads/product_gallery/1768498702_6969260e996ef_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(47, 57, 'uploads/product_gallery/1768498702_6969260e99830_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(48, 57, 'uploads/product_gallery/1768498702_6969260e999e1_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(49, 57, 'uploads/product_gallery/1768498702_6969260e99b52_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(50, 57, 'uploads/product_gallery/1768498702_6969260e99c9e_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(51, 57, 'uploads/product_gallery/1768498702_6969260e99deb_drill-bit-bir-tool.png', '2026-01-15 17:38:22', '2026-01-15 17:38:22'),
(52, 58, 'uploads/product_gallery/1768498754_6969264298565_drill-bit-another.png', '2026-01-15 17:39:14', '2026-01-15 17:39:14'),
(53, 58, 'uploads/product_gallery/1768498754_696926429872e_drill-bit-another.png', '2026-01-15 17:39:14', '2026-01-15 17:39:14'),
(54, 58, 'uploads/product_gallery/1768498754_696926429884c_drill-bit-another.png', '2026-01-15 17:39:14', '2026-01-15 17:39:14'),
(55, 26, 'uploads/product_gallery/1768498793_69692669bdb97_ball-pein-hammer-08-oz.png', '2026-01-15 17:39:53', '2026-01-15 17:39:53'),
(56, 27, 'uploads/product_gallery/1768498823_69692687d1707_chipping-hammer-with-wooden-handle.png', '2026-01-15 17:40:23', '2026-01-15 17:40:23'),
(57, 28, 'uploads/product_gallery/1768498860_696926acc4a10_claw-hammer-with-fiber-glass-160-z-08-oz.png', '2026-01-15 17:41:00', '2026-01-15 17:41:00'),
(58, 29, 'uploads/product_gallery/1768498882_696926c2af810_fiber-glass-handle.png', '2026-01-15 17:41:22', '2026-01-15 17:41:22'),
(59, 30, 'uploads/product_gallery/1768498917_696926e5c5380_machinist-hammer-with-wooden-handle.png', '2026-01-15 17:41:57', '2026-01-15 17:41:57'),
(60, 31, 'uploads/product_gallery/1768498997_6969273513891_rubber-mallat-hammer-with-with-fiber-glass-handle.png', '2026-01-15 17:43:17', '2026-01-15 17:43:17'),
(61, 31, 'uploads/product_gallery/1768498997_6969273513a5e_rubber-mallat-hammer-with-with-fiber-glass-handle.png', '2026-01-15 17:43:17', '2026-01-15 17:43:17'),
(62, 31, 'uploads/product_gallery/1768498997_6969273513b8d_rubber-mallat-hammer-with-with-fiber-glass-handle.png', '2026-01-15 17:43:17', '2026-01-15 17:43:17'),
(63, 31, 'uploads/product_gallery/1768498997_6969273513cb2_rubber-mallat-hammer-with-with-fiber-glass-handle.png', '2026-01-15 17:43:17', '2026-01-15 17:43:17'),
(64, 66, 'uploads/product_gallery/1768499038_6969275e44576_2-pces-lock-installation-kit.png', '2026-01-15 17:43:58', '2026-01-15 17:43:58'),
(65, 66, 'uploads/product_gallery/1768499038_6969275e447e5_2-pces-lock-installation-kit.png', '2026-01-15 17:43:58', '2026-01-15 17:43:58'),
(66, 67, 'uploads/product_gallery/1768499079_6969278741390_5-pcs-hole-saw-set.png', '2026-01-15 17:44:39', '2026-01-15 17:44:39'),
(67, 67, 'uploads/product_gallery/1768499079_696927874155d_5-pcs-hole-saw-set.png', '2026-01-15 17:44:39', '2026-01-15 17:44:39'),
(68, 68, 'uploads/product_gallery/1768499120_696927b0b1c2f_5-pcs-jig-saw-blade.png', '2026-01-15 17:45:20', '2026-01-15 17:45:20'),
(69, 70, 'uploads/product_gallery/1768499143_696927c79a3d1_5-pcs-lock-installation-kit.png', '2026-01-15 17:45:43', '2026-01-15 17:45:43'),
(70, 69, 'uploads/product_gallery/1768499173_696927e5c8ace_16-pcs-holes-saw-set.png', '2026-01-15 17:46:13', '2026-01-15 17:46:13'),
(71, 69, 'uploads/product_gallery/1768499173_696927e5c8d0f_16-pcs-holes-saw-set.png', '2026-01-15 17:46:13', '2026-01-15 17:46:13'),
(72, 69, 'uploads/product_gallery/1768499173_696927e5c8e4d_16-pcs-holes-saw-set.png', '2026-01-15 17:46:13', '2026-01-15 17:46:13'),
(73, 72, 'uploads/product_gallery/1768499203_696928035da85_chisel-for-wood.png', '2026-01-15 17:46:43', '2026-01-15 17:46:43'),
(74, 72, 'uploads/product_gallery/1768499203_696928035dc60_chisel-for-wood.png', '2026-01-15 17:46:43', '2026-01-15 17:46:43'),
(75, 71, 'uploads/product_gallery/1768499230_6969281e7c11e_circular-saw-blade.png', '2026-01-15 17:47:10', '2026-01-15 17:47:10'),
(76, 71, 'uploads/product_gallery/1768499230_6969281e7c329_circular-saw-blade.png', '2026-01-15 17:47:10', '2026-01-15 17:47:10'),
(77, 71, 'uploads/product_gallery/1768499230_6969281e7c490_circular-saw-blade.png', '2026-01-15 17:47:10', '2026-01-15 17:47:10'),
(78, 74, 'uploads/product_gallery/1768499273_69692849b95d6_compass-saw-plastic-handle-14-inchi.png', '2026-01-15 17:47:53', '2026-01-15 17:47:53'),
(79, 74, 'uploads/product_gallery/1768499273_69692849b9815_compass-saw-plastic-handle-14-inchi.png', '2026-01-15 17:47:53', '2026-01-15 17:47:53'),
(80, 74, 'uploads/product_gallery/1768499273_69692849b9999_compass-saw-plastic-handle-14-inchi.png', '2026-01-15 17:47:53', '2026-01-15 17:47:53'),
(81, 74, 'uploads/product_gallery/1768499273_69692849b9afa_compass-saw-plastic-handle-14-inchi.png', '2026-01-15 17:47:53', '2026-01-15 17:47:53'),
(82, 75, 'uploads/product_gallery/1768499301_6969286588510_electrode-holder-500a.png', '2026-01-15 17:48:21', '2026-01-15 17:48:21'),
(83, 75, 'uploads/product_gallery/1768499301_696928658871a_electrode-holder-500a.png', '2026-01-15 17:48:21', '2026-01-15 17:48:21'),
(84, 44, 'uploads/product_gallery/1768499327_6969287f2712f_hac-saw-frame-834-straigt.png', '2026-01-15 17:48:47', '2026-01-15 17:48:47'),
(85, 78, 'uploads/product_gallery/1768499368_696928a8eb8c0_hack-saw-blade.png', '2026-01-15 17:49:28', '2026-01-15 17:49:28'),
(86, 42, 'uploads/product_gallery/1768499407_696928cfdf7c4_hack-saw-frame-adjustable-black.png', '2026-01-15 17:50:07', '2026-01-15 17:50:07'),
(87, 42, 'uploads/product_gallery/1768499407_696928cfdf999_hack-saw-frame-adjustable-black.png', '2026-01-15 17:50:07', '2026-01-15 17:50:07'),
(88, 43, 'uploads/product_gallery/1768499469_6969290dd6ce0_hand-saw-wooden-handle-with-fire-teeth-16-and-18-inchi.png', '2026-01-15 17:51:09', '2026-01-15 17:51:09'),
(89, 43, 'uploads/product_gallery/1768499469_6969290dd6f2c_hand-saw-wooden-handle-with-fire-teeth-16-and-18-inchi.png', '2026-01-15 17:51:09', '2026-01-15 17:51:09'),
(90, 41, 'uploads/product_gallery/1768499520_6969294082ac6_hand-saw-yellow-black-handle-with-fire-teeth.png', '2026-01-15 17:52:00', '2026-01-15 17:52:00'),
(91, 41, 'uploads/product_gallery/1768499520_6969294082cb9_hand-saw-yellow-black-handle-with-fire-teeth.png', '2026-01-15 17:52:00', '2026-01-15 17:52:00'),
(92, 76, 'uploads/product_gallery/1768499549_6969295dd9ac0_rander-fall-iron-planner-15.png', '2026-01-15 17:52:29', '2026-01-15 17:52:29'),
(93, 76, 'uploads/product_gallery/1768499549_6969295dd9d7d_rander-fall-iron-planner-15.png', '2026-01-15 17:52:29', '2026-01-15 17:52:29'),
(94, 108, 'uploads/product_gallery/1768499638_696929b63dd20_adjustable-roller-handle-extension-pole-5-inchi.png', '2026-01-15 17:53:58', '2026-01-15 17:53:58'),
(95, 108, 'uploads/product_gallery/1768499638_696929b63df84_adjustable-roller-handle-extension-pole-5-inchi.png', '2026-01-15 17:53:58', '2026-01-15 17:53:58'),
(96, 108, 'uploads/product_gallery/1768499638_696929b63e0cb_adjustable-roller-handle-extension-pole-5-inchi.png', '2026-01-15 17:53:58', '2026-01-15 17:53:58'),
(97, 109, 'uploads/product_gallery/1768499674_696929da0374d_adjustable-roller-handle-pro-9-inchi.png', '2026-01-15 17:54:34', '2026-01-15 17:54:34'),
(98, 109, 'uploads/product_gallery/1768499674_696929da03925_adjustable-roller-handle-pro-9-inchi.png', '2026-01-15 17:54:34', '2026-01-15 17:54:34'),
(99, 110, 'uploads/product_gallery/1768499706_696929fa5aa9a_cup-hook-12-pcs-set.png', '2026-01-15 17:55:06', '2026-01-15 17:55:06'),
(100, 32, 'uploads/product_gallery/1768499747_69692a23b4970_cup-wire-brush-3-inchi.png', '2026-01-15 17:55:47', '2026-01-15 17:55:47'),
(101, 32, 'uploads/product_gallery/1768499747_69692a23b4b89_cup-wire-brush-3-inchi.png', '2026-01-15 17:55:47', '2026-01-15 17:55:47'),
(102, 32, 'uploads/product_gallery/1768499747_69692a23b4cea_cup-wire-brush-3-inchi.png', '2026-01-15 17:55:47', '2026-01-15 17:55:47'),
(103, 32, 'uploads/product_gallery/1768499747_69692a23b4e32_cup-wire-brush-3-inchi.png', '2026-01-15 17:55:47', '2026-01-15 17:55:47'),
(104, 33, 'uploads/product_gallery/1768499776_69692a405d0b6_paint-brush-solid-filament-with-plastic-handle.png', '2026-01-15 17:56:16', '2026-01-15 17:56:16'),
(105, 34, 'uploads/product_gallery/1768499810_69692a62db6ab_roller-brush-4-inchi-white.png', '2026-01-15 17:56:50', '2026-01-15 17:56:50'),
(106, 34, 'uploads/product_gallery/1768499810_69692a62db824_roller-brush-4-inchi-white.png', '2026-01-15 17:56:50', '2026-01-15 17:56:50'),
(107, 35, 'uploads/product_gallery/1768499860_69692a94b953f_roller-brush-4-inchi-yellow.png', '2026-01-15 17:57:40', '2026-01-15 17:57:40'),
(108, 35, 'uploads/product_gallery/1768499860_69692a94b972b_roller-brush-4-inchi-yellow.png', '2026-01-15 17:57:40', '2026-01-15 17:57:40'),
(109, 35, 'uploads/product_gallery/1768499860_69692a94b9861_roller-brush-4-inchi-yellow.png', '2026-01-15 17:57:40', '2026-01-15 17:57:40'),
(110, 35, 'uploads/product_gallery/1768499860_69692a94b99e4_roller-brush-4-inchi-yellow.png', '2026-01-15 17:57:40', '2026-01-15 17:57:40'),
(111, 36, 'uploads/product_gallery/1768499894_69692ab6025f9_roller-brush-luxary-9-inchi.png', '2026-01-15 17:58:14', '2026-01-15 17:58:14'),
(112, 37, 'uploads/product_gallery/1768499926_69692ad646a0c_roller-handle.png', '2026-01-15 17:58:46', '2026-01-15 17:58:46'),
(113, 38, 'uploads/product_gallery/1768499959_69692af7aed7e_shovel-steel-handel-round-shape.png', '2026-01-15 17:59:19', '2026-01-15 17:59:19'),
(114, 38, 'uploads/product_gallery/1768499959_69692af7aef86_shovel-steel-handel-round-shape.png', '2026-01-15 17:59:19', '2026-01-15 17:59:19'),
(115, 39, 'uploads/product_gallery/1768499992_69692b185cbe4_test-pencil.png', '2026-01-15 17:59:52', '2026-01-15 17:59:52'),
(116, 40, 'uploads/product_gallery/1768500022_69692b36a8a79_tools-box-set-38-pc.png', '2026-01-15 18:00:22', '2026-01-15 18:00:22'),
(117, 40, 'uploads/product_gallery/1768500022_69692b36a8c2b_tools-box-set-38-pc.png', '2026-01-15 18:00:22', '2026-01-15 18:00:22'),
(118, 79, 'uploads/product_gallery/1768500071_69692b678e911_ln-key.png', '2026-01-15 18:01:11', '2026-01-15 18:01:11'),
(119, 79, 'uploads/product_gallery/1768500084_69692b74bdc27_ln-key.png', '2026-01-15 18:01:24', '2026-01-15 18:01:24'),
(120, 112, 'uploads/product_gallery/1768500338_69692c722245f_cross-key-pad-lock.png', '2026-01-15 18:05:38', '2026-01-15 18:05:38'),
(121, 112, 'uploads/product_gallery/1768500338_69692c722288d_cross-key-pad-lock.png', '2026-01-15 18:05:38', '2026-01-15 18:05:38'),
(122, 112, 'uploads/product_gallery/1768500356_69692c84d73b4_cross-key-pad-lock.png', '2026-01-15 18:05:56', '2026-01-15 18:05:56'),
(123, 113, 'uploads/product_gallery/1768500389_69692ca5b6e5f_snake-key-pad-lock.png', '2026-01-15 18:06:29', '2026-01-15 18:06:29'),
(124, 113, 'uploads/product_gallery/1768500389_69692ca5b702b_snake-key-pad-lock.png', '2026-01-15 18:06:29', '2026-01-15 18:06:29'),
(125, 113, 'uploads/product_gallery/1768500389_69692ca5b7156_snake-key-pad-lock.png', '2026-01-15 18:06:29', '2026-01-15 18:06:29'),
(126, 81, 'uploads/product_gallery/1768500423_69692cc7ca7fa_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(127, 81, 'uploads/product_gallery/1768500423_69692cc7ca9cc_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(128, 81, 'uploads/product_gallery/1768500423_69692cc7cab38_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(129, 81, 'uploads/product_gallery/1768500423_69692cc7cac7d_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(130, 81, 'uploads/product_gallery/1768500423_69692cc7cadd5_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(131, 81, 'uploads/product_gallery/1768500423_69692cc7caf2d_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(132, 81, 'uploads/product_gallery/1768500423_69692cc7cb08f_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(133, 81, 'uploads/product_gallery/1768500423_69692cc7cb1bd_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(134, 81, 'uploads/product_gallery/1768500423_69692cc7cb333_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(135, 81, 'uploads/product_gallery/1768500423_69692cc7cb46e_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(136, 81, 'uploads/product_gallery/1768500423_69692cc7cb595_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(137, 81, 'uploads/product_gallery/1768500423_69692cc7cb711_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(138, 81, 'uploads/product_gallery/1768500423_69692cc7cb86a_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(139, 81, 'uploads/product_gallery/1768500423_69692cc7cb99e_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(140, 81, 'uploads/product_gallery/1768500423_69692cc7cbaf4_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(141, 81, 'uploads/product_gallery/1768500423_69692cc7cbc37_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(142, 81, 'uploads/product_gallery/1768500423_69692cc7cbd63_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(143, 81, 'uploads/product_gallery/1768500423_69692cc7cbe95_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(144, 81, 'uploads/product_gallery/1768500423_69692cc7cbfb3_piller.png', '2026-01-15 18:07:03', '2026-01-15 18:07:03'),
(145, 81, 'uploads/product_gallery/1768500434_69692cd26ad14_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(146, 81, 'uploads/product_gallery/1768500434_69692cd26aed1_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(147, 81, 'uploads/product_gallery/1768500434_69692cd26b03f_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(148, 81, 'uploads/product_gallery/1768500434_69692cd26b167_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(149, 81, 'uploads/product_gallery/1768500434_69692cd26b2be_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(150, 81, 'uploads/product_gallery/1768500434_69692cd26b47c_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(151, 81, 'uploads/product_gallery/1768500434_69692cd26b5ba_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(152, 81, 'uploads/product_gallery/1768500434_69692cd26b727_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(153, 81, 'uploads/product_gallery/1768500434_69692cd26b87d_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(154, 81, 'uploads/product_gallery/1768500434_69692cd26ba16_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(155, 81, 'uploads/product_gallery/1768500434_69692cd26bba9_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(156, 81, 'uploads/product_gallery/1768500434_69692cd26bd78_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(157, 81, 'uploads/product_gallery/1768500434_69692cd26beb7_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(158, 81, 'uploads/product_gallery/1768500434_69692cd26bfe6_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(159, 81, 'uploads/product_gallery/1768500434_69692cd26c128_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(160, 81, 'uploads/product_gallery/1768500434_69692cd26c216_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(161, 81, 'uploads/product_gallery/1768500434_69692cd26c356_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(162, 81, 'uploads/product_gallery/1768500434_69692cd26c448_piller.png', '2026-01-15 18:07:14', '2026-01-15 18:07:14'),
(163, 83, 'uploads/product_gallery/1768500668_69692dbc4731f_professional-tools.png', '2026-01-15 18:11:08', '2026-01-15 18:11:08'),
(164, 83, 'uploads/product_gallery/1768500668_69692dbc4750b_professional-tools.png', '2026-01-15 18:11:08', '2026-01-15 18:11:08'),
(165, 83, 'uploads/product_gallery/1768500668_69692dbc4763e_professional-tools.png', '2026-01-15 18:11:08', '2026-01-15 18:11:08'),
(166, 83, 'uploads/product_gallery/1768500668_69692dbc4774b_professional-tools.png', '2026-01-15 18:11:08', '2026-01-15 18:11:08'),
(167, 83, 'uploads/product_gallery/1768500668_69692dbc47857_professional-tools.png', '2026-01-15 18:11:08', '2026-01-15 18:11:08'),
(168, 86, 'uploads/product_gallery/1768500709_69692de5899ee_glue-gun-40-w-60-w.png', '2026-01-15 18:11:49', '2026-01-15 18:11:49'),
(169, 86, 'uploads/product_gallery/1768500709_69692de589c24_glue-gun-40-w-60-w.png', '2026-01-15 18:11:49', '2026-01-15 18:11:49'),
(170, 84, 'uploads/product_gallery/1768500741_69692e05df396_rivet-gun-gold-color-15-inchi.png', '2026-01-15 18:12:21', '2026-01-15 18:12:21'),
(171, 84, 'uploads/product_gallery/1768500741_69692e05df552_rivet-gun-gold-color-15-inchi.png', '2026-01-15 18:12:21', '2026-01-15 18:12:21'),
(172, 84, 'uploads/product_gallery/1768500741_69692e05df694_rivet-gun-gold-color-15-inchi.png', '2026-01-15 18:12:21', '2026-01-15 18:12:21'),
(173, 84, 'uploads/product_gallery/1768500741_69692e05dfa38_rivet-gun-gold-color-15-inchi.png', '2026-01-15 18:12:21', '2026-01-15 18:12:21'),
(174, 107, 'uploads/product_gallery/1768500772_69692e242d528_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(175, 107, 'uploads/product_gallery/1768500772_69692e242d6db_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(176, 107, 'uploads/product_gallery/1768500772_69692e242d80c_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(177, 107, 'uploads/product_gallery/1768500772_69692e242d92c_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(178, 107, 'uploads/product_gallery/1768500772_69692e242da59_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(179, 107, 'uploads/product_gallery/1768500772_69692e242db8c_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(180, 107, 'uploads/product_gallery/1768500772_69692e242dcad_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(181, 107, 'uploads/product_gallery/1768500772_69692e242dddf_screw-driver.png', '2026-01-15 18:12:52', '2026-01-15 18:12:52'),
(182, 101, 'uploads/product_gallery/1768500840_69692e68beda3_socket-set.png', '2026-01-15 18:14:00', '2026-01-15 18:14:00'),
(183, 101, 'uploads/product_gallery/1768500840_69692e68beff1_socket-set.png', '2026-01-15 18:14:00', '2026-01-15 18:14:00'),
(184, 101, 'uploads/product_gallery/1768500840_69692e68bf164_socket-set.png', '2026-01-15 18:14:00', '2026-01-15 18:14:00'),
(185, 101, 'uploads/product_gallery/1768500840_69692e68bf2cf_socket-set.png', '2026-01-15 18:14:00', '2026-01-15 18:14:00'),
(186, 90, 'uploads/product_gallery/1768501902_6969328eb627e_combination-spanner-chorme.png', '2026-01-15 18:31:42', '2026-01-15 18:31:42'),
(187, 90, 'uploads/product_gallery/1768501902_6969328eb647e_combination-spanner-chorme.png', '2026-01-15 18:31:42', '2026-01-15 18:31:42'),
(188, 90, 'uploads/product_gallery/1768501902_6969328eb6599_combination-spanner-chorme.png', '2026-01-15 18:31:42', '2026-01-15 18:31:42'),
(189, 91, 'uploads/product_gallery/1768501951_696932bf88f9f_spanner-double-right-bright-chorme.png', '2026-01-15 18:32:31', '2026-01-15 18:32:31'),
(190, 91, 'uploads/product_gallery/1768501951_696932bf891bf_spanner-double-right-bright-chorme.png', '2026-01-15 18:32:31', '2026-01-15 18:32:31'),
(191, 91, 'uploads/product_gallery/1768501951_696932bf89332_spanner-double-right-bright-chorme.png', '2026-01-15 18:32:31', '2026-01-15 18:32:31'),
(192, 91, 'uploads/product_gallery/1768501951_696932bf89491_spanner-double-right-bright-chorme.png', '2026-01-15 18:32:31', '2026-01-15 18:32:31'),
(193, 91, 'uploads/product_gallery/1768501951_696932bf89601_spanner-double-right-bright-chorme.png', '2026-01-15 18:32:31', '2026-01-15 18:32:31'),
(194, 92, 'uploads/product_gallery/1768501991_696932e75b95a_measurement-tape-3m-and-5-m-dx-09.png', '2026-01-15 18:33:11', '2026-01-15 18:33:11'),
(195, 92, 'uploads/product_gallery/1768501991_696932e75bb5e_measurement-tape-3m-and-5-m-dx-09.png', '2026-01-15 18:33:11', '2026-01-15 18:33:11'),
(196, 92, 'uploads/product_gallery/1768501991_696932e75bcbc_measurement-tape-3m-and-5-m-dx-09.png', '2026-01-15 18:33:11', '2026-01-15 18:33:11'),
(197, 92, 'uploads/product_gallery/1768501991_696932e75be12_measurement-tape-3m-and-5-m-dx-09.png', '2026-01-15 18:33:11', '2026-01-15 18:33:11'),
(198, 94, 'uploads/product_gallery/1768502026_6969330a5a39c_measurement-tape-3m-and-5m-a-70.png', '2026-01-15 18:33:46', '2026-01-15 18:33:46'),
(199, 95, 'uploads/product_gallery/1768502078_6969333e0dc80_measurement-tape-3m-and-5m-dx-37-and-a69.png', '2026-01-15 18:34:38', '2026-01-15 18:34:38'),
(200, 95, 'uploads/product_gallery/1768502078_6969333e0de85_measurement-tape-3m-and-5m-dx-37-and-a69.png', '2026-01-15 18:34:38', '2026-01-15 18:34:38'),
(201, 96, 'uploads/product_gallery/1768502105_696933591a9a6_measurement-tape-hl-03-3m-5m-nickle-blade.png', '2026-01-15 18:35:05', '2026-01-15 18:35:05'),
(202, 96, 'uploads/product_gallery/1768502105_696933591aba7_measurement-tape-hl-03-3m-5m-nickle-blade.png', '2026-01-15 18:35:05', '2026-01-15 18:35:05'),
(203, 96, 'uploads/product_gallery/1768502105_696933591aceb_measurement-tape-hl-03-3m-5m-nickle-blade.png', '2026-01-15 18:35:05', '2026-01-15 18:35:05'),
(204, 96, 'uploads/product_gallery/1768502105_696933591ae58_measurement-tape-hl-03-3m-5m-nickle-blade.png', '2026-01-15 18:35:05', '2026-01-15 18:35:05'),
(205, 97, 'uploads/product_gallery/1768502132_6969337411830_measuremnt-tape-3m-and-5m-a-70-3x16-non-magnetic.png', '2026-01-15 18:35:32', '2026-01-15 18:35:32'),
(206, 97, 'uploads/product_gallery/1768502132_6969337411ad1_measuremnt-tape-3m-and-5m-a-70-3x16-non-magnetic.png', '2026-01-15 18:35:32', '2026-01-15 18:35:32'),
(207, 98, 'uploads/product_gallery/1768502187_696933ab7667c_steel-tape-15m-30-m.png', '2026-01-15 18:36:27', '2026-01-15 18:36:27'),
(208, 98, 'uploads/product_gallery/1768502187_696933ab768df_steel-tape-15m-30-m.png', '2026-01-15 18:36:27', '2026-01-15 18:36:27'),
(209, 98, 'uploads/product_gallery/1768502187_696933ab76a58_steel-tape-15m-30-m.png', '2026-01-15 18:36:27', '2026-01-15 18:36:27'),
(210, 98, 'uploads/product_gallery/1768502188_696933aca7f33_steel-tape-15m-30-m.png', '2026-01-15 18:36:28', '2026-01-15 18:36:28'),
(211, 98, 'uploads/product_gallery/1768502188_696933aca8185_steel-tape-15m-30-m.png', '2026-01-15 18:36:28', '2026-01-15 18:36:28'),
(212, 98, 'uploads/product_gallery/1768502188_696933aca838e_steel-tape-15m-30-m.png', '2026-01-15 18:36:28', '2026-01-15 18:36:28'),
(213, 98, 'uploads/product_gallery/1768502188_696933acf244c_steel-tape-15m-30-m.png', '2026-01-15 18:36:28', '2026-01-15 18:36:28'),
(214, 98, 'uploads/product_gallery/1768502188_696933acf268c_steel-tape-15m-30-m.png', '2026-01-15 18:36:28', '2026-01-15 18:36:28'),
(215, 98, 'uploads/product_gallery/1768502188_696933acf285d_steel-tape-15m-30-m.png', '2026-01-15 18:36:29', '2026-01-15 18:36:29'),
(216, 98, 'uploads/product_gallery/1768502190_696933ae0ee65_steel-tape-15m-30-m.png', '2026-01-15 18:36:30', '2026-01-15 18:36:30'),
(217, 98, 'uploads/product_gallery/1768502190_696933ae0eff3_steel-tape-15m-30-m.png', '2026-01-15 18:36:30', '2026-01-15 18:36:30'),
(218, 98, 'uploads/product_gallery/1768502190_696933ae0f0ed_steel-tape-15m-30-m.png', '2026-01-15 18:36:30', '2026-01-15 18:36:30'),
(219, 102, 'uploads/product_gallery/1768502218_696933ca67c69_adjustable-wrench-green-handle.png', '2026-01-15 18:36:58', '2026-01-15 18:36:58'),
(220, 103, 'uploads/product_gallery/1768502246_696933e63924e_adjustable-wrench-multi-color-bir-professional.png', '2026-01-15 18:37:26', '2026-01-15 18:37:26'),
(221, 103, 'uploads/product_gallery/1768502246_696933e63944a_adjustable-wrench-multi-color-bir-professional.png', '2026-01-15 18:37:26', '2026-01-15 18:37:26'),
(222, 104, 'uploads/product_gallery/1768502266_696933fad26f7_adjustable-wrench-red.png', '2026-01-15 18:37:46', '2026-01-15 18:37:46'),
(223, 105, 'uploads/product_gallery/1768502290_6969341235f59_l-handle-wrench-12x15-mm-super.png', '2026-01-15 18:38:10', '2026-01-15 18:38:10'),
(224, 106, 'uploads/product_gallery/1768502329_696934392d0eb_t-handle-socket-10-mm-8mm.png', '2026-01-15 18:38:49', '2026-01-15 18:38:49'),
(225, 106, 'uploads/product_gallery/1768502329_696934392d352_t-handle-socket-10-mm-8mm.png', '2026-01-15 18:38:49', '2026-01-15 18:38:49'),
(226, 163, 'uploads/product_gallery/1768571130_696a40fa51633_6-inchi-piano-hinge.png', '2026-01-16 13:45:30', '2026-01-16 13:45:30'),
(227, 163, 'uploads/product_gallery/1768571130_696a40fa51862_6-inchi-piano-hinge.png', '2026-01-16 13:45:30', '2026-01-16 13:45:30'),
(228, 163, 'uploads/product_gallery/1768571130_696a40fa51993_6-inchi-piano-hinge.png', '2026-01-16 13:45:30', '2026-01-16 13:45:30'),
(229, 164, 'uploads/product_gallery/1768571180_696a412ccd9af_5-steps-150-kg-capacity.png', '2026-01-16 13:46:20', '2026-01-16 13:46:20'),
(231, 164, 'uploads/product_gallery/1768571204_696a4144b79b4_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(232, 164, 'uploads/product_gallery/1768571204_696a4144b7bd5_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(233, 164, 'uploads/product_gallery/1768571204_696a4144b7d03_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(234, 164, 'uploads/product_gallery/1768571204_696a4144b7e36_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(235, 164, 'uploads/product_gallery/1768571204_696a4144b7f9a_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(236, 164, 'uploads/product_gallery/1768571204_696a4144b80c2_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(237, 164, 'uploads/product_gallery/1768571204_696a4144b81d8_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(238, 164, 'uploads/product_gallery/1768571204_696a4144b82ea_5-steps-150-kg-capacity.png', '2026-01-16 13:46:44', '2026-01-16 13:46:44'),
(239, 165, 'uploads/product_gallery/1768571244_696a416c64b66_6-steps-150-kg-capacity.png', '2026-01-16 13:47:24', '2026-01-16 13:47:24'),
(240, 165, 'uploads/product_gallery/1768571244_696a416c64e32_6-steps-150-kg-capacity.png', '2026-01-16 13:47:24', '2026-01-16 13:47:24'),
(241, 165, 'uploads/product_gallery/1768571244_696a416c6500c_6-steps-150-kg-capacity.png', '2026-01-16 13:47:24', '2026-01-16 13:47:24'),
(242, 166, 'uploads/product_gallery/1768571280_696a41906abfd_7-steps-150-kg-capacity.png', '2026-01-16 13:48:00', '2026-01-16 13:48:00'),
(243, 166, 'uploads/product_gallery/1768571280_696a41906ae61_7-steps-150-kg-capacity.png', '2026-01-16 13:48:00', '2026-01-16 13:48:00'),
(244, 166, 'uploads/product_gallery/1768571280_696a41906afc1_7-steps-150-kg-capacity.png', '2026-01-16 13:48:00', '2026-01-16 13:48:00'),
(247, 167, 'uploads/product_gallery/1768571406_696a420ec3daa_8-steps-150-kg-capacity.png', '2026-01-16 13:50:06', '2026-01-16 13:50:06'),
(248, 167, 'uploads/product_gallery/1768571406_696a420ec402c_8-steps-150-kg-capacity.png', '2026-01-16 13:50:06', '2026-01-16 13:50:06'),
(249, 167, 'uploads/product_gallery/1768571406_696a420ec413b_8-steps-150-kg-capacity.png', '2026-01-16 13:50:06', '2026-01-16 13:50:06'),
(250, 167, 'uploads/product_gallery/1768571406_696a420ec42e9_8-steps-150-kg-capacity.png', '2026-01-16 13:50:06', '2026-01-16 13:50:06'),
(251, 168, 'uploads/product_gallery/1768571440_696a4230f300e_9-steps-150-kg-capacity.png', '2026-01-16 13:50:40', '2026-01-16 13:50:40'),
(252, 168, 'uploads/product_gallery/1768571440_696a4230f31cc_9-steps-150-kg-capacity.png', '2026-01-16 13:50:41', '2026-01-16 13:50:41'),
(253, 168, 'uploads/product_gallery/1768571440_696a4230f32eb_9-steps-150-kg-capacity.png', '2026-01-16 13:50:41', '2026-01-16 13:50:41'),
(254, 168, 'uploads/product_gallery/1768571440_696a4230f3439_9-steps-150-kg-capacity.png', '2026-01-16 13:50:41', '2026-01-16 13:50:41'),
(255, 170, 'uploads/product_gallery/1768571537_696a4291873f2_6-steps-180kg-capacity.png', '2026-01-16 13:52:17', '2026-01-16 13:52:17'),
(256, 171, 'uploads/product_gallery/1768571583_696a42bf06096_9-steps.png', '2026-01-16 13:53:03', '2026-01-16 13:53:03'),
(257, 171, 'uploads/product_gallery/1768571583_696a42bf0627e_9-steps.png', '2026-01-16 13:53:03', '2026-01-16 13:53:03'),
(258, 171, 'uploads/product_gallery/1768571583_696a42bf063aa_9-steps.png', '2026-01-16 13:53:03', '2026-01-16 13:53:03'),
(259, 171, 'uploads/product_gallery/1768571583_696a42bf064be_9-steps.png', '2026-01-16 13:53:03', '2026-01-16 13:53:03'),
(260, 171, 'uploads/product_gallery/1768571583_696a42bf065eb_9-steps.png', '2026-01-16 13:53:03', '2026-01-16 13:53:03'),
(261, 172, 'uploads/product_gallery/1768571633_696a42f1f3b3f_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(262, 172, 'uploads/product_gallery/1768571633_696a42f1f3d2b_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(263, 172, 'uploads/product_gallery/1768571633_696a42f1f3e7b_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(264, 172, 'uploads/product_gallery/1768571633_696a42f1f3ffb_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(265, 172, 'uploads/product_gallery/1768571633_696a42f1f4177_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(266, 172, 'uploads/product_gallery/1768571634_696a42f20005c_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(267, 172, 'uploads/product_gallery/1768571634_696a42f20017e_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(268, 172, 'uploads/product_gallery/1768571634_696a42f2002be_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(269, 172, 'uploads/product_gallery/1768571634_696a42f20043c_5ftx8-steps-200-kg.png', '2026-01-16 13:53:54', '2026-01-16 13:53:54'),
(270, 173, 'uploads/product_gallery/1768571664_696a4310b4661_6-ft10-steps-200-kg.png', '2026-01-16 13:54:24', '2026-01-16 13:54:24'),
(271, 173, 'uploads/product_gallery/1768571664_696a4310b4881_6-ft10-steps-200-kg.png', '2026-01-16 13:54:24', '2026-01-16 13:54:24'),
(272, 173, 'uploads/product_gallery/1768571664_696a4310b49a9_6-ft10-steps-200-kg.png', '2026-01-16 13:54:24', '2026-01-16 13:54:24'),
(273, 173, 'uploads/product_gallery/1768571664_696a4310b4ae5_6-ft10-steps-200-kg.png', '2026-01-16 13:54:24', '2026-01-16 13:54:24'),
(274, 173, 'uploads/product_gallery/1768571664_696a4310b87ac_6-ft10-steps-200-kg.png', '2026-01-16 13:54:24', '2026-01-16 13:54:24'),
(275, 174, 'uploads/product_gallery/1768571692_696a432c7e336_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(276, 174, 'uploads/product_gallery/1768571692_696a432c7e506_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(277, 174, 'uploads/product_gallery/1768571692_696a432c7e62b_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(278, 174, 'uploads/product_gallery/1768571692_696a432c7e7ab_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(279, 174, 'uploads/product_gallery/1768571692_696a432c7e98b_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(280, 174, 'uploads/product_gallery/1768571692_696a432c7eacf_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(281, 174, 'uploads/product_gallery/1768571692_696a432c7ec12_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(282, 174, 'uploads/product_gallery/1768571692_696a432c7ed1d_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(283, 174, 'uploads/product_gallery/1768571692_696a432c7ee47_7ft-12-steps-200kg.png', '2026-01-16 13:54:52', '2026-01-16 13:54:52'),
(284, 175, 'uploads/product_gallery/1768571731_696a43539759f_brad-nails.png', '2026-01-16 13:55:31', '2026-01-16 13:55:31'),
(285, 175, 'uploads/product_gallery/1768571731_696a43539788f_brad-nails.png', '2026-01-16 13:55:31', '2026-01-16 13:55:31'),
(286, 175, 'uploads/product_gallery/1768571731_696a4353979fb_brad-nails.png', '2026-01-16 13:55:31', '2026-01-16 13:55:31'),
(287, 175, 'uploads/product_gallery/1768571731_696a435397bc3_brad-nails.png', '2026-01-16 13:55:31', '2026-01-16 13:55:31'),
(288, 175, 'uploads/product_gallery/1768571731_696a435397d86_brad-nails.png', '2026-01-16 13:55:31', '2026-01-16 13:55:31'),
(289, 206, 'uploads/product_gallery/1768571820_696a43aca34fb_1-15-25-3-4-inchi-concrete-nail-per-kg.png', '2026-01-16 13:57:00', '2026-01-16 13:57:00'),
(290, 120, 'uploads/product_gallery/1768571866_696a43dab98d0_7312-ss-dead-bolt-double.png', '2026-01-16 13:57:46', '2026-01-16 13:57:46'),
(291, 122, 'uploads/product_gallery/1768571891_696a43f3795b0_d-812-ss-dead-bolt-single-square.png', '2026-01-16 13:58:11', '2026-01-16 13:58:11'),
(292, 123, 'uploads/product_gallery/1768571926_696a4416b9c29_door-chain.png', '2026-01-16 13:58:46', '2026-01-16 13:58:46'),
(293, 123, 'uploads/product_gallery/1768571926_696a4416b9e00_door-chain.png', '2026-01-16 13:58:46', '2026-01-16 13:58:46'),
(294, 124, 'uploads/product_gallery/1768571971_696a44438caa4_xh-052-door-closer-vikars.png', '2026-01-16 13:59:31', '2026-01-16 13:59:31'),
(295, 124, 'uploads/product_gallery/1768571971_696a44438ccd2_xh-052-door-closer-vikars.png', '2026-01-16 13:59:31', '2026-01-16 13:59:31'),
(296, 125, 'uploads/product_gallery/1768572006_696a44662d3ef_vikar-door-knocer-with-viewer-ac-728.png', '2026-01-16 14:00:06', '2026-01-16 14:00:06'),
(297, 126, 'uploads/product_gallery/1768572028_696a447c7fb3d_vikar-door-knocer-with-viewer-ac-729.png', '2026-01-16 14:00:28', '2026-01-16 14:00:28'),
(298, 127, 'uploads/product_gallery/1768572059_696a449b54727_888-door-stopper-ss.png', '2026-01-16 14:00:59', '2026-01-16 14:00:59'),
(299, 207, 'uploads/product_gallery/1768572157_696a44fd91d86_door-stoppe-ss-vikar-823.png', '2026-01-16 14:02:37', '2026-01-16 14:02:37'),
(300, 208, 'uploads/product_gallery/1768572185_696a45199a018_vikars-door-stopped-388-ss.png', '2026-01-16 14:03:05', '2026-01-16 14:03:05'),
(301, 130, 'uploads/product_gallery/1768572320_696a45a00dc98_door-viewer-with-shutter.png', '2026-01-16 14:05:20', '2026-01-16 14:05:20'),
(302, 130, 'uploads/product_gallery/1768572320_696a45a00def5_door-viewer-with-shutter.png', '2026-01-16 14:05:20', '2026-01-16 14:05:20'),
(303, 130, 'uploads/product_gallery/1768572320_696a45a00e045_door-viewer-with-shutter.png', '2026-01-16 14:05:20', '2026-01-16 14:05:20'),
(304, 132, 'uploads/product_gallery/1768572456_696a462859276_drawer-channel.png', '2026-01-16 14:07:36', '2026-01-16 14:07:36'),
(305, 147, 'uploads/product_gallery/1768572561_696a46912c1c7_138-22-ss-drawer-lock-jb-type.png', '2026-01-16 14:09:21', '2026-01-16 14:09:21'),
(306, 149, 'uploads/product_gallery/1768572633_696a46d97ba30_furtinure-lock-cp-wave-computer-key.png', '2026-01-16 14:10:33', '2026-01-16 14:10:33'),
(307, 150, 'uploads/product_gallery/1768572664_696a46f877975_showcase-lock.png', '2026-01-16 14:11:04', '2026-01-16 14:11:04'),
(308, 151, 'uploads/product_gallery/1768572699_696a471b6c046_15-feet-8-bar.jpeg', '2026-01-16 14:11:39', '2026-01-16 14:11:39'),
(309, 152, 'uploads/product_gallery/1768572728_696a473861317_15-fit-4-bar.jpeg', '2026-01-16 14:12:08', '2026-01-16 14:12:08'),
(310, 152, 'uploads/product_gallery/1768572728_696a4738614d8_15-fit-4-bar.jpeg', '2026-01-16 14:12:08', '2026-01-16 14:12:08'),
(311, 152, 'uploads/product_gallery/1768572728_696a47386163e_15-fit-4-bar.jpeg', '2026-01-16 14:12:08', '2026-01-16 14:12:08'),
(312, 153, 'uploads/product_gallery/1768572765_696a475d94efb_2-fit-4-bar.jpeg', '2026-01-16 14:12:45', '2026-01-16 14:12:45'),
(313, 153, 'uploads/product_gallery/1768572765_696a475d95191_2-fit-4-bar.jpeg', '2026-01-16 14:12:45', '2026-01-16 14:12:45'),
(314, 153, 'uploads/product_gallery/1768572765_696a475d95310_2-fit-4-bar.jpeg', '2026-01-16 14:12:45', '2026-01-16 14:12:45'),
(315, 154, 'uploads/product_gallery/1768572799_696a477f61017_2-fit-8-bar.jpeg', '2026-01-16 14:13:19', '2026-01-16 14:13:19'),
(316, 155, 'uploads/product_gallery/1768572930_696a48025d649_hyfrolic-and-normal-concealed-hingle.png', '2026-01-16 14:15:30', '2026-01-16 14:15:30'),
(317, 155, 'uploads/product_gallery/1768572930_696a48025d89c_hyfrolic-and-normal-concealed-hingle.png', '2026-01-16 14:15:30', '2026-01-16 14:15:30'),
(318, 155, 'uploads/product_gallery/1768572930_696a48025d9c2_hyfrolic-and-normal-concealed-hingle.png', '2026-01-16 14:15:30', '2026-01-16 14:15:30'),
(319, 155, 'uploads/product_gallery/1768572930_696a48025db2d_hyfrolic-and-normal-concealed-hingle.png', '2026-01-16 14:15:30', '2026-01-16 14:15:30'),
(320, 156, 'uploads/product_gallery/1768572963_696a4823e73d8_iron-drawer-lock-with-steel-key.png', '2026-01-16 14:16:03', '2026-01-16 14:16:03'),
(321, 157, 'uploads/product_gallery/1768573018_696a485a001a1_ab-liver-lock-6271.png', '2026-01-16 14:16:58', '2026-01-16 14:16:58'),
(322, 158, 'uploads/product_gallery/1768573048_696a487897d8d_black-liver-lock-6271.png', '2026-01-16 14:17:28', '2026-01-16 14:17:28'),
(323, 159, 'uploads/product_gallery/1768573074_696a489210db4_ss-liver-lock-6271.png', '2026-01-16 14:17:54', '2026-01-16 14:17:54'),
(324, 160, 'uploads/product_gallery/1768573095_696a48a7e0aed_xx-liver-lock-6211.png', '2026-01-16 14:18:15', '2026-01-16 14:18:15'),
(325, 161, 'uploads/product_gallery/1768573124_696a48c427fcb_lpg-regulator-orange-22-mm.png', '2026-01-16 14:18:44', '2026-01-16 14:18:44'),
(326, 162, 'uploads/product_gallery/1768573146_696a48daa0c04_lpg-regulator-silver-22-mm.png', '2026-01-16 14:19:06', '2026-01-16 14:19:06'),
(327, 134, 'uploads/product_gallery/1768573401_696a49d9d4685_1314-b-bike-pad-lock.png', '2026-01-16 14:23:21', '2026-01-16 14:23:21'),
(328, 133, 'uploads/product_gallery/1768573426_696a49f21af27_pad-lock-cr-6360-cross-key.png', '2026-01-16 14:23:46', '2026-01-16 14:23:46'),
(329, 135, 'uploads/product_gallery/1768573447_696a4a07e932e_pad-lock-np-60-matt.png', '2026-01-16 14:24:07', '2026-01-16 14:24:07'),
(330, 137, 'uploads/product_gallery/1768573482_696a4a2a8a981_gr-03-soft-pattern-rubber-6.png', '2026-01-16 14:24:42', '2026-01-16 14:24:42'),
(331, 138, 'uploads/product_gallery/1768573506_696a4a42cf16b_sf-9501-a-decoration-machine-7.png', '2026-01-16 14:25:06', '2026-01-16 14:25:06'),
(332, 139, 'uploads/product_gallery/1768573538_696a4a62787b1_310-rim-lock-12-key-ac-without-chain.png', '2026-01-16 14:25:38', '2026-01-16 14:25:38'),
(333, 140, 'uploads/product_gallery/1768573573_696a4a85c10da_round-lock-ss-sheet.png', '2026-01-16 14:26:13', '2026-01-16 14:26:13'),
(334, 140, 'uploads/product_gallery/1768573573_696a4a85c12bd_round-lock-ss-sheet.png', '2026-01-16 14:26:13', '2026-01-16 14:26:13'),
(335, 209, 'uploads/product_gallery/1768578340_696a5d244d6cf_5801-rg-diamond-knob.png', '2026-01-16 15:45:40', '2026-01-16 15:45:40'),
(336, 209, 'uploads/product_gallery/1768578340_696a5d244d955_5801-rg-diamond-knob.png', '2026-01-16 15:45:40', '2026-01-16 15:45:40'),
(337, 210, 'uploads/product_gallery/1768578373_696a5d4507e35_5801-ss-diamond-knob.png', '2026-01-16 15:46:13', '2026-01-16 15:46:13'),
(338, 210, 'uploads/product_gallery/1768578373_696a5d4508039_5801-ss-diamond-knob.png', '2026-01-16 15:46:13', '2026-01-16 15:46:13'),
(339, 210, 'uploads/product_gallery/1768578373_696a5d450818f_5801-ss-diamond-knob.png', '2026-01-16 15:46:13', '2026-01-16 15:46:13'),
(340, 210, 'uploads/product_gallery/1768578373_696a5d45082c0_5801-ss-diamond-knob.png', '2026-01-16 15:46:13', '2026-01-16 15:46:13'),
(341, 211, 'uploads/product_gallery/1768578410_696a5d6a8ee5e_5885-ac.png', '2026-01-16 15:46:50', '2026-01-16 15:46:50'),
(342, 211, 'uploads/product_gallery/1768578410_696a5d6a8f076_5885-ac.png', '2026-01-16 15:46:50', '2026-01-16 15:46:50'),
(343, 212, 'uploads/product_gallery/1768578442_696a5d8ab2c9a_5887-d-ac-pb-full-zinc.png', '2026-01-16 15:47:22', '2026-01-16 15:47:22'),
(344, 212, 'uploads/product_gallery/1768578458_696a5d9a6e928_5887-d-ac-pb-full-zinc.png', '2026-01-16 15:47:38', '2026-01-16 15:47:38'),
(345, 212, 'uploads/product_gallery/1768578458_696a5d9a6eaf3_5887-d-ac-pb-full-zinc.png', '2026-01-16 15:47:38', '2026-01-16 15:47:38'),
(346, 212, 'uploads/product_gallery/1768578458_696a5d9a6ec42_5887-d-ac-pb-full-zinc.png', '2026-01-16 15:47:38', '2026-01-16 15:47:38'),
(347, 213, 'uploads/product_gallery/1768578491_696a5dbb8cbe5_5890-coffee.png', '2026-01-16 15:48:11', '2026-01-16 15:48:11'),
(348, 213, 'uploads/product_gallery/1768578491_696a5dbb8ce24_5890-coffee.png', '2026-01-16 15:48:11', '2026-01-16 15:48:11'),
(349, 213, 'uploads/product_gallery/1768578491_696a5dbb8d017_5890-coffee.png', '2026-01-16 15:48:11', '2026-01-16 15:48:11'),
(350, 214, 'uploads/product_gallery/1768578523_696a5ddb7d821_5890-bn-pb.png', '2026-01-16 15:48:43', '2026-01-16 15:48:43'),
(351, 214, 'uploads/product_gallery/1768578523_696a5ddb7d9e0_5890-bn-pb.png', '2026-01-16 15:48:43', '2026-01-16 15:48:43'),
(352, 214, 'uploads/product_gallery/1768578523_696a5ddb7db20_5890-bn-pb.png', '2026-01-16 15:48:43', '2026-01-16 15:48:43'),
(353, 214, 'uploads/product_gallery/1768578523_696a5ddb7dc4c_5890-bn-pb.png', '2026-01-16 15:48:43', '2026-01-16 15:48:43'),
(354, 215, 'uploads/product_gallery/1768578553_696a5df9bb09f_5890-sb-pb.png', '2026-01-16 15:49:13', '2026-01-16 15:49:13'),
(355, 215, 'uploads/product_gallery/1768578553_696a5df9bb28a_5890-sb-pb.png', '2026-01-16 15:49:13', '2026-01-16 15:49:13'),
(356, 216, 'uploads/product_gallery/1768578586_696a5e1a4a6a4_5890-ss.png', '2026-01-16 15:49:46', '2026-01-16 15:49:46'),
(357, 216, 'uploads/product_gallery/1768578595_696a5e2341f44_5890-ss.png', '2026-01-16 15:49:55', '2026-01-16 15:49:55'),
(358, 216, 'uploads/product_gallery/1768578595_696a5e234210d_5890-ss.png', '2026-01-16 15:49:55', '2026-01-16 15:49:55'),
(359, 216, 'uploads/product_gallery/1768578595_696a5e2342223_5890-ss.png', '2026-01-16 15:49:55', '2026-01-16 15:49:55'),
(360, 217, 'uploads/product_gallery/1768578626_696a5e428c117_5892-ac.png', '2026-01-16 15:50:26', '2026-01-16 15:50:26'),
(361, 217, 'uploads/product_gallery/1768578626_696a5e428c33b_5892-ac.png', '2026-01-16 15:50:26', '2026-01-16 15:50:26'),
(362, 218, 'uploads/product_gallery/1768578655_696a5e5fa229e_5893-ac.png', '2026-01-16 15:50:55', '2026-01-16 15:50:55'),
(363, 218, 'uploads/product_gallery/1768578655_696a5e5fa2463_5893-ac.png', '2026-01-16 15:50:55', '2026-01-16 15:50:55'),
(364, 218, 'uploads/product_gallery/1768578655_696a5e5fa2599_5893-ac.png', '2026-01-16 15:50:55', '2026-01-16 15:50:55'),
(365, 218, 'uploads/product_gallery/1768578655_696a5e5fa26f2_5893-ac.png', '2026-01-16 15:50:55', '2026-01-16 15:50:55'),
(366, 220, 'uploads/product_gallery/1768578719_696a5e9f2aca3_cnci-ab.png', '2026-01-16 15:51:59', '2026-01-16 15:51:59'),
(367, 220, 'uploads/product_gallery/1768578719_696a5e9f2ae7b_cnci-ab.png', '2026-01-16 15:51:59', '2026-01-16 15:51:59'),
(368, 221, 'uploads/product_gallery/1768578754_696a5ec26b7e2_cnci-ac.png', '2026-01-16 15:52:34', '2026-01-16 15:52:34'),
(369, 221, 'uploads/product_gallery/1768578754_696a5ec26ba2c_cnci-ac.png', '2026-01-16 15:52:34', '2026-01-16 15:52:34'),
(370, 221, 'uploads/product_gallery/1768578754_696a5ec26bb9d_cnci-ac.png', '2026-01-16 15:52:34', '2026-01-16 15:52:34'),
(371, 222, 'uploads/product_gallery/1768578784_696a5ee05593e_cnci-cp.png', '2026-01-16 15:53:04', '2026-01-16 15:53:04'),
(372, 222, 'uploads/product_gallery/1768578784_696a5ee055b2c_cnci-cp.png', '2026-01-16 15:53:04', '2026-01-16 15:53:04'),
(373, 146, 'uploads/product_gallery/1768578922_696a5f6a64c22_sponge-kit.png', '2026-01-16 15:55:22', '2026-01-16 15:55:22'),
(374, 142, 'uploads/product_gallery/1768578966_696a5f96ca072_ss-door-hinge.png', '2026-01-16 15:56:06', '2026-01-16 15:56:06'),
(375, 142, 'uploads/product_gallery/1768578966_696a5f96ca26c_ss-door-hinge.png', '2026-01-16 15:56:06', '2026-01-16 15:56:06'),
(376, 145, 'uploads/product_gallery/1768579001_696a5fb9b16da_stainless-steel-screws.png', '2026-01-16 15:56:41', '2026-01-16 15:56:41');
INSERT INTO `product_img_history` (`id`, `product_id`, `gallery_image`, `created_at`, `updated_at`) VALUES
(377, 144, 'uploads/product_gallery/1768579037_696a5fdd6d350_tower-bolt.png', '2026-01-16 15:57:17', '2026-01-16 15:57:17'),
(378, 223, 'uploads/product_gallery/1768579113_696a60290912b_window-roller.png', '2026-01-16 15:58:33', '2026-01-16 15:58:33'),
(379, 223, 'uploads/product_gallery/1768579113_696a602909365_window-roller.png', '2026-01-16 15:58:33', '2026-01-16 15:58:33'),
(380, 223, 'uploads/product_gallery/1768579113_696a6029094b3_window-roller.png', '2026-01-16 15:58:33', '2026-01-16 15:58:33'),
(381, 223, 'uploads/product_gallery/1768579113_696a602909610_window-roller.png', '2026-01-16 15:58:33', '2026-01-16 15:58:33'),
(382, 176, 'uploads/product_gallery/1768579166_696a605e4f429_85-11-ac.png', '2026-01-16 15:59:26', '2026-01-16 15:59:26'),
(383, 176, 'uploads/product_gallery/1768579166_696a605e4f60d_85-11-ac.png', '2026-01-16 15:59:26', '2026-01-16 15:59:26'),
(384, 176, 'uploads/product_gallery/1768579166_696a605e4f73f_85-11-ac.png', '2026-01-16 15:59:26', '2026-01-16 15:59:26'),
(385, 178, 'uploads/product_gallery/1768579195_696a607bbb288_85-11-mcf.png', '2026-01-16 15:59:55', '2026-01-16 15:59:55'),
(386, 177, 'uploads/product_gallery/1768579227_696a609b24833_85-11-orb.png', '2026-01-16 16:00:27', '2026-01-16 16:00:27'),
(387, 177, 'uploads/product_gallery/1768579227_696a609b24b2e_85-11-orb.png', '2026-01-16 16:00:27', '2026-01-16 16:00:27'),
(388, 177, 'uploads/product_gallery/1768579227_696a609b24d84_85-11-orb.png', '2026-01-16 16:00:27', '2026-01-16 16:00:27'),
(389, 177, 'uploads/product_gallery/1768579227_696a609b24ef4_85-11-orb.png', '2026-01-16 16:00:27', '2026-01-16 16:00:27'),
(390, 181, 'uploads/product_gallery/1768579283_696a60d39b8ee_813-990-black-ac.png', '2026-01-16 16:01:23', '2026-01-16 16:01:23'),
(391, 181, 'uploads/product_gallery/1768579283_696a60d39bb3b_813-990-black-ac.png', '2026-01-16 16:01:23', '2026-01-16 16:01:23'),
(392, 181, 'uploads/product_gallery/1768579283_696a60d39bc7e_813-990-black-ac.png', '2026-01-16 16:01:23', '2026-01-16 16:01:23'),
(393, 181, 'uploads/product_gallery/1768579283_696a60d39bdc4_813-990-black-ac.png', '2026-01-16 16:01:23', '2026-01-16 16:01:23'),
(394, 181, 'uploads/product_gallery/1768579283_696a60d39bf1b_813-990-black-ac.png', '2026-01-16 16:01:23', '2026-01-16 16:01:23'),
(395, 182, 'uploads/product_gallery/1768579321_696a60f94a252_1015-h-502-orb.png', '2026-01-16 16:02:01', '2026-01-16 16:02:01'),
(396, 182, 'uploads/product_gallery/1768579321_696a60f94a405_1015-h-502-orb.png', '2026-01-16 16:02:01', '2026-01-16 16:02:01'),
(397, 182, 'uploads/product_gallery/1768579321_696a60f94a564_1015-h-502-orb.png', '2026-01-16 16:02:01', '2026-01-16 16:02:01'),
(398, 182, 'uploads/product_gallery/1768579321_696a60f94a6ed_1015-h-502-orb.png', '2026-01-16 16:02:01', '2026-01-16 16:02:01'),
(399, 182, 'uploads/product_gallery/1768579321_696a60f94a854_1015-h-502-orb.png', '2026-01-16 16:02:01', '2026-01-16 16:02:01'),
(400, 183, 'uploads/product_gallery/1768579383_696a61370cfe5_1232-a-1048-mcf.png', '2026-01-16 16:03:03', '2026-01-16 16:03:03'),
(401, 183, 'uploads/product_gallery/1768579383_696a61370d1ef_1232-a-1048-mcf.png', '2026-01-16 16:03:03', '2026-01-16 16:03:03'),
(402, 184, 'uploads/product_gallery/1768579423_696a615fba8e5_1232-a-1048-msn.png', '2026-01-16 16:03:43', '2026-01-16 16:03:43'),
(403, 185, 'uploads/product_gallery/1768579471_696a618f4fcfd_1232-a-1501-mcf.png', '2026-01-16 16:04:31', '2026-01-16 16:04:31'),
(404, 185, 'uploads/product_gallery/1768579471_696a618f4ff06_1232-a-1501-mcf.png', '2026-01-16 16:04:31', '2026-01-16 16:04:31'),
(405, 185, 'uploads/product_gallery/1768579471_696a618f500b4_1232-a-1501-mcf.png', '2026-01-16 16:04:31', '2026-01-16 16:04:31'),
(406, 186, 'uploads/product_gallery/1768579510_696a61b672dc5_1232-a-9044-msn.png', '2026-01-16 16:05:10', '2026-01-16 16:05:10'),
(407, 187, 'uploads/product_gallery/1768579543_696a61d7d4777_1232a-1695-msn.png', '2026-01-16 16:05:43', '2026-01-16 16:05:43'),
(408, 187, 'uploads/product_gallery/1768579543_696a61d7d495d_1232a-1695-msn.png', '2026-01-16 16:05:43', '2026-01-16 16:05:43'),
(409, 189, 'uploads/product_gallery/1768579575_696a61f711e0f_1248-a-9043-mcf.png', '2026-01-16 16:06:15', '2026-01-16 16:06:15'),
(410, 189, 'uploads/product_gallery/1768579575_696a61f712037_1248-a-9043-mcf.png', '2026-01-16 16:06:15', '2026-01-16 16:06:15'),
(411, 192, 'uploads/product_gallery/1768579606_696a6216658fe_9123-z-454-mcf.png', '2026-01-16 16:06:46', '2026-01-16 16:06:46'),
(412, 192, 'uploads/product_gallery/1768579606_696a621665b1a_9123-z-454-mcf.png', '2026-01-16 16:06:46', '2026-01-16 16:06:46'),
(413, 192, 'uploads/product_gallery/1768579606_696a621665c56_9123-z-454-mcf.png', '2026-01-16 16:06:46', '2026-01-16 16:06:46'),
(414, 191, 'uploads/product_gallery/1768579633_696a62313204e_9136-507-mcf.png', '2026-01-16 16:07:13', '2026-01-16 16:07:13'),
(415, 191, 'uploads/product_gallery/1768579633_696a62313223a_9136-507-mcf.png', '2026-01-16 16:07:13', '2026-01-16 16:07:13'),
(416, 191, 'uploads/product_gallery/1768579633_696a62313237b_9136-507-mcf.png', '2026-01-16 16:07:13', '2026-01-16 16:07:13'),
(417, 190, 'uploads/product_gallery/1768579666_696a625206fed_9252-301-sn-cp.png', '2026-01-16 16:07:46', '2026-01-16 16:07:46'),
(418, 190, 'uploads/product_gallery/1768579666_696a6252071b2_9252-301-sn-cp.png', '2026-01-16 16:07:46', '2026-01-16 16:07:46'),
(419, 190, 'uploads/product_gallery/1768579666_696a62520730e_9252-301-sn-cp.png', '2026-01-16 16:07:46', '2026-01-16 16:07:46'),
(420, 193, 'uploads/product_gallery/1768579707_696a627b66f78_9302-442-mcf.png', '2026-01-16 16:08:27', '2026-01-16 16:08:27'),
(421, 193, 'uploads/product_gallery/1768579707_696a627b671a9_9302-442-mcf.png', '2026-01-16 16:08:27', '2026-01-16 16:08:27'),
(422, 193, 'uploads/product_gallery/1768579707_696a627b67366_9302-442-mcf.png', '2026-01-16 16:08:27', '2026-01-16 16:08:27'),
(423, 193, 'uploads/product_gallery/1768579707_696a627b674b8_9302-442-mcf.png', '2026-01-16 16:08:27', '2026-01-16 16:08:27'),
(424, 121, 'uploads/product_gallery/1768579736_696a6298459a3_9302-e-16-mcf.png', '2026-01-16 16:08:56', '2026-01-16 16:08:56'),
(425, 194, 'uploads/product_gallery/1768579771_696a62bb80ca4_9302-er-16-bred.png', '2026-01-16 16:09:31', '2026-01-16 16:09:31'),
(426, 194, 'uploads/product_gallery/1768579771_696a62bb80ea4_9302-er-16-bred.png', '2026-01-16 16:09:31', '2026-01-16 16:09:31'),
(427, 118, 'uploads/product_gallery/1768579799_696a62d7cc579_9325-536-bred.png', '2026-01-16 16:09:59', '2026-01-16 16:09:59'),
(428, 118, 'uploads/product_gallery/1768579799_696a62d7cc73f_9325-536-bred.png', '2026-01-16 16:09:59', '2026-01-16 16:09:59'),
(429, 195, 'uploads/product_gallery/1768579830_696a62f63938d_9325-536-mcf.png', '2026-01-16 16:10:30', '2026-01-16 16:10:30'),
(430, 195, 'uploads/product_gallery/1768579830_696a62f6395d8_9325-536-mcf.png', '2026-01-16 16:10:30', '2026-01-16 16:10:30'),
(431, 196, 'uploads/product_gallery/1768579857_696a631190a9c_9349-d-113-bsn-msn.png', '2026-01-16 16:10:57', '2026-01-16 16:10:57'),
(432, 196, 'uploads/product_gallery/1768579857_696a631190c9f_9349-d-113-bsn-msn.png', '2026-01-16 16:10:57', '2026-01-16 16:10:57'),
(433, 197, 'uploads/product_gallery/1768579886_696a632ecc467_9522-406-mcf.png', '2026-01-16 16:11:26', '2026-01-16 16:11:26'),
(434, 197, 'uploads/product_gallery/1768579886_696a632ecca83_9522-406-mcf.png', '2026-01-16 16:11:26', '2026-01-16 16:11:26'),
(435, 198, 'uploads/product_gallery/1768579925_696a635503a07_9577-583-bred.png', '2026-01-16 16:12:05', '2026-01-16 16:12:05'),
(436, 198, 'uploads/product_gallery/1768579925_696a635503bb0_9577-583-bred.png', '2026-01-16 16:12:05', '2026-01-16 16:12:05'),
(437, 199, 'uploads/product_gallery/1768579955_696a637319fe8_85138-377-orb.png', '2026-01-16 16:12:35', '2026-01-16 16:12:35'),
(438, 199, 'uploads/product_gallery/1768579955_696a63731a1f9_85138-377-orb.png', '2026-01-16 16:12:35', '2026-01-16 16:12:35'),
(439, 199, 'uploads/product_gallery/1768579955_696a63731a355_85138-377-orb.png', '2026-01-16 16:12:35', '2026-01-16 16:12:35'),
(440, 200, 'uploads/product_gallery/1768579986_696a6392c7f67_95479-826-bred.png', '2026-01-16 16:13:06', '2026-01-16 16:13:06'),
(441, 200, 'uploads/product_gallery/1768579986_696a6392c8104_95479-826-bred.png', '2026-01-16 16:13:06', '2026-01-16 16:13:06'),
(442, 201, 'uploads/product_gallery/1768580014_696a63ae3d69b_h-58177-h-192-black-ac.png', '2026-01-16 16:13:34', '2026-01-16 16:13:34'),
(443, 202, 'uploads/product_gallery/1768580038_696a63c685c25_h-58177-h-192-org.png', '2026-01-16 16:13:58', '2026-01-16 16:13:58'),
(444, 203, 'uploads/product_gallery/1768580070_696a63e60ed63_kg-09-xl-382-rg.png', '2026-01-16 16:14:30', '2026-01-16 16:14:30'),
(445, 203, 'uploads/product_gallery/1768580070_696a63e60ef46_kg-09-xl-382-rg.png', '2026-01-16 16:14:30', '2026-01-16 16:14:30'),
(446, 203, 'uploads/product_gallery/1768580070_696a63e60f0a6_kg-09-xl-382-rg.png', '2026-01-16 16:14:30', '2026-01-16 16:14:30'),
(447, 204, 'uploads/product_gallery/1768580098_696a640293e4d_m-1200-h-741-dab.png', '2026-01-16 16:14:58', '2026-01-16 16:14:58'),
(448, 204, 'uploads/product_gallery/1768580098_696a640294076_m-1200-h-741-dab.png', '2026-01-16 16:14:58', '2026-01-16 16:14:58'),
(449, 204, 'uploads/product_gallery/1768580098_696a6402941c6_m-1200-h-741-dab.png', '2026-01-16 16:14:58', '2026-01-16 16:14:58'),
(450, 205, 'uploads/product_gallery/1768580128_696a6420759f4_m1158-h-655-ac.png', '2026-01-16 16:15:28', '2026-01-16 16:15:28'),
(451, 205, 'uploads/product_gallery/1768580128_696a642075c3d_m1158-h-655-ac.png', '2026-01-16 16:15:28', '2026-01-16 16:15:28'),
(452, 205, 'uploads/product_gallery/1768580128_696a642075eac_m1158-h-655-ac.png', '2026-01-16 16:15:28', '2026-01-16 16:15:28'),
(453, 114, 'uploads/product_gallery/1768580163_696a6443edce1_p-1166-h-254-dac-black-ac.png', '2026-01-16 16:16:03', '2026-01-16 16:16:03'),
(454, 114, 'uploads/product_gallery/1768580163_696a6443edec3_p-1166-h-254-dac-black-ac.png', '2026-01-16 16:16:03', '2026-01-16 16:16:03'),
(455, 117, 'uploads/product_gallery/1768580291_696a64c32d29d_un-known.png', '2026-01-16 16:18:11', '2026-01-16 16:18:11'),
(456, 117, 'uploads/product_gallery/1768580291_696a64c32d4dc_un-known.png', '2026-01-16 16:18:11', '2026-01-16 16:18:11'),
(457, 117, 'uploads/product_gallery/1768580291_696a64c32d627_un-known.png', '2026-01-16 16:18:11', '2026-01-16 16:18:11'),
(458, 117, 'uploads/product_gallery/1768580291_696a64c32d793_un-known.png', '2026-01-16 16:18:11', '2026-01-16 16:18:11'),
(459, 117, 'uploads/product_gallery/1768580291_696a64c32d8d8_un-known.png', '2026-01-16 16:18:11', '2026-01-16 16:18:11'),
(460, 115, 'uploads/product_gallery/1768580323_696a64e30b882_x-830-l-8040-msn.png', '2026-01-16 16:18:43', '2026-01-16 16:18:43'),
(461, 115, 'uploads/product_gallery/1768580323_696a64e30ba8f_x-830-l-8040-msn.png', '2026-01-16 16:18:43', '2026-01-16 16:18:43'),
(462, 116, 'uploads/product_gallery/1768580398_696a652ea9c65_z-9106-z-96-orb.png', '2026-01-16 16:19:58', '2026-01-16 16:19:58'),
(463, 116, 'uploads/product_gallery/1768580398_696a652ea9e2b_z-9106-z-96-orb.png', '2026-01-16 16:19:58', '2026-01-16 16:19:58'),
(464, 224, 'uploads/product_gallery/1768581793_696a6aa1bf5e5_85-12-orb.png', '2026-01-16 16:43:13', '2026-01-16 16:43:13'),
(465, 224, 'uploads/product_gallery/1768581793_696a6aa1bf891_85-12-orb.png', '2026-01-16 16:43:13', '2026-01-16 16:43:13'),
(466, 227, 'uploads/product_gallery/1768581828_696a6ac492665_232-a-9014-mcf.png', '2026-01-16 16:43:48', '2026-01-16 16:43:48'),
(467, 227, 'uploads/product_gallery/1768581828_696a6ac492837_232-a-9014-mcf.png', '2026-01-16 16:43:48', '2026-01-16 16:43:48'),
(468, 225, 'uploads/product_gallery/1768581858_696a6ae24998c_1232-a-1501-bsn.png', '2026-01-16 16:44:18', '2026-01-16 16:44:18'),
(469, 225, 'uploads/product_gallery/1768581858_696a6ae249be9_1232-a-1501-bsn.png', '2026-01-16 16:44:18', '2026-01-16 16:44:18'),
(470, 226, 'uploads/product_gallery/1768581884_696a6afc7c3e2_1232-a-9014-mab.png', '2026-01-16 16:44:44', '2026-01-16 16:44:44'),
(471, 7, 'uploads/product_gallery/1768582411_696a6d0b9ceef_v-tech-rtv-vt-152-se-70-g.png', '2026-01-16 16:53:31', '2026-01-16 16:53:31'),
(472, 1, 'uploads/product_gallery/1768582449_696a6d31c49e2_v-tech-rtv-vt-140b1-se-568g.png', '2026-01-16 16:54:09', '2026-01-16 16:54:09'),
(473, 2, 'uploads/product_gallery/1768582473_696a6d4916b47_v-tech-rtv-vt-141.png', '2026-01-16 16:54:33', '2026-01-16 16:54:33'),
(474, 3, 'uploads/product_gallery/1768582499_696a6d6343ff2_v-tech-rtv-vt-144-20-g.png', '2026-01-16 16:54:59', '2026-01-16 16:54:59'),
(475, 4, 'uploads/product_gallery/1768582522_696a6d7ad417d_v-tech-rtv-vt-144.png', '2026-01-16 16:55:22', '2026-01-16 16:55:22'),
(476, 5, 'uploads/product_gallery/1768582551_696a6d97a5552_v-tech-rtv-vt-151-se-70-g.png', '2026-01-16 16:55:51', '2026-01-16 16:55:51'),
(477, 8, 'uploads/product_gallery/1768582584_696a6db8725f8_v-tech-rtv-vt-161-32g.png', '2026-01-16 16:56:24', '2026-01-16 16:56:24'),
(478, 9, 'uploads/product_gallery/1768582610_696a6dd250cb4_v-tech-rtv-vt-173-32-g.png', '2026-01-16 16:56:50', '2026-01-16 16:56:50'),
(479, 10, 'uploads/product_gallery/1768582689_696a6e21300c1_vital-band-vt-420.png', '2026-01-16 16:58:09', '2026-01-16 16:58:09'),
(480, 10, 'uploads/product_gallery/1768582689_696a6e2130310_vital-band-vt-420.png', '2026-01-16 16:58:09', '2026-01-16 16:58:09'),
(481, 11, 'uploads/product_gallery/1768582722_696a6e420c7b8_v-tech-vt-200-clear.png', '2026-01-16 16:58:42', '2026-01-16 16:58:42'),
(482, 11, 'uploads/product_gallery/1768582722_696a6e420c9a7_v-tech-vt-200-clear.png', '2026-01-16 16:58:42', '2026-01-16 16:58:42'),
(483, 12, 'uploads/product_gallery/1768582754_696a6e62ba897_v-tech-vt-201-clear.png', '2026-01-16 16:59:14', '2026-01-16 16:59:14'),
(484, 12, 'uploads/product_gallery/1768582754_696a6e62baadc_v-tech-vt-201-clear.png', '2026-01-16 16:59:14', '2026-01-16 16:59:14'),
(485, 13, 'uploads/product_gallery/1768582792_696a6e883f8b0_v-tech-vt-220-white.png', '2026-01-16 16:59:52', '2026-01-16 16:59:52'),
(486, 13, 'uploads/product_gallery/1768582792_696a6e883fadf_v-tech-vt-220-white.png', '2026-01-16 16:59:52', '2026-01-16 16:59:52'),
(487, 13, 'uploads/product_gallery/1768582792_696a6e883fc41_v-tech-vt-220-white.png', '2026-01-16 16:59:52', '2026-01-16 16:59:52'),
(488, 13, 'uploads/product_gallery/1768582792_696a6e883fd8b_v-tech-vt-220-white.png', '2026-01-16 16:59:52', '2026-01-16 16:59:52'),
(489, 14, 'uploads/product_gallery/1768582819_696a6ea32f67e_vtech-vt-224.png', '2026-01-16 17:00:19', '2026-01-16 17:00:19'),
(490, 14, 'uploads/product_gallery/1768582819_696a6ea32f8a2_vtech-vt-224.png', '2026-01-16 17:00:19', '2026-01-16 17:00:19'),
(491, 15, 'uploads/product_gallery/1768582845_696a6ebdd2f09_v-tech-vt-230-white.png', '2026-01-16 17:00:45', '2026-01-16 17:00:45'),
(492, 15, 'uploads/product_gallery/1768582845_696a6ebdd30e8_v-tech-vt-230-white.png', '2026-01-16 17:00:45', '2026-01-16 17:00:45'),
(493, 16, 'uploads/product_gallery/1768582877_696a6edd7a14d_v-tech-vt-620-sg.png', '2026-01-16 17:01:17', '2026-01-16 17:01:17'),
(494, 16, 'uploads/product_gallery/1768582877_696a6edd7a377_v-tech-vt-620-sg.png', '2026-01-16 17:01:17', '2026-01-16 17:01:17'),
(495, 229, 'uploads/product_gallery/1768582998_696a6f5687859_kai-104.png', '2026-01-16 17:03:18', '2026-01-16 17:03:18'),
(496, 229, 'uploads/product_gallery/1768582998_696a6f5687a6a_kai-104.png', '2026-01-16 17:03:18', '2026-01-16 17:03:18'),
(497, 228, 'uploads/product_gallery/1768583036_696a6f7c29837_bir-107.png', '2026-01-16 17:03:56', '2026-01-16 17:03:56'),
(498, 228, 'uploads/product_gallery/1768583036_696a6f7c29a91_bir-107.png', '2026-01-16 17:03:56', '2026-01-16 17:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_variation` varchar(255) DEFAULT NULL,
  `qty_in` int(11) NOT NULL,
  `stock_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_inventory`
--

INSERT INTO `product_inventory` (`id`, `user_id`, `product_id`, `attribute_variation`, `qty_in`, `stock_date`, `created_at`, `updated_at`) VALUES
(1, 1, 45, NULL, 1000, '2026-01-15', '2026-01-15 10:08:06', '2026-01-15 10:08:06'),
(2, 1, 47, NULL, 1000, '2026-01-15', '2026-01-15 10:08:59', '2026-01-15 10:08:59'),
(3, 1, 48, NULL, 1000, '2026-01-15', '2026-01-15 10:09:34', '2026-01-15 10:09:34'),
(4, 1, 49, NULL, 1000, '2026-01-15', '2026-01-15 10:10:12', '2026-01-15 10:10:12'),
(5, 1, 50, NULL, 1000, '2026-01-15', '2026-01-15 10:10:48', '2026-01-15 10:10:48'),
(6, 1, 51, NULL, 1000, '2026-01-15', '2026-01-15 10:11:20', '2026-01-15 10:11:20'),
(7, 1, 52, NULL, 1000, '2026-01-15', '2026-01-15 10:11:53', '2026-01-15 10:11:53'),
(8, 1, 53, NULL, 1000, '2026-01-15', '2026-01-15 10:12:25', '2026-01-15 10:12:25'),
(9, 1, 54, NULL, 1000, '2026-01-15', '2026-01-15 11:30:32', '2026-01-15 11:30:32'),
(10, 1, 59, NULL, 1000, '2026-01-15', '2026-01-15 11:31:40', '2026-01-15 11:31:40'),
(11, 1, 60, NULL, 1000, '2026-01-15', '2026-01-15 11:32:13', '2026-01-15 11:32:13'),
(12, 1, 61, NULL, 1000, '2026-01-15', '2026-01-15 11:32:59', '2026-01-15 11:32:59'),
(13, 1, 63, NULL, 1000, '2026-01-15', '2026-01-15 11:33:42', '2026-01-15 11:33:42'),
(14, 1, 64, NULL, 1000, '2026-01-15', '2026-01-15 11:34:44', '2026-01-15 11:34:44'),
(15, 1, 65, NULL, 1000, '2026-01-15', '2026-01-15 11:35:14', '2026-01-15 11:35:14'),
(16, 1, 55, NULL, 1000, '2026-01-15', '2026-01-15 11:35:42', '2026-01-15 11:35:42'),
(17, 1, 56, NULL, 1000, '2026-01-15', '2026-01-15 11:36:18', '2026-01-15 11:36:18'),
(18, 1, 111, NULL, 100, '2026-01-15', '2026-01-15 11:37:40', '2026-01-15 11:37:40'),
(19, 1, 58, NULL, 1000, '2026-01-15', '2026-01-15 11:39:14', '2026-01-15 11:39:14'),
(20, 1, 26, NULL, 1000, '2026-01-15', '2026-01-15 11:39:53', '2026-01-15 11:39:53'),
(21, 1, 27, NULL, 1000, '2026-01-15', '2026-01-15 11:40:23', '2026-01-15 11:40:23'),
(22, 1, 28, NULL, 1000, '2026-01-15', '2026-01-15 11:41:00', '2026-01-15 11:41:00'),
(23, 1, 29, NULL, 1000, '2026-01-15', '2026-01-15 11:41:22', '2026-01-15 11:41:22'),
(24, 1, 30, NULL, 1000, '2026-01-15', '2026-01-15 11:41:57', '2026-01-15 11:41:57'),
(25, 1, 31, NULL, 1000, '2026-01-15', '2026-01-15 11:43:17', '2026-01-15 11:43:17'),
(26, 1, 66, NULL, 1000, '2026-01-15', '2026-01-15 11:43:58', '2026-01-15 11:43:58'),
(27, 1, 67, NULL, 1000, '2026-01-15', '2026-01-15 11:44:39', '2026-01-15 11:44:39'),
(28, 1, 68, NULL, 1000, '2026-01-15', '2026-01-15 11:45:20', '2026-01-15 11:45:20'),
(29, 1, 70, NULL, 1000, '2026-01-15', '2026-01-15 11:45:43', '2026-01-15 11:45:43'),
(30, 1, 69, NULL, 1000, '2026-01-15', '2026-01-15 11:46:13', '2026-01-15 11:46:13'),
(31, 1, 72, NULL, 1000, '2026-01-15', '2026-01-15 11:46:43', '2026-01-15 11:46:43'),
(32, 1, 71, NULL, 1000, '2026-01-15', '2026-01-15 11:47:10', '2026-01-15 11:47:10'),
(33, 1, 74, NULL, 1000, '2026-01-15', '2026-01-15 11:47:53', '2026-01-15 11:47:53'),
(34, 1, 75, NULL, 1000, '2026-01-15', '2026-01-15 11:48:21', '2026-01-15 11:48:21'),
(35, 1, 44, NULL, 1000, '2026-01-15', '2026-01-15 11:48:47', '2026-01-15 11:48:47'),
(36, 1, 78, NULL, 1000, '2026-01-15', '2026-01-15 11:49:28', '2026-01-15 11:49:28'),
(37, 1, 42, NULL, 1000, '2026-01-15', '2026-01-15 11:50:07', '2026-01-15 11:50:07'),
(38, 1, 43, NULL, 1000, '2026-01-15', '2026-01-15 11:51:09', '2026-01-15 11:51:09'),
(39, 1, 41, NULL, 1000, '2026-01-15', '2026-01-15 11:52:00', '2026-01-15 11:52:00'),
(40, 1, 76, NULL, 1000, '2026-01-15', '2026-01-15 11:52:29', '2026-01-15 11:52:29'),
(41, 1, 108, NULL, 1000, '2026-01-15', '2026-01-15 11:53:58', '2026-01-15 11:53:58'),
(42, 1, 109, NULL, 1000, '2026-01-15', '2026-01-15 11:54:34', '2026-01-15 11:54:34'),
(43, 1, 110, NULL, 1000, '2026-01-15', '2026-01-15 11:55:06', '2026-01-15 11:55:06'),
(44, 1, 32, NULL, 1000, '2026-01-15', '2026-01-15 11:55:47', '2026-01-15 11:55:47'),
(45, 1, 33, NULL, 1000, '2026-01-15', '2026-01-15 11:56:16', '2026-01-15 11:56:16'),
(46, 1, 34, NULL, 1000, '2026-01-15', '2026-01-15 11:56:50', '2026-01-15 11:56:50'),
(47, 1, 35, NULL, 1000, '2026-01-15', '2026-01-15 11:57:40', '2026-01-15 11:57:40'),
(48, 1, 36, NULL, 1000, '2026-01-15', '2026-01-15 11:58:14', '2026-01-15 11:58:14'),
(49, 1, 37, NULL, 1000, '2026-01-15', '2026-01-15 11:58:46', '2026-01-15 11:58:46'),
(50, 1, 38, NULL, 1000, '2026-01-15', '2026-01-15 11:59:19', '2026-01-15 11:59:19'),
(51, 1, 39, NULL, 1000, '2026-01-15', '2026-01-15 11:59:52', '2026-01-15 11:59:52'),
(52, 1, 40, NULL, 1000, '2026-01-15', '2026-01-15 12:00:22', '2026-01-15 12:00:22'),
(53, 1, 79, NULL, 1000, '2026-01-15', '2026-01-15 12:01:11', '2026-01-15 12:01:11'),
(54, 1, 112, NULL, 100, '2026-01-15', '2026-01-15 12:05:38', '2026-01-15 12:05:38'),
(55, 1, 113, NULL, 100, '2026-01-15', '2026-01-15 12:06:29', '2026-01-15 12:06:29'),
(56, 1, 81, NULL, 1000, '2026-01-15', '2026-01-15 12:07:03', '2026-01-15 12:07:03'),
(57, 1, 83, NULL, 1000, '2026-01-15', '2026-01-15 12:11:08', '2026-01-15 12:11:08'),
(58, 1, 86, NULL, 1000, '2026-01-15', '2026-01-15 12:11:49', '2026-01-15 12:11:49'),
(59, 1, 84, NULL, 1000, '2026-01-15', '2026-01-15 12:12:21', '2026-01-15 12:12:21'),
(60, 1, 107, NULL, 1000, '2026-01-15', '2026-01-15 12:12:52', '2026-01-15 12:12:52'),
(61, 1, 101, NULL, 1000, '2026-01-15', '2026-01-15 12:14:00', '2026-01-15 12:14:00'),
(62, 1, 90, NULL, 1000, '2026-01-15', '2026-01-15 12:31:42', '2026-01-15 12:31:42'),
(63, 1, 91, NULL, 1000, '2026-01-15', '2026-01-15 12:32:31', '2026-01-15 12:32:31'),
(64, 1, 92, NULL, 1000, '2026-01-15', '2026-01-15 12:33:11', '2026-01-15 12:33:11'),
(65, 1, 94, NULL, 1000, '2026-01-15', '2026-01-15 12:33:46', '2026-01-15 12:33:46'),
(66, 1, 95, NULL, 1000, '2026-01-15', '2026-01-15 12:34:38', '2026-01-15 12:34:38'),
(67, 1, 96, NULL, 1000, '2026-01-15', '2026-01-15 12:35:05', '2026-01-15 12:35:05'),
(68, 1, 97, NULL, 1000, '2026-01-15', '2026-01-15 12:35:32', '2026-01-15 12:35:32'),
(69, 1, 98, NULL, 1000, '2026-01-15', '2026-01-15 12:36:27', '2026-01-15 12:36:27'),
(70, 1, 102, NULL, 1000, '2026-01-15', '2026-01-15 12:36:58', '2026-01-15 12:36:58'),
(71, 1, 103, NULL, 1000, '2026-01-15', '2026-01-15 12:37:26', '2026-01-15 12:37:26'),
(72, 1, 104, NULL, 1000, '2026-01-15', '2026-01-15 12:37:46', '2026-01-15 12:37:46'),
(73, 1, 105, NULL, 1000, '2026-01-15', '2026-01-15 12:38:10', '2026-01-15 12:38:10'),
(74, 1, 106, NULL, 1000, '2026-01-15', '2026-01-15 12:38:49', '2026-01-15 12:38:49'),
(75, 1, 163, NULL, 100, '2026-01-16', '2026-01-16 07:45:30', '2026-01-16 07:45:30'),
(76, 1, 164, NULL, 100, '2026-01-16', '2026-01-16 07:46:20', '2026-01-16 07:46:20'),
(77, 1, 165, NULL, 100, '2026-01-16', '2026-01-16 07:47:24', '2026-01-16 07:47:24'),
(78, 1, 166, NULL, 100, '2026-01-16', '2026-01-16 07:48:00', '2026-01-16 07:48:00'),
(79, 1, 167, NULL, 100, '2026-01-16', '2026-01-16 07:49:38', '2026-01-16 07:49:38'),
(80, 1, 168, NULL, 100, '2026-01-16', '2026-01-16 07:50:40', '2026-01-16 07:50:40'),
(81, 1, 170, NULL, 100, '2026-01-16', '2026-01-16 07:52:17', '2026-01-16 07:52:17'),
(82, 1, 171, NULL, 100, '2026-01-16', '2026-01-16 07:53:03', '2026-01-16 07:53:03'),
(83, 1, 172, NULL, 100, '2026-01-16', '2026-01-16 07:53:53', '2026-01-16 07:53:53'),
(84, 1, 173, NULL, 100, '2026-01-16', '2026-01-16 07:54:24', '2026-01-16 07:54:24'),
(85, 1, 174, NULL, 100, '2026-01-16', '2026-01-16 07:54:52', '2026-01-16 07:54:52'),
(86, 1, 175, NULL, 100, '2026-01-16', '2026-01-16 07:55:31', '2026-01-16 07:55:31'),
(87, 1, 206, NULL, 100, '2026-01-16', '2026-01-16 07:57:00', '2026-01-16 07:57:00'),
(88, 1, 120, NULL, 100, '2026-01-16', '2026-01-16 07:57:46', '2026-01-16 07:57:46'),
(89, 1, 122, NULL, 100, '2026-01-16', '2026-01-16 07:58:11', '2026-01-16 07:58:11'),
(90, 1, 123, NULL, 100, '2026-01-16', '2026-01-16 07:58:46', '2026-01-16 07:58:46'),
(91, 1, 124, NULL, 100, '2026-01-16', '2026-01-16 07:59:31', '2026-01-16 07:59:31'),
(92, 1, 125, NULL, 100, '2026-01-16', '2026-01-16 08:00:06', '2026-01-16 08:00:06'),
(93, 1, 126, NULL, 100, '2026-01-16', '2026-01-16 08:00:28', '2026-01-16 08:00:28'),
(94, 1, 127, NULL, 100, '2026-01-16', '2026-01-16 08:00:59', '2026-01-16 08:00:59'),
(95, 1, 207, NULL, 100, '2026-01-16', '2026-01-16 08:02:37', '2026-01-16 08:02:37'),
(96, 1, 208, NULL, 100, '2026-01-16', '2026-01-16 08:03:05', '2026-01-16 08:03:05'),
(97, 1, 130, NULL, 100, '2026-01-16', '2026-01-16 08:05:20', '2026-01-16 08:05:20'),
(98, 1, 132, NULL, 1000, '2026-01-16', '2026-01-16 08:07:36', '2026-01-16 08:07:36'),
(99, 1, 147, NULL, 100, '2026-01-16', '2026-01-16 08:09:21', '2026-01-16 08:09:21'),
(100, 1, 149, NULL, 100, '2026-01-16', '2026-01-16 08:10:33', '2026-01-16 08:10:33'),
(101, 1, 150, NULL, 100, '2026-01-16', '2026-01-16 08:11:04', '2026-01-16 08:11:04'),
(102, 1, 151, NULL, 100, '2026-01-16', '2026-01-16 08:11:39', '2026-01-16 08:11:39'),
(103, 1, 152, NULL, 100, '2026-01-16', '2026-01-16 08:12:08', '2026-01-16 08:12:08'),
(104, 1, 153, NULL, 100, '2026-01-16', '2026-01-16 08:12:45', '2026-01-16 08:12:45'),
(105, 1, 154, NULL, 100, '2026-01-16', '2026-01-16 08:13:19', '2026-01-16 08:13:19'),
(106, 1, 155, NULL, 100, '2026-01-16', '2026-01-16 08:15:30', '2026-01-16 08:15:30'),
(107, 1, 156, NULL, 100, '2026-01-16', '2026-01-16 08:16:03', '2026-01-16 08:16:03'),
(108, 1, 157, NULL, 100, '2026-01-16', '2026-01-16 08:16:57', '2026-01-16 08:16:57'),
(109, 1, 158, NULL, 100, '2026-01-16', '2026-01-16 08:17:28', '2026-01-16 08:17:28'),
(110, 1, 159, NULL, 100, '2026-01-16', '2026-01-16 08:17:54', '2026-01-16 08:17:54'),
(111, 1, 160, NULL, 100, '2026-01-16', '2026-01-16 08:18:15', '2026-01-16 08:18:15'),
(112, 1, 161, NULL, 100, '2026-01-16', '2026-01-16 08:18:44', '2026-01-16 08:18:44'),
(113, 1, 162, NULL, 100, '2026-01-16', '2026-01-16 08:19:06', '2026-01-16 08:19:06'),
(114, 1, 134, NULL, 1000, '2026-01-16', '2026-01-16 08:23:21', '2026-01-16 08:23:21'),
(115, 1, 133, NULL, 1000, '2026-01-16', '2026-01-16 08:23:46', '2026-01-16 08:23:46'),
(116, 1, 135, NULL, 1000, '2026-01-16', '2026-01-16 08:24:07', '2026-01-16 08:24:07'),
(117, 1, 137, NULL, 100, '2026-01-16', '2026-01-16 08:24:42', '2026-01-16 08:24:42'),
(118, 1, 138, NULL, 100, '2026-01-16', '2026-01-16 08:25:06', '2026-01-16 08:25:06'),
(119, 1, 139, NULL, 100, '2026-01-16', '2026-01-16 08:25:38', '2026-01-16 08:25:38'),
(120, 1, 140, NULL, 100, '2026-01-16', '2026-01-16 08:26:13', '2026-01-16 08:26:13'),
(121, 1, 209, NULL, 100, '2026-01-16', '2026-01-16 09:45:40', '2026-01-16 09:45:40'),
(122, 1, 210, NULL, 100, '2026-01-16', '2026-01-16 09:46:13', '2026-01-16 09:46:13'),
(123, 1, 211, NULL, 100, '2026-01-16', '2026-01-16 09:46:50', '2026-01-16 09:46:50'),
(124, 1, 212, NULL, 100, '2026-01-16', '2026-01-16 09:47:22', '2026-01-16 09:47:22'),
(125, 1, 213, NULL, 100, '2026-01-16', '2026-01-16 09:48:11', '2026-01-16 09:48:11'),
(126, 1, 214, NULL, 100, '2026-01-16', '2026-01-16 09:48:43', '2026-01-16 09:48:43'),
(127, 1, 215, NULL, 100, '2026-01-16', '2026-01-16 09:49:13', '2026-01-16 09:49:13'),
(128, 1, 216, NULL, 100, '2026-01-16', '2026-01-16 09:49:46', '2026-01-16 09:49:46'),
(129, 1, 217, NULL, 100, '2026-01-16', '2026-01-16 09:50:26', '2026-01-16 09:50:26'),
(130, 1, 218, NULL, 100, '2026-01-16', '2026-01-16 09:50:55', '2026-01-16 09:50:55'),
(131, 1, 220, NULL, 100, '2026-01-16', '2026-01-16 09:51:59', '2026-01-16 09:51:59'),
(132, 1, 221, NULL, 100, '2026-01-16', '2026-01-16 09:52:34', '2026-01-16 09:52:34'),
(133, 1, 222, NULL, 100, '2026-01-16', '2026-01-16 09:53:04', '2026-01-16 09:53:04'),
(134, 1, 146, NULL, 100, '2026-01-16', '2026-01-16 09:55:22', '2026-01-16 09:55:22'),
(135, 1, 142, NULL, 100, '2026-01-16', '2026-01-16 09:56:06', '2026-01-16 09:56:06'),
(136, 1, 145, NULL, 100, '2026-01-16', '2026-01-16 09:56:41', '2026-01-16 09:56:41'),
(137, 1, 144, NULL, 100, '2026-01-16', '2026-01-16 09:57:17', '2026-01-16 09:57:17'),
(138, 1, 223, NULL, 100, '2026-01-16', '2026-01-16 09:58:33', '2026-01-16 09:58:33'),
(139, 1, 176, NULL, 100, '2026-01-16', '2026-01-16 09:59:26', '2026-01-16 09:59:26'),
(140, 1, 178, NULL, 100, '2026-01-16', '2026-01-16 09:59:55', '2026-01-16 09:59:55'),
(141, 1, 177, NULL, 100, '2026-01-16', '2026-01-16 10:00:27', '2026-01-16 10:00:27'),
(142, 1, 181, NULL, 100, '2026-01-16', '2026-01-16 10:01:23', '2026-01-16 10:01:23'),
(143, 1, 182, NULL, 100, '2026-01-16', '2026-01-16 10:02:01', '2026-01-16 10:02:01'),
(144, 1, 183, NULL, 100, '2026-01-16', '2026-01-16 10:03:03', '2026-01-16 10:03:03'),
(145, 1, 184, NULL, 100, '2026-01-16', '2026-01-16 10:03:43', '2026-01-16 10:03:43'),
(146, 1, 185, NULL, 100, '2026-01-16', '2026-01-16 10:04:31', '2026-01-16 10:04:31'),
(147, 1, 186, NULL, 1000, '2026-01-16', '2026-01-16 10:05:10', '2026-01-16 10:05:10'),
(148, 1, 187, NULL, 100, '2026-01-16', '2026-01-16 10:05:43', '2026-01-16 10:05:43'),
(149, 1, 189, NULL, 100, '2026-01-16', '2026-01-16 10:06:15', '2026-01-16 10:06:15'),
(150, 1, 192, NULL, 100, '2026-01-16', '2026-01-16 10:06:46', '2026-01-16 10:06:46'),
(151, 1, 191, NULL, 100, '2026-01-16', '2026-01-16 10:07:13', '2026-01-16 10:07:13'),
(152, 1, 190, NULL, 100, '2026-01-16', '2026-01-16 10:07:46', '2026-01-16 10:07:46'),
(153, 1, 193, NULL, 100, '2026-01-16', '2026-01-16 10:08:27', '2026-01-16 10:08:27'),
(154, 1, 121, NULL, 100, '2026-01-16', '2026-01-16 10:08:56', '2026-01-16 10:08:56'),
(155, 1, 194, NULL, 100, '2026-01-16', '2026-01-16 10:09:31', '2026-01-16 10:09:31'),
(156, 1, 118, NULL, 100, '2026-01-16', '2026-01-16 10:09:59', '2026-01-16 10:09:59'),
(157, 1, 195, NULL, 100, '2026-01-16', '2026-01-16 10:10:30', '2026-01-16 10:10:30'),
(158, 1, 196, NULL, 100, '2026-01-16', '2026-01-16 10:10:57', '2026-01-16 10:10:57'),
(159, 1, 197, NULL, 100, '2026-01-16', '2026-01-16 10:11:26', '2026-01-16 10:11:26'),
(160, 1, 198, NULL, 100, '2026-01-16', '2026-01-16 10:12:05', '2026-01-16 10:12:05'),
(161, 1, 199, NULL, 100, '2026-01-16', '2026-01-16 10:12:35', '2026-01-16 10:12:35'),
(162, 1, 200, NULL, 100, '2026-01-16', '2026-01-16 10:13:06', '2026-01-16 10:13:06'),
(163, 1, 201, NULL, 100, '2026-01-16', '2026-01-16 10:13:34', '2026-01-16 10:13:34'),
(164, 1, 202, NULL, 100, '2026-01-16', '2026-01-16 10:13:58', '2026-01-16 10:13:58'),
(165, 1, 203, NULL, 100, '2026-01-16', '2026-01-16 10:14:30', '2026-01-16 10:14:30'),
(166, 1, 204, NULL, 100, '2026-01-16', '2026-01-16 10:14:58', '2026-01-16 10:14:58'),
(167, 1, 205, NULL, 100, '2026-01-16', '2026-01-16 10:15:28', '2026-01-16 10:15:28'),
(168, 1, 114, NULL, 100, '2026-01-16', '2026-01-16 10:16:03', '2026-01-16 10:16:03'),
(169, 1, 117, NULL, 100, '2026-01-16', '2026-01-16 10:18:11', '2026-01-16 10:18:11'),
(170, 1, 115, NULL, 100, '2026-01-16', '2026-01-16 10:18:43', '2026-01-16 10:18:43'),
(171, 1, 116, NULL, 100, '2026-01-16', '2026-01-16 10:19:58', '2026-01-16 10:19:58'),
(172, 1, 224, NULL, 100, '2026-01-16', '2026-01-16 10:43:13', '2026-01-16 10:43:13'),
(173, 1, 227, NULL, 100, '2026-01-16', '2026-01-16 10:43:48', '2026-01-16 10:43:48'),
(174, 1, 225, NULL, 100, '2026-01-16', '2026-01-16 10:44:18', '2026-01-16 10:44:18'),
(175, 1, 226, NULL, 100, '2026-01-16', '2026-01-16 10:44:44', '2026-01-16 10:44:44'),
(176, 1, 7, NULL, 100, '2026-01-16', '2026-01-16 10:53:31', '2026-01-16 10:53:31'),
(177, 1, 1, NULL, 100, '2026-01-16', '2026-01-16 10:54:09', '2026-01-16 10:54:09'),
(178, 1, 2, NULL, 100, '2026-01-16', '2026-01-16 10:54:33', '2026-01-16 10:54:33'),
(179, 1, 3, NULL, 100, '2026-01-16', '2026-01-16 10:54:59', '2026-01-16 10:54:59'),
(180, 1, 4, NULL, 100, '2026-01-16', '2026-01-16 10:55:22', '2026-01-16 10:55:22'),
(181, 1, 5, NULL, 100, '2026-01-16', '2026-01-16 10:55:51', '2026-01-16 10:55:51'),
(182, 1, 8, NULL, 100, '2026-01-16', '2026-01-16 10:56:24', '2026-01-16 10:56:24'),
(183, 1, 9, NULL, 100, '2026-01-16', '2026-01-16 10:56:50', '2026-01-16 10:56:50'),
(184, 1, 10, NULL, 100, '2026-01-16', '2026-01-16 10:58:09', '2026-01-16 10:58:09'),
(185, 1, 11, NULL, 100, '2026-01-16', '2026-01-16 10:58:42', '2026-01-16 10:58:42'),
(186, 1, 12, NULL, 100, '2026-01-16', '2026-01-16 10:59:14', '2026-01-16 10:59:14'),
(187, 1, 13, NULL, 100, '2026-01-16', '2026-01-16 10:59:52', '2026-01-16 10:59:52'),
(188, 1, 14, NULL, 100, '2026-01-16', '2026-01-16 11:00:19', '2026-01-16 11:00:19'),
(189, 1, 15, NULL, 100, '2026-01-16', '2026-01-16 11:00:45', '2026-01-16 11:00:45'),
(190, 1, 16, NULL, 100, '2026-01-16', '2026-01-16 11:01:17', '2026-01-16 11:01:17'),
(191, 1, 229, NULL, 100, '2026-01-16', '2026-01-16 11:03:18', '2026-01-16 11:03:18'),
(192, 1, 228, NULL, 100, '2026-01-16', '2026-01-16 11:03:56', '2026-01-16 11:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_invoice`
--

CREATE TABLE `purchase_order_invoice` (
  `purchase_order_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `attribute` text DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_invoice`
--

INSERT INTO `purchase_order_invoice` (`purchase_order_id`, `description`, `sku`, `attribute`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(23, 'WD 40 Mup 4 liter', '', '', 100, 100.00, '2026-01-15 09:37:51', '2026-01-15 09:37:51'),
(23, 'WD-40 277 ML Mup', '', '', 100, 100.00, '2026-01-15 09:37:51', '2026-01-15 09:37:51'),
(23, 'WD-40 382 ML Mup', '', '', 100, 100.00, '2026-01-15 09:37:51', '2026-01-15 09:37:51'),
(23, 'WD-40 412 ML Smart Straw', '', '', 100, 100.00, '2026-01-15 09:37:51', '2026-01-15 09:37:51'),
(24, 'WD-40 Specialist Silicone 360 ML', '', '', 100, 100.00, '2026-01-15 09:39:01', '2026-01-15 09:39:01'),
(24, 'WD-40 Specialsit Air Condition Cleaner', '', '', 100, 100.00, '2026-01-15 09:39:01', '2026-01-15 09:39:01'),
(24, 'WD-40 Specialsit Belt Dressing', '', '', 100, 100.00, '2026-01-15 09:39:01', '2026-01-15 09:39:01'),
(24, 'WD-40 Specialsit Contact Cleaner', '', '', 100, 100.00, '2026-01-15 09:39:01', '2026-01-15 09:39:01'),
(24, 'WD-40 Specilaist Brakes And Parts Cleaner 450 Ml', '', '', 100, 100.00, '2026-01-15 09:39:01', '2026-01-15 09:39:01'),
(25, 'V-Tech Rtv Vt 140b1 Se 56.8g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 141', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 144 20 g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 144', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 151 Se 70 g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 152 Se 70 g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 152 Se 70 g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 161 32g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Rtv Vt 173 32 g', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'Vital Band vt 420', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Vt 200 clear', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Vt 201 clear', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Vt 220  White', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'Vtech Vt 224', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Vt 230  White', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(25, 'V-Tech Vt 620 sg', '', '', 100, 100.00, '2026-01-15 09:41:23', '2026-01-15 09:41:23'),
(26, '2 pces lock installation Kit', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, '5 pcs hole saw set', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, '5 pcs JIg Saw Blade', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, '16 pcs holes saw set', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, '5 pcs lock installation kit', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Circular Saw Blade', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Chisel for wood', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Compass Saw ( Wooden Handle) 14 inchi', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Compass Saw ( plastic handle) 14 inchi', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Electrode Holder 500a', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Rander Fall  iron planner 1.5', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Hack Saw blade', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Hack Saw blade', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'LN KEY', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Pad lock', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Piller', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Power Tool', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Professional tools', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Rivet Gun Gold Color 15 Inchi', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Silicon gun', '', '', 1000, 1000.00, '2026-01-15 09:58:47', '2026-01-15 09:58:47'),
(26, 'Glue Gun 40 w & 60 w', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Socket chorme plated 08mm 10mm 11mm 12mm 13 mm 20 mm 21 mm 22 mm 23 mm 24 mm 25 mm 26 mm 27 mm 30 mm', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Socket chorme plated 08 mm 10 mm 11 mm 12 mm 13 mm 20 mm 21 mm 22 mm 23 mm 24 mm 25 mm 26 mm 27 mm 30 mm', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Combination spanner chorme', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Combination spanner chorme', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Spanner double right bright chorme', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Measurement Tape 3m and 5 m dx 09', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Measurement tape 3m and 5m a 70', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'measurement tape 3m and 5m a 70', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Measurement Tape 3m and 5m dx 37 and a69', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Measurement Tape Hl 03 3m 5m (Nickle Blade)', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Measuremnt tape 3m and 5m a 70 3x16 non magnetic', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Steel Tape 15m & 30 M', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable wrench black nikel plated non grip', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Pipe wrench bir super', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Socket Set', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable wrench  green handle', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable Wrench Multi Color Bir Professional', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable wrench red', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'L Handle Wrench 12X15 mm super', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'T Handle socket 10 mm 8mm', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Screw Driver', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable roller handle extension pole 5 inchi', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Adjustable roller handle pro 9 inchi', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(26, 'Cup Hook 12 pcs set', '', '', 1000, 1000.00, '2026-01-15 09:58:48', '2026-01-15 09:58:48'),
(27, 'Cup Wire Brush 3 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Paint Brush Solid Filament with plastic handle', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Roller brush 4 inchi white', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Roller brush 4 inchi yellow', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Roller brush luxary 9 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Roller Handle', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Shovel Steel handel round shape', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Test Pencil', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Tools Box Set 38 pc', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Hand Saw Yellow black handle with fire teeth', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Hack saw frame adjustable  black', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Hand Saw Wooden Handle with Fire Teeth 16 and 18 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Hac Saw Frame 834 Straigt', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Aluminium Level Sizes 9 12 14 16 18 20 22 24 30 36', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, '4 diamond cup grinding disk single', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, '4 inchi diamond cup grinding disk', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, '4 inchi diamond cutter', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, '4 inchi Diamond cutter prof quality', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, '4 inchi diamond cutter standard quality cutting and laing saw', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Diamond cutter 7 inchi seg cutting professional qiality', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'diamond cutter multi prof quality', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Metal Cutting disk 14 inchi 16 inchii  4 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Axe ( Bir Brand) Premium Quality  small', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Tiles cutter', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Tin Snip 10 inchi and 12 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Drill Bit  - Bir Tool', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Drill bit another', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Bolt Cutter 12 18 24 36@sizes', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Carpenter Pincher 7 inchi 8 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Cutter knif 2 extra balde', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Flad disk 60 grit 80 grit', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Flad disk 60 grit 80 grit', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Glass cutter black golde white colour', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(27, 'Scissor 8 inchi', '', '', 1000, 1000.00, '2026-01-15 10:03:49', '2026-01-15 10:03:49'),
(28, 'Ball Pein Hammer 08 oz', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(28, 'Chipping hammer with wooden handle', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(28, 'Claw Hammer with fiber glass 160 z 08 oz', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(28, 'Fiber glass handle', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(28, 'Machinist hammer with wooden handle', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(28, 'Rubber mallat hammer with with fiber glass handle', '', '', 1000, 1000.00, '2026-01-15 10:05:34', '2026-01-15 10:05:34'),
(29, 'Garden SCissor 10 inchi', '', '', 100, 100.00, '2026-01-15 11:37:02', '2026-01-15 11:37:02'),
(30, 'Cross key pad lock', '', '', 100, 100.00, '2026-01-15 12:04:34', '2026-01-15 12:04:34'),
(30, 'Snake key pad lock', '', '', 100, 100.00, '2026-01-15 12:04:34', '2026-01-15 12:04:34'),
(31, '6 inchi Piano Hinge', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '5 Steps 150 kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '6 Steps 150 kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '7 steps 150 kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '8 steps 150 kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9 Steps 150 kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '6 Steps 180kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '6 Steps 180kg capacity', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9 Steps', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '5ftx8 Steps 200 kg', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '6 ft10 steps 200 kg', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '7ft 12 steps 200kg', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, 'Brad Nails', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '85 11 AC', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '85 11 ORB', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '85 11 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '813 990 black ac', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '813 990 black ac', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '813 990 black ac', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1015 h 502 orb', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1232 A 1048 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1232 A 1048 MSN', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1232 A 1501 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1232 A 9044 MSN', '', '', 1000, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1232A 1695 MSN', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1248  A 9043 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '1248  A 9043 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9252 301 SN CP', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9136 507 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9123 Z 454 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9302 442 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9302 ER 16 BRED', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9325 536 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9349 D 113 BSN MSN', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9522 406 MCF', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '9577 583 BRED', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '85138-377 ORB', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, '95479 826 BRED', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, 'H 58177 H 192 BLACK AC', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, 'H 58177 H 192 ORG', '', '', 100, 100.00, '2026-01-16 07:32:36', '2026-01-16 07:32:36'),
(31, 'KG 09 XL 382 RG', '', '', 100, 100.00, '2026-01-16 07:32:37', '2026-01-16 07:32:37'),
(31, 'M 1200 H 741 DAB', '', '', 100, 100.00, '2026-01-16 07:32:37', '2026-01-16 07:32:37'),
(31, 'M1158 H 655 AC', '', '', 100, 100.00, '2026-01-16 07:32:37', '2026-01-16 07:32:37'),
(32, 'P 1166 H 254 DAC BLACK AC', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'X 830 L 8040 MSN', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Z 9106 Z 96 ORB', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'UN KNOWN', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '9325 536 BRED', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '9302 E 16 MCF', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '7312 SS DEAD BOLT DOUBLE', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '9302 E 16 MCF', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'D 812 SS DEAD BOLT SINGLE SQUARE', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Door chain', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'XH 052 door closer vikars', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Vikar door knocer with viewer ac 728', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Vikar door knocer with viewer ac 729', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '888 DOOR STOPPER SS', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Vikars door stopped 388 ss', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Door stoppe ss vikar 823', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Door viewer with shutter', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Drawer channel', '', '', 100, 1000.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'drawer channel', '', '', 1000, 1000.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'PAD LOCK CR 6360 CROSS KEY', '', '', 1000, 1000.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '1314 B BIKE PAD LOCK', '', '', 1000, 1000.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'PAD LOCK NP 60 MATT', '', '', 1000, 1000.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'SF 9601 A DECORATION MACHINE 6', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'GR 03 soft Pattern Rubber 6', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'SF 9501 a decoration machine 7', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '310 RIM LOCK 12 KEY AC WITHOUT CHAIN', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Round Lock ss sheet', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Round Lock Zinc', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'SS Door Hinge', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Vikars-299 (Orange)', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Tower Bolt', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Stainless Steel Screws', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Sponge kit', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '138 22 SS DRAWER LOCK JB TYPE', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'FURTINURE LOCK CP WAVE COMPUTER KEY', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'FURTINURE LOCK CP WAVE COMPUTER KEY', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Showcase lock', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '1.5 feet 8 Bar', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '1.5 fit 4 bar', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '2 fit 4 bar', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, '2 fit 8 bar', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Hyfrolic and normal concealed hingle', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Iron Drawer Lock With Steel Key', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Ab liver lock 6271', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Black liver lock 6271', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'SS liver lock 6271', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'XX liver lock 6211', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'LPG Regulator orange 22 mm', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(32, 'Lpg regulator silver 22 mm', '', '', 100, 100.00, '2026-01-16 07:42:59', '2026-01-16 07:42:59'),
(33, '1  1.5   2.5 3 4 inchi concrete Nail  per kg', '', '', 100, 100.00, '2026-01-16 07:56:25', '2026-01-16 07:56:25'),
(34, 'Door stoppe ss vikar 823', '', '', 100, 100.00, '2026-01-16 08:01:47', '2026-01-16 08:01:47'),
(34, 'Vikars door stopped 388 ss', '', '', 100, 100.00, '2026-01-16 08:01:47', '2026-01-16 08:01:47'),
(35, '5801 RG DIAMOND KNOB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5801 SS DIAMOND KNOB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5885 AC', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5887 D AC PB FULL ZINC', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5890 COFFEE', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5890-BN PB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5890-SB PB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5890-SS', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5892-AC', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, '5893-AC', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, 'CINCI AB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, 'CNCI AB', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, 'CNCI AC', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(35, 'CNCI CP', '', '', 100, 100.00, '2026-01-16 09:44:26', '2026-01-16 09:44:26'),
(36, 'Window Roller', '', '', 100, 100.00, '2026-01-16 09:57:50', '2026-01-16 09:57:50'),
(37, '85 12 ORB', '', '', 100, 100.00, '2026-01-16 10:42:32', '2026-01-16 10:42:32'),
(37, '1232 A 1501 BSN', '', '', 100, 100.00, '2026-01-16 10:42:32', '2026-01-16 10:42:32'),
(37, '1232 A 9014 MAB', '', '', 100, 100.00, '2026-01-16 10:42:32', '2026-01-16 10:42:32'),
(37, '232 A 9014 MCF', '', '', 100, 100.00, '2026-01-16 10:42:32', '2026-01-16 10:42:32'),
(38, 'Bir 107', '', '', 100, 100.00, '2026-01-16 11:02:28', '2026-01-16 11:02:28'),
(38, 'Kai 104', '', '', 100, 100.00, '2026-01-16 11:02:28', '2026-01-16 11:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_particular`
--

CREATE TABLE `purchase_order_particular` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(255) NOT NULL,
  `invNumber` varchar(255) DEFAULT NULL,
  `orderDate` date NOT NULL,
  `grandTotal` decimal(10,2) NOT NULL,
  `transfer_status` int(10) NOT NULL DEFAULT 0 COMMENT '1=Transfer\r\n0=Not transfer',
  `billingAddress` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_particular`
--

INSERT INTO `purchase_order_particular` (`id`, `supplier_id`, `invNumber`, `orderDate`, `grandTotal`, `transfer_status`, `billingAddress`, `shippingAddress`, `remarks`, `created_at`, `updated_at`) VALUES
(23, '2', '0001', '2026-01-15', 40000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 09:37:51', '2026-01-15 09:41:37'),
(24, '2', '0002', '2026-01-15', 50000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 09:39:01', '2026-01-15 09:41:31'),
(25, '2', '0003', '2026-01-15', 160000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 09:41:23', '2026-01-15 09:41:28'),
(26, '4', '0004', '2026-01-15', 45000000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 09:58:47', '2026-01-15 10:05:46'),
(27, '4', '0005', '2026-01-15', 34000000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 10:03:49', '2026-01-15 10:05:43'),
(28, '1', '0006', '2026-01-15', 6000000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 10:05:15', '2026-01-15 10:05:37'),
(29, '3', '0007', '2026-01-15', 10000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 11:37:02', '2026-01-15 11:37:06'),
(30, '2', '0008', '2026-01-16', 20000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-15 12:04:34', '2026-01-15 12:04:38'),
(31, '2', '0009', '2026-01-16', 520000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 07:32:36', '2026-01-16 07:43:10'),
(32, '3', '0010', '2026-01-16', 4540000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 07:40:27', '2026-01-16 07:43:03'),
(33, '3', '0011', '2026-01-16', 10000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 07:56:25', '2026-01-16 07:56:28'),
(34, '3', '0012', '2026-01-21', 20000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 08:01:47', '2026-01-16 08:01:53'),
(35, '2', '0013', '2026-01-16', 140000.00, 1, '', '', '', '2026-01-16 09:44:26', '2026-01-16 09:44:35'),
(36, '3', '0014', '2026-01-16', 10000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 09:57:50', '2026-01-16 09:57:54'),
(37, '2', '0015', '2026-01-16', 40000.00, 1, 'DHAKA', 'DHAKA', '', '2026-01-16 10:42:32', '2026-01-16 10:42:35'),
(38, '4', '0016', '2026-01-16', 20000.00, 1, 'Dhaka', 'Dhaka', '', '2026-01-16 11:02:28', '2026-01-16 11:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `role_type` int(11) NOT NULL COMMENT '1=admin,\r\n2=Editor,\r\n3=Viewer,\r\n4=General Post\r\n5=Product Manage\r\n6=User Manage\r\n\r\n\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', 1, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(2, 'editor', 'api', 2, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(3, 'viewer', 'api', 3, '2025-10-09 10:09:35', '2025-10-09 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles_type`
--

CREATE TABLE `roles_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_type`
--

INSERT INTO `roles_type` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'api', '2023-01-08 12:10:18', '2023-01-08 12:10:18'),
(2, 'Editor', 'api', '2023-01-23 14:58:53', '2023-01-23 14:58:53'),
(3, 'Viewer', 'api', '2023-01-23 15:01:22', '2023-01-23 15:01:22'),
(4, 'Customer', 'api', '2023-01-23 15:01:22', '2023-01-23 15:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(22, 1),
(22, 2),
(23, 2),
(24, 1),
(24, 2),
(33, 1),
(34, 1),
(35, 1),
(38, 1),
(39, 1),
(40, 1),
(43, 1),
(44, 1),
(45, 1),
(48, 1),
(49, 1),
(50, 1),
(53, 1),
(54, 1),
(55, 1),
(58, 1),
(59, 1),
(60, 1),
(63, 1),
(64, 1),
(65, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3nPGVY39hbfo8hAMwUqr40ZOFVmdzcF4KJYSLN3u', NULL, '91.221.71.170', 'Mozilla/5.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN21KRGdDa1d2OXByWEFKVlEwYlJ3RWFjZnZYdk03MUU1QjkwS2NQcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768353625),
('bSN7Os5teluLt0UPxj4X7wPVvjXKPanwvo0vhWCX', NULL, '3.151.194.164', 'air.ai/scanning Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkNiY2VmUVVDWG5EaVdrWG8xZG13V29WM1dRZEhsUlh2RFplQ2ZHaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768469943),
('fRFJl0VPhotNt8sGGBJyXMKJrjb1s77L8o4zkA5g', NULL, '199.45.154.121', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzdudGJBU1V2SDRQUHcyZXVKdjNLelJxRklaeVo0b05NbjgxNHV0eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768214651),
('gmu9YrLW6KGdC84sRhUyu13Tk3bad8EUqQJCgIAz', NULL, '3.139.242.79', 'air.ai/scanning Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmpNZkdwMHlRWG9ra0tXcXRTcjJYMVpmZkRGcFN3S3ZwekhPY0tmZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768470032),
('gUEAxRTbk7DbLHRnnGBtg0TkUTnDbLMPqDVL6D0N', NULL, '54.86.115.253', 'RecordedFuture Global Inventory Crawler', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlQxcllLSldzZGNrOVJhQWVyOHJLTW9pOGdrZVJmdmU4NXV4UUxZQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmFwaWJpcmdyb3VwLmZ1dHVyZWdlbml0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768196555),
('hmIa6FqAV83ICFQqrwcGFRrQxf45WUXZvM4mYPVX', NULL, '198.235.24.143', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE8yQ2pNSmEwRzcyT1B6S1JJNWgzdU9NMzd4a2Y2cjExU2JoOExvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmFwaWJpcmdyb3VwLmZ1dHVyZWdlbml0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768248997),
('mxWUR2aPGD3IsQpJncRjzknx7yFzEQW1MQlNwHuM', NULL, '66.132.153.138', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblNVRlJKWHRIcUFrNWR4S3VSZXRPSGpLanZrWkZQbXNiakFoTm93ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmFwaWJpcmdyb3VwLmZ1dHVyZWdlbml0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768212851),
('o4ev92CVtCiBPYU5fPtG0gqRAt8iC1mmhdyFqJfY', NULL, '45.250.23.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWxOQUJnUGl3cFBtOWY0UnE1dEhPb3ZPazNneWtTQ3JYSjhCTTdVYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768398480),
('OwPLZnh1NBO3HgBHr9kcsOhV6BbjhdePVf2tVZm0', NULL, '107.172.180.205', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_7_3) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWJPOHBQYVAxM0d0OWk3eEVTWUlWS3B5QkgyNTVjU09xN3lsZ1h6ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmFwaWJpcmdyb3VwLmZ1dHVyZWdlbml0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768251767),
('qsReymWnpAkjHpejNI9TTvHNKHx5jzllpC6WWdOC', NULL, '3.151.194.164', 'air.ai/scanning Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2w2V1IwTXQ5aWhwUW41SnFyME81V3h4eHJjbWZWblFYbXljRkVRayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYXBpYmlyZ3JvdXAuZnV0dXJlZ2VuaXQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768469941),
('YqV1mercoxw2TbTDO2Ctf7Jz2gdkEiMbDNxGlVwB', NULL, '167.94.138.118', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkxKMzhMQUZNdUgySU9uUUdLZ3ZwNThENVV1UzJoS1ZhaU1rOEJaMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LmFwaWJpcmdyb3VwLmZ1dHVyZWdlbml0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1768216862);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `whatsApp` varchar(255) NOT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `devliery_charge_inside_dhk` int(10) DEFAULT NULL,
  `devliery_charge_outside_dhk` int(10) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `promotional_banner` int(5) DEFAULT NULL COMMENT '1=show,0=hide',
  `level_1_bonus` int(11) DEFAULT NULL,
  `level_2_bonus` int(11) DEFAULT NULL,
  `level_3_bonus` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `tel`, `email`, `address`, `whatsApp`, `bkash_number`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `reffer_bonus`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `website`, `telegram`, `devliery_charge_inside_dhk`, `devliery_charge_outside_dhk`, `register_bonus`, `promotional_banner`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'Bir Group', '+880 1301-047166', 'info@vogexi.com', 'Address: 6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '+8801301047166', '01740586574', '+880 1301-047166', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.', 'Copyright © 2025 birgroup. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '', 5, '#', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', '#', '#', 60, 130, 5, 0, 0, 0, 0, NULL, '2024-05-12 05:32:50', '2026-01-07 10:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BMI', 1, '2025-11-03 00:09:06', '2025-12-10 08:03:01'),
(2, 'KGI HARDWARE ACCESSORIES LTD.', 1, '2025-11-03 00:09:16', '2025-11-03 00:09:16'),
(3, 'Bir Tools', 1, '2025-11-03 00:09:30', '2025-12-07 08:58:04'),
(4, 'Bir Consumer', 1, '2025-11-03 00:09:49', '2025-12-10 07:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_type` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_type`, `email_verified_at`, `password`, `phone_number`, `address`, `facebook`, `website`, `github`, `twitter`, `instagram`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bijon', 'mdbijon@gmail.com', NULL, NULL, '$2y$10$twPRnHMLuDEr0zXTdnKfyuYhy3nR0ulRaS5pQivZxZSuxPyrVKSt2', '01915728982', 'DHK', 'https://www.facebook.com/watch/?ref=tab', '', '', '', '', 1, NULL, '2025-10-09 10:28:23', '2025-10-10 10:36:15'),
(2, 'editor', 'editor@gmail.com', NULL, NULL, '$2y$12$kcRYrErMlXw1PxXC/B3wd.5WCf0Nwbo1fLFWmhsxM/mOfLCdJvI3q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-09 11:02:48', '2025-10-09 11:02:48'),
(3, 'admin2', 'admin2@gmail.com', NULL, NULL, '$2y$12$z.nUwSbaASsmm3h2W3BJW.nw17cCDk6wd2F4Et9hIpomsg54NX/u2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-09 11:08:24', '2025-10-09 11:08:24'),
(4, 'Viewer', 'viewer@gmail.com', NULL, NULL, '$2y$12$wXWrf0u9FvaM.6x12P7FbuN0JYbVeR7/j1psZenKQWbx5HlOl6M5G', '000564578788', 'DHK', '', '', '', '', '', 1, NULL, '2025-10-09 14:39:31', '2025-10-11 09:20:17'),
(22, 'Joynal', 'joynal@gmail.com', 4, NULL, '$2y$12$nQ5CIq1SHCYlH9XHcRBM0.say.Rg3IWsnOxGGM.dRwKEoMeDsj.I2', '06569899898', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-30 09:35:12', '2025-11-30 09:35:12'),
(23, 'Jannat', 'jannat@gmail.com', 4, NULL, '$2y$12$0rxFFHOG/L3HnzgkYWCmO.TCCak29MclFJi4xl14U.X/Z7wVvssOK', '01915728983', 'Mirpur-1,Dhaka, Bangladesh,', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-05 00:11:08', '2025-12-05 00:11:08'),
(24, 'Bijon ahmed', 'bijonahmed@gmail.com', 4, NULL, '$2y$12$bKQRaAnr1NYjDLPg4p3Y4eecuzRRiNK220gldASqjP/qa9wEFKxhO', '01915728988', 'Mirpur, Dhaka-1203', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-05 05:33:06', '2025-12-05 05:33:06'),
(25, 'Ebim123', 'ebim123@gmail.com', 4, NULL, '$2y$12$j/koKPbPOR2vsyUn7hyfou9/n3DDTf9BJezCiIcZufKQLBj4VyNhi', '4556748578', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-12 07:38:25', '2025-12-12 07:38:25'),
(26, 'ayesha', 'ayesha@gmail.com', 4, NULL, '$2y$12$D.QBuqD.eMI55WyVe9c8Pu6UWvbbnA89tCV3G3AWUi8ryZQE8uGoy', '018748975454', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-12 07:40:05', '2025-12-12 07:40:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pathao_tokens`
--
ALTER TABLE `pathao_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `product_attribue`
--
ALTER TABLE `product_attribue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img_history`
--
ALTER TABLE `product_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_invoice`
--
ALTER TABLE `purchase_order_invoice`
  ADD KEY `order_id` (`purchase_order_id`);

--
-- Indexes for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles_type`
--
ALTER TABLE `roles_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pathao_tokens`
--
ALTER TABLE `pathao_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `product_attribue`
--
ALTER TABLE `product_attribue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_img_history`
--
ALTER TABLE `product_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles_type`
--
ALTER TABLE `roles_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_invoice`
--
ALTER TABLE `purchase_order_invoice`
  ADD CONSTRAINT `purchase_order_invoice_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order_particular` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
