-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 12, 2022 lúc 04:07 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_ban`
--

CREATE TABLE `bills_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `name_kh` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_ban`
--

INSERT INTO `bills_ban` (`id`, `id_kh`, `name_kh`, `date_order`, `tong_tien`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(22, 34, 'Hiếu', '2019-05-09', 35000, 'on', 'hiu iu', '2022-06-10 15:01:51', '2022-06-10 08:01:51'),
(5, 542, 'Vui', '2022-04-01', 650000, 'Visa', 'jdasdsa', '2022-06-10 15:02:03', '2022-06-10 08:02:03'),
(30, 23, 'Chinh', '2022-12-16', 6855560, 'Paypal', 'SỊN SÒ', '2022-06-10 15:02:21', '2022-06-10 08:02:21'),
(34, 683, 'hiếu', '2022-06-06', 35000, 'Online', 'Gốm Chu Đậu:1;', '2022-06-10 15:02:38', '2022-06-10 08:02:38'),
(32, 7, 'Hiếu', '2022-05-30', 159000, 'on', 'Gốm Chuột trên miệng bình:4;Gốm Chu Đậu:1;Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 15:03:03', '2022-06-10 08:03:03'),
(36, 180, 'quang', '2022-06-06', 24000, 'Online', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 15:03:32', '2022-06-10 08:03:32'),
(56, 279, 'heiu', '2022-06-10', 20000, 'Online', 'Gốm phù lãng:1;', '2022-06-10 09:19:51', '2022-06-10 09:19:51'),
(55, 769, 'zxcz', '2022-06-10', 20000, 'Online', 'Gốm phù lãng:1;', '2022-06-10 09:17:42', '2022-06-10 09:17:42'),
(54, 40, 'hieu', '2022-06-10', 35000, 'Online', 'Tranh cổ Hà Nội:1;', '2022-06-10 09:16:47', '2022-06-10 09:16:47'),
(53, 974, 'hieu', '2022-06-10', 20000, 'Online', 'Gốm phù lãng:1;', '2022-06-10 09:12:53', '2022-06-10 09:12:53'),
(44, 227, 'toàn', '2022-06-10', 216000, 'Online', 'Gốm cổ Đông Nam Á thế kỉ 15:9;', '2022-06-10 15:04:29', '2022-06-10 08:04:29'),
(45, 417, 'hiếu', '2022-06-10', 25000, 'Online', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 15:04:39', '2022-06-10 08:04:39'),
(50, 40, 'hieu', '2022-06-10', 35000, 'Online', 'Gốm Chu Đậu:1;', '2022-06-10 09:05:12', '2022-06-10 09:05:12'),
(52, 193, 'Chinh', '2022-06-10', 24000, 'Online', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 09:07:20', '2022-06-10 09:07:20'),
(72, 10, 'a', '2022-06-10', 25000, 'on', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 10:10:02', '2022-06-10 10:10:02'),
(71, 10, 'a', '2022-06-10', 25000, 'on', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 10:07:49', '2022-06-10 10:07:49'),
(70, 10, 'b', '2022-06-10', 25000, 'on', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 10:04:55', '2022-06-10 10:04:55'),
(69, 10, 'a', '2022-06-10', 140000, 'on', 'Gốm Chu Đậu:4;', '2022-06-10 10:02:35', '2022-06-10 10:02:35'),
(68, 1, 'a', '2022-06-10', 35000, 'on', 'Gốm Chu Đậu:1;', '2022-06-10 10:01:01', '2022-06-10 10:01:01'),
(67, 1, 'a', '2022-06-10', 24000, 'on', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 09:58:25', '2022-06-10 09:58:25'),
(66, 1, 'wqdqwd', '2022-06-10', 20000, 'on', 'Gốm phù lãng:1;', '2022-06-10 09:55:06', '2022-06-10 09:55:06'),
(73, 10, 'a', '2022-06-10', 24000, 'on', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 10:11:30', '2022-06-10 10:11:30'),
(74, 10, 'hieu', '2022-06-10', 49000, 'on', 'Gốm cổ Đông Nam Á thế kỉ 15:1;Gốm Chuột trên miệng bình:1;', '2022-06-10 10:27:29', '2022-06-10 10:27:29'),
(75, 10, 'hieu', '2022-06-10', 24000, 'on', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 10:30:26', '2022-06-10 10:30:26'),
(76, 8, 'Linh', '2022-06-10', 35000, 'on', 'Gốm Chu Đậu:1;', '2022-06-10 10:42:54', '2022-06-10 10:42:54'),
(77, 8, 'ád', '2022-06-10', 20000, 'on', 'Gốm phù lãng:1;', '2022-06-10 10:44:30', '2022-06-10 10:44:30'),
(78, 8, 'sad', '2022-06-10', 35000, 'on', 'Tranh cổ Hà Nội:1;', '2022-06-10 10:45:30', '2022-06-10 10:45:30'),
(79, 8, 'ád', '2022-06-10', 17000, 'on', 'Tranh đồng quê:1;', '2022-06-10 10:45:58', '2022-06-10 10:45:58'),
(80, 8, 'sad', '2022-06-10', 25000, 'on', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 10:46:56', '2022-06-10 10:46:56'),
(81, 8, 'ưeq', '2022-06-10', 20000, 'on', 'Gốm phù lãng:1;', '2022-06-10 10:49:56', '2022-06-10 10:49:56'),
(82, 10, 'Hiếu', '2022-06-11', 55000, 'on', 'Gốm Chu Đậu:1;Gốm phù lãng:1;', '2022-06-10 11:01:26', '2022-06-10 11:01:26'),
(83, 10, 'Hiếu', '2022-06-11', 600000, 'on', 'Hóa thạch Bọ Ba Thùy:1;', '2022-06-10 17:40:47', '2022-06-10 17:40:47'),
(84, 10, 'hieu', '2022-06-11', 25000, 'on', 'Gốm Chuột trên miệng bình:1;', '2022-06-10 18:12:50', '2022-06-10 18:12:50'),
(85, 10, 'Hieu', '2022-06-11', 24000, 'on', 'Gốm cổ Đông Nam Á thế kỉ 15:1;', '2022-06-10 18:17:49', '2022-06-10 18:17:49'),
(86, 10, 'hieu', '2022-06-11', 56222200, 'on', 'Hóa thạch tổ tiên cá voi:1;', '2022-06-10 18:20:54', '2022-06-10 18:20:54'),
(87, 10, 'hieu', '2022-06-11', 136000, 'on', 'Gốm Chu Đậu:1;Gốm Chuột trên miệng bình:2;Tranh đồng quê:3;', '2022-06-10 19:34:35', '2022-06-10 19:34:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_nhap`
--

CREATE TABLE `bills_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ncc` int(11) DEFAULT NULL,
  `id_nhanvien` int(10) NOT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `thanh_toan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_nhap`
--

