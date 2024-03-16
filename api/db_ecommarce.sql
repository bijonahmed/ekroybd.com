-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 04:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_pay`
--

CREATE TABLE `annual_pay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_pay`
--

INSERT INTO `annual_pay` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Registered Nurse', 1, 1),
(2, 'Software Developer', 1, 1),
(3, 'Marketing Manager', 1, 1),
(4, 'Financial Analyst', 1, 1),
(5, 'Mechanical Engineer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `job_publish_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_address` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `candidate_num` varchar(255) DEFAULT NULL,
  `total_year_exp` varchar(255) DEFAULT NULL,
  `educa_qualifcation` text DEFAULT NULL,
  `skill_set` text DEFAULT NULL,
  `expeted_salary` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `job_publish_id`, `job_title`, `candidate_name`, `candidate_address`, `candidate_email`, `candidate_num`, `total_year_exp`, `educa_qualifcation`, `skill_set`, `expeted_salary`, `files`, `application_date`, `remarks`, `status`, `entry_by`, `created_at`) VALUES
(2, 2, 'Senior BI Engineer', 'Bijon', 'Dhaka', 'mdbijon@gmail.com', '01915728982', '7 Yrs 5 Months', 'MSC', 'Soft Dev.', '5000', '/backend/files/JnT9wFEZM8JeK1gLjq4X.doc', '2023-08-29', '', 8, 1, '2023-08-29 10:44:24'),
(3, 2, 'Senior BI Engineer', 'Kabir', 'Dhaka', 'kabir@gmail.com', '01915728983', '10 Yrs', 'MSC', 'TEST', '1050', '/backend/files/mURkiEiAo1NR9wFEJ2No.pdf', '2023-08-29', '', 2, 1, '2023-08-29 10:45:32'),
(4, 2, 'Senior BI Engineer', 'Jannat', 'DHK', 'jannat@gmail.com', '01915728984', '10 Yrs', 'TEST', 'Computer', '50000', '/backend/files/FHSfhhsLtpUDx5w1yGaX.doc', '2023-08-29', NULL, 8, NULL, '2023-08-29 10:46:47'),
(5, 1, 'Software Engineer', 'Kabir ahmed', 'DHK', 'karim@gmail.com', '01915728985', '10 Yrs', 'TEST', 'DK', '50000', '/backend/files/BEMMoAGUMb0lFvg49YPF.pdf', '2023-08-29', NULL, NULL, NULL, '2023-08-29 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_at`, `updated_at`, `entry_by`) VALUES
(1, 'size', 1, '2023-10-14 10:28:05', '2023-10-14 16:28:05', 1),
(2, 'color', 1, '2023-10-14 10:30:19', '2023-10-14 16:30:19', 1),
(3, 'capacity', 1, '2023-10-14 10:30:43', '2023-10-14 16:30:43', 1),
(4, 'sleeve length', 1, '2023-10-14 10:31:01', '2023-10-14 16:31:01', 1),
(5, 'neckline', 1, '2023-10-14 10:31:23', '2023-10-14 16:31:23', 1),
(6, 'closure type', 1, '2023-10-14 10:31:45', '2023-10-14 16:31:45', 1),
(7, 'material', 1, '2023-10-14 10:32:02', '2023-10-14 16:32:02', 1),
(8, 'brand', 1, '2023-10-14 10:32:29', '2023-10-14 16:32:29', 1),
(9, 'weight', 1, '2023-10-14 10:32:52', '2023-10-14 16:32:52', 1),
(10, 'gender', 1, '2023-10-14 10:33:05', '2023-10-14 16:33:05', 1),
(11, 'style', 1, '2023-10-14 10:33:25', '2023-10-14 16:33:25', 1),
(12, 'pattern', 1, '2023-10-14 10:33:42', '2023-10-14 16:33:42', 1),
(13, 'fit', 1, '2023-10-14 10:33:58', '2023-10-14 16:33:58', 1),
(14, 'type', 1, '2023-10-14 10:34:14', '2023-10-14 16:34:14', 1),
(15, 'occasion', 1, '2023-10-14 10:34:27', '2023-10-14 16:34:27', 1),
(16, 'season', 1, '2023-10-14 10:34:40', '2023-10-14 16:34:40', 1),
(17, 'features', 1, '2023-10-14 10:34:56', '2023-10-14 16:34:56', 1),
(18, 'compatibility', 1, '2023-10-14 10:35:12', '2023-10-14 16:35:12', 1),
(19, 'resolution', 1, '2023-10-14 10:35:43', '2023-10-14 16:35:43', 1),
(20, 'warranty', 1, '2023-10-14 10:35:58', '2023-10-14 16:35:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_values`
--

CREATE TABLE `attributes_values` (
  `id` int(11) NOT NULL,
  `attributes_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes_values`
--

INSERT INTO `attributes_values` (`id`, `attributes_id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(2, 1, 'M', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(3, 1, 'L', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(4, 1, 'XL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(5, 1, 'XXL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(6, 1, 'XXXL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(7, 1, '3XL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(8, 1, '1', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(9, 1, '2', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(10, 1, '3', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(11, 1, '4', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(12, 1, '5', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(13, 1, '6', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(14, 1, '10', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(15, 1, '11', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(16, 1, '12', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(17, 1, '13', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(18, 1, '16', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(19, 1, '17', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(20, 1, '18', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(21, 1, '19', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(22, 1, '20', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(23, 1, '21', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(24, 1, '25', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(25, 1, '30', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(26, 1, '45', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(27, 1, '60', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(28, 1, '54', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(29, 1, '28', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(30, 1, '230', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(31, 2, 'Green', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(32, 2, 'Blue', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(33, 2, 'Yellow', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(34, 2, 'Red', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(35, 2, 'Dark', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(36, 2, 'White', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(37, 2, 'Neviblue', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(38, 2, 'Darkness', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(39, 2, 'Whiteness', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(40, 3, '1GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(41, 3, '2GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(42, 3, '3GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(43, 3, '5GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(44, 3, '6GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(45, 3, '7GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(46, 3, '1TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(47, 3, '2TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(48, 3, '3TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(49, 4, 'Short Sleeve', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(50, 4, 'Long Sleeve', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(51, 4, 'Sleeveless', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(52, 5, 'Round Neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(53, 5, 'V-neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(54, 5, 'Scoop Neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(55, 6, 'Zipper', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(56, 6, 'Button', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(57, 6, 'Velcro', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(58, 7, 'Cotton', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(59, 7, 'Leather', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(60, 7, 'Metal', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(61, 8, 'Nike', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(62, 8, 'Apple', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(63, 8, 'Sony', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(64, 9, 'Light', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(65, 9, 'Medium', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(66, 9, 'Heavy', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(67, 10, 'Male', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(68, 10, 'Female', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(69, 10, 'Unisex', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(70, 11, 'Casual', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(71, 11, ' Formal', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(72, 11, ' Sporty', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(73, 12, 'Striped', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(74, 12, 'Polka Dot', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(75, 12, 'Solid', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(76, 13, 'Slim Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(77, 13, 'Loose Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(78, 13, 'Regular Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(79, 14, 'Shirt', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(80, 14, 'Pants', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(81, 14, 'Shoes', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(82, 15, 'Party', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(83, 15, 'Wedding', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(84, 15, 'Casual', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(85, 16, 'Spring', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(86, 16, 'Summer', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(87, 16, 'Fall', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(88, 16, 'Winter', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(89, 17, 'Waterproof', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(90, 17, 'UV Protection', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(91, 17, 'Breathable', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(92, 18, 'iOS', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(93, 18, 'Android', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(94, 18, 'Windows', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(95, 3, '16GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(96, 3, '32GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(97, 3, '64GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(98, 19, '720p', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(99, 19, '1080p', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(100, 19, '4K', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(101, 20, '1 Year', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(102, 20, '2 Years', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(103, 20, 'Lifetime', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(104, 2, 'Black', 1, 1, '2023-10-16 09:29:17', '2023-10-16 09:29:17'),
(105, 3, '128GB', 1, 1, '2023-10-16 09:30:41', '2023-10-25 15:31:10'),
(106, 3, '512GB', 1, 1, '2023-10-16 09:30:51', '2023-10-16 09:30:51'),
(107, 20, '6 Months', 1, 1, '2023-10-16 09:31:48', '2023-10-16 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'HSBC BANK', 1, 1),
(2, 'BARCLAYS BANK', 1, 1),
(3, 'SANTANDER BANK', 1, 1),
(4, 'HALIFAX BANK', 1, 1),
(5, 'NATWEST BANK', 1, 1),
(6, 'LLOYDS BANK', 1, 1),
(7, 'TSB BANK', 1, 1),
(8, 'TESCO BANK', 1, 1),
(9, 'CO-OPERATIVE BANK', 1, 1),
(10, 'BANK OF SCOTLAND', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_short_code`
--

CREATE TABLE `bank_short_code` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_short_code`
--

INSERT INTO `bank_short_code` (`id`, `bank_id`, `name`, `status`, `entry_by`) VALUES
(1, 9, '56854', 1, 1),
(2, 2, '11545', 1, 1),
(3, 2, '165586', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ford', 'ford', '/backend/brandimage/1709112624.webp', 1, '2024-02-28 13:02:21', '2024-02-28 09:30:24'),
(2, 'Chevrolet', 'chevrolet', '/backend/brandimage/1709112652.webp', 1, '2024-02-28 14:12:23', '2024-02-28 09:30:52'),
(3, 'Hundai', 'hundai', '/backend/brandimage/1709112667.webp', 1, '2024-02-28 15:24:37', '2024-02-28 09:31:07'),
(4, 'Audi', 'audi', '/backend/brandimage/1709112691.webp', 1, '2024-02-28 15:31:31', '2024-02-28 15:31:31'),
(5, 'Addidas', 'addidas', '/backend/brandimage/1709127557.png', 1, '2024-02-28 19:27:00', '2024-02-28 13:39:17'),
(6, 'Nestle', 'nestle', '/backend/brandimage/1709127896.png', 1, '2024-02-28 19:44:56', '2024-02-28 19:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `commission` int(11) DEFAULT NULL,
  `product_sell_qty` int(11) DEFAULT NULL,
  `getAmount` decimal(10,5) DEFAULT NULL COMMENT 'Admin get commission amount ',
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `speacial_status` int(1) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', NULL, NULL, NULL, NULL, 0, 5, NULL, NULL, 0, '/upload/1709813007.jpg', 1, 1, 'null', 'null', '2023-10-27 09:19:38', '2024-03-07 13:20:35'),
(2, 'Fashion', 'fashion', NULL, 'null', 'null', 'null', 0, 7, NULL, NULL, 0, '/upload/1709807264.png', 1, 1, 'null', 'null', '2023-10-27 09:21:58', '2024-03-07 13:03:50'),
(3, 'Home & Garden', 'home-garden', NULL, 'null', 'null', 'null', 0, 7, NULL, NULL, 0, '/upload/1709807282.gif', 1, 1, 'null', 'null', '2023-10-27 09:25:05', '2024-03-07 10:28:02'),
(4, 'Beauty & Personal Care', 'beauty-personal-care', NULL, 'null', 'null', 'null', 0, 8, NULL, NULL, 0, '/upload/1709817570.png', 1, 1, 'null', 'null', '2023-10-27 09:29:09', '2024-03-07 13:19:30'),
(5, 'Toys & Games', 'toys-games', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '/upload/1709817504.jpg', 1, 1, 'null', 'null', '2023-10-27 09:33:37', '2024-03-07 13:18:24'),
(6, 'Sports & Outdoors', 'sports-outdoors', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '/upload/1709813145.gif', 1, 1, 'null', 'null', '2023-10-27 09:35:23', '2024-03-07 12:05:45'),
(7, 'Health & Wellness', 'health-wellness', NULL, NULL, 'null', 'null', 0, 8, NULL, NULL, 0, '/upload/1709817460.png', 1, 1, 'null', 'null', '2023-10-27 09:36:43', '2024-03-07 13:17:40'),
(8, 'Jewelry & Watches', 'jewelry-watches', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '/upload/1709817526.jpg', 1, 1, 'null', 'null', '2023-10-27 09:47:03', '2024-03-07 13:18:46'),
(9, 'Automotive', 'automotive', NULL, 'null', 'null', 'null', 0, 6, NULL, NULL, 0, '/upload/1709813160.gif', 1, 1, 'null', 'null', '2023-10-27 09:48:32', '2024-03-07 12:06:00'),
(10, 'Books, Education & Reference', 'books-education-reference', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '/upload/1709817475.png', 1, 1, 'null', 'null', '2023-10-27 09:56:21', '2024-03-07 13:17:55'),
(11, 'Office & School Supplies', 'office-school-supplies', NULL, 'null', 'null', 'null', 0, 7, NULL, NULL, 0, '/upload/1709817548.jpg', 1, 1, 'null', 'null', '2023-10-27 10:04:27', '2024-03-07 13:19:08'),
(12, 'Furniture & Decor', 'furniture-decor', NULL, 'null', 'null', 'null', 0, 6, NULL, NULL, 0, '/upload/1709813176.gif', 1, 1, 'null', 'null', '2023-10-27 10:06:23', '2024-03-07 12:06:16'),
(13, 'Super Market (Food & Groceries)', 'super-market-food-groceries-', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '/upload/1709817620.png', 1, 0, 'null', 'null', '2023-10-27 10:06:40', '2024-03-07 13:20:20'),
(14, 'Pet & Animals', 'pet-animals', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:08:11', '2024-01-12 05:32:42'),
(15, 'Travel & Luggage', 'travel-luggage', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:08:28', '2024-01-12 05:33:27'),
(16, 'Art & Collectibles', 'art-collectibles', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:08:43', '2024-01-12 05:35:04'),
(17, 'Crafts & Hobbies', 'crafts-hobbies', NULL, 'null', 'null', 'null', 0, 6, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:09:00', '2024-01-12 05:34:10'),
(18, 'Baby & Kids', 'baby-kids', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:09:40', '2024-01-12 05:35:38'),
(19, 'Industrial & Scientific', 'industrial-scientific', NULL, 'null', 'null', 'null', 0, 5, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:10:11', '2024-01-12 05:35:58'),
(20, 'Cameras & Photography', 'cameras-photography', NULL, 'null', 'null', 'null', 0, 5, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:10:27', '2024-01-12 05:36:54'),
(21, 'Hunting & Fishing', 'hunting-fishing', NULL, 'null', 'null', 'null', 0, 7, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:10:39', '2024-01-12 05:38:11'),
(22, 'Party & Celebration', 'party-celebration', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:10:50', '2024-01-12 05:37:44'),
(23, 'Software & Digital Products', 'software-digital-products', NULL, 'null', 'null', 'null', 0, 10, NULL, NULL, 0, '', 0, 0, 'null', 'null', '2023-10-27 10:11:06', '2024-03-07 12:56:14'),
(25, 'Mobiles/Phones', 'mobiles-phones', NULL, 'null', 'null', 'null', 1, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 10:38:25', '2023-12-19 07:13:34'),
(26, 'Laptops & Computers', 'laptops-computers', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:40:52', '2023-10-27 10:40:52'),
(27, 'Tablets & E-Readers', 'tablets-e-readers', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:41:28', '2023-10-27 10:41:28'),
(28, 'Audio & Headphones', 'audio-headphones', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:42:01', '2023-10-27 10:42:01'),
(29, 'Home Appliances', 'home-appliances', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:42:25', '2023-10-27 10:42:25'),
(30, 'Portable Electronics', 'portable-electronics', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:42:57', '2023-10-27 10:42:57'),
(31, 'Drones & Quadcopters', 'drones-quadcopters', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:43:37', '2023-10-27 10:43:37'),
(32, 'Networking & Communication', 'networking-communication', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:45:37', '2023-10-27 10:45:37'),
(33, 'Electronic Components', 'electronic-components', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:49:19', '2023-10-27 10:49:19'),
(34, 'Office Electronics', 'office-electronics', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:49:34', '2023-10-27 10:49:34'),
(35, 'Virtual Reality (VR)', 'virtual-reality-vr-', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:49:51', '2023-10-27 10:49:51'),
(36, 'Electronic Repair Tools', 'electronic-repair-tools', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:50:21', '2023-10-27 10:50:21'),
(37, 'Vintage Electronics', 'vintage-electronics', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 10:50:42', '2023-10-27 10:50:42'),
(38, 'Women\'s Clothing', 'women-s-clothing', NULL, 'null', 'null', 'null', 2, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 18:12:47', '2023-10-27 18:14:03'),
(39, 'Men\'s Clothing', 'men-s-clothing', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:13:34', '2023-10-27 18:13:34'),
(40, 'Kids\' Clothing', 'kids-clothing', NULL, 'null', 'null', 'null', 2, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 18:14:46', '2023-10-27 18:16:17'),
(41, 'Men & Women Shoes', 'men-women-shoes', NULL, 'null', 'null', 'null', 2, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-27 18:15:33', '2023-10-27 18:22:32'),
(42, 'Wedding & Formal Wear', 'wedding-formal-wear', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:17:08', '2023-10-27 18:17:08'),
(43, 'Lingerie & Sleepwear', 'lingerie-sleepwear', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:17:38', '2023-10-27 18:17:38'),
(44, 'Maternity Clothing', 'maternity-clothing', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:18:49', '2023-10-27 18:18:49'),
(45, 'Uniforms & Work Clothing', 'uniforms-work-clothing', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:21:09', '2023-10-27 18:21:09'),
(46, 'Fashion Accessories', 'fashion-accessories', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:23:28', '2023-10-27 18:23:28'),
(47, 'Other Fashion Categories', 'other-fashion-categories', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:25:41', '2023-10-27 18:25:41'),
(48, 'Home Furniture', 'home-furniture', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:27:08', '2023-10-27 18:27:08'),
(49, 'Home Decor', 'home-decor', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:27:25', '2023-10-27 18:27:25'),
(50, 'Kitchen, Dining & Bar', 'kitchen-dining-bar', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:28:14', '2023-10-27 18:28:14'),
(51, 'Home Improvement', 'home-improvement', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:28:43', '2023-10-27 18:28:43'),
(52, 'Yard, Garden & Outdoor Living', 'yard-garden-outdoor-living', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:29:33', '2023-10-27 18:29:33'),
(53, 'Home Security', 'home-security', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:30:37', '2023-10-27 18:30:37'),
(54, 'Bed & Bath', 'bed-bath', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:30:57', '2023-10-27 18:30:57'),
(55, 'Household Supplies & Cleaning', 'household-supplies-cleaning', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:32:32', '2023-10-27 18:32:32'),
(56, 'Tools & Workshop Equipment', 'tools-workshop-equipment', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:33:37', '2023-10-27 18:33:37'),
(57, 'Home Arts & Crafts', 'home-arts-crafts', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:35:30', '2023-10-27 18:35:30'),
(58, 'Major Appliances', 'major-appliances', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 18:36:34', '2023-10-27 18:36:34'),
(60, 'Other Home & Garden items', 'other-home-garden-items', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:14:12', '2023-10-27 21:14:12'),
(61, 'Skincare', 'skincare', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:21:16', '2023-10-27 21:21:16'),
(62, 'Haircare', 'haircare', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:22:15', '2023-10-27 21:22:15'),
(63, 'Makeup', 'makeup', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:45:26', '2023-10-27 21:45:26'),
(64, 'Fragrance', 'fragrance', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:46:12', '2023-10-27 21:46:12'),
(65, 'Bath and Body', 'bath-and-body', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:46:54', '2023-10-27 21:46:54'),
(66, 'Personal Hygiene', 'personal-hygiene', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:47:27', '2023-10-27 21:47:27'),
(67, 'Natural and Organic items', 'natural-and-organic-items', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:51:14', '2023-10-27 21:51:14'),
(68, 'Men\'s Grooming', 'men-s-grooming', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:51:55', '2023-10-27 21:51:55'),
(69, 'makeup bags and Tools', 'makeup-bags-and-tools', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:53:14', '2023-10-27 21:53:14'),
(70, 'Others makeup & care items', 'others-makeup-care-items', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-27 21:56:02', '2023-10-27 21:56:02'),
(71, 'Board Games', 'board-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:58:04', '2023-10-28 04:58:04'),
(72, 'Card Games', 'card-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:58:25', '2023-10-28 04:58:25'),
(73, 'Video Games', 'video-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:58:39', '2023-10-28 04:58:39'),
(74, 'Puzzles', 'puzzles', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:58:52', '2023-10-28 04:58:52'),
(75, 'Outdoor Games', 'outdoor-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:59:08', '2023-10-28 04:59:08'),
(76, 'Dolls and Action Figures', 'dolls-and-action-figures', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:59:21', '2023-10-28 04:59:21'),
(77, 'Educational Toys', 'educational-toys', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 04:59:43', '2023-10-28 04:59:43'),
(78, 'Remote-Controlled Toys', 'remote-controlled-toys', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:00:08', '2023-10-28 05:00:08'),
(79, 'Mind and Brain Games', 'mind-and-brain-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:00:24', '2023-10-28 05:00:24'),
(80, 'Role-Playing Games', 'role-playing-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:00:44', '2023-10-28 05:00:44'),
(81, 'Party Games', 'party-games', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:01:08', '2023-10-28 05:01:08'),
(82, 'Toys for Toddlers', 'toys-for-toddlers', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:01:27', '2023-10-28 05:01:27'),
(83, 'All other Games & Toys', 'all-other-games-toys', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:02:04', '2023-10-28 05:02:04'),
(84, 'Apparel', 'apparel', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:09:30', '2023-10-28 05:09:30'),
(85, 'Sports Equipment', 'sports-equipment', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:09:52', '2023-10-28 05:09:52'),
(86, 'Sports Footwear', 'sports-footwear', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:11:04', '2023-10-28 05:11:04'),
(87, 'Fitness Equipments', 'fitness-equipments', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:12:05', '2023-10-28 05:12:05'),
(88, 'Team Sports Supplies', 'team-sports-supplies', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:12:13', '2023-10-28 05:12:13'),
(89, 'Water Sports Equipment', 'water-sports-equipment', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:12:27', '2023-10-28 05:12:27'),
(90, 'Cycling and Bike Accessories', 'cycling-and-bike-accessories', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:12:40', '2023-10-28 05:12:40'),
(91, 'Winter Sports Gear', 'winter-sports-gear', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:12:57', '2023-10-28 05:12:57'),
(92, 'Adventure and Extreme Sports', 'adventure-and-extreme-sports', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:13:18', '2023-10-28 05:13:18'),
(93, 'Equestrian Products', 'equestrian-products', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:13:41', '2023-10-28 05:13:41'),
(94, 'Indoor Sports and Games', 'indoor-sports-and-games', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:13:54', '2023-10-28 05:13:54'),
(95, 'Recreational and Leisure Products', 'recreational-and-leisure-products', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:14:10', '2023-10-28 05:14:10'),
(96, 'Safety and Protective Gear', 'safety-and-protective-gear', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:14:25', '2023-10-28 05:14:25'),
(97, 'Outdoor Gear and Accessories', 'outdoor-gear-and-accessories', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:15:24', '2023-10-28 05:15:24'),
(98, 'Other Sports & Outdoors items', 'other-sports-outdoors-items', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:16:10', '2023-10-28 05:16:10'),
(99, 'Nutritional Supplements', 'nutritional-supplements', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:23:29', '2023-10-28 05:23:29'),
(100, 'Fitness Equipment', 'fitness-equipment', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:23:44', '2023-10-28 05:23:44'),
(101, 'Healthy Foods and Snacks', 'healthy-foods-and-snacks', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:24:05', '2023-10-28 05:24:05'),
(102, 'Mental Health and Wellness', 'mental-health-and-wellness', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:24:25', '2023-10-28 05:24:25'),
(103, 'Weight Management', 'weight-management', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:24:40', '2023-10-28 05:24:40'),
(104, 'Alternative Supplements', 'alternative-supplements', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:25:27', '2023-10-28 05:25:27'),
(105, 'Healthy Home and Lifestyle', 'healthy-home-and-lifestyle', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:25:43', '2023-10-28 05:25:43'),
(106, 'Health Monitoring Devices', 'health-monitoring-devices', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:25:55', '2023-10-28 05:25:55'),
(107, 'Specialty Diets', 'specialty-diets', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:26:07', '2023-10-28 05:26:07'),
(108, 'Recovery and Pain Management', 'recovery-and-pain-management', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:26:19', '2023-10-28 05:26:19'),
(109, 'Medical Supplies and Equipment', 'medical-supplies-and-equipment', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:26:33', '2023-10-28 05:26:33'),
(110, 'Health and Wellness Subscriptions', 'health-and-wellness-subscriptions', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:26:47', '2023-10-28 05:26:47'),
(111, 'Family Health and Wellness', 'family-health-and-wellness', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:27:08', '2023-10-28 05:27:08'),
(112, 'Necklaces', 'necklaces', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:29:39', '2023-10-28 05:29:39'),
(113, 'Earrings', 'earrings', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:29:51', '2023-10-28 05:29:51'),
(114, 'Rings', 'rings', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:30:02', '2023-10-28 05:30:02'),
(115, 'Bracelets', 'bracelets', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:30:13', '2023-10-28 05:30:13'),
(116, 'Watches', 'watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:30:25', '2023-10-28 05:30:25'),
(117, 'Anklets', 'anklets', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:30:37', '2023-10-28 05:30:37'),
(118, 'Brooches and Pins', 'brooches-and-pins', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:30:51', '2023-10-28 05:30:51'),
(119, 'Body Jewelry', 'body-jewelry', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:31:04', '2023-10-28 05:31:04'),
(120, 'Jewelry Sets', 'jewelry-sets', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:31:17', '2023-10-28 05:31:17'),
(121, 'Personalized Jewelry', 'personalized-jewelry', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:31:34', '2023-10-28 05:31:34'),
(122, 'Fine Jewelry', 'fine-jewelry', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:31:47', '2023-10-28 05:31:47'),
(123, 'Fashion Jewelry', 'fashion-jewelry', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:32:00', '2023-10-28 05:32:00'),
(124, 'Analog Watches', 'analog-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:32:16', '2023-10-28 05:32:16'),
(125, 'Digital Watches', 'digital-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:32:30', '2023-10-28 05:32:30'),
(126, 'Mechanical Watches', 'mechanical-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:32:46', '2023-10-28 05:32:46'),
(127, 'Dive Watches', 'dive-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:32:59', '2023-10-28 05:32:59'),
(128, 'Sports Watches', 'sports-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:33:25', '2023-10-28 05:33:25'),
(129, 'Luxury Watches', 'luxury-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:33:39', '2023-10-28 05:33:39'),
(130, 'Kids\' Watches', 'kids-watches', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:33:58', '2023-10-28 05:33:58'),
(131, 'Watch Accessories', 'watch-accessories', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:34:14', '2023-10-28 05:34:14'),
(132, 'Vehicle Parts and Accessories', 'vehicle-parts-and-accessories', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:35:57', '2023-10-28 05:35:57'),
(133, 'Exterior Accessories', 'exterior-accessories', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:36:11', '2023-10-28 05:36:11'),
(134, 'Interior Accessories', 'interior-accessories', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:36:26', '2023-10-28 05:36:26'),
(135, 'Wheels and Tires', 'wheels-and-tires', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:36:38', '2023-10-28 05:36:38'),
(136, 'Car Care and Detailing', 'car-care-and-detailing', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:36:51', '2023-10-28 05:36:51'),
(137, 'Performance and Tuning', 'performance-and-tuning', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:37:05', '2023-10-28 05:37:05'),
(138, 'Electronics and Gadgets', 'electronics-and-gadgets', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:37:17', '2023-10-28 05:37:17'),
(139, 'Tools and Equipment', 'tools-and-equipment', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:37:28', '2023-10-28 05:37:28'),
(140, 'Fluids and Chemicals', 'fluids-and-chemicals', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:37:47', '2023-10-28 05:37:47'),
(141, 'Safety and Emergency', 'safety-and-emergency', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:40:40', '2023-10-28 05:40:40'),
(142, 'RV and Towing', 'rv-and-towing', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:40:52', '2023-10-28 05:40:52'),
(143, 'Motorcycle and Powersports', 'motorcycle-and-powersports', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:41:03', '2023-10-28 05:41:03'),
(144, 'Business & Finance books', 'business-finance-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:53:17', '2023-10-28 05:53:17'),
(145, 'Science & Nature books', 'science-nature-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:53:33', '2023-10-28 05:53:33'),
(146, 'Religion & Spirituality books', 'religion-spirituality-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:53:51', '2023-10-28 05:53:51'),
(147, 'Cooking & Food books', 'cooking-food-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:55:37', '2023-10-28 05:55:37'),
(148, 'Parenting & Family books', 'parenting-family-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:55:54', '2023-10-28 05:55:54'),
(149, 'Health & Wellness books', 'health-wellness-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:56:30', '2023-10-28 05:56:30'),
(150, 'Children\'s Books', 'children-s-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:56:54', '2023-10-28 05:56:54'),
(151, 'Academic & Educational', 'academic-educational', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:57:21', '2023-10-28 05:57:21'),
(152, 'Reference Materials', 'reference-materials', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:57:49', '2023-10-28 05:57:49'),
(153, 'E-books & Audiobooks', 'e-books-audiobooks', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:58:05', '2023-10-28 05:58:05'),
(154, 'Magazines & Periodicals', 'magazines-periodicals', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:58:34', '2023-10-28 05:58:34'),
(155, 'Homeschooling & Educational Supplies', 'homeschooling-educational-supplies', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:58:52', '2023-10-28 05:58:52'),
(156, 'Tech & IT Education', 'tech-it-education', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:59:10', '2023-10-28 05:59:10'),
(157, 'Art & Creative Education', 'art-creative-education', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 05:59:26', '2023-10-28 05:59:26'),
(158, 'History & Social Sciences books', 'history-social-sciences-books', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:00:23', '2023-10-28 06:00:23'),
(159, 'Language Learning', 'language-learning', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:01:43', '2023-10-28 06:01:43'),
(160, 'Writing Instruments', 'writing-instruments', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:03:33', '2023-10-28 06:03:33'),
(161, 'Paper and Notebooks', 'paper-and-notebooks', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:04:48', '2023-10-28 06:04:48'),
(162, 'Filing and Organization', 'filing-and-organization', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:07:25', '2023-10-28 06:07:25'),
(163, 'Office & School Furniture', 'office-school-furniture', NULL, 'null', 'null', 'null', 11, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-28 06:07:40', '2023-10-28 06:12:13'),
(164, 'Storage and Organization', 'storage-and-organization', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:07:57', '2023-10-28 06:07:57'),
(165, 'Calendars and Planners', 'calendars-and-planners', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:08:11', '2023-10-28 06:08:11'),
(166, 'Arts and Crafts Supplies', 'arts-and-crafts-supplies', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:08:25', '2023-10-28 06:08:25'),
(167, 'Writing and Drawing', 'writing-and-drawing', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:08:44', '2023-10-28 06:08:44'),
(168, 'Backpacks and Bags', 'backpacks-and-bags', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:09:01', '2023-10-28 06:09:01'),
(169, 'School Tools', 'school-tools', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:09:14', '2023-10-28 06:09:14'),
(170, 'School Essentials', 'school-essentials', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:09:34', '2023-10-28 06:09:34'),
(171, 'Classroom Decor', 'classroom-decor', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:09:50', '2023-10-28 06:09:50'),
(172, 'Outdoor and Physical Education', 'outdoor-and-physical-education', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:10:51', '2023-10-28 06:10:51'),
(173, 'Teacher and Classroom Supplies', 'teacher-and-classroom-supplies', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:11:06', '2023-10-28 06:11:06'),
(174, 'Smart Home and Tech-Integrated Furniture', 'smart-home-and-tech-integrated-furniture', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:15:57', '2023-10-28 06:15:57'),
(175, 'DIY and Customizable Furniture', 'diy-and-customizable-furniture', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:16:23', '2023-10-28 06:16:23'),
(176, 'Living Room Furniture', 'living-room-furniture', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:16:43', '2023-10-28 06:16:43'),
(177, 'Home Accessories', 'home-accessories', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:17:04', '2023-10-28 06:17:04'),
(178, 'Material Focus', 'material-focus', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:17:38', '2023-10-28 06:17:38'),
(179, 'Pet-Friendly Furniture', 'pet-friendly-furniture', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:18:17', '2023-10-28 06:18:17'),
(180, 'Small Space and Apartment-Friendly Furniture', 'small-space-and-apartment-friendly-furniture', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:18:31', '2023-10-28 06:18:31'),
(181, 'Luxury and High-End Decor', 'luxury-and-high-end-decor', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:18:46', '2023-10-28 06:18:46'),
(182, 'Decor Styles', 'decor-styles', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:19:01', '2023-10-28 06:19:01'),
(183, 'Room-Specific Decor', 'room-specific-decor', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:19:16', '2023-10-28 06:19:16'),
(184, 'Seasonal and Holiday Decor', 'seasonal-and-holiday-decor', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:19:29', '2023-10-28 06:19:29'),
(185, 'Fresh Produce', 'fresh-produce', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:22:35', '2023-10-28 06:22:35'),
(186, 'Dairy and Eggs', 'dairy-and-eggs', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:22:47', '2023-10-28 06:22:47'),
(187, 'Meat and Seafood', 'meat-and-seafood', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:23:02', '2023-10-28 06:23:02'),
(188, 'Bakery and Bread', 'bakery-and-bread', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:23:17', '2023-10-28 06:23:17'),
(189, 'Pantry Staples', 'pantry-staples', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:23:35', '2023-10-28 06:23:35'),
(190, 'Beverages', 'beverages', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:23:46', '2023-10-28 06:23:46'),
(191, 'Snacks', 'snacks', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:24:00', '2023-10-28 06:24:00'),
(192, 'Frozen Foods', 'frozen-foods', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:24:14', '2023-10-28 06:24:14'),
(193, 'Organic and Natural', 'organic-and-natural', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:24:29', '2023-10-28 06:24:29'),
(194, 'Specialty Foods', 'specialty-foods', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:24:56', '2023-10-28 06:24:56'),
(195, 'Baby and Infant foods', 'baby-and-infant-foods', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:25:24', '2023-10-28 06:25:24'),
(196, 'Home Delivery Kits', 'home-delivery-kits', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:25:48', '2023-10-28 06:25:48'),
(197, 'Subscription Boxes', 'subscription-boxes', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:26:03', '2023-10-28 06:26:03'),
(198, 'Local and Artisanal', 'local-and-artisanal', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:26:24', '2023-10-28 06:26:24'),
(199, 'Bulk Buying food', 'bulk-buying-food', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:26:46', '2023-10-28 06:26:46'),
(200, 'Pet Food', 'pet-food', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:29:45', '2023-10-28 06:29:45'),
(201, 'Pet Supplies items', 'pet-supplies-items', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:30:08', '2023-10-28 06:30:08'),
(202, 'Pet Toys', 'pet-toys', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:30:27', '2023-10-28 06:30:27'),
(203, 'Pet Health and Wellness', 'pet-health-and-wellness', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:30:45', '2023-10-28 06:30:45'),
(204, 'Pet Apparel and Accessories', 'pet-apparel-and-accessories', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:31:15', '2023-10-28 06:31:15'),
(205, 'All Pet & animals', 'all-pet-animals', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:32:55', '2023-10-28 06:32:55'),
(206, 'Wildlife and Birding', 'wildlife-and-birding', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:33:13', '2023-10-28 06:33:13'),
(207, 'Livestock and Farm Animals', 'livestock-and-farm-animals', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:33:31', '2023-10-28 06:33:31'),
(208, 'Pet Services', 'pet-services', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:33:44', '2023-10-28 06:33:44'),
(209, 'Luggage Types', 'luggage-types', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:35:08', '2023-10-28 06:35:08'),
(210, 'Luggage Materials', 'luggage-materials', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:35:22', '2023-10-28 06:35:22'),
(211, 'Travel Accessories', 'travel-accessories', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:35:44', '2023-10-28 06:35:44'),
(212, 'Travel Electronics', 'travel-electronics', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:36:00', '2023-10-28 06:36:00'),
(213, 'Travel Bags', 'travel-bags', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:36:17', '2023-10-28 06:36:17'),
(214, 'Travel Essentials', 'travel-essentials', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:36:34', '2023-10-28 06:36:34'),
(215, 'uggage Brands', 'uggage-brands', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:36:47', '2023-10-28 06:36:47'),
(216, 'Travel Clothing', 'travel-clothing', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:37:00', '2023-10-28 06:37:00'),
(217, 'Outdoor and Adventure Gear', 'outdoor-and-adventure-gear', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:37:12', '2023-10-28 06:37:12'),
(218, 'Specialty Luggage:', 'specialty-luggage-', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:37:25', '2023-10-28 06:37:25'),
(219, 'Kids\' Luggage', 'kids-luggage', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:37:38', '2023-10-28 06:37:38'),
(220, 'Travel Security', 'travel-security', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:38:06', '2023-10-28 06:38:06'),
(221, 'Travel Books and Guides', 'travel-books-and-guides', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:38:22', '2023-10-28 06:38:22'),
(222, 'Luggage Repair and Maintenance', 'luggage-repair-and-maintenance', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:38:40', '2023-10-28 06:38:40'),
(223, 'Travel Gift Ideas', 'travel-gift-ideas', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 06:39:08', '2023-10-28 06:39:08'),
(224, 'Coins and Currency', 'coins-and-currency', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:11:45', '2023-10-28 08:11:45'),
(225, 'Stamps', 'stamps', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:12:21', '2023-10-28 08:12:21'),
(226, 'Trading Cards', 'trading-cards', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:12:40', '2023-10-28 08:12:40'),
(227, 'Collectible Figurines', 'collectible-figurines', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:13:09', '2023-10-28 08:13:09'),
(228, 'Fossils and Minerals', 'fossils-and-minerals', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:13:34', '2023-10-28 08:13:34'),
(229, 'Other Collectibles', 'other-collectibles', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:13:54', '2023-10-28 08:13:54'),
(230, 'Paintings', 'paintings', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:14:38', '2023-10-28 08:14:38'),
(231, 'Sculptures', 'sculptures', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:14:48', '2023-10-28 08:14:48'),
(232, 'Prints and Posters', 'prints-and-posters', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:15:00', '2023-10-28 08:15:00'),
(233, 'Photography', 'photography', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:15:19', '2023-10-28 08:15:19'),
(234, 'Digital Art', 'digital-art', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:15:47', '2023-10-28 08:15:47'),
(235, 'NFT Art', 'nft-art', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:16:17', '2023-10-28 08:16:17'),
(236, 'Islamic and Middle Eastern Art', 'islamic-and-middle-eastern-art', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:16:45', '2023-10-28 08:16:45'),
(237, 'Other Art', 'other-art', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:17:04', '2023-10-28 08:17:04'),
(238, 'Sewing and Fabric', 'sewing-and-fabric', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:19:14', '2023-10-28 08:19:14'),
(239, 'Paper Crafts', 'paper-crafts', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:19:26', '2023-10-28 08:19:26'),
(240, 'Painting and Drawing', 'painting-and-drawing', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:19:38', '2023-10-28 08:19:38'),
(241, 'Jewelry Making', 'jewelry-making', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:19:52', '2023-10-28 08:19:52'),
(242, 'Woodworking', 'woodworking', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:20:10', '2023-10-28 08:20:10'),
(243, 'Model Building', 'model-building', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:20:25', '2023-10-28 08:20:25'),
(244, 'Needlecrafts', 'needlecrafts', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:20:42', '2023-10-28 08:20:42'),
(245, 'Candle Making and Soap Making', 'candle-making-and-soap-making', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:20:56', '2023-10-28 08:20:56'),
(246, 'Outdoor and Adventure Hobbies', 'outdoor-and-adventure-hobbies', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:21:47', '2023-10-28 08:21:47'),
(247, 'All other craft & hobbies', 'all-other-craft-hobbies', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:22:43', '2023-10-28 08:22:43'),
(248, 'Newborn babies clothing', 'newborn-babies-clothing', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:25:17', '2023-10-28 08:25:17'),
(249, 'Baby Diapering', 'baby-diapering', NULL, 'null', 'null', 'null', 18, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-28 08:25:38', '2023-10-28 09:27:06'),
(250, 'Baby Feeding', 'baby-feeding', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:26:01', '2023-10-28 08:26:01'),
(251, 'Baby Nursery', 'baby-nursery', NULL, 'null', 'null', 'null', 18, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-28 08:26:19', '2023-10-28 09:29:30'),
(252, 'Baby Safety and Health', 'baby-safety-and-health', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:26:40', '2023-10-28 08:26:40'),
(253, 'Kids Clothing', 'kids-clothing', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:27:14', '2023-10-28 08:27:14'),
(254, 'kids Toys and Games', 'kids-toys-and-games', NULL, 'null', 'null', 'null', 18, NULL, NULL, NULL, 0, '', 1, NULL, 'null', 'null', '2023-10-28 08:27:34', '2023-10-28 08:28:03'),
(255, 'Kids Furniture', 'kids-furniture', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:28:25', '2023-10-28 08:28:25'),
(256, 'Kids School Supplies', 'kids-school-supplies', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:28:52', '2023-10-28 08:28:52'),
(257, 'Kids Party Supplies', 'kids-party-supplies', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:29:10', '2023-10-28 08:29:10'),
(258, 'Sports and Outdoor', 'sports-and-outdoor', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:29:33', '2023-10-28 08:29:33'),
(259, 'Kids Books and Media', 'kids-books-and-media', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:29:55', '2023-10-28 08:29:55'),
(260, 'Kids Bedroom Decor', 'kids-bedroom-decor', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:30:30', '2023-10-28 08:30:30'),
(261, 'Kids Personal Care', 'kids-personal-care', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:30:48', '2023-10-28 08:30:48'),
(262, 'Kids Gifts and Special Occasions', 'kids-gifts-and-special-occasions', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 08:31:45', '2023-10-28 08:31:45'),
(263, 'Laboratory Equipment and Supplies', 'laboratory-equipment-and-supplies', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:33:26', '2023-10-28 09:33:26'),
(264, 'Tools & Equipment', 'tools-equipment', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:35:48', '2023-10-28 09:35:48'),
(265, 'Material Handling', 'material-handling', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:36:05', '2023-10-28 09:36:05'),
(266, 'Industrial Machinery', 'industrial-machinery', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:36:42', '2023-10-28 09:36:42'),
(267, 'Safety and Security', 'safety-and-security', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:37:11', '2023-10-28 09:37:11'),
(268, 'HVAC and Environmental Control', 'hvac-and-environmental-control', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:37:26', '2023-10-28 09:37:26'),
(269, 'Electrical and Electronics', 'electrical-and-electronics', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:37:42', '2023-10-28 09:37:42'),
(270, 'Fasteners and Hardware', 'fasteners-and-hardware', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:37:55', '2023-10-28 09:37:55'),
(271, 'Janitorial and Sanitation', 'janitorial-and-sanitation', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:38:12', '2023-10-28 09:38:12'),
(272, 'Agricultural Equipment', 'agricultural-equipment', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:38:27', '2023-10-28 09:38:27'),
(273, 'Construction and Building Materials', 'construction-and-building-materials', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:38:39', '2023-10-28 09:38:39'),
(274, 'Healthcare and Medical Supplies', 'healthcare-and-medical-supplies', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:39:19', '2023-10-28 09:39:19'),
(275, 'Scientific Research and Education', 'scientific-research-and-education', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:39:35', '2023-10-28 09:39:35'),
(276, 'Automotive and Transportation', 'automotive-and-transportation', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:39:49', '2023-10-28 09:39:49'),
(277, 'Food Service and Hospitality', 'food-service-and-hospitality', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:40:17', '2023-10-28 09:40:17'),
(278, 'Cameras', 'cameras', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:42:17', '2023-10-28 09:42:17'),
(279, 'Camera Lenses', 'camera-lenses', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:42:37', '2023-10-28 09:42:37'),
(280, 'Camera Accessories', 'camera-accessories', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:42:50', '2023-10-28 09:42:50'),
(281, 'Lighting Equipment', 'lighting-equipment', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:43:20', '2023-10-28 09:43:20'),
(282, 'Drones Cameras', 'drones-cameras', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:44:15', '2023-10-28 09:44:15'),
(283, 'Camera Supports', 'camera-supports', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:44:34', '2023-10-28 09:44:34'),
(284, 'Photography Software', 'photography-software', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:44:48', '2023-10-28 09:44:48'),
(285, 'Photography Print and Display', 'photography-print-and-display', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:45:04', '2023-10-28 09:45:04'),
(286, 'Photography Books and Learning Resources', 'photography-books-and-learning-resources', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:45:20', '2023-10-28 09:45:20'),
(287, 'Camera Cleaning and Maintenance', 'camera-cleaning-and-maintenance', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:45:37', '2023-10-28 09:45:37'),
(288, 'Camera Mounts and Accessories', 'camera-mounts-and-accessories', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:45:52', '2023-10-28 09:45:52'),
(289, 'Camera Bags and Strap', 'camera-bags-and-strap', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:46:11', '2023-10-28 09:46:11'),
(290, 'Film and Darkroom Supplies', 'film-and-darkroom-supplies', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:46:31', '2023-10-28 09:46:31'),
(291, 'Used and Vintage Equipment', 'used-and-vintage-equipment', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:46:43', '2023-10-28 09:46:43');
INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `created_at`, `updated_at`) VALUES
(292, 'Camera Brand Specific Categories', 'camera-brand-specific-categories', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:46:58', '2023-10-28 09:46:58'),
(293, 'Bowhunting', 'bowhunting', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:51:18', '2023-10-28 09:51:18'),
(294, 'Hunting Gear', 'hunting-gear', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:51:50', '2023-10-28 09:51:50'),
(295, 'Optics and Electronics', 'optics-and-electronics', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:52:15', '2023-10-28 09:52:15'),
(296, 'Knives and Tools', 'knives-and-tools', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:54:18', '2023-10-28 09:54:18'),
(297, 'Game Processing', 'game-processing', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:54:46', '2023-10-28 09:54:46'),
(298, 'Hunting Apparel', 'hunting-apparel', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:55:20', '2023-10-28 09:55:20'),
(299, 'Fishing (Rods and Reels)', 'fishing-rods-and-reels-', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:56:00', '2023-10-28 09:56:00'),
(300, 'Fishing (Baits and Lures)', 'fishing-baits-and-lures-', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:57:09', '2023-10-28 09:57:09'),
(301, 'Fishing Line', 'fishing-line', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:57:49', '2023-10-28 09:57:49'),
(302, 'Fishing Accessories', 'fishing-accessories', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:58:53', '2023-10-28 09:58:53'),
(303, 'fishing (Apparel and Footwear)', 'fishing-apparel-and-footwear-', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 09:59:37', '2023-10-28 09:59:37'),
(304, 'Fly Fishing', 'fly-fishing', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:00:26', '2023-10-28 10:00:26'),
(305, 'Kayak and Canoe Fishing', 'kayak-and-canoe-fishing', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:00:48', '2023-10-28 10:00:48'),
(306, 'Fishing Books and DVDs', 'fishing-books-and-dvds', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:01:23', '2023-10-28 10:01:23'),
(307, 'Party Decorations', 'party-decorations', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:04:38', '2023-10-28 10:04:38'),
(308, 'Party Supplies', 'party-supplies', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:04:55', '2023-10-28 10:04:55'),
(309, 'Themed Parties', 'themed-parties', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:05:15', '2023-10-28 10:05:15'),
(310, 'Party Balloons', 'party-balloons', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:05:41', '2023-10-28 10:05:41'),
(311, 'Party Invitations and Stationery', 'party-invitations-and-stationery', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:05:55', '2023-10-28 10:05:55'),
(312, 'Cake and Baking Supplies', 'cake-and-baking-supplies', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:06:12', '2023-10-28 10:06:12'),
(313, 'Party Lighting', 'party-lighting', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:06:42', '2023-10-28 10:06:42'),
(314, 'Party Costumes and Accessories', 'party-costumes-and-accessories', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:07:02', '2023-10-28 10:07:02'),
(315, 'Party Games and Activities', 'party-games-and-activities', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:07:27', '2023-10-28 10:07:27'),
(316, 'Catering and Food Supplies', 'catering-and-food-supplies', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:07:38', '2023-10-28 10:07:38'),
(317, 'Party Gifts and Favors', 'party-gifts-and-favors', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:07:55', '2023-10-28 10:07:55'),
(318, 'Party Accessories and Decor', 'party-accessories-and-decor', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:08:22', '2023-10-28 10:08:22'),
(319, 'Event Planning Services', 'event-planning-services', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:08:36', '2023-10-28 10:08:36'),
(320, 'Operating Systems', 'operating-systems', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:12:26', '2023-10-28 10:12:26'),
(321, 'Productivity Software', 'productivity-software', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:12:44', '2023-10-28 10:12:44'),
(322, 'Antivirus and Security', 'antivirus-and-security', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:13:08', '2023-10-28 10:13:08'),
(323, 'Digital Media', 'digital-media', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:13:29', '2023-10-28 10:13:29'),
(324, 'Gaming Software', 'gaming-software', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:15:56', '2023-10-28 10:15:56'),
(325, 'Web Development', 'web-development', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:18:06', '2023-10-28 10:18:06'),
(326, 'Education and E-Learning', 'education-and-e-learning', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:18:24', '2023-10-28 10:18:24'),
(327, 'Digital Services', 'digital-services', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:18:52', '2023-10-28 10:18:52'),
(328, 'Utilities', 'utilities', NULL, 'null', 'null', 'null', 23, NULL, NULL, NULL, 0, '', 0, NULL, 'null', 'null', '2023-10-28 10:19:07', '2023-10-29 20:00:39'),
(329, 'Programming and Development', 'programming-and-development', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:19:33', '2023-10-28 10:19:33'),
(330, 'Virtual Reality (VR) and Augmented Reality (AR)', 'virtual-reality-vr-and-augmented-reality-ar-', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:20:01', '2023-10-28 10:20:01'),
(331, 'Digital Art and Design', 'digital-art-and-design', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:20:56', '2023-10-28 10:20:56'),
(332, 'Subscription Services', 'subscription-services', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:21:12', '2023-10-28 10:21:12'),
(333, 'Free and Open Source Software', 'free-and-open-source-software', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:22:08', '2023-10-28 10:22:08'),
(334, 'Digital Product Accessories', 'digital-product-accessories', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:24:21', '2023-10-28 10:24:21'),
(335, 'Software in Different Languages', 'software-in-different-languages', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:24:59', '2023-10-28 10:24:59'),
(336, 'Beta and Early Access Releases', 'beta-and-early-access-releases', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-10-28 10:25:22', '2023-10-28 10:25:22'),
(337, 'Fresh Fruit', 'fresh-fruit', NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, '2023-12-19 09:43:28', '2023-12-19 09:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `category_commission_history`
--

CREATE TABLE `category_commission_history` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_percetage` int(11) DEFAULT NULL COMMENT 'commission %',
  `admin_get_amount` decimal(10,2) DEFAULT NULL,
  `check_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_commission_history`
--

INSERT INTO `category_commission_history` (`id`, `customer_id`, `seller_id`, `product_id`, `product_qty`, `product_price`, `category_id`, `category_percetage`, `admin_get_amount`, `check_status`, `created_at`, `updated_at`) VALUES
(1, 3, 66, 11, 1, 7149.00, 1, 5, 357.45, NULL, '2024-01-26 19:04:30', '2024-01-26 19:04:30'),
(5, 66, 66, 192, 1, 235.10, 20, 5, 11.76, NULL, '2024-01-27 03:23:28', '2024-01-27 03:23:28'),
(6, 66, 66, 189, 1, 249.00, 20, 5, 12.45, NULL, '2024-01-27 03:23:28', '2024-01-27 03:23:28'),
(7, 66, NULL, 182, 1, 78.00, 22, 10, 7.80, NULL, '2024-01-27 03:23:28', '2024-01-27 03:23:28'),
(8, 66, 66, 12, 1, 8299.00, 1, 5, 414.95, NULL, '2024-01-27 03:23:28', '2024-01-27 03:23:28'),
(9, 66, 66, 187, 1, 100.00, 21, 7, 7.00, NULL, '2024-01-27 03:55:10', '2024-01-27 03:55:10'),
(10, 66, NULL, 19, 1, 106.00, 2, 7, 7.42, NULL, '2024-01-27 04:08:14', '2024-01-27 04:08:14'),
(11, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:04:22', '2024-02-06 17:04:22'),
(12, 2, 66, 187, 1, 100.00, 21, 7, 7.00, NULL, '2024-02-06 17:04:22', '2024-02-06 17:04:22'),
(13, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:33:03', '2024-02-06 17:33:03'),
(14, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:33:15', '2024-02-06 17:33:15'),
(15, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:35:25', '2024-02-06 17:35:25'),
(16, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:36:43', '2024-02-06 17:36:43'),
(17, 2, 66, 198, 1, 2222.00, NULL, 0, 0.00, NULL, '2024-02-06 17:36:43', '2024-02-06 17:36:43'),
(18, 2, 66, 192, 1, 235.10, 20, 5, 11.76, NULL, '2024-02-06 17:36:43', '2024-02-06 17:36:43'),
(19, 2, NULL, 14, 1, 383.00, 1, 5, 19.15, NULL, '2024-02-06 17:36:43', '2024-02-06 17:36:43'),
(20, 2, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-02-06 17:38:29', '2024-02-06 17:38:29'),
(21, 2, 66, 187, 1, 100.00, 21, 7, 7.00, NULL, '2024-02-06 17:38:29', '2024-02-06 17:38:29'),
(22, 2, 66, 190, 1, 75.00, 20, 5, 3.75, NULL, '2024-02-06 17:38:29', '2024-02-06 17:38:29'),
(23, 2, 66, 160, 1, 10.00, 22, 10, 1.00, NULL, '2024-02-06 17:38:29', '2024-02-06 17:38:29'),
(24, 2, 4, 132, 5, 340.00, 14, 10, 34.00, NULL, '2024-02-06 19:13:47', '2024-02-06 19:13:47'),
(25, 5, 4, 187, 2, 100.00, 21, 7, 7.00, NULL, '2024-02-24 13:37:55', '2024-02-24 13:37:55'),
(26, 5, 1, 202, 2, 10000.00, 1, 5, 500.00, NULL, '2024-03-07 13:46:26', '2024-03-07 13:46:26'),
(27, 5, 68, 200, 1, 4500.00, 2, 7, 315.00, NULL, '2024-03-07 13:46:26', '2024-03-07 13:46:26'),
(28, 5, 4, 199, 1, 36332.00, NULL, 0, 0.00, NULL, '2024-03-07 13:46:26', '2024-03-07 13:46:26'),
(29, 5, NULL, 10, 10, 5000.00, 1, 5, 250.00, NULL, '2024-03-07 14:11:11', '2024-03-07 14:11:11'),
(30, 5, NULL, 15, 100, 46.00, 1, 5, 2.30, NULL, '2024-03-07 14:12:53', '2024-03-07 14:12:53'),
(31, 5, NULL, 7, 1, 5000.00, 1, 5, 250.00, NULL, '2024-03-07 14:14:26', '2024-03-07 14:14:26'),
(32, 5, NULL, 10, 1, 5000.00, 1, 5, 250.00, NULL, '2024-03-07 14:14:26', '2024-03-07 14:14:26'),
(33, 5, NULL, 16, 3, 179.00, 1, 5, 8.95, NULL, '2024-03-07 14:15:19', '2024-03-07 14:15:19'),
(34, 5, 4, 174, 1, 118.00, 6, 10, 11.80, NULL, '2024-03-07 14:16:25', '2024-03-07 14:16:25'),
(35, 5, 4, 174, 1, 118.00, 6, 10, 11.80, NULL, '2024-03-07 14:17:13', '2024-03-07 14:17:13'),
(36, 5, NULL, 113, 1, 103.00, 17, 6, 6.18, NULL, '2024-03-07 14:17:13', '2024-03-07 14:17:13'),
(37, 5, 4, 174, 1, 118.00, 6, 10, 11.80, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(38, 5, NULL, 113, 1, 103.00, 17, 6, 6.18, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(39, 5, 4, 130, 1, 507.00, 14, 10, 50.70, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(40, 5, NULL, 52, 1, 6654.00, 7, 8, 532.32, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(41, 5, NULL, 57, 1, 75.00, 6, 10, 7.50, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(42, 5, NULL, 13, 1, 49.00, 1, 5, 2.45, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(43, 5, NULL, 35, 1, 4499.00, 3, 7, 314.93, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(44, 5, NULL, 59, 1, 120.00, 8, 10, 12.00, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(45, 5, NULL, 66, 1, 1234.00, 10, 10, 123.40, NULL, '2024-03-07 14:18:16', '2024-03-07 14:18:16'),
(46, 5, NULL, 27, 1, 24.70, 2, 7, 1.73, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(47, 5, NULL, 68, 1, 632.00, 6, 10, 63.20, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(48, 5, NULL, 31, 1, 798.00, 3, 7, 55.86, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(49, 5, NULL, 19, 1, 106.00, 2, 7, 7.42, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(50, 5, NULL, 62, 1, 500.00, 9, 6, 30.00, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(51, 5, 4, 132, 1, 340.00, 14, 10, 34.00, NULL, '2024-03-07 14:22:10', '2024-03-07 14:22:10'),
(52, 1, 1, 202, 101, 10000.00, 1, 5, 500.00, NULL, '2024-03-07 14:31:30', '2024-03-07 14:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `circumstances`
--

CREATE TABLE `circumstances` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circumstances`
--

INSERT INTO `circumstances` (`id`, `employe_id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 6, 7, 6, 'Mrs. Jan Ahmed', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Mrs.', 'Jan', 'Ahmed', 'sdfsdf', 'Widow', 10, 'FULL TIME', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:22:16', 1),
(2, 5, 3, 4, 'Mr. Bijon Ahmed', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'Mr.', 'Bijon', 'Ahmed', 'dsff1111', 'Single', 4, 'FULL TIME', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:38:09', 1),
(3, 3, 8, 4, 'Mrs. Raheem Ahmd', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'Mrs.', 'Raheem', 'Ahmd', '11122233445', 'Single', 9, 'LEFT', '0000-00-00', '0000-00-00', '0000-00-00', 'Test', 'Test', 'Test', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', '2023-08-23', '2023-08-31', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', '5', 'Pay Group', '4', 'null', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'Pay Group', '11', '10', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'No', 'Pay Group', 'Pay Group', '3', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'Pay Group', '5', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-16 14:13:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`) VALUES
(1, 'ABW', 'Aruba', 'AW'),
(2, 'AFG', 'Afghanistan', 'AF'),
(3, 'AGO', 'Angola', 'AO'),
(4, 'AIA', 'Anguilla', 'AI'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'AND', 'Andorra', 'AD'),
(8, 'ARE', 'United Arab Emirates', 'AE'),
(9, 'ARG', 'Argentina', 'AR'),
(10, 'ARM', 'Armenia', 'AM'),
(11, 'ASM', 'American Samoa', 'AS'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATF', 'French Southern Territories', 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'AG'),
(15, 'AUS', 'Australia', 'AU'),
(16, 'AUT', 'Austria', 'AT'),
(17, 'AZE', 'Azerbaijan', 'AZ'),
(18, 'BDI', 'Burundi', 'BI'),
(19, 'BEL', 'Belgium', 'BE'),
(20, 'BEN', 'Benin', 'BJ'),
(21, 'BES', 'Bonaire', 'BQ'),
(22, 'BFA', 'Burkina Faso', 'BF'),
(23, 'BGD', 'Bangladesh', 'BD'),
(24, 'BGR', 'Bulgaria', 'BG'),
(25, 'BHR', 'Bahrain', 'BH'),
(26, 'BHS', 'Bahamas', 'BS'),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(28, 'BLM', 'Saint Barthélemy', 'BL'),
(29, 'BLR', 'Belarus', 'BY'),
(30, 'BLZ', 'Belize', 'BZ'),
(31, 'BMU', 'Bermuda', 'BM'),
(32, 'BOL', 'Bolivia', 'BO'),
(33, 'BRA', 'Brazil', 'BR'),
(34, 'BRB', 'Barbados', 'BB'),
(35, 'BRN', 'Brunei', 'BN'),
(36, 'BTN', 'Bhutan', 'BT'),
(37, 'BVT', 'Bouvet Island', 'BV'),
(38, 'BWA', 'Botswana', 'BW'),
(39, 'CAF', 'Central African Republic', 'CF'),
(40, 'CAN', 'Canada', 'CA'),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(42, 'CHE', 'Switzerland', 'CH'),
(43, 'CHL', 'Chile', 'CL'),
(44, 'CHN', 'China', 'CN'),
(45, 'CIV', 'Ivory Coast', 'CI'),
(46, 'CMR', 'Cameroon', 'CM'),
(47, 'COD', 'Democratic Republic of the Congo', 'CD'),
(48, 'COG', 'Republic of the Congo', 'CG'),
(49, 'COK', 'Cook Islands', 'CK'),
(50, 'COL', 'Colombia', 'CO'),
(51, 'COM', 'Comoros', 'KM'),
(52, 'CPV', 'Cape Verde', 'CV'),
(53, 'CRI', 'Costa Rica', 'CR'),
(54, 'CUB', 'Cuba', 'CU'),
(55, 'CUW', 'Curacao', 'CW'),
(56, 'CXR', 'Christmas Island', 'CX'),
(57, 'CYM', 'Cayman Islands', 'KY'),
(58, 'CYP', 'Cyprus', 'CY'),
(59, 'CZE', 'Czech Republic', 'CZ'),
(60, 'DEU', 'Germany', 'DE'),
(61, 'DJI', 'Djibouti', 'DJ'),
(62, 'DMA', 'Dominica', 'DM'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DOM', 'Dominican Republic', 'DO'),
(65, 'DZA', 'Algeria', 'DZ'),
(66, 'ECU', 'Ecuador', 'EC'),
(67, 'EGY', 'Egypt', 'EG'),
(68, 'ERI', 'Eritrea', 'ER'),
(69, 'ESH', 'Western Sahara', 'EH'),
(70, 'ESP', 'Spain', 'ES'),
(71, 'EST', 'Estonia', 'EE'),
(72, 'ETH', 'Ethiopia', 'ET'),
(73, 'FIN', 'Finland', 'FI'),
(74, 'FJI', 'Fiji', 'FJ'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRA', 'France', 'FR'),
(77, 'FRO', 'Faroe Islands', 'FO'),
(78, 'FSM', 'Micronesia', 'FM'),
(79, 'GAB', 'Gabon', 'GA'),
(80, 'GBR', 'United Kingdom', 'GB'),
(81, 'GEO', 'Georgia', 'GE'),
(82, 'GGY', 'Guernsey', 'GG'),
(83, 'GHA', 'Ghana', 'GH'),
(84, 'GIB', 'Gibraltar', 'GI'),
(85, 'GIN', 'Guinea', 'GN'),
(86, 'GLP', 'Guadeloupe', 'GP'),
(87, 'GMB', 'Gambia', 'GM'),
(88, 'GNB', 'Guinea-Bissau', 'GW'),
(89, 'GNQ', 'Equatorial Guinea', 'GQ'),
(90, 'GRC', 'Greece', 'GR'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GRL', 'Greenland', 'GL'),
(93, 'GTM', 'Guatemala', 'GT'),
(94, 'GUF', 'French Guiana', 'GF'),
(95, 'GUM', 'Guam', 'GU'),
(96, 'GUY', 'Guyana', 'GY'),
(97, 'HKG', 'Hong Kong', 'HK'),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(99, 'HND', 'Honduras', 'HN'),
(100, 'HRV', 'Croatia', 'HR'),
(101, 'HTI', 'Haiti', 'HT'),
(102, 'HUN', 'Hungary', 'HU'),
(103, 'IDN', 'Indonesia', 'ID'),
(104, 'IMN', 'Isle of Man', 'IM'),
(105, 'IND', 'India', 'IN'),
(106, 'IOT', 'British Indian Ocean Territory', 'IO'),
(107, 'IRL', 'Ireland', 'IE'),
(108, 'IRN', 'Iran', 'IR'),
(109, 'IRQ', 'Iraq', 'IQ'),
(110, 'ISL', 'Iceland', 'IS'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'JAM', 'Jamaica', 'JM'),
(114, 'JEY', 'Jersey', 'JE'),
(115, 'JOR', 'Jordan', 'JO'),
(116, 'JPN', 'Japan', 'JP'),
(117, 'KAZ', 'Kazakhstan', 'KZ'),
(118, 'KEN', 'Kenya', 'KE'),
(119, 'KGZ', 'Kyrgyzstan', 'KG'),
(120, 'KHM', 'Cambodia', 'KH'),
(121, 'KIR', 'Kiribati', 'KI'),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(123, 'KOR', 'South Korea', 'KR'),
(124, 'KWT', 'Kuwait', 'KW'),
(125, 'LAO', 'Laos', 'LA'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LBR', 'Liberia', 'LR'),
(128, 'LBY', 'Libya', 'LY'),
(129, 'LCA', 'Saint Lucia', 'LC'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LKA', 'Sri Lanka', 'LK'),
(132, 'LSO', 'Lesotho', 'LS'),
(133, 'LTU', 'Lithuania', 'LT'),
(134, 'LUX', 'Luxembourg', 'LU'),
(135, 'LVA', 'Latvia', 'LV'),
(136, 'MAC', 'Macao', 'MO'),
(137, 'MAF', 'Saint Martin', 'MF'),
(138, 'MAR', 'Morocco', 'MA'),
(139, 'MCO', 'Monaco', 'MC'),
(140, 'MDA', 'Moldova', 'MD'),
(141, 'MDG', 'Madagascar', 'MG'),
(142, 'MDV', 'Maldives', 'MV'),
(143, 'MEX', 'Mexico', 'MX'),
(144, 'MHL', 'Marshall Islands', 'MH'),
(145, 'MKD', 'Macedonia', 'MK'),
(146, 'MLI', 'Mali', 'ML'),
(147, 'MLT', 'Malta', 'MT'),
(148, 'MMR', 'Myanmar [Burma]', 'MM'),
(149, 'MNE', 'Montenegro', 'ME'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNP', 'Northern Mariana Islands', 'MP'),
(152, 'MOZ', 'Mozambique', 'MZ'),
(153, 'MRT', 'Mauritania', 'MR'),
(154, 'MSR', 'Montserrat', 'MS'),
(155, 'MTQ', 'Martinique', 'MQ'),
(156, 'MUS', 'Mauritius', 'MU'),
(157, 'MWI', 'Malawi', 'MW'),
(158, 'MYS', 'Malaysia', 'MY'),
(159, 'MYT', 'Mayotte', 'YT'),
(160, 'NAM', 'Namibia', 'NA'),
(161, 'NCL', 'New Caledonia', 'NC'),
(162, 'NER', 'Niger', 'NE'),
(163, 'NFK', 'Norfolk Island', 'NF'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIC', 'Nicaragua', 'NI'),
(166, 'NIU', 'Niue', 'NU'),
(167, 'NLD', 'Netherlands', 'NL'),
(168, 'NOR', 'Norway', 'NO'),
(169, 'NPL', 'Nepal', 'NP'),
(170, 'NRU', 'Nauru', 'NR'),
(171, 'NZL', 'New Zealand', 'NZ'),
(172, 'OMN', 'Oman', 'OM'),
(173, 'PAK', 'Pakistan', 'PK'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PCN', 'Pitcairn Islands', 'PN'),
(176, 'PER', 'Peru', 'PE'),
(177, 'PHL', 'Philippines', 'PH'),
(178, 'PLW', 'Palau', 'PW'),
(179, 'PNG', 'Papua New Guinea', 'PG'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRI', 'Puerto Rico', 'PR'),
(182, 'PRK', 'North Korea', 'KP'),
(183, 'PRT', 'Portugal', 'PT'),
(184, 'PRY', 'Paraguay', 'PY'),
(185, 'PSE', 'Palestine', 'PS'),
(186, 'PYF', 'French Polynesia', 'PF'),
(187, 'QAT', 'Qatar', 'QA'),
(188, 'REU', 'Réunion', 'RE'),
(189, 'ROU', 'Romania', 'RO'),
(190, 'RUS', 'Russia', 'RU'),
(191, 'RWA', 'Rwanda', 'RW'),
(192, 'SAU', 'Saudi Arabia', 'SA'),
(193, 'SDN', 'Sudan', 'SD'),
(194, 'SEN', 'Senegal', 'SN'),
(195, 'SGP', 'Singapore', 'SG'),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(197, 'SHN', 'Saint Helena', 'SH'),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(199, 'SLB', 'Solomon Islands', 'SB'),
(200, 'SLE', 'Sierra Leone', 'SL'),
(201, 'SLV', 'El Salvador', 'SV'),
(202, 'SMR', 'San Marino', 'SM'),
(203, 'SOM', 'Somalia', 'SO'),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(205, 'SRB', 'Serbia', 'RS'),
(206, 'SSD', 'South Sudan', 'SS'),
(207, 'STP', 'São Tomé and Príncipe', 'ST'),
(208, 'SUR', 'Suriname', 'SR'),
(209, 'SVK', 'Slovakia', 'SK'),
(210, 'SVN', 'Slovenia', 'SI'),
(211, 'SWE', 'Sweden', 'SE'),
(212, 'SWZ', 'Swaziland', 'SZ'),
(213, 'SXM', 'Sint Maarten', 'SX'),
(214, 'SYC', 'Seychelles', 'SC'),
(215, 'SYR', 'Syria', 'SY'),
(216, 'TCA', 'Turks and Caicos Islands', 'TC'),
(217, 'TCD', 'Chad', 'TD'),
(218, 'TGO', 'Togo', 'TG'),
(219, 'THA', 'Thailand', 'TH'),
(220, 'TJK', 'Tajikistan', 'TJ'),
(221, 'TKL', 'Tokelau', 'TK'),
(222, 'TKM', 'Turkmenistan', 'TM'),
(223, 'TLS', 'East Timor', 'TL'),
(224, 'TON', 'Tonga', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'TT'),
(226, 'TUN', 'Tunisia', 'TN'),
(227, 'TUR', 'Turkey', 'TR'),
(228, 'TUV', 'Tuvalu', 'TV'),
(229, 'TWN', 'Taiwan', 'TW'),
(230, 'TZA', 'Tanzania', 'TZ'),
(231, 'UGA', 'Uganda', 'UG'),
(232, 'UKR', 'Ukraine', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(234, 'URY', 'Uruguay', 'UY'),
(235, 'USA', 'United States', 'US'),
(236, 'UZB', 'Uzbekistan', 'UZ'),
(237, 'VAT', 'Vatican City', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(239, 'VEN', 'Venezuela', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'VI'),
(242, 'VNM', 'Vietnam', 'VN'),
(243, 'VUT', 'Vanuatu', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'WF'),
(245, 'WSM', 'Samoa', 'WS'),
(246, 'XKX', 'Kosovo', 'XK'),
(247, 'YEM', 'Yemen', 'YE'),
(248, 'ZAF', 'South Africa', 'ZA'),
(249, 'ZMB', 'Zambia', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `promocode` varchar(255) NOT NULL,
  `code_type` varchar(255) NOT NULL,
  `min_shopping` int(255) NOT NULL,
  `d_percent` int(255) DEFAULT NULL,
  `d_fvalue` int(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `slug`, `promocode`, `code_type`, `min_shopping`, `d_percent`, `d_fvalue`, `status`, `Created_at`, `Updated_at`) VALUES
(18, 'SPRINGSALE', 'spring-sale', 'SPRINGSALE10', 'percentage', 50, 10, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(19, 'SUMMERDEAL', 'summer-deal', 'SUMMER15', 'percentage', 75, 15, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(20, 'FALLSAVINGS', 'fall-savings', 'FALL20OFF', 'percentage', 100, 20, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(21, 'WINTERSALE', 'winter-sale', 'WINTER25', 'percentage', 120, 25, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(22, 'NEWCUSTOMER', 'new-customer', 'NEW20OFF', 'percentage', 30, 20, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(23, 'FREESHIP', 'free-ship', 'SHIPFREE', 'Fixed', 50, NULL, 5, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(24, 'BIGSAVINGS', 'big-savings', 'BIG10OFF', 'percentage', 200, 10, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(25, 'BUNDLEDEAL', 'bundle-deal', 'BUNDLE5', 'Fixed', 150, NULL, 10, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(26, 'WEEKENDSPECIAL', 'weekend-special', 'WEEKEND20', 'percentage', 50, 20, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(27, 'VIPSAVINGS', 'vip-savings', 'VIP15OFF', 'percentage', 100, 15, NULL, 1, '2024-03-06 08:41:34', '2024-03-06 08:41:34'),
(28, 'SPRINGSALE_11', 'spring-sale-11', 'SPRINGSALE11', 'percentage', 60, 11, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(29, 'SUMMERDEAL_12', 'summer-deal-12', 'SUMMER16', 'percentage', 85, 16, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(30, 'FALLSAVINGS_13', 'fall-savings-13', 'FALL21OFF', 'percentage', 110, 21, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(31, 'WINTERSALE_14', 'winter-sale-14', 'WINTER26', 'percentage', 130, 26, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(32, 'NEWCUSTOMER_15', 'new-customer-15', 'NEW21OFF', 'percentage', 35, 21, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(33, 'FREESHIP_16', 'free-ship-16', 'SHIPFREE', 'fixed', 60, NULL, 6, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(34, 'BIGSAVINGS_17', 'big-savings-17', 'BIG11OFF', 'percentage', 210, 11, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(35, 'BUNDLEDEAL_18', 'bundle-deal-18', 'BUNDLE6', 'fixed', 160, NULL, 11, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(36, 'WEEKENDSPECIAL_19', 'weekend-special-19', 'WEEKEND21', 'percentage', 60, 21, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(37, 'VIPSAVINGS_20', 'vip-savings-20', 'VIP16OFF', 'percentage', 110, 16, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(38, 'SPRINGSALE_21', 'spring-sale-21', 'SPRINGSALE12', 'percentage', 70, 12, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(39, 'SUMMERDEAL_22', 'summer-deal-22', 'SUMMER17', 'percentage', 95, 17, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(40, 'FALLSAVINGS_23', 'fall-savings-23', 'FALL22OFF', 'percentage', 120, 22, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(41, 'WINTERSALE_24', 'winter-sale-24', 'WINTER27', 'percentage', 140, 27, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(42, 'NEWCUSTOMER_25', 'new-customer-25', 'NEW22OFF', 'percentage', 40, 22, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(43, 'FREESHIP_26', 'free-ship-26', 'SHIPFREE', 'fixed', 70, NULL, 7, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(44, 'BIGSAVINGS_27', 'big-savings-27', 'BIG12OFF', 'percentage', 220, 12, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(45, 'BUNDLEDEAL_28', 'bundle-deal-28', 'BUNDLE7', 'fixed', 170, NULL, 12, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(46, 'WEEKENDSPECIAL_29', 'weekend-special-29', 'WEEKEND22', 'percentage', 70, 22, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(47, 'VIPSAVINGS_30', 'vip-savings-30', 'VIP17OFF', 'percentage', 120, 17, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(48, 'SPRINGSALE_31', 'spring-sale-31', 'SPRINGSALE13', 'percentage', 80, 13, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(49, 'SUMMERDEAL_32', 'summer-deal-32', 'SUMMER18', 'percentage', 105, 18, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(50, 'FALLSAVINGS_33', 'fall-savings-33', 'FALL23OFF', 'percentage', 130, 23, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(51, 'WINTERSALE_34', 'winter-sale-34', 'WINTER28', 'percentage', 150, 28, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(52, 'NEWCUSTOMER_35', 'new-customer-35', 'NEW23OFF', 'percentage', 45, 23, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(53, 'FREESHIP_36', 'free-ship-36', 'SHIPFREE', 'fixed', 80, NULL, 8, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(54, 'BIGSAVINGS_37', 'big-savings-37', 'BIG13OFF', 'percentage', 230, 13, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(55, 'BUNDLEDEAL_38', 'bundle-deal-38', 'BUNDLE8', 'fixed', 180, NULL, 13, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(56, 'WEEKENDSPECIAL_39', 'weekend-special-39', 'WEEKEND23', 'percentage', 80, 23, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(57, 'VIPSAVINGS_40', 'vip-savings-40', 'VIP18OFF', 'percentage', 130, 18, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(58, 'SPRINGSALE_41', 'spring-sale-41', 'SPRINGSALE14', 'percentage', 90, 14, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(59, 'SUMMERDEAL_42', 'summer-deal-42', 'SUMMER19', 'percentage', 115, 19, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(60, 'FALLSAVINGS_43', 'fall-savings-43', 'FALL24OFF', 'percentage', 140, 24, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(61, 'WINTERSALE_44', 'winter-sale-44', 'WINTER29', 'percentage', 160, 29, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(62, 'NEWCUSTOMER_45', 'new-customer-45', 'NEW24OFF', 'percentage', 50, 24, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(63, 'FREESHIP_46', 'free-ship-46', 'SHIPFREE', 'fixed', 90, NULL, 9, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(64, 'BIGSAVINGS_47', 'big-savings-47', 'BIG14OFF', 'percentage', 240, 14, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(65, 'BUNDLEDEAL_48', 'bundle-deal-48', 'BUNDLE9', 'fixed', 190, NULL, 14, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(66, 'WEEKENDSPECIAL_49', 'weekend-special-49', 'WEEKEND24', 'percentage', 90, 24, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(67, 'VIPSAVINGS_50', 'vip-savings-50', 'VIP19OFF', 'percentage', 140, 19, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(68, 'SPRINGSALE_51', 'spring-sale-51', 'SPRINGSALE15', 'percentage', 100, 15, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(69, 'SUMMERDEAL_52', 'summer-deal-52', 'SUMMER20', 'percentage', 125, 20, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(70, 'FALLSAVINGS_53', 'fall-savings-53', 'FALL25OFF', 'percentage', 150, 25, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(71, 'WINTERSALE_54', 'winter-sale-54', 'WINTER30', 'percentage', 170, 30, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(72, 'NEWCUSTOMER_55', 'new-customer-55', 'NEW25OFF', 'percentage', 55, 25, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(73, 'FREESHIP_56', 'free-ship-56', 'SHIPFREE', 'fixed', 100, NULL, 10, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(74, 'BIGSAVINGS_57', 'big-savings-57', 'BIG15OFF', 'percentage', 250, 15, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(75, 'BUNDLEDEAL_58', 'bundle-deal-58', 'BUNDLE10', 'fixed', 200, NULL, 15, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(76, 'WEEKENDSPECIAL_59', 'weekend-special-59', 'WEEKEND25', 'percentage', 100, 25, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10'),
(77, 'VIPSAVINGS_60', 'vip-savings-60', 'VIP20OFF', 'percentage', 150, 20, NULL, 1, '2024-03-06 09:31:10', '2024-03-06 09:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealsbanners`
--

CREATE TABLE `dealsbanners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imageOne` text NOT NULL,
  `imageTwo` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealsbanners`
--

INSERT INTO `dealsbanners` (`id`, `name`, `imageOne`, `imageTwo`, `updated_at`, `created_at`) VALUES
(1, 'DealsAdsBanner', '/bannerImage/1709448969img.jpg', '/bannerImage/1709234862.jpg', '2024-03-03 00:56:09', '2024-02-29 19:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Research and development', 1, 1, '2023-07-15 21:33:10'),
(2, 'Operations', 1, 1, '2023-07-15 21:33:24'),
(3, 'fhfghfghfgh1111', 1, 1, '2023-07-16 09:57:04'),
(4, 'Marketing and sales', 1, 1, '2023-07-16 09:57:51'),
(5, 'Human resources', 1, 1, '2023-07-16 09:57:58'),
(6, 'Customer service', 1, 1, '2023-07-16 09:58:07'),
(7, 'Accounting and finance', 1, 1, '2023-07-16 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Chairman', 1, 1, '2023-07-15 21:56:25'),
(2, 'Director', 1, 1, '2023-07-15 22:01:20'),
(3, 'Managing Director', 1, 1, '2023-07-16 09:54:43'),
(4, 'Chief Executive Officer (CEO)', 1, 1, '2023-07-16 09:54:51'),
(5, 'Chief Financial Officer (CFO)', 1, 1, '2023-07-16 09:55:05'),
(6, 'Secretary', 1, 1, '2023-07-16 09:55:12'),
(7, 'Chief Operating Officer (COO)', 1, 1, '2023-07-16 09:55:23'),
(8, 'Chief Technology Officer (CTO)', 1, 1, '2023-07-16 09:55:30'),
(9, 'Vice President', 1, 1, '2023-07-16 09:55:37'),
(10, 'Manager', 1, 1, '2023-07-16 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 8, 4, 'Employee-1', 'bijon@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-001', NULL, NULL, NULL, NULL, NULL, NULL, 'CONTRACTUAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-16 11:11:49', 1),
(2, 4, 5, 'Ibraheem', 'Ibraheem@gmail.com', '2', '1', 'Dhaka , Bangladesh', 50000.00, '112233456', '2023-07-28', '2023-07-27', '/backend/files/0HjRR3tDHvFgdwr00NAB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-002', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', NULL, '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:12:51', 0),
(3, 8, 4, 'Raheem', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:11:49', 0),
(4, 6, 6, 'Employee-3', 'we2022@gmail.com', '444', '1', '333', 34343.00, '343434', '2023-08-08', '2023-08-08', '/backend/files/ESzCAGIDj20ZJNLXthmy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-004', 'Md.', 'Gazi', 'Uddin', '343434', 'Married', 8, 'CONTRACTUAL', '2023-08-29', '2023-08-17', '2023-08-18', 'fdg', 'dfg', 'dfg', 'dfg', 'dfg', 'dfgdfgdfg', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', NULL, 'null', 'null', 'null', 'null', 1, '2023-08-08 09:55:34', 0),
(5, 3, 4, 'Employee-4', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'df1111', 'sdff1111', 'sdff1111', 'dsff1111', 'Single', 4, 'SUSPEND', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 11:10:11', 1),
(6, 7, 6, 'Employee6 Six Emp', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Employee6', 'Six', 'Emp', 'sdfsdf', 'Widow', 10, 'SUSPEND', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-08-15 21:39:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE `employee_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL COMMENT 'primary key of employee table',
  `title` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`id`, `emp_id`, `title`, `note`, `doc_name`, `doc`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Title-1', 'Note', NULL, '/backend/files/0LtHc43MXnbUgWIXk2KX.sql', 1, 1, '2023-07-13 04:41:50', '2023-07-28 04:42:07'),
(2, 1, 'Documents of bijon', 'Documents of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijon', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:33:22', '2023-07-28 04:33:22'),
(3, 3, 'Raheem122', 'RaheemRaheemRaheem', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:45:56', '2023-07-28 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_holidays`
--

CREATE TABLE `employee_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'PK Of employees table',
  `holiday` varchar(255) NOT NULL,
  `used_holiday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_holidays`
--

INSERT INTO `employee_holidays` (`id`, `employee_id`, `holiday`, `used_holiday`, `created_at`, `updated_at`) VALUES
(1, 80, '28', 0, '2023-07-21 11:42:56', '2023-07-21 11:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_request`
--

CREATE TABLE `employee_leave_request` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=pending,\r\n1=Approved 2=Reject. 	',
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave_request`
--

INSERT INTO `employee_leave_request` (`id`, `employe_id`, `leave_type_id`, `frm_date`, `to_date`, `date_of_application`, `no_of_leave`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 15:06:15'),
(2, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '200', 1, 'xddd', '2023-09-02 19:43:31', '2023-09-03 13:47:43'),
(3, 3, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(4, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(5, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(6, 5, 2, '2023-09-04', '2023-09-21', '2023-09-03', '44', 0, 'kk', '2023-09-03 13:35:14', '2023-09-03 13:35:14'),
(7, 5, 4, '2023-09-01', '2023-09-28', '2023-09-03', '27', 0, 'ddd', '2023-09-03 13:57:44', '2023-09-03 13:58:37'),
(8, 5, 2, '2023-09-01', '2023-09-02', '2023-09-03', '1', 0, NULL, '2023-09-03 13:58:05', '2023-09-03 13:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'FULL TIME', 1, 1),
(2, 'CONTRACTUAL', 1, 1),
(3, 'SUSPEND', 1, 1),
(4, 'PART TIME', 1, 1),
(5, 'LEFT', 1, 1);

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
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', 1, NULL, NULL),
(2, 'Good Friday', 1, NULL, NULL),
(3, 'Early May Bank Holiday', 1, NULL, NULL),
(4, 'Spring Bank Holiday', 1, NULL, NULL),
(5, 'Christmas Day', 1, NULL, NULL),
(6, 'Boxing Day', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_product_slider_category`
--

CREATE TABLE `home_product_slider_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_product_slider_category`
--

INSERT INTO `home_product_slider_category` (`id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(32, 31, 1, '2024-03-06 15:48:02', '2024-03-06 15:48:02'),
(33, 30, 1, '2024-03-06 16:02:42', '2024-03-06 16:02:42'),
(34, 25, 1, '2024-03-07 05:48:37', '2024-03-07 05:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `leave_allocation`
--

CREATE TABLE `leave_allocation` (
  `id` int(11) NOT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `maximum_no_annual` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_in_hand` varchar(255) DEFAULT NULL,
  `effective_year` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_allocation`
--

INSERT INTO `leave_allocation` (`id`, `employee_type`, `employe_id`, `year`, `maximum_no_annual`, `leave_type`, `leave_in_hand`, `effective_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FULL TIME', 6, '2024', '265', 'Unauthorised Absence', '65', '22222222222', 1, '2023-08-30 17:47:18', '2023-08-31 03:27:51'),
(2, 'FULL TIME', 6, '2021', '265', 'Unauthorised Absence', '5', '2021', 1, '2023-08-30 17:47:18', '2023-08-30 17:47:18'),
(3, 'FULL TIME', 6, '2026', '265', 'Unauthorised Absence', '70', '2022', 1, '2023-08-30 18:12:00', '2023-08-30 18:12:00'),
(4, 'FULL TIME', 5, '2021', '265', 'Unauthorised Absence', '10', '2022', 1, '2023-08-31 03:34:26', '2023-08-31 03:34:26'),
(5, 'FULL TIME', 5, '2023', '265', 'Unauthorised Absence', '5', '2023', 1, '2023-08-31 03:35:16', '2023-08-31 03:35:16'),
(7, 'LEFT', 3, '2026', '150', 'Unauthorised Absence', '5', '2026', 1, '2023-08-31 03:48:27', '2023-08-31 03:48:27'),
(8, 'LEFT', 3, '2024', '150', 'Unauthorised Absence', '145', '2014', 1, '2023-08-31 03:48:59', '2023-08-31 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = Casual Leave, 2 = Medical Leave',
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `previous_start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `previous_end_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `dp_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Approved, 3 = Declined',
  `dp_approved_by` tinyint(4) DEFAULT NULL,
  `dp_approved_date` date DEFAULT NULL,
  `hr_status` tinyint(4) DEFAULT NULL,
  `hr_approved_by` tinyint(4) DEFAULT NULL,
  `hr_approved_date` date DEFAULT NULL,
  `application_date_changed_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_list`
--

CREATE TABLE `leave_list` (
  `id` int(11) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `no_of_days` varchar(255) DEFAULT NULL,
  `holiday_description` varchar(255) DEFAULT NULL,
  `holiday_type_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_list`
--

INSERT INTO `leave_list` (`id`, `day`, `frm_date`, `to_date`, `no_of_days`, `holiday_description`, `holiday_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Friday', '2023-08-03', '2023-08-31', '434', 'Description-1', 3, 1, '2023-08-30 05:57:54', '2023-08-30 06:54:51'),
(2, 'thrusday', '2023-08-30', '2023-09-27', '3', 'Description-2', 3, 1, '2023-08-30 05:59:11', '2023-08-30 05:59:11'),
(3, 'tuesday', '2023-08-24', '2023-08-31', '33', 'Description-3', 5, 1, '2023-08-30 06:07:15', '2023-08-30 06:07:15'),
(4, 'sunday', '2023-08-24', '2023-08-31', '333', 'Description-4', 4, 1, '2023-08-30 06:08:00', '2023-08-30 06:08:00'),
(5, 'monday', '2023-08-01', '2023-08-17', '16', 'Description-5', 3, 1, '2023-08-30 06:20:10', '2023-08-30 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `leave_rule`
--

CREATE TABLE `leave_rule` (
  `id` int(11) NOT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `maximum_no_annual` varchar(150) DEFAULT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_rule`
--

INSERT INTO `leave_rule` (`id`, `employee_type_id`, `leave_type_id`, `maximum_no_annual`, `effective_from`, `effective_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '265', '2023-01-01', '2023-12-31', 2, '2023-08-30 13:01:21', '2023-09-02 15:05:11'),
(2, 2, 7, '160', '2023-01-01', '2023-12-31', 1, '2023-08-30 13:02:06', '2023-08-30 16:40:26'),
(3, 5, 1, '150', '2024-01-01', '2024-12-31', 1, '2023-08-31 03:48:09', '2023-08-31 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Unauthorised Absence', 'U', 1, '2023-08-30 11:37:29', '2023-08-30 11:51:33'),
(2, 'Paternity Leave', 'PT', 1, '2023-08-30 11:39:39', '2023-08-30 11:51:40'),
(3, 'Holiday', 'H', 1, '2023-08-30 11:51:54', '2023-08-30 11:51:54'),
(4, 'Parental Leave', 'PL', 1, '2023-08-30 11:52:06', '2023-08-30 11:52:06'),
(5, 'Public Duties', 'P', 1, '2023-08-30 11:52:17', '2023-08-30 11:52:17'),
(6, 'Maternity Leave', 'M', 1, '2023-08-30 11:52:28', '2023-08-30 11:52:28'),
(7, 'Jury Service', 'J', 1, '2023-08-30 11:52:41', '2023-08-30 11:52:41'),
(8, 'Bereavement Leave', 'B', 1, '2023-08-30 11:52:50', '2023-08-30 11:52:50'),
(9, 'Antenatal', 'AN', 1, '2023-08-30 11:53:01', '2023-08-30 11:53:01'),
(10, 'Adoption Leave', 'AL', 1, '2023-08-30 11:53:11', '2023-08-30 11:53:11'),
(11, 'Authorised Absence', 'A', 1, '2023-08-30 11:53:25', '2023-08-30 11:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT 'Order Placed=1,Payment Processing=2,Order Confirmed=3,Item Shipped=4,In Transit=5,Out for Delivery=6,Delivered=7,Order Completed=8,Cancelled or Returned=9',
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone_number` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `shipper_name` varchar(255) DEFAULT NULL,
  `shipper_email` varchar(255) DEFAULT NULL,
  `shipper_phone_number` varchar(255) DEFAULT NULL,
  `shipper_address` varchar(255) DEFAULT NULL,
  `shipper_country` varchar(255) DEFAULT NULL,
  `shipper_city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `total`, `subtotal`, `order_status`, `billing_name`, `billing_email`, `billing_phone_number`, `billing_address`, `billing_country`, `billing_city`, `shipper_name`, `shipper_email`, `shipper_phone_number`, `shipper_address`, `shipper_country`, `shipper_city`, `created_at`, `updated_at`) VALUES
(1, '294250-24', 2, 4685.00, 4685.00, 7, 'roman', 'roman@gmail.com', '01815728983', 'Mirpur-1, Govt, Bangla College D-type Quater', 'Bangladesh', 'Dhaka', 'roman', 'roman@gmail.com', '01815728983', 'Mirpur-1, Govt, Bangla College D-type Quater', 'Bangladesh', 'City', '2024-02-06 11:38:29', '2024-03-07 13:47:02'),
(2, '215860-24', 2, 1700.00, 1700.00, 7, 'roman', 'roman@gmail.com', '01815728983', 'Dhaka, Bangladesh', 'Bangladesh', 'Dhaka', 'roman', 'roman@gmail.com', '01815728983', 'Dhaka, Bangladesh', 'Bangladesh', 'Dhaka', '2024-02-06 13:13:47', '2024-02-06 19:17:28'),
(3, '550717-24', 5, 200.00, 200.00, 1, 'pronay', 'pronay@mail.com', '111', '017600750', 'jaskldfasdf', 'sadfasd', 'pronay', 'pronay@mail.com', '111', '017600750', 'jaskldfasdf', 'sadfasd', '2024-02-24 07:37:55', '2024-02-24 13:37:55'),
(4, '588445-24', 5, 60832.00, 60832.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '2024-03-07 07:46:26', '2024-03-07 13:46:26'),
(5, '598143-24', 5, 50000.00, 50000.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:11:11', '2024-03-07 14:11:11'),
(6, '594215-24', 5, 4600.00, 4600.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:12:53', '2024-03-07 14:12:53'),
(7, '535208-24', 5, 10000.00, 10000.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:14:26', '2024-03-07 14:14:26'),
(8, '579964-24', 5, 537.00, 537.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:15:19', '2024-03-07 14:15:19'),
(9, '570040-24', 5, 118.00, 118.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:16:25', '2024-03-07 14:16:25'),
(10, '525292-24', 5, 221.00, 221.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:17:13', '2024-03-07 14:17:13'),
(11, '558796-24', 5, 13359.00, 13359.00, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:18:16', '2024-03-07 14:18:16'),
(12, '516150-24', 5, 2400.70, 2400.70, 1, 'pronay', 'pronay@mail.com', '111', 'pronay@mail.com', 'pronay@mail.com', 'pronay@mail.com', '', '', '', '', '', '', '2024-03-07 08:22:10', '2024-03-07 14:22:10'),
(13, '140372-24', 1, 1010000.00, 1010000.00, 1, 'admin', 'admin@gmail.com', '01815728982', '01815728982', '01815728982', '01815728982', '', '', '', '', '', '', '2024-03-07 08:31:30', '2024-03-07 14:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `product_id`, `seller_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 68, 1, 4500, 4500.00, '2024-02-06 17:38:29', '2024-02-06 11:38:29'),
(2, 1, 187, 66, 1, 100, 4600.00, '2024-02-06 17:38:29', '2024-02-06 11:38:29'),
(3, 1, 190, 66, 1, 75, 4675.00, '2024-02-06 17:38:29', '2024-02-06 11:38:29'),
(4, 1, 160, 66, 1, 10, 4685.00, '2024-02-06 17:38:29', '2024-02-06 11:38:29'),
(5, 2, 132, 4, 5, 340, 1700.00, '2024-02-06 19:13:47', '2024-02-06 13:13:47'),
(6, 3, 187, 4, 2, 100, 200.00, '2024-02-24 13:37:55', '2024-02-24 07:37:55'),
(7, 4, 202, 1, 2, 10000, 20000.00, '2024-03-07 13:46:26', '2024-03-07 07:46:26'),
(8, 4, 200, 68, 1, 4500, 24500.00, '2024-03-07 13:46:26', '2024-03-07 07:46:26'),
(9, 4, 199, 4, 1, 36332, 60832.00, '2024-03-07 13:46:26', '2024-03-07 07:46:26'),
(10, 5, 10, NULL, 10, 5000, 50000.00, '2024-03-07 14:11:11', '2024-03-07 08:11:11'),
(11, 6, 15, NULL, 100, 46, 4600.00, '2024-03-07 14:12:53', '2024-03-07 08:12:53'),
(12, 7, 7, NULL, 1, 5000, 5000.00, '2024-03-07 14:14:26', '2024-03-07 08:14:26'),
(13, 7, 10, NULL, 1, 5000, 10000.00, '2024-03-07 14:14:26', '2024-03-07 08:14:26'),
(14, 8, 16, NULL, 3, 179, 537.00, '2024-03-07 14:15:19', '2024-03-07 08:15:19'),
(15, 9, 174, 4, 1, 118, 118.00, '2024-03-07 14:16:25', '2024-03-07 08:16:25'),
(16, 10, 174, 4, 1, 118, 118.00, '2024-03-07 14:17:13', '2024-03-07 08:17:13'),
(17, 10, 113, NULL, 1, 103, 221.00, '2024-03-07 14:17:13', '2024-03-07 08:17:13'),
(18, 11, 174, 4, 1, 118, 118.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(19, 11, 113, NULL, 1, 103, 221.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(20, 11, 130, 4, 1, 507, 728.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(21, 11, 52, NULL, 1, 6654, 7382.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(22, 11, 57, NULL, 1, 75, 7457.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(23, 11, 13, NULL, 1, 49, 7506.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(24, 11, 35, NULL, 1, 4499, 12005.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(25, 11, 59, NULL, 1, 120, 12125.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(26, 11, 66, NULL, 1, 1234, 13359.00, '2024-03-07 14:18:16', '2024-03-07 08:18:16'),
(27, 12, 27, NULL, 1, 24.7, 24.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(28, 12, 68, NULL, 1, 632, 656.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(29, 12, 31, NULL, 1, 798, 1454.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(30, 12, 19, NULL, 1, 106, 1560.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(31, 12, 62, NULL, 1, 500, 2060.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(32, 12, 132, 4, 1, 340, 2400.70, '2024-03-07 14:22:10', '2024-03-07 08:22:10'),
(33, 13, 202, 1, 101, 10000, 1010000.00, '2024-03-07 14:31:30', '2024-03-07 08:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Order Placed', 'Upon successful checkout, the system records the order details and assigns a unique order ID.', '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'Payment Processing', 'After ordering, the system verifies payment info. Successful payments move to processing.', '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Order Confirmed', 'Payment processed, order confirmed. System notifies customer and vendors. Vendors prep items for shipment.', '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Item Shipped', 'Vendor ships, order status: \"Shipped.\" Customer gets confirmation and tracking.', '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'In Transit', 'Order in transit; customers track shipment with provided details.', '2023-12-04 11:15:23', '2023-12-04 05:57:14'),
(6, 'Out for Delivery', '\"Out for Delivery\" status means the package is en route and will be delivered soon, notifying the customer.', '2023-12-04 11:15:23', '2023-12-04 05:57:42'),
(7, 'Delivered', '\"Delivered\" means items received. System captures delivery confirmation, including date and time.', '2023-12-04 11:15:23', '2023-12-04 05:58:19'),
(8, 'Order Completed', '\"Completed\" status: delivery confirmed, order process concluded.', '2023-12-04 11:15:23', '2023-12-04 05:58:53'),
(9, 'Cancelled or Returned', 'Order status adapts to customer actions. \"Cancelled\" for cancellations, \"Returned\" for returns.', '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Payment_type',
  `working_hour` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`, `working_hour`, `rate`, `status`, `entry_by`) VALUES
(1, 'Bank', '120', 100.00, 1, 1),
(2, 'Bank', '12', 15.00, 1, 1),
(3, 'Bank', '12', 30.00, 1, 1),
(4, 'Crypto', '6', 40.00, 1, 1),
(5, 'Crypto', '120', 100.00, 1, 1),
(6, 'TT', '33', 3333.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_item`
--

CREATE TABLE `payroll_pay_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Head',
  `in_percent` varchar(255) DEFAULT NULL,
  `in_rupees` varchar(255) DEFAULT NULL,
  `min_value` varchar(255) DEFAULT NULL,
  `max_value` varchar(255) DEFAULT NULL,
  `effective_frm` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_pay_item`
--

INSERT INTO `payroll_pay_item` (`id`, `name`, `in_percent`, `in_rupees`, `min_value`, `max_value`, `effective_frm`, `effective_to`, `status`, `entry_by`) VALUES
(1, 'Test', '5', 'Yes', '15', '254', '2023-08-27', '2023-08-27', 1, 1),
(2, '213333', 'sdfsdf', '34', '33', '33', '2023-08-24', '2023-08-31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay_group`
--

CREATE TABLE `pay_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_group`
--

INSERT INTO `pay_group` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Administrative Staff', 1, 1),
(2, 'Technical Team', 1, 1),
(3, 'Sales Team', 1, 1),
(4, 'Customer Service', 1, 1),
(5, 'Management', 1, 1),
(6, 'Production Workers', 1, 1),
(7, 'Finance and Accounting', 1, 1),
(8, 'Marketing and Communications', 1, 1),
(9, 'Research and Development (R&D)', 1, 1),
(10, 'Operations and Logistics', 1, 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(1, 'dfgdfg', 'dd'),
(2, '1.95', 'ssdf'),
(3, 'sdfsdfsdf', 'ss'),
(4, 'zxc', 'pop'),
(5, 'Beef tozo', 'l;;l;'),
(6, 'xcv', 'xcvxcv');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `product_tag` varchar(255) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `discount_status` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `free_shopping` int(11) DEFAULT NULL,
  `flat_rate_status` int(11) DEFAULT NULL,
  `flat_rate_price` double(10,5) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_status` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_status` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Product-1', 'Product-1', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 510, '1', 100, 1, 1, 0, '.com', 10.00, 2, 5, 1, 1, 10.00000, '5', 2, '5', 2, '/backend/files/SgvT7owvHPmGEbQfXUgQ.jpg', 1, 1, NULL, NULL),
(2, 2, 'Product-22', 'Product-22', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '<span class=\"hgKElc\">Bright, bubbly and a popular favourite, Fanta Orange is <b>a soft drink with a tingly, fruity taste</b>. First introduced in 1940, Fanta is the second oldest brand of The Coca‑Cola Company.</span>', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 545.1, '1', 0, 1, 1, 0, '.com', 10.00, 1, 5, 1, 1, 10.00000, '5', 2, '5', 2, '/backend/files/ZRL36AurH5wo64L81d0y.jpg', 1, 1, NULL, NULL),
(3, NULL, 'Product-2', 'Product-2', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 10.1, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/mRfohAXUK3ffuFT6qWlo.jpg', 1, 1, NULL, NULL),
(4, NULL, 'Product-3', 'Product-3', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 2000, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/nhuZDJpD7bdEDp1fthuG.jpg', 1, 1, NULL, NULL),
(5, NULL, 'Product-4', 'Product-4', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 5000, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/t4Lr8DHZaAmO8Wt2uANA.jpg', 1, 1, NULL, NULL),
(6, NULL, 'Product-5', 'Product-5', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 15000, '1', 100, 1, 1, 0, '.com', 15.00, 2, 5, 1, 1, 10.00000, '5', 2, '5', 2, '/backend/files/oQzmxgfTGc5QKv7RknqG.jpg', 1, 1, NULL, NULL),
(7, NULL, 'Product-6', 'Product-6', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 5000, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/hJCRL4Op2AywTPWYjkiS.jpg', 1, 1, NULL, NULL),
(8, NULL, 'Product-7', 'Product-7', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 5000, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/bQdTTyXDhyhhszC6W22G.jpg', 1, 1, NULL, NULL),
(9, NULL, 'Samsung Galaxy A14 LTE, 64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'samsung-galaxy-a14-lte-64gb-storage-4gb-ram-black-uae-version-dual-sim-android-smartphone-9', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 5000, '1', 100, 1, 1, 0, '.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/asm8mIF3TRaLuMLO1ILp.jpg', 1, 1, NULL, NULL),
(10, NULL, 'P-10 Samsung Galaxy A14 LTE ', 'product-10-samsung-galaxy-a14-lte-64gb-storage-105gb', '<ul><li><span style=\"color:rgb(15,17,17);\">Professional screen protector application by a Pro at your house.</span></li><li><span style=\"color:rgb(15,17,17);\">Cost of screen protector(s) is included in the service</span></li><li><span style=\"color:rgb(15,17,17);\">Wiping of your phone using a cleaning solution to remove existing dust particles on the screen</span></li><li><span style=\"color:rgb(15,17,17);\">Dust &amp; bubble free application of the screen protector</span></li><li><span style=\"color:rgb(15,17,17);\">To customize the Screen Protector or Service- please click the details option</span></li></ul><p><a href=\"javascript:void(0)\">See less</a></p><p>&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Stand out. Be colorful. Be you. A stylish minimalist design meets pops of color in Galaxy A14 LTE.</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple ways to capture your world with Triple-lens Camera.</span></li><li><span style=\"color:rgb(15,17,17);\">Life\'s dear moments, captured and saved. Galaxy A14 LTE is for all your favorite moments. The 50MP Main camera captures magnificent landscape photos, Depth camera adds stunning dimensions, Macro camera gets fine details, and Front camera takes fabulous selfies.</span></li></ul>', '', 'Samsung A14 LTE', '64GB Storage, 4GB RAM, Black, UAE Version, Dual SIM, Android Smartphone', 'Android Samsung A Series phone', 'Sell,fastsell,cheapprice', 0, NULL, '.com', 2, 5000, '1', 100, 1, 1, 0, '.com', 0.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 2, '/backend/files/DNnYeVVyes642DbJzEFj.jpg', 1, 1, NULL, NULL),
(11, 4, 'HP Spectre x360 2 in 1 Laptop 16-f2004ne,16\" UHD+ touch screen, 13th Gen Intel Evo Platform, 16GB RAM, 1TB SSD, 4GB Intel Arc A370M Graphics, Windows 11 Home, En -Ar KB, Nightfall black [7Q7A1EA]', 'hp-spectre-x360-2-in-1-laptop-16-f2004ne-16-uhd-touch-screen-13th-gen-intel-evo-platform-16gb-ram-1tb-ssd-4gb-intel-arc-a370m-graphics-windows-11-home-en--ar-kb-nightfall-black-7q7a1ea-', '<ul><li><span style=\"color:rgb(15,17,17);\">The HP Spectre x360 Laptop is powered by an Intel Core 13th Generation Processor designed on Intel Evo Platform that adapts to you for superior multi-tasking. With a taller display, you can view more content with less scrolling</span></li><li><span style=\"color:rgb(15,17,17);\">One of HP’s best 2-in-1 laptops for looking and feeling your best, and keeping productive with intelligent features like Auto Frame, a powerful Intel Processor and screen time and distance reminders</span></li><li><span style=\"color:rgb(15,17,17);\">With its smart features and long lasting battery, the HP Spectre x360 16 inch 2-in-1 Laptop PC is powerful enough to handle your whole day</span></li><li><span style=\"color:rgb(15,17,17);\">A new level of graphics performance and crisp, stunning visuals – with the convenience of a thin &amp; light laptop.</span></li><li><span style=\"color:rgb(15,17,17);\">With display technology that lights each pixel separately, you\'ll get deeper blacks for richer contrast, enhanced color depth, and more power efficiency than traditional LED screens</span></li></ul>', '', 'HP Spectre x360 2 in 1 Laptop 16-f2004ne,16\" UHD+ touch screen, 13th Gen Intel Evo Platform, 16GB RAM, 1TB SSD, 4GB Intel Arc A370M Graphics, Windows 11 Home, En -Ar KB, Nightfall black [7Q7A1EA]', 'HP Spectre x360 2 in 1 Laptop 16-f2004ne,16\" UHD+ touch screen, 13th Gen Intel Evo Platform, 16GB RAM, 1TB SSD, 4GB Intel Arc A370M Graphics, Windows 11 Home, En -Ar KB, Nightfall black [7Q7A1EA]', 'HP Spectre x360 2 in 1 Laptop 16-f2004ne,16\" UHD+ touch screen, 13th Gen Intel Evo Platform, 16GB RAM, 1TB SSD, 4GB Intel Arc A370M Graphics, Windows 11 Home, En -Ar KB, Nightfall black [7Q7A1EA]', 'Hp,laptop,16gbram,1tbrom,windows11,cheapprice,blackcolour,touchscreen', 0, NULL, 'abc.com', 2, 7149, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 20.00000, '5', 2, '5', 1, '/backend/files/c6LmKrJ9BF4ykwn84TuQ.jpg', 1, 1, NULL, NULL),
(12, 4, 'Apple 2021 iPad Pro (11-inch, Wi-Fi + Cellular, 2TB) - Space Grey (3rd Generation)', 'apple-2021-ipad-pro-11-inch-wi-fi-cellular-2tb---space-grey-3rd-generation-', '<ul><li><span style=\"color:rgb(15,17,17);\">Apple M1 chip for next-level performance</span></li><li><span style=\"color:rgb(15,17,17);\">Stunning 11-inch Liquid Retina display with ProMotion, True Tone, and P3 wide color</span></li><li><span style=\"color:rgb(15,17,17);\">TrueDepth camera system featuring Ultra Wide front camera with Center Stage</span></li><li><span style=\"color:rgb(15,17,17);\">12MP Wide camera, 10MP Ultra Wide camera, and LiDAR Scanner for immersive AR</span></li><li><span style=\"color:rgb(15,17,17);\">5G for superfast downloads and high-quality streaming</span></li></ul>', '', 'Apple 2021 iPad Pro (11-inch, Wi-Fi + Cellular, 2TB) - Space Grey (3rd Generation)', 'Apple 2021 iPad Pro (11-inch, Wi-Fi + Cellular, 2TB) - Space Grey (3rd Generation)', 'Apple 2021 iPad Pro (11-inch, Wi-Fi + Cellular, 2TB) - Space Grey (3rd Generation)', 'Apple,ipad,ipadpro,spacegrey,3rdgeneration', 0, NULL, 'abc.com', 2, 8299, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/MqjLzf3HEQPbfoi8upCa.jpg', 1, 1, NULL, NULL),
(13, NULL, 'KOTION G2000 Gaming Headphone Headset Stereo Bass Over-ear Headband Mic PC Blue', 'kotion-g2000-gaming-headphone-headset-stereo-bass-over-ear-headband-mic-pc-blue', '<ul><li><span style=\"color:rgb(15,17,17);\">1. High precision 50mm magnetic neodymium driver, bring you vivid sound field, sound clarity, sound shock feeling, capable of various games.</span></li><li><span style=\"color:rgb(15,17,17);\">2. Splendid ambient noise isolation; Earmuffs used with skin-friendly leather material, and super soft Over-ear pads that is more comfortable for long time wear.</span></li><li><span style=\"color:rgb(15,17,17);\">3. Glaring LED lights are designed on the earcups and microphone, highlighting the atmosphere of the game</span></li><li><span style=\"color:rgb(15,17,17);\">4. Braided wire, durable tensile effectively reduce the external resistance; Velcro cable tie, prevent the line twining.</span></li><li><span style=\"color:rgb(15,17,17);\">5. Line is equipped with a rotary volume controller, one key Mic mute, more convenient to use; Exquisite craftsmanship and fashion appearance; Professional gaming headset for your choice. NOT SUPPORT PS4 PS3 XBOX360.</span></li></ul>', '', 'KOTION G2000 Gaming Headphone Headset Stereo Bass Over-ear Headband Mic PC Blue', 'KOTION G2000 Gaming Headphone Headset Stereo Bass Over-ear Headband Mic PC Blue', 'KOTION G2000 Gaming Headphone Headset Stereo Bass Over-ear Headband Mic PC Blue', 'Kotiong2000,gamingheadphone,headsetstereo,bassoverear', 0, NULL, 'abc.com', 2, 49, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/8h2EmB7N5ns0oltBST5o.jpg', 1, 1, NULL, NULL),
(14, NULL, 'Cooker, Rice Cooker, Steamer, Sauté Pot, Yogurt Maker & More, 12 Smart Programs With New Smart Lid, 2 Years Warranty', 'cooker-rice-cooker-steamer-saut-pot-yogurt-maker-more-12-smart-programs-with-new-smart-lid-2-years-warranty', '<ul><li><span style=\"color:rgb(15,17,17);\">9 appliances in 1. Our smart pot is a pressure cooker, sauté pot, slow cooker, rice cooker, steamer, sous vide pot, soup maker, yogurt maker, and food warmer all-in-one</span></li><li><span style=\"color:rgb(15,17,17);\">Nutrition in no time. did you know most food in the smart pot can be made 70percent faster than making it in the usual way? now you can fit healthful nutrition in your busy day</span></li><li><span style=\"color:rgb(15,17,17);\">Smart lid. our smart lid seals automatically and releases pressure with a touch of a button</span></li><li><span style=\"color:rgb(15,17,17);\">Cook-at-a-touch. with one-touch presets for your favourite food, there’s no pressure to figure out timings or temperatures</span></li><li><span style=\"color:rgb(15,17,17);\">A clear advantage. our inner cooking pot is made of superior quality 304 (18/8) stainless steel. It has no chemical coatings and it’s dishwasher-safe, too</span></li><li><span style=\"color:rgb(15,17,17);\">Include (1) 1200w cooker base (1) stainlesssteel cooking pot (1) steam rack (1) soup spoon (1) rice paddle (1) measuring cup (1) user guide</span></li><li><span style=\"color:rgb(15,17,17);\">9 appliances in 1. our smart pot is a pressure cooker, sauté pot, slow cooker, rice cooker, steamer, sous vide pot, soup maker, yogurt maker, and food warmer all-in-one</span></li></ul>', '', 'Cooker, Rice Cooker, Steamer, Sauté Pot, Yogurt Maker & More, 12 Smart Programs With New Smart Lid, 2 Years Warranty', 'Cooker, Rice Cooker, Steamer, Sauté Pot, Yogurt Maker & More, 12 Smart Programs With New Smart Lid, 2 Years Warranty', 'Cooker, Rice Cooker, Steamer, Sauté Pot, Yogurt Maker & More, 12 Smart Programs With New Smart Lid, 2 Years Warranty', 'Cooker,ricecooker,steamer,yougurtmaker,2yearswarranty', 0, NULL, 'abc.com', 2, 383, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/z5d4a6EI3tQLRtaA3GNk.jpg', 1, 1, NULL, NULL),
(15, NULL, 'Belkin USB C Portable Power Bank (10000 mAh with 1 Port and 2 A Ports for up to 15W Charging iPhone, Android, AirPods, iPad, More) – Black', 'belkin-usb-c-portable-power-bank-10000-mah-with-1-port-and-2-a-ports-for-up-to-15w-charging-iphone-android-airpods-ipad-more-black', '<ul><li><span style=\"color:rgb(15,17,17);\">Helps keep devices powered up and running for an extended period</span></li><li><span style=\"color:rgb(15,17,17);\">Charge at up to 15 Watt when using all 3 ports</span></li><li><span style=\"color:rgb(15,17,17);\">An LED light tells you the power bank\'s power status</span></li><li><span style=\"color:rgb(15,17,17);\">Compatible with USB-A and USB-C enabled devices</span></li><li><span style=\"color:rgb(15,17,17);\">Compact and portable design fits inside bag or purse easily</span></li></ul>', '', 'Belkin USB C Portable Power Bank (10000 mAh with 1 Port and 2 A Ports for up to 15W Charging iPhone, Android, AirPods, iPad, More) – Black', 'Belkin USB C Portable Power Bank (10000 mAh with 1 Port and 2 A Ports for up to 15W Charging iPhone, Android, AirPods, iPad, More) – Black', 'Belkin USB C Portable Power Bank (10000 mAh with 1 Port and 2 A Ports for up to 15W Charging iPhone, Android, AirPods, iPad, More) – Black', 'belkin,usbc,portablepowerbank,10000mah,black', 0, NULL, 'abc.com', 2, 46, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/8IcmkMiZvy1JrRScnMmN.jpg', 1, 1, NULL, NULL),
(16, NULL, 'Wipkviey T6 Drone,Drone with Camera 1080P for Beginners, WiFi FPV RC Quadcopter for Beginners, Gravity Sensor, Flip Mode, One Button Takeoff/Landing, One Button Return, Headless Mode, 2 Batteries', 'wipkviey-t6-drone-drone-with-camera-1080p-for-beginners-wifi-fpv-rc-quadcopter-for-beginners-gravity-sensor-flip-mode-one-button-takeoff-landing-one-button-return-headless-mode-2-batteries', '<ul><li><span style=\"color:rgb(15,17,17);\">【A great entry drone】: The T6 drone is suitable for beginners and children (from 14 years). The quadcopter is lightweight (120 grams), even drone beginners can get started in no time. The perfect gift idea for birthday and holiday.</span></li><li><span style=\"color:rgb(15,17,17);\">【Longer flight time】: This quad drone comes with two rechargeable batteries (SD card is NOT supported) for a total flight time of up to 30 minutes (15 minutes per battery). Sufficient endurance to add a new dimension to your bird\'s eye view.</span></li><li><span style=\"color:rgb(15,17,17);\">【Excellent stability】: T6 drone with camera does not use the foldable function and offers excellent flight stability. Better manoeuvrability makes it even easier to fly the drone as you want.</span></li><li><span style=\"color:rgb(15,17,17);\">【1080P HD FPV Camera】: The camera resolution of the T6 RC drone with camera is 1920*1080p. 90 degree adjustable camera + first person flight view and 2.4G real-time transmission function, along with the stable floating effect of our drone, gives you an even better photography experience.</span></li><li><span style=\"color:rgb(15,17,17);\">【Aesthetic design】: new pearl white housing with blue-green LED lights on the links of the drone for a cooler visual effect when flying at night.</span></li><li><span style=\"color:rgb(15,17,17);\">【Powerful】: The drone has a variety of playing options and can be easily controlled via the mobile app or remote control: headless mode, three-speed setting, 360 degree flip, automatic altitude, one-touch start/one-touch return. Make your flight experience less monotonous and more fun.</span></li><li><span style=\"color:rgb(15,17,17);\">【Please Note】: the first flight is recommended in an open and windless area. Please make sure that you do not fly too far away, otherwise you may lose control. Always calibrate the drone horizontally before starting and start the drone on a horizontal level, otherwise the drone will not be calibrated during the flight.</span></li><li><span style=\"color:rgb(15,17,17);\">【100% Customer Satisfaction】: Customer satisfaction is our goal, we offer you a 24-hour online customer service, if you have any unsatisfactory points or do not understand, please do not hesitate to contact us, our professional team will do its best to solve all your pre-sales and after-sales problems.</span></li></ul>', '', 'Wipkviey T6 Drone,Drone with Camera 1080P for Beginners, WiFi FPV RC Quadcopter for Beginners, Gravity Sensor, Flip Mode, One Button Takeoff/Landing, One Button Return, Headless Mode, 2 Batteries', 'Wipkviey T6 Drone,Drone with Camera 1080P for Beginners, WiFi FPV RC Quadcopter for Beginners, Gravity Sensor, Flip Mode, One Button Takeoff/Landing, One Button Return, Headless Mode, 2 Batteries', 'Wipkviey T6 Drone,Drone with Camera 1080P for Beginners, WiFi FPV RC Quadcopter for Beginners, Gravity Sensor, Flip Mode, One Button Takeoff/Landing, One Button Return, Headless Mode, 2 Batteries', 'Wipkviet6drone,withcamera.1080p,2battries,onebuttontakeoff/landing', 0, NULL, 'abc.com', 2, 179, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/cKErUY88jkkZ5sT914XF.jpg', 1, 1, NULL, NULL),
(17, NULL, 'TP-Link Archer AX10 Next-Gen Wi-Fi 6 Router, AX1500 Mbps Gigabit Dual Band Wireless, OneMesh Supported, Beamforming & MU-MIMO, Ideal for Gaming Xbox/PS5/Steam and 4K, Works with Alexa', 'tp-link-archer-ax10-next-gen-wi-fi-6-router-ax1500-mbps-gigabit-dual-band-wireless-onemesh-supported-beamforming-mu-mimo-ideal-for-gaming-xbox-ps5-steam-and-4k-works-with-alexa', '<ul><li><span style=\"color:rgb(15,17,17);\">Wi-Fi 6 Technology—Archer AX10 comes equipped with the latest wireless technology, Wi-Fi 6, for faster speeds, greater capacity, and reduced network congestion.</span></li><li><span style=\"color:rgb(15,17,17);\">Next-Gen 1.5 Gbps Speeds—Archer AX10 dual-band router reaches even faster speeds up to 1.5 Gbps (1201 Mbps on 5 GHz band and 300 Mbps on 2.4 GHz band).</span></li><li><span style=\"color:rgb(15,17,17);\">Connect Dozens of Devices—More simultaneous connections and reduced latency with OFDMA and MU-MIMO.</span></li><li><span style=\"color:rgb(15,17,17);\">Triple-Core CPU—Instant response to all your network activity with a 1.5 GHz triple-core CPU.</span></li><li><span style=\"color:rgb(15,17,17);\">Broader Coverage—4 Antennas and Beamforming technology focus signal towards individual clients for broader coverage.</span></li></ul>', '', 'TP-Link Archer AX10 Next-Gen Wi-Fi 6 Router, AX1500 Mbps Gigabit Dual Band Wireless, OneMesh Supported, Beamforming & MU-MIMO, Ideal for Gaming Xbox/PS5/Steam and 4K, Works with Alexa', 'TP-Link Archer AX10 Next-Gen Wi-Fi 6 Router, AX1500 Mbps Gigabit Dual Band Wireless, OneMesh Supported, Beamforming & MU-MIMO, Ideal for Gaming Xbox/PS5/Steam and 4K, Works with Alexa', 'TP-Link Archer AX10 Next-Gen Wi-Fi 6 Router, AX1500 Mbps Gigabit Dual Band Wireless, OneMesh Supported, Beamforming & MU-MIMO, Ideal for Gaming Xbox/PS5/Steam and 4K, Works with Alexa', 'Tplink,archerax10,nextgen,wifi6router,ac1500mbps', 0, NULL, 'abc.com', 2, 169, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/qzNRn0Bty8WpnAH0q4La.jpg', 1, 1, NULL, NULL),
(18, NULL, 'SanDisk 1TB Extreme Pro microSD UHS I Card for 4K Video on Smartphones, Action Cams & Drones 200MB/s Read, 140MB/s Write, SDSQXCD 1T00 GN6MA, Red/Black', 'sandisk-1tb-extreme-pro-microsd-uhs-i-card-for-4k-video-on-smartphones-action-cams-drones-200mb-s-read-140mb-s-write-sdsqxcd-1t00-gn6ma-red-black', '<ul><li><span style=\"color:rgb(15,17,17);\">With SanDisk&nbsp;QuickFlow&nbsp;Technology9, this card optimizes performance for timesaving media offloads with quick read speeds up to 200MB/s8&nbsp;(64GB - 1TB). Pair with the SanDisk&nbsp;Professional PRO-READER SD and microSD to achieve maximum speeds (sold separately).</span></li><li><span style=\"color:rgb(15,17,17);\">Capture fast-action photos or shoot 4K UHD video2&nbsp;with write speeds of up to 140MB/s.8&nbsp;The SanDisk Extreme&nbsp;PRO microSDXC&nbsp;UHS-I Card lets you shoot more and faster.</span></li><li><span style=\"color:rgb(15,17,17);\">Ideal for recording outdoor adventures, weekend trips, or sporting events without skipping frames. With up to 1TB1, the SanDisk Extreme&nbsp;PRO microSD&nbsp;UHS-I card lets you capture uninterrupted 4K UHD2&nbsp;and Full HD video with its UHS Speed Class 3 (U3) and Video Speed Class 30 (V30) ratings.4</span></li><li><span style=\"color:rgb(15,17,17);\">Get faster app performance for an outstanding smartphone experience thanks to the SanDisk Extreme&nbsp;PRO microSD card’s A25&nbsp;Specification.</span></li><li><span style=\"color:rgb(15,17,17);\">SanDisk Extreme&nbsp;PRO microSDHC and microSDXC UHS-I Cards are shockproof, temperature-proof, waterproof, and X-ray-proof,3&nbsp;so you can enjoy your adventures without worrying about the durability of your memory card.</span></li></ul>', '', 'SanDisk 1TB Extreme Pro microSD UHS I Card for 4K Video on Smartphones, Action Cams & Drones 200MB/s Read, 140MB/s Write, SDSQXCD 1T00 GN6MA, Red/Black', 'SanDisk 1TB Extreme Pro microSD UHS I Card for 4K Video on Smartphones, Action Cams & Drones 200MB/s Read, 140MB/s Write, SDSQXCD 1T00 GN6MA, Red/Black', 'SanDisk 1TB Extreme Pro microSD UHS I Card for 4K Video on Smartphones, Action Cams & Drones 200MB/s Read, 140MB/s Write, SDSQXCD 1T00 GN6MA, Red/Black', 'sandesk,1tb,sdcard,200mbpsread,140mbpswrite,redcolour,blackccolour', 0, NULL, 'abc.com', 2, 407, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/YHV5e9FCnM4KSS2BxOrf.jpg', 1, 1, NULL, NULL),
(19, NULL, 'Karl Lagerfeld Paris Women\'s Asymmetrical Hem Dress', 'karl-lagerfeld-paris-women-s-asymmetrical-hem-dress', '<ul><li><span style=\"color:rgb(15,17,17);\">63.5% Cotton, 36.5% Nylon</span></li><li><span style=\"color:rgb(15,17,17);\">Imported</span></li><li><span style=\"color:rgb(15,17,17);\">Zipper closure</span></li><li><span style=\"color:rgb(15,17,17);\">Dry Clean Only</span></li><li><span style=\"color:rgb(15,17,17);\">Modern luxury: The signature aesthetics of our brand are evident in each style, making them a standout within your existing wardrobe.</span></li><li><span style=\"color:rgb(15,17,17);\">Chic and versatile: Mix and match with other pieces in your collection; carry it in your work bag, wear it for a night out, or as part of your daily uniform.</span></li><li><span style=\"color:rgb(15,17,17);\">Anytime, anywhere: Both comfortable and versatile, these dress are designed to be a transitional weather staple.</span></li><li><span style=\"color:rgb(15,17,17);\">Flattering silhouettes: These dress lend a trend-forward, yet clean and flattering look. They\'re sure to be your next wardrobe staple.</span></li></ul>', '', 'Karl Lagerfeld Paris Women\'s Asymmetrical Hem Dress', 'Karl Lagerfeld Paris Women\'s Asymmetrical Hem Dress', 'Karl Lagerfeld Paris Women\'s Asymmetrical Hem Dress', 'Karl,Lagerfeld,Paris,Women\'s,Asymmetrical,Hem,Dress', 0, NULL, 'abc.com', 1, 106, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/W984avpPWsP11hqMGhM5.jpg', 1, 1, NULL, NULL),
(20, NULL, 'HP Deskjet 2720 All-in-One Printer, Wireless, Print, Copy, Scan - White [3XV18B]', 'hp-deskjet-2720-all-in-one-printer-wireless-print-copy-scan---white-3xv18b-', '<ul><li><span style=\"color:rgb(15,17,17);\">Easily handle tasks and get a lot from one device print, scan, and copy.</span></li><li><span style=\"color:rgb(15,17,17);\">Built-in wireless capabilities let you easily access, print, and share resources on a network.</span></li><li><span style=\"color:rgb(15,17,17);\">Use your smartphone to set up in a few easy steps, then connect and print from any device, using HP Smart – best-in-class mobile print app. Even use the HP Smart app to print, scan, and copy from anywhere.</span></li><li><span style=\"color:rgb(15,17,17);\">Get better range and faster, more reliable connections using dual-band Wi-Fi with self-reset.</span></li><li><span style=\"color:rgb(15,17,17);\">This printer is intended to work only with cartridges with original HP chips or circuitry and will block cartridges using non-HP chips or circuitry. Periodic firmware updates will maintain the effectiveness of these measures.</span></li></ul>', '', 'HP Deskjet 2720 All-in-One Printer, Wireless, Print, Copy, Scan - White [3XV18B]', 'HP Deskjet 2720 All-in-One Printer, Wireless, Print, Copy, Scan - White [3XV18B]', 'HP Deskjet 2720 All-in-One Printer, Wireless, Print, Copy, Scan - White [3XV18B]', 'HP,allinoneprinter,wireless,print,copy,scan', 0, NULL, 'abc.com', 2, 168, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 1, 1, 10.00000, '5', 2, '5', 1, '/backend/files/PViqouxmXcT4gq2pim85.jpg', 1, 1, NULL, NULL),
(21, NULL, 'Meta Quest 2, Advanced All-In-One Virtual Reality Headset, 128 GB', 'meta-quest-2-advanced-all-in-one-virtual-reality-headset-128-gb', '<ul><li><span style=\"color:rgb(15,17,17);\">Next-Level Hardware - Make Every Move Count With A Blazing-Fast Processor And Our Highest-Resolution Display.</span></li><li><span style=\"color:rgb(15,17,17);\">All-In-One Gaming - With Backward Compatibility, You Can Explore New Titles And Old Favourites In The Expansive Quest Content Library.</span></li><li><span style=\"color:rgb(15,17,17);\">Immersive Entertainment - Get The Best Seat In The House To Live Concerts, Groundbreaking Films, Exclusive Events And More.</span></li></ul>', '', 'Meta Quest 2, Advanced All-In-One Virtual Reality Headset, 128 GB', 'Meta Quest 2, Advanced All-In-One Virtual Reality Headset, 128 GB', 'Meta Quest 2, Advanced All-In-One Virtual Reality Headset, 128 GB', 'Metaquest2,advanceallinone,virtualreality,headset,128gb', 0, NULL, 'abc.coom', 2, 1104, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/AkIPSxcve0gFDeBo7nSb.jpg', 1, 1, NULL, NULL),
(22, NULL, 'Apsung Precision Screwdriver Set, Apsung 110 In 1 Professional Multi-Function Magnetic Repair Computer Tool Kit Compatible With Iphone/Ipad/Android/Laptop/Pc Etc  (Blue)', 'apsung-precision-screwdriver-set-apsung-110-in-1-professional-multi-function-magnetic-repair-computer-tool-kit-compatible-with-iphone-ipad-android-laptop-pc-etc-blue-', '<ul><li><span style=\"color:rgb(15,17,17);\">Multi-Magnetic Screwdriver Set : Professional 110-in-1 multi-function interchangeable precise manual tool set, Comes with all the necessary tools for a wide variety of jobs. Perfect for repairing laptops, mobile devices and other precision items like wristwatches and eyeglasses. Light weight and compact design. Perfect repairing tools for iPad, iPhone, Tablets, Laptops, PC, Smartphones, Watches, Glasses, Camera PS4/Xbox controller and Other Electronic Devices.</span></li><li><span style=\"color:rgb(15,17,17);\">High Quality and Well Perform: Shafts of the screwdrivers are made with chrome vanadium, which is a mixture of alloys. It improves the resistance to rust as well as endure heavier load. Thus, the product is made more durable.</span></li><li><span style=\"color:rgb(15,17,17);\">Stable And Well Accessible: Flexible shaft additional extension rod of up to 60mm adjustable length and a flexible soft shaft is offered, screw driver with STRONG magnetic tips and anti slip. Allowing you to achieve screws that are completely inaccessible, ideal for stereo work. Box size: 21x9x3cm is easy to carry and portable, you can put it in travel bag, car or tool box.</span></li><li><span style=\"color:rgb(15,17,17);\">Magnetic Screwdriver Set: The screwdriver heads are magnetic, Made of impact-resistant tool steels, solid as chrome vanadium steel, and they can tighten the screws during repair, which improves performance and saves your time and effort.</span></li><li><span style=\"color:rgb(15,17,17);\">Widely Use: Perfect repairing tools for iPad, iPhone, Tablets, Laptops, PC, Smartphones, Watches, Glasses, Camera PS4/Xbox controller and Other Electronic Devices.</span></li></ul>', '', 'Apsung Precision Screwdriver Set, Apsung 110 In 1 Professional Multi-Function Magnetic Repair Computer Tool Kit Compatible With Iphone/Ipad/Android/Laptop/Pc Etc  (Blue)', 'Apsung Precision Screwdriver Set, Apsung 110 In 1 Professional Multi-Function Magnetic Repair Computer Tool Kit Compatible With Iphone/Ipad/Android/Laptop/Pc Etc  (Blue)', 'Apsung Precision Screwdriver Set, Apsung 110 In 1 Professional Multi-Function Magnetic Repair Computer Tool Kit Compatible With Iphone/Ipad/Android/Laptop/Pc Etc  (Blue)', 'appsung,precisionscrewfriver,computertoolkit,blue', 0, NULL, 'abc.com', 2, 50, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/JQXIYpQtoGTXc6cpDpJD.jpg', 1, 1, NULL, NULL),
(23, NULL, 'Goodern Retro Bluetooth Speaker,Portable Vintage Wireless Bluetooth Speakers, Cute Old Fashion Style for Kitchen Desk Bedrooms Office Party Outdoor Kawaii Accessories IOS Android Smartphone-Blue', 'goodern-retro-bluetooth-speaker-portable-vintage-wireless-bluetooth-speakers-cute-old-fashion-style-for-kitchen-desk-bedrooms-office-party-outdoor-kawaii-accessories-ios-android-smartphone-blue', '<ul><li><span style=\"color:rgb(15,17,17);\">Strong Compatibility : This retro Bluetooth speaker is compatible with iPhone, iPad, samsung galaxy, android smartphones, tablets &amp; other Bluetooth devices as well as all devices as long as they come with Bluetooth function.</span></li><li><span style=\"color:rgb(15,17,17);\">Good Sound Quality : With its palm size and minimalist design, delivers a well-defined high &amp; low frequency response, for great audio clarity which is in stereo, rich with details, and smoothly well-balanced. In addition, the retro turn knob allows you to adjust the volume levels at will.</span></li><li><span style=\"color:rgb(15,17,17);\">Easy To Carry : This retro speaker, exquisitely designed and the retro bluetooth speaker suitable size, it be packed in your bag, stowed in your pocket. You can enjoy your music easily, no matter you wherever you go and whatever you do.</span></li><li><span style=\"color:rgb(15,17,17);\">Hands-Free Calls &amp; Rechargeable Battery : Easy button control, built in mic, answer/end calls, it’s a breeze. It offers 2-3 hours of non-stop wireless audio playback on a single charge.</span></li><li><span style=\"color:rgb(15,17,17);\">A Wonderful Gift : You can send it to your friends and lover because the wireless speaker is not only a good speaker but also a delicate decoration ; You can buy it for your parents, for it is very easy to turn on and connect; It is also a good choice to give it to children, because mini portable speaker’s fashionable outlook is a great attraction for them.</span></li></ul>', '', 'Goodern Retro Bluetooth Speaker,Portable Vintage Wireless Bluetooth Speakers, Cute Old Fashion Style for Kitchen Desk Bedrooms Office Party Outdoor Kawaii Accessories IOS Android Smartphone-Blue', 'Goodern Retro Bluetooth Speaker,Portable Vintage Wireless Bluetooth Speakers, Cute Old Fashion Style for Kitchen Desk Bedrooms Office Party Outdoor Kawaii Accessories IOS Android Smartphone-Blue', 'Goodern Retro Bluetooth Speaker,Portable Vintage Wireless Bluetooth Speakers, Cute Old Fashion Style for Kitchen Desk Bedrooms Office Party Outdoor Kawaii Accessories IOS Android Smartphone-Blue', 'Goodrenrretrobluetoothspeaker,portable,cheapprice,abletoconnectwith,ios,apple', 0, NULL, 'abc.com', 2, 76, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/sfv8ymU43peZWdvHp7ja.jpg', 1, 1, NULL, NULL),
(24, NULL, 'L Shape sofa 3 Seat Linen Living Room Sofa Set Home Furniture Modern Design Frame Soft Sponge Shape Home Furniture(Foot ped + 2 cloth stool),E', 'l-shape-sofa-3-seat-linen-living-room-sofa-set-home-furniture-modern-design-frame-soft-sponge-shape-home-furniture-foot-ped-2-cloth-stool-e', '<ul><li><span style=\"color:rgb(15,17,17);\">VERSATILITY AND COMFORT: Our brightly colored bean bag is perfect for both adults and children.</span></li><li><span style=\"color:rgb(15,17,17);\">Whether with additional seats, games or just relaxing, this puff offers long-term comfort for any occasion indoors or outdoors.</span></li><li><span style=\"color:rgb(15,17,17);\">This fabric has been carefully selected for its quality and ease of use, and is completely forgotten and sewn for strength and durability.</span></li><li><span style=\"color:rgb(15,17,17);\">Manufacturers carefully design and create all our poufs at the highest possible level.</span></li><li><span style=\"color:rgb(15,17,17);\">The hand of our company manufactures each and every one of the items that come out of our doors, guaranteeing quality over quantity, comfort and standard operation.</span></li></ul>', '', 'L Shape sofa 3 Seat Linen Living Room Sofa Set Home Furniture Modern Design Frame Soft Sponge Shape Home Furniture(Foot ped + 2 cloth stool),E', 'L Shape sofa 3 Seat Linen Living Room Sofa Set Home Furniture Modern Design Frame Soft Sponge Shape Home Furniture(Foot ped + 2 cloth stool),E', 'L Shape sofa 3 Seat Linen Living Room Sofa Set Home Furniture Modern Design Frame Soft Sponge Shape Home Furniture(Foot ped + 2 cloth stool),E', 'Lshapesofa,modrendesign,soft,spongeshape,cheapprice', 0, NULL, 'abc.com', 2, 1745, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/mo8strwxLk2he2bNBOHX.jpg', 1, 1, NULL, NULL),
(25, NULL, 'Amazon Essentials Men\'s Thermal Long Underwear Set, Multipacks', 'amazon-essentials-men-s-thermal-long-underwear-set-multipacks', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">WAFFLE KNIT THERMAL FABRIC:</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">LIM FIT: Top: Slim fit through the shoulders</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">This super-soft thermal underwear set is lightweight and will keep you warm all day long.</span></p>', '', 'Amazon Essentials Men\'s Thermal Long Underwear Set, Multipacks', 'Amazon Essentials Men\'s Thermal Long Underwear Set, Multipacks', 'Amazon Essentials Men\'s Thermal Long Underwear Set, Multipacks', 'Amazon, Essentials, Men\'s, Thermal, Long, Underwear, Set,, Multipacks', 0, NULL, 'abc.com', 2, 24, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/B2YPgft0mNkgQOArwyGJ.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(26, NULL, '2 pieces,Ceramic Vase Set 2 for Modern Home Decor,Round Matte Pampas Flower Vases Minimalist Nordic Boho Ins Style for Wedding Dinner Table Party Living Room Office Bedroom, Decorative Gift (White)', '2-pieces-ceramic-vase-set-2-for-modern-home-decor-round-matte-pampas-flower-vases-minimalist-nordic-boho-ins-style-for-wedding-dinner-table-party-living-room-office-bedroom-decorative-gift-white-', '<ul><li><span style=\"color:rgb(15,17,17);\">【UNIQUE MODERN DESIGN 】– If you are tired of those dull and boring designs, then you will definitely be attracted by these beautiful hollow design white ceramic vases for home décor. The donut design makes the flower vases unique and stylish; you can see through the hollow out while enjoying beautiful flowers in the vase, which adds more romance and fashion to your house.</span></li><li><span style=\"color:rgb(15,17,17);\">【 EQUISITE &amp; FLAWLESS DETAILS】 – Each Pampas Grass decorative vase is professionally designed and handcrafted to form clean and elegant golden ratio lines, fired at 1700 degrees,make it a unique work of art. so you will see how smooth and exquisite the surface and how beautiful the details are.</span></li><li><span style=\"color:rgb(15,17,17);\">【VERSATILE DECOR &amp; PERFECT GIFT 】– These two hollow design white ceramic vases for decoration is a perfect centerpiece for all rooms and occasions thanks to its simple and modern design. You can place on your dinner table, in the dining room, living room, bedroom, office, restaurant, kitchen, Corridor, floating shelves reading room and more. It also serves as a great gift for wedding, housewarming and all special events.</span></li><li><span style=\"color:rgb(15,17,17);\">【UNIQUE PIECE TO YOUR BOHO COLLECTION】– By pairing this white ceramic pot with dried flowers, Natural Pampas Grass, Reed, Bunny Tails or fresh flowers, green plants, succulents. Use as farmhouse boho decor, rustic bathroom bedroom decor, hallway floating shelf decor, or even your desk decor .Draw attention to your boho chic decor for an eye-catching look.</span></li><li><span style=\"color:rgb(15,17,17);\">【Professional manufacture of handmade ceramic vases】- We are a company with many years of professional experience in designing, developing and manufacturing the highest quality home vase decorations. We have great strength, if you have any questions about this white ceramic decorative vase, please feel free to contact us, we are always ready to help.</span></li></ul>', '', '2 pieces,Ceramic Vase Set 2 for Modern Home Decor,Round Matte Pampas Flower Vases Minimalist Nordic Boho Ins Style for Wedding Dinner Table Party Living Room Office Bedroom, Decorative Gift (White)', '2 pieces,Ceramic Vase Set 2 for Modern Home Decor,Round Matte Pampas Flower Vases Minimalist Nordic Boho Ins Style for Wedding Dinner Table Party Living Room Office Bedroom, Decorative Gift (White)', '2 pieces,Ceramic Vase Set 2 for Modern Home Decor,Round Matte Pampas Flower Vases Minimalist Nordic Boho Ins Style for Wedding Dinner Table Party Living Room Office Bedroom, Decorative Gift (White)', 'cheapprice,vaseset2,stylishvast,flowervase2yearswaranty', 0, NULL, 'abc.com', 2, 55, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/aUq0rRyFdJPiMLI4LCcI.jpg', 1, 1, NULL, NULL),
(27, NULL, 'Simple Joys by Carter\'s Girls\' 4-Piece Sweatshirt Set', 'simple-joys-by-carter-s-girls-4-piece-sweatshirt-set', '<p>sadsfvgbhnjm<br>rstyjukitlop;o[\'<br>rstdyukfiltuoi;p\'[<br>dtuyfilotyp;</p>', '', 'Simple Joys by Carter\'s Girls\' 4-Piece Sweatshirt Set', 'Simple Joys by Carter\'s Girls\' 4-Piece Sweatshirt Set', 'Simple Joys by Carter\'s Girls\' 4-Piece Sweatshirt Set', 'Simple, Joys, by, Carter\'s, Girls\', 4-Piece, Sweatshirt, Set', 0, NULL, 'abc.com', 2, 24.7, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/MRoIjCVAnglt90aGS3j1.jpg', 1, 1, NULL, NULL),
(28, NULL, 'Modern Dining Table Set Eames Table Simple Wooden Rectangle Table with 4 Chairs for Home Living Room Office Meeting Room Kitchen Lounging and Cafeterias (Rectangle set-120cm)', 'modern-dining-table-set-eames-table-simple-wooden-rectangle-table-with-4-chairs-for-home-living-room-office-meeting-room-kitchen-lounging-and-cafeterias-rectangle-set-120cm-', '<ul><li><span style=\"color:rgb(15,17,17);\">CONTEMPORARY TABLE - Clean lines, smooth surfaces and beechwood dowel legs complement the mid-century profile of this dining table.</span></li><li><span style=\"color:rgb(15,17,17);\">VERSATILE DESIGN - A contemporary update for breakfast nooks, kitchens and dining rooms, this rectangular table commands a presence.</span></li><li><span style=\"color:rgb(15,17,17);\">STURDY CONSTRUCTION - Sitting atop a solid wood frame for lasting stability and support, this contemporary dining table boasts a smooth white laminate surface over durable fiberboard for easy cleaning.</span></li><li><span style=\"color:rgb(15,17,17);\">TABLE SIZE: The beautiful top table with tough wooden legs gives your room or office a classic, rustic and architectural look making it a perfect piece.</span></li><li><span style=\"color:rgb(15,17,17);\">POPULAR USE: fits perfectly into the living area, or public areas like cafe or restaurant, especially emphasizing the minimalist or high-tech interior.</span></li></ul>', '', 'Modern Dining Table Set Eames Table Simple Wooden Rectangle Table with 4 Chairs for Home Living Room Office Meeting Room Kitchen Lounging and Cafeterias (Rectangle set-120cm)', 'Modern Dining Table Set Eames Table Simple Wooden Rectangle Table with 4 Chairs for Home Living Room Office Meeting Room Kitchen Lounging and Cafeterias (Rectangle set-120cm)', 'Modern Dining Table Set Eames Table Simple Wooden Rectangle Table with 4 Chairs for Home Living Room Office Meeting Room Kitchen Lounging and Cafeterias (Rectangle set-120cm)', 'Moderndiningtalbeset,4chairs,cheapprice,2yearswaranty', 0, NULL, 'abc.com', 2, 656, '1', 100, 1, 1, 0, 'abc.com', 10.00, 0, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/Z0atVtFjE6GeI4cfbtHQ.jpg', 1, 1, NULL, '2023-10-29 11:50:04'),
(29, NULL, 'Blu Ionic Shower Filter - Skin & Haircare - Removes Chlorine & Harmful Pollutants - Prevent Hair Loss & Moisturize Your Skin - Handheld - Matt Black', 'blu-ionic-shower-filter---skin-haircare---removes-chlorine-harmful-pollutants---prevent-hair-loss-moisturize-your-skin---handheld---matt-black', '<ul><li><span style=\"color:rgb(15,17,17);\">Matt Black For The First Time. Special Nano PVD Coating. IMMEDIATELY REJUVENATE YOUR HAIR and SKIN: Suffering from dry itchy skin, flaky dandruff, eczema, bone-dry hair, and hair loss caused by chlorinated and chemical-ridden water. Our UNIQUE, PROPRIETARY, TESTED, and SGS and EUROFINS CERTIFIED MULTI-STAGE filters deliver MAXIMUM WATER FILTRATION to REMOVE HARMFUL WATER POLLUTANTS, NEUTRALIZE ODORS and REVITALIZE your hair and skin from the first time you turn it on.</span></li><li><span style=\"color:rgb(15,17,17);\">ACTUALLY WORKS - Our TOP-SELLING &amp; TOP-RATED shower filters are now even better with ADVANCED, MULTI-STAGE HEALTH PROMOTING FILTERS reducing chlorine, pesticides, pharmaceuticals, dirt, odors, reversing the damage that your hard, chemical-filled water did to your hair, skin, and nails. YOUR SKIN WILL GO FROM ITCHY TO SOOTHED and YOUR HAIR WILL BECOME THICK and SILKY SOFT</span></li><li><span style=\"color:rgb(15,17,17);\">LESS THAN AED 1 PER DAY: WHAT is your HEALTH worth. What about LOOKING YOUR BEST and having naturally silky soft and thick hair. blu Ionic Shower Filters have helped hundreds of thousands of satisfied customers LOVE THEIR SKIN AGAIN, MINIMIZE THEIR HAIR LOSS and live their best life through a CLEANER CLEARER, BEAUTIFYING SHOWER TIME for LESS than AED 1 per day</span></li><li><span style=\"color:rgb(15,17,17);\">EASY INSTALLATION: No need for a plumber and no tools required. Fits any standard shower hose and can be EASILY INSTALLED IN MINUTES. Replace the filter cartridge every 70 – 100 showers to continue receiving the full benefits of the filtration</span></li><li><span style=\"color:rgb(15,17,17);\">2-YEAR WARRANTY and FAST CUSTOMER SERVICE: BLU INTELLIGENT HEALTH SOLUTIONS produces the world\'s leading blu Ionic Shower Filters with a 2-year warranty. Our customer service team is always ready to take care of your needs if you have any questions or other concerns. Satisfied and happy customers are our highest priority</span></li></ul>', '', 'Blu Ionic Shower Filter - Skin & Haircare - Removes Chlorine & Harmful Pollutants - Prevent Hair Loss & Moisturize Your Skin - Handheld - Matt Black', 'Blu Ionic Shower Filter - Skin & Haircare - Removes Chlorine & Harmful Pollutants - Prevent Hair Loss & Moisturize Your Skin - Handheld - Matt Black', 'Blu Ionic Shower Filter - Skin & Haircare - Removes Chlorine & Harmful Pollutants - Prevent Hair Loss & Moisturize Your Skin - Handheld - Matt Black', 'bluiconicshowerfilter,skinandhaircare,remoceschlorineandharmfullpollutants,2yearswaranty', 0, NULL, 'abc.com', 2, 449, '', 100, 1, 1, 0, 'abc.com', 0.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/xfxZdcSBD3yxMwhHLc2H.jpg', 1, 1, NULL, NULL),
(30, NULL, 'La Roche-Posay Toleriane Double Repair Face Moisturizer', 'la-roche-posay-toleriane-double-repair-face-moisturizer', '<h2 style=\"margin-left:0px;\">La Roche-Posay Toleriane Double Repair Face Moisturizer</h2>', '', 'La Roche-Posay Toleriane Double Repair Face Moisturizer', 'La Roche-Posay Toleriane Double Repair Face Moisturizer', 'La Roche-Posay Toleriane Double Repair Face Moisturizer', 'La, Roche-Posay, Toleriane, Double, Repair, Face, Moisturizer', 0, NULL, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 1, 21.99, 'pc', 100, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 5.00, 1, 5, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/zCH2TV5JfRphqsBOHhe6.jpg', 1, 1, NULL, NULL),
(31, NULL, 'Homgava Hammock Chair Macrame Hanging Swing with Cushion,Hanging Cotton Ropes, Metal Frame, 450 lbs Capacity Indoor Outdoor, Patio, Balcony, Living,Deck, Yard, Garden(Double Swing)', 'homgava-hammock-chair-macrame-hanging-swing-with-cushion-hanging-cotton-ropes-metal-frame-450-lbs-capacity-indoor-outdoor-patio-balcony-living-deck-yard-garden-double-swing-', '<ul><li><span style=\"color:rgb(15,17,17);\">【Advantage of Large Space】The two-person hammock chair is spacious enough that at 51 inches it is wide enough for two adults and one child to sit comfortably together. Whether it\'s talking to a friend, sitting with your spouse watching a TV series, or reading a story to your kids, there\'s plenty of room to do whatever you want. Durable structure, comfortable fabric, let you have enough sense of security.</span></li><li><span style=\"color:rgb(15,17,17);\">【Comfort and High Quality 】Double swing chair pay attention to quality and user experience. The hammock chair is made of pure cotton fabric and supported by a high-strength frame. And we have a large cushion, which has a thicker filling and smoother fabric compared to other cushions. It can ensure the comfort and air permeability on the seat.</span></li><li><span style=\"color:rgb(15,17,17);\">【Beautiful and Fashionable Design】Comfortable hammock and rocking chair with unique Bohemian design, choose the most fashionable style, home or yard to reflect your personal taste. To resist the agony of not being able to choose, we have three colors to choose from. Hand-woven tassels and ergonomic structure design. Not only to ensure the beauty, but also to ensure comfort.</span></li><li><span style=\"color:rgb(15,17,17);\">【Multiple Color Options】This stylish two-person swing chair is the perfect choice for your bedroom, living room, balcony and backyard. You can choose to accompany your family and enjoy the fun together, or you can choose to sit or lie down alone. You can also choose to enjoy the sun and breeze on the garden, beach or terrace. Feel the good times in your life.</span></li><li><span style=\"color:rgb(15,17,17);\">【Easy to Install and Durable】The portable Double Hammock Chair weighs only 12 pounds and can be easily moved from anywhere. You can hang it from the ceiling, tree or double hanger bracket. It only takes a few minutes to complete easily. High quality materials make for strong durability, perfect for long term use.</span></li></ul>', '', 'Homgava Hammock Chair Macrame Hanging Swing with Cushion,Hanging Cotton Ropes, Metal Frame, 450 lbs Capacity Indoor Outdoor, Patio, Balcony, Living,Deck, Yard, Garden(Double Swing)', 'Homgava Hammock Chair Macrame Hanging Swing with Cushion,Hanging Cotton Ropes, Metal Frame, 450 lbs Capacity Indoor Outdoor, Patio, Balcony, Living,Deck, Yard, Garden(Double Swing)', 'Homgava Hammock Chair Macrame Hanging Swing with Cushion,Hanging Cotton Ropes, Metal Frame, 450 lbs Capacity Indoor Outdoor, Patio, Balcony, Living,Deck, Yard, Garden(Double Swing)', 'Hammokchair,hanging,swing,cheapprice,cottonropes,metalframes,450lbs', 0, NULL, 'abc.com', 2, 798, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/JgICO4SnQsS4IyODsHml.jpg', 1, 1, NULL, NULL),
(32, NULL, 'Clorox Healthcare® AloeGuard® Antimicrobial Soap, 27 Ounces Each (12 Pack) | Antimicrobial Hand Soap Pouch in Box for Hand Washing to Prevent to Spread of Germs', 'clorox-healthcare-aloeguard-antimicrobial-soap-27-ounces-each-12-pack-antimicrobial-hand-soap-pouch-in-box-for-hand-washing-to-prevent-to-spread-of-germs', '<h2 style=\"margin-left:0px;\">Clorox Healthcare® AloeGuard® Antimicrobial Soap, 27 Ounces Each (12 Pack) | Antimicrobial Hand Soap Pouch in Box for Hand Washing to Prevent to Spread of Germs</h2>', '', 'Clorox Healthcare® AloeGuard® Antimicrobial Soap, 27 Ounces Each (12 Pack) | Antimicrobial Hand Soap Pouch in Box for Hand Washing to Prevent to Spread of Germs', 'Clorox Healthcare® AloeGuard® Antimicrobial Soap, 27 Ounces Each (12 Pack) | Antimicrobial Hand Soap Pouch in Box for Hand Washing to Prevent to Spread of Germs', 'Clorox Healthcare® AloeGuard® Antimicrobial Soap, 27 Ounces Each (12 Pack) | Antimicrobial Hand Soap Pouch in Box for Hand Washing to Prevent to Spread of Germs', 'Clorox, Healthcare®, AloeGuard®, Antimicrobial, Soap,, 27, Ounces, Each, (12, Pack), |, Antimicrobial, Hand, Soap, Pouch, in, Box, for, Hand, Washing, to, Prevent, to, Spread, of, Germs', 0, NULL, 'https://www.amazon.com/Clorox-Healthcare-AloeGuard-Antimicrobial-Washing/dp/B08YRZ3M66', 2, 654.25, 'pc', 100, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 80.00, 2, 1, 1, 1, 5.00000, '6', 1, '10', 1, '/backend/files/fGTmInMM6KRalesmT5YN.jpg', 1, 1, NULL, NULL),
(33, NULL, 'YI 1080p WiFi Smart Wireless Security Home Camera (UK Plug) - 4 Pieces', 'yi-1080p-wifi-smart-wireless-security-home-camera-uk-plug---4-pieces', '<ul><li><span style=\"color:rgb(15,17,17);\">Seamless functionality</span></li><li><span style=\"color:rgb(15,17,17);\">Packed with features</span></li><li><span style=\"color:rgb(15,17,17);\">Unparalleled performance</span></li><li><span style=\"color:rgb(15,17,17);\">Compact construction</span></li></ul><p style=\"margin-left:466.385px;\">&nbsp;</p><hr><p style=\"margin-left:466.385px;\"><br>&nbsp;</p>', '', 'YI 1080p WiFi Smart Wireless Security Home Camera (UK Plug) - 4 Pieces', 'YI 1080p WiFi Smart Wireless Security Home Camera (UK Plug) - 4 Pieces', 'YI 1080p WiFi Smart Wireless Security Home Camera (UK Plug) - 4 Pieces', 'YI1080p,smart,wireless,4pieces,2yearswaranty', 0, NULL, 'abc.com', 2, 509, '1', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/IPKiEIklUDpupdS6L9Ty.jpg', 1, 1, NULL, NULL),
(34, NULL, 'Finishing Touch Flawless Women\'s Painless Hair Remover , White/Rose Gold', 'finishing-touch-flawless-women-s-painless-hair-remover-white-rose-gold', '<h2 style=\"margin-left:0px;\">Finishing Touch Flawless Women\'s Painless Hair Remover , White/Rose Gold</h2>', '', 'Finishing Touch Flawless Women\'s Painless Hair Remover , White/Rose Gold', 'Finishing Touch Flawless Women\'s Painless Hair Remover , White/Rose Gold', 'Finishing Touch Flawless Women\'s Painless Hair Remover , White/Rose Gold', 'Finishing, Touch, Flawless, Women\'s, Painless, Hair, Remover, ,, White/Rose, Gold', 0, NULL, 'https://www.amazon.com/Clorox-Healthcare-AloeGuard-Antimicrobial-Washing/dp/B08YRZ3M66', 1, 654, 'unit', 14, 2, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 95.00, 1, 3, 1, 1, 10.00000, '7', 1, '10', 1, '/backend/files/77otQOtbVO5c8UbDw7vt.jpg', 1, 1, NULL, NULL),
(35, NULL, 'FREESTANDING BATH TUB ACRYLIC VINTAGE BATHTUB WITH SILVER FEET BATHROOM - Margherita white', 'freestanding-bath-tub-acrylic-vintage-bathtub-with-silver-feet-bathroom---margherita-white', '<ul><li><span style=\"color:rgb(15,17,17);\">NDOOR BATH TUB Model “MARGHERITA” 170 x 80cm FOR ONE PERSON</span></li><li><span style=\"color:rgb(15,17,17);\">The product is new and packed - EU Certification – Guarantee!</span></li><li><span style=\"color:rgb(15,17,17);\">Type of installation: Freestanding - Drain outlet: Central</span></li><li><span style=\"color:rgb(15,17,17);\">High quality natural white colour</span></li><li><span style=\"color:rgb(15,17,17);\">Weight: about 45 kg</span></li></ul>', '', 'FREESTANDING BATH TUB ACRYLIC VINTAGE BATHTUB WITH SILVER FEET BATHROOM - Margherita white', 'FREESTANDING BATH TUB ACRYLIC VINTAGE BATHTUB WITH SILVER FEET BATHROOM - Margherita white', 'FREESTANDING BATH TUB ACRYLIC VINTAGE BATHTUB WITH SILVER FEET BATHROOM - Margherita white', 'Freesdandingbathtub,acrylicvintagebathtub,white,cheapprice', 0, NULL, 'abc.com', 2, 4499, '1 piece', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/5l5B7TWtmsAlQs8MBTwR.jpg', 1, 1, NULL, NULL),
(36, NULL, 'Spin Mop & Bucket Floor Cleaning System, Household Cleaning Supplies Stainless Steel Mop Bucket with Wringer on Wheels - 6 Mop Heads 155cm Handle, Mop with Bucket for Home Commercial Cleaning', 'spin-mop-bucket-floor-cleaning-system-household-cleaning-supplies-stainless-steel-mop-bucket-with-wringer-on-wheels---6-mop-heads-155cm-handle-mop-with-bucket-for-home-commercial-cleaning', '<ul><li><span style=\"color:rgb(15,17,17);\">【2X DRIER THAN FOOT PEDAL】- The spin mop bucket has stronger spin wringing performance than those work with pedal, so the mop head wrings drier, save efforts and is more durable. You don\'t have to spend as much energy to get the mop head to spin.</span></li><li><span style=\"color:rgb(15,17,17);\">【QUALITY MATERIAL】- Unlike others, basket, wringer, pallet and handle of our mop bucket with wringer are made of durable 304 stainless steel and PP. Upgraded handle allows the mop head to wing drier and make less noise. The telescoping handle adjusts up to 155cm, so you don’t have to bend down and suffer from back pain. Long handle allows you to clean windows and ceiling fans also.</span></li><li><span style=\"color:rgb(15,17,17);\">【INTIMATE DESIGN】 - This floor mop system has two wheels , one pull handle, one carry handle, easy mobility while cleaning, bringing extra comfort to the disabled and people who cannot manage heavy weight. There is also a drainage plug for draining water and a detergent dispenser for dirtier floor for ease of use.</span></li><li><span style=\"color:rgb(15,17,17);\">【EXTRA MICROFIBER MOP HEADS】 - Come with 6 microfiber spin mop refills head, so you don’t have to buy extra ones in 1-2 years. The mops have super thin microfiber with great absorbent ability, 360° spinning mop head for easy floor cleaning, the mop angles easily to reach underneath furniture, behind the toilet and into nooks and crannies. Deep-cleaning microfiber removes and absorbs tough dirt and grime.</span></li><li><span style=\"color:rgb(15,17,17);\">【Services】Household cleaning can be easily done with spin mop &amp; bucket cleaning system. If you find any problem with our the goods, please feel free to contact us, We promise to provide within 24 hours.</span></li></ul>', '', 'Spin Mop & Bucket Floor Cleaning System, Household Cleaning Supplies Stainless Steel Mop Bucket with Wringer on Wheels - 6 Mop Heads 155cm Handle, Mop with Bucket for Home Commercial Cleaning', 'Spin Mop & Bucket Floor Cleaning System, Household Cleaning Supplies Stainless Steel Mop Bucket with Wringer on Wheels - 6 Mop Heads 155cm Handle, Mop with Bucket for Home Commercial Cleaning', 'Spin Mop & Bucket Floor Cleaning System, Household Cleaning Supplies Stainless Steel Mop Bucket with Wringer on Wheels - 6 Mop Heads 155cm Handle, Mop with Bucket for Home Commercial Cleaning', 'Spinmopandbucketfloorcleaningsystem,householdcleaningsupplies,steelmop.cheapprice,2yearswaranty', 0, NULL, 'abc.com', 2, 99, '1 piece', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/U5a0tkRgrsYEr4XEpxqH.jpg', 1, 1, NULL, NULL),
(37, NULL, 'ORLANE PARIS B21 Extraordinaire Box', 'orlane-paris-b21-extraordinaire-box', '<p style=\"margin-left:auto;\"><br>&nbsp;</p><figure class=\"image image_resized\" style=\"width:970px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/2fc0ebfd-e226-4016-9f56-3a00b4d019ae.__CR1,0,1633,1010_PT0_SX970_V1___.png\" alt=\"B21\"></figure><h3 style=\"margin-left:auto;\"><strong>B21 EXTRAORDINAIRE PROGRAM</strong></h3><p style=\"margin-left:auto;\">You are about to experience the B21 Extraordinaire skincare range...</p><p style=\"margin-left:auto;\">The skincare products designed to restore the appearance of youth, promising a refreshed, healthy complexion. The Exclusive Youth Reset Complex targets all aging factors that cause problems in the skin and restores the energy and mechanisms of its youth.</p><p style=\"margin-left:auto;\">A global action on all signs of aging. Wrinkles visibly fade, expression lines appear diminished, skin becomes radiant, dark spots fade, skin is firmed and hydrated within a voluptuously addictive texture. This revolutionary formula acts on the source of aging deep within the cell.</p><p style=\"margin-left:auto;\">For the first time, an exclusive complex resets cells. It targets all the factors that cause problems within the cell and sets the clock back.</p><p style=\"margin-left:auto;\">Cells regain all their energy and function as they did in youth; the skin can benefit fully from the essential elements provided to construct its collagen and its body.</p><p style=\"margin-left:auto;\">The action of 21 essential amino acids extracted from pale iris stem cells, obtained using biotechnology techniques, is optimized.</p><p style=\"margin-left:auto;\">They are the building blocks of every protein, helping to build younger, denser skin.</p><p style=\"margin-left:auto;\">This universal product was designed for you. Whatever your age, this treatment will provide you with fresh, youthful looking skin. Because of its unique texture, it can be applied by itself.</p><p style=\"margin-left:auto;\">Because it resets the clock for your cells, B21 Extraordinaire, when applied together with a serum or a cream, boosts their efficiency</p><p style=\"margin-left:auto;\">&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">The skin is glowing and even more beautiful 97%.</span></li><li><span style=\"color:rgb(15,17,17);\">The skin is firmer, wrinkles are reduced 97%.</span></li><li><span style=\"color:rgb(15,17,17);\">The skin is soft and smooth 100%.</span></li><li><span style=\"color:rgb(15,17,17);\">The skin is hydrated, comfortable 97%.</span></li></ul><p style=\"margin-left:auto;\">&nbsp;</p><figure class=\"table\" style=\"float:left;width:969px;\"><table style=\"background-color:rgb(255, 255, 255);\"><tbody><tr><th style=\"height:234px;padding:0px 30px 0px 0px;text-align:center;width:220px;\"><figure class=\"image image_resized\" style=\"width:220px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/eb0afbde-eb1d-47c4-96c0-569d39349e44.__CR0,0,300,300_PT0_SX220_V1___.png\" alt=\"1\"></figure></th><th style=\"height:234px;padding:0px 30px 0px 0px;text-align:center;width:220px;\"><figure class=\"image image_resized\" style=\"width:220px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/1564b3eb-4e50-46a8-aa36-f74c2662b8d7.__CR0,0,300,300_PT0_SX220_V1___.png\" alt=\"2\"></figure></th><th style=\"height:234px;padding:0px 30px 0px 0px;text-align:center;width:220px;\"><figure class=\"image image_resized\" style=\"width:220px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/3a91efb5-d0cb-420c-8cad-efc01a8ded59.__CR0,0,300,300_PT0_SX220_V1___.png\" alt=\"3\"></figure></th><th style=\"height:234px;padding:0px;text-align:center;width:220px;\"><figure class=\"image image_resized\" style=\"width:220px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/58352d1e-391c-4534-ab55-9ed4485bc727.__CR0,0,300,300_PT0_SX220_V1___.png\" alt=\"4\"></figure></th></tr><tr><th style=\"height:136.328px;padding:3px 3px 0px 0px;vertical-align:top;\"><h4 style=\"margin-left:0px;\">Skin Type</h4><p style=\"margin-left:0px;\">All skin types</p></th><th style=\"height:136.328px;padding:3px 3px 0px;vertical-align:top;\"><h4 style=\"margin-left:0px;\">Skin Concerns</h4><p style=\"margin-left:0px;\">&nbsp;</p><ul><li><span style=\"color:rgb(15,17,17);\">Wrinkles</span></li><li><span style=\"color:rgb(15,17,17);\">Puffiness</span></li><li><span style=\"color:rgb(15,17,17);\">Dark circles,</span></li><li><span style=\"color:rgb(15,17,17);\">Texture of eye are uneven</span></li></ul><p style=\"margin-left:0px;\">&nbsp;</p></th><th style=\"height:136.328px;padding:3px 3px 0px;vertical-align:top;\"><h4 style=\"margin-left:0px;\">Key Ingredients</h4><p style=\"margin-left:0px;\">Exclusive Youth Rest Complex, 21 amino acids extracted from the Pale Blue Iris Stem cells</p></th><th style=\"height:136.328px;padding:3px 0px 0px 3px;vertical-align:top;\"><h4 style=\"margin-left:0px;\">Smart Ingredients</h4><p style=\"margin-left:0px;\">An extraordinary synergy of active ingredients for a powerful regenerative action at all levels of the epidermis</p></th></tr></tbody></table></figure><figure class=\"image image_resized\" style=\"width:969px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/18ffbece-fb0b-45e2-8392-332f75b92ea8.__CR149,0,3543,4724_PT0_SX300_V1___.jpg\" alt=\"b21\"></figure><p style=\"margin-left:auto;\"><br>&nbsp;</p><p style=\"margin-left:auto;\">&nbsp;</p><figure class=\"image image_resized\" style=\"width:969px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/02d85667-2299-4d23-be69-9459f522f806.__CR1333,855,1015,507_PT0_SX350_V1___.jpg\" alt=\"f\"></figure><p style=\"margin-left:auto;\"><strong>How to use/Directions</strong></p><p style=\"margin-left:auto;\">&nbsp;</p><p style=\"margin-left:auto;\">B21 Lotion</p><p style=\"margin-left:auto;\">Use morning and night, after cleansing. Ideal for use after any of the Orlane cleansers and before B21 Extraordinaire.</p><p style=\"margin-left:auto;\">B21 Extraodinaire</p><p style=\"margin-left:auto;\">Use morning and night, after cleansing and toning. Apply alone, or in combination with a serum and/or cream.</p><p style=\"margin-left:auto;\">B21 Eye</p><p style=\"margin-left:auto;\">Apply morning and evening to the eye contour area alone or under usual eye contour product</p><h3 style=\"margin-left:auto;\"><strong>B21 Extraordinaire Gift Set</strong></h3><p style=\"margin-left:auto;\">Complete luxury and most advanced technology, our B21 Extraordinaire Set is the full line available as the perfect gift.</p><p style=\"margin-left:auto;\">The set contains:</p><ul><li><span style=\"color:rgb(15,17,17);\">B21 Extraordinaire Youth Reset 1.0 oz</span></li><li><span style=\"color:rgb(15,17,17);\">B21 Lotion Extraordinaire 4.3 oz</span></li><li><span style=\"color:rgb(15,17,17);\">B21 Extraordinaire Youth Eye 0.5 oz</span></li></ul><figure class=\"image image_resized\" style=\"width:969px;\"><img src=\"https://m.media-amazon.com/images/S/aplus-media/vc/cacb9add-e16c-4202-a23c-14d37ff6d88e.__CR0,2,590,590_PT0_SX300_V1___.jpg\" alt=\"o\"></figure><h3 style=\"margin-left:auto;\"><strong>ORLANE PARIS</strong></h3><p style=\"margin-left:auto;\">The Orlane Laboratories, pioneers in the field of anti-aging skincare, were the first to base their expertise on the amazing potential of energy to reeducate the skin and help it regain its original abilities.</p><p style=\"margin-left:auto;\">Enriched with the B21 Bio-Energic Anti-Aging Complex, these products are on the cutting edge of research and meet every need of women with the absolute highest expectations for their beauty.</p><p style=\"margin-left:auto;\">Combining its mastery of anti-aging techniques with its unique esthetic experience, Orlane is present in institutes worldwide to offer exceptional treatments whose innovation and effectiveness are matched only by emotion, luxury and sensuality.</p>', '', 'ORLANE PARIS B21 Extraordinaire Box', 'ORLANE PARIS B21 Extraordinaire Box', 'ORLANE PARIS B21 Extraordinaire Box', 'ORLANE, PARIS, B21, Extraordinaire, Box', 0, NULL, 'https://www.amazon.com/ORLANE-PARIS-B21-Extraordinaire-Box/dp/B06XDLNH9C', 2, 385, 'pc', 1658, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 20.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/5AO6yjUw9fmu6FhSp2v2.jpg', 1, 1, NULL, NULL),
(38, NULL, 'Dr. Squatch Natural Bar Soap for Men - Gift Set (5 Bars) - Birchwood Breeze, Cedar Citrus, Grapefruit IPA Cold Pressed Beer Soap, Spearmint Basil, Cool Fresh Aloe', 'dr-squatch-natural-bar-soap-for-men---gift-set-5-bars---birchwood-breeze-cedar-citrus-grapefruit-ipa-cold-pressed-beer-soap-spearmint-basil-cool-fresh-aloe', '<p><a href=\"https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD\">https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD</a></p><p><a href=\"https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD\">https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD</a></p><p><a href=\"https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD\">https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD</a></p><p><a href=\"https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD\">https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDDhttps://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD</a></p><p>https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD</p>', '', 'Dr. Squatch Natural Bar Soap for Men - Gift Set (5 Bars) - Birchwood Breeze, Cedar Citrus, Grapefruit IPA Cold Pressed Beer Soap, Spearmint Basil, Cool Fresh Aloe', 'Dr. Squatch Natural Bar Soap for Men - Gift Set (5 Bars) - Birchwood Breeze, Cedar Citrus, Grapefruit IPA Cold Pressed Beer Soap, Spearmint Basil, Cool Fresh Aloe', 'Dr. Squatch Natural Bar Soap for Men - Gift Set (5 Bars) - Birchwood Breeze, Cedar Citrus, Grapefruit IPA Cold Pressed Beer Soap, Spearmint Basil, Cool Fresh Aloe', 'Dr., Squatch, Natural, Bar, Soap, for, Men, -, Gift, Set, (5, Bars), -, Birchwood, Breeze,, Cedar, Citrus,, Grapefruit, IPA, Cold, Pressed, Beer, Soap,, Spearmint, Basil,, Cool, Fresh, Aloe', 0, NULL, 'https://www.amazon.com/Dr-Squatch-Soap-Men-Grapefruit/dp/B09TX6YGDD', 2, 987, '', 158, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/vm98a9uVB4mL4hJDoNAb.jpg', 1, 1, NULL, NULL),
(39, NULL, 'Hi-Spec 73 Piece Home & Garage Multi Tool Kit Set. Practical Hand Tools for DIY Repair & Maintenance in the Home, Garage and Workshop. All In a Swing-Door Carry Case', 'hi-spec-73-piece-home-garage-multi-tool-kit-set-practical-hand-tools-for-diy-repair-maintenance-in-the-home-garage-and-workshop-all-in-a-swing-door-carry-case', '<ul><li><span style=\"color:rgb(15,17,17);\">Brand: Hi-Spec</span></li><li><span style=\"color:rgb(15,17,17);\">Set of 73 Piece</span></li><li><span style=\"color:rgb(15,17,17);\">It scores high on the aspect of utility too</span></li><li><span style=\"color:rgb(15,17,17);\">The fact that it is easy to maintain makes it a great pick</span></li></ul>', '', 'Hi-Spec 73 Piece Home & Garage Multi Tool Kit Set. Practical Hand Tools for DIY Repair & Maintenance in the Home, Garage and Workshop. All In a Swing-Door Carry Case', 'Hi-Spec 73 Piece Home & Garage Multi Tool Kit Set. Practical Hand Tools for DIY Repair & Maintenance in the Home, Garage and Workshop. All In a Swing-Door Carry Case', 'Hi-Spec 73 Piece Home & Garage Multi Tool Kit Set. Practical Hand Tools for DIY Repair & Maintenance in the Home, Garage and Workshop. All In a Swing-Door Carry Case', 'Highspec73piece,homeandgarragemultitoolset,allinoneaswingdoorcarrycase', 0, NULL, 'abc.com', 2, 129, '1 piece', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/pnzvbF3Yh7r0bsH4gny8.jpg', 1, 1, NULL, NULL),
(40, NULL, 'GHOST Whey Protein Powder, Cinnabon - 2LB Tub, 25G of Protein - Cinnamon Roll Flavored Isolate, Concentrate & Hydrolyzed Whey Protein Blend - Post Workout Shakes - Soy & Gluten Free', 'ghost-whey-protein-powder-cinnabon---2lb-tub-25g-of-protein---cinnamon-roll-flavored-isolate-concentrate-hydrolyzed-whey-protein-blend---post-workout-shakes---soy-gluten-free', '<p><a href=\"https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3\">https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3</a></p><p><a href=\"https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3\">https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3</a></p><p><a href=\"https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3\">https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3</a></p><p><a href=\"https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3\">https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3</a></p><p>https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&amp;keywords=protein&amp;qid=1698604511&amp;sprefix=protien%2Caps%2C321&amp;sr=8-3</p>', '', 'GHOST Whey Protein Powder, Cinnabon - 2LB Tub, 25G of Protein - Cinnamon Roll Flavored Isolate, Concentrate & Hydrolyzed Whey Protein Blend - Post Workout Shakes - Soy & Gluten Free', 'GHOST Whey Protein Powder, Cinnabon - 2LB Tub, 25G of Protein - Cinnamon Roll Flavored Isolate, Concentrate & Hydrolyzed Whey Protein Blend - Post Workout Shakes - Soy & Gluten Free', 'GHOST Whey Protein Powder, Cinnabon - 2LB Tub, 25G of Protein - Cinnamon Roll Flavored Isolate, Concentrate & Hydrolyzed Whey Protein Blend - Post Workout Shakes - Soy & Gluten Free', 'GHOST, Whey, Protein, Powder,, Cinnabon, -, 2LB, Tub,, 25G, of, Protein, -, Cinnamon, Roll, Flavored, Isolate,, Concentrate, &, Hydrolyzed, Whey, Protein, Blend, -, Post, Workout, Shakes, -, Soy, &, Gluten, Free', 0, NULL, 'https://www.amazon.com/GHOST-WHEY-Protein-Powder-Post-Workout-Fitness/dp/B0BYBB4HF7/ref=sr_1_3?crid=JT28YCJE72G8&keywords=protein&qid=1698604511&sprefix=protien%2Caps%2C321&sr=8-3', 2, 6549, 'pc', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/x41r5senc5A2GcvoiVQb.jpg', 1, 1, NULL, NULL),
(41, NULL, 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'cameron-s-coffee-roasted-whole-bean-coffee-organic-paradise-blend-4-pound-pack-of-1-', '<p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p>&nbsp;</p><p>&nbsp;</p><p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p>&nbsp;</p><p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p>&nbsp;</p><p>https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</p>', '', 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'Cameron\'s, Coffee, Roasted, Whole, Bean, Coffee,, Organic, Paradise, Blend,, 4, Pound,, (Pack, of, 1)', 0, NULL, 'https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7', 2, 13564, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/belTParB7Vc6BhBaGoj9.jpg', 1, 1, NULL, NULL),
(42, NULL, 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'cameron-s-coffee-roasted-whole-bean-coffee-organic-paradise-blend-4-pound-pack-of-1-', '<p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p><a href=\"https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7\">https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7</a></p><p>&nbsp;</p>', '', 'Cameron\'s Coffee Roasted Whole Bean Coffee, Organic Paradise Blend, 4 Pound, (Pack of 1)', 'https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7', 'https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7', 'Cameron\'s, Coffee, Roasted, Whole, Bean, Coffee,, Organic, Paradise, Blend,, 4, Pound,, (Pack, of, 1)', 0, NULL, 'https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7', 2, 741, 'pc', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 12.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/bqgS14fLlGZrgoMz4GgG.jpg', 1, 1, NULL, NULL),
(43, NULL, 'All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set', 'all-in-one-makeup-gift-kit---ultimate-color-combination---36-eyeshadow-28-lip-gloss-3-blusher-4-concealer-3-contour-powder-3-brushes-1-mirror-74-colors-palette-set', '<h2 style=\"margin-left:0px;\">All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set</h2><h2 style=\"margin-left:0px;\">All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set</h2><h2 style=\"margin-left:0px;\">All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set</h2><h2 style=\"margin-left:0px;\">All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set</h2><p style=\"margin-left:0px;\">&nbsp;</p>', '', 'All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set', 'All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set', 'All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set', 'All, In, One, Makeup, Gift, Kit, -, Ultimate, Color, Combination, -, 36, Eyeshadow,, 28, Lip, Gloss,, 3, Blusher,, 4, Concealer,, 3, Contour, Powder,, 3, Brushes,, 1, Mirror,, 74, Colors, Palette, Set', 0, NULL, 'All In One Makeup Gift Kit - Ultimate Color Combination - 36 Eyeshadow, 28 Lip Gloss, 3 Blusher, 4 Concealer, 3 Contour Powder, 3 Brushes, 1 Mirror, 74 Colors Palette Set', 1, 56, 'px', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '10', 1, '/backend/files/gaXzUKbpwBuiI2y2Eo7j.jpg', 1, 1, NULL, NULL),
(44, NULL, 'Voidrop-Motorcycle Model Vintage Bronze-Motorcycle Ornaments-metal décor-Chainwheel for Motorcycle-show pieces for home décor-Scrap Metal Motorcycle Art (motorcycle)', 'voidrop-motorcycle-model-vintage-bronze-motorcycle-ornaments-metal-d-cor-chainwheel-for-motorcycle-show-pieces-for-home-d-cor-scrap-metal-motorcycle-art-motorcycle-', '<ul><li><span style=\"color:rgb(15,17,17);\">Hand-Welded ★ As you can see, it is hand-welded together from chains, bolts, nuts, bearings, and other metal parts. Each piece is a unique work of art and worth collecting.</span></li><li><span style=\"color:rgb(15,17,17);\">Cool Gifts ★ Unique gifts for motorcycle lovers or riders. You can give it as a birthday, anniversary, Father\'s Day, Christmas, or retirement gift for grandpa, dad, husband, boyfriend, and all Harley Davidson riders. Very impressive!</span></li><li><span style=\"color:rgb(15,17,17);\">Vintage Decor ★ Adding items that reflect interests and hobbies to the home office decor of motorcycle enthusiasts can make them feel happier. You can place it on a bookshelf, desk, or wherever suitable.</span></li><li><span style=\"color:rgb(15,17,17);\">Strong &amp; Sturdy ★ The exquisite welding process ensures that each motorcycle model is sturdy. The body is retro and classic, and the appearance is full of copper luster. If you need rustic home decor, it\'s a perfect choice.</span></li><li><span style=\"color:rgb(15,17,17);\">CUSTOMER GUARANTEE - We trust the quality of the product, so if you have any questions within 30 days, please feel free to Contact Us, and we will replace you with a new one for free or a 100% refund.</span></li></ul>', '', 'Voidrop-Motorcycle Model Vintage Bronze-Motorcycle Ornaments-metal décor-Chainwheel for Motorcycle-show pieces for home décor-Scrap Metal Motorcycle Art (motorcycle)', 'Voidrop-Motorcycle Model Vintage Bronze-Motorcycle Ornaments-metal décor-Chainwheel for Motorcycle-show pieces for home décor-Scrap Metal Motorcycle Art (motorcycle)', 'Voidrop-Motorcycle Model Vintage Bronze-Motorcycle Ornaments-metal décor-Chainwheel for Motorcycle-show pieces for home décor-Scrap Metal Motorcycle Art (motorcycle)', 'Voindropmotorcycle,vintagebronze,cheapprice,highquality,metal', 0, NULL, 'abc.com', 2, 300, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/4dIn0JFoUr35yFtiLDCl.jpg', 1, 1, NULL, NULL),
(45, NULL, 'MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)', 'miss-rose-m-all-in-one-makeup-kit-makeup-kit-for-women-full-kit-multipurpose-women-s-makeup-sets-beginners-and-professionals-alike-easy-to-carry-pink-', '<h2 style=\"margin-left:0px;\">MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)</h2><h2 style=\"margin-left:0px;\">MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)</h2><h2 style=\"margin-left:0px;\">MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)</h2><h2 style=\"margin-left:0px;\">MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)</h2><h2 style=\"margin-left:0px;\">MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)</h2><p style=\"margin-left:0px;\">&nbsp;</p>', '', 'MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)', 'MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)', 'MISS ROSE M All In One Makeup Kit, Makeup Kit for Women Full Kit,Multipurpose Women\'s Makeup Sets,Beginners and Professionals Alike,Easy to Carry(Pink)', 'MISS, ROSE, M, All, In, One, Makeup, Kit,, Makeup, Kit, for, Women, Full, Kit,Multipurpose, Women\'s, Makeup, Sets,Beginners, and, Professionals, Alike,Easy, to, Carry(Pink)', 0, NULL, 'https://www.amazon.com/Camerons-Coffee-Roasted-Organic-Paradise/dp/B07DG941G7', 2, 41, 'pc', 100, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 52.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/l9K2QDtxQafU6SHgvNSq.jpg', 1, 1, NULL, NULL),
(46, NULL, 'Beko Refrigerator 250Ltr Gross,Brushed Silver,Harvest fresh,Neo frost dual cooling,Prosmart inverter compressor, RDNT300XS \"Min 1 year manufacturer warranty\"', 'beko-refrigerator-250ltr-gross-brushed-silver-harvest-fresh-neo-frost-dual-cooling-prosmart-inverter-compressor-rdnt300xs-min-1-year-manufacturer-warranty-', '<ul><li><span style=\"color:rgb(15,17,17);\">Double Door Freezer Top</span></li><li><span style=\"color:rgb(15,17,17);\">HarvestFresh: Inspired by nature, powered by light</span></li><li><span style=\"color:rgb(15,17,17);\">ProSmart Inverter Compressor</span></li><li><span style=\"color:rgb(15,17,17);\">Led Illumination</span></li><li><span style=\"color:rgb(15,17,17);\">High durability glass shelves</span></li><li><span style=\"color:rgb(15,17,17);\">Twist &amp; serve ice cube tray</span></li><li><span style=\"color:rgb(15,17,17);\">Vacation Mode</span></li></ul>', '', 'Beko Refrigerator 250Ltr Gross,Brushed Silver,Harvest fresh,Neo frost dual cooling,Prosmart inverter compressor, RDNT300XS \"Min 1 year manufacturer warranty\"', 'Beko Refrigerator 250Ltr Gross,Brushed Silver,Harvest fresh,Neo frost dual cooling,Prosmart inverter compressor, RDNT300XS \"Min 1 year manufacturer warranty\"', 'Beko Refrigerator 250Ltr Gross,Brushed Silver,Harvest fresh,Neo frost dual cooling,Prosmart inverter compressor, RDNT300XS \"Min 1 year manufacturer warranty\"', 'Bekorefrigerator,250ltr,silver,collingprosmartinvertercompressor,1yearwarranty', 0, NULL, 'abc.com', 2, 1195, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/2meeY40NKRAwCGastq6n.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(47, NULL, 'AMEROUS 12 inches Wooden Ludo Board Game - Snakes and Ladders, 2 in 1 Reversible, 1-4 Players Family Dice Games Set for Kids, Adults, Classics Tabletop Version (Gift Box Packed)', 'amerous-12-inches-wooden-ludo-board-game---snakes-and-ladders-2-in-1-reversible-1-4-players-family-dice-games-set-for-kids-adults-classics-tabletop-version-gift-box-packed-', '<p><a href=\"https://placehold.co/600x400\">https://placehold.co/600x400</a>AMEROUS 12 inches Wooden Ludo Board Game - Snakes and Ladders, 2 in 1 Reversible, 1-4 Players Family Dice Games Set for Kids, Adults, Classics Tabletop Version (Gift Box Packed)</p><p><a href=\"https://placehold.co/600x400\">https://placehold.co/600x400</a></p><p><a href=\"https://placehold.co/600x400https://placehold.co/600x400\">https://placehold.co/600x400https://placehold.co/600x400</a></p><p><a href=\"https://placehold.co/600x400\">https://placehold.co/600x400</a></p>', '', 'AMEROUS 12 inches Wooden Ludo Board Game - Snakes and Ladders, 2 in 1 Reversible, 1-4 Players Family Dice Games Set for Kids, Adults, Classics Tabletop Version (Gift Box Packed)', 'AMEROUS 12 inches Wooden Ludo Board Game - Snakes and Ladders, 2 in 1 Reversible, 1-4 Players Family Dice Games Set for Kids, Adults, Classics Tabletop Version (Gift Box Packed)', 'AMEROUS 12 inches Wooden Ludo Board Game - Snakes and Ladders, 2 in 1 Reversible, 1-4 Players Family Dice Games Set for Kids, Adults, Classics Tabletop Version (Gift Box Packed)', 'AMEROUS, 12, inches, Wooden, Ludo, Board, Game, -, Snakes, and, Ladders,, 2, in, 1, Reversible,, 1-4, Players, Family, Dice, Games, Set, for, Kids,, Adults,, Classics, Tabletop, Version, (Gift, Box, Packed)', 0, NULL, 'https://placehold.co/600x400', 2, 74, 'px', 56, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 29.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/agMCZhKaGYvBMukYyazb.jpg', 1, 1, NULL, NULL),
(48, NULL, 'PlayStation 5 Console (PS5)', 'playstation-5-console-ps5-', '<h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2><h2 style=\"margin-left:0px;\">PlayStation 5 Console (PS5)</h2>', '', 'PlayStation 5 Console (PS5)', 'PlayStation 5 Console (PS5)', 'PlayStation 5 Console (PS5)', 'PlayStation, 5, Console, (PS5)', 0, NULL, 'PlayStation 5 Console (PS5)', 2, 63, 'pc', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JEL2F2dO235mjx6RNVqM.jpg', 1, 1, NULL, NULL),
(49, NULL, 'Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”', 'jigsaw-puzzle-1000-pieces-for-adults-water-resist-wooden-puzzle-vcomo-thickened-puzzle-floor-puzzles-29-5-x19-7-', '<h2 style=\"margin-left:0px;\">Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”</h2><h2 style=\"margin-left:0px;\">Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”</h2><h2 style=\"margin-left:0px;\">Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”</h2><h2 style=\"margin-left:0px;\">Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”</h2><h2 style=\"margin-left:0px;\">Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”</h2>', '', 'Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”', 'Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”', 'Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”', 'Jigsaw, Puzzle, 1000, Pieces, for, Adults,, Water, Resist, Wooden, Puzzle,, VCOMO, Thickened, Puzzle,, Floor, Puzzles,, 29.5”x19.7”', 0, NULL, 'Jigsaw Puzzle 1000 Pieces for Adults, Water Resist Wooden Puzzle, VCOMO Thickened Puzzle, Floor Puzzles, 29.5”x19.7”', 2, 64, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JeKgQBK9ZSyqjZkmdHTd.jpg', 1, 1, NULL, NULL),
(50, NULL, 'Kraft Seeds Gardening Kit - 7 Pcs (Hand Cultivator, Hand Fork, Big Trowel, Small Weeder, Garden Gloves, Pruner) | Orange Ergonomic Handles, Black Metal Blades', 'kraft-seeds-gardening-kit---7-pcs-hand-cultivator-hand-fork-big-trowel-small-weeder-garden-gloves-pruner-orange-ergonomic-handles-black-metal-blades', '<ul><li><span style=\"color:rgb(15,17,17);\">This Product Is 100Percent Gate Garden And Which Is Made India.</span></li><li><span style=\"color:rgb(15,17,17);\">In This Gardening Tools Set 1 Pc Each Of Garden Small Trowel, Big Trowel, Cultivator, Iweeder And Fork With Pruners Scissor And Hand Gloves.</span></li><li><span style=\"color:rgb(15,17,17);\">Gate Garden 5 Spectacular Gardening Tools Set With Heavy Gardening Cut Tool And One Pair Hand Gloves By Gate Garden</span></li><li><span style=\"color:rgb(15,17,17);\">Gate Garden We Are Committed To Producing Top Quality Products That We Know You Will Love. Non Slip Plastic Handle</span></li><li><span style=\"color:rgb(15,17,17);\">Quality Is Assured And Tested By Kraft Seeds</span></li><li><span style=\"color:rgb(15,17,17);\">This Product Is 100Percent Gate Garden And Which Is Made India.</span></li><li><span style=\"color:rgb(15,17,17);\">In This Gardening Tools Set 1 Pc Each Of Garden Small Trowel, Big Trowel, Cultivator, Iweeder And Fork With Pruners Scissor And Hand Gloves</span></li></ul>', '', 'Kraft Seeds Gardening Kit - 7 Pcs (Hand Cultivator, Hand Fork, Big Trowel, Small Weeder, Garden Gloves, Pruner) | Orange Ergonomic Handles, Black Metal Blades', 'Kraft Seeds Gardening Kit - 7 Pcs (Hand Cultivator, Hand Fork, Big Trowel, Small Weeder, Garden Gloves, Pruner) | Orange Ergonomic Handles, Black Metal Blades', 'Kraft Seeds Gardening Kit - 7 Pcs (Hand Cultivator, Hand Fork, Big Trowel, Small Weeder, Garden Gloves, Pruner) | Orange Ergonomic Handles, Black Metal Blades', 'Kraftseedsgardeningkit,7pcs,cheapprice,highquality,2yearswarrnty,withgloves', 0, NULL, 'abc.com', 2, 40, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/91GDfiMwWFDn3UNLMvZd.jpg', 1, 1, NULL, NULL),
(51, NULL, 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'dreamydolly-reborn-baby-dolls---lifelike-face-body-details-real-baby-feeling-soft-skin-body-realistic-toddler-dolls-real-life-poseable-doll-for-girls-age-3-', '<h2 style=\"margin-left:0px;\">DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+</h2><h2 style=\"margin-left:0px;\">DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+</h2><h2 style=\"margin-left:0px;\">DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+</h2><p style=\"margin-left:0px;\">&nbsp;</p>', '', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly, Reborn, Baby, Dolls, -, Lifelike, Face, &, Body, Details, Real, Baby, Feeling, Soft, Skin, &, Body, Realistic, Toddler, Dolls, Real, Life, Poseable, Doll, for, Girls, Age, 3+', 0, NULL, 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 2, 78, '56', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HgsjtTZmRiDflY4jB4Rt.jpg', 1, 1, NULL, NULL),
(52, NULL, 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'dreamydolly-reborn-baby-dolls---lifelike-face-body-details-real-baby-feeling-soft-skin-body-realistic-toddler-dolls-real-life-poseable-doll-for-girls-age-3-', '<p>DreamyDolly Reborn Baby Dolls - Lifelike Face &amp; Body Details Real Baby Feeling Soft Skin &amp; Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+</p>', '', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 'DreamyDolly, Reborn, Baby, Dolls, -, Lifelike, Face, &, Body, Details, Real, Baby, Feeling, Soft, Skin, &, Body, Realistic, Toddler, Dolls, Real, Life, Poseable, Doll, for, Girls, Age, 3+', 0, NULL, 'DreamyDolly Reborn Baby Dolls - Lifelike Face & Body Details Real Baby Feeling Soft Skin & Body Realistic Toddler Dolls Real Life Poseable Doll for Girls Age 3+', 2, 6654, '', 1, 1, 1, 0, '', 10.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4gcKWQlSKgdgG5esTx1T.jpg', 1, 1, NULL, NULL),
(53, NULL, 'Weight Management', 'weight-management', '<ul><li>Weight ManagementWeight ManagementWeight Management</li><li>Weight ManagementWeight Management</li><li>Weight ManagementWeight Management</li><li>Weight ManagementWeight Management</li><li>Weight ManagementWeight Management</li><li>Weight Management</li></ul>', '', 'Weight Management', 'Weight Management', 'Weight Management', 'Weight, Management,', 0, NULL, 'Weight Management', 2, 52, 'pc', 100, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 20.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/XihshhfJi8rt0ByXJqma.jpg', 1, 1, NULL, NULL),
(54, NULL, 'Health Monitoring Devices', 'health-monitoring-devices', '<ul><li>Health Monitoring Devices Health Monitoring DevicesHealth Monitoring DevicesHealth Monitoring DevicesHealth Monitoring Devices</li><li>Health Monitoring DevicesHealth Monitoring DevicesHealth Monitoring Devices</li><li>Health Monitoring DevicesHealth Monitoring Devices</li><li>Health Monitoring DevicesHealth Monitoring Devices</li><li>Health Monitoring DevicesHealth Monitoring Devices</li></ul>', '', 'Health Monitoring Devices', 'Health Monitoring Devices', 'Health Monitoring Devices', 'Health, Monitoring, Devices,', 0, NULL, 'Health Monitoring Devices', 2, 52, 'pc', 19, 1, 1, 0, 'Health Monitoring Devices', 20.00, 2, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/7K1nSSAugSUIDoLovOdT.jpg', 1, 1, NULL, NULL),
(55, NULL, 'Recovery and Pain Management', 'recovery-and-pain-management', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management Recovery and Pain Management &nbsp;Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain ManagementRecovery and Pain ManagementRecovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Recovery and Pain Management</span></p><p>&nbsp;</p>', '', 'Recovery and Pain Management', 'Recovery and Pain Management', 'Recovery and Pain Management', 'Recovery, and, Pain, Management', 0, NULL, 'Recovery and Pain Management', 2, 85, 'pc', 100, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/PI1C2i63gXAlsAroxHFE.jpg', 1, 1, NULL, NULL),
(56, NULL, 'LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift', 'lovebhatia-birthstone-necklace-for-women-18k-gold-plated-925-sterling-silver-rubies-heart-pendant-necklace-mother-s-day-mom-wife-girlfriend-birthday-anniversary-jewelry-gift', '<h2 style=\"margin-left:0px;\">LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift</h2><h2 style=\"margin-left:0px;\">LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift</h2><h2 style=\"margin-left:0px;\">LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift</h2><h2 style=\"margin-left:0px;\">LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift</h2><p style=\"margin-left:0px;\">&nbsp;</p>', '', 'LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift', 'LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift', 'LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift', 'LoveBhatia, Birthstone, Necklace, for, Women,, 18k, Gold, Plated, 925, Sterling, Silver, Rubies, Heart, Pendant, Necklace,, Mother’s, Day, Mom, Wife, Girlfriend, Birthday, Anniversary, Jewelry, Gift', 0, NULL, 'LoveBhatia Birthstone Necklace for Women, 18k Gold Plated 925 Sterling Silver Rubies Heart Pendant Necklace, Mother’s Day Mom Wife Girlfriend Birthday Anniversary Jewelry Gift', 2, 123, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/7aqYPrpx2OK0mlCnlw1X.jpg', 1, 1, NULL, NULL),
(57, NULL, 'Under Armour Men\'s UA TEAM ISSUE WORDMARK SS Top', 'under-armour-men-s-ua-team-issue-wordmark-ss-top', '<h3 style=\"margin-left:0px;\">Charged Cotton has the comfort of cotton, but dries much faster 4-way stretch construction moves better in every direction TALL Sizes: All tall sizes are 2”/ 5 cm longer than regular sizes</h3>', '', 'Under Armour Men\'s UA TEAM ISSUE WORDMARK SS Top', 'Under Armour Men\'s UA TEAM ISSUE WORDMARK SS Top', 'Under Armour Men\'s UA TEAM ISSUE WORDMARK SS Top', 'Under, Armour, Men\'s, UA, TEAM, ISSUE, WORDMARK, SS, Top', 0, NULL, 'abc.com', 2, 75, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/90NDsE7aTeQEcQxWYVlN.jpg', 1, 1, NULL, NULL),
(58, NULL, 'Earrings', 'earrings', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">EarringsEarringsEarringsEarringsEarrings</span></p>', '', 'Earrings', 'Earrings', 'Earrings', 'Earrings', 0, NULL, 'Earrings', 2, 65465, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jXkSl8qV3dwPGXVx5CHO.jpg', 1, 1, NULL, NULL),
(59, NULL, 'Bracelets', 'bracelets', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Bracelets BraceletsBraceletsBracelets Bracelets BraceletsBracelets</span></p>', '', 'Bracelets', 'Bracelets', 'Bracelets', 'Bracelets', 0, NULL, 'Bracelets', 2, 120, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/ASKypZPYoaEfCMCQ2VjR.jpg', 1, 1, NULL, NULL),
(60, NULL, 'Watches', 'watches', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Watches</span></p>', '', 'Watches', 'Watches', 'Watches', 'Watches', 0, NULL, 'vWatches', 2, 120, 'pc', 100, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/c3je73buYHQidI8lyL9O.jpg', 1, 1, NULL, NULL),
(61, NULL, 'COOLBABY Home Electric Treadmill, Indoor, Sports Fitness Treadmill, Single Function Treadmill, Fitness Equipment, Come With iPad Stand, Black', 'coolbaby-home-electric-treadmill-indoor-sports-fitness-treadmill-single-function-treadmill-fitness-equipment-come-with-ipad-stand-black', '<ul><li><span style=\"color:rgb(15,17,17);\">7 layers of diamond grain shock absorption running belt :560mm running belt enjoy free running, non-slip, wear resistant, comfortable and durable, dynamic foot protection, quiet low noise, high stability, high resilience, wear resistant surface layer, PEP sound insulation layer, shock absorptive cushion, EVA sound insulation layer, slow shock strengthening layer, compression layer, bearing layer.</span></li><li><span style=\"color:rgb(15,17,17);\">LED screen: Classic LED panel, easy to control. There is a key area, magnetic attachment safety lock, key area on both sides of the multi-functional storage tank.</span></li><li><span style=\"color:rgb(15,17,17);\">2.5HP silent energy-saving motor: high precision machining movement, powerful, but more quiet. Stable running speed, energy saving, low power consumption, sound less than 60DB.</span></li><li><span style=\"color:rgb(15,17,17);\">M7 multilayer running plate dispersion shock absorption: M7 uses multilayer rebound running belt, absorbing and resolving the effect of multiple shock absorption system, interlocking, avoid brutal rebound.</span></li><li><span style=\"color:rgb(15,17,17);\">300 kg load bearing test: this is a solid treadmill, built in accordance with safety standards of a treadmill, beautiful appearance, internal solid, fully ensure the user experience.</span></li></ul>', '', 'COOLBABY Home Electric Treadmill, Indoor, Sports Fitness Treadmill, Single Function Treadmill, Fitness Equipment, Come With iPad Stand, Black', 'COOLBABY Home Electric Treadmill, Indoor, Sports Fitness Treadmill, Single Function Treadmill, Fitness Equipment, Come With iPad Stand, Black', 'COOLBABY Home Electric Treadmill, Indoor, Sports Fitness Treadmill, Single Function Treadmill, Fitness Equipment, Come With iPad Stand, Black', 'COOLBABY, Home, Electric, Treadmill,, Indoor,, Sports, Fitness, Treadmill,, Single, Function, Treadmill,, Fitness, Equipment,, Come, With, iPad, Stand,, Black', 0, NULL, 'abc.com', 2, 1532, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/fvFzWTmpcUW82g4UnlnG.jpg', 1, 1, NULL, NULL),
(62, NULL, 'Vehicle Parts and Accessories', 'vehicle-parts-and-accessories', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and Accessories</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and Accessories</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and AccessoriesVehicle Parts and AccessoriesVehicle Parts and Accessories</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and AccessoriesVehicle Parts and AccessoriesVehicle Parts and AccessoriesVehicle Parts and Accessories</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and Accessories</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Vehicle Parts and Accessories</span></p>', '', 'Vehicle Parts and Accessories', 'Vehicle Parts and Accessories', 'Vehicle Parts and Accessories', 'Vehicle, Parts, and, Accessories', 0, NULL, 'Vehicle Parts and Accessories', 2, 500, 'pc', 1, 1, 1, 0, 'https://www.amazon.com/Roche-Posay-Toleriane-Double-Repair-Moisturizer/dp/B01N9SPQHQ', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/dJOsZbzXcLv5PmnRRtpM.jpg', 1, 1, NULL, NULL),
(63, NULL, 'Exterior Accessories', 'exterior-accessories', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Exterior Accessories</span></p>', '', 'Exterior Accessories', 'Exterior Accessories', 'Exterior Accessories', 'Exterior, Accessories', 0, NULL, 'Exterior Accessories', 2, 12, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Xe6d3fiMWzA7BHZmDPMo.jpg', 1, 1, NULL, NULL),
(64, NULL, 'Interior Accessories', 'interior-accessories', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Interior Accessories&nbsp;</span></p>', '', 'Interior Accessories', 'Interior Accessories', 'Interior Accessories', 'Interior, Accessories,', 0, NULL, 'Interior Accessories', 2, 10, '', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/rs3i1rXT3BmFx42kbGl2.jpg', 1, 1, NULL, NULL),
(65, NULL, 'Car Care and Detailing', 'car-care-and-detailing', '<ul><li>Car Care and Detailing</li></ul>', '', 'Car Care and Detailing', 'Car Care and Detailing', 'Car Care and Detailing', 'Car, Care, and, Detailing,', 0, NULL, 'Car Care and Detailing', 2, 52, 'pc', 1, 1, 1, 0, '', 123.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/o7SUUXEqm1qXVCNIYkIA.jpg', 1, 1, NULL, NULL),
(66, NULL, 'Business & Finance books', 'business-finance-books', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Business &amp; Finance books</span></p>', '', 'Business & Finance books', 'Business & Finance books', 'Business & Finance books', 'Business, &, Finance, books', 0, NULL, 'Business & Finance books', 2, 1234, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/EzNivRimRIMCXTFG9tth.jpg', 1, 1, NULL, NULL),
(67, NULL, 'Science & Nature books', 'science-nature-books', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Science &amp; Nature books Science &amp; Nature booksScience &amp; Nature booksScience &amp; Nature books Science &amp; Nature books Science &amp; Nature books Science &amp; Nature books</span></p>', '', 'Science & Nature books', 'Science & Nature books', 'Science & Nature books', 'Science, &, Nature, books', 0, NULL, 'Science & Nature books', 2, 645, 'pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/7EsmnkLjHdpoE5zsYLun.jpg', 1, 1, NULL, NULL),
(68, NULL, 'Nike DC3728 Revolution 6 mens Shoes', 'nike-dc3728-revolution-6-mens-shoes', '<p>Item Category: Shoes Item Trademark: Nike manufacturer: Nike</p>', '', 'Nike DC3728 Revolution 6 mens Shoes', 'Nike DC3728 Revolution 6 mens Shoes', 'Nike DC3728 Revolution 6 mens Shoes', 'Nike, DC3728, Revolution, 6, mens, Shoes', 0, NULL, 'abc.com', 2, 632, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/FfO6CZ49sH2D56hs0owh.jpg', 1, 1, NULL, NULL),
(69, NULL, 'Children\'s Books', 'children-s-books', '<ul><li>Children\'s Books Children\'s Books Children\'s Books Children\'s Books Children\'s Books Children\'s Books Children\'s Books</li><li>Children\'s Books</li><li>Children\'s Books</li><li>Children\'s Books</li><li>Children\'s Books</li><li>Children\'s Books</li><li>Children\'s Books</li></ul>', '', 'Children\'s Books', 'Children\'s Books', 'Children\'s Books', 'Children\'s, Books,', 0, NULL, 'Children\'s Books', 2, 65, 'pc', 10, 1, 1, 0, '', 10.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/yamLghQdzGopHvgu0rnx.jpg', 1, 1, NULL, NULL),
(70, NULL, 'Paper and Notebooks', 'paper-and-notebooks', '<ul><li>Paper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and NotebooksPaper and Notebooks</li></ul>', '', 'Paper and Notebooks', 'Paper and Notebooks', 'Paper and Notebooks', 'Paper, and, Notebooks,', 0, NULL, 'Paper and Notebooks', 2, 465, 'pc', 1, 1, 1, 0, '', 1565.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/fNzedrIN2227fHcAj4At.jpg', 1, 1, NULL, NULL),
(71, NULL, 'MIRACLE FITNESS ALL-IN-ONE MULTI FUNCTIONAL MACHINE WITH SMITH CABLE CROSSOVER 138LBS (63KG) STACK WEIGHTS HOME GYM', 'miracle-fitness-all-in-one-multi-functional-machine-with-smith-cable-crossover-138lbs-63kg-stack-weights-home-gym', '<ul><li><span style=\"color:rgb(15,17,17);\">Number of weights 16 plates (4.5 kg each) Weight cover Vinyl</span></li><li><span style=\"color:rgb(15,17,17);\">Weight protection Protection shroud</span></li><li><span style=\"color:rgb(15,17,17);\">Frame 50 x 70 x 1.5 mm</span></li><li><span style=\"color:rgb(15,17,17);\">Cables Aircraft type, with 900 kg tension capacity Training stations Chest (Presses, Pec Deck)</span></li></ul>', '', 'MIRACLE FITNESS ALL-IN-ONE MULTI FUNCTIONAL MACHINE WITH SMITH CABLE CROSSOVER 138LBS (63KG) STACK WEIGHTS HOME GYM', 'MIRACLE FITNESS ALL-IN-ONE MULTI FUNCTIONAL MACHINE WITH SMITH CABLE CROSSOVER 138LBS (63KG) STACK WEIGHTS HOME GYM', 'MIRACLE FITNESS ALL-IN-ONE MULTI FUNCTIONAL MACHINE WITH SMITH CABLE CROSSOVER 138LBS (63KG) STACK WEIGHTS HOME GYM', 'MIRACLE, FITNESS, ALL-IN-ONE, MULTI, FUNCTIONAL, MACHINE, WITH, SMITH, CABLE, CROSSOVER, 138LBS, (63KG), STACK, WEIGHTS, HOME, GYM', 0, NULL, 'abc.com', 2, 5785, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/RxpAVKySoCDhUuuposf1.jpg', 1, 1, NULL, NULL),
(72, NULL, 'Basketball Sports themed party decoration pull flag cake card balloon set layout supplies for Kids Teens Girls Boys Men Party (Decoration (40 pcs))', 'basketball-sports-themed-party-decoration-pull-flag-cake-card-balloon-set-layout-supplies-for-kids-teens-girls-boys-men-party-decoration-40-pcs-', '<ul><li><span style=\"color:rgb(15,17,17);\">Basket Ball Foil 4d Mirror</span></li></ul>', '', 'Basketball Sports themed party decoration pull flag cake card balloon set layout supplies for Kids Teens Girls Boys Men Party (Decoration (40 pcs))', 'Basketball Sports themed party decoration pull flag cake card balloon set layout supplies for Kids Teens Girls Boys Men Party (Decoration (40 pcs))', 'Basketball Sports themed party decoration pull flag cake card balloon set layout supplies for Kids Teens Girls Boys Men Party (Decoration (40 pcs))', 'Basketball, Sports, themed, party, decoration, pull, flag, cake, card, balloon, set, layout, supplies, for, Kids, Teens, Girls, Boys, Men, Party, (Decoration, (40, pcs))', 0, NULL, 'abc.com', 2, 39, '40 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/npSPXwmgkfexok4lsOXP.jpg', 1, 1, NULL, NULL),
(73, NULL, 'Smart Home and Tech-Integrated Furniture', 'smart-home-and-tech-integrated-furniture', '<ul><li>Smart Home and Tech-Integrated Furniture Smart Home and Tech-Integrated FurnitureSmart Home and Tech-Integrated Furniture Smart Home and Tech-Integrated Furniture Smart Home and Tech-Integrated Furniture Smart Home and Tech-Integrated Furniture</li><li>Smart Home and Tech-Integrated Furniture</li><li>Smart Home and Tech-Integrated Furniture<ul><li>Smart Home and Tech-Integrated FurnitureSmart Home and Tech-Integrated FurnitureSmart Home and Tech-Integrated Furniture</li></ul></li></ul>', '', 'Smart Home and Tech-Integrated Furniture', 'Smart Home and Tech-Integrated Furniture', 'Smart Home and Tech-Integrated Furniture', 'Smart, Home, and, Tech-Integrated, Furniture,', 0, NULL, 'Smart Home and Tech-Integrated Furniture', 2, 120, 'Pc', 1, 1, 1, 0, '', 12.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/InTklVR8QhP1b1Ddvn0Z.jpg', 1, 1, NULL, NULL),
(74, NULL, 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'hydro-flask---water-bottle-621-ml-21-oz-vacuum-insulated-stainless-steel-with-leak-proof-flex-cap-and-powder-coat-bpa-free-standard-mouth-pacific', '<ul><li><span style=\"color:rgb(15,17,17);\">Enjoy optimum drinking temperature for hours: Our TempShield double wall, vacuum insulated technology guards the temperature of your drink. It also ensures no condensation or heat transfer to the outside of the bottle. It keeps beverages cold up to 24 hours and hot up to 12 hours when using the lid</span></li><li><span style=\"color:rgb(15,17,17);\">Solid and eco-friendly carry-on water bottle for any kind of exercises: All of our bottles are made with pro-grade stainless steel, a robust metal known for its resistance and purity. It also protects against the transfer of flavours – and the durable construction stands up for whatever life brings. It\'s easy to clean and both the bottle and its lid are dishwasher safe</span></li><li><span style=\"color:rgb(15,17,17);\">Leak proof BPA-Free water bottle: This water bottle comes with Standard Mouth Insulated Leak Proof Flex Cap for even better temperature control. The bottle is also compatible with Standard Mouth Insulated Sport Cap.</span></li><li><span style=\"color:rgb(15,17,17);\">Enjoy an immersive drinking experience anywhere: Whether you’re heading to yoga, biking, hiking or going to the office, you can easily take your refreshment with you in this Insulated Standard Mouth Water Bottle. Our Color Last powder coat means an easy-grip, sweat-free, and extra-durable bottle that you can take anywhere</span></li><li><span style=\"color:rgb(15,17,17);\">100% Customer and product satisfaction warranty: We stand behind our products and have great faith in our products. HYDRO FLASK is committed to high standards of durable and robust materials. HYDRO FLASK guarantees this product with a limited lifetime warranty against manufacturer defects</span></li></ul>', '', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO, FLASK, -, Water, Bottle, 621, ml, (21, oz), Vacuum, Insulated, Stainless, Steel, with, Leak, Proof, Flex, Cap, and, Powder, Coat, BPA-Free, Standard, Mouth, Pacific', 0, NULL, 'abc.com', 2, 151, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 0, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/3BPBisDgQCgXdspKxo9J.jpg', 1, 1, NULL, '2023-10-30 04:31:51'),
(75, NULL, 'DIY and Customizable Furniture', 'diy-and-customizable-furniture', '<ul><li>DIY and Customizable Furniture</li><li>DIY and Customizable Furniture</li><li>DIY and Customizable Furniture</li><li>DIY and Customizable Furniture</li><li>DIY and Customizable Furniture</li><li>&nbsp;</li></ul>', '', 'DIY and Customizable Furniture', 'DIY and Customizable Furniture', 'vDIY and Customizable Furniture', 'DIY, and, Customizable, Furniture,', 0, NULL, 'DIY and Customizable Furniture', 2, 120, 'pc', 596, 1, 1, 0, '', 25.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/cLGDllGHfn8mpklML3du.jpg', 1, 1, NULL, NULL),
(76, NULL, 'Small Space and Apartment-Friendly Furniture', 'small-space-and-apartment-friendly-furniture', '<ul><li>Small Space and Apartment-Friendly Furniture</li></ul>', '', 'Small Space and Apartment-Friendly Furniture', 'Small Space and Apartment-Friendly Furniture', 'Small Space and Apartment-Friendly Furniture', 'Small, Space, and, Apartment-Friendly, Furniture,', 0, NULL, 'Small Space and Apartment-Friendly Furniture', 2, 120, 'Pc', 1, 1, 1, 0, '', 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Mqzn2h74QACy2CK1igM1.jpg', 1, 1, NULL, NULL),
(77, NULL, 'SoftTouch Ultimate Grip Felt pads for Wooden Furniture (4 pieces) - Walnut Brown, 1\" Rou', 'softtouch-ultimate-grip-felt-pads-for-wooden-furniture-4-pieces---walnut-brown-1-rou', '<h2 style=\"margin-left:0px;\">SoftTouch Ultimate Grip Felt pads for Wooden Furniture (4 pieces) - Walnut Brown, 1\" Rou</h2>', '', 'SoftTouch Ultimate Grip Felt pads for Wooden Furniture (4 pieces) - Walnut Brown, 1\" Rou', 'SoftTouch Ultimate Grip Felt pads for Wooden Furniture (4 pieces) - Walnut Brown, 1\" Rou', 'SoftTouch Ultimate Grip Felt pads for Wooden Furniture (4 pieces) - Walnut Brown, 1\" Rou', 'SoftTouch, Ultimate, Grip, Felt, pads, for, Wooden, Furniture, (4, pieces), -, Walnut, Brown,, 1\", Rou', 0, NULL, '', 2, 56, '1', 1, 1, 1, 0, '', 10.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/rWOC7bNLtpIDRDkvUTZ7.jpg', 1, 1, NULL, NULL),
(78, NULL, 'Seasonal and Holiday Decor', 'seasonal-and-holiday-decor', '<p>v<span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Seasonal and Holiday Decor</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Seasonal and Holiday Decor</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Seasonal and Holiday Decor</span></p><p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Seasonal and Holiday DecorSeasonal and Holiday DecorSeasonal and Holiday Decor</span></p>', '', 'Seasonal and Holiday Decor', 'Seasonal and Holiday Decor', 'Seasonal and Holiday Decor', 'Seasonal, and, Holiday, Decor', 0, NULL, 'Seasonal and Holiday Decor', 2, 230, 'Pc', 1632, 1, 1, 0, '', 20.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/tZfjaFEQLlhN15BEXSoj.jpg', 1, 1, NULL, NULL),
(79, NULL, 'Seasonal and Holiday Decor', 'seasonal-and-holiday-decor', '<p><span style=\"background-color:rgb(240,240,240);color:rgb(76,82,88);\">Seasonal and Holiday Decor</span></p>', '', 'Seasonal and Holiday Decor', 'Seasonal and Holiday Decor', 'Seasonal and Holiday Decor', 'Seasonal, and, Holiday, Decor', 0, NULL, 'Seasonal and Holiday Decor', 2, 120, 'pc', 1654, 1, 1, 0, '', 352.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/EdZ7JgEg4cvIeGIw72q2.jpg', 1, 1, NULL, NULL),
(80, NULL, 'Strauss Cycling Helmet', 'strauss-cycling-helmet', '<ul><li><span style=\"color:rgb(15,17,17);\">HIGH RESISTANT MATERIAL : Special material impact resistance: This Bicycle / bike helmet uses high-density, durable and tough PVC, PC &amp; EPS foam. The Integrated molding with superior technology is helpful to decrease the impact force and protects the rider\'s head during crash</span></li><li><span style=\"color:rgb(15,17,17);\">ADJUSTABLE - This adult cycling helmet comes with a standard size, equipped with the easy-use dial system and side straps makes this nutcase helmet adjustable to different head sizes</span></li><li><span style=\"color:rgb(15,17,17);\">LIGHTWEIGHT- This biking helmet is made of lightweight material; the inner pad uses breathable material for a comfort wear.</span></li><li><span style=\"color:rgb(15,17,17);\">MULTIPLE SPORTS USE : This helmet can be used for multiple sports like for Road cycling, Mountain Biking, Skating, for Skate Boarding and many other uses.</span></li></ul>', '', 'Strauss Cycling Helmet', 'Strauss Cycling Helmet', 'Strauss Cycling Helmet', 'Strauss, Cycling, Helmet', 0, NULL, 'abc.com', 2, 120, '', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/a9npioeRhMpeWM4WAzv5.jpg', 1, 1, NULL, NULL),
(81, NULL, 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'hydro-flask---water-bottle-621-ml-21-oz-vacuum-insulated-stainless-steel-with-leak-proof-flex-cap-and-powder-coat-bpa-free-standard-mouth-pacific', '<ul><li><span style=\"color:rgb(15,17,17);\">Enjoy optimum drinking temperature for hours: Our TempShield double wall, vacuum insulated technology guards the temperature of your drink. It also ensures no condensation or heat transfer to the outside of the bottle. It keeps beverages cold up to 24 hours and hot up to 12 hours when using the lid</span></li><li><span style=\"color:rgb(15,17,17);\">Solid and eco-friendly carry-on water bottle for any kind of exercises: All of our bottles are made with pro-grade stainless steel, a robust metal known for its resistance and purity. It also protects against the transfer of flavours – and the durable construction stands up for whatever life brings. It\'s easy to clean and both the bottle and its lid are dishwasher safe</span></li><li><span style=\"color:rgb(15,17,17);\">Leak proof BPA-Free water bottle: This water bottle comes with Standard Mouth Insulated Leak Proof Flex Cap for even better temperature control. The bottle is also compatible with Standard Mouth Insulated Sport Cap.</span></li><li><span style=\"color:rgb(15,17,17);\">Enjoy an immersive drinking experience anywhere: Whether you’re heading to yoga, biking, hiking or going to the office, you can easily take your refreshment with you in this Insulated Standard Mouth Water Bottle. Our Color Last powder coat means an easy-grip, sweat-free, and extra-durable bottle that you can take anywhere</span></li><li><span style=\"color:rgb(15,17,17);\">100% Customer and product satisfaction warranty: We stand behind our products and have great faith in our products. HYDRO FLASK is committed to high standards of durable and robust materials. HYDRO FLASK guarantees this product with a limited lifetime warranty against manufacturer defects</span></li></ul>', '', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO FLASK - Water Bottle 621 ml (21 oz) Vacuum Insulated Stainless Steel with Leak Proof Flex Cap and Powder Coat BPA-Free Standard Mouth Pacific', 'HYDRO, FLASK, -, Water, Bottle, 621, ml, (21, oz), Vacuum, Insulated, Stainless, Steel, with, Leak, Proof, Flex, Cap, and, Powder, Coat, BPA-Free, Standard, Mouth, Pacific', 0, NULL, 'abc.com', 2, 151, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/dfTR9ICi75z9y3ekTsYO.jpg', 1, 1, NULL, NULL),
(82, NULL, 'Strauss Cycling Helmet', 'strauss-cycling-helmet', '<ul><li><span style=\"color:rgb(15,17,17);\">HIGH RESISTANT MATERIAL : Special material impact resistance: This Bicycle / bike helmet uses high-density, durable and tough PVC, PC &amp; EPS foam. The Integrated molding with superior technology is helpful to decrease the impact force and protects the rider\'s head during crash</span></li><li><span style=\"color:rgb(15,17,17);\">ADJUSTABLE - This adult cycling helmet comes with a standard size, equipped with the easy-use dial system and side straps makes this nutcase helmet adjustable to different head sizes</span></li><li><span style=\"color:rgb(15,17,17);\">LIGHTWEIGHT- This biking helmet is made of lightweight material; the inner pad uses breathable material for a comfort wear.</span></li><li><span style=\"color:rgb(15,17,17);\">MULTIPLE SPORTS USE : This helmet can be used for multiple sports like for Road cycling, Mountain Biking, Skating, for Skate Boarding and many other uses.</span></li></ul>', '', 'Strauss Cycling Helmet', 'Strauss Cycling Helmet', 'Strauss Cycling Helmet', 'Strauss, Cycling, Helmet', 0, NULL, 'abc.com', 2, 120, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/n0AKr03mRfs66f0f6J3V.jpg', 1, 1, NULL, NULL),
(83, NULL, 'NEEWER 14.2”/36cm Flexible Holding Arm, Camera Mount Stand Overhead Extension Arm with 360° Swivel Ball Head and Adjustable Clamp for DSLR & Mirrorless Camera, Phone, LED Video Light, Webcam, CR221A', 'neewer-14-2-36cm-flexible-holding-arm-camera-mount-stand-overhead-extension-arm-with-360-swivel-ball-head-and-adjustable-clamp-for-dslr-mirrorless-camera-phone-led-video-light-webcam-cr221a', '<ul><li><span style=\"color:rgb(15,17,17);\">【Auxiliary Holding Arm】 Connected to your desk mounted stand for overhead lighting, microphone holding, flat lay photography, and video conferencing, this 14.2” (36cm) horizontal boom arm from NEEWER can do it all. Get the arm and give your filming setup a new mounting possibility for extra accessories</span></li><li><span style=\"color:rgb(15,17,17);\">【All Angle Adjustment】 A 360° rotatable ball head with 90° tilt movement allows you to direct your device at any angle. The 1/4” screw is compatible with most DSLR &amp; mirrorless cameras, LED video lights, webcams, phone holders, microphone holder, and more</span></li><li><span style=\"color:rgb(15,17,17);\">【Secure Easy Clamping】 Use the adjustable, rubber padded oval clamp to fasten the boom arm to a center column, pipe, tube, or rod 0.9”/22m to 1.1”/28mm in diameter with reliable security. (Note: The arm is not recommended to clamp on the top section of your stand)</span></li><li><span style=\"color:rgb(15,17,17);\">【Robust Construction】 Engineered with black anodized aluminum alloy, the boom arm is lightweight yet solid, and able to support a maximum load of 2.2lb (1kg)</span></li><li><span style=\"color:rgb(15,17,17);\">【Versatile Application】 An ideal mounting solution for overhead lighting, microphone holding, flat lay photography, product photography, vlogging, video conferencing, live streaming, remote working, and online teaching</span></li></ul>', '', 'NEEWER 14.2”/36cm Flexible Holding Arm, Camera Mount Stand Overhead Extension Arm with 360° Swivel Ball Head and Adjustable Clamp for DSLR & Mirrorless Camera, Phone, LED Video Light, Webcam, CR221A', 'NEEWER 14.2”/36cm Flexible Holding Arm, Camera Mount Stand Overhead Extension Arm with 360° Swivel Ball Head and Adjustable Clamp for DSLR & Mirrorless Camera, Phone, LED Video Light, Webcam, CR221A', 'NEEWER 14.2”/36cm Flexible Holding Arm, Camera Mount Stand Overhead Extension Arm with 360° Swivel Ball Head and Adjustable Clamp for DSLR & Mirrorless Camera, Phone, LED Video Light, Webcam, CR221A', 'NEEWER, 14.2”/36cm, Flexible, Holding, Arm,, Camera, Mount, Stand, Overhead, Extension, Arm, with, 360°, Swivel, Ball, Head, and, Adjustable, Clamp, for, DSLR, &, Mirrorless, Camera,, Phone,, LED, Video, Light,, Webcam,, CR221A', 0, NULL, 'abc.com', 2, 118, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/Dj3JqqQ1kihECkfIkoB8.jpg', 1, 1, NULL, NULL),
(84, NULL, 'Adobe Creative Cloud All APP ,32/64 BiT , Multi language, Download, APP, Region free, 1 Year Subscription Window/Mac', 'adobe-creative-cloud-all-app-32-64-bit-multi-language-download-app-region-free-1-year-subscription-window-mac', '<ul><li><span style=\"color:rgb(15,17,17);\">You will get only the serial number via buyer/seller message in amazon.No CD will covered for this item</span></li></ul>', '', 'Adobe Creative Cloud All APP ,32/64 BiT , Multi language, Download, APP, Region free, 1 Year Subscription Window/Mac', 'Adobe Creative Cloud All APP ,32/64 BiT , Multi language, Download, APP, Region free, 1 Year Subscription Window/Mac', 'Adobe Creative Cloud All APP ,32/64 BiT , Multi language, Download, APP, Region free, 1 Year Subscription Window/Mac', 'Adobe, Creative, Cloud, All, APP, ,32/64, BiT, ,, Multi, language,, Download,, APP,, Region, free,, 1, Year, Subscription, Window/Mac', 0, NULL, 'abc.com', 2, 999, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/9DdA0hNaXh73kCOxtjP0.jpg', 1, 1, NULL, NULL),
(85, NULL, '9x12-inch Black Frame - Made to Display Pictures 6x8-inches with Matte or 9x12-inches Without Matte - Camera Photography Frame', '9x12-inch-black-frame---made-to-display-pictures-6x8-inches-with-matte-or-9x12-inches-without-matte---camera-photography-frame', '<ul><li><span style=\"color:rgb(15,17,17);\">Design: Black 9x12 inch picture frame, perfect for your cherished memories; frame includes white beveled mat and hanging hardware for hassle-free display in both horizontal and vertical formats to hang flat against the wall</span></li><li><span style=\"color:rgb(15,17,17);\">Material: Wood frame with lead free tempered shatter-resistant glass that gives a clear view of your photo</span></li><li><span style=\"color:rgb(15,17,17);\">Quality: Durable, gallery-style frame; the frame\'s front has clear glass and a sturdy backboard to keep your photo in place</span></li><li><span style=\"color:rgb(15,17,17);\">Use and Display: Perfect for 6x8 inch photos with mat or 9x12 without mat; the actual mat opening is 5.5x7.5 inches</span></li><li><span style=\"color:rgb(15,17,17);\">Protective Packaging: Americanflat developed exclusive proprietary packaging that helps ensure safe delivery of fragile items; order with confidence, click and add to cart today</span></li></ul>', '', '9x12-inch Black Frame - Made to Display Pictures 6x8-inches with Matte or 9x12-inches Without Matte - Camera Photography Frame', '9x12-inch Black Frame - Made to Display Pictures 6x8-inches with Matte or 9x12-inches Without Matte - Camera Photography Frame', '9x12-inch Black Frame - Made to Display Pictures 6x8-inches with Matte or 9x12-inches Without Matte - Camera Photography Frame', '9x12-inch, Black, Frame, -, Made, to, Display, Pictures, 6x8-inches, with, Matte, or, 9x12-inches, Without, Matte, -, Camera, Photography, Frame', 0, NULL, 'abc.ccom', 2, 87, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/4K1F4IHD6YywBWKfRWZG.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(86, NULL, 'Photography Demystified - For Kids!: A Kid\'s Guide and Parents Resource to Fun and Learning Photography Together Paperback – 18', 'photography-demystified---for-kids-a-kid-s-guide-and-parents-resource-to-fun-and-learning-photography-together-paperback-18', '<p style=\"margin-left:0px;\">\"David McKay has hit another home run! Photography Demystified for Kids is destined to become a classic in the photography world! He has dozens of fun projects for parents (and grandparents) to enjoy with the younger generation. My favorite one is finding the letters of the alphabet in nature. I especially love that he included using smartphones as a tool because that is what will initially appeal to children. I think it is a nice bridge to them wanting to learn on a camera. What a fun way to spend time with your kids and get them outside!\"</p><p style=\"margin-left:0px;\">\"What a clever and powerful product. I highly recommend buying it and sharing it with as many kids as you can. This is a well-written, timely, and wonderful gift you will give to both yourself and others. The book takes a topic that can sometimes be overpowering for even adults and teaches in a way that guides and entices the young reader. The writing is clear and the examples very well thought out, but I sense the greatest strength of the book comes in how well it communicates with children. Here\'s how I know: I read the book and then decided to put it into practice testing it out with the neighborhood children.<br><br>The impact was immediate as the kids read, asked questions, played, experimented and compared their own work. Soon they were teaching each other their new \"tricks.\" Parents soon came over to see what was happening, and what was intended to be a brief experiment, I suspect may well become a neighborhood photography circle of sorts -- one where parents, siblings, and friends are all invited\".</p><p style=\"margin-left:0px;\">\"I have loved every one of David McKay\'s books and this one is no different. Cover to cover this book will either assist you in introducing photography to your kids or help bolster what they may already know. It\'s a great book to work through with them, or depending on their age, they can easily work through it on their own. Such a great addition to his other photography books!\"</p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\">\"As a homeschool parent, I am always looking for resources that I can share with my kids that are technically strong, but written with kids in mind. This book does just that. Whether my child picks up the book and investigates a concept or I use it as a resource for teaching, it clearly defines photography concepts and encourages experimentation. I am happy to expose my kids to the world of photography!\"</p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\">\"David McKay once again hits a home run. Photography Demystified for Kids does an amazing job of bringing the passion and know how of photography to kids. It has allowed me to get my son more involved in understanding what I\'m thinking or why I\'m doing something a certain way. My son loves to take photos with my old DSLR and my iPhone. We love to compare our shots and see what we captured.\"</p><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\">\"This book is awesome! It\'s a great combination of tips of how to have fun with kids using photography as well as great photopgraphy educational lessons. I particularly like the tips for \"projects\" we can do together with our kids whilst exploring &amp; having fun. It is also inspirational for the kids - a great way to inspire child to see the beauty in all that surround us.\"</p>', '', 'Photography Demystified - For Kids!: A Kid\'s Guide and Parents Resource to Fun and Learning Photography Together Paperback – 18', 'Photography Demystified - For Kids!: A Kid\'s Guide and Parents Resource to Fun and Learning Photography Together Paperback – 18Photography Demystified - For Kids!: A Kid\'s Guide and Parents Resource to Fun and Learning Photography Together Paperback – 18', 'Photography Demystified - For Kids!: A Kid\'s Guide and Parents Resource to Fun and Learning Photography Together Paperback – 18', 'Photography, Demystified, -, For, Kids!:, A, Kid\'s, Guide, and, Parents, Resource, to, Fun, and, Learning, Photography, Together, Paperback, –, 18', 0, NULL, 'abc.com', 2, 105, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/SvZP4qcffCgvKDj2y6cF.jpg', 1, 1, NULL, NULL),
(87, NULL, 'Cyber Clean Complete Camera Cleaner - Yellow', 'cyber-clean-complete-camera-cleaner---yellow', '<ul><li><span style=\"color:rgb(15,17,17);\">Cyber Clean with its unique cleaning and disinfecting effect</span></li><li><span style=\"color:rgb(15,17,17);\">Compact size, fits in all camera cases, ideal for travelling</span></li><li><span style=\"color:rgb(15,17,17);\">Highly professional and attractive design</span></li><li><span style=\"color:rgb(15,17,17);\">UNIQUE All-in-one Product - No other or similar item on the market</span></li><li><span style=\"color:rgb(15,17,17);\">1 x Cyber Clean Camera Kit</span></li></ul>', '', 'Cyber Clean Complete Camera Cleaner - Yellow', 'Cyber Clean Complete Camera Cleaner - Yellow', 'Cyber Clean Complete Camera Cleaner - Yellow', 'Cyber, Clean, Complete, Camera, Cleaner, -, Yellow', 0, NULL, 'abc.com', 2, 61, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 1, 0, 10.00000, '5', 2, '5', 1, '/backend/files/A1z3sDTNYCLWzd5RrTEM.jpg', 1, 1, NULL, NULL),
(88, NULL, 'Environmental Control', 'environmental-control', '<p>Passive solutions including the applications of natural ventilations, designing the three building components, the roof ceiling, the wall and the floor by applying sustainable and passive solutions. Also, local building materials, roof and wall insulation. Designing the indoor environment and designing the outdoor environment. In addition, the second part of the book will discuss the technical solutions in applying the HVAC system, safety procedures, energy efficiency, and sustainability in buildings including the global assessment methods like LEED, BREEAM, GSAS, ESTIDAMA and Green Star Rating System.The Third part of the book includes student scientific researches during this course that I teach for 15 years, those papers were published in international journals.</p><p>&nbsp;</p><p><br>&nbsp;</p>', '', 'Environmental Control', 'Environmental Control', 'Environmental Control', 'Environmental, Control', 0, NULL, 'abc.com', 2, 370, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/RQbfBLtGTFaIRgbW8You.jpg', 1, 1, NULL, NULL),
(89, NULL, 'Basic Engineering Circuit Analysis Loose Leaf', 'basic-engineering-circuit-analysis-loose-leaf', '<p style=\"margin-left:0px;\">J. David Irwin is an American engineering educator and author of popular textbooks in electrical engineering and related areas. He is the Earle C. Williams Eminent Scholar and former Electrical and Computer Engineering Department Head at Auburn University.</p><p style=\"margin-left:0px;\">R. Mark Nelms is the author of Basic Engineering Circuit Analysis, 12th Edition, published by Wiley.</p><p>&nbsp;</p><p><br>&nbsp;</p>', '', 'Basic Engineering Circuit Analysis Loose Leaf', 'Basic Engineering Circuit Analysis Loose Leaf', 'Basic Engineering Circuit Analysis Loose Leaf', 'Basic, Engineering, Circuit, Analysis, Loose, Leaf', 0, NULL, 'abc.com', 2, 899, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/zkyfNd8SyP9E7NvLkjOW.jpg', 1, 1, NULL, NULL),
(90, NULL, 'Drywall Anchor Kit, 25pcs Concrete Anchor Screw Set Wall Plug and Screw with Plastic Expansion Tube Plasterboard Fasteners Hardwares Wall Fixing Screws, 8 * 40mm', 'drywall-anchor-kit-25pcs-concrete-anchor-screw-set-wall-plug-and-screw-with-plastic-expansion-tube-plasterboard-fasteners-hardwares-wall-fixing-screws-8-40mm', '<ul><li><span style=\"color:rgb(15,17,17);\">Ease of Use: Drill holes in the wall, plug the plastic expansion tube into the holes, and screw the screws fasteners into the plastic expansion tube</span></li><li><span style=\"color:rgb(15,17,17);\">Package Include: 25 sets of screws and plugs set anchor kits in sizes 8 x 40mm/0.3 x 1.5 inches, it can handle almost any project</span></li><li><span style=\"color:rgb(15,17,17);\">Metal Anchor Screws: The concrete screw is made of iron, which is durable and impact resistant, not easily deformed, perfect for using in in concrete and brick</span></li><li><span style=\"color:rgb(15,17,17);\">Plastic Anchors: Plastic material anchors, no rust, corrosion resistance, anti-aging, good toughness and can be easily removed.</span></li><li><span style=\"color:rgb(15,17,17);\">Application: Plasterboard wall anchor plugs with screws self drilling drywall fasteners are suitable for small projects, can be used to install and fix curtains, picture frames, shelves, woodboard, plasterboard, concrete, drywall, hollow walls</span></li></ul>', '', 'Drywall Anchor Kit, 25pcs Concrete Anchor Screw Set Wall Plug and Screw with Plastic Expansion Tube Plasterboard Fasteners Hardwares Wall Fixing Screws, 8 * 40mm', 'Drywall Anchor Kit, 25pcs Concrete Anchor Screw Set Wall Plug and Screw with Plastic Expansion Tube Plasterboard Fasteners Hardwares Wall Fixing Screws, 8 * 40mm', 'Drywall Anchor Kit, 25pcs Concrete Anchor Screw Set Wall Plug and Screw with Plastic Expansion Tube Plasterboard Fasteners Hardwares Wall Fixing Screws, 8 * 40mm', 'Drywall, Anchor, Kit,, 25pcs, Concrete, Anchor, Screw, Set, Wall, Plug, and, Screw, with, Plastic, Expansion, Tube, Plasterboard, Fasteners, Hardwares, Wall, Fixing, Screws,, 8, *, 40mm', 0, NULL, 'abc.com', 2, 26, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/e1ghSMNfxHEXemKFUbhX.jpg', 1, 1, NULL, NULL),
(91, NULL, 'Walter 53L207 Spout for 20L Square Plastic Pail - Plastic Faucet for Easy Transfer of Liquid. Janitorial and Sanitation Supplies', 'walter-53l207-spout-for-20l-square-plastic-pail---plastic-faucet-for-easy-transfer-of-liquid-janitorial-and-sanitation-supplies', '<ul><li><span style=\"color:rgb(15,17,17);\">Plastic Pail Spout: designed for fast and efficient liquid transfer, this pail spout is ideal for industrial use</span></li><li><span style=\"color:rgb(15,17,17);\">Usage: this plastic faucet allows you to fill 500ml trigger sprayer bottles or any other larger containers directly without much hassle. It should not be used with solvent or petroleum products</span></li><li><span style=\"color:rgb(15,17,17);\">Easy-to-Use: with the special adapter for re-filling sprayer bottles, this faucet can be easily attached to the pail for smooth transfer of liquid. The innovative design ensures quick dispensing speed</span></li><li><span style=\"color:rgb(15,17,17);\">Specifications: drum spout measures 4-51/64 in. (L), 3-13/64 in. (H), 4-51/64 in. (W)</span></li><li><span style=\"color:rgb(15,17,17);\">Liquid Pourer: the plastic spout ensures no liquid is wasted but gets utilized in an efficient manner. It allows you to buy in bulk quantities for greater cost efficiency</span></li></ul>', '', 'Walter 53L207 Spout for 20L Square Plastic Pail - Plastic Faucet for Easy Transfer of Liquid. Janitorial and Sanitation Supplies', 'Walter 53L207 Spout for 20L Square Plastic Pail - Plastic Faucet for Easy Transfer of Liquid. Janitorial and Sanitation Supplies', 'Walter 53L207 Spout for 20L Square Plastic Pail - Plastic Faucet for Easy Transfer of Liquid. Janitorial and Sanitation Supplies', 'Walter, 53L207, Spout, for, 20L, Square, Plastic, Pail, -, Plastic, Faucet, for, Easy, Transfer, of, Liquid., Janitorial, and, Sanitation, Supplies', 0, NULL, 'abc.com', 2, 279, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/9ygJP8Lxfi2qzP0UIxF6.jpg', 1, 1, NULL, NULL),
(92, NULL, 'HYLAN Hydroponic System,Vegetable Frame Kit Pipe Bracket Equipment Hydroponics System Balcony Garden Vegetable Planting Tools for Vegetables Fruits (72 Pot Medium)', 'hylan-hydroponic-system-vegetable-frame-kit-pipe-bracket-equipment-hydroponics-system-balcony-garden-vegetable-planting-tools-for-vegetables-fruits-72-pot-medium-', '<ul><li><span style=\"color:rgb(15,17,17);\">Being close to nature, you can purify the air and make full use of space to keep the crops out of the soil.</span></li><li><span style=\"color:rgb(15,17,17);\">HYLAN NEW HYDROPONIC SYSTEM using 10cm large diameter tube, enough to grow most of the vegetables.</span></li><li><span style=\"color:rgb(15,17,17);\">Come with water pump timer allows the pump to work for 5 minutes every 30 minutes to achieve NFT,make the pump more durable,save nutrient solution and make the vegetables grow better!</span></li><li><span style=\"color:rgb(15,17,17);\">Extremely simple to assemble and use,only need nutrient solution, no odor, very clean; It is easy to take care of, no arable land, clear weeds, save time and effort.</span></li><li><span style=\"color:rgb(15,17,17);\">This hydroponic indoor or outdoor grow system is designed for fast, maximum-convenience vegetable gardening. Perfect for beginners! No experience needed. The system produces high-quality vegetables, herbs, melons,--that are more nutritious and better-tasting than soil-gardened produce because oxygenated water and nutrients are delivered directly to the roots. And all the water pipes are food grade materials, no pollution.</span></li></ul>', '', 'HYLAN Hydroponic System,Vegetable Frame Kit Pipe Bracket Equipment Hydroponics System Balcony Garden Vegetable Planting Tools for Vegetables Fruits (72 Pot Medium)', 'HYLAN Hydroponic System,Vegetable Frame Kit Pipe Bracket Equipment Hydroponics System Balcony Garden Vegetable Planting Tools for Vegetables Fruits (72 Pot Medium)', 'HYLAN Hydroponic System,Vegetable Frame Kit Pipe Bracket Equipment Hydroponics System Balcony Garden Vegetable Planting Tools for Vegetables Fruits (72 Pot Medium)', 'HYLAN, Hydroponic, System,Vegetable, Frame, Kit, Pipe, Bracket, Equipment, Hydroponics, System, Balcony, Garden, Vegetable, Planting, Tools, for, Vegetables, Fruits, (72, Pot, Medium)', 0, NULL, 'aabc.com', 2, 299, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/iiwUc6TxcUzFaQ0rUlja.jpg', 1, 1, NULL, NULL),
(93, NULL, 'LDASSON Portugal Soccer 7 Jersey Kids & Youth Sizes', 'ldasson-portugal-soccer-7-jersey-kids-youth-sizes', '<p>⚽Machine washable jersey: made of quick-drying polyester with drawstring at the waist. The fabric is environmentally friendly, slightly elastic, breathable, absorbent and durable. Machine washable⚽High quality fabric – children\'s men\'s football jersey made of 92% polyester + 8% elastane, soft and comfortable, dry and breathable.⚽Material: It is made of breathable and sweat-absorbing fabric, keeps it cool, dry, comfortable, does not deform easily and can be washed repeatedly.⚽Package includes: jersey suits for children and adults. Set includes: 1 x jersey, 1 x shorts, 1 x socks⚽Services: If you have any questions about the jersey, you can contact us by email and we will give you the best answer within 24 hours. If you are not satisfied with your jersey, we guarantee a 100% refund or exchange. Quality assured, please buy with confidence.</p>', '', 'LDASSON Portugal Soccer 7 Jersey Kids & Youth Sizes', 'LDASSON Portugal Soccer 7 Jersey Kids & Youth Sizes', 'LDASSON Portugal Soccer 7 Jersey Kids & Youth Sizes', 'LDASSON, Portugal, Soccer, 7, Jersey, Kids, &, Youth, Sizes', 0, NULL, 'abc.com', 2, 73, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/KyfyJPbOkfeDbvuauy95.jpg', 1, 1, NULL, NULL),
(94, NULL, 'ERTYU Kids Smart Phone Toys for Boys Ages 3-7 with Dual Camera - Toddler Phone Toys with Learning Games, Travel Toys with MP3 Music Player for Birthday Gifts for 3 4 5 6 7 Year Old Kids (Blue1)', 'ertyu-kids-smart-phone-toys-for-boys-ages-3-7-with-dual-camera---toddler-phone-toys-with-learning-games-travel-toys-with-mp3-music-player-for-birthday-gifts-for-3-4-5-6-7-year-old-kids-blue1-', '<ul><li><span style=\"color:rgb(15,17,17);\">【Upgraded Smart Phone for Kids】Introducing our upgraded smart cell phone for kids,Boasting 2.8\" IPS touchscreen,together with multiple functions such as camera,photos,video,music, calculator,calendar, torch, stopwatch, ABC learning,games and more,the gift for 5 years old girls can be also used as MP3s,cameras,music players,game players,alarm clocks,and calendars. Your kids deserve this kids toy for both playing and learning.</span></li><li><span style=\"color:rgb(15,17,17);\">【Dual Camera】With the upgraded dual-camera configuration,taking selfies is now easier than ever.Kids can customize their device by choosing from 28 wallpapers and 8 desktops.The portable lanyard makes it easy for children to carry and move around.The device also includes a video recorder,alarm clock,calculator,and voice recorder for added creativity.</span></li><li><span style=\"color:rgb(15,17,17);\">【Funny Games &amp; Powerful Battery Life】Children have 13 game modes to choose from,effectively exercising their logical thinking,reaction skills,and hand-eye coordination.The anti-addiction mode allows parents to control the children\'s daily game time.The device can continuously take photos or play music for 4-5 hours after being fully charged!It comes with a USB Type-C cable and an 8GB micro SD card to store thousands of photos.</span></li><li><span style=\"color:rgb(15,17,17);\">【Safe &amp; Durable Shockproof】Made with high-quality non-toxic soft plastic,this toddler music player is safe and comfortable for children\'s skin.The shockproof shell provides effective anti-fall protection,ensuring the device lasts longer.You can also adjust the brightness of the smart phone screen to protect children\'s eyes.</span></li><li><span style=\"color:rgb(15,17,17);\">【Great Gift for Kids】This blue dinosaur-shaped smartphone is the perfect birthday, holiday or holiday gift for boys and girls ages 3 to 9. Kids will love to capture scenes and animals in nature with their very cute phones. As a bonus, parents can finally have peace of mind that their children have their own fake phones and no longer need to use their smartphones.</span></li></ul>', '', 'ERTYU Kids Smart Phone Toys for Boys Ages 3-7 with Dual Camera - Toddler Phone Toys with Learning Games, Travel Toys with MP3 Music Player for Birthday Gifts for 3 4 5 6 7 Year Old Kids (Blue1)', 'ERTYU Kids Smart Phone Toys for Boys Ages 3-7 with Dual Camera - Toddler Phone Toys with Learning Games, Travel Toys with MP3 Music Player for Birthday Gifts for 3 4 5 6 7 Year Old Kids (Blue1)', 'ERTYU Kids Smart Phone Toys for Boys Ages 3-7 with Dual Camera - Toddler Phone Toys with Learning Games, Travel Toys with MP3 Music Player for Birthday Gifts for 3 4 5 6 7 Year Old Kids (Blue1)', 'ERTYU, Kids, Smart, Phone, Toys, for, Boys, Ages, 3-7, with, Dual, Camera, -, Toddler, Phone, Toys, with, Learning, Games,, Travel, Toys, with, MP3, Music, Player, for, Birthday, Gifts, for, 3, 4, 5, 6, 7, Year, Old, Kids, (Blue1)', 0, NULL, 'abc.com', 2, 189, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/nHv0oNdrRiKqqyMmrUFj.jpg', 1, 1, NULL, NULL),
(95, NULL, 'Kids Activity Table and Chair Set, chair with table, adjustable chair, montessori chair, natural wooden kids furniture, toddler gift, kitchen, kids gifts (bird pillow) (bird pillow)', 'kids-activity-table-and-chair-set-chair-with-table-adjustable-chair-montessori-chair-natural-wooden-kids-furniture-toddler-gift-kitchen-kids-gifts-bird-pillow-bird-pillow-', '<ul><li><span style=\"color:rgb(15,17,17);\">Kids\' Table &amp; Chairs: Do, discover, work, and wonder with a modern and kid-friendly furniture set!</span></li><li><span style=\"color:rgb(15,17,17);\">Chair seat size: 34.7 x 24 cm | Seat height from the floor (4 possible positions): 36.6 cm, 31 cm, 25.5 cm, 20 cm | 3 positions for adjusting the height of the backrest</span></li><li><span style=\"color:rgb(15,17,17);\">Tabletop size: 60.6 x 36.8 cm | Tabletop height from the floor (3 possible positions): 52.3 cm, 46.3 cm, 40.3 cm | Tabletop angle (3 possible positions): horizontal, 10 degrees tilt, 20 degrees tilt</span></li><li><span style=\"color:rgb(15,17,17);\">Strength &amp; design of the table and chairs are elegant design &amp; smooth finish makes it the perfect addition for your child\'s world</span></li><li><span style=\"color:rgb(15,17,17);\">Soft pillow included</span></li><li><span style=\"color:rgb(15,17,17);\">Flexible protective glass for the tabletop included</span></li></ul>', '', 'Kids Activity Table and Chair Set, chair with table, adjustable chair, montessori chair, natural wooden kids furniture, toddler gift, kitchen, kids gifts (bird pillow) (bird pillow)', 'Kids Activity Table and Chair Set, chair with table, adjustable chair, montessori chair, natural wooden kids furniture, toddler gift, kitchen, kids gifts (bird pillow) (bird pillow)', 'Kids Activity Table and Chair Set, chair with table, adjustable chair, montessori chair, natural wooden kids furniture, toddler gift, kitchen, kids gifts (bird pillow) (bird pillow)', 'Kids, Activity, Table, and, Chair, Set,, chair, with, table,, adjustable, chair,, montessori, chair,, natural, wooden, kids, furniture,, toddler, gift,, kitchen,, kids, gifts, (bird, pillow), (bird, pillow)', 0, NULL, 'abc.com', 2, 349, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/593cAnQoLPenCm9VMbuB.jpg', 1, 1, NULL, NULL),
(96, NULL, 'Maxi School Stationery Basic Kit Mxzpb-4', 'maxi-school-stationery-basic-kit-mxzpb-4', '<ul><li><span style=\"color:rgb(15,17,17);\">Made of quality materials</span></li><li><span style=\"color:rgb(15,17,17);\">Sprucely crafted to offer a higher level of functionality and efficiency</span></li><li><span style=\"color:rgb(15,17,17);\">Grab this zippered pouch filled with stationery items your kid will surely need</span></li><li><span style=\"color:rgb(15,17,17);\">this kit is a highly feasible option.</span></li><li><span style=\"color:rgb(15,17,17);\">42pc writing &amp; colouring combo pack</span></li></ul>', '', 'Maxi School Stationery Basic Kit Mxzpb-4', 'Maxi School Stationery Basic Kit Mxzpb-4', 'Maxi School Stationery Basic Kit Mxzpb-4', 'Maxi, School, Stationery, Basic, Kit, Mxzpb-4', 0, NULL, 'abc.com', 2, 26, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/haa2OS7lmu9QPmKcffpG.jpg', 1, 1, NULL, NULL),
(97, NULL, '8 PCS Kids Party Favors Stuffers LED Light Up Glow Sticks Glow in The Dark Party Supplies,Glow In The Dark Sticks Party Supplies Set,LED Flashing Light Sticks Light Up Toys', '8-pcs-kids-party-favors-stuffers-led-light-up-glow-sticks-glow-in-the-dark-party-supplies-glow-in-the-dark-sticks-party-supplies-set-led-flashing-light-sticks-light-up-toys', '<ul><li><span style=\"color:rgb(15,17,17);\">LED Glow Sticks Size: the multicolored stick lights are lightweight so that they are easy to store; Each colored light stick which is easy to carry</span></li><li><span style=\"color:rgb(15,17,17);\">Use for Many Occasions: the colored light stick can be applied as glow in the dark party favors and decorations to light up your; Suitable for Christmas, Halloween, birthday party, concert, sporting event and rave</span></li><li><span style=\"color:rgb(15,17,17);\">Easy to Replace Battery: the light sticks for parties do not include 3 AAA batteries; The screw knob design makes the battery switch easier to replace battery, which can fix and protect the battery well</span></li><li><span style=\"color:rgb(15,17,17);\">【Best Choice for Party Favor】LED sticks are a popular choice as glow party supplies,perfect for kids and adults\' birthday parties, wedding, neon party supplies,concerts,festivals and any other night time events, they create a stunning ambience, and are lots of fun.Use our latest light sticks</span></li></ul>', '', '8 PCS Kids Party Favors Stuffers LED Light Up Glow Sticks Glow in The Dark Party Supplies,Glow In The Dark Sticks Party Supplies Set,LED Flashing Light Sticks Light Up Toys', '8 PCS Kids Party Favors Stuffers LED Light Up Glow Sticks Glow in The Dark Party Supplies,Glow In The Dark Sticks Party Supplies Set,LED Flashing Light Sticks Light Up Toys', '8 PCS Kids Party Favors Stuffers LED Light Up Glow Sticks Glow in The Dark Party Supplies,Glow In The Dark Sticks Party Supplies Set,LED Flashing Light Sticks Light Up Toys', '8, PCS, Kids, Party, Favors, Stuffers, LED, Light, Up, Glow, Sticks, Glow, in, The, Dark, Party, Supplies,Glow, In, The, Dark, Sticks, Party, Supplies, Set,LED, Flashing, Light, Sticks, Light, Up, Toys', 0, NULL, 'abc.com', 2, 39, '8 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/j2AuMCbQAAaqc3Rfengc.jpg', 1, 1, NULL, NULL),
(98, NULL, 'Wilton 2105-1308 Performance Pans Quarter Sheet Cake Pan, Durable Heats Evenly and Holds its Shape Use After Use, Grey, H 26.0 x W 35.2 x D 7.4 cm (9 x 13-Inch), Aluminum', 'wilton-2105-1308-performance-pans-quarter-sheet-cake-pan-durable-heats-evenly-and-holds-its-shape-use-after-use-grey-h-26-0-x-w-35-2-x-d-7-4-cm-9-x-13-inch-aluminum', '<ul><li><span style=\"color:rgb(15,17,17);\">ALL-PURPOSE PERFORMANCE PAN: Wilton’s 9 x 13-inch aluminum quarter sheet cake pan is designed to heat evenly to ensure your delicious casseroles, entrees, and desserts cook uniformly every time.</span></li><li><span style=\"color:rgb(15,17,17);\">BUILT TO LAST: Our classic aluminum Performance Pans are durable and built to hold their shape through years of use. Whether making a tasty dish for a potluck or baking a cake for a loved-one’s special day, you can depend on this quality pan.</span></li><li><span style=\"color:rgb(15,17,17);\">GENEROUS 2-INCH DEPTH: The pan features 2-inch high sides that allow you to bake higher cakes to for celebrating birthdays, graduations, anniversaries, baby showers or any special occasion.</span></li><li><span style=\"color:rgb(15,17,17);\">USE AND CARE INSTRUCTIONS: Before first and after each use, hand wash in warm, soapy water. Rinse and dry thoroughly with a soft cloth. Please do not put in the microwave.</span></li><li><span style=\"color:rgb(15,17,17);\">EVERYONE, EVERYWHERE, EVERY DAY: Innovative products. Mouthwatering inspiration. Fun in the kitchen. This has been at the heart of what we do for nearly 90 years. Whether you’re hosting a party or need to bring a special treat, Wilton has you covered.</span></li></ul>', '', 'Wilton 2105-1308 Performance Pans Quarter Sheet Cake Pan, Durable Heats Evenly and Holds its Shape Use After Use, Grey, H 26.0 x W 35.2 x D 7.4 cm (9 x 13-Inch), Aluminum', 'Wilton 2105-1308 Performance Pans Quarter Sheet Cake Pan, Durable Heats Evenly and Holds its Shape Use After Use, Grey, H 26.0 x W 35.2 x D 7.4 cm (9 x 13-Inch), Aluminum', 'Wilton 2105-1308 Performance Pans Quarter Sheet Cake Pan, Durable Heats Evenly and Holds its Shape Use After Use, Grey, H 26.0 x W 35.2 x D 7.4 cm (9 x 13-Inch), Aluminum', 'Wilton, 2105-1308, Performance, Pans, Quarter, Sheet, Cake, Pan,, Durable, Heats, Evenly, and, Holds, its, Shape, Use, After, Use,, Grey,, H, 26.0, x, W, 35.2, x, D, 7.4, cm, (9, x, 13-Inch),, Aluminum', 0, NULL, 'abc.com', 2, 69, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/tiueF3BKqANFhegd8jRs.jpg', 1, 1, NULL, NULL),
(99, NULL, 'Lightning Bolt Neon Signs, LED Lightning, ,', 'lightning-bolt-neon-signs-led-lightning-', '<ul><li><span style=\"color:rgb(15,17,17);\">Light Type : Decorative Lights</span></li><li><span style=\"color:rgb(15,17,17);\">Perfect Gift for Colleagues, Friends and Loved Ones In Christmas, New Year, Valetine\'s Day, Birthday, Party, Performance,Special Occasions, Etc</span></li><li><span style=\"color:rgb(15,17,17);\">Perfect decoration: Best ideal eye catching addition to your party table when you place on your mantelpiece or table to brighten up your celebrations. Goes well with almost all party themes, events and other celebrations. It’s good choice for your home or holiday</span></li></ul>', '', 'Lightning Bolt Neon Signs, LED Lightning, ,', 'Lightning Bolt Neon Signs, LED Lightning, ,', 'Lightning Bolt Neon Signs, LED Lightning, ,', 'Lightning, Bolt, Neon, Signs,, LED, Lightning,, ,', 0, NULL, 'abc.com', 2, 24, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/t1VfvLYssG5MeGi1jFzg.jpg', 1, 1, NULL, NULL),
(100, NULL, 'Sunshine Baby Princess Dress for Girls with Accessories, Snow Queen Girl Costumes Dress Party Cosplay Girl Tutu Clothing Set', 'sunshine-baby-princess-dress-for-girls-with-accessories-snow-queen-girl-costumes-dress-party-cosplay-girl-tutu-clothing-set', '<p>Dress up your little princess in cute clothes, made of tulle + cotton, itchy and child-friendly, full of elasticity, softness, comfort and breath abilityComes with sparkling ice queen crown and wand earring etc. The shining and inventive princess accessoriesNewest design with gradient sleeve, silver lace waist belt, gorgeous rhinestone decoration, rhinestones on neckline.The recommended age is 2-8 years old, four sizes are available for your choice. The package includes: 1x girl princess dress+1x crown+1x scepter+1x necklace+1x bracelet+1x ring+1x earringsIdeal for birthday parties, Halloween, Christmas, costumes, role-playing, dress up, theme amusement parks, prom, performances or other special occasions.</p>', '', 'Sunshine Baby Princess Dress for Girls with Accessories, Snow Queen Girl Costumes Dress Party Cosplay Girl Tutu Clothing Set', 'Sunshine Baby Princess Dress for Girls with Accessories, Snow Queen Girl Costumes Dress Party Cosplay Girl Tutu Clothing Set', 'Sunshine Baby Princess Dress for Girls with Accessories, Snow Queen Girl Costumes Dress Party Cosplay Girl Tutu Clothing Set', 'Sunshine, Baby, Princess, Dress, for, Girls, with, Accessories,, Snow, Queen, Girl, Costumes, Dress, Party, Cosplay, Girl, Tutu, Clothing, Set', 0, NULL, 'abc.com', 2, 59, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/yDET2RVHbLsAGikjXGwV.jpg', 1, 1, NULL, NULL),
(101, NULL, 'Flying Disc Helicopter, SKADE 36 Pcs Include 12 String Launchers 24 Flying Saucer Flying Disc Outdoor Little Teens Kids Activity Birthday Party Game', 'flying-disc-helicopter-skade-36-pcs-include-12-string-launchers-24-flying-saucer-flying-disc-outdoor-little-teens-kids-activity-birthday-party-game', '<ul><li><span style=\"color:rgb(15,17,17);\">Package List: you will be given 36 pieces of flying toys, composed of 12 string launchers and 24 flying saucers with 2 sizes (each launcher is equipped with 2 flying saucers with random colors), simple and interesting to play, enough for you to share with playmates. Our flying saucer toys come in colors all the little ones will love.</span></li><li><span style=\"color:rgb(15,17,17);\">Fun to Play: put the saucer on the top of the flying disc launcher, there is a red pull wire at the launcher, pull the wire to the right position, it can fly very high, easy to operate</span></li><li><span style=\"color:rgb(15,17,17);\">Size and Material: the launcher measures about 4.7 inches/ 12 cm; The diameter of large flying disc is about 4.5 inches/ 11.5 cm, while small flying disc is about 10 3.9 inches/ 10 cm, two different sizes of flying disc is enough for your daily use, making the set easy to carry ; This flying disc toy set is made of plastic, safe and quality, let you play for a long time.</span></li><li><span style=\"color:rgb(15,17,17);\">Ideal for Gifting: these flying disc with launcher is great for birthday gifts, party gifts, class rewards, outdoor activities, and you can play with cats and dogs, a novel way to interact with your pets</span></li><li><span style=\"color:rgb(15,17,17);\">Multiple Use: the flying saucer toy and disc launcher replacement are made in appropriate sizes, so they are easy to carry out, and can be played unlimitedly in the lawn, garden, backyard, seaside, beach, indoor, amusement park and other places</span></li></ul>', '', 'Flying Disc Helicopter, SKADE 36 Pcs Include 12 String Launchers 24 Flying Saucer Flying Disc Outdoor Little Teens Kids Activity Birthday Party Game', 'Flying Disc Helicopter, SKADE 36 Pcs Include 12 String Launchers 24 Flying Saucer Flying Disc Outdoor Little Teens Kids Activity Birthday Party Game', 'Flying Disc Helicopter, SKADE 36 Pcs Include 12 String Launchers 24 Flying Saucer Flying Disc Outdoor Little Teens Kids Activity Birthday Party Game', 'Flying, Disc, Helicopter,, SKADE, 36, Pcs, Include, 12, String, Launchers, 24, Flying, Saucer, Flying, Disc, Outdoor, Little, Teens, Kids, Activity, Birthday, Party, Game', 0, NULL, 'abc.com', 2, 69, '36 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/rMeeBUB5ibQSWJrzLiwK.jpg', 1, 1, NULL, NULL),
(102, NULL, 'YHOSSEUN Large 3 Tier Serving Tray with Serving Stand, Serving Dishes for Entertaining, Suitable for Dessert Table Display Set Catering Supplies 12 inch Gold Serving Tray for Hot Chocolate Bar Brand: YHOSSEUN', 'yhosseun-large-3-tier-serving-tray-with-serving-stand-serving-dishes-for-entertaining-suitable-for-dessert-table-display-set-catering-supplies-12-inch-gold-serving-tray-for-hot-chocolate-bar-brand-yhosseun', '<ul><li><span style=\"color:rgb(15,17,17);\">Kitchen Must-have: 3 tier serving stand consists of three 11.69\"×6.18\" ceramic serving platters and a gold metal stand. The serving tray can be used as a three-tier table display stand, or the platters can be used alone as serving dishes. This tiered serving stand is sure to become a staple in your kitchen.</span></li><li><span style=\"color:rgb(15,17,17);\">Table Entertaining: 3 tier serving tray can be used to hold appetizers, snacks, desserts, meat, seafood, fruit, pizza, candy, and other foods on the table, adding fun to your table. The elegant tiered server can better display delicious food and increase the appetite of you and your family.</span></li><li><span style=\"color:rgb(15,17,17);\">Multipurpose Item: You can also use tiered tray as a decoration at home, such as placing small potted plants on your balcony and garden, placing tools, keys, and small parts as practical small item racks on the locker, or holding various kinds of cosmetics on the dressing table, etc. This 3 tiered tray stand is really a practical item that can surprise you.</span></li><li><span style=\"color:rgb(15,17,17);\">Long- lasting Server: The white serving platters are fired at high temperature. It is handmade, of high quality and durable. The white glossy glaze surface makes it convenient to clean after use. More importantly, it is dishwasher, microwave and oven safe.</span></li><li><span style=\"color:rgb(15,17,17);\">Gift Idea: These party serving trays and platters are also extremely suitable as a gift for your families, neighbors, friends, colleagues and other important people. Please send it to your important one as a gift on some meaningful festivals such as birthday, New Year, Halloween, Thanksgiving and Christmas to express your best wishes!</span></li></ul>', '', 'YHOSSEUN Large 3 Tier Serving Tray with Serving Stand, Serving Dishes for Entertaining, Suitable for Dessert Table Display Set Catering Supplies 12 inch Gold Serving Tray for Hot Chocolate Bar Brand: YHOSSEUN', 'YHOSSEUN Large 3 Tier Serving Tray with Serving Stand, Serving Dishes for Entertaining, Suitable for Dessert Table Display Set Catering Supplies 12 inch Gold Serving Tray for Hot Chocolate Bar\r\nBrand: YHOSSEUN', 'YHOSSEUN Large 3 Tier Serving Tray with Serving Stand, Serving Dishes for Entertaining, Suitable for Dessert Table Display Set Catering Supplies 12 inch Gold Serving Tray for Hot Chocolate Bar\r\nBrand: YHOSSEUN', 'YHOSSEUN, Large, 3, Tier, Serving, Tray, with, Serving, Stand,, Serving, Dishes, for, Entertaining,, Suitable, for, Dessert, Table, Display, Set, Catering, Supplies, 12, inch, Gold, Serving, Tray, for, Hot, Chocolate, Bar, Brand:, YHOSSEUN', 0, NULL, 'abc.com', 2, 291, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/IG8dpJ9fPykB1XNH9nEF.jpg', 1, 1, NULL, NULL),
(103, NULL, 'NEW VIEW Outdoor Hiking Shoes High-top with Zipper Breathable Desert Combat Boots Tactical', 'new-view-outdoor-hiking-shoes-high-top-with-zipper-breathable-desert-combat-boots-tactical', '<p>【Upgraded ultra-quiet material】NEW VIEW hunting clothing clothes, which use a new generation of ultra-quiet patented material, effectively reduce noise. It allows both bowhunters and gun hunters to remain quiet and unnoticed by animals while hunting.【Stay concealed】They design NEW VIEW\'s three unique camouflage patterns. There are more than 35,000 hunters who wear our clothes, keep active in the woodlands, mountains, swamps, farmland, shrubs, and other environments. They can quickly blend into nature and stay hidden during big game hunting, small game hunting, and migratory bird hunting.【Upgraded details:】Removable hood, one-way zipper instead of two-way zipper to reduce noise, all pockets have zippers to prevent things from falling out. We also realign all zipper compartments to prevent noise from zipper bumps. The elastic waistband can be adjusted from 0.5 to 3 inches.【11 pockets designed for hunting】The hunting suit has 11 strategically placed common-sense pockets. The jacket provides two 8-inch high lower-hand warmer pockets, two upper sleeve pockets (7.5 inches* 8 inches), one split kangaroo pocket (22 inches * 8 inches), and two large side zippered pockets while the pants have four zippered pockets. So, Binoculars, knife, rangefinder, compass, water bottle, lighter, flashlight, and other hunting essentials can be put in the pockets.【Hunting Companion】Our outdoor sports camouflage clothing is suitable for the following hunting activities: Deer, wild turkey, elk, bear, squirrels, rabbits and hares, quail, Ptarmigan, grouse/prairie chickens, ducks, doves, geese, and other animals. Camouflage clothing can also be used for tactical, shooting, military, paintball, hiking, camping, fishing, off-road, etc.</p>', '', 'NEW VIEW Outdoor Hiking Shoes High-top with Zipper Breathable Desert Combat Boots Tactical', 'NEW VIEW Outdoor Hiking Shoes High-top with Zipper Breathable Desert Combat Boots Tactical', 'NEW VIEW Outdoor Hiking Shoes High-top with Zipper Breathable Desert Combat Boots Tactical', 'NEW, VIEW, Outdoor, Hiking, Shoes, High-top, with, Zipper, Breathable, Desert, Combat, Boots, Tactical', 0, NULL, 'abc.com', 2, 530, '3 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/5KR7uLC1adzH0taBTH08.jpg', 1, 1, NULL, NULL),
(104, NULL, 'Zebco Spyn Spinning Reel and 2-Piece Fishing Rod Combo, Durable Fiberglass Rod, Split-Grip Cork Rod Handle, Instant Anti-Reverse Fishing Reel', 'zebco-spyn-spinning-reel-and-2-piece-fishing-rod-combo-durable-fiberglass-rod-split-grip-cork-rod-handle-instant-anti-reverse-fishing-reel', '<ul><li><span style=\"color:rgb(15,17,17);\">FAST ACTION: This 6-foot 2-piece fishing rod combo features a Twist-Lock reel seat, and provides medium-light power and fast action making it easier to catch light and medium species from panfish to trout, walleye, bass and more</span></li><li><span style=\"color:rgb(15,17,17);\">EXPERTLY CRAFTED MATERIALS: The durable fiberglass rod blank is constructed with 5 + Tip shock-ring guides that will hold up against the toughest fish, and a split-grip natural cork rod handle that is lightweight, comfortable, and balanced to ensure a superior grip even in wet-weather conditions. Designed to hold a 4-12 pound line weight and 1/16-3/4 ounce lure weights</span></li><li><span style=\"color:rgb(15,17,17);\">EFFORTLESS FISHING: This size 20 spinning fishing reel features durable all-metal gears and an aluminum spool that has a mono line capacity of 190/8 yds/lbs. It is conveniently pre-spooled with 8-pound Zebco line and designed with 3 bearings (2 + clutch), a changeable right- or left-hand retrieve and an Instant Anti-Reverse clutch that stops your reel handle from moving backwards in order to create a solid hookset in the mouth of a fish when reeling in your prized catch</span></li><li><span style=\"color:rgb(15,17,17);\">SMOOTH PERFORMANCE: This spinning reel was engineered with a front-adjustable drag, a 5.3:1 gear ratio, a line retrieval of 26 IPT (inches per turn) for a buttery-smooth retrieve along with a super tough titanium-nitride plated bail wire to control the line. Set a new gold standard for angling achievement with Spyn</span></li><li><span style=\"color:rgb(15,17,17);\">TRUSTED: Since 1949, Zebco has been inviting people to explore the outdoors. Zebco products are warranted for a period of (1) year from date of original retail purchase against defects in workmanship and/or materials</span></li></ul>', '', 'Zebco Spyn Spinning Reel and 2-Piece Fishing Rod Combo, Durable Fiberglass Rod, Split-Grip Cork Rod Handle, Instant Anti-Reverse Fishing Reel', 'Zebco Spyn Spinning Reel and 2-Piece Fishing Rod Combo, Durable Fiberglass Rod, Split-Grip Cork Rod Handle, Instant Anti-Reverse Fishing Reel', 'Zebco Spyn Spinning Reel and 2-Piece Fishing Rod Combo, Durable Fiberglass Rod, Split-Grip Cork Rod Handle, Instant Anti-Reverse Fishing Reel', 'Zebco, Spyn, Spinning, Reel, and, 2-Piece, Fishing, Rod, Combo,, Durable, Fiberglass, Rod,, Split-Grip, Cork, Rod, Handle,, Instant, Anti-Reverse, Fishing, Reel', 0, NULL, 'abc.com', 2, 188, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/1J2gzrC2IZn9fhN1uX5F.jpg', 1, 1, NULL, NULL),
(105, NULL, 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'delfino-fishing-lures-delfino-10pcs-fishing-lure-artificial-floating-minnow-hard-bait-swimbait-fishing-tackle-set-with-treble-hooks-sinking-metal-spoons-micro-jigging-bait-for-outdoor-fishing', '<ul><li><span style=\"color:rgb(15,17,17);\">Attract fish: Double flat strong rings and two carbon steel treble hooks offer continuous metal flash and special vibration to attract fishes.</span></li><li><span style=\"color:rgb(15,17,17);\">Eyes: 3D lifelike fish eyes with fish-attracting printed body provide excellent appearance. High carbon steel treble hooks. Excellent visual effect lure fish.</span></li><li><span style=\"color:rgb(15,17,17);\">Material: Premium ABS material, which offers odor-free and reusable fishing lures. Meticulous workmanship, modeling realistic, vivid, in the water is more dynamic.</span></li><li><span style=\"color:rgb(15,17,17);\">Precision: Stainless steel BBs inside lures\' chamber to keep balance and casting long. Solid, beat resistance percussion, internal use of steel ball after precision instruments tested, the greatest degree guarantee each bait strokes.</span></li><li><span style=\"color:rgb(15,17,17);\">Wide range: Widely targeting at predator fishes such as catfish, perch, bass, redfish, trout, bream, muskie, roach, walleye etc for both freshwater and saltwater. Perfect for ocean boat fishing, ocean rock fishing, ocean beach fishing, lake, river, reservion, pond and stream.</span></li></ul>', '', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO, Fishing, Lures,, DELFINO, 10Pcs, Fishing, Lure, Artificial, Floating, Minnow, Hard, Bait, Swimbait, Fishing, Tackle, Set, with, Treble, Hooks, Sinking, Metal, Spoons, Micro, Jigging, Bait, for, Outdoor, Fishing', 0, NULL, 'abc.com', 2, 47, '10 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/KTrFaK0dLStdlNKj150V.jpg', 1, 1, NULL, NULL),
(106, NULL, 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'delfino-fishing-lures-delfino-10pcs-fishing-lure-artificial-floating-minnow-hard-bait-swimbait-fishing-tackle-set-with-treble-hooks-sinking-metal-spoons-micro-jigging-bait-for-outdoor-fishing', '<ul><li><span style=\"color:rgb(15,17,17);\">Attract fish: Double flat strong rings and two carbon steel treble hooks offer continuous metal flash and special vibration to attract fishes.</span></li><li><span style=\"color:rgb(15,17,17);\">Eyes: 3D lifelike fish eyes with fish-attracting printed body provide excellent appearance. High carbon steel treble hooks. Excellent visual effect lure fish.</span></li><li><span style=\"color:rgb(15,17,17);\">Material: Premium ABS material, which offers odor-free and reusable fishing lures. Meticulous workmanship, modeling realistic, vivid, in the water is more dynamic.</span></li><li><span style=\"color:rgb(15,17,17);\">Precision: Stainless steel BBs inside lures\' chamber to keep balance and casting long. Solid, beat resistance percussion, internal use of steel ball after precision instruments tested, the greatest degree guarantee each bait strokes.</span></li><li><span style=\"color:rgb(15,17,17);\">Wide range: Widely targeting at predator fishes such as catfish, perch, bass, redfish, trout, bream, muskie, roach, walleye etc for both freshwater and saltwater. Perfect for ocean boat fishing, ocean rock fishing, ocean beach fishing, lake, river, reservion, pond and stream.</span></li></ul>', '', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO Fishing Lures, DELFINO 10Pcs Fishing Lure Artificial Floating Minnow Hard Bait Swimbait Fishing Tackle Set with Treble Hooks Sinking Metal Spoons Micro Jigging Bait for Outdoor Fishing', 'DELFINO, Fishing, Lures,, DELFINO, 10Pcs, Fishing, Lure, Artificial, Floating, Minnow, Hard, Bait, Swimbait, Fishing, Tackle, Set, with, Treble, Hooks, Sinking, Metal, Spoons, Micro, Jigging, Bait, for, Outdoor, Fishing', 0, NULL, 'abc.com', 2, 47, '10 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/HuN78vWLGFUMk6ZAHM62.jpg', 1, 1, NULL, NULL),
(107, NULL, '500 Meters Clear Fishing Line Nylon Monofilament Fishing Line Clear Strong Wire 2.0', '500-meters-clear-fishing-line-nylon-monofilament-fishing-line-clear-strong-wire-2-0', '<ul><li><span style=\"color:rgb(15,17,17);\">Cold white Magnetic Infrared IR Bright Motion Sensor Activated LED Wall Lights Night Light Auto On/Off Battery Operated for Hallway Pathway</span></li></ul>', '', '500 Meters Clear Fishing Line Nylon Monofilament Fishing Line Clear Strong Wire 2.0', '500 Meters Clear Fishing Line Nylon Monofilament Fishing Line Clear Strong Wire 2.0', '500 Meters Clear Fishing Line Nylon Monofilament Fishing Line Clear Strong Wire 2.0500 Meters Clear Fishing Line Nylon Monofilament Fishing Line Clear Strong Wire 2.0', '500, Meters, Clear, Fishing, Line, Nylon, Monofilament, Fishing, Line, Clear, Strong, Wire, 2.0', 0, NULL, 'abc.com', 2, 17, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/NLfFhIZxihPEvScq9ha2.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(108, NULL, 'OperSeven 4Pcs Fishing Cast Net,Fishing Net,Fishing Trap,with Luminous Beads Fishing Accessory Net', 'operseven-4pcs-fishing-cast-net-fishing-net-fishing-trap-with-luminous-beads-fishing-accessory-net', '<ul><li><span style=\"color:rgb(15,17,17);\">️Material:Made of high quality plastic material, the fishing net is durable for long service life.</span></li><li><span style=\"color:rgb(15,17,17);\">️How to Use：Put the bait into the ring ，After putting the fishing group into the water, the bundle is opened one by one to form a mesh.</span></li><li><span style=\"color:rgb(15,17,17);\">️Design :The fish will be caught while it touches the net.Lightweight soft mesh will not damage fish, making it a perfect tool for both beginner and advanced fishermen to use for catch and release.Quality craftsmanship and materials make this product a must have for any fisherman.</span></li></ul>', '', 'OperSeven 4Pcs Fishing Cast Net,Fishing Net,Fishing Trap,with Luminous Beads Fishing Accessory Net', 'OperSeven 4Pcs Fishing Cast Net,Fishing Net,Fishing Trap,with Luminous Beads Fishing Accessory Net', 'OperSeven 4Pcs Fishing Cast Net,Fishing Net,Fishing Trap,with Luminous Beads Fishing Accessory Net', 'OperSeven, 4Pcs, Fishing, Cast, Net,Fishing, Net,Fishing, Trap,with, Luminous, Beads, Fishing, Accessory, Net', 0, NULL, 'abc.com', 2, 45, '4 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 1, 0, 10.00000, '5', 2, '5', 1, '/backend/files/rC0hKWUq3vg3mi26MJ8y.jpg', 1, 1, NULL, NULL),
(109, NULL, 'LEGO® Technic™ Ford Mustang Shelby® GT500® 42138 Model Building Kit (544 Pieces)', 'lego-technic-ford-mustang-shelby-gt500-42138-model-building-kit-544-pieces-', '<ul><li><span style=\"color:rgb(15,17,17);\">Build an icon of drag racing – Race car fans will love building and exploring this action-packed LEGO Technic Ford Mustang Shelby GT500 (42138) drag race car toy set</span></li><li><span style=\"color:rgb(15,17,17);\">Pull-back function – With 2 pull-back motors, controlling this cool car toy is easy. Just pull back and then release to send your car speeding along</span></li><li><span style=\"color:rgb(15,17,17);\">Epic AR (augmented reality) experience – Use the LEGO Technic AR app to put the car to the test on a virtual racetrack. Check out the challenges for more fun ways to play</span></li><li><span style=\"color:rgb(15,17,17);\">Ideal for any drag racing fan aged 9+ – This muscle car toy building set makes a top gift for anyone who loves race cars, drag racing or AR toys</span></li><li><span style=\"color:rgb(15,17,17);\">Perfect size for play – This cool car toy measures over 3 in. (8 cm) high, 10.5 in. (27 cm) long and 4.5 in. (12 cm) wide</span></li></ul>', '', 'LEGO® Technic™ Ford Mustang Shelby® GT500® 42138 Model Building Kit (544 Pieces)', 'LEGO® Technic™ Ford Mustang Shelby® GT500® 42138 Model Building Kit (544 Pieces)', 'LEGO® Technic™ Ford Mustang Shelby® GT500® 42138 Model Building Kit (544 Pieces)', 'LEGO®, Technic™, Ford, Mustang, Shelby®, GT500®, 42138, Model, Building, Kit, (544, Pieces)', 0, NULL, 'abc.com', 2, 171, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/RKnxraqmfcV9JRRPpmyC.jpg', 1, 1, NULL, NULL),
(110, NULL, 'Dimensions 17066 Mini Needlepoint: Sunflower and Ladybug, Polyester blend, Multi-Colour, Needlecrafts', 'dimensions-17066-mini-needlepoint-sunflower-and-ladybug-polyester-blend-multi-colour-needlecrafts', '<ul><li><span style=\"color:rgb(15,17,17);\">Finished Size: 5\" x 5\" (13 x 13 cm)</span></li><li><span style=\"color:rgb(15,17,17);\">14 count mesh canvas</span></li><li><span style=\"color:rgb(15,17,17);\">Easy Instructions</span></li></ul>', '', 'Dimensions 17066 Mini Needlepoint: Sunflower and Ladybug, Polyester blend, Multi-Colour, Needlecrafts', 'Dimensions 17066 Mini Needlepoint: Sunflower and Ladybug, Polyester blend, Multi-Colour, Needlecrafts', 'Dimensions 17066 Mini Needlepoint: Sunflower and Ladybug, Polyester blend, Multi-Colour, Needlecrafts', 'Dimensions, 17066, Mini, Needlepoint:, Sunflower, and, Ladybug,, Polyester, blend,, Multi-Colour,, Needlecrafts', 0, NULL, 'abc.com', 2, 72, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/7iQKvIaVlqzNN5IWl41Y.jpg', 1, 1, NULL, NULL),
(111, NULL, 'Wax Melter for Candle Making, 6L/5KG Large Wax Melting Pot with Spout for Soy Wax Soap Base Candle Making Supplies Easy Pour & Non-Stick & Temps - UK Plug', 'wax-melter-for-candle-making-6l-5kg-large-wax-melting-pot-with-spout-for-soy-wax-soap-base-candle-making-supplies-easy-pour-non-stick-temps---uk-plug', '<ul><li><span style=\"color:rgb(15,17,17);\">ELECTRIC WAX MELTER FOR CANDLE MAKING - Made of heavy cast aluminum HOLDS up to 6000ML melted wax! 1000W SUPER- FAST Melter can melt soy wax, paraffin, coconut, beeswax, ice wax, and soap base.</span></li><li><span style=\"color:rgb(15,17,17);\">QUICK POUR SPOUT TECHNOLOGY MAKES EASY POURING - Our wax melter valve is nickle coated for easy wax release so you can pour with NO EFFORT. NON-STICK COATING the melter tank manufactured with a non-stick coating for easy cleaning.</span></li><li><span style=\"color:rgb(15,17,17);\">FAST AND EVEN HEATING - The high-efficiency wax melting furnace has a very fast heating speed. Under the setting of 230°F/110°C, 2KG of soybean wax can be melted in 6 minutes. will speed up your candle-making so you can do bulk orders easily.</span></li><li><span style=\"color:rgb(15,17,17);\">50-120℃/122-248℉ FREE TEMPERATURE SETTING - Vary temperature range options meet different waxes melting point. The melter will always maintain a constant set temperature until it will not overheat or burn when poured.</span></li><li><span style=\"color:rgb(15,17,17);\">MAXIMIZE PRODUCTIVITY AND PROFITABILITY - This wax melting pot quickly produces a uniformed heating area ideal for use with soy and paraffin waxes. Compared to a water jacketed version, our unit melts wax in half the time, uses less energy, and produces less heat.</span></li></ul>', '', 'Wax Melter for Candle Making, 6L/5KG Large Wax Melting Pot with Spout for Soy Wax Soap Base Candle Making Supplies Easy Pour & Non-Stick & Temps - UK Plug', 'Wax Melter for Candle Making, 6L/5KG Large Wax Melting Pot with Spout for Soy Wax Soap Base Candle Making Supplies Easy Pour & Non-Stick & Temps - UK Plug', 'Wax Melter for Candle Making, 6L/5KG Large Wax Melting Pot with Spout for Soy Wax Soap Base Candle Making Supplies Easy Pour & Non-Stick & Temps - UK Plug', 'Wax, Melter, for, Candle, Making,, 6L/5KG, Large, Wax, Melting, Pot, with, Spout, for, Soy, Wax, Soap, Base, Candle, Making, Supplies, Easy, Pour, &, Non-Stick, &, Temps, -, UK, Plug', 0, NULL, 'abc.com', 2, 416, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/hKVLWYiNEQO6gmiJkGCW.jpg', 1, 1, NULL, NULL),
(112, NULL, 'Yankee Candle Sparkling Lemongrass Large Outdoor Candle', 'yankee-candle-sparkling-lemongrass-large-outdoor-candle', '<ul><li><span style=\"color:rgb(15,17,17);\">Sparkling Lemongrass: A lemony mix of herbs and geranium bring a bright, beautiful vibe to your outdoor space</span></li><li><span style=\"color:rgb(15,17,17);\">Available in fragrances designed to complement the outdoors</span></li><li><span style=\"color:rgb(15,17,17);\">Unique, higher melt-point wax formulated to withstand outdoor temperatures</span></li><li><span style=\"color:rgb(15,17,17);\">Two larger wicks stay lit in outdoor spaces</span></li><li><span style=\"color:rgb(15,17,17);\">Natural wooden lid becomes a decorative base for the candle</span></li></ul>', '', 'Yankee Candle Sparkling Lemongrass Large Outdoor Candle', 'Yankee Candle Sparkling Lemongrass Large Outdoor Candle', 'Yankee Candle Sparkling Lemongrass Large Outdoor Candle', 'Yankee, Candle, Sparkling, Lemongrass, Large, Outdoor, Candle', 0, NULL, 'abc.com', 2, 144, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/rCjaXfZ3vBq7QpOZWZuB.jpg', 1, 1, NULL, NULL),
(113, NULL, 'Goldwork: Techniques, Projects and Pure Inspiration Paperback – Illustrated, 23 August 2011', 'goldwork-techniques-projects-and-pure-inspiration-paperback-illustrated-23-august-2011', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">Hazel Everett is an exceptionally skilled goldwork embroiderer, and in this beautiful book she passes on her knowledge and expertise in a way that is both practical and visually stunning. Drawing on traditional methods, she creates works that are brilliantly executed, in a style that is both modern and unique. Here, Hazel provides expert guidance and advice on an extensive range of goldwork embroidery techniques. Her detailed descriptions and step-by-step instructions are accompanied by clear diagrams and embroidered samples, all carefully and exquisitely worked by the author herself. Throughout the book there are numerous examples of the author\'s own work, providing inspiration for embroiderers who wish to extend their skills in this fascinating area. The book ends with ten fabulous projects, including richly worked samplers, Christmas tree decorations and needle books, all using the full range of techniques, threads and other materials that the reader has learnt about in the previous sections of the book. This is an invaluable reference for those already familiar with the art of goldwork embroidery, as well as an excellent starting point for anyone wishing to embark upon it.</span><br><br><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">A unique source of information and inspiration for anyone interested in goldwork embroidery. All of the major techniques and materials associated with goldwork embroidery are explained through clear, step-by-step instructions, worked samples and diagrams, and there are ten fabulous projects to put into practice all the reader has learnt, allowing them to produce beautiful embroideries of their own. Numerous exquisitely worked pieces provide inspiration and ideas.</span></p>', '', 'Goldwork: Techniques, Projects and Pure Inspiration Paperback – Illustrated, 23 August 2011', 'Goldwork: Techniques, Projects and Pure Inspiration Paperback – Illustrated, 23 August 2011', 'Goldwork: Techniques, Projects and Pure Inspiration Paperback – Illustrated, 23 August 2011Goldwork: Techniques, Projects and Pure Inspiration Paperback – Illustrated, 23 August 2011', 'Goldwork:, Techniques,, Projects, and, Pure, Inspiration, Paperback, –, Illustrated,, 23, August, 2011', 0, NULL, 'abc.com', 2, 103, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/IrkmCAcENwVuHr3oCaKJ.jpg', 1, 1, NULL, NULL),
(114, NULL, '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11-set-packing-cubes-luggage-packing-organizers-for-travel-accessories-light-travel-luggage-packing-organizers-waterproof-travel-essentials-space-saving-luggage-organizer-bags-set-grey-', '<ul><li><span style=\"color:rgb(15,17,17);\">Large Capacity: The set includes multiple bags and packing cubes of different sizes, so you can fully pack your clothes and travel essentials for long trips without worrying about compression or space limitations.</span></li><li><span style=\"color:rgb(15,17,17);\">Lightweight and Durable:Dacron fabric traveling cubes ensures your clothes are stored neatly in luggage organizer bags without adding extra weight.Sturdy&amp;Smooth Double-Way Zipper with extended cord ensures Fast&amp;Easy Opening and Closing of the packing cubes.Soft and smooth mesh top panel can not only protect your delicate clothes from wrinkles and odors, but can also help identify your clothes via visible mesh to avoid fumbling inside your entire luggage.</span></li><li><span style=\"color:rgb(15,17,17);\">Organized and Classified Packing: The different sizes of waterproof packing cubes and bags provide compartments for storing and separating various items such as clothes, underwear, shoes, cosmetics, toiletries and electronic accessories. These packing cubes set for travel ensuring an organized and hassle-free travel experience.</span></li><li><span style=\"color:rgb(15,17,17);\">High-Quality, Durable Materials: Made of premium nylon fabric, the travel packing cubes are designed to protect your clothes from wrinkles and stains. The waterproof travel suitcase organize provides protection against spills and leaks. Sturdy zippers and precise stitching ensure durability and long-lasting use.</span></li><li><span style=\"color:rgb(15,17,17);\">Versatile to suit Different Journeys: The travel bag organizer for luggage are compatible with various types of luggage, including suitcases, handbags, weekend bags, backpacks and duffel bags. They are perfect for family vacations, business trips, camping, hiking, and other travel</span></li></ul>', '', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11, Set,Packing, Cubes, Luggage, Packing, Organizers, for, Travel, Accessories,, Light, Travel, Luggage, Packing, Organizers,, Waterproof, Travel, Essentials,, Space-Saving, Luggage, Organizer, Bags, Set, (Grey)', 0, NULL, 'abc.com', 2, 69, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/ZrQOTYQOheOR4tQ26OpH.jpg', 1, 1, NULL, NULL),
(115, NULL, '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11-set-packing-cubes-luggage-packing-organizers-for-travel-accessories-light-travel-luggage-packing-organizers-waterproof-travel-essentials-space-saving-luggage-organizer-bags-set-grey-', '<ul><li><span style=\"color:rgb(15,17,17);\">Large Capacity: The set includes multiple bags and packing cubes of different sizes, so you can fully pack your clothes and travel essentials for long trips without worrying about compression or space limitations.</span></li><li><span style=\"color:rgb(15,17,17);\">Lightweight and Durable:Dacron fabric traveling cubes ensures your clothes are stored neatly in luggage organizer bags without adding extra weight.Sturdy&amp;Smooth Double-Way Zipper with extended cord ensures Fast&amp;Easy Opening and Closing of the packing cubes.Soft and smooth mesh top panel can not only protect your delicate clothes from wrinkles and odors, but can also help identify your clothes via visible mesh to avoid fumbling inside your entire luggage.</span></li><li><span style=\"color:rgb(15,17,17);\">Organized and Classified Packing: The different sizes of waterproof packing cubes and bags provide compartments for storing and separating various items such as clothes, underwear, shoes, cosmetics, toiletries and electronic accessories. These packing cubes set for travel ensuring an organized and hassle-free travel experience.</span></li><li><span style=\"color:rgb(15,17,17);\">High-Quality, Durable Materials: Made of premium nylon fabric, the travel packing cubes are designed to protect your clothes from wrinkles and stains. The waterproof travel suitcase organize provides protection against spills and leaks. Sturdy zippers and precise stitching ensure durability and long-lasting use.</span></li><li><span style=\"color:rgb(15,17,17);\">Versatile to suit Different Journeys: The travel bag organizer for luggage are compatible with various types of luggage, including suitcases, handbags, weekend bags, backpacks and duffel bags. They are perfect for family vacations, business trips, camping, hiking, and other travel activities.</span></li></ul>', '', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11, Set,Packing, Cubes, Luggage, Packing, Organizers, for, Travel, Accessories,, Light, Travel, Luggage, Packing, Organizers,, Waterproof, Travel, Essentials,, Space-Saving, Luggage, Organizer, Bags, Set, (Grey)', 0, NULL, 'ab.com', 2, 69, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/tiE5mUegs2nP6iSkUXJJ.jpg', 1, 1, NULL, NULL),
(116, NULL, '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11-set-packing-cubes-luggage-packing-organizers-for-travel-accessories-light-travel-luggage-packing-organizers-waterproof-travel-essentials-space-saving-luggage-organizer-bags-set-grey-', '<ul><li><span style=\"color:rgb(15,17,17);\">Large Capacity: The set includes multiple bags and packing cubes of different sizes, so you can fully pack your clothes and travel essentials for long trips without worrying about compression or space limitations.</span></li><li><span style=\"color:rgb(15,17,17);\">Lightweight and Durable:Dacron fabric traveling cubes ensures your clothes are stored neatly in luggage organizer bags without adding extra weight.Sturdy&amp;Smooth Double-Way Zipper with extended cord ensures Fast&amp;Easy Opening and Closing of the packing cubes.Soft and smooth mesh top panel can not only protect your delicate clothes from wrinkles and odors, but can also help identify your clothes via visible mesh to avoid fumbling inside your entire luggage.</span></li><li><span style=\"color:rgb(15,17,17);\">Organized and Classified Packing: The different sizes of waterproof packing cubes and bags provide compartments for storing and separating various items such as clothes, underwear, shoes, cosmetics, toiletries and electronic accessories. These packing cubes set for travel ensuring an organized and hassle-free travel experience.</span></li><li><span style=\"color:rgb(15,17,17);\">High-Quality, Durable Materials: Made of premium nylon fabric, the travel packing cubes are designed to protect your clothes from wrinkles and stains. The waterproof travel suitcase organize provides protection against spills and leaks. Sturdy zippers and precise stitching ensure durability and long-lasting use.</span></li><li><span style=\"color:rgb(15,17,17);\">Versatile to suit Different Journeys: The travel bag organizer for luggage are compatible with various types of luggage, including suitcases, handbags, weekend bags, backpacks and duffel bags. They are perfect for family vacations, business trips, camping, hiking, and other travel activities.</span></li></ul>', '', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11, Set,Packing, Cubes, Luggage, Packing, Organizers, for, Travel, Accessories,, Light, Travel, Luggage, Packing, Organizers,, Waterproof, Travel, Essentials,, Space-Saving, Luggage, Organizer, Bags, Set, (Grey)', 0, NULL, 'ab.com', 2, 69, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/Xj8M8tfhd4riQ0a3wcXD.jpg', 1, 1, NULL, NULL),
(117, NULL, '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11-set-packing-cubes-luggage-packing-organizers-for-travel-accessories-light-travel-luggage-packing-organizers-waterproof-travel-essentials-space-saving-luggage-organizer-bags-set-grey-', '<ul><li><span style=\"color:rgb(15,17,17);\">Large Capacity: The set includes multiple bags and packing cubes of different sizes, so you can fully pack your clothes and travel essentials for long trips without worrying about compression or space limitations.</span></li><li><span style=\"color:rgb(15,17,17);\">Lightweight and Durable:Dacron fabric traveling cubes ensures your clothes are stored neatly in luggage organizer bags without adding extra weight.Sturdy&amp;Smooth Double-Way Zipper with extended cord ensures Fast&amp;Easy Opening and Closing of the packing cubes.Soft and smooth mesh top panel can not only protect your delicate clothes from wrinkles and odors, but can also help identify your clothes via visible mesh to avoid fumbling inside your entire luggage.</span></li><li><span style=\"color:rgb(15,17,17);\">Organized and Classified Packing: The different sizes of waterproof packing cubes and bags provide compartments for storing and separating various items such as clothes, underwear, shoes, cosmetics, toiletries and electronic accessories. These packing cubes set for travel ensuring an organized and hassle-free travel experience.</span></li><li><span style=\"color:rgb(15,17,17);\">High-Quality, Durable Materials: Made of premium nylon fabric, the travel packing cubes are designed to protect your clothes from wrinkles and stains. The waterproof travel suitcase organize provides protection against spills and leaks. Sturdy zippers and precise stitching ensure durability and long-lasting use.</span></li><li><span style=\"color:rgb(15,17,17);\">Versatile to suit Different Journeys: The travel bag organizer for luggage are compatible with various types of luggage, including suitcases, handbags, weekend bags, backpacks and duffel bags. They are perfect for family vacations, business trips, camping, hiking, and other travel activities.</span></li></ul>', '', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11 Set,Packing Cubes Luggage Packing Organizers for Travel Accessories, Light Travel Luggage Packing Organizers, Waterproof Travel Essentials, Space-Saving Luggage Organizer Bags Set (Grey)', '11, Set,Packing, Cubes, Luggage, Packing, Organizers, for, Travel, Accessories,, Light, Travel, Luggage, Packing, Organizers,, Waterproof, Travel, Essentials,, Space-Saving, Luggage, Organizer, Bags, Set, (Grey)', 0, NULL, 'ab.com', 2, 69, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/ygMp3qGtFhdGqvCmHylL.jpg', 1, 1, NULL, NULL),
(118, NULL, 'Re-flection Voyager Carry-on Suitcase, Lightweight Vertical Series Travel Soft Luggage Trolley, 4 Spinner Wheels', 're-flection-voyager-carry-on-suitcase-lightweight-vertical-series-travel-soft-luggage-trolley-4-spinner-wheels', '<p>Our luggage set is made of high-quality soft Nylon material for the soft-shell which makes our luggage set more sturdy, lightweight and impact-resistant. Its lightweight construction helps you to maintain airline weight restrictions. The perfect luggage solution for all individuals. Its durable yet lightweight material provides long-lasting usage and safety.Shaped in such a way that you can place all your travel belongings in it so easily and all your stuff will be well arranged. Excellent choice for Long-distance business trips and tours.High performance ball bearing wheels and lightweight yet sturdy power scope Lite handle reduce wobble and ensure a smooth, easy roll. Expands up to 2 inches to maximize packing capacity with tapered shape to prevent tipping; Features, 2 exterior compartments, full length interior lid pocket, and adjustable hold down straps for packing convenience and flexibility.With 3 levels of the adjustable handle and it is super easy to adjust the size you need. Whether you\'re a frequent traveller or just planning a getaway, this trolley won\'t let you down.Our Hardcase Trolley Luggage Bag features 4 multi-directional 360° spinner wheels which are perfect for all your globetrotting endeavours.</p>', '', 'Re-flection Voyager Carry-on Suitcase, Lightweight Vertical Series Travel Soft Luggage Trolley, 4 Spinner Wheels', 'Re-flection Voyager Carry-on Suitcase, Lightweight Vertical Series Travel Soft Luggage Trolley, 4 Spinner Wheels', 'Re-flection Voyager Carry-on Suitcase, Lightweight Vertical Series Travel Soft Luggage Trolley, 4 Spinner Wheels', 'Re-flection, Voyager, Carry-on, Suitcase,, Lightweight, Vertical, Series, Travel, Soft, Luggage, Trolley,, 4, Spinner, Wheels', 0, NULL, 'abc.com', 2, 146, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/yzoNso2UJA3FEHadZTnJ.jpg', 1, 1, NULL, NULL),
(119, NULL, 'Necomi 8 Set Packing Cubes for Suitcases, Travel Luggage Organizer, Travel Packing Kit with Clothes Storage Bag & Shoes Bag & Toiletry Bag & Underwear Bag（Beige）', 'necomi-8-set-packing-cubes-for-suitcases-travel-luggage-organizer-travel-packing-kit-with-clothes-storage-bag-shoes-bag-toiletry-bag-underwear-bag-beige-', '<ul><li><span style=\"color:rgb(15,17,17);\">🎈【PERFECT DESIGN】：Mesh top for easy identification of contents, keep your clothes clean and breathable while protecting privacy, fixed buckles keep your clothes clean and tidy. Travel packing cubes helping you to classify your belongings and keeping them from getting lost.</span></li><li><span style=\"color:rgb(15,17,17);\">🎈【EASY MAINTENANCE】：Lightweight, water-resistant, portable, foldable, rip stop, easy to storage. Waterproof material makes it easy to clean up and get dry in short that worry free from cleaning and always prepared for your trip.</span></li><li><span style=\"color:rgb(15,17,17);\">🎈【8 PIECES】：Includes 3 different sizes of packing cubes organizers ( large:10-12 shirts, medium:7-9 Shirts, small: 4-6 shirts), 1 bra underwear bag, 1 Shoe bag, 1 toiletry bag, 1 laundry bag and 1 zippered bag.</span></li><li><span style=\"color:rgb(15,17,17);\">🎈【Save More Space】: Compression travel packing organizers, Help you keep clothes separated and wrinkle free instead of digging around in the suitcase. Get 30% more extra space in suitcase or carry on backpack.</span></li><li><span style=\"color:rgb(15,17,17);\">🎈【Multiple Occasions】: these travel cubes are suitable for most carry on items, such as handbags, backpacks, luggage bags, cosmetic bags, etc.; These luggage packing cubes are also suitable for family dinner, business travel, vacation, picnic, daily storage, and so on.Say goodbye to your travel dilemma.</span></li></ul>', '', 'Necomi 8 Set Packing Cubes for Suitcases, Travel Luggage Organizer, Travel Packing Kit with Clothes Storage Bag & Shoes Bag & Toiletry Bag & Underwear Bag（Beige）', 'Necomi 8 Set Packing Cubes for Suitcases, Travel Luggage Organizer, Travel Packing Kit with Clothes Storage Bag & Shoes Bag & Toiletry Bag & Underwear Bag（Beige）', 'Necomi 8 Set Packing Cubes for Suitcases, Travel Luggage Organizer, Travel Packing Kit with Clothes Storage Bag & Shoes Bag & Toiletry Bag & Underwear Bag（Beige）', 'Necomi, 8, Set, Packing, Cubes, for, Suitcases,, Travel, Luggage, Organizer,, Travel, Packing, Kit, with, Clothes, Storage, Bag, &, Shoes, Bag, &, Toiletry, Bag, &, Underwear, Bag（Beige）', 0, NULL, 'abc.com', 2, 43, '8 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/stjQO3EIa8GY1r3YVDQM.jpg', 1, 1, NULL, NULL),
(120, NULL, 'OMIRA Military Tactical Backpack, 45L Large Army 3 Day Assault Pack, Molle Backpack, Emergency Pack, Travel Mountaineering Bag, Hiking Backpacks Ideal for Camping, Hunting, Hiking, Outdoor Adventure', 'omira-military-tactical-backpack-45l-large-army-3-day-assault-pack-molle-backpack-emergency-pack-travel-mountaineering-bag-hiking-backpacks-ideal-for-camping-hunting-hiking-outdoor-adventure', '<p>The Space You Need --- This tactical backpack measures approximately: 30*28*50cm/11.81*11.02*19.68 inches and 45L capacity, this backpack has enough space for all your essential gear. The spacious multi-level internal storage compartment can hold a lot of outdoor gear, and also meet your daily travel needs. Suitable for fitness, outdoor travel, hiking and other outdoor activities. Waterproof &amp; Scratch-Resistant Design --- The backpack is made of 600*600D encrypted oxford cloth, the tactical assault backpack is reinforced and double stitched at all pressure points. Durable and durable, our special coating makes our training backpacks both water-resistant and scratch-resistant. Molle Modular Design --- The Molle backpack has a webbing system on the front and sides, designed to be combined with other equipment, you can attach extra bags or gear as a tactical backpack; such as water bottle bag, intercom bag, first aid bag, flashlight bag, sundry bag As well as sleeping bags and mats. Multiple Compartments --- Designed with 5 compartments for storing different things: two front pockets for small items, two large compartments with built-in zipper pockets and mesh for large and important supplies Bag, dedicated laptop/device compartment, an Army backpack that opens flat to 180 degrees for easy packing/unpacking, and a hidden rear pocket for frequently used items. Comfort And Functionality --- This sports gym backpack features double stitching, padded shoulder straps and a back area with mesh backing for comfort, ventilation and strength during travel. High-quality branded two-way zipper, all compartments have two-way openings for easy access. The easily adjustable waist belt prevents the belt from slipping out of the buckle. Hundreds of uses including climbing, training, hiking, trekking, survival, camping and more.</p>', '', 'OMIRA Military Tactical Backpack, 45L Large Army 3 Day Assault Pack, Molle Backpack, Emergency Pack, Travel Mountaineering Bag, Hiking Backpacks Ideal for Camping, Hunting, Hiking, Outdoor Adventure', 'OMIRA Military Tactical Backpack, 45L Large Army 3 Day Assault Pack, Molle Backpack, Emergency Pack, Travel Mountaineering Bag, Hiking Backpacks Ideal for Camping, Hunting, Hiking, Outdoor Adventure', 'OMIRA Military Tactical Backpack, 45L Large Army 3 Day Assault Pack, Molle Backpack, Emergency Pack, Travel Mountaineering Bag, Hiking Backpacks Ideal for Camping, Hunting, Hiking, Outdoor Adventure', 'OMIRA, Military, Tactical, Backpack,, 45L, Large, Army, 3, Day, Assault, Pack,, Molle, Backpack,, Emergency, Pack,, Travel, Mountaineering, Bag,, Hiking, Backpacks, Ideal, for, Camping,, Hunting,, Hiking,, Outdoor, Adventure', 0, NULL, 'abc.com', 2, 129, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/V0Lj1fhdh26ip1HyOX7c.jpg', 1, 1, NULL, NULL),
(121, NULL, 'PARA JOHN Single Size, luggage trolley, Matrix Luggage Trolley, Blue 24 Inch', 'para-john-single-size-luggage-trolley-matrix-luggage-trolley-blue-24-inch', '<ul><li><span style=\"color:rgb(15,17,17);\">Features Multi-Directional Spinner Wheels To Make Traveling Easy</span></li><li><span style=\"color:rgb(15,17,17);\">Designed To Make Travelling Easier</span></li><li><span style=\"color:rgb(15,17,17);\">Soft Grip Handle For Easy Lifting</span></li><li><span style=\"color:rgb(15,17,17);\">Made Of Extra-Thick ABS For Enhanced Strength And Durability</span></li><li><span style=\"color:rgb(15,17,17);\">The Zip Fastening Ensures The Safety Of Your Things And Reduces Fall Out</span></li></ul>', '', 'PARA JOHN Single Size, luggage trolley, Matrix Luggage Trolley, Blue 24 Inch', 'PARA JOHN Single Size, luggage trolley, Matrix Luggage Trolley, Blue 24 Inch', 'PARA JOHN Single Size, luggage trolley, Matrix Luggage Trolley, Blue 24 Inch', 'PARA, JOHN, Single, Size,, luggage, trolley,, Matrix, Luggage, Trolley,, Blue, 24, Inch', 0, NULL, 'abc.com', 2, 149, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/Y1LALSTUJzg0a7ZnyBHF.jpg', 1, 1, NULL, NULL),
(122, NULL, 'DC Collectibles Justice League 7-Pack Action Figure Box Set', 'dc-collectibles-justice-league-7-pack-action-figure-box-set', '<ul><li><span style=\"color:rgb(15,17,17);\">Toy Category : Action Figures</span></li><li><span style=\"color:rgb(15,17,17);\">Targeted Group : Unisex</span></li><li><span style=\"color:rgb(15,17,17);\">Manufacturer Recommended Age : 3 Years &amp; Above</span></li><li><span style=\"color:rgb(15,17,17);\">Age : 3 Years &amp; Above</span></li><li><span style=\"color:rgb(15,17,17);\">Brand : Other</span></li></ul>', '', 'DC Collectibles Justice League 7-Pack Action Figure Box Set', 'DC Collectibles Justice League 7-Pack Action Figure Box Set', 'DC Collectibles Justice League 7-Pack Action Figure Box Set', 'DC, Collectibles, Justice, League, 7-Pack, Action, Figure, Box, Set', 0, NULL, 'abc.com', 2, 99, '7 pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/pSDuIvZdRMWbNjPj5fN5.jpg', 1, 1, NULL, NULL),
(123, NULL, 'Startonight Canvas Wall Art Decor Horses and Bird Painting for Living Room 80 x 120 cm', 'startonight-canvas-wall-art-decor-horses-and-bird-painting-for-living-room-80-x-120-cm', '<h2 style=\"margin-left:0px;\">Startonight Canvas Wall Art Decor Horses and Bird Painting for Living Room 80 x 120 cm</h2>', '', 'Startonight Canvas Wall Art Decor Horses and Bird Painting for Living Room 80 x 120 cm', 'Startonight Canvas Wall Art Decor Horses and Bird Painting for Living Room 80 x 120 cm', 'Startonight Canvas Wall Art Decor Horses and Bird Painting for Living Room 80 x 120 cm', 'Startonight, Canvas, Wall, Art, Decor, Horses, and, Bird, Painting, for, Living, Room, 80, x, 120, cm', 0, NULL, 'abc.com', 2, 599, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/JMbQuGC3obcGl6Ipx5eB.jpg', 1, 1, NULL, NULL),
(124, NULL, 'VOIDROP Couples Handmade Swan-Swan Figurine Sculpture Kissing Bird-Resin Swan-Showpiece Figurines Loving Birds for Home and Office(Big Size) (Gold)', 'voidrop-couples-handmade-swan-swan-figurine-sculpture-kissing-bird-resin-swan-showpiece-figurines-loving-birds-for-home-and-office-big-size-gold-', '<ul><li><span style=\"color:rgb(15,17,17);\">♬Classic Decor for Home:These two looking at each other is a nice home decoration, the swan garden statue will not fade when exposed to sunlight and rain.</span></li><li><span style=\"color:rgb(15,17,17);\">♬Rich Colors:Using high chroma pigments, each resin swan ornament is colorful, which can not only bring you visual enjoyment but also can be used as decoration.</span></li><li><span style=\"color:rgb(15,17,17);\">♬Make a Great Gift:This adorable swan statue will make a thoughtful gift for your family member or a friend at all kinds of festivals, such as birthdays, weddings, housewarming, etc.</span></li><li><span style=\"color:rgb(15,17,17);\">♬Safe and Long-lasting:The high-quality resin material is used for making cute swan figurines, which will prevent breaking easily. It is safe, built to last, and waterproof.</span></li><li><span style=\"color:rgb(15,17,17);\">♬Suitable for Multiple Occasions: You can place the resin swan sculpture on your dining table, desk, shelf, or mantel. It may also be placed on the lawn to decorate your terrace and garden.</span></li></ul>', '', 'VOIDROP Couples Handmade Swan-Swan Figurine Sculpture Kissing Bird-Resin Swan-Showpiece Figurines Loving Birds for Home and Office(Big Size) (Gold)', 'VOIDROP Couples Handmade Swan-Swan Figurine Sculpture Kissing Bird-Resin Swan-Showpiece Figurines Loving Birds for Home and Office(Big Size) (Gold)', 'VOIDROP Couples Handmade Swan-Swan Figurine Sculpture Kissing Bird-Resin Swan-Showpiece Figurines Loving Birds for Home and Office(Big Size) (Gold)', 'VOIDROP, Couples, Handmade, Swan-Swan, Figurine, Sculpture, Kissing, Bird-Resin, Swan-Showpiece, Figurines, Loving, Birds, for, Home, and, Office(Big, Size), (Gold)', 0, NULL, 'abc.com', 2, 129, 'pc', 100, 1, 1, 0, 'abc.com', 0.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/dz8mdR441QqMf9HIbMmG.jpg', 1, 1, NULL, NULL),
(125, NULL, '3 Panels Horse Poster Prints Modern Motivational Landscape Prainting Inspirational Animals Picture Entrepreneur Quotes Wall Art on Canvas for Living Room Office Bedroom Wall Decorations-36\'\'W x 16\'\'H', '3-panels-horse-poster-prints-modern-motivational-landscape-prainting-inspirational-animals-picture-entrepreneur-quotes-wall-art-on-canvas-for-living-room-office-bedroom-wall-decorations-36-w-x-16-h', '<ul><li><span style=\"color:rgb(15,17,17);\">✦【Motivational Posters Inspirational Wall Art】Size - Total 3Panels. Motivational Wall Art Each Panel Size:16\"Hx12W\"x3pcs (40x30cmx3pcs) . Mindset is everything wall art decor picture prints. Cute animal painting of picture printing on canvas. It is very natural, vivid, dustproof, waterproof easy to take care and never fades.</span></li><li><span style=\"color:rgb(15,17,17);\">✦【Perfect Wall Art 】Perfect wall decorations painting - A great wall decorations paintings for home, living room, bedroom, kitchen, apartment,office, hotel, dining room, bathroom, bar,classroom，school，dorm room，dormitory，etc and so on Add the Elegant Artistic Atmosphere.</span></li><li><span style=\"color:rgb(15,17,17);\">✦【Oil Painting Ready to Hang on Wall】 - Gallery wrapped and stretched with wooden frame on the back. Each panel has a black hook already mounted on the wooden bar for easy hanging on wall. This is a framed canvas art prints ready to hang for home decorations wall decor. Easy to hang up this beautiful inspirational posters picture in your home.</span></li><li><span style=\"color:rgb(15,17,17);\">✦【Giclee design - Professional Giclee Inspirational Wall Art】 Inspiration canvas wall art printings artwork.Picture print on the premium and lasting durability canvas. High-grade canvas home art painting is good choice as gift for your lover, families, classmates, friends or workmates.</span></li></ul>', '', '3 Panels Horse Poster Prints Modern Motivational Landscape Prainting Inspirational Animals Picture Entrepreneur Quotes Wall Art on Canvas for Living Room Office Bedroom Wall Decorations-36\'\'W x 16\'\'H', '3 Panels Horse Poster Prints Modern Motivational Landscape Prainting Inspirational Animals Picture Entrepreneur Quotes Wall Art on Canvas for Living Room Office Bedroom Wall Decorations-36\'\'W x 16\'\'H', '3 Panels Horse Poster Prints Modern Motivational Landscape Prainting Inspirational Animals Picture Entrepreneur Quotes Wall Art on Canvas for Living Room Office Bedroom Wall Decorations-36\'\'W x 16\'\'H', '3, Panels, Horse, Poster, Prints, Modern, Motivational, Landscape, Prainting, Inspirational, Animals, Picture, Entrepreneur, Quotes, Wall, Art, on, Canvas, for, Living, Room, Office, Bedroom, Wall, Decorations-36\'\'W, x, 16\'\'H', 0, NULL, 'abc.com', 2, 202, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/K8bQO1Pc9m6detDz1AwG.jpg', 1, 1, NULL, NULL),
(126, 4, 'Ulanzi MT-55 Ombra Photography Travel Tripod for Mirrorless DSLR Smartphone | Aluminum Alloy | Arca Swiss Plate Ball Head | Phone Mount | 1.1kg - 158cm', 'ulanzi-mt-55-ombra-photography-travel-tripod-for-mirrorless-dslr-smartphone-aluminum-alloy-arca-swiss-plate-ball-head-phone-mount-1-1kg---158cm-126', '<ul><li><span style=\"color:rgb(15,17,17);\">💖【Arca Swiss Quick Release Plate】- Universal and durable</span></li><li><span style=\"color:rgb(15,17,17);\">💖【Horizontal Adjustable】- Level the tripod according to the position of the bubble</span></li><li><span style=\"color:rgb(15,17,17);\">💖【Mini Compass】- Outdoor shooting, guide directions</span></li><li><span style=\"color:rgb(15,17,17);\">💖【 Leg Angle Adjustment】- Snap-lock, multi-angle adjustment</span></li><li><span style=\"color:rgb(15,17,17);\">💖【Built-in Foot Spike】- Remove the silicone foot pads to switch to spike mode</span></li><li><span style=\"color:rgb(15,17,17);\">💖【Light Weight】- 1.1kg/3.4lbs. Around the weight of a bottle of 1L water</span></li><li><span style=\"color:rgb(15,17,17);\">💖【Adjustable Length】- Extend to 158cm/62.2inches, 53cm/20.9inches fold size</span></li><li><span style=\"color:rgb(15,17,17);\">🌸【After-Sales Service】Our products come with 1-year warranty and 30-day money back guarantee. If the product has any problem, please feel free to contact us.</span></li></ul>', '', 'Ulanzi MT-55 Ombra Photography Travel Tripod for Mirrorless DSLR Smartphone | Aluminum Alloy | Arca Swiss Plate Ball Head | Phone Mount | 1.1kg - 158cm', 'Ulanzi MT-55 Ombra Photography Travel Tripod for Mirrorless DSLR Smartphone | Aluminum Alloy | Arca Swiss Plate Ball Head | Phone Mount | 1.1kg - 158cm', 'Ulanzi MT-55 Ombra Photography Travel Tripod for Mirrorless DSLR Smartphone | Aluminum Alloy | Arca Swiss Plate Ball Head | Phone Mount | 1.1kg - 158cm', 'Ulanzi, MT-55, Ombra, Photography, Travel, Tripod, for, Mirrorless, DSLR, Smartphone, |, Aluminum, Alloy, |, Arca, Swiss, Plate, Ball, Head, |, Phone, Mount, |, 1.1kg, -, 158cm', 0, 'null', 'abc.con', 2, 279, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 0, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/wRs7b1dNDEUKaSgxKZq6.jpg', 0, 66, NULL, '2024-01-14 10:28:27'),
(127, 4, '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023-huion-inspiroy-2-drawing-tablet-with-scroll-wheel-3-set-8-customized-keys-battery-free-stylus-for-digital-art-design-sketch-graphics-tablet-works-with-mac-pc-mobile-black-small-', '<ul><li><span style=\"color:rgb(15,17,17);\">Advanced PenTech 3.0: Upgraded from PenTech 2.0 to PenTech 3.0, Inspiroy 2 art pad offers amazing precision &amp; control over every line with no noticeable lag &amp; wobble, just like a standard pen.</span></li><li><span style=\"color:rgb(15,17,17);\">Ergonomics Pen Design: The new digital stylus PW110 is improved designed with slimmer body, soft silicone grip &amp; accessible side buttons for better ergonomics &amp; comfort.</span></li><li><span style=\"color:rgb(15,17,17);\">Programmable Scroll &amp; Shortcut Keys: Unique scroll wheel &amp; 6 press keys can be customized to your favorite shortcut so that your creative work become smoother and more efficient. You also can change the setting for different apps.</span></li><li><span style=\"color:rgb(15,17,17);\">Mobile Friendly: Enjoy creating on your Inspiroy 2 and see your drawings and paintings come to life on your Android smartphone or tablet (OS version 6.0 or later).</span></li><li><span style=\"color:rgb(15,17,17);\">Multi-OS Compatibility: Inspiroy 2 pen tablet is compatible with Mac (MacOS 10.12 or later), PC (Windows 7 or later), Linux(Ubuntu) and certain Android devices (OS version 6.0 or later).</span></li></ul>', '', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023, HUION, Inspiroy, 2, Drawing, Tablet, with, Scroll, Wheel, 3-Set, 8, Customized, Keys, Battery-Free, Stylus, for, Digital, Art,, Design,, Sketch,, Graphics, Tablet, Works, with, Mac,, PC, &, Mobile,, Black, (Small)', 0, NULL, 'abc.com', 2, 169, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/r8CvUzrL5SWuVSfC7KvS.jpg', 1, 1, NULL, NULL),
(128, 4, '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023-huion-inspiroy-2-drawing-tablet-with-scroll-wheel-3-set-8-customized-keys-battery-free-stylus-for-digital-art-design-sketch-graphics-tablet-works-with-mac-pc-mobile-black-small-', '<ul><li><span style=\"color:rgb(15,17,17);\">Advanced PenTech 3.0: Upgraded from PenTech 2.0 to PenTech 3.0, Inspiroy 2 art pad offers amazing precision &amp; control over every line with no noticeable lag &amp; wobble, just like a standard pen.</span></li><li><span style=\"color:rgb(15,17,17);\">Ergonomics Pen Design: The new digital stylus PW110 is improved designed with slimmer body, soft silicone grip &amp; accessible side buttons for better ergonomics &amp; comfort.</span></li><li><span style=\"color:rgb(15,17,17);\">Programmable Scroll &amp; Shortcut Keys: Unique scroll wheel &amp; 6 press keys can be customized to your favorite shortcut so that your creative work become smoother and more efficient. You also can change the setting for different apps.</span></li><li><span style=\"color:rgb(15,17,17);\">Mobile Friendly: Enjoy creating on your Inspiroy 2 and see your drawings and paintings come to life on your Android smartphone or tablet (OS version 6.0 or later).</span></li><li><span style=\"color:rgb(15,17,17);\">Multi-OS Compatibility: Inspiroy 2 pen tablet is compatible with Mac (MacOS 10.12 or later), PC (Windows 7 or later), Linux(Ubuntu) and certain Android devices (OS version 6.0 or later).</span></li></ul>', '', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023 HUION Inspiroy 2 Drawing Tablet with Scroll Wheel 3-Set 8 Customized Keys Battery-Free Stylus for Digital Art, Design, Sketch, Graphics Tablet Works with Mac, PC & Mobile, Black (Small)', '2023, HUION, Inspiroy, 2, Drawing, Tablet, with, Scroll, Wheel, 3-Set, 8, Customized, Keys, Battery-Free, Stylus, for, Digital, Art,, Design,, Sketch,, Graphics, Tablet, Works, with, Mac,, PC, &, Mobile,, Black, (Small)', 0, NULL, 'abc.com', 2, 169, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/9JlUCyHKzOk5H10EYeq9.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(129, 4, 'Lauwell 4 Pcs Christmas Dog Pet Costume Include 2 Christmas Tree Hat Small Dog Headgear and 2 Adjustable Collars Bib Santa Elf Cat Bib for Xmas Dog Cat Outfit Clothing Party Accessory', 'lauwell-4-pcs-christmas-dog-pet-costume-include-2-christmas-tree-hat-small-dog-headgear-and-2-adjustable-collars-bib-santa-elf-cat-bib-for-xmas-dog-cat-outfit-clothing-party-accessory', '<ul><li><span style=\"color:rgb(15,17,17);\">What Will Get: this Christmas dog costume set contains 1 green elk dog bib, 1 red Santa Claus dog bib, 2 pieces of dog tree hats in green and red, which are cool and cute Christmas gifts for your puppies and cats</span></li><li><span style=\"color:rgb(15,17,17);\">Reassuring Quality: the pet santa hat is made of short plush material, and the dog bib is made of quality polyester and cotton fabric, soft and comfortable, suitable for most small pets to wear</span></li><li><span style=\"color:rgb(15,17,17);\">Classic Christmas Design: this dog Christmas costume mainly adopt red and green color, combined with classic elk and Santa Claus patterns, which are full of festive color and atmosphere, ideal for Christmas holiday, party, and outdoor activities</span></li><li><span style=\"color:rgb(15,17,17);\">Wide Application: this Christmas clothing set can make your pets more lovely, which suits for Christmas party, daily wearing, photo shoots, cosplay parties, performance dressing and Halloween parties</span></li><li><span style=\"color:rgb(15,17,17);\">Christmas Gifts: these Christmas dog clothes are suitable to give your puppy or friend\'s pet as a lovely Christmas gift, making pets stand out at Christmas parties, they will like to receive the gift.Care Instructions: Hand Wash Only</span></li></ul>', '', 'Lauwell 4 Pcs Christmas Dog Pet Costume Include 2 Christmas Tree Hat Small Dog Headgear and 2 Adjustable Collars Bib Santa Elf Cat Bib for Xmas Dog Cat Outfit Clothing Party Accessory', 'Lauwell 4 Pcs Christmas Dog Pet Costume Include 2 Christmas Tree Hat Small Dog Headgear and 2 Adjustable Collars Bib Santa Elf Cat Bib for Xmas Dog Cat Outfit Clothing Party Accessory', 'Lauwell 4 Pcs Christmas Dog Pet Costume Include 2 Christmas Tree Hat Small Dog Headgear and 2 Adjustable Collars Bib Santa Elf Cat Bib for Xmas Dog Cat Outfit Clothing Party Accessory', 'Lauwell, 4, Pcs, Christmas, Dog, Pet, Costume, Include, 2, Christmas, Tree, Hat, Small, Dog, Headgear, and, 2, Adjustable, Collars, Bib, Santa, Elf, Cat, Bib, for, Xmas, Dog, Cat, Outfit, Clothing, Party, Accessory', 0, NULL, 'abc.com', 2, 69, '4 pcs', 10, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/z4KvM25i2bi1aY05T2Ak.jpg', 1, 1, NULL, NULL),
(130, 4, 'JOY FOR ALL - Orange Tabby Cat - Interactive Companion Pets - Realistic & Lifelike', 'joy-for-all---orange-tabby-cat---interactive-companion-pets---realistic-lifelike', '<ul><li><span style=\"color:rgb(15,17,17);\">Cat-like movements &amp; sounds: our revolutionary vibrapurr technology gives the cat an authentic purr that sounds and feels just like real purring. A real cat would, our companion pet cat is able to open and close its eyes, lift its Paw, open its mouth and move its head and body. The companion pet cat also has synthetic, soft, brushable fur inspired by real feline breeds.</span></li><li><span style=\"color:rgb(15,17,17);\">Built in sensors: using the built in sensors, our companion pet cat responds to motion and touch such as Petting and hugging, much like the real Cats you know and love, but doesn\'t require any special care or feeding.</span></li><li><span style=\"color:rgb(15,17,17);\">A rich experience: Designed to bring comfort, companionship and fun to Elder loved ones. The ease of care and convenience paired with our state of the art technology makes for the best possible interactive experience for older adults living in senior communities or aging at home, and their caregivers or simply just a person that could use some extra company.</span></li><li><span style=\"color:rgb(15,17,17);\">Award winning: Joy For All companion pets won the caregiver friendly award from today\'s caregiver two years in 2016 and 2017. This product has appeared in the new York times, people magazine and the Baltimore sun. It has also been seen on CBS and the doctors and heard on BBC radio.</span></li><li><span style=\"color:rgb(15,17,17);\">Ageless innovation: ageless innovation is a global company devoted to developing fun and engaging products for older adults. Beginning with the award-winning line of Joy For All companion pets, originally designed and launched by Hasbro, ageless innovation is focused on creating products that promote fun, joy and play while creating meaningful connections for aging loved ones, their families, and caregivers.</span></li></ul>', '', 'JOY FOR ALL - Orange Tabby Cat - Interactive Companion Pets - Realistic & Lifelike', 'JOY FOR ALL - Orange Tabby Cat - Interactive Companion Pets - Realistic & Lifelike', 'JOY FOR ALL - Orange Tabby Cat - Interactive Companion Pets - Realistic & Lifelike', 'JOY, FOR, ALL, -, Orange, Tabby, Cat, -, Interactive, Companion, Pets, -, Realistic, &, Lifelike', 0, NULL, 'abc.com', 2, 507, 'pc', 10, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/j8ed3krpUgfd6CLVmEI4.jpg', 1, 1, NULL, NULL),
(132, 4, 'Dragro Sheep Clippers 600W, Professional Animal Shearing Machine, Farm Livestock Grooming Kit, Heavy Duty Electric Clippers for Thick Coat Animals (Sheep Clippers-600W)', 'dragro-sheep-clippers-600w-professional-animal-shearing-machine-farm-livestock-grooming-kit-heavy-duty-electric-clippers-for-thick-coat-animals-sheep-clippers-600w-', '<ul><li><span style=\"color:rgb(15,17,17);\">🐏【Powerful Motor】Dragro electric Sheep shears has a power of 600watts and provides up to 2400 strokes/min to improve efficiency, which makes your job of shearing sheep, goats, alpaca, llamas and angora rabbits to become more easily!</span></li><li><span style=\"color:rgb(15,17,17);\">🐏【6-SPEED ADJUSTABLE】Low speed (1-3) offers precision performance to clip sensitive areas while high speed (4-6) delivers maximum power for faster trims and full body shave down. Whether you are a beginner or professional, the 6 speeds control help you finish the task quickly and easily.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【PROFESSIONAL SHEARS】This professional electric sheep clipper has a blade with high hardness and high heat resistance. the blade tension rotatable button for easy and quick shearing. long lasting use not harm the animal. suitable for sheep, goats, llamas, alpacas. We do not recommend using it on cats and puppies.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【SAVE TIME】 Can cut 6-10 sheep in one hour, suitable for family farming or pasture farming. Labor-saving, the grip structure of the scissors is humanized, and the long-term shearing of the hand will not be fatigued.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【NOTE】 -When using electric wool shears, remember to lubricate the blades. Remember that the livestock clippers cannot run at idle to prevent the blade from overheating . Please use the cooling spray every few minutes, take short breaks during shearing, clean the blade in time . Please read the operating instructions carefully before use.</span></li></ul>', '', 'Dragro Sheep Clippers 600W, Professional Animal Shearing Machine, Farm Livestock Grooming Kit, Heavy Duty Electric Clippers for Thick Coat Animals (Sheep Clippers-600W)', 'Dragro Sheep Clippers 600W, Professional Animal Shearing Machine, Farm Livestock Grooming Kit, Heavy Duty Electric Clippers for Thick Coat Animals (Sheep Clippers-600W)', 'Dragro Sheep Clippers 600W, Professional Animal Shearing Machine, Farm Livestock Grooming Kit, Heavy Duty Electric Clippers for Thick Coat Animals (Sheep Clippers-600W)', 'Dragro, Sheep, Clippers, 600W,, Professional, Animal, Shearing, Machine,, Farm, Livestock, Grooming, Kit,, Heavy, Duty, Electric, Clippers, for, Thick, Coat, Animals, (Sheep, Clippers-600W)', 0, NULL, 'abc.com', 2, 340, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/VY4F3DQdwWzw3aUEDa1f.jpg', 1, 1, NULL, NULL),
(159, 4, 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'airssory-10-pcs-star-rattan-fragrance-diffuser-replacement-accessories-essential-oil-aroma-diffuser-sticks-for-christmas-party-tree-hanger-pendant-home-decor---59-5mm-159', '', '', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory, 10, Pcs, Star, Rattan, Fragrance, Diffuser, Replacement, Accessories,Essential, Oil, Aroma, Diffuser, Sticks, for, Christmas, Party, Tree, Hanger, Pendant, Home, Decor, -, 59.5mm', 0, NULL, 'ABC.COM', 2, 10, 'PC', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/UHUsmxQTOs0pe461tlyc.jpg', 1, 1, NULL, NULL),
(160, 4, 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'airssory-10-pcs-star-rattan-fragrance-diffuser-replacement-accessories-essential-oil-aroma-diffuser-sticks-for-christmas-party-tree-hanger-pendant-home-decor---59-5mm-160', '', '', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory, 10, Pcs, Star, Rattan, Fragrance, Diffuser, Replacement, Accessories,Essential, Oil, Aroma, Diffuser, Sticks, for, Christmas, Party, Tree, Hanger, Pendant, Home, Decor, -, 59.5mm', 0, NULL, 'ABC.COM', 2, 10, 'PC', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/kQa0mPaXTTNOy115zmos.jpg', 1, 1, NULL, NULL),
(169, 4, 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'airssory-10-pcs-star-rattan-fragrance-diffuser-replacement-accessories-essential-oil-aroma-diffuser-sticks-for-christmas-party-tree-hanger-pendant-home-decor---59-5mm-169', '', '', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory, 10, Pcs, Star, Rattan, Fragrance, Diffuser, Replacement, Accessories,Essential, Oil, Aroma, Diffuser, Sticks, for, Christmas, Party, Tree, Hanger, Pendant, Home, Decor, -, 59.5mm', 0, NULL, 'ABC.COM', 2, 10, 'PC', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/sRdCBGkbuDuRUsbXVplT.jpg', 1, 1, NULL, NULL),
(170, 4, 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'airssory-10-pcs-star-rattan-fragrance-diffuser-replacement-accessories-essential-oil-aroma-diffuser-sticks-for-christmas-party-tree-hanger-pendant-home-decor---59-5mm-170', '', '', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory, 10, Pcs, Star, Rattan, Fragrance, Diffuser, Replacement, Accessories,Essential, Oil, Aroma, Diffuser, Sticks, for, Christmas, Party, Tree, Hanger, Pendant, Home, Decor, -, 59.5mm', 0, NULL, 'ABC.COM', 2, 10, 'PC', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/26yiTm8XlfPHgTTaSVOR.jpg', 1, 1, NULL, NULL),
(171, 4, 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'airssory-10-pcs-star-rattan-fragrance-diffuser-replacement-accessories-essential-oil-aroma-diffuser-sticks-for-christmas-party-tree-hanger-pendant-home-decor---59-5mm-171', '', '', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory 10 Pcs Star Rattan Fragrance Diffuser Replacement Accessories Essential Oil Aroma Diffuser Sticks for Christmas Party Tree Hanger Pendant Home Decor - 59.5mm', 'Airssory, 10, Pcs, Star, Rattan, Fragrance, Diffuser, Replacement, Accessories,Essential, Oil, Aroma, Diffuser, Sticks, for, Christmas, Party, Tree, Hanger, Pendant, Home, Decor, -, 59.5mm', 0, NULL, 'ABC.COM', 2, 10, 'PC', 100, 1, 1, 0, 'abc.com', 10.00, 1, 5, 0, 1, 5.00000, '5', 2, '5', 1, '/backend/files/ZbBRiP0mvA1sKjGbKBXX.jpg', 1, 1, NULL, NULL),
(172, 4, 'The Complete Outdoor Wedding Planner: From Rustic Settings to Elegant Garden Parties, Everything You Need to Know to Make Your Day Special Paperback – December 1, 2001', 'the-complete-outdoor-wedding-planner-from-rustic-settings-to-elegant-garden-parties-everything-you-need-to-know-to-make-your-day-special-paperback-december-1-2001', '', '', 'The Complete Outdoor Wedding Planner: From Rustic Settings to Elegant Garden Parties, Everything You Need to Know to Make Your Day Special Paperback – December 1, 2001', 'The Complete Outdoor Wedding Planner: From Rustic Settings to Elegant Garden Parties, Everything You Need to Know to Make Your Day Special Paperback – December 1, 2001', 'The Complete Outdoor Wedding Planner: From Rustic Settings to Elegant Garden Parties, Everything You Need to Know to Make Your Day Special Paperback – December 1, 2001', 'The, Complete, Outdoor, Wedding, Planner:, From, Rustic, Settings, to, Elegant, Garden, Parties,, Everything, You, Need, to, Know, to, Make, Your, Day, Special, Paperback, –, December, 1,, 2001', 0, NULL, 'ABC.COM', 2, 18, 'PC', 100, 5, 1, 0, 'abc.com', 0.00, 1, 5, 0, 1, 5.00000, '05', 2, '05', 1, '/backend/files/6K3Fvl0WlbuBqLcGDLyU.jpg', 1, 1, NULL, NULL),
(173, 4, 'ATHLIO 1 or 3 Pack Men\'s Thermal Long Sleeve Compression Shirts, Winter Gear Sports Base Layer Top, Athletic Running T-Shirt', 'athlio-1-or-3-pack-men-s-thermal-long-sleeve-compression-shirts-winter-gear-sports-base-layer-top-athletic-running-t-shirt', '<p>*Alert: True to size : Please follow the size examples below*(EX: Size \"Large recommended\" - Size for 6\" 215 lbs.) (EX: Size \"Medium\" 5\'9\"165 lbs.)ATHLIO Thermal Shirt© Series designed for warmth.[Materials] Mix of Polyester &amp; Spandex fabric is for excellent elasticity and durability.[Fleece Lined] Ultra soft fleece lining insulate the heat to protect the body heat.[Sun Protection] Safeguards your skin from harmful UVA and UVB rays by more than 99% (UPF 50+).It is suitable for running, yoga, baseball, basketball, soccer, football, bjj, gym workout, and other active workouts..Washing Tip : Wash separately before wearing.</p>', '', 'ATHLIO 1 or 3 Pack Men\'s Thermal Long Sleeve Compression Shirts, Winter Gear Sports Base Layer Top, Athletic Running T-Shirt', 'ATHLIO 1 or 3 Pack Men\'s Thermal Long Sleeve Compression Shirts, Winter Gear Sports Base Layer Top, Athletic Running T-Shirt', 'ATHLIO 1 or 3 Pack Men\'s Thermal Long Sleeve Compression Shirts, Winter Gear Sports Base Layer Top, Athletic Running T-Shirt', 'ATHLIO, 1, or, 3, Pack, Men\'s, Thermal, Long, Sleeve, Compression, Shirts,, Winter, Gear, Sports, Base, Layer, Top,, Athletic, Running, T-Shirt', 0, NULL, 'abc.com', 2, 156, '3 pcs', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/oI3AhX0nyOPft8VBYo4u.jpg', 1, 1, NULL, NULL),
(174, 4, 'Surviving Mount Everest: An Interactive Extreme Sports Adventure Library Binding – Illustrated, 1 August 2017', 'surviving-mount-everest-an-interactive-extreme-sports-adventure-library-binding-illustrated-1-august-2017', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">cz Blake A. Hoena grew up in central Wisconsin, where he wrote stories about robots conquering the moon and trolls lumbering around the woods behind his parents house. He now lives in Minnesota and enjoys writing about fun things like history, space aliens, and superheroes. Blake has written more than fifty chapter books and dozens of graphic novels for children.</span></p>', '', 'Surviving Mount Everest: An Interactive Extreme Sports Adventure Library Binding – Illustrated, 1 August 2017', 'Surviving Mount Everest: An Interactive Extreme Sports Adventure Library Binding – Illustrated, 1 August 2017', 'Surviving Mount Everest: An Interactive Extreme Sports Adventure Library Binding – Illustrated, 1 August 2017', 'Surviving, Mount, Everest:, An, Interactive, Extreme, Sports, Adventure, Library, Binding, –, Illustrated,, 1, August, 2017', 0, NULL, 'abc.com', 2, 118, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/1tFGgkvEE5U2NwqUtiYV.jpg', 1, 1, NULL, NULL),
(175, 4, 'Horse Saddle Shock absorption and thickening,Soft Equestrian Seat Pad Riding Equipment Comprehensive PU Western Saddle Pad Painless', 'horse-saddle-shock-absorption-and-thickening-soft-equestrian-seat-pad-riding-equipment-comprehensive-pu-western-saddle-pad-painless', '<ul><li><span style=\"color:rgb(15,17,17);\">【WIDE USE】 This saddle pad is adored by all equestrians as a daily schooling pad as well.Suitable for all saddles.</span></li><li><span style=\"color:rgb(15,17,17);\">【NON SLIP】Stay in place by strap, doesn\'t slip, regardless of horse movement Help Keeps you pain free for whole ride.</span></li><li><span style=\"color:rgb(15,17,17);\">【DURABLE MATERIAL】Made of PU, Memory Foam, thicken and wear-resistant.</span></li><li><span style=\"color:rgb(15,17,17);\">【SHOCKPROOF】Memory foam can better absorb vibration. Helps prevent further injuries and provides better comfort for riders and riders.</span></li><li><span style=\"color:rgb(15,17,17);\">【AFTER-SALES SERVICE】 If you encounter any problems, please email me immediately and I will help you solve them as soon as possible. If you are satisfied with our products and servers, please give us a positive feedback after confirming this order.</span></li></ul>', '', 'Horse Saddle Shock absorption and thickening,Soft Equestrian Seat Pad Riding Equipment Comprehensive PU Western Saddle Pad Painless', 'Horse Saddle Shock absorption and thickening,Soft Equestrian Seat Pad Riding Equipment Comprehensive PU Western Saddle Pad Painless', 'Horse Saddle Shock absorption and thickening,Soft Equestrian Seat Pad Riding Equipment Comprehensive PU Western Saddle Pad Painless', 'Horse, Saddle, Shock, absorption, and, thickening,Soft, Equestrian, Seat, Pad, Riding, Equipment, Comprehensive, PU, Western, Saddle, Pad, Painless', 0, NULL, 'abc.com', 2, 44, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/252FzZ8DEMDqVLKcESnH.jpg', 1, 1, NULL, NULL),
(176, NULL, 'Beauenty Sports Stacking Cups Plastic Card Games Family Parent Child Outdoor Indoor Speed Challenge Training Desktop Funny Toys Classic', 'beauenty-sports-stacking-cups-plastic-card-games-family-parent-child-outdoor-indoor-speed-challenge-training-desktop-funny-toys-classic', '<ul><li><span style=\"color:rgb(15,17,17);\">Game play: players according to the color command board requirements, according to the color order shown in the picture</span></li><li><span style=\"color:rgb(15,17,17);\">Put the cup in your hand quickly to make the correct color order. Then press the bell to win</span></li><li><span style=\"color:rgb(15,17,17);\">This is a puzzle game, and can enhance children and adults to color perception and reaction ability, so as to enhance hands-on ability</span></li></ul>', '', 'Beauenty Sports Stacking Cups Plastic Card Games Family Parent Child Outdoor Indoor Speed Challenge Training Desktop Funny Toys Classic', 'Beauenty Sports Stacking Cups Plastic Card Games Family Parent Child Outdoor Indoor Speed Challenge Training Desktop Funny Toys Classic', 'Beauenty Sports Stacking Cups Plastic Card Games Family Parent Child Outdoor Indoor Speed Challenge Training Desktop Funny Toys Classic', 'Beauenty, Sports, Stacking, Cups, Plastic, Card, Games, Family, Parent, Child, Outdoor, Indoor, Speed, Challenge, Training, Desktop, Funny, Toys, Classic', 0, NULL, 'abc.com', 2, 65, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/UcX4V0ApMUKHVCjvSXPG.jpg', 1, 1, NULL, NULL),
(177, NULL, 'Jackson Ultima Softec Sport Recreational Hockey Skate - Women\'s', 'jackson-ultima-softec-sport-recreational-hockey-skate---women-s', '<ul><li><span style=\"color:rgb(15,17,17);\">Jackson Ultima Ice Skates with Hockey Blades, ST6100 for Women, ST6101 for Girls, ST6102 for Men, ST6107 for Boys</span></li><li><span style=\"color:rgb(15,17,17);\">Thinsulate lined upper and tongue with cushy foam padding for maximum comfort and warmth, Modern look offering reduced weight due to lightweight construction</span></li><li><span style=\"color:rgb(15,17,17);\">Durable nylon upper with color coordinated trim</span></li><li><span style=\"color:rgb(15,17,17);\">Synthetic outsole for reduced weight</span></li><li><span style=\"color:rgb(15,17,17);\">Leisure blade with stainless steel runner</span></li></ul>', '', 'Jackson Ultima Softec Sport Recreational Hockey Skate - Women\'s', 'Jackson Ultima Softec Sport Recreational Hockey Skate - Women\'s', 'Jackson Ultima Softec Sport Recreational Hockey Skate - Women\'s', 'Jackson, Ultima, Softec, Sport, Recreational, Hockey, Skate, -, Women\'s', 0, NULL, 'abc.com', 2, 701, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/dayyvQOTNiwzmO5I4qko.jpg', 1, 1, NULL, NULL),
(178, NULL, 'Kids Protective Gear Set 7Pcs Sport Safety Equipment Adjustable Child Helmet', 'kids-protective-gear-set-7pcs-sport-safety-equipment-adjustable-child-helmet', '<ul><li><span style=\"color:rgb(15,17,17);\">Cold white Magnetic Infrared IR Bright Motion Sensor Activated LED Wall Lights Night Light Auto On/Off Battery Operated for Hallway Pathway</span></li></ul>', '', 'Kids Protective Gear Set 7Pcs Sport Safety Equipment Adjustable Child Helmet', 'Kids Protective Gear Set 7Pcs Sport Safety Equipment Adjustable Child Helmet', 'Kids Protective Gear Set 7Pcs Sport Safety Equipment Adjustable Child Helmet', 'Kids, Protective, Gear, Set, 7Pcs, Sport, Safety, Equipment, Adjustable, Child, Helmet', 0, NULL, 'abc.com', 2, 43, '7 pcs', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/0ChmW33TUGg8qyZqnkUx.jpg', 1, 1, NULL, NULL),
(179, NULL, 'Gifts for Him Boyfriend Husband,Multitool Axe Hammer Camping Accessories Survival Gear and Equipment,Camping Gear Hatchet Hunting Hiking Fishing,Mens Gifts Ideas for Men Dad Gifts', 'gifts-for-him-boyfriend-husband-multitool-axe-hammer-camping-accessories-survival-gear-and-equipment-camping-gear-hatchet-hunting-hiking-fishing-mens-gifts-ideas-for-men-dad-gifts', '<ul><li><span style=\"color:rgb(15,17,17);\">【Perfect and Unique Gift】If you are looking for a cool unique gift for your dad, boyfriend, husband or grandpa? This mini axe multitool is the best personalized gifts for him, makes for a cool gadget whether Christmas holiday, Father\'s Day, birthday, or anniversary gifts, it’s a special present for your dad as camping accessories or survival gear and equipment.</span></li><li><span style=\"color:rgb(15,17,17);\">&nbsp;【Ultimate Camping Gear Companion 】When you go camping, take this caming axe-head multitool , it’s the best camping gear and equipment for adventure lovers who like exploring, hiking, fishing, camping, hunting, or backpacking outdoor. Takes all the camping tools of camping essentials in handy from camping knife to chop some kindling size wood with camping axe for the evening campfire. This is a true essential camping stuff for any outdoor person!</span></li><li><span style=\"color:rgb(15,17,17);\">【Compact and Portable】Camping essential mini axe multitool, ideal tools for camping, with lightweight portable size 16cm/6.3\" fits into your pocket, comes with belt holster for safe storage, convenient to takeout for camping, home renovation, DIY jobs, and outdoor working, perfect super cool gadget to have with you at any time.</span></li><li><span style=\"color:rgb(15,17,17);\">【High-Quality and Well-Made】Sturdy and durable multitool hatchet, made of high-grade stainless steel with durable black oxidation finish,multi-purpose folding camping tool set, gifts for dads who have everything from daughter son, essential camping supplies for home travel and survival hiking hunting fishing whether as camping gear and equipment or survival kit.</span></li><li><span style=\"color:rgb(15,17,17);\">【100% Satisfaction Guarantee】Already purchased our cool camping gadgets multitool hammer hatchet&nbsp;? You’ll enjoy our 100% satisfaction guarantee protection plan which offer lifetime warranty and no reason return policy to guarantee you the best purchase experience.</span></li></ul>', '', 'Gifts for Him Boyfriend Husband,Multitool Axe Hammer Camping Accessories Survival Gear and Equipment,Camping Gear Hatchet Hunting Hiking Fishing,Mens Gifts Ideas for Men Dad Gifts', 'Gifts for Him Boyfriend Husband,Multitool Axe Hammer Camping Accessories Survival Gear and Equipment,Camping Gear Hatchet Hunting Hiking Fishing,Mens Gifts Ideas for Men Dad Gifts', 'Gifts for Him Boyfriend Husband,Multitool Axe Hammer Camping Accessories Survival Gear and Equipment,Camping Gear Hatchet Hunting Hiking Fishing,Mens Gifts Ideas for Men Dad Gifts', 'Gifts, for, Him, Boyfriend, Husband,Multitool, Axe, Hammer, Camping, Accessories, Survival, Gear, and, Equipment,Camping, Gear, Hatchet, Hunting, Hiking, Fishing,Mens, Gifts, Ideas, for, Men, Dad, Gifts', 0, NULL, 'abc.com', 2, 101, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/mwhiR42FWaPDDDygaVOG.jpg', 1, 1, NULL, NULL),
(180, NULL, 'UV 50 Protection Outdoor Multifunctional Flap Cap Sun Shield Mask Perfect Sport Hat Baseball cap', 'uv-50-protection-outdoor-multifunctional-flap-cap-sun-shield-mask-perfect-sport-hat-baseball-cap', '<p>Item Category: HatItem Trademark: Othermanufacturer: Other</p>', '', 'UV 50 Protection Outdoor Multifunctional Flap Cap Sun Shield Mask Perfect Sport Hat Baseball cap', 'UV 50 Protection Outdoor Multifunctional Flap Cap Sun Shield Mask Perfect Sport Hat Baseball cap', 'UV 50 Protection Outdoor Multifunctional Flap Cap Sun Shield Mask Perfect Sport Hat Baseball cap', 'UV, 50, Protection, Outdoor, Multifunctional, Flap, Cap, Sun, Shield, Mask, Perfect, Sport, Hat, Baseball, cap', 0, NULL, 'abc.com', 2, 21, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/OsJOwvaxyyy3NkDTOxQg.jpg', 1, 1, NULL, NULL),
(181, NULL, 'Mini Cubes Party Favors For Kids Birthday- 20 Pcs Mini Cube Puzzle Return Gifts For Birthday Party kids/ Gift Toys/ Birthday Giveaways For Kids/ Mini Toys Girls Boys/ Pinata Favors Goody Bag Fillers', 'mini-cubes-party-favors-for-kids-birthday--20-pcs-mini-cube-puzzle-return-gifts-for-birthday-party-kids-gift-toys-birthday-giveaways-for-kids-mini-toys-girls-boys-pinata-favors-goody-bag-fillers', '<ul><li><span style=\"color:rgb(15,17,17);\">Exclusive Mini Cube Puzzle for Party Favors For Kids: The pack contains 20Pcs of mini size puzzle cubes for kids educational toys, including Multiple Mini Magic Cube, made of environmental protection ABS plastic material, are non-toxic and odorless. These exclusive mini toys gifts for kids are cool to put as pinata favors or goody bag toys for school gifts.</span></li><li><span style=\"color:rgb(15,17,17);\">Brain Teasers return gifts for birthday party kids: The mini magic cube can foster your kid\'s sense of space and enhance a child\'s memory; Play with this speed cube set can reduce stress and improve your intelligence, this birthday giveaways for kids helps ability to solve problems and practicing hands-on dexterity skills. These party favors for kids are suitable for beginner and professional player.</span></li><li><span style=\"color:rgb(15,17,17);\">Purpose:The mini toys boys and girls can go in any party box, mini puzzle box, very suitable for any theme parties like unicorn, car, super hero, space etc birthdays, giveaways for kids bulk in school , توزيعات هدايا, class awards or children\'s prizes or puzzle cube game, travel / Camping toys, office desk toys and office decorations etc.</span></li><li><span style=\"color:rgb(15,17,17);\">Great Party favors For Kids Birthday Addition to Goody Bags：The pack of puzzle toys is a big hit as return gifts for birthday party to entertain boys and girls. It is a great choice as stuffers or fillers for goodie bags, party bags, treat bags, gift bags, pinata favors during kids’ birthday, Valentine, Easter, Halloween, Christmas, etc. This mini cube set is perfect for unisex gift ideas, birthday giveaways for kids, party favors for kids, return gifts for birthday party kids etc.</span></li><li><span style=\"color:rgb(15,17,17);\">Party Giveaways for kids of all Ages: Mini Cube toy, provides hours of enjoyable game play that great for boys or girl. These mini toys are the best for party favor ideas for any ages like 4 years, 5 years, 6 years, 7 years, 8 years, 9 years, 10 years, 11 years, 12 years etc. This mini cube toy is a perfect cube set for birthday giveaways for kids, party favors for kids, return gifts for birthday party kids etc.</span></li></ul>', '', 'Mini Cubes Party Favors For Kids Birthday- 20 Pcs Mini Cube Puzzle Return Gifts For Birthday Party kids/ Gift Toys/ Birthday Giveaways For Kids/ Mini Toys Girls Boys/ Pinata Favors Goody Bag Fillers', 'Mini Cubes Party Favors For Kids Birthday- 20 Pcs Mini Cube Puzzle Return Gifts For Birthday Party kids/ Gift Toys/ Birthday Giveaways For Kids/ Mini Toys Girls Boys/ Pinata Favors Goody Bag Fillers', 'Mini Cubes Party Favors For Kids Birthday- 20 Pcs Mini Cube Puzzle Return Gifts For Birthday Party kids/ Gift Toys/ Birthday Giveaways For Kids/ Mini Toys Girls Boys/ Pinata Favors Goody Bag Fillers', 'Mini, Cubes, Party, Favors, For, Kids, Birthday-, 20, Pcs, Mini, Cube, Puzzle, Return, Gifts, For, Birthday, Party, kids/, Gift, Toys/, Birthday, Giveaways, For, Kids/, Mini, Toys, Girls, Boys/, Pinata, Favors, Goody, Bag, Fillers', 0, NULL, 'abc.com', 2, 21, '2o pcs', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/oRve5K6LDhC9grIrGLnr.jpg', 1, 1, NULL, NULL),
(182, NULL, 'Party Balloon Hat, 50pcs Happy Birthday Decor, Aluminum Film Balloons Birthday Hair Accessories Inflatable Cute Headband Medium for birthday party, girls\' party, daily gathering, sister photoshoot', 'party-balloon-hat-50pcs-happy-birthday-decor-aluminum-film-balloons-birthday-hair-accessories-inflatable-cute-headband-medium-for-birthday-party-girls-party-daily-gathering-sister-photoshoot', '<ul><li><span style=\"color:rgb(15,17,17);\">🎈【Party Balloon Hat】- Fun and unique accessory that instantly adds a festive touch to any celebration!</span></li><li><span style=\"color:rgb(15,17,17);\">✨【Aluminum Film Balloons】- Eye-catching metallic balloons that shimmer and shine, making them perfect for adding glamour to any occasion!</span></li><li><span style=\"color:rgb(15,17,17);\">📸【Sister Photoshoot】- Enhance the memories with these cute and photogenic accessories, designed to make sister photoshoots even more memorable and fun!</span></li><li><span style=\"color:rgb(15,17,17);\">👑【Birthday Hair Accessories】- Adorable inflatable headbands that transform hairstyles into playful and charming looks, ideal for birthday parties and girls\' gatherings!</span></li><li><span style=\"color:rgb(15,17,17);\">💖【50pcs Happy Birthday Decor】- Abundance of colorful decorations to create a vibrant and joyful atmosphere for birthday parties!</span></li></ul>', '', 'Party Balloon Hat, 50pcs Happy Birthday Decor, Aluminum Film Balloons Birthday Hair Accessories Inflatable Cute Headband Medium for birthday party, girls\' party, daily gathering, sister photoshoot', 'Party Balloon Hat, 50pcs Happy Birthday Decor, Aluminum Film Balloons Birthday Hair Accessories Inflatable Cute Headband Medium for birthday party, girls\' party, daily gathering, sister photoshoot', 'Party Balloon Hat, 50pcs Happy Birthday Decor, Aluminum Film Balloons Birthday Hair Accessories Inflatable Cute Headband Medium for birthday party, girls\' party, daily gathering, sister photoshoot', 'Party, Balloon, Hat,, 50pcs, Happy, Birthday, Decor,, Aluminum, Film, Balloons, Birthday, Hair, Accessories, Inflatable, Cute, Headband, Medium, for, birthday, party,, girls\', party,, daily, gathering,, sister, photoshoot', 0, NULL, 'abc.com', 2, 78, '50 pcs', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 0.00000, '5', 2, '5', 1, '/backend/files/GtQpVnVAEkYX9RQbbrID.jpg', 1, 1, NULL, NULL),
(183, NULL, 'Event Planning and Management: Principles, Planning and Practice Paperback – 3 December 2022', 'event-planning-and-management-principles-planning-and-practice-paperback-3-december-2022', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(15,17,17);\">Plan and deliver successful events with this practical textbook of essential theory and practice for students studying event planning and management.</span></p>', '', 'Event Planning and Management: Principles, Planning and Practice Paperback – 3 December 2022', 'Event Planning and Management: Principles, Planning and Practice Paperback – 3 December 2022', 'Event Planning and Management: Principles, Planning and Practice Paperback – 3 December 2022', 'Event, Planning, and, Management:, Principles,, Planning, and, Practice, Paperback, –, 3, December, 2022', 0, NULL, 'abc.com', 2, 199, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/ZVtLgUVjPeqm0KaKtKJn.jpg', 1, 1, NULL, NULL),
(184, NULL, 'TIDEWE Bootfoot Chest Wader, 2-Ply Nylon/PVC Waterproof Fishing & Hunting Waders with Boot Hanger for Men and Women (Green and Brown)', 'tidewe-bootfoot-chest-wader-2-ply-nylon-pvc-waterproof-fishing-hunting-waders-with-boot-hanger-for-men-and-women-green-and-brown-', '<ul><li><span style=\"color:rgb(15,17,17);\">【Attention】Please Match the size selection to your Normal Shoe Size. If your Feet are Wide or you need to wear Thick Socks, please Choose ONE SIZE LARGER than usual.</span></li><li><span style=\"color:rgb(15,17,17);\">【Lightweight】The waders is 35% LIGHTER than traditional rubber waders due to RUGGED nylon with two-ply upper fabric, making it easily fit into any backpack. You hardly feel tired when fighting with big fish!</span></li><li><span style=\"color:rgb(15,17,17);\">【100% Waterproof】Nylon-reinforeced PVC upper with waterproof boot attachment and taped seams guarantee 100% waterproof reliability. Water Intrusion Resistance processing helps seal out water and dirt during long days on the water.</span></li><li><span style=\"color:rgb(15,17,17);\">【User Friendly Design】Adjustable H-back web suspenders with durable quick release buckles, flip-out chest pocket and top draw cord, delivers convenience. We proivde boot hanger to solve your drying problem. FREE 100% water-proof phone case is included to protect your belongings.</span></li><li><span style=\"color:rgb(15,17,17);\">【All-Purpose】It is designed to keep you dry and warm on your fishing adventures, hunting, farming work, or any messy situation. Waders sizes range from 5 to 14 (Please refer size chart).</span></li></ul>', '', 'TIDEWE Bootfoot Chest Wader, 2-Ply Nylon/PVC Waterproof Fishing & Hunting Waders with Boot Hanger for Men and Women (Green and Brown)', 'TIDEWE Bootfoot Chest Wader, 2-Ply Nylon/PVC Waterproof Fishing & Hunting Waders with Boot Hanger for Men and Women (Green and Brown)', 'TIDEWE Bootfoot Chest Wader, 2-Ply Nylon/PVC Waterproof Fishing & Hunting Waders with Boot Hanger for Men and Women (Green and Brown)', 'TIDEWE, Bootfoot, Chest, Wader,, 2-Ply, Nylon/PVC, Waterproof, Fishing, &, Hunting, Waders, with, Boot, Hanger, for, Men, and, Women, (Green, and, Brown)', 0, NULL, 'abc.com', 2, 399, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/Tao44KEYgCxtP7U7fhQr.jpg', 1, 1, NULL, NULL),
(185, NULL, 'The Fly Fishing Place Clousers Deep Minnow Blue White - Streamer Fly Fishing Flies - 4 Saltwater and Bass Flies - Hook Size 1/0', 'the-fly-fishing-place-clousers-deep-minnow-blue-white---streamer-fly-fishing-flies---4-saltwater-and-bass-flies---hook-size-1-0', '<ul><li><span style=\"color:rgb(15,17,17);\">The Clouser\'s Minnow have been proven effective on many species of saltwater and freshwater gamefish</span></li><li><span style=\"color:rgb(15,17,17);\">Set of 4 Flies - Clousers Deep Minnow Streamer Fly Fishing Patterns</span></li><li><span style=\"color:rgb(15,17,17);\">Tied on premium stainless steel hooks - Hook Size 1/0</span></li><li><span style=\"color:rgb(15,17,17);\">Equally effective on saltwater game fish like Striped bass and Redfish, and freshwater species like Bass, Trout and Pike</span></li><li><span style=\"color:rgb(15,17,17);\">Located in Oregon, we tie 1000\'s of patterns from the proven classics to the newest innovations.</span></li></ul>', '', 'The Fly Fishing Place Clousers Deep Minnow Blue White - Streamer Fly Fishing Flies - 4 Saltwater and Bass Flies - Hook Size 1/0', 'The Fly Fishing Place Clousers Deep Minnow Blue White - Streamer Fly Fishing Flies - 4 Saltwater and Bass Flies - Hook Size 1/0', 'The Fly Fishing Place Clousers Deep Minnow Blue White - Streamer Fly Fishing Flies - 4 Saltwater and Bass Flies - Hook Size 1/0', 'The, Fly, Fishing, Place, Clousers, Deep, Minnow, Blue, White, -, Streamer, Fly, Fishing, Flies, -, 4, Saltwater, and, Bass, Flies, -, Hook, Size, 1/0', 0, NULL, 'abc.com', 2, 68, '4 pcs', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/UbO0yO5kjUD5DSJraYgF.jpg', 1, 1, NULL, NULL),
(186, 4, 'Sevylor Coleman Coloradoâ„¢ 2-Person Fishing Kayak, One Size', 'sevylor-coleman-colorado-2-person-fishing-kayak-one-size', '<ul><li><span style=\"color:rgb(15,17,17);\">18gauge PVC construction is rugged for lake use , NMMA certified</span></li><li><span style=\"color:rgb(15,17,17);\">1000D tarpaulin bottom and 840D nylon cover provide durable protection from punctures</span></li><li><span style=\"color:rgb(15,17,17);\">Berkley Quick Set Rod Holders are adjustable for enhanced handsfree fishing</span></li><li><span style=\"color:rgb(15,17,17);\">Sevylor Coleman Colorado 2Person Fishing Kayak</span></li><li><span style=\"color:rgb(15,17,17);\">Sevylor Coleman Colorado 2Person Fishing Kayak</span></li></ul>', '', 'Sevylor Coleman Coloradoâ„¢ 2-Person Fishing Kayak, One Size', 'Sevylor Coleman Coloradoâ„¢ 2-Person Fishing Kayak, One Size', 'Sevylor Coleman Coloradoâ„¢ 2-Person Fishing Kayak, One Size', 'Sevylor, Coleman, Coloradoâ„¢, 2-Person, Fishing, Kayak,, One, Size', 0, NULL, 'abc.com', 2, 1889, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 2, '5', 1, '/backend/files/L2BkuehuTWrr5D9WQGre.jpg', 1, 1, NULL, NULL),
(187, 4, 'Kayak Fishing: The Ultimate Guide 2nd Edition: The Ultimate Guide 2nd Edition Paperback – Illustrated, 1 September 2011', 'kayak-fishing-the-ultimate-guide-2nd-edition-the-ultimate-guide-2nd-edition-paperback-illustrated-1-september-2011', '<p>With stunning new photography and contributions from 20 influential kayak angling pros, this edition provides new kayak anglers with a solid foundation of skills and concepts for a safe and comfortable entry into the sport. Experienced kayak anglers will benefit from a wealth of tips, tricks, and advanced kayak fishing techniques.</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p>', '', 'Kayak Fishing: The Ultimate Guide 2nd Edition: The Ultimate Guide 2nd Edition Paperback – Illustrated, 1 September 2011', 'Kayak Fishing: The Ultimate Guide 2nd Edition: The Ultimate Guide 2nd Edition Paperback – Illustrated, 1 September 2011', 'Kayak Fishing: The Ultimate Guide 2nd Edition: The Ultimate Guide 2nd Edition Paperback – Illustrated, 1 September 2011', 'Kayak, Fishing:, The, Ultimate, Guide, 2nd, Edition:, The, Ultimate, Guide, 2nd, Edition, Paperback, –, Illustrated,, 1, September, 2011', 0, NULL, 'abc.com', 2, 100, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/ypXLYsSa0XRxMBmeqWZY.jpg', 1, 1, NULL, NULL),
(188, 4, 'VIJIM LS08 Flexible Overhead Camera Mount Desk Stand, Webcam Stand Microphone Boom Arm Tabletop Photography Videography Live Stream Table clamp Mount', 'vijim-ls08-flexible-overhead-camera-mount-desk-stand-webcam-stand-microphone-boom-arm-tabletop-photography-videography-live-stream-table-clamp-mount', '<ul><li><span style=\"color:rgb(15,17,17);\">🏆【3-Section Detachable Pole】Each pole is connect and disconnect via 1/4\" ball head. Each pole can be freely rotated and adjusted.</span></li><li><span style=\"color:rgb(15,17,17);\">🏆【2 Microphone Screw Adapters】 Come with 1/4\" to 5/8\" and 1/4\" to 3/8\" Screw Adapter, suitable for any kinds of microphones.</span></li><li><span style=\"color:rgb(15,17,17);\">🏆【Standard 1/4 thread】1KG Load-bearing in the horizontal state. The ball head has a universal 1/4-20 screw head adapter, compatible with dslr, slr, ring light, led video lighting, lightweight cam, webcam. Perfect for phone photography, videography, art, cooking video recording, video shooting, vlogging</span></li><li><span style=\"color:rgb(15,17,17);\">🏆【Stable Aluminum Padded Desk Clamp】The Aluminum tabletop light mount with padded desk clamp, it is expandable up to 5 Centimetre/2 inch, compatible with most desk in the market and provides maximum stability.</span></li><li><span style=\"color:rgb(15,17,17);\">🏆【Aluminum Alloy Material】The arm part is made of aviation aluminum alloy, processed by high-precision CNC, and the surface is sprayed and anodized, which is durable and has a more textured overall.</span></li><li><span style=\"color:rgb(15,17,17);\">🌸【After-Sales Service】Our products come with 1-year warranty and 30-day money back guarantee. If the product has any problem, please feel free to contact us.</span></li></ul>', '', 'VIJIM LS08 Flexible Overhead Camera Mount Desk Stand, Webcam Stand Microphone Boom Arm Tabletop Photography Videography Live Stream Table clamp Mount', 'VIJIM LS08 Flexible Overhead Camera Mount Desk Stand, Webcam Stand Microphone Boom Arm Tabletop Photography Videography Live Stream Table clamp Mount', 'VIJIM LS08 Flexible Overhead Camera Mount Desk Stand, Webcam Stand Microphone Boom Arm Tabletop Photography Videography Live Stream Table clamp Mount', 'VIJIM, LS08, Flexible, Overhead, Camera, Mount, Desk, Stand,, Webcam, Stand, Microphone, Boom, Arm, Tabletop, Photography, Videography, Live, Stream, Table, clamp, Mount', 0, NULL, 'abc.com', 2, 175, 'pcc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/biBbfkqi92lJwYRfgDNz.jpg', 1, 1, NULL, NULL),
(189, 4, 'MOSISO Camera Backpack, DSLR/SLR/Mirrorless Photography Camera Bag 15-16 inch Waterproof Hardshell Case with Tripod Holder&Laptop Compartment Compatible with Canon/Nikon/Sony, Wine Red', 'mosiso-camera-backpack-dslr-slr-mirrorless-photography-camera-bag-15-16-inch-waterproof-hardshell-case-with-tripod-holder-laptop-compartment-compatible-with-canon-nikon-sony-wine-red', '<ul><li><span style=\"color:rgb(15,17,17);\">Dimension:17.32 x 11.8 x 7.5 inch. 2 compartments included. Padded removable modular inserts in the upper one (16.54 x 11.42 x 5.5 inch) is customized dividers for different cameras, flashes, lens and drones. You can organize the inner padded to adjust the inner storage space according to your needs. Another one (16.93 x 10.63 x 1.58 inch) is laptop compartment to storage up to 16 inch.</span></li><li><span style=\"color:rgb(15,17,17);\">Full open design. 2 accessory pockets on the back face can store cables, sd cards, powerbank and other small items. Tripod/monopod holder is featured with 1 secure strap on one bag side. 1 pocket on another side can store umbrella or water bottle(up to maximum 2.5 diameter). 1 anti-theft pocket is designed on the back for your wallet, cellphone and precious items.</span></li><li><span style=\"color:rgb(15,17,17);\">With waterproof PU leather hardshell protection in front. The foam padded layer can provide good buffer and protection to your internal stuff against shock and drops. High elastic back cushion can ease your pain after long time take.</span></li><li><span style=\"color:rgb(15,17,17);\">Padded shoulder strap varied from 17.72 to maximum 39.4 inch can be adjusted per personal preference. Clip strap featured on the shoulder strap can hang sunglasses, eyeglasses, towels and clothes. 1 durable handle is also designed to meet different demand. Back trolley belt makes it convenient during the trip. Perfect for men and women - camera enthusiasts.</span></li><li><span style=\"color:rgb(15,17,17);\">This multifunctional camera bag is professionally designed for DSLR / SLR / Mirrorless cameras of different brands. Compatible with Nikon D5600, D5300, D3500, D3400, D3300, D3200; compatible with Canon EOS Rebel T6, T6i, SL2 and other standard-size DSLRs. Also designed to be compatible with DJI Mavic Drone(Mavic 2/Air/Pro).</span></li></ul>', '', 'MOSISO Camera Backpack, DSLR/SLR/Mirrorless Photography Camera Bag 15-16 inch Waterproof Hardshell Case with Tripod Holder&Laptop Compartment Compatible with Canon/Nikon/Sony, Wine Red', 'MOSISO Camera Backpack, DSLR/SLR/Mirrorless Photography Camera Bag 15-16 inch Waterproof Hardshell Case with Tripod Holder&Laptop Compartment Compatible with Canon/Nikon/Sony, Wine Red', 'MOSISO Camera Backpack, DSLR/SLR/Mirrorless Photography Camera Bag 15-16 inch Waterproof Hardshell Case with Tripod Holder&Laptop Compartment Compatible with Canon/Nikon/Sony, Wine Red', 'MOSISO, Camera, Backpack,, DSLR/SLR/Mirrorless, Photography, Camera, Bag, 15-16, inch, Waterproof, Hardshell, Case, with, Tripod, Holder&Laptop, Compartment, Compatible, with, Canon/Nikon/Sony,, Wine, Red', 0, NULL, 'abc.com', 2, 249, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 1, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/0muGWwXkifechibt4qj1.jpg', 1, 1, NULL, NULL);
INSERT INTO `product` (`id`, `seller_id`, `name`, `slug`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(190, 4, 'Arthome Window Film Privacy Film Frosted Decorative No Glue Self Static Cling Anti UV Removable for Home Living Room Bedroom Bathroom Kitchen Office(90x254cm)…', 'arthome-window-film-privacy-film-frosted-decorative-no-glue-self-static-cling-anti-uv-removable-for-home-living-room-bedroom-bathroom-kitchen-office-90x254cm--190', '<ul><li><span style=\"color:rgb(15,17,17);\">✔ NO ADHESIVES: Glue Free Design Cuts Down Chemical Release Drastically, Easy Applies in Minutes</span></li><li><span style=\"color:rgb(15,17,17);\">✔ EASY REMOVAL: Leaving No Residue after Removal and the Film Can Even Be Used An!</span></li><li><span style=\"color:rgb(15,17,17);\">✔ ENERGY SAVING: Retain Heat in Winter Comfort and Keep It out in Summer. Control Heat and Block Out 96% of UV Rays</span></li><li><span style=\"color:rgb(15,17,17);\">✔ MORE VALUE :Roll Size 35.4 (W) x 100 (L) inches,budget-friendly choice. Reusable and Durable</span></li></ul>', '', 'Arthome Window Film Privacy Film Frosted Decorative No Glue Self Static Cling Anti UV Removable for Home Living Room Bedroom Bathroom Kitchen Office(90x254cm)…', 'Arthome Window Film Privacy Film Frosted Decorative No Glue Self Static Cling Anti UV Removable for Home Living Room Bedroom Bathroom Kitchen Office(90x254cm)…', 'Arthome Window Film Privacy Film Frosted Decorative No Glue Self Static Cling Anti UV Removable for Home Living Room Bedroom Bathroom Kitchen Office(90x254cm)…', 'Arthome, Window, Film, Privacy, Film, Frosted, Decorative, No, Glue, Self, Static, Cling, Anti, UV, Removable, for, Home, Living, Room, Bedroom, Bathroom, Kitchen, Office(90x254cm)…', 4, 'audi', 'abc.com', 2, 75, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 0, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/307CTFJKO2leV5BbtVTq.jpg', 1, 1, NULL, '2024-03-05 06:29:46'),
(192, 4, 'Canon EOS 250D DSLR Camera With EFS 18-55 DC III Lens Kit', 'canon-eos-250d-dslr-camera-with-efs-18-55-dc-iii-lens-kit-192', '<ul><li><span style=\"color:rgb(15,17,17);\">Rich vibrant archival quality images you can hold</span></li><li><span style=\"color:rgb(15,17,17);\">Produces 68 mm square prints which are perfect for the social media user and which have a thicker writing edge، making them perfect for scrapbooking</span></li><li><span style=\"color:rgb(15,17,17);\">Available in four colours and designed to look cool and classy with excellent ergonomics</span></li></ul>', '', 'Canon EOS 250D DSLR Camera With EFS 18-55 DC III Lens Kit', 'Canon EOS 250D DSLR Camera With EFS 18-55 DC III Lens Kit', 'Canon EOS 250D DSLR Camera With EFS 18-55 DC III Lens Kit', 'Canon, EOS, 250D, DSLR, Camera, With, EFS, 18-55, DC, III, Lens, Kit', 3, 'dsfd', 'abc.com', 2, 235.1, 'pc', 100, 1, 1, 0, 'abc.com', 10.00, 0, 1, 0, 1, 10.00000, '5', 1, '5', 1, '/backend/files/5mLahcTV8k9eD3sIIeKt.jpg', 1, 1, NULL, '2024-03-05 06:13:24'),
(194, 4, 'testing product', 'testing-product-194', '<p>testing product</p>', '', '', '', '', '', 2, 'csdfs', '', 2, 5400, '', 1, 1, 1, 0, '', 0.00, 0, 1, 0, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/WWlFbrF7gRN0Eq1V0qFR.jpg', 1, 1, NULL, '2024-03-05 06:12:47'),
(198, 4, 'SProduct', 'sproduct-198', '', '', 'sdf', 'sf', 's', 'as, asdf, sdf, sfsf', 1, 'dfsd', '', 2, 2222, '', 1, 1, 1, 0, '', 0.00, 0, 1, 0, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/W8sEVa16r4qNQPuR36yD.jpg', 1, 1, NULL, '2024-03-05 06:13:05'),
(199, 4, 'Iphone 15 Pro', 'iphone-15-pro-199', '', '', '', '', '', '', 1, '1482582', '', 2, 36332, '', 1, 1, 1, 0, '', 0.00, 0, 1, 0, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/EHt7UaBtMjT6Uo6nLmSp.jpg', 1, 1, NULL, '2024-03-05 06:11:01'),
(200, 68, 'Iphone 5+', 'iphone-5--200', '', '', 'tes', 'test', 'test', 'sdf,, sf,, sdf,, s,, pro', 1, '4888', 'http://localhost:3000/seller/seller-products-post', 2, 4500, '', 1, 1, 1, 0, '', 10.00, 0, 1, 0, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/Zt6kVVbjIctBsysY1w1B.jpg', 1, 1, NULL, '2024-03-05 12:35:36'),
(201, 1, 'Iphone 12', 'iphone-12-201', '', '', 'Iphone 12', 'Iphone 12', 'Iphone 12', '', 1, 'Iphone 12', '', 2, 100000, '', 1, 1, 1, 0, '', 0.00, 0, 1, 0, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/QgmMhiQXUEJZiv70m9fb.png', 1, 1, NULL, '2024-03-05 06:38:36'),
(202, 1, 'Tablate', 'tablate-202', '', '<span class=\"hgKElc\">Bright, bubbly and a popular favourite, Fanta Orange is <b>a soft drink with a tingly, fruity taste</b>. First introduced in 1940, Fanta is the second oldest brand of The Coca‑Cola Company.</span>', 'Tablate', '', '', '', 1, 'Tablate', '', 2, 10000, '', 1, 1, 1, 0, '', 0.00, 1, 1, 1, 0, 0.00000, '0', NULL, '0', 1, '/backend/files/cSnkWTpfsz9G4r1EPPu9.jpg', 1, 1, NULL, NULL),
(203, 1, 'white shoes', 'white-shoes-203', '', '', '', '', '', '', 5, 'shoes', '', 2, 600, 'set', 1, 1, 2, 0, '', 10.00, 0, 1, 0, 0, 10.00000, '0', 0, '0', 1, '/backend/files/EB2JlbREZMJAPASctrem.jpg', 1, 1, NULL, '2024-03-14 12:36:23'),
(204, 1, 'LED big  screen 28\' tv', 'led-big-screen-28-tv-204', '<p>LED big &nbsp;screen 28\' tv</p>', '<p>LED big &nbsp;screen 28\' tv</p>', '', '', '', '', 3, 'LED big  screen 28\' tv', '', 2, 6000, 'pc', 100, 1, 2, 0, '', 500.00, 2, 3, 1, 0, 0.00000, '5', 1, '15', 2, '/backend/files/RMEVNApwf6fxhCjOIGkz.jpg', 1, 1, NULL, NULL),
(205, 1, 'Fanta 1.15L drinking water', 'fanta-1-15l-drinking-water-205', '<ul><li><span style=\"color:rgb(15,17,17);\">🐏【Powerful Motor】Dragro electric Sheep shears has a power of 600watts and provides up to 2400 strokes/min to improve efficiency, which makes your job of shearing sheep, goats, alpaca, llamas and angora rabbits to become more easily!</span></li><li><span style=\"color:rgb(15,17,17);\">🐏【6-SPEED ADJUSTABLE】Low speed (1-3) offers precision performance to clip sensitive areas while high speed (4-6) delivers maximum power for faster trims and full body shave down. Whether you are a beginner or professional, the 6 speeds control help you finish the task quickly and easily.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【PROFESSIONAL SHEARS】This professional electric sheep clipper has a blade with high hardness and high heat resistance. the blade tension rotatable button for easy and quick shearing. long lasting use not harm the animal. suitable for sheep, goats, llamas, alpacas. We do not recommend using it on cats and puppies.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【SAVE TIME】 Can cut 6-10 sheep in one hour, suitable for family farming or pasture farming. Labor-saving, the grip structure of the scissors is humanized, and the long-term shearing of the hand will not be fatigued.</span></li><li><span style=\"color:rgb(15,17,17);\">🐑【NOTE】 -When using electric wool shears, remember to lubricate the blades. Remember that the livestock clippers cannot run at idle to prevent the blade from overheating . Please use the cooling spray every few minutes, take short breaks during shearing, clean the blade in time . Please read the operating instructions carefully before use.</span></li></ul>', '<span class=\"hgKElc\">Bright, bubbly and a popular favourite, Fanta Orange is <b>a soft drink with a tingly, fruity taste</b>. First introduced in 1940, Fanta is the second oldest brand of The Coca‑Cola Company.</span>', 'Fanta 1.15L drinking water', 'Fanta 1.15L drinking water', 'Fanta 1.15L drinking water', 'Fanta,1.15L,, drinking, water,', 6, 'Fanta 1.15L drinking water', '', 1, 400, 'Case', 1, 1, 2, 0, '', 2.00, 0, 3, 0, 0, 50.00000, '18', 1, '0', 1, '/backend/files/BS1StUSJudv6zFg0ZWfq.jpg', 1, 1, NULL, '2024-03-15 10:10:02'),
(206, 1, 'tshirt', 'tshirt-206', '<p>tshirt</p>', '<p>tshirt</p>', '', '', '', '', 5, 'tshirt', '', 2, 300, '', 1, 1, 1, 0, '', 3.00, 0, 3, 1, 0, 0.00000, '0', 0, '0', 0, '/backend/files/DZAxOjkMG522YZqa2PkD.jpg', 1, 1, NULL, '2024-03-15 14:16:51'),
(207, 1, 'Laptop', 'laptop-207', '<p>Laptop</p>', '<p>Laptop</p>', 'Laptop', '', '', '', 2, 'Laptop', '', 2, 15000, 'Pc', 10, 1, 2, 0, '', 2.00, 0, 10, 0, 0, 100.00000, '18', 1, '0', 0, '/backend/files/jCvdmOdGdqgntfaarvKI.jpg', 1, 1, NULL, '2024-03-15 10:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants_history`
--

CREATE TABLE `product_variants_history` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants_history`
--

INSERT INTO `product_variants_history` (`id`, `product_id`, `color`, `size`, `sku`, `qty`, `price`, `image`, `updated_at`, `created_at`) VALUES
(1, 213, 'Yellow', 'S', '12', 4, 345.00, '/backend/files/1710361255_0ChmW33TUGg8qyZqnkUx.jpg', '2024-03-13 20:20:55', '2024-03-13 20:16:37'),
(2, 213, 'Yellow', 'M', '13', 6, 345.00, '/backend/files/1710361255_0muGWwXkifechibt4qj1.jpg', '2024-03-13 20:20:55', '2024-03-13 20:16:37'),
(3, 213, 'Yellow', 'L', '66', 7, 345.00, '/backend/files/1710361255_0SjOktB6bbcswI1DG9Ot.jpg', '2024-03-13 20:20:55', '2024-03-13 20:16:37'),
(4, 213, 'Yellow', 'XL', '87', 6, 345.00, '/backend/files/1710361255_2meeY40NKRAwCGastq6n.jpg', '2024-03-13 20:20:55', '2024-03-13 20:16:37'),
(5, 213, 'Yellow', 'XXL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(6, 213, 'Red', 'S', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(7, 213, 'Red', 'M', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(8, 213, 'Red', 'L', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(9, 213, 'Red', 'XL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(10, 213, 'Red', 'XXL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(11, 213, 'Dark', 'S', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(12, 213, 'Dark', 'M', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(13, 213, 'Dark', 'L', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(14, 213, 'Dark', 'XL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(15, 213, 'Dark', 'XXL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(16, 213, 'White', 'S', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(17, 213, 'White', 'M', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(18, 213, 'White', 'L', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(19, 213, 'White', 'XL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(20, 213, 'White', 'XXL', '', 0, 345.00, NULL, '2024-03-13 20:16:37', '2024-03-13 20:16:37'),
(21, 214, 'Yellow', 'S', '112', 1, 231.00, '/backend/files/1710362991_0ChmW33TUGg8qyZqnkUx.jpg', '2024-03-13 20:49:51', '2024-03-13 20:48:44'),
(22, 214, 'Yellow', 'M', '113', 1, 231.00, '/backend/files/1710362991_0muGWwXkifechibt4qj1.jpg', '2024-03-13 20:49:51', '2024-03-13 20:48:44'),
(23, 214, 'Yellow', 'L', '114', 1, 231.00, '/backend/files/1710362991_0SjOktB6bbcswI1DG9Ot.jpg', '2024-03-13 20:49:51', '2024-03-13 20:48:44'),
(24, 214, 'Yellow', 'XL', '115', 1, 231.00, '/backend/files/1710362991_1W1JG5a5yivsSj3VFUH8ll9rdbx9iEcpVegh49kb.png', '2024-03-13 20:49:51', '2024-03-13 20:48:44'),
(25, 214, 'Yellow', 'XXL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(26, 214, 'Red', 'S', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(27, 214, 'Red', 'M', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(28, 214, 'Red', 'L', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(29, 214, 'Red', 'XL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(30, 214, 'Red', 'XXL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(31, 214, 'Dark', 'S', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(32, 214, 'Dark', 'M', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(33, 214, 'Dark', 'L', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(34, 214, 'Dark', 'XL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(35, 214, 'Dark', 'XXL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(36, 214, 'White', 'S', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(37, 214, 'White', 'M', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(38, 214, 'White', 'L', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(39, 214, 'White', 'XL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(40, 214, 'White', 'XXL', '', 0, 231.00, NULL, '2024-03-13 20:48:44', '2024-03-13 20:48:44'),
(41, 215, 'Green', 'M', '115', 1, 221.20, '/backend/files/1710363252_0ChmW33TUGg8qyZqnkUx.jpg', '2024-03-13 20:54:12', '2024-03-13 20:53:26'),
(42, 215, 'Green', 'L', '116', 1, 250.20, '/backend/files/1710363252_0muGWwXkifechibt4qj1.jpg', '2024-03-13 20:54:12', '2024-03-13 20:53:26'),
(43, 215, 'Green', 'XL', '117', 1, 260.20, '/backend/files/1710363252_1W1JG5a5yivsSj3VFUH8ll9rdbx9iEcpVegh49kb.png', '2024-03-13 20:54:12', '2024-03-13 20:53:26'),
(44, 215, 'Blue', 'M', '118', 1, 270.20, '/backend/files/1710363252_3BPBisDgQCgXdspKxo9J.jpg', '2024-03-13 20:54:12', '2024-03-13 20:53:26'),
(45, 215, 'Blue', 'L', '119', 1, 280.20, '/backend/files/1710363252_3ZrvYyTtXuu7W4F5IcPywTHYFTb1z5tz8zQnSvYg.png', '2024-03-13 20:54:12', '2024-03-13 20:53:26'),
(46, 215, 'Blue', 'XL', '120', 1, 290.20, '/backend/files/1710363252_0muGWwXkifechibt4qj1.jpg', '2024-03-13 20:53:26', '2024-03-13 20:53:26'),
(47, 215, 'Yellow', 'M', '121', 1, 310.20, '/backend/files/1710363252_3BPBisDgQCgXdspKxo9J.jpg', '2024-03-13 20:53:26', '2024-03-13 20:53:26'),
(48, 215, 'Yellow', 'L', '122', 1, 320.20, '/backend/files/1710363252_0ChmW33TUGg8qyZqnkUx.jpg', '2024-03-13 20:53:26', '2024-03-13 20:53:26'),
(49, 215, 'Yellow', 'XL', '122', 1, 420.20, '/backend/files/1710363252_1W1JG5a5yivsSj3VFUH8ll9rdbx9iEcpVegh49kb.png', '2024-03-13 20:53:26', '2024-03-13 20:53:26'),
(68, 206, 'Green', 'M', '232', 2, 350.00, '/backend/files/1710514498_product(1).jpg', '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(69, 206, 'Green', 'S', '232', 2, 400.00, '/backend/files/1710514498_addidas2.jpg', '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(70, 206, 'Green', 'L', '232', 2, 250.00, '/backend/files/1710514498_ads_mini(1).jpg', '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(71, 206, 'Green', 'XL', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(72, 206, 'Blue', 'M', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(73, 206, 'Blue', 'S', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(74, 206, 'Blue', 'L', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(75, 206, 'Blue', 'XL', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(76, 206, 'Yellow', 'M', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(77, 206, 'Yellow', 'S', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(78, 206, 'Yellow', 'L', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17'),
(79, 206, 'Yellow', 'XL', '232', 2, 300.00, NULL, '2024-03-15 14:54:58', '2024-03-15 14:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `produc_categories`
--

CREATE TABLE `produc_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produc_categories`
--

INSERT INTO `produc_categories` (`id`, `product_id`, `category_id`, `parent_id`) VALUES
(1, 2, 25, '1,25'),
(2, 1, 25, '1,25'),
(3, 3, 25, '1,25'),
(4, 4, 25, '1,25'),
(5, 5, 25, '1,25'),
(6, 6, 25, '1,25'),
(7, 7, 25, '1,25'),
(8, 8, 25, '1,25'),
(9, 9, 25, '1,25'),
(10, 10, 25, '1,25'),
(11, 11, 26, '1,26'),
(12, 12, 26, '1,26'),
(13, 13, 28, '1,28'),
(14, 14, 29, '1,29'),
(15, 15, 30, '1,30'),
(16, 16, 31, '1,31'),
(17, 17, 32, '1,32'),
(18, 18, 33, '1,33'),
(19, 19, 38, '2,38'),
(20, 20, 34, '1,34'),
(21, 21, 35, '1,35'),
(22, 22, 36, '1,36'),
(23, 23, 37, '1,37'),
(24, 24, 48, '3,48'),
(25, 25, 39, '2,39'),
(26, 26, 49, '3,49'),
(27, 27, 40, '2,40'),
(28, 28, 50, '3,50'),
(29, 29, 51, '3,51'),
(30, 30, 61, '4,61'),
(31, 31, 52, '3,52'),
(32, 32, 274, '19,274'),
(33, 33, 53, '3,53'),
(34, 34, 63, '4,63'),
(35, 35, 54, '3,54'),
(36, 36, 55, '3,55'),
(37, 37, 64, '4,64'),
(38, 38, 65, '4,65'),
(39, 39, 56, '3,56'),
(40, 40, 66, '4,66'),
(41, 41, 193, '13,193'),
(42, 42, 68, '4,68'),
(43, 43, 69, '4,69'),
(44, 44, 57, '3,57'),
(45, 45, 70, '4,70'),
(46, 46, 58, '3,58'),
(47, 47, 71, '5,71'),
(48, 48, 73, '5,73'),
(49, 49, 74, '5,74'),
(50, 50, 60, '3,60'),
(51, 51, 76, '5,76'),
(52, 52, 99, '7,99'),
(53, 52, 104, '7,104'),
(54, 53, 103, '7,103'),
(55, 54, 106, '7,106'),
(56, 55, 108, '7,108'),
(57, 56, 112, '8,112'),
(58, 57, 84, '6,84'),
(59, 58, 113, '8,113'),
(60, 59, 115, '8,115'),
(61, 60, 8, '8'),
(62, 60, 116, '8,116'),
(63, 61, 85, '6,85'),
(64, 62, 132, '9,132'),
(65, 63, 133, '9,133'),
(66, 64, 134, '9,134'),
(67, 65, 136, '9,136'),
(68, 66, 144, '10,144'),
(69, 67, 145, '10,145'),
(70, 67, 158, '10,158'),
(71, 68, 86, '6,86'),
(72, 69, 150, '10,150'),
(73, 70, 161, '11,161'),
(74, 71, 87, '6,87'),
(75, 72, 88, '6,88'),
(76, 73, 174, '12,174'),
(77, 74, 89, '6,89'),
(78, 75, 175, '12,175'),
(79, 76, 180, '12,180'),
(80, 77, 174, '12,174'),
(81, 78, 184, '12,184'),
(82, 79, 184, '12,184'),
(83, 80, 90, '6,90'),
(84, 81, 89, '6,89'),
(85, 82, 90, '6,90'),
(86, 83, 283, '20,283'),
(87, 84, 284, '20,284'),
(88, 85, 285, '20,285'),
(89, 86, 286, '20,286'),
(90, 87, 287, '20,287'),
(91, 88, 268, '19,268'),
(92, 89, 269, '19,269'),
(93, 90, 270, '19,270'),
(94, 91, 271, '19,271'),
(95, 92, 272, '19,272'),
(96, 93, 253, '18,253'),
(97, 94, 254, '18,254'),
(98, 95, 255, '18,255'),
(99, 96, 256, '18,256'),
(100, 97, 257, '18,257'),
(101, 98, 312, '22,312'),
(102, 99, 313, '22,313'),
(103, 100, 314, '22,314'),
(104, 101, 315, '22,315'),
(105, 102, 316, '22,316'),
(106, 103, 298, '21,298'),
(107, 104, 299, '21,299'),
(108, 105, 300, '21,300'),
(109, 106, 300, '21,300'),
(110, 107, 301, '21,301'),
(111, 108, 302, '21,302'),
(112, 109, 243, '17,243'),
(113, 110, 244, '17,244'),
(114, 111, 245, '17,245'),
(115, 112, 246, '17,246'),
(116, 113, 247, '17,247'),
(117, 114, 214, '15,214'),
(118, 115, 214, '15,214'),
(119, 116, 214, '15,214'),
(120, 117, 214, '15,214'),
(121, 118, 215, '15,215'),
(122, 119, 216, '15,216'),
(123, 120, 216, '15,216'),
(124, 121, 218, '15,218'),
(125, 122, 229, '16,229'),
(126, 123, 230, '16,230'),
(127, 124, 231, '16,231'),
(128, 125, 232, '16,232'),
(129, 126, 20, '20'),
(130, 127, 234, '16,234'),
(131, 128, 234, '16,234'),
(132, 129, 204, '14,204'),
(133, 130, 205, '14,205'),
(135, 132, 207, '14,207'),
(162, 159, 318, '22,318'),
(164, 160, 318, '22,318'),
(172, 169, 318, '22,318'),
(173, 170, 318, '22,318'),
(174, 171, 318, '22,318'),
(175, 172, 319, '22,319'),
(176, 173, 91, '6,91'),
(177, 174, 92, '6,92'),
(178, 175, 93, '6,93'),
(179, 176, 94, '6,94'),
(180, 177, 95, '6,95'),
(181, 178, 96, '6,96'),
(182, 179, 97, '6,97'),
(183, 180, 98, '6,98'),
(184, 181, 317, '22,317'),
(185, 182, 318, '22,318'),
(186, 183, 319, '22,319'),
(187, 184, 303, '21,303'),
(188, 185, 304, '21,304'),
(189, 186, 305, '21,305'),
(190, 187, 306, '21,306'),
(191, 188, 288, '20,288'),
(192, 189, 289, '20,289'),
(193, 190, 290, '20,290'),
(195, 192, 292, '20,292'),
(196, 200, 38, '2,38'),
(197, 200, 41, '2,41'),
(198, 201, 25, '1,25'),
(199, 202, 25, '1,25'),
(200, 203, 2, '2'),
(201, 204, 1, '1'),
(202, 204, 29, '1,29'),
(203, 205, 7, '7'),
(204, 205, 101, '7,101'),
(205, 206, 38, '2,38'),
(206, 207, 1, '1'),
(207, 207, 138, '9,138');

-- --------------------------------------------------------

--
-- Table structure for table `produc_img_history`
--

CREATE TABLE `produc_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produc_img_history`
--

INSERT INTO `produc_img_history` (`id`, `product_id`, `images`) VALUES
(1, 1, '/backend/files/653d5a931f551phone.jpg'),
(2, 2, '/backend/files/653d5a93212d5phone.jpg'),
(3, 3, '/backend/files/653d5a934fae3phone.jpg'),
(4, 4, '/backend/files/653d5a939c3b6phone.jpg'),
(5, 5, '/backend/files/653d5a939e8ddphone.jpg'),
(6, 6, '/backend/files/653d5a93ca296phone.jpg'),
(7, 6, '/backend/files/653d692f2a4e771Qtna7LEmL._AC_SX679_.jpg'),
(8, 6, '/backend/files/653d5a94277b9phone.jpg'),
(9, 9, '/backend/files/653d5a9433f8aphone.jpg'),
(10, 10, '/backend/files/653d5a945b4a9phone.jpg'),
(11, 11, '/backend/files/653d604e6c5c8l.jpg'),
(12, 12, '/backend/files/653d64b1618fblap.jpg'),
(13, 13, '/backend/files/653d66e212639headphone.jpg'),
(14, 14, '/backend/files/653d692f2a4e771Qtna7LEmL._AC_SX679_.jpg'),
(15, 15, '/backend/files/653d6bb3e85d651C1SHfyotL._AC_SX679_.jpg'),
(16, 16, '/backend/files/653d6dc5e2aeb717jpH30vXL._AC_SX679_.jpg'),
(17, 17, '/backend/files/653d70311a7de41cE4Lv-5dL._AC_SX679_.jpg'),
(18, 18, '/backend/files/653d7403d8758510JBO6f1QL._AC_SX679_.jpg'),
(19, 19, '/backend/files/653e0192c690691XPIbhILgL._AC_SY500_ (1).jpg'),
(20, 20, '/backend/files/653e3762f294451MBJYR7wzL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(21, 21, '/backend/files/653e3a2d7d95b61tE7IcuLmL._AC_SX679_.jpg'),
(22, 22, '/backend/files/653e3cbc957ed81u5nbIX7yL._AC_SX679_.jpg'),
(23, 23, '/backend/files/653e3f92d3e8a71mNv2xrhEL._AC_SX679_.jpg'),
(24, 24, '/backend/files/653e41c9c32b661hs7fYpKyL._AC_SX679_.jpg'),
(25, 25, '/backend/files/653e427643f5a71-TGHniKaL._AC_SY500_ (1).jpg'),
(26, 26, '/backend/files/653e4440a06d351kIOqIcEaL._AC_SY879_.jpg'),
(27, 27, '/backend/files/653e45c2d921671-TGHniKaL._AC_SY500_ (2).jpg'),
(28, 28, '/backend/files/653e45cb3650e71yh+YarsJL._AC_SX679_.jpg'),
(29, 29, '/backend/files/653e491212b20810SJo-zBGL._AC_SX679_.jpg'),
(30, 30, '/backend/files/653e4a13413f051+IHPKXFIL._SL1060_ (1).jpg'),
(31, 31, '/backend/files/653e4aebce2df71twW8HKKML._AC_SX679_.jpg'),
(32, 32, '/backend/files/653e4c18b3de381B5gRS2vFS._SL1500_ (1).jpg'),
(33, 33, '/backend/files/653e4c7d4875561ySl2JZj3L._AC_SX679_.jpg'),
(34, 35, '/backend/files/653ea1ba3555831GoogrCKFL._AC_.jpg'),
(35, 36, '/backend/files/653ea3d24317d61wlra7GQxL._AC_SX679_.jpg'),
(36, 38, '/backend/files/653ea59e8091981tYGqhBdhL._SL1500_ (1) (1).jpg'),
(37, 39, '/backend/files/653ea5ed1680381xVZGur4kL._AC_SX679_.jpg'),
(38, 40, '/backend/files/653ea692dc88b71Gesmrig5L._AC_SL1500_ (2) (1).jpg'),
(39, 41, '/backend/files/653ea7a016f6f61fqDnOiNiL._SL1500_ (1).jpg'),
(40, 42, '/backend/files/653ea8183fcc361Orj8GcsYL._SL1500_ (1).jpg'),
(41, 44, '/backend/files/653ea8d2eb24971clByyFyWL._AC_SX679_.jpg'),
(42, 46, '/backend/files/653eaaa4eefa951V0+4FvN3S._AC_SY879_.jpg'),
(43, 50, '/backend/files/653eac35958fd71-4IGXtwGL._AC_SX679_.jpg'),
(44, 57, '/backend/files/653eb0f73f6ea41-j60JhRbL._AC_SX679_.jpg'),
(45, 61, '/backend/files/653eb226e748251guwURXf5L._AC_SX679_.jpg'),
(46, 68, '/backend/files/653eb47d0a2c961LFuEQGv5L._AC_SY695_.jpg'),
(47, 71, '/backend/files/653eb5b406dd961q916E9GhL._AC_SX679_.jpg'),
(48, 72, '/backend/files/653eb78a2f53181DamqE2otL._AC_SX679_.jpg'),
(49, 74, '/backend/files/653eb8780715951jTUJImKXL._AC_SY879_.jpg'),
(50, 80, '/backend/files/653ebbc3d5e1071YJ8nKz23L.__AC_SX300_SY300_QL70_ML2_.jpg'),
(51, 81, '/backend/files/653f637f9f5c751jTUJImKXL._AC_SY879_.jpg'),
(52, 82, '/backend/files/653f65cb33d9b71YJ8nKz23L.__AC_SX300_SY300_QL70_ML2_.jpg'),
(53, 83, '/backend/files/653f7c1bd57a151T9HOsMpaL._AC_SX679_.jpg'),
(54, 84, '/backend/files/653f7d6c0b5f351ObtBtXugL._AC_SX679_.jpg'),
(55, 85, '/backend/files/653f7f286f3ab61C7LDGc7XL._AC_SX679_.jpg'),
(56, 86, '/backend/files/653f80561e77671cFfbUR0zL._SY522_.jpg'),
(57, 87, '/backend/files/653f8151329bc61wUgGRDVhL._AC_SX679_.jpg'),
(58, 88, '/backend/files/653f823a5dbfd71CAMUjS7oS._SY522_.jpg'),
(59, 89, '/backend/files/653f83815ff9951Xj0F-dnlL._SY522_.jpg'),
(60, 90, '/backend/files/653f846d55e5671H7hllxJCL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(61, 91, '/backend/files/653f85f0d6a0551Wo-aUrUvL._SX522_.jpg'),
(62, 92, '/backend/files/653f86f73016771Bq1Xhpq+L._AC_SX679_.jpg'),
(63, 93, '/backend/files/653f8889b8ebc71enbpu+HpL._AC_SX679_.jpg'),
(64, 94, '/backend/files/653f89c517f1571oP7sHBWML._AC_SX679_.jpg'),
(65, 95, '/backend/files/653f8b17708bd81K5-Ol7LRL._AC_SX679_.jpg'),
(66, 96, '/backend/files/653f8bfe2424c71Q8VgBpiUL._AC_SX679_.jpg'),
(67, 97, '/backend/files/653f8e1649b8b51E3eh73XKL._AC_SX679_.jpg'),
(68, 98, '/backend/files/653f8fb182759813pOrVlj3L._AC_SX679_.jpg'),
(69, 99, '/backend/files/653f90900696461Co3A7hb0L._AC_SX679_.jpg'),
(70, 100, '/backend/files/653f91be6f30971eTumOQ+tL._AC_SX679_.jpg'),
(71, 101, '/backend/files/653f9294b97b471muYdmmGRL._AC_SX679_.jpg'),
(72, 102, '/backend/files/653f937426856814UPJ8+z7L._AC_SX679_.jpg'),
(73, 103, '/backend/files/653f96721ec0491g49iBmQmL._AC_SY695_.jpg'),
(74, 104, '/backend/files/653ff195a343b51NkLndOKyL._AC_SX679_.jpg'),
(75, 105, '/backend/files/653ff2a260d8871Wjvb4RmaL._AC_SX679_.jpg'),
(76, 106, '/backend/files/653ff2a4696bf71Wjvb4RmaL._AC_SX679_.jpg'),
(77, 107, '/backend/files/653ff3f05fc3171TB9phSDjL._AC_SX679_.jpg'),
(78, 108, '/backend/files/653ff54f9be9081iZGLZj80S._AC_SX679_.jpg'),
(79, 109, '/backend/files/653ff906ad15a81dMb+1jyTL._AC_SY300_SX300_.jpg'),
(80, 110, '/backend/files/653ff9f47442f71hrni8KKbL._AC_SX679_.jpg'),
(81, 111, '/backend/files/653ffb7db00ed61gJ2jQ+lxL._AC_SX300_SY300_.jpg'),
(82, 112, '/backend/files/653ffc8e18a629105ctXmoML._AC_SX679_.jpg'),
(83, 113, '/backend/files/653ffd9e7bf0181MpFry3ihL._SY522_.jpg'),
(84, 114, '/backend/files/653ffe744518961lfklJGdzL._AC_SX679_.jpg'),
(85, 115, '/backend/files/653fff98052be61lfklJGdzL._AC_SX679_.jpg'),
(86, 116, '/backend/files/653fff9859df361lfklJGdzL._AC_SX679_.jpg'),
(87, 117, '/backend/files/653fff987981361lfklJGdzL._AC_SX679_.jpg'),
(88, 118, '/backend/files/654000e62cb3a712v6KW3QGL._AC_SX679_.jpg'),
(89, 119, '/backend/files/654001c8a920f51pecV4zAKL._AC_SX679_.jpg'),
(90, 120, '/backend/files/654003676280a61EbysqiRWL._AC_SX679_.jpg'),
(91, 121, '/backend/files/654004595baf751+QvEIKdyL._AC_SY879_.jpg'),
(92, 122, '/backend/files/654006411475e61OkhTPisVL._AC_SX679_.jpg'),
(93, 123, '/backend/files/654008b28032191gOOoZdLhL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(94, 124, '/backend/files/654009ee6cefe51ShptwdN1L._AC_SY879_.jpg'),
(95, 125, '/backend/files/65400ad01833d51qLPIwYa-L._AC_SX679_.jpg'),
(96, 126, '/backend/files/65400c4444c3e61oyjdCx-IL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(97, 127, '/backend/files/65400d102684d41c3Ro5CwIL._AC_SX679_.jpg'),
(98, 128, '/backend/files/65400d906161e41c3Ro5CwIL._AC_SX679_.jpg'),
(99, 129, '/backend/files/6540e58d67ad0712TrW+BvlL._AC_SX679_.jpg'),
(100, 130, '/backend/files/6540e68443e3d71YKFdJPUTL._AC_SX679_.jpg'),
(102, 132, '/backend/files/6540e864b6b2081cJH-6rOoL._AC_SX679_.jpg'),
(129, 159, '/backend/files/6540f0e1cffa3910kv27P9mL._AC_SX425_ (1).jpg'),
(131, 160, '/backend/files/6540f0e1d3c46910kv27P9mL._AC_SX425_ (1).jpg'),
(139, 169, '/backend/files/6540f0e34133b910kv27P9mL._AC_SX425_ (1).jpg'),
(140, 170, '/backend/files/6540f0e34abe5910kv27P9mL._AC_SX425_ (1).jpg'),
(141, 171, '/backend/files/6540f0e4436bb910kv27P9mL._AC_SX425_ (1).jpg'),
(142, 172, '/backend/files/6540f3f4ec66a81kOYURGsPL._SY425_ (1).jpg'),
(143, 173, '/backend/files/654143c556215514-M4cD5wL._AC_SX679_.jpg'),
(144, 174, '/backend/files/654144d9754ca61PREvDLiTL._SY522_.jpg'),
(145, 175, '/backend/files/654146624b36261+zAJuL2LL._AC_SX679_.jpg'),
(146, 176, '/backend/files/6541473ba059461Eo8bOF41L._AC_SX679_.jpg'),
(147, 177, '/backend/files/6541483c39d7e71q8SJMFN4L._AC_SX679_.jpg'),
(148, 178, '/backend/files/654149204563d61+ioWx8lkL._AC_SX679_.jpg'),
(149, 179, '/backend/files/65414d81354f961zHNPE4LjS._AC_SX679_.jpg'),
(150, 180, '/backend/files/65414e70496aa61ul4a8WnvL._AC_SX679_.jpg'),
(151, 181, '/backend/files/65414f9017b6c71AcSpZ4lLL.__AC_SY300_SX300_QL70_ML2_.jpg'),
(152, 182, '/backend/files/65415082641c781CGfEhYE2L._AC_SX679_.jpg'),
(153, 183, '/backend/files/654151c9a0e1481fW-pAztTL._SY522_.jpg'),
(154, 184, '/backend/files/654152bd0145b61OIirlNIyL._AC_SX679_.jpg'),
(155, 185, '/backend/files/65415390b193f71JKXEYw0BL._AC_SX679_.jpg'),
(156, 186, '/backend/files/654155325ea6971SSdLaVBfL._AC_SX679_.jpg'),
(157, 187, '/backend/files/65415644eba3091lsdsr9TVL._SY522_.jpg'),
(158, 188, '/backend/files/654157331d459517gotMFTrL._AC_SX679_.jpg'),
(159, 189, '/backend/files/654157fd88caa71hDs4MI+BL._AC_SX679_.jpg'),
(160, 190, '/backend/files/6541593c25b9361e1Qk92QhL._AC_SX679_.jpg'),
(162, 192, '/backend/files/65415bf403d427145+mjrBTL._AC_SX300_SY300_.jpg'),
(163, 200, '/backend/files/65ad37cee6d0303.jpg'),
(164, 200, '/backend/files/65ad37cee7bbe04.jpg'),
(165, 200, '/backend/files/65ad37cee841705.jpg'),
(166, 205, '/backend/files/65f001e9f2ecfproduct(1).jpg'),
(167, 205, '/backend/files/65f001e9f3983product(2).jpg'),
(168, 205, '/backend/files/65f001ea007b0product(6).jpg'),
(169, 205, '/backend/files/65f001ea0123fproduct(7).jpg'),
(170, 207, '/backend/files/65f427fed0633product(4).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Smokee BBQ', 1, NULL, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(2, 'Project-3', 1, 1, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(3, 'Project-2', 1, 1, NULL, NULL),
(4, 'Project-1', 1, 1, NULL, NULL),
(5, 'sdfwwww', 1, 1, NULL, NULL),
(6, 'undefined', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Customer', 1),
(3, 'Seller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_ads`
--

CREATE TABLE `seller_ads` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_ads`
--

INSERT INTO `seller_ads` (`id`, `seller_id`, `file_name`, `position`, `created_at`, `updated_at`) VALUES
(3, 4, '/backend/files/CIn1MRCyIv1ntT4J3GYb.jpg', 'banner_4', '2024-01-20 02:05:49', '2024-01-20 02:05:49'),
(4, 4, '/backend/files/JdA8XUNDadhajCuZzT5H.jpg', 'banner_5', '2024-01-20 02:05:53', '2024-01-20 02:05:53'),
(5, 4, '/backend/files/JnhKRSArAiJNWoViDVwZ.jpg', 'banner_3', '2024-01-20 02:06:03', '2024-01-20 02:06:03'),
(6, 4, '/backend/files/JM8dyKtFKWvUBIFRTecQ.jpg', 'banner_2', '2024-01-20 02:06:07', '2024-01-20 02:06:07'),
(7, 4, '/backend/files/dFItl6zBIJT9Jx0BjxxH.jpg', 'banner_1', '2024-01-20 02:06:11', '2024-01-20 02:06:11'),
(8, 4, '/backend/files/bg0ut0ILPRGO4lEIjGt5.jpg', 'top_banner_img', '2024-01-20 02:06:17', '2024-01-20 02:06:17'),
(9, 4, '0pTqynKiki4', 'youtube_videos', '2024-01-20 05:59:13', '2024-01-20 05:59:13'),
(10, 7, '/backend/files/HjxjoOkWcG8rwuWmyRo9.jpg', 'banner_1', '2024-03-01 15:24:06', '2024-03-01 15:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `candidate_cc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `send_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `send_message`
--

INSERT INTO `send_message` (`id`, `candidate_name`, `candidate_email`, `subject`, `candidate_cc`, `description`, `file`, `send_by`, `created_at`) VALUES
(3, 'fgdfg', 'mdbijon@gmail.com', 'sdf', 'mdbijon@gmail.com', 'mdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.com', NULL, 1, '2023-08-19 04:33:25'),
(4, 'dsfsfsdf', 'mdbijon@gmail.com', 'ssss', '', 'In Laravel, you can easily attach files to a model using the attach method, especially when dealing with relationships like Eloquent\'s BelongsToMany or HasMany relationships. However, since you mentioned attaching files, I\'ll assume you\'re working with file uploads in the context of a form submission.', '/backend/files/SVfaIInZEZCDCGheQiF2.png', 1, '2023-08-19 05:02:28'),
(5, 'dfgdfg', 'mdbijon@gmail.com', 'ssss', '', 'sfdsf', '/backend/files/GwEyNFbWS6qZzWUCwjOE.png', 1, '2023-08-19 05:14:41'),
(6, 'dsfdsfsdf', 'mdbijon@gmail.com', 'fdgdfg', '', 'fggfdg', '', 1, '2023-08-19 06:30:44'),
(7, 'Md. Gazi Giash Uddin', 'ib@gmail.com', 'New Subject', '', 'Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate', '/backend/files/88wrHYRxDG94tmZ0Endb.png', 1, '2023-08-19 06:31:37'),
(8, 'Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'ffff', '/backend/files/m6RklwhKmcSifwgvTfH0.png', 1, '2023-08-19 06:45:59'),
(9, 'Abdur Rahman Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:', '/backend/files/u1ujrkQMqTX6ES7VZh69.png', 1, '2023-08-19 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `images`, `status`) VALUES
(1, '/backend/slider_imaes/1.jpg', 1),
(2, '/backend/slider_imaes/2.jpg', 1),
(3, '/backend/slider_imaes/3.jpg', 1),
(4, '/backend/slider_imaes/4.jpg', 1),
(5, '/backend/slider_imaes/5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider_side_ads_models`
--

CREATE TABLE `slider_side_ads_models` (
  `id` int(11) NOT NULL,
  `adsOne` text NOT NULL,
  `adsTwo` text NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_side_ads_models`
--

INSERT INTO `slider_side_ads_models` (`id`, `adsOne`, `adsTwo`, `Created_at`, `Updated_at`) VALUES
(1, '/bannerImage/1709448606-ads1.jpg', '/bannerImage/1709448606-ads2.png', '2024-03-03 06:14:03', '2024-03-03 00:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'primary key of project table',
  `emp_id` varchar(255) DEFAULT NULL COMMENT 'primary key of employee table',
  `type` tinyint(4) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Processing, 3 = Done',
  `email_files` varchar(3) DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `emp_id`, `type`, `start_date`, `end_date`, `done_date`, `image`, `entry_by`, `status`, `email_files`, `created_at`, `updated_at`) VALUES
(1, 'bijon1114144', 'sdlkflskdfsdf\r\nsdf\r\nsdf', 3, '2', 1, '2023-07-19', '2023-07-26', NULL, '/backend/files/QESG49nK6XzDuTd953Lm.env', 1, 1, 'No', NULL, NULL),
(2, 'Tesssss', 'fasd', 4, '1', 1, '2023-07-14', '2023-07-28', NULL, '/backend/files/tAWzPRjL7xUKnSUcOpW3.env', 1, 2, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `name` varchar(255) NOT NULL,
  `frontend_website` varchar(255) DEFAULT NULL,
  `deposit_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `convert_php_amt` float DEFAULT NULL,
  `withdraw_service_charge` int(10) DEFAULT NULL COMMENT '%',
  `withdraw_minimum_amount` int(11) DEFAULT NULL,
  `minimum_trade_amount` int(11) DEFAULT NULL,
  `minimum_deposit_amount` int(11) DEFAULT NULL,
  `trade_fee` int(11) DEFAULT NULL COMMENT '%',
  `first_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `second_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `third_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `trade_percent` int(11) DEFAULT NULL COMMENT '%',
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `openinig_balance_date` date DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `openinig_balance_comments` text DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `crypto_wallet_address` varchar(255) DEFAULT NULL,
  `master_pass_acc_no` varchar(255) DEFAULT NULL,
  `setting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`name`, `frontend_website`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `minimum_trade_amount`, `minimum_deposit_amount`, `trade_fee`, `first_up_lin_com`, `second_up_lin_com`, `third_up_lin_com`, `trade_percent`, `tel`, `email`, `address`, `hotline`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `setting_id`) VALUES
('TRADING', 'https://ecom.futuregenit.com/', 0, 64, 6, 10, 5, 10, 6, 9, 4, 3, 10, '+44245454545', 'info@abcd.com', 'Addres', '000000', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright © 1995-2020 abc Inc. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '£', '2020-05-13', 5, NULL, 'https://www.fiverr.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '<p><strong>Cancellation / Return / Exchange Policy.</strong></p><p>We offer a minimum of 18 day returns guarantee on all our items and 30 day return on eligible items. If you are not completely satisfied with your item you may return the items to the seller, within the stipulated return period for a refund (&ldquo;money back guaranteed&rdquo;). Please, ensure you obtain a proof of return postage as items being returned are the responsibility of the customer until the items reach the seller. Refunds will take approximately 5 &ndash; 7 working days for the process once the goods have arrived to the seller. Sometimes it might take up to 30 days but in rare cases if you paid using credit card but in exceptional cases. We always advise payments are made through PayPal. Returned Items must be in their original packaging, and intact to avoid breakage in transit. . In the interest of hygiene, returns on earrings, cosmetics and underwear may not be accepted at any time. Swimwear may not be returned if the hygiene seal is broken. We guarantee to refund unworn or unwashed items when you return it in re-sellable condition,.</p><p><strong>Non-Returnable Items</strong></p><p>We don&rsquo;t accept returns for items such as food unless of course they&rsquo;re faulty. Our website and catalogue clearly show which items are excluded. If you&rsquo;re returning an electrical item, it must be unused and in its original sealed packaging.</p>', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topheaderbanner`
--

CREATE TABLE `topheaderbanner` (
  `id` int(255) NOT NULL,
  `image` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topheaderbanner`
--

INSERT INTO `topheaderbanner` (`id`, `image`, `status`, `updated_at`, `created_at`) VALUES
(18, '/bannerImage/1709228515.gif', 'published', '2024-02-29 11:41:55', '2024-02-27 02:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `invite_code` varchar(255) DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `join_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` int(255) NOT NULL COMMENT '1=male, 2=female, 3= others',
  `birthdate` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `phone_number2` int(255) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `country_1` text DEFAULT NULL,
  `city_1` text DEFAULT NULL,
  `landmark_1` varchar(255) DEFAULT NULL,
  `phone_1` int(11) DEFAULT NULL,
  `country_2` varchar(255) DEFAULT NULL,
  `city_2` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `landmark_2` varchar(255) DEFAULT NULL,
  `phone_2` int(255) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `business_owner_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_name_slug` varchar(255) DEFAULT NULL,
  `business_register_num` varchar(255) DEFAULT NULL,
  `business_address` varchar(255) DEFAULT NULL,
  `business_warehouse_address` varchar(255) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `business_phone` varchar(255) DEFAULT NULL,
  `business_return_name` varchar(255) DEFAULT NULL,
  `business_return_email` varchar(255) DEFAULT NULL,
  `business_return_address` varchar(255) DEFAULT NULL,
  `business_return_phone` varchar(255) DEFAULT NULL,
  `business_logo` varchar(255) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `home_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `invite_code`, `reffer_bonus`, `join_id`, `name`, `f_name`, `l_name`, `email`, `gender`, `birthdate`, `image`, `phone_number`, `phone_number2`, `address`, `address_1`, `country_1`, `city_1`, `landmark_1`, `phone_1`, `country_2`, `city_2`, `address_2`, `landmark_2`, `phone_2`, `website`, `github`, `twitter`, `instagram`, `facebook`, `dob`, `user_type`, `business_owner_name`, `business_name`, `business_name_slug`, `business_register_num`, `business_address`, `business_warehouse_address`, `business_email`, `business_phone`, `business_return_name`, `business_return_email`, `business_return_address`, `business_return_phone`, `business_logo`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`, `home_status`) VALUES
(1, 1, NULL, NULL, 75, 2, 'admin', NULL, NULL, 'admin@gmail.com', 0, NULL, '/backend/files/QghrRIJF2QIUpvBdeuQj.png', '01815728982', 0, '', '', '', '', '0', 0, '', '', '', '', 0, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, '$2a$12$w3Sd7LSp69CLMh.xMEcXoux6NAwPlS2xqZAFsTg328wwSQH4g97Lu', NULL, NULL, '2023-12-17 02:13:10', '2023-12-17 02:13:10', 1, NULL),
(2, 2, NULL, '1702800790', 75, 2, 'roman', NULL, NULL, 'roman@gmail.com', 0, NULL, NULL, '01815728983', 0, '', 'null', 'null', 'null', '0', 0, '', '', '', '', 0, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'roman@gmail.com', NULL, '$2y$10$TZX9JkWAq2JPWhoAZ7Zks.JU1OaoA/ml63uoirZKpl6GJyWlim9S6', NULL, NULL, '2023-12-17 02:13:10', '2023-12-17 02:13:10', 1, NULL),
(3, 2, NULL, NULL, NULL, NULL, 'jonsjonahmed', 'jons', 'jonahmed', 'jonsahmed@gmail.com', 0, NULL, NULL, '01815728984', 0, NULL, NULL, NULL, NULL, '0', 0, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, '2024-01-25', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ddd', NULL, '$2y$10$K7J1BHoWu..R9duZU1XD8uxRWgPral2obdJv6G.XTXDM84cru/wiG', NULL, NULL, '2024-01-28 12:41:51', '2024-01-28 12:41:51', 1, NULL),
(4, 3, NULL, NULL, NULL, NULL, 'Smart', 'Business', 'jonahmed', 'seller@gmail.com', 0, NULL, '/backend/files/0xBrxFppCY98eooLcNn4.png', '018157289896', 0, NULL, NULL, NULL, NULL, '0', 0, '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, '2024-01-25', 1, NULL, 'Smart Business', 'smart-business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/u1zzzSmCJC3ajUgYEDf4.png', 'seller@gmail.com', NULL, '$2a$12$k8cfe4KxPdNFqINEkeNGn.GMt8WbV3TSqzTcL6JIxA3JtrLR4FbMG', NULL, NULL, '2024-01-28 12:41:51', '2024-03-06 00:34:49', 1, 1),
(5, 2, NULL, '1708347175', NULL, 0, 'pronay', NULL, NULL, 'pronay@mail.com', 1, '2024-02-05', NULL, '111', 0, NULL, 'address_1', 'ALA', 'address_1', 'v-model=\"userdata.phone_number2\"', 1, 'ARG', 'address_2', 'address_2', 'v-model=\"userdata.phone_number2\"', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farabi Enterprise', 'farabi-enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pronay', NULL, '$2y$10$lx1NyNHvL/iHVkfC/xQtfe.369SX8NubpkXrPjMSmKUrvyeXlhaeO', NULL, NULL, '2024-02-19 06:52:55', '2024-02-19 06:52:55', 1, NULL),
(6, 3, NULL, '1709304531', NULL, 0, 'seller1', NULL, NULL, 'seller1@mail.com', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Addidas', 'addidas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/gVnjAIZldHPUdJ5YuDhK.png', 'seller1@mail.com', NULL, '$2y$10$U18qj4tts.F5YYRuuf2Po.vyqm4PwQ75r7RB0ukziIDKkOch4fyky', NULL, NULL, '2024-03-01 08:48:51', '2024-03-06 00:53:45', 1, 1),
(7, 3, NULL, '1709304609', NULL, 0, 'seller2@mail.com', NULL, NULL, 'seller2@mail.com', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Araimo', 'araimo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/moCasKo80D02cz9rIW4x.png', 'seller2@mail.com', NULL, '$2y$10$.gIvIpeUMxT1ZTDGoO4GmOnruzHbHeqYeE.cgXJYIV6CWTbgoHWWa', NULL, NULL, '2024-03-01 08:50:09', '2024-03-06 09:05:35', 1, 1),
(8, 3, NULL, '1709304668', NULL, 0, 'seller3@mail.com', NULL, NULL, 'seller3@mail.com', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'addidas', 'addidass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/4oW3oxnoU2BsLfm6QTJD.png', 'seller3@mail.com', NULL, '$2y$10$QbrGqRyYKEKQGLESZv0yEOLI4XlpduU4PrMElP52LP2hbnrpXTJxq', NULL, NULL, '2024-03-01 08:51:08', '2024-03-06 01:24:45', 1, 1),
(9, 3, NULL, '1709305088', NULL, 0, 'seller3@gmail.com', NULL, NULL, 'seller3@gmail.com', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Daraz', 'Daraz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/EPaRPHg9yJXvnlTJQYLn.png', 'seller3@gmail.com', NULL, '$2y$10$boOQJlK0uXhraNOxy8OWGuQ9NC69uhYrQPce3QNVDPnEvS50j9TOK', NULL, NULL, '2024-03-01 08:58:08', '2024-03-06 09:05:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 19, '2024-01-27 05:05:08', '2024-01-27 05:05:08'),
(3, 66, 192, '2024-01-27 05:15:48', '2024-01-27 05:15:48'),
(4, 2, 14, '2024-02-06 17:32:16', '2024-02-06 17:32:16'),
(5, 2, 160, '2024-02-06 17:37:35', '2024-02-06 17:37:35'),
(10, 5, 200, '2024-02-25 19:59:41', '2024-02-25 19:59:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_pay`
--
ALTER TABLE `annual_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_commission_history`
--
ALTER TABLE `category_commission_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circumstances`
--
ALTER TABLE `circumstances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealsbanners`
--
ALTER TABLE `dealsbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_docs`
--
ALTER TABLE `employee_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_holidays_used_holiday` (`used_holiday`);

--
-- Indexes for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_product_slider_category`
--
ALTER TABLE `home_product_slider_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_list`
--
ALTER TABLE `leave_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_rule`
--
ALTER TABLE `leave_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_group`
--
ALTER TABLE `pay_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_categories`
--
ALTER TABLE `produc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_ads`
--
ALTER TABLE `seller_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_side_ads_models`
--
ALTER TABLE `slider_side_ads_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `topheaderbanner`
--
ALTER TABLE `topheaderbanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `business_name_slug` (`business_name_slug`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_pay`
--
ALTER TABLE `annual_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attributes_values`
--
ALTER TABLE `attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `category_commission_history`
--
ALTER TABLE `category_commission_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `circumstances`
--
ALTER TABLE `circumstances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealsbanners`
--
ALTER TABLE `dealsbanners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_docs`
--
ALTER TABLE `employee_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_product_slider_category`
--
ALTER TABLE `home_product_slider_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_list`
--
ALTER TABLE `leave_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_rule`
--
ALTER TABLE `leave_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_group`
--
ALTER TABLE `pay_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `produc_categories`
--
ALTER TABLE `produc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_ads`
--
ALTER TABLE `seller_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider_side_ads_models`
--
ALTER TABLE `slider_side_ads_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topheaderbanner`
--
ALTER TABLE `topheaderbanner`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
