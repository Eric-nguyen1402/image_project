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
-- Cấu trúc bảng cho bảng `GY25`
--

CREATE TABLE `GY25` (
  `ID` int(11) NOT NULL,
  `X` varchar(255) DEFAULT '0',
  `Y` varchar(255) NOT NULL DEFAULT '0',
  `Z` varchar(255) NOT NULL DEFAULT '0',
  `latitude` varchar(255) NOT NULL DEFAULT '0',
  `longitude` varchar(255) NOT NULL DEFAULT '0',
  `record_state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `GY25`
--

INSERT INTO `GY25` (`ID`, `X`, `Y`, `Z`, `latitude`, `longitude`, `record_state`) VALUES
(1, '-0.06', '-0.06', '0.0', '23.056461', '120.258993', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `GY25`
--
ALTER TABLE `GY25`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `GY25`
--
ALTER TABLE `GY25`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