INSERT INTO `bills_nhap` (`id`, `id_ncc`, `id_nhanvien`, `date_order`, `tong_tien`, `thanh_toan`, `note`, `created_at`, `updated_at`) VALUES
(2, 3, 9, '2022-01-12', 65000, 'Visa', 'Khách vip', '2022-12-11 17:00:00', '2021-02-11 17:00:00'),
(5, 32, 22, '2002-02-15', 658888, 'Paypal', 'Nhập hàng', '2022-12-11 17:00:00', '2001-12-13 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_ban`
--

CREATE TABLE `bill_detail_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_ban` int(10) NOT NULL,
  `sp` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'số lượng',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `id_kh` int(11) DEFAULT NULL,
  `tong` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_ban`
--

INSERT INTO `bill_detail_ban` (`id`, `id_bill_ban`, `sp`, `sl`, `created_at`, `updated_at`, `id_kh`, `tong`) VALUES
(59, 625, 'Hóa thạch Bọ Ba Thùy:', '1:', '2022-06-10 17:40:47', '2022-06-10 17:40:47', 10, '600000'),
(58, 96, 'Gốm Chu Đậu:Gốm phù lãng:', '1:1:', '2022-06-10 11:01:27', '2022-06-10 11:01:27', 10, '55000'),
(53, 365, 'Gốm cổ Đông Nam Á thế kỉ 15:', '1:', '2022-06-10 10:11:30', '2022-06-10 10:11:30', NULL, ''),
(54, 125, 'Gốm cổ Đông Nam Á thế kỉ 15:Gốm Chuột trên miệng bình:', '1:1:', '2022-06-10 10:27:29', '2022-06-10 10:27:29', NULL, ''),
(55, 691, 'Gốm cổ Đông Nam Á thế kỉ 15:', '1:', '2022-06-10 10:30:26', '2022-06-10 10:30:26', 10, ''),
(56, 554, 'Gốm Chuột trên miệng bình:', '1:', '2022-06-10 10:46:56', '2022-06-10 10:46:56', 8, '25000'),
(57, 334, 'Gốm phù lãng:', '1:', '2022-06-10 10:49:56', '2022-06-10 10:49:56', 8, '20000'),
(60, 231, 'Gốm Chuột trên miệng bình:', '1:', '2022-06-10 18:12:50', '2022-06-10 18:12:50', 10, '25000'),
(61, 774, 'Gốm cổ Đông Nam Á thế kỉ 15:', '1:', '2022-06-10 18:17:49', '2022-06-10 18:17:49', 10, '24000'),
(62, 963, 'Hóa thạch tổ tiên cá voi:', '1:', '2022-06-10 18:20:54', '2022-06-10 18:20:54', 10, '56222200'),
(63, 637, 'Gốm Chu Đậu:Gốm Chuột trên miệng bình:Tranh đồng quê:', '1:2:3:', '2022-06-10 19:34:36', '2022-06-10 19:34:36', 10, '136000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_nhap`
--

CREATE TABLE `bill_detail_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_nhap` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `sl` int(11) NOT NULL COMMENT 'số lượng',
  `don_vi` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_nhap`
--

INSERT INTO `bill_detail_nhap` (`id`, `id_bill_nhap`, `id_sp`, `sl`, `don_vi`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 10, 'kg', '2022-04-27 09:13:17', '2022-04-27 02:13:17'),
(12, 12, 211, 2000, 'kg', '2022-04-09 08:00:40', '2022-04-09 08:00:40'),
(50, 25, 33, 65, 'KG', '2022-04-13 07:46:24', '2022-04-13 07:46:24'),
(33, 25, 33, 25, 'kg', '2022-04-13 07:46:52', '2022-04-13 07:46:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_kh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_kh`, `email`, `dia_chi`, `sdt`, `created_at`, `updated_at`) VALUES
(37, 'TOÀN CB', 'toanyh@gmail.com', 'Vĩnh Phúc Văn Giag', '01232456789', '2020-12-11 17:00:00', '2021-12-13 17:00:00'),
(30, 'Đoàn Văn Việt', 'hhh@gmail.com', 'Hung yen', '012365479', '2022-04-13 08:32:32', '2022-04-13 01:32:32'),
(31, 'Lê Trung Kiên', 'kienad2001@gmail.com', 'Bãi Sậy', '0978919JQK', '2022-04-13 08:32:22', '2022-04-13 08:32:22'),
(1, 'Đoàn Văn Giáp', 'vvv@gmail.com', 'Hung hai', '012365479345', '2022-06-10 13:26:27', '2022-04-13 01:32:32'),
(10, 'Hieu', 'hieu@gmail.com', 'Hưng Yên', '012365479345', '2022-06-11 01:19:43', '2022-04-13 01:32:32'),
(46, 'hieu', 'hieu@gmail.com', 'Hưng Yên', '0931526774', '2022-06-10 19:34:35', '2022-06-10 19:34:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `id_sp`, `sl`) VALUES
(1, 1, 12),
(2, 2, 23),
(3, 3, 23),
(4, 4, 23),
(5, 5, 34),
(6, 6, 34),
(7, 7, 56),
(8, 8, 25),
(9, 9, 45),
(10, 10, 27),
(11, 11, 43),
(12, 12, 44),
(13, 13, 29),
(14, 14, 55),
(15, 15, 58),
(16, 31, 77),
(17, 32, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sp`
--

CREATE TABLE `loai_sp` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_sp`
--

INSERT INTO `loai_sp` (`id`, `tenloai`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gốm', 'gom.jpg', '2020-04-29 17:00:00', '2022-04-30 10:54:00'),
(2, 'Hóa thạch', 'hoathach.jpg', '2020-04-29 17:00:00', '2022-04-30 10:54:13'),
(4, 'Tranh cổ', 'tranh.jpg', '2020-04-29 17:00:00', '2022-04-30 10:54:30'),
(5, 'Tiền cổ', 'tien.jpg', '2022-04-29 17:00:00', '2022-04-30 10:54:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_new` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_new`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'bức tranh quý bình định an nam chiến đồ', 'Để chuẩn bị kỷ niệm 210 năm ngày vua Quang Trung đại phá quân Thanh, chúng tôi xin phép được dành bài tham luận của mình để giới thiệu một nguồn tư liệu mới từ nước ngoài, khá đặc biệt và lý thú về quan hệ chiến sự và ngoại giao Việt – Thanh thời Tây Sơn vào cuối thế kỷ XVIII: đó là bộ tranh “Bình Định An Nam chiến đồ” có thơ đề vịnh bằng ngự bút của vua Càn Long. Như sẽ trình bày cụ thể hơn ở dưới, bộ tranh này có tính thời sự và sử liệu khá lớn vì được làm và đề vịnh vào tháng 8 năm Kỷ Dậu (1789), tức là chỉ tám tháng sau khi chiến sự Việt – Thanh kết thúc với chiến dịch Ngọc Hồi – Đống Đa vào tháng giêng, và ngay sau khi sứ bộ Nguyễn Quang Hiển sang bệ kiến và cầu hòa với vua Càn Long vào tháng 7 cùng năm.\n\nĐặc biệt hơn là bộ tranh lại có thơ đề vịnh do chính vua Càn Long ngự chế và ngự bút, mà theo như sử sách và thư tịch còn chép lại thì Càn Long chỉ bỏ công ngự chế và ngự bút văn thơ cho một số ít các võ công hiển hách nhất trong triều đại của mình, qua đó cho thấy tầm quan trọng của chiến sự và ngoại giao của triều Thanh đối với Việt Nam, khi ấy vẫn còn được gọi là “An Nam”, đã khiến vị hoàng đế vẫn thường tự cao tự đại này phải tốn ít nhiều bút mực chống chế cho thất bại chiến sự bằng cách vớt vát thể diện với thành công ngoại giao khi triều Tây Sơn ngỏ ý cầu hòa.\n\nTheo thu thập sơ bộ của chúng tôi thì vua Càn Long có sáng tác ít ra là trên 20 bài thơ, văn và ký sự (còn không kể đến các chỉ dụ mà có lẽ do đình thần chứ không phải nhà vua làm) về các sự kiện ở Việt Nam thời cuối Lê và Tây Sơn. Đây là một số lượng đáng kể, nhưng rất tiếc là phần lớn vẫn còn chưa được công bố và giới thiệu với giới nghiên cứu Việt Nam ngoài những chút gì đã được Quốc Sử Quán triều Nguyễn chép lại trong quyển 30 về “Ngụy Tây liệt truyện” trong sách Đại Nam chính biên liệt truyện sơ tập. Dĩ nhiên các tư liệu văn học này có giá trị thư tịch cũng như sử liệu không nhỏ, và chúng tôi hy vọng sẽ sớm có thể lần lượt giới thiệu chúng trong những dịp khác, còn trong khuôn khổ của bài tham luận này chúng tôi xin tạm thời tập trung giới thiệu cụ thể về bộ tranh và các bài thơ đề vịnh “Bình Định An Nam chiến đồ” mà thôi.\nNgẫu nhiên chúng tôi đã có may mắn trực tiếp xem xét một bản gốc của bộ tranh “Bình Định An Nam chiến đồ” hiện được lưu giữ tại thư viện sách quý Houghton của trường đại học Harvard tại Cambridge, bang Massachusetts, Hoa Kỳ.\n\nBộ tranh này do một cựu sinh viên niên khóa 1921 tên là Philip Hofer tặng cho trường (cùng với 2 bộ “chiến đồ” khác thời Càn Long), và còn được bảo quản trong tình trạng tương đối tốt, mặc dù một vài bức đã có chút sứt mẻ ở các góc cạnh và có đôi chỗ đã hơi ngả màu vàng ố hay ẩm mốc. Chúng tôi đã yêu cầu thư viện cho chụp lại vi ảnh để tiện bảo quản và tham khảo bộ tranh, và qua sự tài trợ hào hiệp của học viện Harvard – Yenching chúng tôi đã xin phóng ảnh làm thác bản kính tặng Viện Hán Nôm tại Hà Nội và Bảo tàng Quang Trung tại Bình Định để các học giả Việt Nam trong nước tiện bề tham khảo và nghiên cứu.\n\nKhi vừa đến Hà Nội, chỉ vài ngày trước cuộc Hội thảo quốc tế về Việt Nam học vào tháng 7 – 1998 vừa qua, chúng tôi đã có cơ duyên gặp một bất ngờ lý thú khi được một vài học giả trong nước chỉ dạy cho rằng ông Trần Viết Ngạc tại TP HCM đã dựa theo thông tin của một người bạn khuyết danh từ Hoa Kỳ để giới thiệu bức tranh “Trận chiến trên sông Phú Lương” (tức là bức thứ 5 của bộ tranh) trong tạp chí Xưa & Nay số 32 (10/1996)(1). Người cung cấp tư liệu cho biết rằng, bức tranh này hiện được lưu giữ tại viện bảo tàng Smithsonian tại Washington D.C., nhưng không rõ là nơi đây chỉ có một bức lẻ hay có đủ cả 6 bức của bộ tranh như chúng tôi sẽ giới thiệu sau đây. Rất tiếc là bản sao của bức tranh này lại bị chắp nối ở giữa để đến nỗi hụt mất đi hai dòng thơ chữ Hán. Ngoài ra, hai bên, nhất là bên trái, và cả phía dưới của bức tranh cũng bị cắt xén khá nhiều để dồn gọn bài thơ vào chính giữa bản sao (nên có lẽ đã làm mất đi hơn 1/3 diện tích của bức tranh). Và có lẽ vì không hiểu rõ xuất xứ và lai nguyên của bộ tranh nên bài giới thiệu đã không khỏi có đôi điều sai sót về ý nghĩa của bài thơ cũng như nội dung sử liệu của bức tranh.\n\nNgoài ra còn phải nói thêm rằng, trước đây các nhà nghiên cứu Việt Nam cũng đã biết đến bức tranh tả cảnh sứ bộ Nguyễn Quang Hiển vào bệ kiến vua Càn Long tại Nhiệt Hà (là bức thứ 6 của bộ tranh). Bức này đã được tạp chí Nam Phong giới thiệu vào năm 1934 trong một phụ ảnh dựa theo một bản gốc được lưu giữ vào đầu thế kỷ XX tại Bắc Bình đồ thư quán (2). Quả vậy, một bản chụp lại rất xấu và nhòe của phụ ảnh này hiện được trưng bầy trong Viện bản tàng lịch sử tại Hà Nội. Và có lẽ vì các bản sao của bức tranh này lại có chất lượng kém nên vẫn chưa ai giới thiệu bài thơ ngự chế mà vua Càn Long đã đề vịnh (3). Tuy nhiên, vì chưa rõ xuất xứ của các bức tranh đơn lẻ này từ bộ “Bình Định An Nam chiến đồ” nên người ta vẫn chưa có được hiểu biết và nhận định thích đáng về chúng. Thiết nghĩ, việc suy diễn nội dung tư liệu cần phải được tiến hành một cách thận trọng, chúng tôi chỉ mong trước hết có thể cung cấp thông tin cho thêm chính xác về mặt văn bản và họa bản trong bài tham luận sơ bộ này, còn sau đó xin kính mời các bậc thức giả góp ý chỉ dạy và chung sức tìm cách xử lý nội dung tư liệu sao cho được thỏa đáng.', 't1.jpg', '2022-05-30 15:23:52', '2022-05-30 08:23:52'),
(2, 'Người dân góp đồ cổ lập bảo tàng của làng', 'Bảo tàng được xây dựng vào đầu năm 2019, từ ý tưởng của cựu Phó Chủ tịch UBND xã Nguyễn Viết Hùng, cũng là người con của làng Yên Mỹ. Theo bà Trần Thị Huệ (68 tuổi), người tự nguyện trông giữ bảo tàng làng, thời gian đầu việc tập hợp đồ cổ gặp nhiều khó khăn. Lãnh đạo xã phải đến từng nhà kêu gọi, phát qua loa đài của làng để người dân biết tin. May mắn, dân làng đã ủng hộ, hồ hởi mang hiện vật đến nhà truyền thống quyên góp. Được biết, trước đây nhà văn hóa của xã cỏ mọc nhiều, ít người qua lại. Nhưng hai năm nay, đây lại trở thành nơi được người dân trong làng đến thăm thường xuyên, từ các cụ già đến cháu nhỏ. Dân góp đồ làm bảo tàng đồ cổ độc nhất vô nhị ở Hà Nội - 1 \"Ngày nào cũng có người trong làng đến thăm, khi lại có các bé mầm non, tiểu học đi theo cô giáo để tìm hiểu về các hiện vật. Tôi ở đây trông nom cũng thấy vui, lúc nào có người đến là tôi giới thiệu, chia sẻ\", bà Huệ niềm nở. Hiện, bảo tàng làng lưu giữ hơn 300 kỷ vật cổ, nhiều hiện vật có thời gian trên 100 năm. Tại đây, dễ dàng bắt gặp những đồ dùng quen thuộc trong đời sống sinh hoạt, lao động hàng ngày: quang gánh, cối đá, kẻng, máy khâu, bát, giáo, mác… Ngoài ra, bảo tàng còn là nơi giữ gìn đồ dùng của hai người anh hùng là Liệt sĩ Trần Văn Đức và Liệt sĩ Nguyễn Minh Tân, tất cả nhằm gợi nhớ về thời chiến đấu hào hùng của dân làng Yên Mỹ. Có diện tích 150m2, nhà truyền thống mang lại nhiều tư liệu, hiện vật cổ, có giá trị về mặt thời gian. Không chỉ là nơi phản ánh vẻ đẹp, văn hóa truyền thống của quê hương, trên hết đây là nơi tạo nét riêng của xã đi đầu trong mô hình bảo tàng làng huyện Thanh Trì. Chia sẻ về đồ vật ấn tượng, bà Trần Thị Huệ chỉ ra chiếc cối đá trên bục cao. \"Ngày xưa làng thường xay ngô làm bánh. Tôi nhớ đi làm ruộng về 11 -12h trưa mới bắt đầu đi xay ngô, cả làng có 2 - 3 cái cối. Xay vừa nặng, vừa mệt, tôi đã gần 70 tuổi giờ nhìn lại cối đá thấy bao nhiêu kỷ niệm.\"', 't2.jpg', '2022-06-05 16:14:24', '2022-06-05 09:14:24'),
(3, 'Bát cổ nửa triệu USD lẫn trong đống hàng bãi', 'Một người ở Connecticut mua chiếc bát sứ 35 USD từ khu đồ cũ mà không biết đó là cổ vật thời Minh có thể trị giá tới 500.000 USD.\n\nChiếc bát sứ với những họa tiết hoa lá tinh xảo màu xanh được người này mua tại điểm bán hàng cũ ở Connecticut, miền đông bắc nước Mỹ. Danh tính người mua hiện được giữ bí mật.\n\nNgười mua đã nhờ các chuyên gia gốm sứ thẩm định món đồ, ban đầu bằng cách gửi ảnh, sau đó đưa vào nhà đấu giá để xem xét kỹ hơn. Các chuyên gia cho biết chiếc bát này được chế tác cho triều đình của hoàng đế Vĩnh Lạc, vị hoàng đế thứ ba của triều Minh, trị vì từ năm 1402 đến năm 1424.\n\nChiếc bát sứ thời Minh được mua từ một điểm bán đồ cũ ở Mỹ. Ảnh: AP.\nChiếc bát sứ thời Minh được mua từ một điểm bán đồ cũ ở Mỹ. Ảnh: AP.\n\n\"Chỉ có 6 chiếc bát khác như vậy được biết đến trên thế giới. Đó là những món đồ dành riêng cho hoàng tộc\", theo Angela McAteer, chuyên gia về các tác phẩm nghệ thuật Trung Quốc tại trụ sở ở New York của Sotheby\'s, một trong những công ty môi giới lớn nhất thế giới về mỹ thuật trang trí, đồ trang sức, bất động sản và đồ sưu tầm.\n\nSotheby\'s sẽ đưa chiếc bát thứ bảy ra đấu giá vào ngày 17/3, với mức giá dự kiến từ 300.000 USD đến 500.000 USD.\n\nNăm trong số những chiếc bát còn lại đang ở trong các viện bảo tàng: hai ở Đài Loan, hai ở London và một ở Tehran. McAteer cho biết chiếc thứ sáu xuất hiện trên thị trường lần cuối vào năm 2007, đồng nghĩa các nhà sưu tập tư nhân và các tổ chức có thể sẽ rất quan tâm đến buổi đấu giá.\n\nNhiều tác phẩm nghệ thuật Trung Quốc đã được đưa tới phương Tây vào thế kỷ 19, rồi được lưu truyền qua nhiều thế hệ. McAteer nói rằng các chuyên gia khó có thể biết được chiếc bát cổ này được chuyển từ Trung Quốc đến điểm bán đồ cũ ở Mỹ như thế nào.', 't3.jpg', '2022-05-30 15:28:19', '2022-05-30 08:28:19'),
(8, 'Cốc rượu 3.500 năm tuổi dùng một lần', 'hiếc cốc cùng nhiều sản phẩm dùng một lần khác sẽ được trưng bày trong triển lãm \"Rác thải và con người\" tại Bảo tàng Anh, London, từ ngày 20/12. Các nhà khoa học tìm thấy hàng nghìn chiếc cốc tương tự tại lâu đài Knossos và các địa điểm khảo cổ khác trên đảo Crete, Hy Lạp. Chúng là sản phẩm của người Minoan, một trong những nền văn minh tiến bộ đầu tiên tại châu Âu.\n\n\"Mọi người có lẽ rất ngạc nhiên khi biết rằng cốc dùng một lần không phải phát minh của xã hội hiện đại mà thực tế đã xuất hiện cách đây hàng nghìn năm\", Julia Farley, quản lý tại bảo tàng Anh, cho biết.\n\nGiới thượng lưu Minoan khoe sự giàu có và địa vị của mình bằng cách tổ chức những bữa tiệc và lễ hội lớn trong lâu đài. Mọi người tụ tập thành những nhóm đông và giống như ngày nay, không ai muốn rửa bát. Ngoài tiện lợi, cốc dùng một lần còn là công cụ khoe giàu vì nhiều tài nguyên được đổ vào để chế tạo chúng.\n\n\"Con người vẫn luôn tạo ra rác. Đó là việc không tránh được. Chúng ta là những sinh vật biết dùng công cụ và mặc quần áo, mà không thứ gì có thể tồn tại vĩnh viễn. Tạo ra rác thải là một phần tự nhiên trong cuộc sống của con người\", Farley nhận xét.\n\n\"Chúng tôi có hàng nghìn chiếc cốc dùng một lần của người Minoan. Số lượng này đã là rất lớn. Tuy nhiên, thế giới đang sản xuất đến hơn 300 tỷ cốc giấy mỗi năm. Nền văn minh Minoan vô cùng nhỏ bé so với nền kinh tế toàn cầu ngày nay\", bà nói thêm.\n\nNgười cổ đại thường được coi là sống hòa hợp với thiên nhiên. Nhưng thực chất, khi chặt cây làm than củi và đốt để nung đất sét, một lượng lớn khí CO2 cũng sẽ bay vào khí quyển.\n\nXả rác là hành động tồn tại từ xa xưa. Tuy nhiên, người hiện đại đang xả rác ở quy mô chưa từng có với những vật liệu mất đến hàng trăm, thậm chí hàng nghìn năm mới có thể phân hủy sinh học. Farley hy vọng triển lãm mới sẽ khiến người xem suy nghĩ sáng tạo về cách giảm rác thải thay vì chỉ cảm thấy tội lỗi khi xả rác.', 'Coc-trong-bai.jpg', '2022-05-30 15:30:03', '2022-05-30 15:30:03'),
(9, 'Đi tù vì giấu kho báu nghìn năm tuổi', 'George Powell (38 tuổi) và Layton Davies (51 tuổi) tìm được kho báu có giá trị hơn 12 triệu bảng nhưng không báo cáo với nhà chức trách.\n\nGeorge và Layton lần lượt đã bị phạt 10 năm và 8 năm 6 tháng tù vì tội Ăn cắp, bản án ngày 22/11 của tòa sơ thẩm hình sự thành phố Worcester cho biết.\n\nLayton (trái) và George. Ảnh: West Mercia Police.\nLayton (trái) và George. Ảnh: West Mercia Police.\n\nTheo bản án, vào tháng 6/2015, hai bị cáo khai quật được kho báu trên mảnh đất của người khác, gồm nhiều trang sức vàng, phôi bạc và khoảng 300 xu cổ có niên đại từ nghìn năm trước. Theo pháp luật Anh, người phát hiện kho báu có nghĩa vụ trình báo với cơ quan chức năng và có thể được thưởng một phần giá trị.\n\nTuy nhiên, George và Layton đã giữ kín chuyện và tìm cách rao bán kho báu ước tính lên tới 12 triệu bảng Anh. Dù đã được nhà chức trách hỏi thăm, hai bị cáo vẫn phủ nhận đã tìm được kho báu. George và Layton sau đó chịu giao ra trang sức vàng và phôi bạc, nhưng phần lớn số xu cổ đáng giá nhất bị giấu nhẹm.\n\nTại tòa, thẩm phán nhận định George và Layton đã không chỉ lừa dối chủ sở hữu mảnh đất nơi kho báu được tìm thấy mà còn lừa dối công chúng khi giữ riêng những \"đồng xu cực hiếm và quan trọng\". Cuối cùng, thẩm phán tuyên phạt như trên.', '2-5376-1574481901.jpg', '2022-05-30 15:31:08', '2022-05-30 15:31:08'),
(10, 'Tượng điêu khắc 3.500 năm tuổi của nữ pharaoh Ai Cập', 'Các chuyên gia tại Đại học Swansea tìm thấy hai mảnh đá vôi được cho là khắc hình khuôn mặt Hatshepsut, nữ pharaoh từng cai trị Ai Cập thời xưa.\n\nMặt trước (trái) và mặt sau (phải) của bức điêu khắc nữ pharaoh Hatshepsut. Ảnh: BBC.\nMặt trước (trái) và mặt sau (phải) của bức điêu khắc nữ pharaoh Hatshepsut. Ảnh: BBC.\n\nTiến sĩ Ken Griffin cùng các sinh viên phát hiện bức điêu khắc pharaoh Hatshepsut, một trong 5 nữ pharaoh từng cai trị Ai Cập, khi đang kiểm tra các đồ tạo tác tại Đại học Swansea, Fox News hôm 27/3 đưa tin. Bức điêu khắc gồm hai mảnh đá vôi gắn vào nhau và được bảo quản tại đây từ hàng chục năm trước.\n\nGriffin nhận thấy những đường nét trên vật thể này giống với những hình khắc trong một ngôi đền của Hatshepsut ở Deir el-Bahri, Luxor, Ai Cập. Mặt trước là hình đầu người bị thiếu phần mặt và một phần chiếc quạt. Hình khắc rắn hổ mang trên trán và những vết tích chữ tượng hình chỉ ra đây là một nữ pharaoh. Mặt sau của mảnh trên là một phần mặt người mang bộ râu ngắn.\n\nHai mảnh bức điêu khắc sau khi sắp xếp lại. Ảnh: Newsweek.\nHai mảnh bức điêu khắc sau khi sắp xếp lại. Ảnh: Newsweek.\n\nHatshepsut cai trị Ai Cập từ khoảng năm 1478 - 1458 trước Công nguyên. Thời kỳ đầu nắm quyền, Hatshepsut được miêu tả là một phụ nữ mặc váy dài. Tuy nhiên, bà dần dần thay đổi với những đặc điểm nam tính hơn, trong đó có việc đeo râu giả.\n\nCác nhà nghiên cứu cho rằng mảnh trên của tấm điêu khắc từng được tách ra và khắc thêm để hoàn thiện khuôn mặt ở mảnh dưới. Điều này cũng giải thích cho đường cắt khác thường của nó. Việc khắc thêm vào mặt sau có thể do một người buôn đồ cổ, người bán đấu giá hoặc người sở hữu trước đây thực hiện để tăng thêm giá trị hay tính hấp dẫn cho bức điêu khắc.\n\nĐại học Swansea mang bức điêu khắc này cùng một số đồ tạo tác từng thuộc về thương nhân dược phẩm Henry Wellcome về bảo quản năm 1971. Các chuyên gia cho rằng nó có nguồn gốc từ Deir el-Bahri. Tuy nhiên, họ cần tiến hành nghiên cứu kỹ lưỡng hơn để xác nhận điều này.', 'Pharaoh-trong-bai-5669-1522213858.jpg', '2022-05-30 15:33:45', '2022-05-30 15:33:45'),
(11, 'Tìm thấy trống đồng cổ niên đại hơn 2.000 năm gần thành nhà Hồ', 'rống cổ đường kính 59 cm, cao 43 cm, bề mặt và thân bị vỡ nhiều chỗ do ôxy hóa. Qua hình dáng, hoa văn, các nhà nghiên cứu nhận định đây là trống đồng Đông Sơn niên đại khoảng 2.000 năm.\n\nNgày 25/9, trong lúc đào móng xây nhà, ông Trịnh Văn Loán (ở xã Vĩnh Long, huyện Vĩnh Lộc, Thanh Hoá) phát hiện trống đồng cổ. Khu vực này cách di sản Thành nhà Hồ hơn một km về phía đông nam.\n\ntim-thay-trong-dong-co-nien-dai-hon-2000-nam-gan-thanh-nha-ho\nTrống đồng cổ được phát hiện gần Thành nhà Hồ (Thanh Hóa). Ảnh: Nguyễn Long.\n\nTrống có đường kính 59 cm, cao 43 cm, bề mặt trang trí ngôi sao 12 cánh đắp nổi, các hoa văn, họa tiết tinh xảo. Tuy nhiên, ở rìa mặt không có tượng cóc trang trí như một số trống được phát hiện trước đây. Hiện vật bị vỡ nhiều chỗ ở phần thân và bề mặt do bị chôn sâu dưới đất.\n\nTiến sĩ Ðỗ Quang Trọng, Giám đốc Trung tâm bảo tồn di sản Thành nhà Hồ cho hay, qua hình dáng, hoa văn, bước đầu các nhà nghiên cứu nhận định đây là trống đồng Đông Sơn loại I (Heger I), niên đại khoảng 2.000-2.500 năm.\n\nUBND xã Vĩnh Long và ngành chức năng đang làm thủ tục tiếp nhận, bảo quản cổ vật theo quy định của Luật Di sản văn hóa.', 'DSC-0039-JPG-7549-1474850806.jpg', '2022-05-30 15:34:34', '2022-05-30 15:34:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `ten_nhanvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capbac` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `ten_nhanvien`, `gioitinh`, `ngaysinh`, `quequan`, `sdt`, `email`, `capbac`, `created_at`, `updated_at`) VALUES
(2, 'Đoàn Trung Hiếu', 'Nam', '2001-04-07', 'Hưng Yên', '0931526885', 'hieucoidk4@gmail.com', '3', '2022-04-13 07:03:16', '2022-04-13 00:03:16'),
(10, 'Hieu', 'Nam', '2001-03-29', 'Hưng Yên', '032569874', 'hieu@gmail.com', '3', '2022-06-11 01:16:49', '2022-04-13 00:17:29'),
(20, 'Lê Trung Kiên', 'Nam', '2001-02-10', 'Hưng Yên', '0931526132', 'kientrung@gmail.com', 'Tiến sĩ', '2022-04-13 00:04:05', '2022-04-13 00:04:05'),
(23, 'HHHH', 'Nam', '2001-12-12', 'Hưng Yên', '095367854', 'asdas@gmail.com', '4', '2022-04-13 21:22:41', '2022-04-13 21:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `id` int(11) NOT NULL,
  `ten_ncc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi_ncc` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Delet` int(11) NOT NULL COMMENT '0:hien,1:an',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`id`, `ten_ncc`, `diachi_ncc`, `email`, `sdt`, `Delet`, `created_at`, `updated_at`) VALUES
(1, 'Hội khảo cổ học Việt Nam', 'Nhà D21, dãy D, khu tập thể sư đoàn 361, P. Xuân Đỉnh, Q. Bắc Từ Liêm, Hà Nội', 'thucphamexp@gmail.com', '024 3750294', 0, '2022-05-30 15:34:55', '2022-05-30 08:34:55'),
(2, 'Hội khảo cổ học Việt Nam tại nước ngoài', 'Lầu 10, Toà Nhà Vinaconex, 47 Điện Biên Phủ, P. Đa Kao, Q. 1, Tp. Hồ Chí Minh (TPHCM)', 'nancy@galaxy-vn.com', '(028) 39103066', 0, '2022-05-30 15:35:20', '2022-05-30 08:35:20'),
(3, 'Giấu tên', 'Giấu tên', 'nancy@galaxy-vn.com', '(028) 39103066', 0, '2022-05-30 15:35:49', '2022-05-30 08:35:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi`
--

CREATE TABLE `phan_hoi` (
  `id_phan_hoi` int(11) NOT NULL,
  `id_tk` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_hoi`
--

INSERT INTO `phan_hoi` (`id_phan_hoi`, `id_tk`, `id_sp`, `level`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 'Nếu mua nhiều có được chiết khấu không vậy?', '2019-04-15 05:27:42', '0000-00-00 00:00:00'),
(2, 1, 7, 5, 'Mình đã mua hoa quả đúng chất lượng.', '2019-04-15 05:27:43', '0000-00-00 00:00:00'),
(3, 1, 2, 3, 'Ngon.Ngon', '2019-04-15 05:27:43', '0000-00-00 00:00:00'),
(4, 1, 1, 0, 'Quả này đẻ', '2019-04-15 05:27:43', '2019-04-10 02:20:29'),
(5, 1, 1, 0, 'uk', '2019-04-15 05:27:43', '2019-04-10 02:21:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_lsp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_ncc` int(11) NOT NULL,
  `mota_sp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_vi_tinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xem` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `ten_lsp`, `id_ncc`, `mota_sp`, `unit_price`, `so_luong`, `image`, `don_vi_tinh`, `xem`, `created_at`, `updated_at`) VALUES
(2, 'Gốm Chu Đậu', 'Gốm', 2, 'Gốm Chu Đậu thuộc dòng gốm cổ cao cấp của Việt Nam, có niên đại vào khoảng thế kỷ XII- XIII, phát triển rực rỡ vào thế kỷ XV-XVI trong suốt thời kỳ Lý - Trần - Lê - Mạc. Sang thế kỷ XVII gốm Chu Đậu bị thất truyền. Nét đặc trưng của gốm Chu Đậu được thể hiện ở kiểu dáng, màu men và các hoa văn họa tiết tinh xảo thể hiện bản sắc văn hóa thuần Việt, phản ánh trung thực nền văn minh của đồng bằng châu thổ sông Hồng. Hiện gốm cổ Chu Đậu đang được trân trọng lưu giữ tại 46 bảo tàng danh tiếng ở 32 quốc gia trên thế giới. Trải qua bao thăng trầm của lịch sử, sau hơn 400 năm thất truyền. Năm 2001, Tổng công ty Thương mại Hà Nội - Công ty cổ phần (Hapro), thành viên của Tập đoàn BRG đã quyết định thành lập Công ty CP Gốm Chu Đậu với sứ mệnh phục hưng dòng gốm cổ Chu Đậu. Khát khao được viết tiếp trang sử đầy tự hào, ước muốn đưa gốm Chu Đậu với hơn 400 năm lịch sử và nét riêng độc đáo đi tiếp những bước dài và xa, Tập đoàn BRG đang gìn giữ, phát triển gốm Chu Đậu với tất cả tâm huyết và tình yêu dân tộc, đáp ứng sự mong mỏi của đông đảo khách hàng cả trong nước và quốc tế, để gốm Chu Đậu - đại diện cho một Việt Nam đậm đà bản sắc dân tộc, luôn mở rộng cánh cửa hợp tác hội nhập quốc tế. Gốm Chu Đậu tự hào đã được Đại tướng Võ Nguyên Giáp tặng 9 chữ vàng \"Gốm Chu Đậu - Tinh hoa văn hóa Việt Nam\" và Thủ tướng Nguyễn Xuân Phúc tặng 10 chữ vàng \"Gốm Chu Đậu - Bản sắc Việt, tỏa sáng năm Châu\".á', 35000, 1, 'chudau.jpg', 'Chiếc', 200000, NULL, '2022-06-05 08:08:34'),
(3, 'Gốm Chuột trên miệng bình', 'Gốm', 1, 'Điều thú vị là điểm chung của hình ảnh những con chuột được trang trí trên chiếc hũ, chiếc âu và chiếc đĩa lớn phần nào đó giúp cho chúng ta hình dung ra đặc tính vốn có của loài chuột từ xưa nay. Đó là mặt mày lúc nào cũng lấm la lấm lét, nhìn nghiêng ngó dọc quan sát xung quanh, cơ thể lúc nào cũng ở tư thế sẵn sàng chạy để khi gặp nguy hiểm thì lẩn trốn chui bờ (tre/trúc), rúc bụi (cỏ). Đặc biệt là những con chuột đều được thể hiện rất béo tốt, mập mạp. Điều này giúp cho chúng ta hiểu được ẩn ý và thông điệp của những nghệ nhân xưa thông qua nét vẽ để phản ánh về xã hội đương thời. Vì theo quan niệm của người xưa thì con chuột mang đến sự sung túc và thịnh vượng bởi chúng là loài tìm kiếm thức ăn nhanh, sinh sản tốt. Nơi nào có chuột đến nghĩa là nơi đó sẽ có của ăn của để dồi dào, mùa màng bội thu, năm mới sung túc. Và trên hết thông qua hình tượng con chuột trên gốm cổ Chu Đậu có thể thấy đất nước ta vào thời Lê sơ ở thế kỷ XV, XVI có một nền nông nghiệp rất phát triển, người dân có của ăn của để, thóc lúa đầy bồ, ruộng đồng bội thu. Nếu như trong cuộc sống, chuột được biết đến là một loài vật đáng ghét, phá hoại thì trong dân gian, người xưa cũng sử dụng hình ảnh của chuột để truyền đạt thông điệp về cuộc sống sung túc một cách ý nhị sâu xa bằng nét vẽ hóm hỉnh, hài hước.', 25000, 1, 'chuot.jpg', 'Chiếc', 30000, NULL, '2022-06-05 08:09:04'),
(4, 'Tranh đồng quê', 'Tranh cổ', 2, 'Tranh đồng quê là bức tranh rất quen thuộc trong mỗi chúng ta, đây là bức tranh mỹ nghệ tái hiện dưới những cảnh vật nơi làng quê xưa. Tranh mang những hình ảnh như con sông, giếng nước, sân đình, con đường, lũy tre, đồng ruộng, đồi núi, ao hồ hay những hình ảnh con người cày ruộng, trống lúa, chăn trâu, đốn củi,…Tất cả toát lên một vẻ đẹp chân thật, hình ảnh dịu dàng, đằm thắm, vui tươi mà sắc sảo, đậm chất làng quê xưa.\n\nÝ nghĩa tranh đồng quê luôn là chủ đề được nhắc đến nhiều trong các tác phẩm văn học và nghệ thuật. Những hình ảnh thanh bình, an nhiên của làng quê xưa kia có chăng giờ chỉ còn là những ký ức với những người lớn tuổi, ký ức về một tuổi thơ êm đềm, chăn trâu cắt cỏ không gợn một chút ồn ã, xô bồ, không nhà máy như một xã hội ngày nay. Tranh đồng quê giúp chúng ta khơi gợi lại ký ức, luôn luôn nhớ về quê hương bản xứ của mình và tranh cũng là cách để thế hệ trẻ ngày nay hình dung được làng quê xưa.', 17000, 1, 'dongque.jpg', 'Bức', 50000, NULL, '2022-05-30 07:52:04'),
(5, 'Gốm cổ Đông Nam Á thế kỉ 15', 'Gốm', 3, 'Dưới thời Lê Sơ, cùng với việc duy trì quan hệ với Trung Quốc, Đại Việt còn đón tiếp thương nhân và các sứ thần một số quốc gia Đông Nam Á như Xiêm La, Trảo Oa, Mã Lạt Gia, Tam Phật Tề, Chiêm Thành, Ai Lao sang buôn bán, triều cống. Sách Đại Việt sử ký toàn thư còn chép sự kiện năm 1437, “Nước Xiêm La sai bọn Trai Cương Lạt sang cống, vua nhà Lê giao cho sắc thư mang về nước và trừ cho phần thuế buôn giảm xuống bằng nửa phần năm trước, cứ 20 phần thu 1 phần, rồi thưởng cho rất hậu. Ngoài ra, về phần Chúa nước ấy cho 20 tấm lụa màu, 30 bộ bát sứ, phần của bà Phi nước ấy là 5 tấm lụa màu, 3 bộ bát sứ, mỗi bộ 35 chiếc” (Đại Việt sử ký toàn thư, 1972: 346). Các ngành nghề thủ công đều được phục hưng, không chỉ đáp ứng nhu cầu trong nước mà còn xuất khẩu ra nước ngoài, đặc biệt nghề sản xuất gốm sứ đã đạt đỉnh cao. Với sự phát hiện nhiều sản phẩm gốm sứ chất lượng cao trong khu vực Đông Nam Á, Đông Á đã được giới thiệu trưng bày trong các bảo tàng, cũng như việc phát hiện và khai quật khảo cổ học tàu cổ Cù Lao Chàm tại vùng biển tỉnh Quảng Nam đã chứng minh điều đó.', 24000, 1, 'gomcoDNA.jpg', 'Chiếc', 100000, NULL, '2022-05-30 07:54:13'),
(6, 'Gốm phù lãng', 'Gốm', 3, 'Gốm Phù Lãng được sử dụng nhiều phương pháp khác nhau trong nghệ thuật tạo dáng, với những hình khối đa dạng. Nhưng nhìn chung có thể quy vào hai phương pháp cơ bản:phương pháp thứ nhất tạo hình trên bàn xoay (làm trong gốm gia dụng và trên gốm trang trí); phương pháp thứ hai đó là, in trên khuôn gỗ hoặc khuôn đất nung rồi dán ghép lại (làm trên đồ tín ngưỡng). Mỗi loại hình sản phẩm, mỗi chủng loại hàng đều có những kỹ thuật, kỹ xảo riêng, tất cả đều nhằm đạt được hiệu quả tối đa về hai phương diện kinh tế và thẩm mỹ.\n\nCũng như nghề gốm Bát Tràng (Gia Lâm), và Thổ Hà (Bắc Giang), phương pháp tạo hình sản phẩm (có tiết diện tròn) là chuốt. Tất cả các sản phẩm được đưa lên bàn xoay tay. Hoạt động xung quanh bàn xoay tay cần phải có hai người, trong đó một người chuyên ngồi chuốt, một người vần bàn xoay. Người vần bàn xoay đồng thời làm nhiệm vụ lăn đất thành đòn để chuốt (còn gọi là xe đòn). Sản phẩm sau khi đã tạo hình xong, để cho se dần, đến khi sờ tay vào không thấy dính, lúc bấy giờ người thợ tiến hành chúng, đấm, thúc bên trong của sản phẩm cho thành hình đồ vật, rồi lại để cho ráo. Lúc này nếu thấy sản phẩm có vết rạn nứt thì được vá lại bằng đất mịn và nát.\n\nBước cuối cùng trong khâu hoàn thành sản phẩm là ve, nạo sản phẩm sau khi sản phẩm đã thành bạc hàng (chuyển màu trắng). Ve, nạo xong sản phẩm dược tráng một lớp men lên, tạo màu sắc.', 20000, 1, 'gomphulang.jpg', 'Chiếc', 20000, NULL, '2022-05-30 07:54:58'),
(8, 'Tranh cổ Hà Nội', 'Tranh cổ', 3, 'Nhắc tới phố cổ mỗi người dân Hà Nội nói riêng hay người dân Việt Nam nói chung đều có cảm giác khó tả. Một niềm tự hào với một lịch sử hào hùng cũng như một nét đẹp văn hóa. Phố cổ Hà Nội là một khu phố sầm uất náo nhiệt  đã tồn tại lâu đời. Từ xưa đến nay khu phố này luôn là nơi buôn bán nhộn nhịp với 36 phố phường đã đi vào tiềm thức của mỗi người dân Hà Nội. Và cho đến tận bay giờ, nhắc đến Hà Nội là nhắc tới Hồ Giươm, lăng Bác và 36 phố phường. Không chỉ người dân Việt Nam mà còn nổi tiếng đến các du khách nước ngoài.\nDưới bàn tay tài tình của các họa sĩ những bức tranh phố cổ Hà Nội sơn dầu như khắc họa lại toàn bộ hoạt động, nét đẹp của khu phố cổ nổi tiếng. Làm cho mà mỗi người xem và thưởng thức tranh như đang được chứng kiến, hòa mình vào từng chuyển động của khu phố đó là nét đẹp, nét tài tình mà chỉ có các họa sĩ tài ba có kinh nghiệm và thực sự yêu phố cổ Hà Nội mới làm được. Với tài năng, tình yêu của mình thì những bức tranh phố cổ của họa sĩ tài ba Bùi Xuân Phái đã khiến tranh phố cổ sơn dầu là thương hiệu cho riêng mình. Những bức tranh của ông chứ đựng biết bao tình yêu với phố cổ, với Hà Nội. Tranh của ông không những nổi tiếng ở Việt Nam mà còn có tiếng vang trên cả thế giới', 35000, 1, 'tranhhanoi.jpg', 'Bức', 1000, NULL, '2022-05-30 07:57:53'),
(14, 'Hóa thạch Bọ Ba Thùy', 'Hóa thạch', 3, 'Bọ bà thùy đã rất đa dạng và phân bố rộng rãi. Do chúng có bộ xương ngoài dễ hóa thạch, rất nhiều hóa thạch bọ ba thùy đã được tìm ra, với chừng 17.000 loài vào Đại Cổ Sinh. Việc nghiên cứu những hóa thạch đã mang đến những đóng góp quan trọng cho sinh địa tầng học, cổ sinh vật học, sinh học tiến hóa, và nghiên cứu kiến tạo mảng. Lớp Bọ ba thùy thường được đặt trong siêu lớp Arachnomorpha (còn gọi là Arachnata), song nhiều cách phân loại khác cũng được đề xuất.\n\nBọ ba thùy đa dạng về lối sống; một số bò quanh đáy nước để săn mồi, kiếm xác thối hay ăn lọc, một số khác lại bơi mà ăn sinh vật phù du. Đa phần lối sống của động vật chân khớp hải dương ngày nay cũng hiện diện ở bọ thùy (trừ lối sống ký sinh).', 600000, 1, 'bo.jpg', 'Con', 60000, '2022-04-30 02:09:39', '2022-05-30 08:00:52'),
(20, 'Hóa thạch cua', 'Hóa thạch', 1, 'Nhà cổ sinh vật học Javier Luque, Đại học Harvard cho biết: \"Khi tôi nhìn thấy nó lần đầu tiên, tôi không thể tin vào mắt mình. Con cua này trông rất hiện đại, giống như loài cua bạn có thể tìm thấy khi lật những tảng đá, nhưng nó thực sự cổ đại và khác với bất cứ con cua nào từng thấy trước đây, hóa thạch hay còn sống\".\n\nChụp cắt lớp vi mô cho thấy hổ phách đã bảo vệ con cua này ở một mức độ đặc biệt, thậm chí lông mao mỏng manh xung quanh phần miệng của nó cũng được giữ nguyên.\n\nCác mang mỏng và đôi mắt với cấu tạo phức tạp của con cua vẫn còn nguyên vẹn và một đường lột xác rõ ràng cho thấy nó vẫn còn sống khi bọc trong nhựa cây. Một trong những chân của con cua bị tách ra khỏi cơ thể, có thể do nó tự cắt bỏ chân khi trốn chạy.', 60000, 1, 'htcua.jpg', 'Chiếc', 600000, '2022-04-30 02:11:29', '2022-05-30 08:01:48'),
(21, 'Hóa thạch sư tử 28000 năm', 'Hóa thạch', 2, 'Con sư tử này đã sống cách đây 28.000 năm và thậm chí có thể vẫn còn dấu vết của sữa mẹ trong đó. Đây là hóa thạch của một con sư tử cái, được đặt tên là Sparta, được tìm thấy tại khu vực sông Semyuelyakh, vùng Yakutsk của Nga vào năm 2018.\n\nMột con sư tử con khác có tên là Boris, là sư tử đực, đã được tìm thấy vào năm 2020, theo một nghiên cứu được công bố trên tạp chí Quaternary.\n\nHai con sư tử non nói trên được tìm thấy cách nhau 15m, nhưng chúng không chỉ khác nhau về giới tính mà còn được sinh ra cách nhau hàng nghìn năm. Boris sống cách đây khoảng 43.448 năm, nghiên cứu cho biết.', 600000, 1, 'htsutu.jpg', 'Con', 60000, '2022-04-30 02:12:49', '2022-05-30 08:02:16'),
(26, 'Hóa thạch tổ tiên cá voi', 'Hóa thạch', 2, 'Hóa thạch được xác định là một loài động vật biển có vú nguyên thủy. Nghĩa là nó là tổ tiên chung của cá voi và cá heo hiện đại. Tuy nhiên, với thân hình dài tới 17 mét, loài cá voi này còn được gọi là basilosaurus, nghĩa là \"thằn lằn vua\".\n\nCác nhà cổ sinh vật học cho rằng trong quá khứ, basilosaurus có thể bơi uốn thân trong nước giống một con rắn biển. Nhưng loài cá voi này có hộp sọ rất lớn. Về cơ bản, nó trông giống một con rắn được gắn lên một khuôn mặt khổng lồ, với hàm răng sắc nhọn.\n\nVới các đặc điểm ấy, loài quái vật khổng lồ này chắc là một loài cá voi ăn thịt. Chúng được cho là có thể hạ cả cá mập và các loài cá voi cổ đại khác để đứng trên đỉnh chuỗi thức ăn', 56222200, 1, 'htcavoi.webp', 'Chiếc', 562222, '2022-04-30 02:16:04', '2022-05-30 08:03:00'),
(27, 'Tiền cổ thời Thanh', 'Tiền cổ', 2, '9 đồng xu cổ thời nhà thanh trung quốc gồm thuận trị, khang hy, ung chính, càn long, gia khánh, đạo quang, hàm phong, đồng trị và quang tự được gọi là cửu đế nhà thanh\nTheo phong thủy thì đồng tiền xu là một trong những vật phẩm rất có ý nghĩa trong việc cầu may mắn vận đỏ về tiền bạc, những đồng tiền xu cổ là biểu tượng của nguồn tài lộc, sự giàu có, phát về tài lộc. Việc cất giữ những đồng tiền xu cổ có công năng gia tăng tài lộc và đem lại nhiều may mắn về công danh, sự nghiệp, giải trừ tai họa trong vận làm ăn kinh doanh. Trong phong thủy người ta cũng thường dùng cách gieo quẻ 3 đồng xu cổ gieo quẻ xin xăm để cầu may về ước nguyện nào đó của mình. hoặc có thể chôn dưới móng nhà trấn trạch để mong gia đình thịnh vượng làm ăn thuận buồm xuôi gió và gặp nhiều may mắn\n\nĐể tiền xu cổ cho vào bao lì xì, sau đó để trong túi mình hay mang theo, có thể trừ tà, để tránh bị ma quỷ làm phiền, tăng cường khí vận. tăng cường may mắn của mình. Tại những phương hướng cung, có thể treo một chùm đồng tiền, người sống trong nhà sẽ khỏe mạnh, bình an, làm ăn thuận lợi.', 650000, 2, 'tienthanh.jpg', 'Đồng', 52000, '2022-04-30 02:20:21', '2022-05-30 08:03:49'),
(30, 'Tranh mùa Xuân', 'Tranh cổ', 3, 'Người dân làng Hồ khi nhớ đến câu ca dao ấy, lòng thấy tự hào về nghề tranh của mình đã một thời hưng thịnh, kéo dài từ cuối thế kỷ 17 đến nửa thế kỷ 19. Trải qua bao thời loạn ly, tranh vẫn được duy trì, tồn tại đến ngày nay. Tranh Đông Hồ, từ tranh vẽ đến tranh in thủ công, đều mang một phong cách riêng. Từ các khâu như vẽ mẫu, khắc bản in, sản xuất và chế biến màu rồi đến in vẽ tranh, đều có những khác biệt hợp thành cái độc đáo về kỹ thuật, mỹ thuật của một dòng tranh. Màu in tranh ở đây được chế biến từ nguyên liệu có sẵn trong tự nhiên: màu trắng từ sò, điệp; đen từ than rơm hay lá tre; hồng từ gỗ vang; đỏ từ son; xanh từ gỉ đồng; lam từ lá chàm; vàng từ hoa hoè, quả dành dành… Kỹ thuật pha màu và in của tranh làng Hồ tạo cho sắc tranh trong sáng, óng xốp.', 20000, 1, 'muaxuan.jpg', 'Bức', 50000, '2022-04-29 23:28:53', '2022-05-30 08:07:11'),
(32, 'Hóa thạch voi ma mút', 'Hóa thạch', 2, 'Theo Viện Nhân chủng học và Lịch sử Quốc gia Mexico (INAH), bộ xương có thể thuộc về một con voi ma mút Columbia (tên khoa học là Mammuthus columbi) - một loài đã tuyệt chủng từng sinh sống ở khu vực Bắc Mỹ.\n\nĐây là một trong những loài voi ma mút lớn nhất từng tồn tại, chúng cao tới 4m tính từ vai và cân nặng khoảng 7-9 tấn.\n\nTrong quá trình khai quật bắt đầu từ tháng 10 vừa qua tại Puebla, các nhà khoa học đã tìm thấy bộ xương với một ngà dài 2,9m gần như còn nguyên vẹn, ngà còn lại và hộp sọ bị hư hại, 70% xương chậu và một số mảnh xương sườn', 6500000, 1, 'voi_ma_mut.jpg', 'Chiếc', 13928, '2022-04-30 02:14:29', '2022-05-30 08:13:57'),
(35, 'Tiền cổ Đại Hòa Thông Bảo', 'Tiền cổ', 6, 'Lê Bang Cơ (1441-1459) – Lê Nhân Tông 1442-1459\nLà con thứ 3 của vua Lê Thái Tông, sau khi vua cha mất, Lê Bang Cơ làm vua lúc 2 tuổi, mẹ là thái hậu Tuyên Từ buôn rèm nhiếp chính đến khi vua 12 tuổi.\nLà vị vua sáng suốt, nhưng ko may bị cướp ngôi, giết hại do chính anh ruột cùng cha khác mẹ là Lê Nghi Dân con trưởng giết trong 1 đêm cùng với mẹ, lúc này ông mới 19 tuổi, làm vua được 17 năm.\nCó 2 niên hiệu, niên hiệu Diên Ninh bắt đầu từ khi vua được Thái hậu trả quyền, lui về ở cung riêng năm 1453, năm 1454 vua được nhà Minh TQ chính thức phong “An nam quốc vương”\nNiên hiệu: Thái Hòa (1442-1453)\nDiên Ninh (1454- 1459)\nTheo đại việt sử ký có Niên hiệu là Thái hòa, tuy nhiên tiền xu đúc là “Đại Hòa Thông Bảo”. Chữ Đại chỉ cần thêm một nét dưới chân sẽ thành chữ Thái. Điều này nó cũng giống như xu của vua Đinh Tiên Hoàng (Thái bình hưng bảo), chữ Đại trên xu đọc là Thái ứng với niên hiệu vua là Thái Bình.', 15000000, 20, 'tiencodaihoa.jpg', 'Đồng', 15200, '2022-04-30 02:17:51', '2022-05-30 08:14:35'),
(44, 'Tranh cổ thiếu nữ Áo dài Việt Nam', 'Tranh cổ', 3, 'Cuộc sống tao nhã quý phái đã tạo một Lê Phổ đường bệ, sang trọng trong những tranh thiếu phụ với trang phục áo dài đầu thế kỷ 20. Tranh Thiếu phụ - một tác phẩm sơn dầu năm 1935 đã khẳng định Lê Phổ tôn trọng một mẫu người danh giá trong xã hội. Đó là chân dung một mệnh phụ phu nhân: Bà Tham Ý, chủ nhân một tòa biệt thự ở phố Quán Thánh-Hà Nội. Nhân vật trong tranh điển hình cho vẻ đẹp quý phái, kiêu kỳ của các bà phu nhân Hà Nội. Trang phục áo dài trắng nền nã, cài cúc bên vai điển hình cho kiểu cổ áo thời xưa, từ lối vấn khăn trong tròn trịa, tóc rẽ ngôi giữa, cân đối, nghiêm chỉnh đến cách ngồi đoan trang, đĩnh đạc đã định vị quan niệm thẩm mỹ Lê Phổ những năm 30.', 50000, 1, 'thieunu.jpg', 'Bức', 10000, '2022-04-26 23:23:47', '2022-05-30 08:16:54'),
(63, 'Tiền cổ thời Nguyễn', 'Tiền cổ', 1, 'Tiền nhà Nguyễn thời Pháp thuộc\nTiền do triều đình Huế đúc ra không còn yếu tố quan trọng trong đời sống kinh tế như trước mà chỉ có tính tượng trưng. Vua Đồng Khánh cho lập ra Cục Thông bảo để đúc tiền. Tiền Đồng Khánh lớn bằng đồng ăn 10 đồng tiền kẽm, 1 đồng tiền nhỏ ăn 6 đồng tiền kẽm.', 6500000, 2, 'tiencothoinguyen.jpg', 'Đồng', 350000, '2022-04-30 02:18:36', '2022-05-30 08:17:58'),
(64, 'Tranh hồng hạc', 'Tranh cổ', 2, 'Chim Hạc trong phong thủy được coi là biểu tượng cho điềm lành và trường thọ. Hai phẩm chất cao quý được mọi người tôn sùng nhất. Nếu hoa Mẫu Đơn là vua của các loài hoa thì chim Hạc lại là cha của các loài chim. Từ cổ chí kim đã được người đời đặc biệt coi trọng. Là vật cát tường, ý nghĩa văn hóa của chim hạc xuất hiện rất nhiều phương diện. Được gọi là nhất phẩm điểu, chim hạc là loài đứng đầu trong họ nhà lông vũ. Cùng Mint Decor tìm hiểu về những ý nghĩa tốt đẹp khi treo tranh chim Hạc. Và treo tranh chim hạc ở đâu để mang lại nhiều may mắn tài lộc nhất nhé.', 6520450000, 1, 'hh.jpg', 'VNĐ', 12345111, '2022-05-15 18:44:42', '2022-05-30 08:19:55'),
(68, 'Tiền Thiên Phúc', 'Tiền cổ', 1, 'Sử liệu cũ của Việt Nam là Đại Việt sử ký toàn thư và Việt sử thông giám cương mục đều có nhắc đến việc tiền Thiên Phúc được đúc từ mùa xuân năm 984. Điều này cho thấy: thứ nhất, bốn năm đầu khi lên làm vua nhà Lê vẫn dùng tiền do nhà Đinh phát hành; thứ hai, tiền đã được sử dụng nhiều hơn. Do tiền trong nước không đủ nhu cầu sử dụng, một số đồng tiền nhà Đường cũ như Khai Nguyên và nhà Tống đương thời như Thuần Hóa, Tường Phù được lưu hành trong nước Đại Cồ Việt.Khảo cổ học cho thấy Thiên Phúc trấn bảo có ba loạt đều có hình thù giống tiền của nhà Đinh. Một loạt mặt trước có bốn chữ Thiên Phúc trấn bảo và mặt sau có chữ Lê (họ của vua), một loạt mặt trước giống như loạt trên nhưng mặt sau lại không có chữ gì, và một loạt nữa mặt sau có chữ Lê nhưng mặt trước lại không có chữ gì.Sử sách không nêu rõ tỷ lệ giá trị giữa những đồng tiền trong nước phát hành và tiền Trung Quốc ra sao. Tiền Thiên Phúc nhà Tiền Lê nặng 2,3-3,2 gram, còn các đồng tiền nhà Tống nặng khoảng 3,5 gram. Tại Khâm châu, việc mua bán của người Việt và người Tống bao gồm cả tiền đồng. Lê Văn Siêu cho rằng đây không chỉ là thị trường hàng hóa mà còn là thị trường tiền tệ mà hai bên trao đổi ngoại hối.', 2500, 1, 'tienThienPhuc.jpg', 'Đồng', 350000, '2022-06-05 08:49:17', '2022-06-05 08:49:17'),
(69, 'Càn Phù nguyên bảo', 'Tiền cổ', 2, 'Sử liệu cũ của Việt Nam và kết quả khảo cổ đều không cho thấy có loại tiền này. Song, Lacroix và các tác giả Lịch sử phong kiến Việt Nam (tập I) đều cho là có và cũng do Lý Thái Tông phát hành.Việt Nam vào thời vua Lý Thái Tông đã đúc hai loại Minh Đạo thông bảo và Càn Phù nguyên bảo. Song, khảo cổ học Việt Nam chưa cho thấy cả hai loại tiền này.', 35000, 1, 'Canphutien.gif', 'Đồng', 650000, '2022-06-05 08:51:30', '2022-06-05 08:51:30'),
(70, 'Thiệu Bình Thông Bảo', 'Tiền cổ', 2, 'Lê Nguyên Long – Lê Thái Tông (1434 – 1442)– Là con trai thứ 2 của Lê Lợi, lên ngôi lúc 11 tuổi, mất khi mới 20 tuổi với sự kiện án oan “tru di tam tộc” Nguyễn Trãi, đến đời vua Lê Thánh Tông mới được minh oan.Là vi vua khởi đầu cho việc khắc tên lên bia đá ở Văn Miếu cácTiến sỹ đỗ đạt thi Đình do vua ra đề.Niên hiệu: Thiệu Bình (1434 – 1439)Đại Bảo ( 1440 – 1442)Sau đây là đồng tiền xu thiệu bình thông bảo của vua Lê Thái Tông.', 60000, 1, 'chinh-binh-thong-bao.jpg', 'Đồng', 780000, '2022-06-05 08:55:08', '2022-06-05 08:55:08'),
(71, 'Gốm men trắng vẽ lam', 'Gốm', 2, 'Gốm men trắng vẽ lam xuất hiện từ thời cuối Trần, nhưng đến đầu thời Lê sơ mới nở rộ và trở thành mặt hàng chủ yếu trên thị trường. Những chứng tích vật chất được tìm thấy ở khu lò gốm Chu Đậu (Hải Dương), Thăng Long (Hà Nội) đã thể hiện đầy đủ diện mạo trên con tàu cổ đắm ở vùng biển Cù Lao Chàm (Hội An, Quảng Nam) được khai quật từ năm 1997 - 1999. Có thể nói, với 240.000 hiện vật được trục vớt, qua nghiên cứu đã xác định đầy đủ nhất diện mạo của gốm men Đại Việt thời đại này nói chung và gốm men trắng vẽ lam nói riêng. Trên con tàu, còn phát hiện được gốm men đa sắc (tam thái, ngũ thái), sản phẩm được sản xuất tại Chu Đậu và Thăng Long được đem đi xuất khẩu. Đặc biệt, men tam thái, ngũ thái của đồ gốm thời Lê sơ tìm thấy trên tàu Cù Lao Chàm có vẽ những đường hoa văn bằng vàng kim, khẳng định một thành tựu riêng có của gốm Đại Việt thế kỷ 15. Trên con tàu, cũng tìm thấy đồ gốm men trắng văn in, có xương mỏng như giấy, thấu quang, đã từng xuất hiện trong Hoàng thành Thăng Long, Khu di tích lịch sử Lam Kinh (Thanh Hóa), có hoa văn rồng 5 móng in nổi, như một chứng tích của đồ dùng Nhà vua thời ấy, nay tìm thấy ở tàu Cù Lào Chàm với số lượng ít, phẩm cấp và chất lượng thấp hơn, được giả thiết như những món quà tặng biếu của Vua Đại Việt đến các vương triều lân bang Đông Nam Á.', 12500, 1, '12.jpg', 'Chiếc', 850000, '2022-06-05 08:59:29', '2022-06-05 08:59:29'),
(72, 'Gốm men lam xám', 'Gốm', 3, 'Bên cạnh gốm men trắng vẽ lam, gốm men lam xám (được sản xuất chủ yếu ở vùng Chu Đậu (Hải Dương) xuất hiện vào thế kỷ 15 với số lượng hiếm hoi các loại hình: ấm, ang, bát, đĩa, chân đèn trang trí khắc chìm hay đắp nổi. Sang thời Mạc (thế kỷ 16), gốm men lam xám xuất hiện chủ yếu với các loại hình chân đèn, lư hương đắp hoặc đúc nổi rồng, mây đao mác, đôi chỗ có điểm men nâu vàng.Điều đặc biệt, vào thời Mạc, nhiều loại hình đồ thờ bằng đồ gốm men trắng vẽ lam, gốm men lam xám và gốm men đa sắc có minh văn ghi niên đại sản xuất, tên người chế tác, người đặt hàng, người đóng góp cung tiến cùng địa chỉ của họ. Từ những dòng minh văn, chúng ta có được nguồn tài liệu đáng tin cậy cho lĩnh vực nghiên cứu kinh tế hàng hóa thủ công nghiệp đương thời, soi sáng nhiều vấn đề lịch sử xã hội khác như niên biểu chính xác của vương triều Mạc; biết đến các nghệ nhân làm gốm, trong đó có những người có nhiều sáng tác gốm như Đặng Huyền Thông (Chu Đậu), Đỗ Xuân Vi, Đỗ Phủ (Bát Tràng)…Đặc biệt, thông qua niên đại chính xác trên đồ gốm, chúng ta có được những thông tin chuẩn xác để xác định niên đại của các đồ gốm cùng loại hình, hoặc ngược lại, có thể xác định được niên đại của đồ gốm thông qua tên tuổi của nghệ nhân làm gốm…', 46000, 1, '13.jpg', 'Bình', 123000, '2022-06-05 09:01:01', '2022-06-05 09:01:01'),
(73, 'Tranh Mona Lisa', 'Tranh cổ', 2, 'Mona Lisa (La Gioconda hay La Joconde, Chân dung Lisa Gherardini, vợ của Francesco del Giocondo) là một bức chân dung thế kỷ 16 được vẽ bằng chất liệu sơn dầu trên một tấm gỗ dương tại Florence bởi Leonardo da Vinci trong thời kì Phục Hưng Italia. Tác phẩm thuộc sở hữu của Chính phủ Pháp và hiện được trưng bày tại bảo tàng Louvre ở Paris, Pháp với tên gọi Chân dung Lisa Gherardini, vợ của Francesco del Giocondo.Bức tranh là một bức chân dung nửa người và thể hiện một phụ nữ có những nét thể hiện trên khuôn mặt thường được miêu tả là bí ẩn. Sự mơ hồ trong nét thể hiện của người mẫu, sự lạ thường của thành phần nửa khuôn mặt, và sự huyền ảo của các kiểu mẫu hình thức và không khí hư ảo là những tính chất mới lạ góp phần vào sức mê hoặc của bức tranh. Có lẽ nó là bức tranh nổi tiếng nhất từng bị đánh cắp và được thu hồi về bảo tàng Louvre. Ít tác phẩm nghệ thuật khác từng là chủ đề của nhiều sự chăm sóc kỹ lưỡng, nghiên cứu, thần thoại hoá và bắt chước tới như vậy. Một sự nghiên cứu và vẽ thử bằng chì than và graphite về Mona Lisa được cho là của Leonardo có trong Bộ sưu tập Hyde, tại Glens Falls, NY.', 650000, 1, 'Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg', 'Bức', 15200000, '2022-06-05 09:08:28', '2022-06-05 09:08:28'),
(74, 'Hoạch thạch \"con non Anh Lương\"', 'Hóa thạch', 1, 'Trứng hóa thạch có chiều dài khoảng 17 cm, và bào thai khủng long ước tính dài 27 cm nếu đo từ đầu đến đuôi. Trong khi đó, khủng long trưởng thành đạt kích thước từ 2 đến 3 m.Các nhà nghiên cứu Trung Quốc, Anh, Canada đã tham gia vào dự án “con non Anh Lương”. Họ kết luận loài khủng long di chuyển và thay đổi tư thế trước khi phá trứng như các loài chim hiện đại.Toàn bộ các loài chim đều tiến hóa trực tiếp từ nhóm khủng long đứng trên hai chi tên theropod, trong đó bao gồm các thành viên khủng long bạo chúa (Tyrannosaurus rex).', 650000, 1, 'fossil-4749.jpg', 'Con', 900000, '2022-06-05 09:10:53', '2022-06-05 09:10:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(10) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_slide`, `link`, `image`) VALUES
(1, '', 'image-14.jpg'),
(2, '', 'image-33.jpg'),
(3, '', 'image-13.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `users_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `users_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'admin@gmail.com', 'admin123', '2022-06-10 09:00:54', '2019-05-08 23:50:25'),
(7, 'LinhDoan', 'doanlinh101998@gmail.com', '1', '2022-06-10 17:41:59', '2019-04-22 01:52:34'),
(8, 'DoanVanVui', 'vvv@gmail.com', '1', '2022-06-10 18:00:02', '2019-05-04 22:23:48'),
(10, 'Hieu', 'hieu@gmail.com', 'hieu', '2022-06-10 17:59:39', '2019-04-14 22:16:56');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenloai` (`tenloai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_new`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phan_hoi`
--
ALTER TABLE `phan_hoi`
  ADD PRIMARY KEY (`id_phan_hoi`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name` (`users_name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_new` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phan_hoi`
--
ALTER TABLE `phan_hoi`
  MODIFY `id_phan_hoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
