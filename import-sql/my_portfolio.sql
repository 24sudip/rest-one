-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 05:53 AM
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
-- Database: `my_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `resume` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `resume`, `created_at`, `updated_at`) VALUES
(1, 'About Me', '<div class=\"sub-title wow fadeInUp\" data-wow-delay=\"0.4s\" style=\"outline: none; animation-name: fadeInUp; font-size: 20px; font-weight: 600; margin-bottom: 30px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; visibility: visible; animation-delay: 0.4s;\"><p style=\"outline: none; margin-bottom: 0px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos repellendus sapiente, quae et eos dolorum.</p></div><div class=\"desc wow fadeInUp\" data-wow-delay=\"0.4s\" style=\"outline: none; animation-name: fadeInUp; margin-bottom: 50px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; visibility: visible; animation-delay: 0.4s;\"><p style=\"outline: none;\">Consectetur adipisicing elit. Laborum, magni libero similique, laboriosam, delectus reiciendis minima minus dolorem sit fuga rerum atque vel quaerat ipsum perspiciatis neque maxime recusandae fugit</p><p style=\"outline: none; margin-bottom: 0px;\">Ipsum dolor sit amet, consectetur adipisicing elit. Laborum, magni libero similique, laboriosam, delectus reiciendis minima minus dolorem sit fuga rerum atque vel quaerat ipsum perspiciatis neque maxime recusandae fugit.</p></div>', '/hero_uploads/1925989890about-image.png', '/hero_uploads/222172247news-excel.txt', '2024-10-18 05:43:42', '2024-10-18 06:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '4946 Bernardo Street Tampa, FL 33602', 1, NULL, NULL),
(2, '4384 Eagle Lane Duluth, MN 55802', 2, NULL, NULL),
(3, '1021 Lincoln Street Camden, NJ 08102', 3, NULL, NULL),
(4, '3200 Lowes Alley Delaware, OH 43015', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `blog_category_id`, `description`, `created_at`, `updated_at`) VALUES
(2, '/hero_uploads/2110728104blog-1.jpg', 'Great things never come from.', 2, '<h2 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 2rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">That and normal and we\'ve class. Explain attained.</h2><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.</p>', '2024-10-27 04:56:32', '2024-10-27 04:56:32'),
(3, '/hero_uploads/1976203079blog-2.jpg', 'Don’t stop when you’re tired. Stop when.', 3, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 18px; font-weight: 600; background-color: rgb(243, 247, 255);\">Standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.</span></p>', '2024-10-27 04:57:49', '2024-10-27 04:57:49'),
(4, '/hero_uploads/328300785blog-3.jpg', 'Success doesn’t just find you.', 2, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p>', '2024-10-27 04:58:47', '2024-10-27 04:58:47'),
(5, '/hero_uploads/1495082070blog-4.jpg', 'Sometimes later becomes never.', 3, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.</span></p>', '2024-10-27 04:59:54', '2024-10-27 04:59:54'),
(6, '/hero_uploads/1021988688blog-5.jpg', 'Don’t wait for opportunity. Create it.', 2, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque.</p>', '2024-10-27 05:01:51', '2024-10-27 05:01:51'),
(7, '/hero_uploads/1381444926blog-6.jpg', 'Your limitation-it’s only your imagination.', 3, '<h2 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 2rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">That and normal and we\'ve class. Explain attained.</h2><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.</p>', '2024-10-27 05:03:13', '2024-10-27 05:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Development', 'development', '2024-10-26 05:46:36', '2024-10-26 05:46:36'),
(3, 'Graphic Design', 'graphic-design', '2024-10-26 05:47:12', '2024-10-26 05:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_settings`
--

CREATE TABLE `blog_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_settings`
--

INSERT INTO `blog_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 'Creative Blog Post', 'Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-28 02:55:07', '2024-10-28 03:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Branding Design', 'branding-design', '2024-10-20 00:48:02', '2024-10-20 00:48:02'),
(3, 'User Interface', 'user-interface', '2024-10-20 00:48:33', '2024-10-20 00:48:33'),
(4, 'User Experience', 'user-experience', '2024-10-20 00:48:50', '2024-10-20 00:48:50'),
(5, 'Web Development', 'web-development', '2024-10-20 00:49:46', '2024-10-20 00:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '17232 Broadway Suite 308, Jackson Heights, 11372, NY, United States.', '+1347-430-9510', 'websolutionus1@gmail.com', '2024-10-30 02:28:01', '2024-10-31 23:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 'Lets Work Together', 'Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-29 01:22:40', '2024-10-29 01:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `image`, `title`, `description`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '/hero_uploads/1381632738exper.jpg', '5 Years Experiences on Design & Development.', '<p style=\"outline: none; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur. voluptate dignissimos recusandae omnis delectus quas incidunt inventore placeat ea illo totam consequuntur odio.</p><p style=\"outline: none; margin-bottom: 0px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo fugit officia itaque soluta minus officiis, atque, debitis ipsa ipsum, adipisci delectus eaque cum laudantium incidunt ex hic laboriosam similique rerum.</p>', '+1347-430-9510', 'rabins@gmail.com', '2024-10-23 00:00:57', '2024-10-23 00:00:57');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `position`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Reilly Harding', 'Managing Director, DevignEdge', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam ratione eius porro excepturi.<br></p>', '2024-10-25 01:56:39', '2024-10-25 01:56:39'),
(3, 'White Castaneda', 'Managing Director, DevignEdge', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam ratione eius porro excepturi.<br></p>', '2024-10-25 01:57:58', '2024-10-25 01:57:58'),
(4, 'Barrera Ramsey', 'Managing Director, DevignEdge', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam ratione eius porro excepturi.<br></p>', '2024-10-25 01:58:32', '2024-10-25 01:58:32'),
(5, 'Marisa Cain', 'Managing Director, DevignEdge', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam ratione eius porro excepturi.<br></p>', '2024-10-25 01:59:17', '2024-10-25 01:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_settings`
--

