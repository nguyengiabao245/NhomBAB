-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 03:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(1, 'Nguyễn Gia Bao', '123 thu duc', 'baolk1230lk@gmail.com', '123456', '0327037017', 1, 2, NULL, '2023-03-26 00:51:26', '2023-03-26 00:51:26'),
(2, 'GiaBao', '123 dien bien phu', 'baolk1230lk@gmail.com', '123456789', '0327037017', 1, 2, NULL, '2023-03-29 12:38:33', '2023-03-31 12:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `slug_en` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `name_en`, `slug`, `slug_en`, `images`, `banner`, `home`, `status`, `level`, `created_at`, `updated_at`) VALUES
(40, 'Giới thiệu', NULL, 'gioi-thieu', NULL, NULL, '', 1, 1, 0, '2021-09-12 14:07:41', '2021-10-30 01:26:54'),
(41, 'Tin tức', NULL, 'tin-tuc', NULL, NULL, '', 1, 1, 0, '2021-09-12 14:48:22', '2021-10-30 01:27:03'),
(49, 'Báo mới', NULL, 'bao-moi', NULL, NULL, '', 1, 1, 0, '2022-04-05 14:31:42', '2022-04-05 15:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `thundar` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `thundar`, `category_id`, `content`, `create_at`, `update_at`) VALUES
(1, 'Kinh nghiệm Marketing Online 1: Tối ưu trải nghiệm trên website', 'kinh-nghi-m-marketing-online-1-t-i-uu-tr-i-nghi-m-tren-website', 'https://nhanhoa.com/uploads/news/1636705039_marketing-la-lam-gi.jpg', 41, '<h2><span id=\"Kinh_nghiem_Marketing_Online_1_Toi_uu_trai_nghiem_tren_website\"><strong>Kinh nghiệm Marketing Online 1: Tối ưu trải nghiệm trên website</strong></span></h2>\r\n<p>Trước hết, nếu bạn cố gắng kéo thật nhiều khách hàng vào website nhưng trải nghiệm trên đó lại kém sẽ gây ra những tổn thất nặng nề cho bạn.</p>\r\n<p>Bạn bỏ nhiều ngân sách quảng cáo đặt link về website và sau khi họ vào, họ lại thoát ra mà không hề có một hành động liên hệ mua hàng. Có phải bạn đang lãng phí hay không?</p>\r\n<figure id=\"attachment_11134\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-11134\"><img class=\"wp-image-11134\" src=\"https://gobranding.com.vn/wp-content/uploads/2018/11/chia-se-kinh-nghiem-marketing-online-lay-website-lam-trung-tam-toi-uu-trai-nghiem-nguoi-dung.jpg\" alt=\"\" width=\"600\" height=\"398\" loading=\"lazy\" />\r\n<figcaption id=\"caption-attachment-11134\" class=\"wp-caption-text\">Tối ưu trải nghiệm trên website là hạng mục cực kỳ quan trọng.</figcaption>\r\n</figure>\r\n<p>Trải nghiệm người dùng trên website rất quan trọng. Tốc độ tải trang là một ví dụ điển hình!</p>\r\n<p>Theo một khảo sát của Akamai và Gomez.com, nếu tốc độ tải trang vượt quá 3 giây sẽ có tới 79% bỏ đi. Trong số bỏ đi này, có 80% cho biết họ sẽ không quay lại website đó nữa. Hơn thế nữa, có 44% sẽ chia sẻ “trải nghiệm khó chịu khi mua sắm” cho bạn bè và người thân.</p>\r\n<p>Dưới đây là một số yếu tố cơ bản bạn cần chú ý trong quá trình thiết kế trải nghiệm người dùng trên website:</p>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>\r\n<ul>\r\n<li>Giao diện website: đơn giản, rõ ràng, không quá rườm rà và nhiều chi tiết.</li>\r\n<li>Thân thiện với thiết bị di động: tối ưu trải nghiệm trên mobile.</li>\r\n<li>Chất lượng hình ảnh: rõ nét, có liên quan đến nội dung.</li>\r\n<li>Tốc độ load trang: nên ít hơn 2 giây.</li>\r\n<li>Tiến trình thanh toán online: nhanh chóng và liên kết với các cổng thanh toán phổ biến.</li>\r\n<li>Vị trí đặt các thông thông tin liên lạc: dễ dàng tìm thấy thông tin liên lạc ngay khi khách hàng cần.</li>\r\n<li>Cách điều hướng luồng nội dung: giúp khách hàng dễ tìm kiếm thông tin và lưu lại trên website lâu hơn.</li>\r\n<li>Sự đồng bộ trong thiết kế: font chữ, size chữ, màu sắc,…</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>', '2023-04-01 14:36:40', '2023-04-01 14:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `update_at`) VALUES
(48, 'Nguyen Thanh An', 'ann20061005@gmail.com', '', 'Thu Duc', '123123', NULL, 1, '2021-11-21 04:58:28', '2021-11-21 04:58:28'),
(49, 'Cong Bang', 'congbang1902lh@gmail.com', '', '123 Gò Vấp', '12341234', '', 1, '2021-11-22 14:31:56', '2021-11-22 14:31:56'),
(50, 'Ng GiaBao', 'baolk1230lk@gmail.com', '0778960401', '80/18 Thủ duc', 'bao123123', '', 1, '2021-11-22 14:32:19', '2021-11-22 14:32:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
