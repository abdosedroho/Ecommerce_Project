-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 03:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(2, 'Computer', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(3, 'Electronics', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(4, 'TVs & Applications', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(5, 'Fashion', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(6, 'Baby & kids', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(7, 'Home & Furniture', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(8, 'Sports ,Books', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(9, 'Mobile Accessories', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL),
(10, 'Others', 'http://127.0.0.1:8000/storage/caticon.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Abdallah', 'abdo@gmail.com', 'this is text message', '15-06-2022', '03:59:45pm', NULL, NULL),
(2, 'Abdallah', 'abdo@gmail.com', 'message from site', '15-06-2022', '08:02:06pm', NULL, NULL),
(3, 'test', 'test@gmail.com', 'message from test', '15-06-2022', '08:53:34pm', NULL, NULL),
(4, 'mayar', 'mayar@gmail.com', 'mklmlkmlkmol', '15-06-2022', '10:58:05pm', NULL, NULL),
(5, 'mayar', 'mayar@gamil.com', 'this is text', '16-06-2022', '12:26:34am', NULL, NULL),
(6, 'mayar', 'mayar@gamil.com', 'this is text', '16-06-2022', '12:57:37am', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_14_203153_create_sessions_table', 1),
(7, '2022_06_14_205207_create_visitors_table', 2),
(8, '2022_06_15_022339_create_contacts_table', 3),
(9, '2022_06_15_211654_create_site_infos_table', 4),
(10, '2022_06_16_012503_create_categories_table', 5),
(11, '2022_06_16_012954_create_subcategories_table', 6);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aDl9C5kCrTBAmkeDXYXhWuKYXvBdjxr1BdLl8ocu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicjc0dW5aNXU3Tk92czhmVlN0UW5QOXVNSWF2ZEZGNHNyVGprbzV0OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEgwVkZHZ2g2U1Bab2Y2VWtKSXhaUU94L0xjOTRiVmxmdU9NaEExaC9mYnZ2cVppM3JsWThpIjt9', 1655239164),
('C9FXaNrn4dz5GH2poNlKwumQXnmJkVOLAkFMhTWX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVG03bjV4azg0SEI5Z3RkcHN5NHhxOHJ4RUFlV2JhRG0xWGFNaVFCQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEgwVkZHZ2g2U1Bab2Y2VWtKSXhaUU94L0xjOTRiVmxmdU9NaEExaC9mYnZ2cVppM3JsWThpIjt9', 1655326141),
('PkHj1aB9BwtS5H1xW7i5e5aWZxIpDuRPj9xMgSau', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXZ2TG1pQ3h2MWpucTYzbDI1S1NUV211RVZSRVNvY01GOXByaXVUMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1655383262),
('Uq2tupu9WDLuF9J26P6OzbALNdguEs9YAmANKxx3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVB2ZkdBNEFEU1R0T29ZdGYwd0FBaTI3YjN6U3F0dUlxYXlqaFlPeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1655256078);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `parchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h4>Easy-shop, the online retail company in Egypt, was established in 2022 with a vision and objective to become a one-stop shop (one-stop-shop) for retail in Egypt with the application of best practices online. Delivery service is available all over Egypt. We initially set the average delivery time as a week, but now delivery takes 1-5 days</h4>', '<h4>Refund Page</h4>\r\n<p>Hi! I&#39;m Kazi Ariyan. I&#39;m a web developer with a serious love for teaching I am a founder of eLe easy Learning and a passionate Web Developer, Programmer &amp; Instructor.<br />\r\n<br />\r\nI am working online for the last 7 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.<br />\r\n<br />', '<h4>Purchase Page</h4>\r\n\r\n<p>Hi! I&#39;m Kazi Ariyan. I&#39;m a web developer with a serious love for teaching I am a founder of eLe easy Learning and a passionate Web Developer, Programmer &amp; Instructor.<br />\r\n<br />\r\nI am working online for the last 7 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.<br />\r\n<br />\r\nEach course has been hand-tailored to teach a specific skill. I hope you agree! Whether you&rsquo;re trying to learn a new skill from scratch or want to refresh your memory on something you&rsquo;ve learned in the past, you&rsquo;ve come to the right place.<br />\r\nEducation makes the world a better place. Make your world better with new skills.</p>', '<h4>Privacy Page</h4>\r\n\r\n<p>Hi! I&#39;m Kazi Ariyan. I&#39;m a web developer with a serious love for teaching I am a founder of eLe easy Learning and a passionate Web Developer, Programmer &amp; Instructor.<br />\r\n<br />\r\nI am working online for the last 7 years and have created several successful websites running on the internet. I try to create a project-based course that helps you to learn professionally and make you fell as a complete developer. easy learning exists to help you succeed in life.<br />\r\n<br />\r\nEach course has been hand-tailored to teach a specific skill. I hope you agree! Whether you&rsquo;re trying to learn a new skill from scratch or want to refresh your memory on something you&rsquo;ve learned in the past, you&rsquo;ve come to the right place.<br />\r\nEducation makes the world a better place. Make your world better with new skills.</p>', '<h4>Assuit,El Gomohoria Street <br />\r\nEmail: Support@EasyShop.com</h4>', 'http://localhost:3000/android', 'http://localhost:3000/iso', 'https://www.facebook.com/', 'https://twitter.com/', 'https://instagram.com/', '© Copyright 2021 by easy Shop, All Rights Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `Subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobiles', 'Apple', NULL, NULL),
(2, 'Mobiles', 'Samsung', NULL, NULL),
(3, 'Mobiles', 'OPPO', NULL, NULL),
(4, 'Computer', 'Laptops', NULL, NULL),
(5, 'Computer', 'Desktop', NULL, NULL),
(6, 'Electronics', 'Smart TV', NULL, NULL),
(7, 'Electronics', 'Camera', NULL, NULL),
(8, 'TVs & Appliances', 'Washing Machine', NULL, NULL),
(9, 'TVs & Appliances', 'Air Conditioners', NULL, NULL),
(10, 'Fashion', 'Mens Top Were', NULL, NULL),
(11, 'Fashion', 'Mens Footware', NULL, NULL),
(12, 'Fashion', 'Women Footware', NULL, NULL),
(13, 'Baby & Kids', 'Kids Footware', NULL, NULL),
(14, 'Baby & Kids', 'Kids Clothing', NULL, NULL),
(15, 'Baby & Kids', 'Baby Care', NULL, NULL),
(16, 'Home & Furniture', 'Home Decor', NULL, NULL),
(17, 'Home & Furniture', 'Bed Room Furniture', NULL, NULL),
(18, 'Home & Furniture', 'Living Room Furniture', NULL, NULL),
(19, 'Sports,Books', 'Health and Nutrition', NULL, NULL),
(20, 'Sports,Books', 'Home Gyms', NULL, NULL),
(21, 'Sports,Books', 'Books', NULL, NULL),
(22, 'Mobile Accessories', 'Mobile Cases', NULL, NULL),
(23, 'Mobile Accessories', 'HeadPhone', NULL, NULL),
(24, 'Others', '', NULL, NULL);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Kazi Ariyan', 'admin@gmail.com', NULL, '$2y$10$H0VFGgh6SPZof6UkJIxZQOx/Lc94bVlfuOMhA1h/fbvvqZi3rlY8i', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 18:37:56', '2022-06-14 18:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '03:22:16am', '15-06-2022', NULL, NULL),
(2, '127.0.0.1', '04:05:19am', '15-06-2022', NULL, NULL),
(3, '127.0.0.1', '04:08:10am', '15-06-2022', NULL, NULL),
(4, '127.0.0.1', '04:08:25am', '15-06-2022', NULL, NULL),
(5, '127.0.0.1', '04:29:52pm', '15-06-2022', NULL, NULL),
(6, '127.0.0.1', '09:37:31pm', '15-06-2022', NULL, NULL),
(7, '127.0.0.1', '09:37:32pm', '15-06-2022', NULL, NULL),
(8, '127.0.0.1', '10:56:41pm', '15-06-2022', NULL, NULL),
(9, '127.0.0.1', '12:54:35am', '16-06-2022', NULL, NULL),
(10, '127.0.0.1', '02:13:23am', '16-06-2022', NULL, NULL),
(11, '127.0.0.1', '02:53:50am', '16-06-2022', NULL, NULL),
(12, '127.0.0.1', '02:53:59am', '16-06-2022', NULL, NULL),
(13, '127.0.0.1', '02:54:07am', '16-06-2022', NULL, NULL),
(14, '127.0.0.1', '02:57:28am', '16-06-2022', NULL, NULL),
(15, '127.0.0.1', '03:53:49am', '16-06-2022', NULL, NULL),
(16, '127.0.0.1', '03:53:54am', '16-06-2022', NULL, NULL),
(17, '127.0.0.1', '03:53:58am', '16-06-2022', NULL, NULL),
(18, '127.0.0.1', '04:02:48am', '16-06-2022', NULL, NULL),
(19, '127.0.0.1', '04:07:04am', '16-06-2022', NULL, NULL),
(20, '127.0.0.1', '05:01:09am', '16-06-2022', NULL, NULL),
(21, '127.0.0.1', '05:01:27am', '16-06-2022', NULL, NULL),
(22, '127.0.0.1', '05:01:42am', '16-06-2022', NULL, NULL),
(23, '127.0.0.1', '05:02:01am', '16-06-2022', NULL, NULL),
(24, '127.0.0.1', '05:03:11am', '16-06-2022', NULL, NULL),
(25, '127.0.0.1', '05:03:39am', '16-06-2022', NULL, NULL),
(26, '127.0.0.1', '05:32:02am', '16-06-2022', NULL, NULL),
(27, '127.0.0.1', '05:37:57am', '16-06-2022', NULL, NULL),
(28, '127.0.0.1', '05:42:12am', '16-06-2022', NULL, NULL),
(29, '127.0.0.1', '05:43:08am', '16-06-2022', NULL, NULL),
(30, '127.0.0.1', '05:43:19am', '16-06-2022', NULL, NULL),
(31, '127.0.0.1', '05:44:26am', '16-06-2022', NULL, NULL),
(32, '127.0.0.1', '05:45:15am', '16-06-2022', NULL, NULL),
(33, '127.0.0.1', '05:45:35am', '16-06-2022', NULL, NULL),
(34, '127.0.0.1', '05:47:33am', '16-06-2022', NULL, NULL),
(35, '127.0.0.1', '05:48:11am', '16-06-2022', NULL, NULL),
(36, '127.0.0.1', '05:48:18am', '16-06-2022', NULL, NULL),
(37, '127.0.0.1', '05:48:43am', '16-06-2022', NULL, NULL),
(38, '127.0.0.1', '05:48:47am', '16-06-2022', NULL, NULL),
(39, '127.0.0.1', '05:50:32am', '16-06-2022', NULL, NULL),
(40, '127.0.0.1', '05:51:25am', '16-06-2022', NULL, NULL),
(41, '127.0.0.1', '05:52:14am', '16-06-2022', NULL, NULL),
(42, '127.0.0.1', '05:52:36am', '16-06-2022', NULL, NULL),
(43, '127.0.0.1', '05:52:38am', '16-06-2022', NULL, NULL),
(44, '127.0.0.1', '05:53:37am', '16-06-2022', NULL, NULL),
(45, '127.0.0.1', '05:53:48am', '16-06-2022', NULL, NULL),
(46, '127.0.0.1', '05:55:07am', '16-06-2022', NULL, NULL),
(47, '127.0.0.1', '05:55:17am', '16-06-2022', NULL, NULL),
(48, '127.0.0.1', '06:00:06am', '16-06-2022', NULL, NULL),
(49, '127.0.0.1', '06:00:09am', '16-06-2022', NULL, NULL),
(50, '127.0.0.1', '06:01:17am', '16-06-2022', NULL, NULL),
(51, '127.0.0.1', '06:02:22am', '16-06-2022', NULL, NULL),
(52, '127.0.0.1', '06:03:32am', '16-06-2022', NULL, NULL),
(53, '127.0.0.1', '06:04:51am', '16-06-2022', NULL, NULL),
(54, '127.0.0.1', '06:06:04am', '16-06-2022', NULL, NULL),
(55, '127.0.0.1', '06:07:14am', '16-06-2022', NULL, NULL),
(56, '127.0.0.1', '06:07:25am', '16-06-2022', NULL, NULL),
(57, '127.0.0.1', '06:08:29am', '16-06-2022', NULL, NULL),
(58, '127.0.0.1', '06:08:53am', '16-06-2022', NULL, NULL),
(59, '127.0.0.1', '06:09:17am', '16-06-2022', NULL, NULL),
(60, '127.0.0.1', '06:09:55am', '16-06-2022', NULL, NULL),
(61, '127.0.0.1', '06:11:12am', '16-06-2022', NULL, NULL),
(62, '127.0.0.1', '06:11:31am', '16-06-2022', NULL, NULL),
(63, '127.0.0.1', '06:11:59am', '16-06-2022', NULL, NULL),
(64, '127.0.0.1', '06:12:40am', '16-06-2022', NULL, NULL),
(65, '127.0.0.1', '06:14:29am', '16-06-2022', NULL, NULL),
(66, '127.0.0.1', '06:15:43am', '16-06-2022', NULL, NULL),
(67, '127.0.0.1', '06:18:19am', '16-06-2022', NULL, NULL),
(68, '127.0.0.1', '06:18:29am', '16-06-2022', NULL, NULL),
(69, '127.0.0.1', '06:19:48am', '16-06-2022', NULL, NULL),
(70, '127.0.0.1', '06:35:57am', '16-06-2022', NULL, NULL),
(71, '127.0.0.1', '06:35:59am', '16-06-2022', NULL, NULL),
(72, '127.0.0.1', '06:37:46am', '16-06-2022', NULL, NULL),
(73, '127.0.0.1', '06:38:02am', '16-06-2022', NULL, NULL),
(74, '127.0.0.1', '06:39:10am', '16-06-2022', NULL, NULL),
(75, '127.0.0.1', '06:43:45am', '16-06-2022', NULL, NULL),
(76, '127.0.0.1', '06:44:10am', '16-06-2022', NULL, NULL),
(77, '127.0.0.1', '06:44:13am', '16-06-2022', NULL, NULL),
(78, '127.0.0.1', '06:45:41am', '16-06-2022', NULL, NULL),
(79, '127.0.0.1', '06:50:19am', '16-06-2022', NULL, NULL),
(80, '127.0.0.1', '06:50:47am', '16-06-2022', NULL, NULL),
(81, '127.0.0.1', '06:50:56am', '16-06-2022', NULL, NULL),
(82, '127.0.0.1', '06:51:29am', '16-06-2022', NULL, NULL),
(83, '127.0.0.1', '06:51:34am', '16-06-2022', NULL, NULL),
(84, '127.0.0.1', '06:52:59am', '16-06-2022', NULL, NULL),
(85, '127.0.0.1', '07:03:42am', '16-06-2022', NULL, NULL),
(86, '127.0.0.1', '07:03:48am', '16-06-2022', NULL, NULL),
(87, '127.0.0.1', '02:41:14pm', '16-06-2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
