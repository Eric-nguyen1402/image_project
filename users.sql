-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 27, 2021 lúc 09:23 AM
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `state_sp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `state`, `state_sp`) VALUES
(3, 'Xuân Duy', 'repeplay@gmail.com', NULL, '$2y$10$vBh1HV8ySgDri9MS6fh98uRtqZbjf1gAy8EjttaI01bp86dMlec46', 'Ycc18YyfWMA7tgF794955Cdh0MxBr28N6SKziECDoesMfYzlD1k53jA7tbWu', '2020-12-02 00:24:17', '2021-06-24 00:41:48', 0, 1),
(4, 'Admin', 'admin@admin.com', NULL, '$2y$10$ICCaZw9W8nv3ff29NmhfbeqF.roOlRf/.SXtS1RFyfUo7rFqsWDX6', 'le87rOhbCZbjJB6NjKjpjyfZ4rV7418bnaRvGwys6KEpnOTG6cr73neFRN53', '2020-12-26 17:43:34', '2021-06-21 17:13:48', 0, 0),
(5, 'Test 1', 'test1@gmail.com', NULL, '$2y$10$pnh9ITcFjyMl3d6Zcal7TOnIC9f1DVw81yfYnECje58O9JDliIJ.6', 'v95kFjJiKu6s3IkU90y11nwOlMkTQ6byQglmaaKHAjThxJig5SPOfQdJXrpp', '2020-12-28 09:18:59', '2021-06-24 00:47:17', 1, 0),
(6, 'Test 2', 'test2@gmail.com', NULL, '$2y$10$snL0bpK5a5EicnazLGwvQ.y1kGm3fHwYADaF8/sp1l1Bkfa6/8YQC', NULL, '2020-12-28 09:26:38', '2020-12-29 10:02:18', 1, 1),
(9, 'MPF', 'mpf@gmail.com', NULL, '$2y$10$GdsrFTT23NvWJb4rimDQDuZVr9YibqeFGq9V7N9GXOlEpT6x1NqpS', NULL, '2021-04-09 03:48:29', '2021-04-09 03:48:29', 0, 0),
(10, 'Eric Nguyen', 'ericnguyen1402@gmail.com', NULL, '$2y$10$DYAGduvs0YskT1v33cXqveACy6ThymQaYtjCQwYzU0kwbGaVS/XDa', 'FnZ5wAloJAy9jBrCopgsWZgWU2DoDUK35uTMHohoYhXeRq9TXBmfL5VheYSZ', '2021-06-24 19:53:42', '2021-09-16 16:20:58', 0, 1),
(11, 'Xuan Duy', 'doxuanduynd19966@gmail.com', NULL, '$2y$10$8TgXQiqH9Zs3JOugl7n5Puvp.UwpRUpisN67vz1GACmalXZ6jZSc.', NULL, '2021-08-11 16:46:02', '2021-08-11 16:46:02', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
