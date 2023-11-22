-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2023 at 11:50 AM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ascent_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `schedule_email`
--

CREATE TABLE `schedule_email` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_general_ci NOT NULL,
  `scheduled_date` date NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_email`
--

INSERT INTO `schedule_email` (`id`, `name`, `email`, `mobile`, `scheduled_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'lakshman', 'lakshmanavula32@gmail.com', '9874563210', '2023-11-21', 1, '2023-11-18 12:29:31', '2023-11-18 12:29:31'),
(2, 'hgjgh', 'sirrapua@gmail.com', '9874563210', '2023-11-20', 1, '2023-11-18 12:41:48', '2023-11-18 12:56:34'),
(3, 'vamsi', 'vamseedarling15@gmail.com', '9874563210', '2023-11-22', 1, '2023-11-18 14:36:38', '2023-11-22 11:33:46'),
(4, 'dsds', 'dfg@gmail.com', '9874563210', '2023-11-28', 1, '2023-11-22 11:36:13', '2023-11-22 11:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` int NOT NULL DEFAULT '1',
  `employee_id` varchar(255) NOT NULL,
  `project_id` int NOT NULL,
  `is_admin` int NOT NULL,
  `hash` text NOT NULL,
  `token` text NOT NULL,
  `mobile` bigint NOT NULL,
  `otp` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `role`, `employee_id`, `project_id`, `is_admin`, `hash`, `token`, `mobile`, `otp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ascent', 'ascent@gmail.com', '$2b$10$M2oOtmlbndXJfUVMp0ZqW.IMxvpulVKi4wD87EI3tLfaagX0KdQ8y', 1, '0', 0, 0, 'gyyz36owykdylrpdrxdy1g4bzgaiymwm', '', 9182200450, '451625', 1, '2021-09-07 13:41:35', '2023-09-07 18:21:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule_email`
--
ALTER TABLE `schedule_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schedule_email`
--
ALTER TABLE `schedule_email`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
