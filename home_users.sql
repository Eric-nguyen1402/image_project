-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 27, 2021 lúc 09:22 AM
-- Phiên bản máy phục vụ: 10.3.27-MariaDB-0+deb10u1
-- Phiên bản PHP: 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tanker`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_users`
--

CREATE TABLE `home_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `status_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status_control` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `permission_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `requests_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `requests_time_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `requests_permission` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_users`
--

INSERT INTO `home_users` (`id`, `id_user`, `status_user`, `status_control`, `permission_level`, `requests_time`, `requests_time_2`, `requests_permission`, `created_at`, `updated_at`) VALUES
(1, 3, '1', '0', '0', '1624525352863', '0', 0, '2020-12-27 22:31:29', '2021-06-24 01:02:32'),
(2, 4, '0', '0', '0', '1624324416660', '0', 0, '2020-12-27 22:34:30', '2021-06-21 17:13:48'),
(3, 5, '1', '0', '0', '1624525352863', '0', 0, '2020-12-28 09:26:01', '2021-06-24 01:02:32'),
(4, 6, '1', '0', '0', '1611641053913', '0', 0, '2020-12-28 09:26:38', '2020-12-29 10:02:18'),
(5, 7, '1', '0', '0', '1613620443470', '0', 0, '2021-02-17 19:08:09', '2021-02-17 19:54:04'),
(6, 8, '1', '0', '0', '0', '0', 0, '2021-04-09 01:56:33', '2021-04-09 01:56:33'),
(7, 9, '1', '0', '0', '1618548083048', '0', 0, '2021-04-09 03:48:29', '2021-04-09 04:40:08'),
(8, 10, '1', '1', '1', '1631838713697', '0', 0, '2021-06-24 19:53:42', '2021-09-16 16:31:54'),
(9, 11, '1', '0', '0', '1629267535390', '0', 0, '2021-08-11 16:46:02', '2021-08-11 16:51:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `home_users`
--
ALTER TABLE `home_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `home_users`
--
ALTER TABLE `home_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
