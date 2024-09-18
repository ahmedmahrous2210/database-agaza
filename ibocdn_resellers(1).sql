-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 03:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iboserver_ibocdn1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ibocdn_resellers`
--
-- Creation: Sep 11, 2024 at 11:18 AM
-- Last update: Sep 18, 2024 at 01:20 PM
--

CREATE TABLE `ibocdn_resellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `credit_point` bigint(20) NOT NULL DEFAULT 0,
  `masa_credit_point` varchar(255) DEFAULT NULL,
  `parent_reseller_id` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) DEFAULT 2,
  `application_allowed` varchar(200) DEFAULT NULL,
  `web_logo` longtext DEFAULT NULL,
  `web_title` varchar(200) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(4) DEFAULT 0,
  `verification_token` varchar(200) DEFAULT NULL,
  `verify_at` datetime DEFAULT NULL,
  `is_disable_by_admin` tinyint(4) NOT NULL DEFAULT 0,
  `credit_share_passcode` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ibocdn_resellers`
--

INSERT INTO `ibocdn_resellers` (`id`, `name`, `email`, `password`, `status`, `expiry_date`, `credit_point`, `masa_credit_point`, `parent_reseller_id`, `group_id`, `application_allowed`, `web_logo`, `web_title`, `last_login_time`, `login_ip`, `is_verified`, `verification_token`, `verify_at`, `is_disable_by_admin`, `credit_share_passcode`, `created_at`, `updated_at`, `created_by`, `updated_by`, `logo_path`) VALUES
(1, 'ahmed', 'ahmed@gmail.com', '$2y$12$m8L/B0FxMwjKgWjzXqaexu9fn5C.cRMvgcXfcpiMPzraCRdnGCNya', 1, '2025-12-31', 10104, NULL, 0, 2, '[\"ABEPlayerTV\",\"BOBPLAYER\"]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '100', '2024-08-05 07:27:06', '2024-09-16 06:41:59', 7, NULL, 'logos/0rVqhrA7ZI06wTFX933yS1oiFXwQOxFMwKR0MWS9.png'),
(7, 'Admin', 'admin@gmail.com', '$2y$12$aKOPdWeHYAvFQoF/KEOjy.zEZ4BzIYG0lfp873q/Hu6Mi1uhuDw8q', 2, '2025-12-31', 3749, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '3000', '2024-08-05 10:25:06', '2024-09-16 05:41:25', 7, NULL, 'logos/qhjeIcoqlmqknRPLLw50vSapCbne6SZUz9iGQM9k.png'),
(31, 'Updated4sd', 'updatedemail4@gmail.com', '$2y$12$RiOhqSTVFWcKmAC23Ze2nuHE7AEehqZ6M46QA8VuDgAIjaMOMEPMa', 1, '2024-09-05', 0, NULL, 0, 2, '[\"BOBPLAYER\"]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, '50', '2024-08-13 09:10:57', '2024-09-16 08:08:38', 7, 7, 'logos/hBZHzdWrGu8Im02X91HevItsJE7N2i7o870LD5Gf.png'),
(33, 'UpName', 'updated@example.com', '$2y$12$gJ6xzz/iIryZyF.RnQCHLOoN92MPOYjaEs3UBOe9GBfZl31zZv36a', 0, '2024-07-30', 0, NULL, 0, 2, '[\"ABEPlayerTV\",\"BOBPLAYER\"]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '30', '2024-08-14 03:26:46', '2024-09-16 10:04:48', 7, 7, 'logos/vcyoIwgewvMpXD85E02oqBOUYOHklTzt96AdQQK4.png'),
(37, 'Ups 22Name', 'updassl@example.com', '$2y$12$kD3bqpvpYNaQbxKG2Fhf8u6dRCUUPZKhRcXEtdnEpQiiw8NRGSflC', 1, '2025-12-31', 473, NULL, 2, 2, '[5,4]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '40', '2024-08-15 03:02:48', '2024-09-10 07:01:33', NULL, 7, 'logos/QtIqaIkjvxeS6ZJDV5zs68IaoAj9y9jQnvuqZEC7.png'),
(39, 'yousef', 'yousef@gmail.com', '$2y$12$LNzyN9Hz/rxBkfQc495Q1O96LTC9pYsIUJhTaNZgz7TZgQMh4l61e', 1, '2025-12-31', 900, NULL, 40, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '150', '2024-08-21 03:23:09', '2024-09-18 05:59:27', NULL, NULL, 'logos/etgLJDOB02IDWaHyMpXrXhMlfCwodazj4Nq2oaud.png'),
(40, 'nada', 'nada@gmail.com', '$2y$12$eS0jTRQ/vzxYB0FnItw/s.rM.4ypCMQ8b5LfIJD8Ymd3wqvWucc6q', 1, '2025-12-31', 0, NULL, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '32', '2024-08-21 03:49:56', '2024-09-16 09:52:01', 7, NULL, 'logos/A1U6wo1ntOpPyxIgQnvOxrkx3mouuIjgVYsKfCor.jpg'),
(105, '112 Reseller Name', 'we@asd.qsf', '$2y$12$iu0Ciqe5YxuIp3gPFOTj.OmkFracxVIasxUOP1hGJXOs68WVfuBWi', 0, '2024-12-31', 140, NULL, 7, 2, '[4]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 'newPasscode123', '2024-09-11 03:54:00', '2024-09-12 09:35:50', 7, 7, 'logos/fVIxa6NTbxm4paA9Ybx9yyupcxWGR6asCwmMTm17.jpg'),
(106, 'wefwefwef', 'wefwef@swedg.wef', '$2y$12$.0fT.YGEos.v7M2T2Qowou6UCrevQ0nR1dJtPp7fm2q.8nF2bp/0q', 1, '2024-09-04', 0, NULL, 1, 2, '[3]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-11 03:54:24', '2024-09-12 09:36:24', 1, NULL, 'logos/0rVqhrA7ZI06wTFX933yS1oiFXwQOxFMwKR0MWS9.png'),
(107, 'Test Reseller', 'test@example.com', '$2y$12$eWP2FIe29U8hzCynTNxy3uDkjQataiLB8YtNX9Cp0pyKGE0l2zfou', 1, '2024-12-31', 0, NULL, 40, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, '2024-09-11 05:08:02', '2024-09-18 10:16:54', 1, NULL, 'logos/16PTp821cbqNlKa287KZ3OnIwS6GsDFVnthq4ooB.jpg'),
(108, 'Test2 Reseller', 'test2@example.com', '$2y$12$Zw3a6y.3bIxjYijZf3sSOuH.BZ/uujdBvu9mLh4R/T7ZJCsieDAAK', 1, '2026-12-31', 0, NULL, 40, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-11 10:17:28', '2024-09-11 10:17:28', 1, NULL, NULL),
(109, 'nadaa', 'nadaa@gmail.com', '$2y$12$5svKjBW1ofTjeSA7YaVQ2ecOB0/lZhTk24tRPHi3r2NqKj0wX6iUS', 1, NULL, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 03:45:09', '2024-09-12 03:45:09', NULL, NULL, NULL),
(110, 'Test3 Reseller', 'test3@example.com', '$2y$12$agtPm/a4Mor3ZENiwwI4q.GtnbVuC2TCAP1DFzy.56t3QEHmTHjuO', 1, '2027-12-31', 0, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 03:48:28', '2024-09-12 03:48:28', 1, NULL, 'logos/0rVqhrA7ZI06wTFX933yS1oiFXwQOxFMwKR0MWS9.png'),
(111, 'testyousef Reseller', 'testyousef@example.com', '$2y$12$g3SCg4RZu2mrG5BFSnYqM.gPSdm03hNqcvPojcpfQpunLxNMZS9Oi', 1, '2027-12-31', 0, NULL, 39, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 03:49:19', '2024-09-12 03:49:19', 39, NULL, NULL),
(112, '7amaadad', 'aswdasd@gmail.com', '$2y$12$1TY4hCyLmdVEZZ0CdOOb2uXFAQVdJzaO6omgmJHgXQQomh9aDdj0a', 1, '2024-09-30', 0, NULL, 3, 2, '[2]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 04:42:57', '2024-09-12 04:42:57', 7, NULL, NULL),
(113, 'asasasasas', 'asas@asd.asd', '$2y$12$m8L/B0FxMwjKgWjzXqaexu9fn5C.cRMvgcXfcpiMPzraCRdnGCNya', 1, '2024-08-31', 0, NULL, 0, 2, '[2]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 04:47:01', '2024-09-16 07:59:14', 7, NULL, NULL),
(114, 'asdasd', 'asdasdamed@asf.dgf', '$2y$12$SKM5pv9iVioT9Cb79fSTV.SGUIXwjILei7mf.TT.y/Enepll/RScy', 1, '2024-09-04', 0, NULL, 1, 2, '[5, 4]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 04:48:26', '2024-09-12 04:48:26', 1, NULL, 'logos/0rVqhrA7ZI06wTFX933yS1oiFXwQOxFMwKR0MWS9.png'),
(115, 'mahrous', 'mahrous@gmail.com', '$2y$12$KglqQ5bWNjMbcUeaHzjYIenTJUSFvdnem7I/JhRjyGW9d0vFuYB/y', 1, NULL, 0, NULL, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 05:28:43', '2024-09-16 08:58:36', NULL, NULL, NULL),
(116, 'mahroussub', 'sub@gmail.com', '$2y$12$QqOJAQL.pLD6bc0SaS8XOuroIbKV86lFSFjQq.FpONW5UZwwGSFrK', 1, '2024-09-19', 0, NULL, 115, 2, '[3]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-12 06:00:23', '2024-09-12 06:00:23', 115, NULL, NULL),
(117, 'dina', 'dina@gmail.com', '$2y$12$H0vo/yMFzf38RP5WBph5JuOR5Jxglg.Yx3KrRIq/DWvAnazvyCa0i', 1, '2025-05-15', 0, NULL, 31, 2, '[1, 3, 4]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 04:17:02', '2024-09-18 08:50:46', 7, NULL, NULL),
(118, 'New Reseller', 'newreseller@example.com', '$2y$12$y6alwbEzpQwKB2fqSRE./emZ.5/oHO73rNJFt6MwiMFtugIhU8BRC', 1, '2024-12-31', 0, NULL, 7, 2, 'SomeApplication', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 04:30:41', '2024-09-16 04:30:41', 7, NULL, NULL),
(119, 'New Reselle1r', 'newreseller1@example.com', '$2y$12$N.1tI6gMvBRywm86Hd7xuehgottUFlQGr0Ur.ha5hYQMV2gf6J1G2', 1, '2024-12-31', 0, NULL, 7, 2, 'SomeApplication', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 04:35:53', '2024-09-16 04:35:53', 7, NULL, NULL),
(122, 'New Reselle1r', 'newreseller1121w@example.com', '$2y$12$FONPDwulKyA2GkrZ5h4v3u49EcXqgnnzhUuzpz3DojI/QLGv7VgXu', 1, '2024-12-31', 0, NULL, 7, 2, 'SomeApplication', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 05:04:25', '2024-09-16 05:04:25', 7, NULL, NULL),
(123, 'issubtest', 'issubtest@gmail.com', '$2y$12$pKgeyzuqSXeT2BHYu3gnmeftnPuvM7Hbfi.BXOnTIe7Ke4wiXWZNC', 1, '2024-09-20', 0, NULL, 1, 2, '[3]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 05:15:59', '2024-09-16 05:15:59', 1, NULL, 'logos/hBZHzdWrGu8Im02X91HevItsJE7N2i7o870LD5Gf.png'),
(124, 'hamad', 'hamadad@gmail.com', '$2y$12$P8xp5UqhKGrRJkSmH5epweIMqJao2xuPSh.vkCnlTT0h24i8BMFXC', 1, '2024-09-28', 0, NULL, 115, 2, '[3]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 05:24:49', '2024-09-17 05:05:20', 1, NULL, NULL),
(125, 'last test', 'lsttst@gmail.com', '$2y$12$.eMZ12XYuAhYMVHzjJTgluI8XTyjX1WpoxB1kw/v1cJHqGieEVL9C', 1, '2024-09-18', 0, NULL, 0, 2, '[3]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 05:31:29', '2024-09-16 05:31:29', 7, NULL, NULL),
(126, 'segwesd', 'dsfsdf@gmail.com', '$2y$12$ocHjCt6e5hrQzbNoLEdNSemzsMsfp5xH2lVoA.A9zxd02XchitSnm', 1, '2024-09-27', 0, NULL, 1, 2, '[4]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 05:33:02', '2024-09-18 10:20:00', 1, NULL, 'logos/f5saLywJLCzFUmGqPAEeg8ytKBVNFpJtJm61p89e.jpg'),
(127, '5alas', '5alas@gmail.com', '$2y$12$DeV7Lzzwb8HiOCzEsajWNuFvHf7QRjnvvTyxH27owlLEikSWgPi6K', 1, NULL, 0, NULL, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 08:30:22', '2024-09-16 08:30:22', NULL, NULL, NULL),
(128, 'eda', 'eda@gmail.com', '$2y$12$gbHuGYNMxaEh3n9VyT/Uceyr7eMfgh/hcPSpGKGBxWvqITag80znu', 1, '2024-09-20', 0, NULL, 115, 2, '[2]', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2024-09-16 08:59:43', '2024-09-16 08:59:43', 115, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ibocdn_resellers`
--
ALTER TABLE `ibocdn_resellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ibocdn_resellers_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ibocdn_resellers`
--
ALTER TABLE `ibocdn_resellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