CREATE TABLE `feedback_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback_settings`
--

INSERT INTO `feedback_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 'Our Client Feedback', 'Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-25 01:37:37', '2024-10-25 01:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `powered_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `info`, `copy_right`, `powered_by`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, libero.', 'Copyright 2023 Rabins. All Rights Reserved.', 'Powered by WebSolutionUS   |   2022 - 2023', '2024-10-30 00:18:31', '2024-10-31 23:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `footer_logo` text NOT NULL,
  `favicon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `footer_logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, '/hero_uploads/1090446614logo.png', '/hero_uploads/1441125818logo.png', '/hero_uploads/1063651579favicon.png', '2024-11-01 03:34:44', '2024-11-01 03:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `help_links`
--

CREATE TABLE `help_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_links`
--

INSERT INTO `help_links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', '#', '2024-10-31 23:37:05', '2024-10-31 23:37:05'),
(3, '404 Page', '#', '2024-10-31 23:37:27', '2024-10-31 23:37:27'),
(4, 'Terms', '#', '2024-10-31 23:37:52', '2024-10-31 23:37:52'),
(5, 'Documentation', '#', '2024-10-31 23:38:23', '2024-10-31 23:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `title`, `sub_title`, `btn_text`, `btn_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hi, I am a Robot', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque at, aperiam corrupti earum quasi, porro voluptatem commodi eos laboriosam nam quis nostrum, molestiae nesciunt dolore.', 'Hire Me', '#', '/hero_uploads/1751020588home-slider-2.jpg', '2024-10-15 00:37:50', '2024-10-15 08:05:43');

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
(4, '2024_06_18_135150_create_personal_access_tokens_table', 1),
(13, '2024_08_04_154807_create_addresses_table', 2),
(22, '2024_09_21_085002_create_roles_table', 7),
(23, '2024_09_11_081727_add_users_table', 8),
(24, '2024_10_14_095604_create_heroes_table', 9),
(25, '2024_10_15_131513_create_typer_titles_table', 10),
(26, '2024_10_17_073248_create_services_table', 11),
(27, '2024_10_18_060245_create_abouts_table', 12),
(28, '2024_08_02_154927_create_categories_table', 13),
(30, '2024_10_19_105132_create_portfolio_items_table', 14),
(31, '2024_10_20_114719_create_portfolio_section_settings_table', 15),
(32, '2024_10_22_053450_create_skill_section_settings_table', 16),
(33, '2024_10_22_101241_create_skill_items_table', 17),
(34, '2024_10_22_142031_create_experiences_table', 18),
(35, '2024_10_23_075640_create_feedback_table', 19),
(36, '2024_10_23_115633_create_feedback_settings_table', 20),
(37, '2024_10_26_044330_create_blog_categories_table', 21),
(38, '2024_10_26_111422_create_blogs_table', 22),
(39, '2024_10_28_080301_create_blog_settings_table', 23),
(40, '2024_10_29_065111_create_contact_settings_table', 24),
(41, '2024_10_29_085730_create_social_links_table', 25),
(42, '2024_10_29_153056_create_footer_infos_table', 26),
(43, '2024_10_30_063555_create_contact_infos_table', 27),
(44, '2024_10_30_084333_create_useful_links_table', 28),
(45, '2024_11_01_034420_create_help_links_table', 29),
(46, '2024_11_01_072603_create_general_settings_table', 30),
(47, '2024_11_01_113135_create_seo_settings_table', 31);

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
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `website` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `image`, `title`, `category_id`, `description`, `client`, `website`, `created_at`, `updated_at`) VALUES
(2, '/hero_uploads/1609212101portfolio-1.jpg', 'Black Golden', 2, '<h2 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 2rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">That and normal and we\'ve class. Explain attained.</h2><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem porro ex repellat nobis maxime odio et, dolore fuga excepturi culpa, officiis voluptate aspernatur similique officia nihil exercitationem qui corporis iste assumenda eum quaerat? Porro amet repellat molestias eos iusto suscipit quos ex beatae aut voluptate deserunt dicta esse ullam ipsa nihil minima odio vitae, architecto totam, praesentium impedit excepturi ipsam.</p>', 'SquareSparc Ltd.', 'https://www.fooleo.com.uk', '2024-10-21 00:33:59', '2024-10-21 00:33:59'),
(3, '/hero_uploads/1682829812portfolio-2.jpg', 'Fitzgerald Stanton', 3, '<h3 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 1.75rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">Process Story</h3><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Soluta et veniam omnis, voluptatem qui dolorem nulla provident totam saepe, odit quibusdam dignissimos tempora autem ut illo obcaecati ducimus sint repudiandae! Hic eos nam aperiam fugit? Perspiciatis explicabo ab harum. Sed ducimus veniam voluptatibus qui ea, atque sint eum quae molestiae quod officiis, at enim ab necessitatibus laborum! Dolores necessitatibus a earum perspiciatis ut consectetur corrupti omnis cum fugit, explicabo dolorem similique deleniti inventore natus! Quaerat sit soluta enim at reiciendis?.</p>', 'SquareSparc Ltd.', 'https://www.bijibohi.org.uk', '2024-10-21 00:35:29', '2024-10-21 00:35:29'),
(4, '/hero_uploads/1304247830portfolio-3.jpg', 'Ines Campbell', 4, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Hic eos nam aperiam fugit? Perspiciatis explicabo ab harum. Sed ducimus veniam voluptatibus qui ea, atque sint eum quae molestiae quod officiis, at enim ab necessitatibus laborum! Dolores necessitatibus a earum perspiciatis ut consectetur corrupti omnis cum fugit, explicabo dolorem similique deleniti inventore natus! Quaerat sit soluta .</span></p><ul class=\"dots-list\" style=\"outline: none; padding-top: 10px; margin-bottom: 30px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><li style=\"outline: none; margin: 10px 0px;\">First refinement become it over a may an that harmonic every away.</li><li style=\"outline: none; margin: 10px 0px;\">Clarinet she or here, separated hides. With work a and so pay different chooses answer.</li></ul><p><br></p>', 'Fuga Beatae earum q', 'https://www.fooleo.com.uk', '2024-10-21 00:36:59', '2024-10-21 00:36:59'),
(5, '/hero_uploads/1161363440portfolio-4.jpg', 'Wendi Michael', 5, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo animi libero suscipit praesentium perferendis possimus, ex dicta eius ea soluta sunt. Sapiente nulla, consequuntur ipsam saepe ad numquam blanditiis fugiat animi. Harum fugit incidunt nostrum eligendi doloremque vero possimus illum consequuntur quae sint officia repudiandae porro maxime cupiditate dolor magnam totam sit natus id neque quod. Molestias illo repudiandae laudantium illum perspiciatis nisi quasi amet corrupti .</span></p><ul class=\"dots-list\" style=\"outline: none; padding-top: 10px; margin-bottom: 30px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><li style=\"outline: none; margin: 10px 0px;\">Never analyzed the of boss\'s films death, heaven cache name any judgment, all.</li></ul><p><br></p>', 'SquareSparc Ltd.', 'https://www.bijibohi.org.uk', '2024-10-21 00:38:04', '2024-10-21 00:38:04'),
(6, '/hero_uploads/872449667portfolio-5.jpg', 'Guerrero Woodard', 2, '<h3 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 1.75rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">Process Story</h3><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Soluta et veniam omnis, voluptatem qui dolorem nulla provident totam saepe, odit quibusdam dignissimos tempora autem ut illo obcaecati ducimus sint repudiandae! Hic eos nam aperiam fugit? Perspiciatis explicabo ab harum. Sed ducimus veniam voluptatibus qui ea, atque sint eum quae molestiae quod officiis, at enim ab necessitatibus laborum! Dolores necessitatibus a earum perspiciatis ut consectetur corrupti omnis cum fugit, explicabo dolorem similique deleniti inventore natus! Quaerat sit soluta enim at reiciendis?.</p>', 'SquareSparc Ltd.', 'https://www.fooleo.com.uk', '2024-10-21 00:39:56', '2024-10-21 00:39:56'),
(7, '/hero_uploads/104336609portfolio-6.jpg', 'Prince Phelps', 3, '<h3 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 1.75rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">Process Story</h3><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Soluta et veniam omnis, voluptatem qui dolorem nulla provident totam saepe, odit quibusdam dignissimos tempora autem ut illo obcaecati ducimus sint repudiandae! Hic eos nam aperiam fugit? Perspiciatis explicabo ab harum. Sed ducimus veniam voluptatibus qui ea, atque sint eum quae molestiae quod officiis, at enim ab necessitatibus laborum! Dolores necessitatibus a earum perspiciatis ut consectetur corrupti omnis cum fugit, explicabo dolorem similique deleniti inventore natus! Quaerat sit soluta enim at reiciendis?.</p>', 'Fuga Beatae earum q', 'https://www.bijibohi.org.uk', '2024-10-21 01:46:20', '2024-10-21 01:46:20'),
(8, '/hero_uploads/750906569portfolio-7.jpg', 'Gayle Gaines', 4, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Hic eos nam aperiam fugit? Perspiciatis explicabo ab harum. Sed ducimus veniam voluptatibus qui ea, atque sint eum quae molestiae quod officiis, at enim ab necessitatibus laborum! Dolores necessitatibus a earum perspiciatis ut consectetur corrupti omnis cum fugit, explicabo dolorem similique deleniti inventore natus! Quaerat sit soluta .</span></p><ul class=\"dots-list\" style=\"outline: none; padding-top: 10px; margin-bottom: 30px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><li style=\"outline: none; margin: 10px 0px;\">First refinement become it over a may an that harmonic every away.</li><li style=\"outline: none; margin: 10px 0px;\">Clarinet she or here, separated hides. With work a and so pay different chooses answer.</li></ul><p><br></p>', 'SquareSparc Ltd.', 'https://www.fooleo.com.uk', '2024-10-21 01:47:33', '2024-10-21 01:47:33'),
(9, '/hero_uploads/660267866portfolio-8.jpg', 'Janice Wilder', 5, '<p><span style=\"color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo animi libero suscipit praesentium perferendis possimus, ex dicta eius ea soluta sunt. Sapiente nulla, consequuntur ipsam saepe ad numquam blanditiis fugiat animi. Harum fugit incidunt nostrum eligendi doloremque vero possimus illum consequuntur quae sint officia repudiandae porro maxime cupiditate dolor magnam totam sit natus id neque quod. Molestias illo repudiandae laudantium illum perspiciatis nisi quasi amet corrupti .</span><br></p><ul class=\"dots-list\" style=\"outline: none; padding-top: 10px; margin-bottom: 30px; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><li style=\"outline: none; margin: 10px 0px;\">Never analyzed the of boss\'s films death, heaven cache name any judgment, all.</li></ul>', 'Fuga Beatae earum q', 'https://www.bijibohi.org.uk', '2024-10-21 01:48:43', '2024-10-21 01:48:43'),
(10, '/hero_uploads/1556334043portfolio-9.jpg', '9 Things I Love About Shaving My Head During.', 2, '<h2 style=\"outline: none; margin-bottom: 15px; line-height: 1.2em; font-size: 2rem; font-family: Poppins, sans-serif; color: rgb(25, 8, 68);\">That and normal and we\'ve class. Explain attained.</h2><p style=\"outline: none; margin-bottom: 1rem; color: rgb(40, 40, 40); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem porro ex repellat nobis maxime odio et, dolore fuga excepturi culpa, officiis voluptate aspernatur similique officia nihil exercitationem qui corporis iste assumenda eum quaerat? Porro amet repellat molestias eos iusto suscipit quos ex beatae aut voluptate deserunt dicta esse ullam ipsa nihil minima odio vitae, architecto totam, praesentium impedit excepturi ipsam.</p>', 'SquareSparc Ltd.', 'https://www.fooleo.com.uk', '2024-10-21 01:50:09', '2024-10-21 01:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_section_settings`
--

CREATE TABLE `portfolio_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_section_settings`
--

INSERT INTO `portfolio_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, 'Latest Portfolio', 'Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-20 06:43:50', '2024-10-20 06:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Writer', NULL, NULL),
(3, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Rabins | Personal Portfolio HTML Template', 'Numquam est qui aut', 'Impedit, aut, est, mag', '2024-11-01 06:14:48', '2024-11-01 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Branding Design', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-17 05:54:35', '2024-10-17 05:54:35'),
(3, 'User Interface', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-17 05:55:28', '2024-10-17 05:55:28'),
(4, 'User Experience', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '2024-10-17 05:56:40', '2024-10-17 05:56:40'),
(5, 'test Name', 'test Description', '2024-10-17 06:12:41', '2024-10-17 06:12:41');

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
('MnN68M3SDe6dzBraf1A6208CoDDI5a9ws7MXAPZK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlZNSE9GSXM2a05GZDFFOGNvVDg2dm1IWTVEWjlNVmcyaGNNUVFrbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1730523145);

-- --------------------------------------------------------

--
-- Table structure for table `skill_items`
--

CREATE TABLE `skill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_items`
--

INSERT INTO `skill_items` (`id`, `name`, `percent`, `created_at`, `updated_at`) VALUES
(2, 'Web Design', 95, '2024-10-22 07:06:59', '2024-10-22 07:06:59'),
(3, 'Graphic Design', 85, '2024-10-22 07:07:30', '2024-10-22 07:07:30'),
(4, 'Web Development', 70, '2024-10-22 07:08:02', '2024-10-22 07:08:02'),
(5, 'Application Development', 90, '2024-10-22 07:08:58', '2024-10-22 07:08:58'),
(6, 'Analytical Abilities', 80, '2024-10-22 07:09:59', '2024-10-22 07:09:59'),
(7, 'Problem Solving', 65, '2024-10-22 07:11:02', '2024-10-22 07:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `skill_section_settings`
--

CREATE TABLE `skill_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_section_settings`
--

INSERT INTO `skill_section_settings` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Skills', 'Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.', '/hero_uploads/1715320164skill.jpg', '2024-10-22 02:09:21', '2024-10-22 02:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(2, 'fab fa-facebook-f', 'https://www.facebook.com/', '2024-10-31 23:28:46', '2024-10-31 23:28:46'),
(3, 'fab fa-linkedin-in', 'https://www.linkedin.com/login', '2024-10-31 23:30:14', '2024-10-31 23:30:14'),
(4, 'fab fa-twitter', 'https://twitter.com/?lang=en', '2024-10-31 23:31:05', '2024-10-31 23:31:05'),
(5, 'fab fa-behance', 'https://www.behance.net/', '2024-10-31 23:31:47', '2024-10-31 23:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `typer_titles`
--

CREATE TABLE `typer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typer_titles`
--

INSERT INTO `typer_titles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'I am UI/UX designer', '2024-10-15 08:18:22', '2024-10-16 05:02:07'),
(3, 'Let\'s work together', '2024-10-16 05:02:42', '2024-10-16 05:02:42'),
(4, 'I can create awesome stuff', '2024-10-16 05:03:25', '2024-10-16 05:03:25'),
(5, 'I am a developer', '2024-10-16 05:03:58', '2024-10-16 05:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `useful_links`
--

CREATE TABLE `useful_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `useful_links`
--

INSERT INTO `useful_links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(2, 'Home', '#', '2024-10-31 23:34:40', '2024-10-31 23:34:40'),
(3, 'About', '#', '2024-10-31 23:35:05', '2024-10-31 23:35:05'),
(4, 'Portfolio', '#', '2024-10-31 23:35:41', '2024-10-31 23:35:41'),
(5, 'Blog', '#', '2024-10-31 23:36:10', '2024-10-31 23:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Chloe Price', 'epouros@example.com', '2024-08-04 10:01:27', '$2y$12$1a5z7nS9Ml9FWSFK6NpsFOjPz10wFdhQNamBJTYwbaluaZTrK0nQS', 'CZvbAI3V97', '2024-08-04 10:01:28', '2024-08-04 10:01:28', 0),
(2, 'Mrs. Eldridge Rempel I', 'kledner@example.org', '2024-08-04 10:01:28', '$2y$12$1a5z7nS9Ml9FWSFK6NpsFOjPz10wFdhQNamBJTYwbaluaZTrK0nQS', 'lzNlR2T1nM', '2024-08-04 10:01:28', '2024-08-04 10:01:28', 0),
(3, 'Keira Lind', 'rebekah46@example.net', '2024-08-04 10:01:28', '$2y$12$1a5z7nS9Ml9FWSFK6NpsFOjPz10wFdhQNamBJTYwbaluaZTrK0nQS', 'sbuOiz4iwV', '2024-08-04 10:01:28', '2024-08-04 10:01:28', 0),
(4, 'Prof. London Wiza', 'jaleel.cole@example.org', '2024-08-04 10:01:28', '$2y$12$1a5z7nS9Ml9FWSFK6NpsFOjPz10wFdhQNamBJTYwbaluaZTrK0nQS', 'LFboPRy9N7', '2024-08-04 10:01:28', '2024-08-04 10:01:28', 2),
(5, 'test123', 'test@gmail.com', NULL, '$2y$12$jOIjbNXmM5uPFMKZFo5uR.bstr7qbR7Kajuu3tNts6BlJlwbwHZ1.', 'JHTvQ0dJV5quIGCcqUBMipBo4z1j2P94WndVIxH5gpMg21B1Aagkcpwy9H2u', '2024-09-19 00:00:10', '2024-10-13 08:33:12', 1),
(6, 'Helen Hartmann', 'uprice@example.net', '2024-10-10 01:30:19', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '6fdZCdqyoU', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(7, 'Marina McKenzie', 'otto.reichel@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ZRpHIR96Um', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(8, 'Prof. August Stokes IV', 'runolfsdottir.troy@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'cxi2VfqwdC', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(9, 'Dr. Jaeden Effertz', 'linda.kulas@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '12JYBFnq3c', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(10, 'Ara Hagenes', 'treutel.rachael@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'edkKAD1mt8', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(11, 'Jerad Abbott', 'trath@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vdvRjBJcW2', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(12, 'Ardith Bode', 'ismael05@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'zgALCKw4Bf', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(13, 'Ellis Ledner', 'velma.homenick@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ZWZQCarXZT', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(14, 'Jacques Welch IV', 'rice.nels@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '9hHgcq7uAT', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(15, 'Alexie Feil', 'freeda.christiansen@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'MjSWqtaBWs', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(16, 'Beryl Volkman PhD', 'stefan07@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'UPs8iga4xG', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(17, 'Brandon Kulas Jr.', 'zieme.marty@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'AOBQNYpYmt', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(18, 'Yvonne Lueilwitz', 'jtromp@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'XFMS55R4fl', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(19, 'Edna Reilly', 'uwalker@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'UZl0QRkYZQ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(20, 'Regan Cruickshank', 'diamond46@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'zRPwL50lAF', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(21, 'Ollie Towne', 'al63@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'JH5j4l9YAj', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(22, 'Leone Lebsack', 'griffin93@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'I7aqcMR5gU', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(23, 'Ali Gusikowski', 'pvonrueden@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'QhgydLzvGX', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(24, 'Keara Pollich', 'myriam46@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'cX0IuD4RHw', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(25, 'Barbara Kulas', 'rozella93@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'p6OmHcPiQr', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(26, 'Joel Mohr', 'eichmann.mabelle@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'YdCNQ5OsyN', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(27, 'Dr. Alexandria Cassin Jr.', 'brando74@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '1aQ4nzlwcc', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(28, 'Shea Murphy', 'rachelle57@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '9Xjm3HacND', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(29, 'Mrs. Ollie Konopelski I', 'nwhite@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Y5K70nzmfm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(30, 'Miss Malinda Donnelly MD', 'christina25@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'sdVBp9i3m7', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(31, 'Annabell Flatley', 'vward@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'kUaLNx934k', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(32, 'Dr. Daisha Kihn DDS', 'cremin.katelyn@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hVOWdibVca', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(33, 'Leland Emmerich', 'amira58@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '6zmgtfiHzG', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(34, 'Ignatius Koss', 'ydavis@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'J9PqnLC4xL', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(35, 'Ms. Amya Turner', 'wquitzon@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vV9OS7IAxD', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(36, 'Miller Muller', 'maximillian.lubowitz@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'PMFAEd78Ta', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(37, 'Charley Morissette DVM', 'skylar90@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'kQC4fcqq1l', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(38, 'Chelsey Labadie V', 'josianne.gerhold@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'La0OSDvk9B', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(39, 'Maudie Grimes', 'gernser@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'N1v1yHHHOw', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(40, 'Dr. Soledad Turner', 'alena.funk@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vCf6ViLgro', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(41, 'Russ Metz', 'runolfsson.dejuan@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'PlPkbuGP3Y', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(42, 'Hudson Kub II', 'georgianna.strosin@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hgp5e7KiDt', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(43, 'Toni Rohan III', 'haag.camden@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Ra71CMjUdM', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(44, 'Mrs. Ardella Jerde V', 'jking@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'SizL2E3YqA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(45, 'Prof. Alexandra Larkin', 'zstanton@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'i8owkD8TfX', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(46, 'Jazmyne Donnelly', 'blanche37@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'wSeUH6XMhm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(47, 'Scottie Waelchi', 'prosacco.alysson@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'WSVLdqIdBL', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(48, 'Gabriel Carroll', 'drogahn@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Hg3q5Qb7qY', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(49, 'Prof. Bert Lakin', 'sanderson@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'P6IU4ncPI4', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(50, 'Peggie Mayer', 'treutel.telly@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '9fMMU66cKS', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(51, 'Mrs. Oleta Schaden III', 'klein.aliyah@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '2qJxa6L4Pi', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(52, 'Krystina Buckridge', 'hoeger.xander@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'm0zjU1qniO', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(53, 'Dr. Lee Flatley MD', 'durward.fritsch@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'xXsd8k971w', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(54, 'Cynthia Heathcote', 'mayer.theo@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'PXkb4alJCF', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(55, 'Cullen Stehr', 'kozey.trace@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'xxlCIJqbMu', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(56, 'Christ Flatley', 'armstrong.lavon@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'TG06d2BACp', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(57, 'Mr. Alexis Langworth PhD', 'ola.gislason@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '4zHNYEaX6P', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(58, 'Flavio Tillman', 'vanessa.ondricka@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'gl3SvatKhR', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(59, 'Natalia O\'Keefe', 'xkirlin@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hY7TTf959r', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(60, 'Evert Mayert', 'cathy.ritchie@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'HBzApubvP0', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(61, 'Bulah Torphy IV', 'xfeil@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'FNOpmHA14r', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(62, 'Brent Schiller', 'elwyn12@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'OqlaeLYAkW', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(63, 'Kaela Reichel', 'yankunding@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Yji7VH6TR4', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(64, 'Dr. Kip Kreiger I', 'tremayne.russel@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ZiU48gBtZd', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(65, 'Dr. Aurore Bernhard', 'emily.bednar@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Bwd9iITP26', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(66, 'Demetris Bashirian', 'ijerde@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'KrACzKqe9F', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(67, 'Tristin Murphy', 'towne.aaron@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '71WidmtQOH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(68, 'Reese Towne', 'amos.schultz@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'JpUl2V9fKh', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(69, 'Jerrold King', 'rweber@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'JSqE6tY40N', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(70, 'Makenzie Kohler', 'sydnee.bosco@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'amhshr2ePm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(71, 'Brittany Weissnat', 'eliza.miller@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'PNrzHcQveN', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(72, 'Telly Vandervort V', 'padberg.addison@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'JbBhwxjMsY', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(73, 'May Torphy DVM', 'doyle.makayla@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vlAZ8qbek4', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(74, 'Americo Keeling II', 'stoltenberg.enrique@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'K2EShNlfnp', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(75, 'Sydney Towne I', 'telly60@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vVGFh93Iox', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(76, 'Ms. Sadye Oberbrunner IV', 'xschmitt@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'dL1lHkOHXs', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(77, 'Malvina Gusikowski', 'xrempel@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'c0zRAscMAU', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(78, 'Mr. Dorian O\'Keefe', 'wilkinson.hanna@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '0I4VAT4AA2', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(79, 'Providenci Ward Sr.', 'connelly.brionna@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'wOwiyhpBC1', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(80, 'Aric Hamill', 'xsawayn@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'xsQ61pEoPQ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(81, 'Jody Bogisich MD', 'melyssa41@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'CZzaGdpxbZ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(82, 'Zola Mills', 'dena34@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'WQncWf4X1l', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(83, 'Sarah Bosco', 'witting.rosalee@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'jrWMJelInf', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(84, 'Dr. Luis Tillman', 'garland.mertz@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ARJSfr6rFr', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(85, 'Dr. Jedidiah Goyette I', 'fnicolas@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'jnUZIFRFHs', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(86, 'Clarissa Powlowski', 'marta48@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'cyy2BJ2bSY', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(87, 'Marianna Volkman', 'rebekah.borer@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Va6rZ91o0z', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(88, 'Bella Metz', 'blanca.nicolas@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'E6z7Lao9Dw', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(89, 'Jules Schmeler', 'lucas68@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'NwPmhPQHVC', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(90, 'Prof. Kelvin Torp', 'opal.grant@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'jaWYy1rGMG', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(91, 'Miss Destiney Moore', 'vflatley@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'LMZW6Nmqsl', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(92, 'Lucio Roob', 'roy.paucek@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'GC7IF9VXR1', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(93, 'Shanny Lakin', 'isom34@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'I7lCfxTjaK', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(94, 'Kaitlyn Konopelski', 'andre.satterfield@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'XdPulaDTkP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(95, 'Dr. Al Gutkowski Jr.', 'weber.alexanne@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '0o77OXHnqn', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(96, 'Dr. Janiya Wintheiser DVM', 'uwyman@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'vNShjdKSKu', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(97, 'Trevion Marvin', 'mgreenfelder@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'XlGchOFt4p', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(98, 'Prof. Sonny Grimes', 'daniel.grayson@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'eojPsBauXx', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(99, 'Arne Ferry', 'conrad.nienow@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'kMVUNKkSOc', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(100, 'Prof. Ervin Baumbach MD', 'oward@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'RbLWdE1agN', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(101, 'Carlotta Gutkowski', 'ftillman@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'bBIKtPqobR', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(102, 'Mrs. Ivy Kulas I', 'cummerata.jace@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'yakrmyBrNB', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(103, 'Alaina Lynch', 'agnes.grant@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'g1Hg5gf4Ek', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(104, 'Warren Witting', 'tpollich@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'TTM141fNDD', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(105, 'Antonetta Koch', 'gkemmer@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '0eSu9NEY8g', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(106, 'Velma Kertzmann', 'percy68@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'JvnS8T3ESv', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(107, 'Logan Nader', 'mertz.angelita@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'v44sHvSToa', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(108, 'Mrs. Marta Howe', 'deangelo64@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'B2qUTbaRjx', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(109, 'Miss Mireille Kihn DVM', 'vance.kertzmann@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'atdBYtnhwc', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(110, 'Mr. Keenan Volkman DVM', 'yweimann@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '5UGelevkTV', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(111, 'Prof. Saige Ritchie V', 'sanford.kirstin@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'C2ckDLGnuS', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(112, 'Ivy Gleichner IV', 'green.muhammad@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'n5PAKseaz6', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(113, 'Christophe Jones', 'ratke.jazmyne@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '5AiRXBvtJf', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(114, 'Dr. Rosendo Schimmel MD', 'huels.eden@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '6koqXJ86xP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(115, 'Dr. Sydni Kub', 'anita44@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'VBW5DjJ8O5', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(116, 'Dr. Britney Heathcote PhD', 'kristoffer09@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'y2MhVdoUOH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(117, 'Pat Orn', 'cummings.gabe@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'J5cRNeHN1A', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(118, 'Elvis Ward DDS', 'tiana13@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Pgh9lzPFPH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(119, 'Prof. Delbert Towne', 'lind.maeve@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'nyXoqv3zvV', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(120, 'Earnest Boyle', 'gbotsford@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'KaYmQkL0UM', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(121, 'Lydia Lockman', 'elvera.thiel@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hLLOfdk5Fa', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(122, 'Gabrielle Toy', 'friesen.evie@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'BXN4iKxtno', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(123, 'Marlin Yundt', 'tiana85@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'BqL91Jqcoo', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(124, 'Mr. Everardo Deckow', 'dbayer@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'WVeHSvJsXH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(125, 'Federico Howell', 'corrine.mcclure@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'alpsiAV6DP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(126, 'Florence Kutch', 'hessel.garfield@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'xtaXB8k1hB', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(127, 'Ms. Neha Skiles', 'kenyatta63@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'wFKnFCnu7X', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(128, 'Rosetta Farrell', 'vdouglas@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '1pxeDcCVr8', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(129, 'Rhea Cronin', 'waylon.stroman@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ZAodLgQP8u', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(130, 'Malachi Batz', 'ptillman@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'be59YjGj8t', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(131, 'Prof. Audrey Lehner DVM', 'ifeeney@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'INs8il03I0', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(132, 'Cortney Schneider', 'erwin.leffler@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Em2QfLLp26', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(133, 'Prof. Tamia Effertz III', 'michele33@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'mWHFmTdEBr', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(134, 'Mertie Cummings', 'dibbert.lambert@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'RWO8bEeXDA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(135, 'Lelah Blick I', 'charlene.blick@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hxulvMMMKj', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(136, 'Prof. Marcos Schowalter', 'kasey01@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'LP6IaEO81J', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(137, 'Prof. Thad Kihn', 'bailey.marina@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'laYdmjazmx', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(138, 'Dr. Rhoda Boehm', 'kris.dannie@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'iwaopKwDHH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(139, 'Donna Muller', 'heathcote.zander@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'aArq3nyTbA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(140, 'Asa Heaney', 'kovacek.rowena@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '2t6DjOcVk8', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(141, 'Miss Katharina Corwin I', 'ryan.theresa@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'oxIW36TSL3', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(142, 'Minerva Berge', 'russel.catharine@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'epnkbpOwyi', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(143, 'Mrs. Tamia Purdy V', 'jmclaughlin@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'WpGGWB1S2X', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(144, 'Tracey Padberg', 'jacobs.zachary@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Djbljurl1k', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(145, 'Dasia Balistreri', 'flo.carter@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'aEiv6S8vVm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(146, 'Mrs. Anabel Rolfson MD', 'ocremin@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '1dMI39Jmm0', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(147, 'Prof. Glenna Auer', 'bstamm@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'wdu9vi4chh', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(148, 'Mrs. Josephine Schmidt IV', 'roberts.reyes@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'rCcaxKGsqJ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(149, 'Dion Heathcote', 'enrico79@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '7VZr2g7XMa', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(150, 'Mrs. Maribel Larson', 'max.wuckert@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'INgWyQi6Rd', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(151, 'Raegan King DVM', 'alana.cole@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'WMgv0Tk5b6', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(152, 'Lyda Kuvalis', 'glover.sydney@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'RHN4oLj5b9', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(153, 'Vivianne Beahan', 'raphael63@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'cBvzN8HyGU', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(154, 'Dr. Wade Wunsch', 'mireya.abernathy@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'I50LFGAqBI', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(155, 'Judson Will', 'marianne33@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'ptpMDsXjlG', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(156, 'Miss Roberta Schinner', 'scot16@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'hp2iuqGeFF', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(157, 'Garfield Koelpin MD', 'dwelch@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'PHG2gUFmXJ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(158, 'Mr. Rodrigo Kunde', 'lehner.clark@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'oZ3bgDBdZA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(159, 'Frederick Gutmann', 'mpagac@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'awpo6CnxUn', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(160, 'Isadore Tremblay', 'boyer.grover@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'QgDzEglMUA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(161, 'Ms. Eliane Conroy', 'dayana.hahn@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'T8Y2zuZwkH', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(162, 'Miss Dulce Trantow II', 'stokes.arvid@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'qhyazYoaAS', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(163, 'Mrs. Arlie Heller', 'genesis.schroeder@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'a3tzVMm1AP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(164, 'Josephine Stanton', 'zoe35@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'en8ZNfE5oJ', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(165, 'Mrs. Annalise Feeney PhD', 'alex78@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '2LbETJK5cs', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(166, 'Rafael Effertz', 'evie.waters@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'V9lWaker9c', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(167, 'Vicente Marquardt', 'deondre.zemlak@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'Yd72VmIk4L', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(168, 'Kamille Rutherford', 'freddy49@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'KgZXRjjVsp', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(169, 'Wilber Auer', 'devon.dach@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'DoExUK2GcT', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(170, 'Jacques Gerlach', 'emmalee.moen@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '3Q5OhK0pQs', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(171, 'Mable Skiles', 'dayna49@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'KzoYXPm2yP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(172, 'Mrs. Samanta Stoltenberg I', 'hugh.okuneva@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '9GeHZV71z1', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(173, 'Cleora Funk Sr.', 'orin.armstrong@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'YdzElg5tsz', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(174, 'Delphine Braun', 'kevin.fay@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'kevHS4CoN3', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(175, 'Prudence Ebert', 'ydach@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'pNLu5xg9Gt', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(176, 'Miss Piper Hermiston II', 'tremayne.price@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'v1WTSJui2m', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(177, 'Noe Sporer', 'ullrich.brandy@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'IjtGX9fbol', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(178, 'Arvel Kuvalis MD', 'cruz.mcdermott@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'GJ6FN5jlcm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(179, 'Joey Zulauf', 'paucek.willard@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '575XvH25Ge', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(180, 'Dexter Davis III', 'hirthe.martin@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'FdHDxZorR0', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(181, 'Matilda Macejkovic', 'moore.jordane@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'iyQlhrksiA', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(182, 'Ted Kessler III', 'eosinski@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'sVbLPGOk2U', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(183, 'Mr. Schuyler Parker DVM', 'laurianne.farrell@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '1NdmM5EVeL', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(184, 'Mr. Aaron Kertzmann', 'pedro41@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'lhpfnozfk6', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(185, 'Elda Bradtke MD', 'njohnston@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'J1MuvQ4Afh', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(186, 'Russell Williamson DDS', 'nolan.retha@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'bdX0NCxM9k', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(187, 'Dr. Emmet Erdman Jr.', 'haven69@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '655ynr5MxC', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(188, 'Dr. Quincy Mayer Sr.', 'nikki.monahan@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'iA8OBraiW9', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(189, 'Carlie Stanton', 'collier.jamison@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'EEGOzHByA3', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(190, 'Ryder Wolf', 'oberbrunner.laverna@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '6AIGeFjxEm', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(191, 'Zella Sipes', 'ignacio.olson@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'rOlRulwIJ6', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(192, 'Dr. Max Prohaska', 'xankunding@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'BuBLkXrCna', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(193, 'Don Schaefer', 'ward21@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'iFEAeiTa8Y', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(194, 'Alia Wunsch III', 'qmueller@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'OCAkGZX5lV', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(195, 'Warren Kilback I', 'crona.retha@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'IkrS0si8kV', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(196, 'Bernadette Turner', 'twila.schneider@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '44BkdgCRdi', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(197, 'Olga Hermiston Sr.', 'ckunze@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '8LsJZHkM3w', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(198, 'Kirstin Hessel', 'roxane95@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'U9z14lqC3C', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(199, 'Dr. Orrin Schowalter', 'tremblay.amelia@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'a0ZQ6pB496', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(200, 'Mr. Scottie Gerhold', 'reynolds.else@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'wX96Bs5cEP', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(201, 'Ms. Clare Gerlach', 'thermann@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '22vH7mqpQw', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(202, 'Leila Ebert', 'jessyca.schaefer@example.org', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'aYWIUI0907', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(203, 'Martine Rutherford IV', 'wisozk.douglas@example.com', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', '8jONYAgqYb', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(204, 'Zita Zulauf', 'catalina63@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'eFCixoSdRi', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0),
(205, 'Magdalena Leannon', 'akeem.hills@example.net', '2024-10-10 01:30:20', '$2y$12$7RKGSNIc9usanhOf0YLLuOEy3GPpRADoxsrA1odBBEcZr2QuPPRTO', 'K2NsPskEN9', '2024-10-10 01:30:20', '2024-10-10 01:30:20', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_settings`
--
ALTER TABLE `blog_settings`
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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_settings`
--
ALTER TABLE `feedback_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_links`
--
ALTER TABLE `help_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_section_settings`
--
ALTER TABLE `portfolio_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skill_items`
--
ALTER TABLE `skill_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_section_settings`
--
ALTER TABLE `skill_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typer_titles`
--
ALTER TABLE `typer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useful_links`
--
ALTER TABLE `useful_links`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_settings`
--
ALTER TABLE `blog_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_settings`
--
ALTER TABLE `feedback_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `help_links`
--
ALTER TABLE `help_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portfolio_section_settings`
--
ALTER TABLE `portfolio_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skill_items`
--
ALTER TABLE `skill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skill_section_settings`
--
ALTER TABLE `skill_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `typer_titles`
--
ALTER TABLE `typer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `useful_links`
--
ALTER TABLE `useful_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
