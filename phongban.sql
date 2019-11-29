-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2019 lúc 09:03 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phongban`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL DEFAULT current_timestamp(),
  `id_pb` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `address`, `birthday`, `id_pb`, `phonenumber`) VALUES
('NV001', 'Dương Minh Tài', 'Quảng Trị', '2019-11-15', 'PB001', '0945659155'),
('NV002', 'Hứa Đại Quyết Thắng', 'Quảng Name', '2019-11-15', 'PB002', '0945659155'),
('NV003', 'Trần Anh Thư', 'Đà Nẵng', '2019-11-15', 'PB003', '0945659155'),
('NV004', 'Ngoc Trinh', 'Quang Nam', '2019-11-14', 'PB003', '02369852'),
('NV005', 'Thanh Thanh', 'Quang Nam', '2019-11-14', 'PB003', '02369852'),
('NV006', 'Văn huy', 'Quang Nam', '2019-11-14', 'PB003', '02369852');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `id` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`id`, `name`) VALUES
('PB001', 'Phòng hành chính'),
('PB002', 'Phòng Kinh Tế'),
('PB003', 'Phòng Nhân Sự');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
