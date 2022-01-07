-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 07, 2022 lúc 08:40 AM
-- Phiên bản máy phục vụ: 10.3.29-MariaDB-0+deb10u1
-- Phiên bản PHP: 7.3.29-1~deb10u1

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
-- Cấu trúc bảng cho bảng `move_control`
--

CREATE TABLE `move_control` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` bigint(20) NOT NULL DEFAULT 0,
  `requests_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `battery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `current` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_can` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ultrasonic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `status_login` int(11) NOT NULL DEFAULT 0,
  `led_level` bigint(20) NOT NULL DEFAULT 0,
  `voltage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `move_control`
--

INSERT INTO `move_control` (`id`, `level`, `requests_time`, `battery`, `current`, `error_can`, `ultrasonic`, `created_at`, `updated_at`, `status_login`, `led_level`, `voltage`) VALUES
(1, 0, '1641455891047', '39', '274', 'OK', '0', '2020-11-16 00:00:00', '2022-01-05 23:58:11', 1, 0, '2.266');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `move_control`
--
ALTER TABLE `move_control`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `move_control`
--
ALTER TABLE `move_control`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
