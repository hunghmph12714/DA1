-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 11:11 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_tour` int(11) NOT NULL,
  `id_voucher` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `phone_cart` varchar(255) NOT NULL,
  `name_person` varchar(255) NOT NULL,
  `email_cart` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `adult_amount` int(11) NOT NULL,
  `child_amount` int(11) DEFAULT NULL,
  `sumPrice` int(11) NOT NULL,
  `departure_day` date NOT NULL,
  `cart_status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_tour`, `id_voucher`, `username`, `phone_cart`, `name_person`, `email_cart`, `note`, `adult_amount`, `child_amount`, `sumPrice`, `departure_day`, `cart_status`, `create_at`) VALUES
(76, 77, 28, 'quangtaph12673', '0968686686', 'Mr Rin', 'songoku2192@gmail.com', '', 11, 2, 3720000, '2021-04-23', 1, '2021-04-21 07:13:03'),
(77, 66, 28, 'quangtaph12673', '0968686686', 'Mr Rin', 'songoku2192@gmail.com', '', 12, 1, 7543800, '2021-04-23', 2, '2021-04-21 07:13:06'),
(78, 65, 28, 'My', '0968686686', 'MY', 'songoku2192@gmail.com', '', 12, 11, 13199000, '2021-04-23', 3, '2021-04-21 07:13:12'),
(79, 65, 21, 'My', '0968686686', 'MY', 'songoku2192@gmail.com', '', 8, 3, 6293310, '2021-04-22', 0, '2021-04-21 07:01:23'),
(81, 65, 21, 'name', '0968686686', 'name', 'songoku2192@gmail.com', '', 12, 1, 7913370, '2021-04-23', 0, '2021-04-21 14:43:35'),
(82, 77, 21, 'quangtaph12673', '0968686686', 'Mr Rin', 'songoku2192@gmail.com', '', 12, 0, 3348000, '2021-04-22', 0, '2021-04-21 16:43:40'),
(83, 65, 27, 'quangtaph12673', '0968686686', 'Mr Rin', 'songoku2192@gmail.com', '', 122, 0, 67026800, '2021-04-25', 0, '2021-04-21 16:47:32'),
(84, 65, 20, 'quangtaph12673', '0968686686', 'Mr Rin', 'songoku2192@gmail.com', '', 11, 0, 7001500, '2021-04-24', 0, '2021-04-21 16:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(255) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`, `id_parent`, `create_at`) VALUES
(25, 'Nội Thành', 0, '2021-04-01 11:17:44'),
(26, 'Ngoại Thành', 0, '2021-04-01 11:17:44'),
(32, ' Ba Đình', 25, '2021-04-04 03:15:43'),
(33, 'Hoàn Kiếm', 25, '2021-04-04 03:15:55'),
(34, 'Đống Đa', 25, '2021-04-04 03:16:03'),
(35, 'Thanh Xuân', 25, '2021-04-04 03:16:06'),
(36, 'Cầu Giấy', 25, '2021-04-04 03:16:08'),
(37, 'Hoàng Mai', 25, '2021-04-04 03:16:11'),
(38, 'Hai Bà Trưng', 25, '2021-04-04 03:16:13'),
(39, 'Tây Hồ', 25, '2021-04-04 03:16:15'),
(40, 'Long Biên', 26, '2021-04-04 03:16:17'),
(41, 'Từ Liêm', 26, '2021-04-04 03:16:19'),
(42, 'Hà Đông', 26, '2021-04-04 03:16:21'),
(43, 'Thanh Trì', 26, '2021-04-04 03:16:24'),
(44, 'Gia Lâm', 26, '2021-04-04 03:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_tour` int(11) NOT NULL,
  `evaluate` int(11) DEFAULT NULL,
  `content_comment` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `username`, `id_tour`, `evaluate`, `content_comment`, `create_at`) VALUES
(85, 'quangtaph12673', 76, 5, 'ttt', '2021-04-21 08:50:34'),
(86, 'quangtaph12673', 78, 5, 'tuyệt vời cmnl', '2021-04-21 08:58:18'),
(87, 'quangtaph12673', 65, 3, 'jjj', '2021-04-21 08:59:53'),
(88, 'quangtaph12673', 65, 0, 'jjj', '2021-04-21 08:59:57'),
(89, 'My', 65, 5, 'r', '2021-04-21 09:00:58'),
(90, 'My', 65, 0, 'r', '2021-04-21 09:01:01'),
(91, 'My', 65, 0, 'sasa', '2021-04-21 11:10:32'),
(92, 'My', 65, 0, 'sasa', '2021-04-21 11:18:39'),
(93, 'My', 65, 0, 'sasa', '2021-04-21 11:18:47'),
(94, 'My', 65, 0, 'sasa', '2021-04-21 11:25:31'),
(95, 'name', 65, 5, 'assa', '2021-04-21 14:39:35'),
(96, 'name', 65, 0, 'assa', '2021-04-21 14:39:49'),
(97, 'name', 65, 0, 'assa', '2021-04-21 14:41:12'),
(98, 'name', 65, 0, 'assa', '2021-04-21 14:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_content` text NOT NULL,
  `contact_status` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `contact_name`, `contact_email`, `contact_phone`, `contact_address`, `contact_content`, `contact_status`, `create_at`) VALUES
(34, 'sinbad', 'songoku2192@gmail.com', '0968686686', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', 'sadasda', 1, '2021-04-20 03:16:24'),
(35, 'sinbad', 'quangtaph12673@fpt.edu.vn', '0968686686', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', 'w', 1, '2021-04-20 04:24:28'),
(36, 'sinbad', 'quangtaph12673@fpt.edu.vn', '0968686686', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', 'w', 1, '2021-04-20 03:40:54'),
(38, '1', 'taquang.hskx.2000@gmail.com', '0968686686', '1', '1', 0, '2021-04-21 17:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `image_main` varchar(255) NOT NULL,
  `image_detail` varchar(255) NOT NULL,
  `image_plan1` varchar(255) DEFAULT NULL,
  `image_plan2` varchar(255) DEFAULT NULL,
  `image_plan3` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `image_main`, `image_detail`, `image_plan1`, `image_plan2`, `image_plan3`, `create_at`) VALUES
(5, 'den-quan-thanh.jpg', 'pho-co.jpg', 'Lang.jpg', 'Hoang-thanh-Thang-Long-0_1603178754.jpg', 'van-mieu.jpg', '2021-04-01 14:52:53'),
(6, 'HoGuom01.jpg', 'tran_quoc_1__the_duong_1-12_50_21_499.jpg', 'van-mieu.jpg', 'pho-co.jpg', 'Lang.jpg', '2021-04-01 14:54:00'),
(7, 'HoGuom01.jpg', 'tran_quoc_1__the_duong_1-12_50_21_499.jpg', 'Lang.jpg', 'van-mieu.jpg', 'pho-co.jpg', '2021-04-01 14:54:29'),
(8, 'Nha-tu-hoa-lo (2).jpg', 'HoGuom01.jpg', 'pho-co.jpg', 'van-mieu.jpg', 'HoGuom01.jpg', '2021-04-01 14:54:58'),
(9, 'lang-gom.jpg', 'den-quan-thanh.jpg', 'HoGuom01.jpg', 'Lang.jpg', 'van-mieu.jpg', '2021-04-01 14:55:17'),
(10, 'tran_quoc_1__the_duong_1-12_50_21_499.jpg', 'Lang.jpg', 'lang-gom.jpg', 'van-mieu.jpg', 'HoGuom01.jpg', '2021-04-01 14:55:52'),
(28, 'lang-gom.jpg', 'nha-hat.jpg', 'van-mieu.jpg', 'tran-quoc.jpg', 'lang-bac.jpg', '2021-04-05 12:45:48'),
(29, '—Pngtree—cartoon baby panda_4830499.png', 'Screen Shot 2021-03-06 at 22.20.25.png', 'Screen Shot 2021-03-19 at 10.34.52.png', 'Screen Shot 2021-03-06 at 22.20.25.png', 'travel.png', '2021-04-05 16:09:00'),
(30, '—Pngtree—cute little panda with butterflies_5053031.png', '—Pngtree—cute little panda with butterflies_5053031.png', '—Pngtree—cute little panda with butterflies_5053031.png', '—Pngtree—cute little panda with butterflies_5053031.png', '—Pngtree—cute little panda with butterflies_5053031.png', '2021-04-05 16:09:59'),
(31, 'sencute.jpg', 'sencute.jpg', 'sencute.jpg', 'sencute.jpg', 'sencute.jpg', '2021-04-05 16:20:49'),
(32, 'hoabingan.jpg', 'hoabingan.jpg', 'hoabingan.jpg', 'hoabingan.jpg', 'hoabingan.jpg', '2021-04-05 16:21:38'),
(33, '761f2f77b274c3ebe28ceae7ff6fe7ff.jpg', '761f2f77b274c3ebe28ceae7ff6fe7ff.jpg', '761f2f77b274c3ebe28ceae7ff6fe7ff.jpg', '761f2f77b274c3ebe28ceae7ff6fe7ff.jpg', '—Pngtree—cartoon baby panda_4830499.png', '2021-04-09 02:18:35'),
(34, 'tour1_main.jpg', 'tour1_1.jpg', 'tour1_2.jpg', 'tour1_3.jpg', 'tour1_4.jpg', '2021-04-20 12:16:33'),
(35, 'tour3_main.jpg', 'tour3_1.jpg', 'tour3_2.jpg', 'tour3_3.jpg', 'tour3_4.jpg', '2021-04-20 12:21:55'),
(36, 'tour4_main.jpg', 'tour4_1.jpg', 'tour4_2.jpg', 'tour4_3.JPG', 'tour4_4.jpg', '2021-04-20 12:25:19'),
(37, 'tour5_main.jpg', 'tour5_1.jpg', 'tour5_2.jpg', 'tour5_3.jpg', 'tour5_4.jpg', '2021-04-20 12:27:53'),
(38, 'tour6_main.jpg', 'tour6_1.jpg', 'tour6_2.jpg', 'tour6_3.jpg', 'tour6_4.jpg', '2021-04-20 12:30:22'),
(39, 'tour7_main.jpg', 'tour7_1.jpg', 'tour7_2.jpg', 'tour7_3.jpg', 'tour7_4.jpg', '2021-04-20 12:32:24'),
(40, 'tour8_main.jpg', 'tour8_1.jpg', 'tour8_2.jpg', 'tour8_3.jpg', 'tour8_4.jpg', '2021-04-20 12:34:46'),
(41, 'tour8_main.jpg', 'tour8_1.jpg', 'tour8_2.jpg', 'tour8_3.jpg', 'tour8_4.jpg', '2021-04-20 12:37:15'),
(42, 'tour9_main.jpg', 'tour9_1.jpg', 'tour9_2.jpg', 'tour9_3.jpg', 'tour9_4.jpg', '2021-04-20 12:39:10'),
(43, 'tour11_main.jpg', 'tour11_1.jpg', 'tour11_2.jpg', 'tour11_3.jpg', 'tour11_4.jpg', '2021-04-20 12:41:14'),
(44, 'tour12_main.jpg', 'tour12_1.jpg', 'tour12_2.jpg', 'tour12_3.jpg', 'tour12_4.jpg', '2021-04-20 12:43:25'),
(45, 'Lang.jpg', 'bao-tang-dan-toc-hoc-viet-nam-nemtv-1.jpg', 'diem-du-lich-ha-noi-11.jpg', 'hoan-kiem.jpg', 'lang-gom.jpg', '2021-04-21 01:53:03'),
(46, 'den-quan-thanh.jpg', 'bao-tang-dan-toc-hoc-viet-nam-nemtv-1.jpg', 'diem-du-lich-ha-noi-11.jpg', 'Hoang-thanh-Thang-Long-0_1603178754.jpg', 'tour7_1.jpg', '2021-04-21 01:55:34'),
(47, 'tour1_main.jpg', 'tour1_1.jpg', 'tour1_2.jpg', 'tour1_3.jpg', 'tour1_4.jpg', '2021-04-21 01:57:45'),
(48, 'tour3_main.jpg', 'tour3_1.jpg', 'tour3_2.jpg', 'tour3_3.jpg', 'tour3_4.jpg', '2021-04-21 02:04:20'),
(49, 'tour3_4.jpg', 'tour3_2.jpg', 'tour3_main.jpg', 'tour3_1.jpg', 'tour3_3.jpg', '2021-04-21 02:06:12'),
(50, 'tour4_main.jpg', 'tour4_1.jpg', 'tour4_2.jpg', 'tour4_3.JPG', 'tour4_4.jpg', '2021-04-21 02:08:14'),
(51, 'tour5_main.jpg', 'tour5_1.jpg', 'tour5_2.jpg', 'tour5_3.jpg', 'tour5_4.jpg', '2021-04-21 02:09:59'),
(52, 'tour6_main.jpg', 'tour6_1.jpg', 'tour6_2.jpg', 'tour6_3.jpg', 'tour6_4.jpg', '2021-04-21 02:12:10'),
(53, 'tour7_main.jpg', 'tour7_1.jpg', 'tour7_2.jpg', 'tour7_3.jpg', 'tour7_4.jpg', '2021-04-21 02:14:05'),
(54, 'tour8_main.jpg', 'tour8_1.jpg', 'tour8_2.jpg', 'tour8_3.jpg', 'tour8_4.jpg', '2021-04-21 02:15:57'),
(55, 'tour9_main.jpg', 'tour9_1.jpg', 'tour9_2.jpg', 'tour9_3.jpg', 'tour9_4.jpg', '2021-04-21 02:17:52'),
(56, 'tour10_main.jpg', 'tour10_1.jpg', 'tour10_2.jpg', 'tour10_3.jpg', 'tour11_3.jpg', '2021-04-21 02:20:04'),
(57, 'tour11_main.jpg', 'tour11_1.jpg', 'tour11_2.jpg', 'tour11_3.jpg', 'tour11_4.jpg', '2021-04-21 02:22:05'),
(58, 'tour12_main.jpg', 'tour12_1.jpg', 'tour12_2.jpg', 'tour12_3.jpg', 'tour12_4.jpg', '2021-04-21 02:24:09'),
(59, 'tour18_main.jpg', 'tour18_1.jpg', 'tour18_3.jpg', 'tour18_2.jpg', 'tour18_4.jpg', '2021-04-21 10:42:06'),
(60, 'tour17_main.jpg', 'tour17_1.jpg', 'tour17_3.jpg', 'tour17_2.jpg', 'tour17_4.jpg', '2021-04-21 10:44:06'),
(61, 'tour16_main.jpg', 'tour16_1.jpg', 'tour16_2.jpg', 'tour16_3.jpg', 'tour16_4.jpg', '2021-04-21 10:46:19'),
(62, 'tour15_main.jpg', 'tour15_1.jpg', 'tour15_2.jpg', 'tour15_3.jpg', 'tour15_4.jpg', '2021-04-21 10:48:14'),
(63, 'tour13_mai.jpg', 'tour13_1.jpg', 'tour13_3.jpg', 'tour13_2.jpg', 'tour13_4.jpg', '2021-04-21 10:52:43'),
(64, 'tour11_main.jpg', 'tour11_1.jpg', 'tour11_3.jpg', 'tour11_2.jpg', 'tour11_4.jpg', '2021-04-21 10:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id_information` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `information_phone` varchar(15) NOT NULL,
  `information_email` varchar(255) NOT NULL,
  `information_address` varchar(255) NOT NULL,
  `information_slogan` varchar(255) DEFAULT NULL,
  `link_map` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id_information`, `logo`, `information_phone`, `information_email`, `information_address`, `information_slogan`, `link_map`, `create_at`) VALUES
(6, 'logo-white.png', '1908 3883', 'hanoitourist@gmail.com', 'Tòa nhà FPT Polytechnic, Phố Trịnh Văn Bô, Nam Từ Liêm, Hà Nội', 'slogan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.863981046054!2d105.74459304995665!3d21.03812778592449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b991d80fd5%3A0x53cefc99d6b0bf6f!2sFPT%20Polytechnic%20Hanoi!5e0!3m2!1sfr!2s!4v1619239092033!5m2!1sfr!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2021-04-24 04:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `postnews`
--

CREATE TABLE `postnews` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_image2` varchar(255) NOT NULL,
  `content_short` text NOT NULL,
  `content` text NOT NULL,
  `content2` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postnews`
--

INSERT INTO `postnews` (`id_post`, `title`, `post_image`, `post_image2`, `content_short`, `content`, `content2`, `author`, `create_at`) VALUES
(10, 'Khoảng 60.000 lượt du khách tham dự Lễ hội Du lịch và văn hóa ẩm thực Hà Nội', 'am thuc (1).jfif', 'am thuc (2).jfif', '(HNMO) - Trung tâm Xúc tiến đầu tư, thương mại, du lịch Hà Nội cho biết, Lễ hội Du lịch và văn hóa ẩm thực Hà Nội năm 2021 thu hút khoảng 60.000 lượt người sau 3 ngày diễn ra. Mặc dù thời tiết cuối tuần không thuận lợi, mưa to vào thứ bảy, nhưng tối thứ sáu và cả ngày chủ nhật, rất đông người dân và du khách đến lễ hội trải nghiệm và đặt mua các sản phẩm du lịch.', 'Trưởng phòng Xúc tiến du lịch (Trung tâm Xúc tiến đầu tư, thương mại, du lịch thành phố Hà Nội) Nguyễn Hữu Việt cho biết, mặc dù vào thứ bảy trời mưa to, nhưng ngày thứ sáu và chủ nhật trời tạnh ráo, nên lượng khách đến với Lễ hội Du lịch và văn hóa ẩm thực Hà Nội năm 2021 vẫn khá đông.\r\nĐặc biệt, ngày chủ nhật, du khách đến tìm hiểu, mua tour và trải nghiệm các trò chơi tại lễ hội rất đông. Ước tính đến 21h ngày 18-4, lễ hội đã thu hút khoảng 60.000 lượt du khách.\r\n\r\n', '\"Tất cả quầy trưng bày và gian hàng của các đơn vị lữ hành, các gian trưng bày\r\nsản vật địa phương của 12 tỉnh, thành phố đều kín người đến tìm hiểu tour và\r\ntrải nghiệm. Năm nay, các đơn vị \"tung\" ra nhiều sản phẩm du lịch giá rẻ, chất\r\nlượng nên thu hút nhiều du khách, điều này cũng phản ánh nhu cầu du lịch của\r\nngười dân rất lớn\", ông Nguyễn Hữu Việt nói. Tham gia lễ hội vào chiều chủ nhật,\r\nanh Nguyễn Văn Định (quận Nam Từ Liêm, Hà Nội) cho hay, anh đang quan tâm đến\r\ntour du lịch cho kỳ nghỉ lễ 30-4 và 1-5, nên đã cùng gia đình đến lễ hội để tìm\r\nhiểu. \"Chúng tôi rất phấn khởi khi tìm thấy tour mà mình ưng ý. Tại lễ hội, có\r\nrất nhiều sản phẩm du lịch hấp dẫn và giá rẻ bất ngờ, nhất là những tour trải\r\nnghiệm các điểm đến du lịch của Hà Nội chỉ vài trăm nghìn đồng. Gia đình tôi đã\r\nmua thêm tour trải nghiệm Đường Lâm vào tuần tới\", anh Nguyễn Văn Định chia sẻ.\r\n<div>\r\n  <figure class=\"image\">\r\n    <div>\r\n      <div class=\"thumbox\">\r\n        <img class=\"mx-auto pt-5 object-fill\"\r\n          src=\"https://hanoimoi.com.vn/Uploads/images/tuandiep/2021/04/18/am%20thuc%20(3).JPG \" style=\"width: 650px; height: 400px;\"\r\n        />\r\n      </div>\r\n    </div>\r\n    <figcaption>Khu vực ẩm thực thu hút du khách. </figcaption>\r\n  </figure>\r\n</div>\r\nTheo Trung tâm Xúc tiến đầu tư, thương mại, du lịch Hà Nội, sau gần 3 ngày diễn\r\nra, rất nhiều đơn vị đã bán được số lượng lớn tour, vé du lịch kích cầu. Cụ thể,\r\nCâu lạc bộ du lịch bền vững VGreen (Hội Lữ hành Hà Nội) bán được nhiều sản phẩm\r\ncaravan đi Tây Bắc, tour đêm tại Đền Hùng. Các đơn vị lữ hành thuộc Câu lạc bộ\r\nlữ hành UNESCO bán được hàng trăm tour, trong đó có nhiều sản phẩm mới, như các\r\ntour trải nghiệm Hà Nội; các tour charter (trọn gói) tàu hỏa đi Quảng Bình khởi\r\nhành vào ngày 29-4 tới cũng đã được bán hết.\r\n<div>\r\n  <figure class=\"image\">\r\n    <div>\r\n      <div class=\"thumbox\">\r\n        <img class=\"mx-auto pt-5 object-fill\"\r\n          src=\"https://hanoimoi.com.vn/Uploads/images/tuandiep/2021/04/18/am%20thuc%20(4).JPG\" style=\"width: 650px; height: 400px;\"\r\n        />\r\n      </div>\r\n    </div>\r\n    <figcaption>\r\n      Góc sắp đặt của di tích Nhà tù Hỏa Lò được nhiều du khách check-in.\r\n    </figcaption>\r\n  </figure>\r\n</div>\r\nCòn theo Giám đốc Công ty Lữ hành Hanoitourist Phùng Quang Thắng, đơn vị đã đón\r\nkhoảng 7.000 lượt du khách ghé thăm và đã bán được các sản phẩm du lịch cho\r\nkhoảng 500 khách hàng. Ngoài ra, một số sản phẩm mới của Hanoitourist được nhiều\r\ndu khách quan tâm, như tour đêm \"Giải mã Hoàng thành Thăng Long\", tour khám phá\r\nkiến trúc Đông Dương có giá 30.000 đồng/người. Trong khi đó, Giám đốc Công ty Du\r\nlịch VietSense Nguyễn Văn Tài cho biết, đơn vị bán được gần 300 vé kích cầu và\r\ncó nhiều tour khởi hành vào dịp nghỉ lễ 30-4, 1-5, nhiều nhất là các tour đi Côn\r\nĐảo (tỉnh Bà Rịa - Vũng Tàu), Nha Trang (tỉnh Khánh Hòa), Đà Nẵng...\r\n<div>\r\n  <figure class=\"image\">\r\n    <div>\r\n      <div class=\"thumbox\">\r\n        <img class=\"mx-auto pt-5 object-fill\"\r\n          src=\"https://hanoimoi.com.vn/Uploads/images/tuandiep/2021/04/18/am%20thuc%20(5).JPG\" style=\"width: 650px; height: 400px;\"\r\n        />\r\n      </div>\r\n    </div>\r\n    <figcaption>\r\n      Rất đông du khách tham gia trải nghiệm tại Lễ hội Du lịch và văn hóa ẩm\r\n      thực Hà Nội năm 2021 (ảnh ghi nhận vào ngày 18-4).\r\n    </figcaption>\r\n  </figure>\r\n</div>\r\nĐặc biệt, khu vực giới thiệu ẩm thực Hà Nội cũng thu hút đông đảo người dân và\r\ndu khách trải nghiệm, trong đó đông nhất là gian phở Hà Nội, bún thang, bánh\r\nkhúc, bánh cuốn Thanh Trì...\r\n', 'HOÀNG LÂN - ẢNH: HỮU VIỆT', '2021-04-20 04:38:53'),
(12, 'Khai mạc Lễ hội du lịch Ba Vì', 'chungocanh.jpg', 'ba-vi.jpg', '(HNMO) - Sáng 18-4, UBND huyện Ba Vì đã tổ chức khai mạc Lễ hội du lịch Ba Vì \"Khám phá và trải nghiệm mới\". Đây là sự kiện nằm trong khuôn khổ Lễ hội du lịch và văn hóa ẩm thực Hà Nội năm 2021. Đến dự có Ủy viên Trung ương Đảng, Phó Bí thư Thành ủy, Chủ tịch UBND thành phố Hà Nội Chu Ngọc Anh; Phó Chủ tịch UBND thành phố Nguyễn Mạnh Quyền cùng đại diện các sở, ban, ngành thành phố Hà Nội.', '<div>\r\n    Phát biểu tại buổi lễ, Chủ tịch UBND thành phố Hà Nội Chu Ngọc Anh đã ghi nhận những kết quả đạt được của Đảng bộ, chính quyền và nhân dân huyện Ba Vì, đặc biệt là sự đồng hành, chung tay của các đơn vị du lịch trên địa bàn trong nhiều năm qua. Đồng chí Chu Ngọc Anh đánh giá, dù còn nhiều khó khăn về cơ sở hạ tầng, ảnh hưởng nặng nề của dịch Covid-19, nhưng huyện Ba Vì đã có nhiều giải pháp để duy trì hoạt động du lịch, thực hiện \"mục tiêu kép\", vừa phòng, chống dịch, vừa phát triển kinh tế - xã hội, cố gắng thu hút 2,5 triệu lượt khách trong năm nay.\r\n</div><br>\r\n<div>\r\n    \"Một điều rất đáng biểu dương, đó là huyện Ba Vì đã mạnh dạn xây dựng và tổ chức các sản phẩm du lịch mới, khai thác tiềm năng về tự nhiên, khai thác tiềm năng về bản sắc văn hóa để tạo ra các sản phẩm đặc trưng, mang đến cho du khách nhiều trải nghiệm mới và thú vị\", đồng chí Chu Ngọc Anh nhận xét.\r\n</div><br>\r\n<div>\r\n    Theo Chủ tịch UBND thành phố Hà Nội, thành phố đang tổ chức Lễ hội Du lịch và văn hóa ẩm thực Hà Nội năm 2021, với chủ đề \"Người Hà Nội đi du lịch Hà Nội\", sự kiện khai trương du lịch Ba Vì năm 2021, có chủ đề: \"Ba Vì khám phá và trải nghiệm mới\" sẽ là điểm nhấn ấn tượng cho du khách. \"Chúng ta hy vọng, với khí thế mới, du lịch Thủ đô và du lịch Ba Vì sẽ nhận được nhiều sự phối hợp, chia sẻ của các tỉnh, thành phố bạn. Thành phố trân trọng sự phối hợp trong thời gian vừa qua và mong muốn tăng cường hơn nữa việc giao lưu, trao đổi hàng hóa, sản phẩm và lưu chuyển lữ hành giữa Ba Vì, Hà Nội với các tỉnh, thành phố bạn\", Chủ tịch UBND thành phố Chu Ngọc Anh nói.\r\n</div>\r\n', '<div>\r\n    Lễ hội du lịch Ba Vì diễn ra từ ngày 18-4, kéo dài đến tháng 8 với nhiều hoạt động phong phú, đa dạng. Du khách sẽ được tham gia nhiều hoạt động phong phú, như: Tham quan Bản Cốc (xã Minh Quang) với trải nghiệm chợ phiên Mường - Dao, trong đó có hoạt động giới thiệu ẩm thực của đồng bào dân tộc, trưng bày nhà sàn dân tộc Mường, biểu diễn cồng chiêng; tham quan Khu du lịch Khoang Xanh với sản phẩm \"Động băng tuyết\". Ban tổ chức cũng công bố nhiều sản phẩm du lịch mới: Lễ hội hoa lan Ba Vì diễn ra từ tháng 5 đến tháng 8; trình diễn sản phẩm du lịch tại Khu du lịch Ao Vua, Khoang Xanh, Tản Đà Resort; giới thiệu các sản phẩm du lịch văn hóa, du lịch nông nghiệp...\r\n</div><br>\r\n<div>\r\n    Lễ hội là hoạt động khởi đầu cho Chiến lược phát triển du lịch huyện Ba Vì trong năm 2021, nhằm hưởng ứng chương trình kích cầu du lịch nội địa do Bộ Văn hóa, Thể thao và Du lịch phát động cũng như chương trình \"Người Hà Nội đi du lịch Hà Nội\" của thành phố.\r\n</div><br>\r\n<div>\r\n    Sau lễ hội này, UBND huyện Ba Vì sẽ thực hiện kết nối với các đơn vị lữ hành, lưu trú tiếp tục xây dựng những sản phẩm du lịch mới cho Hà Nội, đồng thời tạo sự kết nối giữa các đơn vị để tăng lượng du khách trải nghiệm tại Ba Vì, hướng tới xây dựng Ba Vì trở thành một trong những vùng du lịch trọng điểm của Thủ đô.\r\n</div>\r\n', 'HOÀNG LÂN', '2021-04-20 04:41:51'),
(14, 'Lễ đón nhận Quyết định điểm du lịch xã Hạ Mỗ và Khu sinh thái Đan Phượng', 'DL-danphuong.jpg', 'DL-danphuong1.jpg', '(HNMO) - Tối 17-4, Huyện ủy, HĐND, UBND huyện Đan Phượng tổ chức Lễ đón nhận Quyết định và công bố điểm du lịch xã Hạ Mỗ, điểm du lịch Khu sinh thái Đan Phượng. Sự kiện nhằm nâng cao nhận thức, trách nhiệm của cán bộ, đảng viên và nhân dân trong công tác bảo tồn và phát huy giá trị di sản văn hóa gắn với phát triển du lịch, từng bước xây dựng xã Hạ Mỗ, Khu sinh thái Đan Phượng là điểm du lịch hấp dẫn của Thủ đô.', '<div>\r\n    Tới dự có Phó Tổng cục trưởng Tổng cục Du lịch (Bộ Văn hóa, Thể thao và Du\r\n    lịch) Hà Văn Siêu; Ủy viên Ban Thường vụ Thành ủy, Trưởng ban Dân vận Thành ủy\r\n    Nguyễn Doãn Toản.\r\n</div><br>\r\n<div>\r\n    Phát biểu tại buổi lễ, Phó Tổng cục trưởng Tổng cục Du lịch Hà Văn Siêu cho\r\n    rằng, việc công nhận điểm du lịch cấp thành phố tại xã Hạ Mỗ và điểm du lịch\r\n    Khu sinh thái Đan Phượng đã khẳng định bước tiến dài của huyện Đan Phượng\r\n    trong công cuộc hiện đại hóa hoạt động du lịch.\r\n</div><br>\r\n<div>\r\n    \"Đan Phượng đang chứng minh là điểm sáng du lịch của Hà Nội với lợi thế phong\r\n    cảnh hữu tình, người dân thân thiện. Tổng cục Du lịch đánh giá cao sự nỗ lực\r\n    của chính quyền và nhân dân huyện Đan Phượng trong việc xây dựng điểm đến hấp\r\n    dẫn, góp phần vào việc phát triển du lịch của Thủ đô\", ông Hà Văn Siêu nói.\r\n</div><br>\r\n<div>\r\n    Chủ tịch UBND huyện Đan Phượng Nguyễn Hữu Hoàng cho biết, huyện đã có đề án\r\n    phát triển du lịch với nhiều loại hình du lịch, như: Du lịch sinh thái, du\r\n    lịch cộng đồng, du lịch gắn với phát triển nông thôn.\r\n</div>\r\n', '<div>\r\n    Đan Phượng là huyện ngoại thành ở phía Tây của Thủ đô Hà Nội, được biết đến là\r\n    một vùng đất \"địa linh nhân kiệt\", giàu truyền thống lịch sử và văn hóa, có\r\n    nhiều loại hình văn hóa dân gian độc đáo như chèo Tàu, ca trù, thả diều, góp\r\n    phần làm phong phú nền văn hóa Thăng Long - Hà Nội. Trong đó, xã Hạ Mỗ là một\r\n    vùng đất cổ nghìn năm văn hiến, được nhiều người biết đến với nhiều di tích\r\n    quốc gia, như: Thành cổ Ô Diên, một thời là kinh đô của nhà nước Vạn Xuân ở\r\n    thế kỷ thứ VI dưới triều Hậu Nam Đế Lý Phật Tử và cũng là vùng đất sinh ra Tô\r\n    Hiến Thành - vị quan Thái úy nổi tiếng dưới 3 triều vua Lý. Nơi đây còn có\r\n    chùa Hải Giác với kiến trúc kiểu trăm gian và hệ thống tượng phật thời Lê;\r\n    đình Vạn Xuân có kiến trúc độc đáo...\r\n</div><br>\r\n<div>\r\n    Cùng với việc phát huy các giá trị di sản, huyện Đan Phượng đang trở thành\r\n    điểm đến thu hút khách du lịch, trong đó có Khu sinh thái Đan Phượng (The\r\n    Phoenix Garden). Những năm gần đây, Khu sinh thái Đan Phượng đang trở thành\r\n    điểm tham quan, vui chơi phổ biến của nhiều người Hà Nội.\r\n</div><br>\r\n<div>\r\n    Tại buổi lễ, Huyện ủy, UBND huyện Đan Phượng đã nhấn nút khởi động Trang thông\r\n    tin điện tử du lịch huyện Đan Phượng.\r\n</div>\r\n', 'HOÀNG LÂN', '2021-04-20 04:42:45'),
(15, 'Khai mạc Lễ hội Du lịch và văn hóa ẩm thực Hà Nội 2021', '1.jpg', '11.jpg', '(HNMO) - Tối 16-4, Lễ hội Du lịch và văn hóa ẩm thực Hà Nội 2021 do UBND thành phố Hà Nội chỉ đạo, Trung tâm Xúc tiến, đầu tư, thương mại, du lịch phối hợp Sở Du lịch tổ chức đã khai mạc tại khu vực Tượng đài vua Lý Thái Tổ (quận Hoàn Kiếm, Hà Nội).', '<div>\r\n  Dự lễ khai mạc có các đồng chí: Ủy viên Trung ương Đảng, Phó Bí thư Thường\r\n  trực Thành ủy Hà Nội Nguyễn Thị Tuyến; Ủy viên Trung ương Đảng, Phó Bí thư\r\n  Thành ủy, Chủ tịch UBND thành phố Hà Nội Chu Ngọc Anh; Thứ trưởng Bộ Văn hóa,\r\n  Thể thao và Du lịch Hoàng Đạo Cương; Phó Chủ tịch UBND thành phố Hà Nội Nguyễn\r\n  Mạnh Quyền cùng đại diện lãnh đạo Sở Du lịch, Sở Văn hóa, Thể thao và Du lịch\r\n  các tỉnh, thành phố; lãnh đạo các sở, ngành, quận, huyện của thành phố Hà Nội.\r\n</div><br>\r\n<div>\r\n    Phát biểu khai mạc lễ hội, Chủ tịch UBND thành phố Hà Nội Chu Ngọc Anh cho biết, trong thời gian qua, thành phố đã triển khai quyết liệt nhiều biện pháp đồng bộ để ngăn chặn dịch Covid-19, thực hiện \"nhiệm vụ kép\" vừa phòng, chống dịch Covid-19 vừa phát triển kinh tế - xã hội, bảo đảm an toàn trong trạng thái \"bình thường mới\".\r\n</div>\r\n', '<div>\r\n    Theo lãnh đạo UBND thành phố, trong bối cảnh Việt Nam chưa đón khách du lịch quốc tế đến tham quan, du lịch và trải nghiệm do ảnh hưởng của đại dịch Covid-19, thành phố Hà Nội sẽ tập trung chú trọng khai thác thị trường tại chỗ, thị trường khách du lịch trong nước tới Hà Nội cũng như hỗ trợ người dân Thủ đô đi du lịch các địa phương khác. Thành phố yêu cầu Sở Du lịch, các sở, ngành liên quan phối hợp với các quận, huyện, thị xã chú trọng và đẩy mạnh hơn nữa công tác phát triển dịch vụ, khai thác giá trị điểm đến, cải thiện môi trường du lịch tại địa phương để sẵn sàng cung cấp dịch vụ có chất lượng cao tới du khách.\r\n</div><br>\r\n<div>\r\n    Lễ hội Du lịch và văn hóa ẩm thực Hà Nội 2021 diễn ra từ ngày 16 đến 18-4 tại khu vực Tượng đài Lý Thái Tổ, nhà Bát Giác, đường Lê Thạch, đường Lê Lai và Cung Thiếu nhi Hà Nội (quận Hoàn Kiếm, Hà Nội). Lễ hội có quy mô 200 gian hàng, chia làm 2 khu gồm khu vực quảng bá sản phẩm kích cầu du lịch và khu vực giới thiệu văn hóa ẩm thực Hà Nội.\r\n</div><br>\r\n<div>\r\n    Khu vực quảng bá sản phẩm kích cầu Hà Nội có khoảng 150 gian hàng của các đơn vị đến từ Hội Lữ hành Hà Nội, Câu lạc bộ lữ hành UNESCO, đại diện của 12 tỉnh, thành phố. Bên cạnh đó, khu vực này còn trưng bày, giới thiệu sản phẩm của các khu, điểm du lịch trên địa bàn thành phố Hà Nội và các hãng hàng không Việt Nam (Vietnam Airlines, Vietjet Air, Bamboo Airways và Vietravel Airlines). Tại sự kiện, Ban tổ chức giới thiệu hơn 1.000 sản phẩm du lịch phong phú, hấp dẫn với giá ưu đãi giảm từ 15-35%.\r\n</div><br>\r\n<div>\r\n    Một trong những điểm nhấn tại Lễ hội du lịch và văn hóa ẩm thực Hà Nội 2021 là Sở Du lịch Hà Nội đã tổ chức sự kiện \"Hội nghị công bố các sản phẩm du lịch nội địa năm 2021\" vào chiều 16-4. Ngoài ra, Sở Du lịch và Trung tâm Xúc tiến đầu tư, thương mại, du lịch Hà Nội sẽ tổ chức 3 đoàn khảo sát (famtrip) du lịch tại 3 điểm: Cụm di tích xã Hạ Mỗ (Khu du lịch sinh thái huyện Đan Phượng); Bảo tàng Lịch sử quốc gia - Nhà hát Lớn - Khám phá Hoàng thành Thăng Long về đêm; khảo sát khu du lịch Thiên Sơn - Suối Ngà, dự khai trương \"Du lịch Ba Vì - Đổi mới và phát triển\".\r\n</div>\r\n', 'HOÀNG LÂN', '2021-04-20 04:43:39'),
(18, 'Trải nghiệm sản phẩm kích cầu du lịch Hà Nội: Đến để yêu!', '2.jpg', '22.jpg', '  (HNMO) - Chiều 16-4, Sở Du lịch Hà Nội tổ chức Hội nghị công bố các sản phẩm kích cầu du lịch nội địa năm 2021. Đây là sự kiện nằm trong khuôn khổ Lễ hội Du lịch và văn hóa ẩm thực Hà Nội 2021 diễn ra từ ngày 16 đến 18-4 tại khu vực Tượng đài vua Lý Thái Tổ.', '<div>\r\n    Tới dự có có Vụ trưởng Vụ ngoại giao văn hóa và UNESCO (Bộ Ngoại giao) Mai Phan Dũng; Phó Tổng cục trưởng Tổng cục Du lịch Nguyễn Thị Thanh Hương; Phó Chủ tịch UBND thành phố Hà Nội Nguyễn Mạnh Quyền, cùng đại diện lãnh đạo các tỉnh, thành phố.\r\n</div><br>\r\n<div class=\"font-bold text-lg\">\r\n    Phấn đấu đón 50-70% lượt khách so với năm 2019\r\n</div>\r\n<div>\r\n    Tại hội nghị, Phó Chủ tịch UBND thành phố Nguyễn Mạnh Quyền cho biết, dịch Covid-19 đã tác động lên toàn bộ nền kinh tế, trong đó du lịch là một trong những ngành chịu ảnh hưởng nặng nề nhất. Tổng doanh thu từ khách du lịch đến Hà Nội năm 2020 sụt giảm nghiêm trọng (hơn 70%); lượng khách đến Hà Nội giảm hơn 20 triệu lượt so với năm 2019. \"Đây là những thách thức lớn đối với ngành Du lịch, do vậy phải điều chỉnh chiến lược phù hợp với tình hình thực tế, đó là tập trung phát triển du lịch nội địa, cơ cấu lại thị trường, tạo ra các sản phẩm, tour, tuyến\", đồng chí Nguyễn Mạnh Quyền nói.\r\n</div><br>\r\n<div>\r\n    Theo Phó Chủ tịch UBND thành phố Hà Nội, sau khi kiểm soát được dịch Covid-19, Hà Nội tập trung thực hiện \"mục tiêu kép\" vừa phòng, chống dịch vừa phát triển kinh tế - xã hội, trong đó tập trung phát triển du lịch. Hà Nội phấn đấu năm 2021 sẽ đón lượng khách nội địa đạt từ 50-70% so với năm 2019 và chuẩn bị sẵn sàng các điều kiện để đón khách du lịch quốc tế khi được Chính phủ cho phép.\r\n</div><br>\r\n<div>\r\n    \"Tuy nhiên, để đạt được mục tiêu này, ngành Du lịch cần triển khai đồng bộ nhiều giải pháp. Lễ hội Du lịch và văn hóa ẩm thực Hà Nội được tổ chức vào dịp này là một trong những giải pháp nhằm khôi phục ngành Du lịch Thủ đô, cũng là dịp để Hà Nội phát huy vai trò trung tâm phân phối khách du lịch lớn của cả nước, đẩy mạnh hơn nữa công tác liên kết, hợp tác phát triển du lịch Hà Nội với các địa phương, các địa phương với Hà Nội\", đồng chí Nguyễn Mạnh Quyền nhấn mạnh.\r\n</div><br>\r\n', '<div class=\"font-bold text-lg\">\r\n    Đa dạng sản phẩm kích cầu du lịch Hà Nội \r\n</div>\r\n<div>\r\n    Giám đốc Sở Du lịch Hà Nội Đặng Hương Giang cho biết, để khôi phục thị trường du lịch một cách hiệu quả, Sở Du lịch đã xây dựng nhiều kế hoạch, tổ chức các sự kiện để tăng cường công tác truyền thông, quảng bá, xây dựng sản phẩm mới cho Thủ đô. Theo đó, từ nay đến cuối năm, Hà Nội sẽ tổ chức 81 sự kiện văn hóa, du lịch ở cả khu vực nội thành và ngoại thành. \"Các sự kiện của Hà Nội sẽ mang thông điệp \"Hà Nội – Đến để yêu!\", với hy vọng mang tới nhiều trải nghiệm thú vị, nhiều cảm xúc cho du khách\", bà Đặng Hương Giang nói.\r\n</div><br>\r\n<div>\r\n    Riêng với Lễ hội Du lịch và văn hoá ẩm thực Hà Nội 2021, Hà Nội giới thiệu 1.000 sản phẩm du lịch, trong đó có 346 tour kích cầu. Nhiều doanh nghiệp cam kết giảm giá từ 15-35% cùng nhiều voucher, quà tặng hấp dẫn. Chủ tịch Hội Lữ hành Hà Nội, Giám đốc Công ty lữ hành Hanoitourist Phùng Quang Thắng cho biết, đơn vị sẽ ra mắt sản phẩm tour đêm \"Giải mã Hoàng thành Thăng Long\" với mức giá giảm 50%; sản phẩm giới thiệu kiến trúc Đông Dương có mức giá 30.000 đồng, đưa du khách tham quan các công trình kiến trúc Pháp nổi tiếng của Thủ đô. Giám đốc Công ty Vietravel khu vực miền Bắc Phạm Văn Bảy giới thiệu tour thành phố Hồ Chí Minh - Hà Nội 3 ngày 2 đêm có giá từ 2,79 - 3 triệu đồng/người; tour Hà Nội - Bái Đính - Tràng An có giá 750 nghìn đồng/người... \r\n</div><br>\r\n<div>\r\n    Giám đốc Công ty du lịch VietSense Nguyễn Văn Tài cho biết, đơn vị tung tour \"Khám phá Thủ đô\" có mức giảm giá đến 25%. Trong đó, nổi bật là sản phẩm: Tham quan thành phố Hà Nội 1 ngày có giá 490.000 đồng/người; khám phá làng cổ Đường Lâm - chùa Mía - đền Và (khởi hành vào cuối tuần) có giá 580.000 đồng/người; tour Bát Tràng - Vạn Phúc - Hạ Thái có giá 530.000 đồng/người; tour K9 - Đá Chông có giá 620.000 đồng/người. Công ty Flamingo Redtours giới thiệu các tour \"Một thoáng châu Âu trong lòng Hà Nội\" có giá hơn 400 nghìn đồng/người/ngày...\r\n</div><br>\r\n<div>\r\n    Tại hội nghị, đã diễn ra lễ ký kết hợp tác phát triển du lịch giữa các cơ quan quản lý, tổ chức, doanh nghiệp của Hà Nội với các địa phương; ký kết hợp tác giữa Sở Du lịch Hà Nội với Vụ Ngoại giao Văn hóa và Unesco (Bộ Ngoại giao) và các đơn vị lữ hành, hàng không; hợp tác về phát triển du lịch giữa 5 tỉnh, thành phố: Hà Nội – Hải Phòng – Quảng Ninh – Ninh Bình – Thanh Hóa.\r\n</div>\r\n', 'HOÀNG LÂN', '2021-04-20 04:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `name_slide` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `name_slide`, `slide`, `link`, `create_at`) VALUES
(7, 'banner1', 'z2442600200546_dd84f76fc20cd9cccdb161b61eac3131.jpg', '7', '2021-04-19 03:26:56'),
(8, 'banner2', 'z2442600014061_82e23f94264da0827db80e667fef3002.jpg', '8', '2021-04-19 03:27:06'),
(9, 'banner3', 'z2442600253561_1ff31b02c306acaf528b71eb0a70f215.jpg', '9', '2021-04-19 03:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id_tour` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  `id_comment` int(11) DEFAULT NULL,
  `name_tour` varchar(255) NOT NULL,
  `holiday` varchar(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `place_start` text NOT NULL,
  `place_end` text NOT NULL,
  `price` int(11) NOT NULL,
  `promotional` int(11) NOT NULL,
  `introduction` text NOT NULL,
  `content` text NOT NULL,
  `plan1` text NOT NULL,
  `plan2` text DEFAULT NULL,
  `plan3` text DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id_tour`, `id_category`, `id_image`, `id_comment`, `name_tour`, `holiday`, `time_start`, `time_end`, `place_start`, `place_end`, `price`, `promotional`, `introduction`, `content`, `plan1`, `plan2`, `plan3`, `view`, `create_at`) VALUES
(65, 32, 45, NULL, 'LĂNG CHỦ TỊCH - BẢO TÀNG DÂN TỘC HỌC - VĂN MIẾU QUỐC TỬ GIÁM - CHÙA TRẤN QUỐC', 'no', '08:00:00', '17:00:00', 'Quảng trường Ba Đình, Quận Ba Đình', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 670000, 0, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n09h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969.<br>\r\n10h00: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '11h00: Quý khách đi tham quan Bảo tàng Dân tộc học, nơi lưu giữ và trưng bày nhiều hiện vật văn hoá của cả 54 dân tộc Việt Nam. <br>\r\n12h30: Đoàn trở lại Phố Cổ để ăn trưa tại nhà hàng. Sau bữa trưa, Quý khách sẽ ngắm 36 Phố phường từ trên xe và nghe Hướng dẫn viên kể chuyện về những con phố Hàng Đào-Ngang-Đương, Chợ Đồng Xuân… <br>\r\n14h00: Đoàn khởi hành đi tham quan Văn Miếu - Quốc Tử Giám (ngôi trường đại học đầu tiên của Việt Nam). Sau đó tới thăm quần thể cảnh đẹp ở phía Tây thành phố đó là chùa Trấn Quốc (ngôi chùa cổ nhất Việt Nam từ năm 541). Điểm thăm quan cuối cùng quý khách thăm đền Ngọc Sơn (viên ngọc của Hồ Hoàn Kiếm).  <br>\r\n', '15h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n17h00: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist\r\n', 103, '2021-04-21 01:53:03'),
(66, 32, 46, NULL, '	LĂNG CHỦ TỊCH – VĂN MIẾU QUỐC TỬ GIÁM - HOÀNG THÀNH THĂNG LONG - ĐỀN QUÁN THÁNH', 'no', '08:30:00', '17:00:00', 'Quảng trường Ba Đình, Quận Ba Đình', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 710000, 50000, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '8h30: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n09h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969. <br>\r\n10h00: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn. <br>\r\n', '11h00: Hoàng thành Thăng Long là quần thể di tích gắn với lịch sử kinh thành Thăng Long – Đông Kinh và tỉnh thành Hà Nội bắt đầu từ thời kì tiền Thăng Long (An Nam đô hộ phủ thế kỷ VII) qua thời Đinh – Tiền Lê, phát triển mạnh dưới thời Lý, Trần, Lê và thành Hà Nội dưới triều Nguyễn. Đây là công trình kiến trúc đồ sộ, được các triều vua xây dựng trong nhiều giai đoạn lịch sử và trở thành một trong những di tích quan trọng bậc nhất trong hệ thống các di tích Việt Nam. Sau đó, đoàn trở lại Phố Cổ để ăn trưa tại nhà hàng.<br>\r\n14h00: Đoàn khởi hành đi tham quan Văn Miếu - Quốc Tử Giám (ngôi trường đại học đầu tiên của Việt Nam). Sau đó tới thăm quần thể cảnh đẹp Đền Quán Thánh, Đền có tên chữ là Trấn Vũ Quán. Đền có từ đời Lý Thái Tổ (1010 – 1028), thờ Huyền Thiên Trấn Vũ, là một trong bốn vị thần được lập đền thờ để trấn giữ bốn cửa ngõ thành Thăng Long khi xưa được gọi là Thăng Long tứ trấn. điểm thăm quan cuối cùng quý khách thăm đền Ngọc Sơn (viên ngọc của Hồ Hoàn Kiếm). <br>\r\n15h15: Điểm đến tiếp theo Đền Quán Thánh, tên chữ là Trấn Vũ Quán, có từ đời Lý Thái Tổ, thờ Huyền Thiên Trấn Vũ, là một trong bốn vị thần được lập đền thờ để trấn giữ bốn cửa ngõ thành Thăng Long khi xưa. Bốn ngôi đền đó là: Đền Bạch Mã - Bạch Mã tối linh từ; Đền Voi Phục - Tây trấn từ; Đền Kim Liên - Kim Liên từ<br>\r\n', '16h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n17h00: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist<br>\r\n', 11, '2021-04-21 01:55:34'),
(67, 40, 47, NULL, 'CẦU LONG BIÊN - LÀNG VĂN HÓA & DU LỊCH NẮNG SÔNG HỒNG - THẢO NGUYÊN HOA – PHỐ NGỌC LÂM', 'no', '08:00:00', '16:45:00', 'Garco Dragon Hotel 2, Quận Long Biên', 'Phố Ngọc Lâm, Quận Long Biên', 550000, 0, 'Quận Long Biên có vị trí tại phía đông của thành phố Hà Nội.\r\nLà quận duy nhất nằm ở tả ngạn Sông Hồng. \r\n', 'Nơi đây được sông Hồng bao bọc xung quanh nên không khí và thời tiết quanh năm luôn thoáng mát và trong lành. Quận Long Biên có diện tích 60.38 km vuông là quận có diện tích lớn nhất trong các quận thuộc thành phố Hà Nội. Là nơi có truyền thống lâu đời với ngàn năm lịch sử Thăng Long. Cùng với đó nơi đây đã từng chứng kiến những trận chiến đã đi vào sử sách của dân tộc.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách thăm quan cầu Long Biên. Cây cầu này là chứng nhân quan trọng của lịch sử giữ gìn đất nước, trải qua những lần bị bắn phá cầu vẫn đứng yên và sừng sững góp phần làm cho giao thông từ trung tâm Hà Nội sang quận Long Biên được dễ dàng. Đây cũng là một trong những di tích đáng lưu ý và cần được bảo tồn của thủ đô Hà Nội.<br>\r\n09h05: Làng văn hóa & du lịch Nắng Sông Hồng từ lâu đã nổi tiếng là một trong những điểm đến lý tưởng nhất tại thành phố Hà Nội nói chung và quận Long Biên nói riêng vào mỗi dịp lễ tết. Có vị trí rất đẹp khi nằm cạnh Sông Hồng nên khung cảnh tại đây vô cùng nên thơ, trữ tình. Kiến trúc ở đây cũng rất tinh tế với phong cách cổ kính toát lên hết vẻ đẹp của làng quê Việt Nam.\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi dân gian tồn tại từ lâu đời như đánh đu, cầu kiều, mùa sạp, bịt mắt bắt dê,… Và thưởng thức ẩm thực mang đặc trưng của đồng bằng sông Hồng. \r\n<br>', '15h15: Quý khách tham quan Thảo nguyên hoa. Thảo nguyên hoa tại Long Biên được giới trẻ đặc biệt yêu thích vì ở đây sở hữu hàng chục loại hoa khác nhau và độc đáo, tiêu biểu như cúc họa mi, thạch thảo, hồng tố nữ, hoa ngũ sắc,…Đây là lí do nơi đây thu hút rất đông bạn trẻ tới check in cho mình những tấm ảnh để đời.<br>', '17h45: Quý khách tham quan, khám phá ẩm thực tại phố Ngọc Lâm. Ngọc Lâm là tên một con đường, cũng là một trong những đường chính và vô cùng nổi tiếng tại quận Long Biên, con phố này có rất nhiều điểm vui chơi thú vị. Quý khách mới đến và muốn khám phá ẩm thực thủ đô, nếu không ghé qua con phố Ngọc Lâm thì quả thực đây là một sự tiếc nuối lớn. Không có những nét sầm uất như nhiều khu phố nổi tiếng Hà Nội, nhưng nói đến Ngọc Lâm chắc chắn sẽ có rất nhiều người bị thu hút bởi cái tên này.<br>', 9, '2021-04-21 01:57:45'),
(68, 40, 48, NULL, 'CẦU LONG BIÊN - CHÙA PHÚC XÁ - CHÙA BỒ ĐỀ - KHU SINH THÁI BẢO SƠN', 'no', '08:00:00', '17:45:00', 'Garco Dragon Hotel 2, Quận Long Biên ', 'Khu sinh thái Bảo Sơn, Quận Long Biên', 565000, 0, 'Quận Long Biên có vị trí tại phía đông của thành phố Hà Nội.\r\nLà quận duy nhất nằm ở tả ngạn Sông Hồng. \r\n', 'Long Biên là quận duy nhất nằm ở tả ngạn sông Hồng, đồng thời là quận có diện tích lớn nhất của thủ đô Hà Nội. Cả tuần bạn đã bị mớ công việc ngập đầu làm cho mệt mỏi thì ngày cuối tuần nhớ đi xả hơi nhé. Bạn bỏ túi các khu du lịch sinh thái quận Long Biên thông tin chi tiết để có thêm điểm dừng chân thú vị.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách thăm quan cầu Long Biên. Cây cầu này là chứng nhân quan trọng của lịch sử giữ gìn đất nước, trải qua những lần bị bắn phá cầu vẫn đứng yên và sừng sững góp phần làm cho giao thông từ trung tâm Hà Nội sang quận Long Biên được dễ dàng. Đây cũng là một trong những di tích đáng lưu ý và cần được bảo tồn của thủ đô Hà Nội.<br>\r\n09h05: Tiếp theo quý khách di chuyển đến Chùa Phúc Xá. Chùa Phúc Xá có lịch sử khá lâu đời theo nhiều thông tin vào khoảng năm 1890. Đây là địa điểm tâm linh phù hợp với quý khách yêu thích sự yên tĩnh, nhẹ nhàng, những nét kiến trúc đặc trưng của những ngôi chùa cổ tại Việt Nam.<br>\r\n', '10h15: Quý khách tham quan Chùa Bồ Đề, Chùa Bồ Đề còn có tên gọi là Thiên Sơn tự. Chùa toạ lạc tại thôn Phú Yên, xã Bồ Đề, huyện Gia Lâm, cách bờ Bắc cầu Chương Dương khoảng 500m về hướng Nam, nay thuộc quận Long Biên, thành phố Hà Nội. Đây là một ngôi chùa nữ và cũng là mái ấm tình thương đùm bọc, cưu mang trẻ mồ côi. <br>', '12h45: Quý khách tham quan, khám phá Khu sinh thái Bảo Sơn, Khu sinh thái Bảo Sơn là địa điểm du lịch với khuôn viên 20 nghìn mét vuông. Có không khí trong lành và mát mẻ quanh năm với hoa cỏ và các nhà sàn độc đáo. Khu sinh thái Bảo Sơn là một tổng thể của các dịch vụ giải trí, thư giãn hấp dẫn như cắm trại, câu cá, họp mặt bạn bè,… rất thích hợp cho các hội nhóm hoặc cả gia đình nghỉ dưỡng cuối tuần. \r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn với những thú vui tao nhã, được thưởng thức những món ăn, đồ uống hấp dẫn, mới lạ. Bên cạnh đó nhà hàng ở đây phục vụ rất nhiều món ăn, từ cơm niêu, hải sản, lẩu cho tới kem, sinh tố, các món fastfood… \r\n', 22, '2021-04-21 02:04:20'),
(69, 41, 49, NULL, '	TÂY MỖ – NGÔI LÀNG HOLLYWOOD - DI TÍCH ĐÌNH CHÈM - DU LỊCH KHU SINH THÁI VƯỜN QUẢ TỪ LIÊM', 'no', '08:00:00', '13:15:00', 'Khách sạn Western Skyline, Quận Từ Liêm', ': Khu sinh thái vườn quả Từ Liêm, Quận Từ Liêm', 545000, 0, 'Từ Liêm là một huyện cũ thuộc thành phố Hà Nội, Việt Nam. Trước khi tỉnh Hà Tây được sáp nhập vào thành phố Hà Nội vào năm 2008, huyện Từ Liêm là cửa ngõ phía Tây của thủ đô, nhưng hiện hay thì dường như nằm ở trung tâm của Hà Nội mở rộng.  ', 'Từ Liêm là một huyện cũ thuộc thành phố Hà Nội, Việt Nam. Trước khi tỉnh Hà Tây được sáp nhập vào thành phố Hà Nội vào năm 2008, huyện Từ Liêm là cửa ngõ phía Tây của thủ đô, nhưng hiện hay thì dường như nằm ở trung tâm của Hà Nội mở rộng. ', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách tham quan Làng Tây Mỗ. Làng Tây Mỗ nằm ở ngoại thành Hà Nội thuộc xã Tây Mỗ, huyện Từ Liêm, bao gồm 6 thôn mang đậm dáng dấp của làng quê truyền thống phía Bắc. Vậy nên không có gì khó hiểu khi Tây Mỗ là lựa chọn số một để lấy bối cảnh cho những bộ phim thuộc đề tài nông thôn. Nhiều ngôi nhà ở Tây Mỗ vẫn giữ lại lối kiến trúc 3, 5 gian kế nhau, ở trước là một khoảnh sân to, rộng được lót gạch và có khuôn viên hai bên hông men theo lối nhỏ từ cổng vào nhà. <br>\r\n', '10h15: Tiếp theo, quý khách di chuyển đến Di Tích Đình Chèm. Di Tích Đình Chèm nằm bên bờ sông Hồng, đình Chèm (phường Thụy Phương, quận Bắc Từ Liêm, Hà Nội) mang dáng vẻ u tịch, thâm nghiêm hài hòa với không gian thơ mộng, khoáng đạt của dòng sông. Với những kiến trúc độc đáo cùng nét văn hóa, lịch sử đặc trưng, ngôi đình cổ này vừa được công nhận là di tích quốc gia đặc biệt.<br>', '13h15: Quý khách tham quan, khám phá Khu sinh thái Vườn Quả Từ Liêm, Khu sinh thái Vườn Quả Từ Liêm cách trung tâm thành phố Hà nội 15 phút đi xe. Tới đây, du khách không chỉ được đắm mình vào không gian thiên nhiên thoáng đãng, trong lành với vườn bưởi, vườn khế, vườn vải, cây cảnh, ao cá mà còn được tham gia với các trò chơi giải trí: câu lạc bộ bi-a, bóng bàn, bắn cung, cắm trại, những trò chơi mạo hiểm nhưng rất thú vị và thu hút sự tò mò của các bạn trẻ. Ngoài ra, còn có các trò chơi dân gian nổi tiếng, các phòng hát tập thể, hệ thống nhà hàng, nhà nghỉ.<br>\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 0, '2021-04-21 02:06:12'),
(70, 41, 50, NULL, '	BẢO TÀNG HÀ NỘI - LÀNG HOA TÂY TỰU - DU LỊCH KHU SINH THÁI VƯỜN QUẢ TỪ LIÊM', 'no', '08:00:00', '13:15:00', 'Khách sạn Western Skyline, Quận Từ Liêm', 'Khu sinh thái vườn quả Từ Liêm, Quận Từ Liêm', 535000, 0, 'Từ Liêm là một huyện cũ thuộc thành phố Hà Nội, Việt Nam. Trước khi tỉnh Hà Tây được sáp nhập vào thành phố Hà Nội vào năm 2008, huyện Từ Liêm là cửa ngõ phía Tây của thủ đô, nhưng hiện hay thì dường như nằm ở trung tâm của Hà Nội mở rộng.  ', 'Từ Liêm là một huyện cũ thuộc thành phố Hà Nội, Việt Nam. Trước khi tỉnh Hà Tây được sáp nhập vào thành phố Hà Nội vào năm 2008, huyện Từ Liêm là cửa ngõ phía Tây của thủ đô, nhưng hiện hay thì dường như nằm ở trung tâm của Hà Nội mở rộng. Đầu năm 2014, huyện Từ Liêm giải thể để thành lập hai quận mới thuộc thành phố Hà Nội là Bắc Từ Liêm và Nam Từ Liêm.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách tham quan Bảo tàng Hà Nội, Bảo tàng Hà Nội  sẽ gây ấn tượng với bạn với thiết kế kiến trúc độc đáo của một kim tự tháp ngược. Bảo tàng này có các mô hình thu nhỏ của Hà Nội ở nhiều thời đại: khu vực Tiến Thăng Long, Phùng Nguyễn, bản đồ Cổ Loa, văn hóa Đông Sơn và các hình ảnh khác của Hà Nội.<br>\r\nBảo tàng Hà Nội chắc chắn sẽ cho bạn hiểu sâu hơn về thành phố Hà Nội. Bảo tàng Hà Nội trưng bày quá khứ và hiện tại của Hà Nội với hàng ngàn hiện vật liên quan đến thủ đô và đây là bảo tàng lớn nhất và hiện đại nhất trong cả nước.<br>\r\n', '10h15: Hà Nội nổi tiếng với nhiều làng hoa nổi tiếng như: Làng hoa Nghi Tàm, Quảng Bá,…Nhưng đừng vội bỏ qua làng hoa Tây Tựu rực rỡ màu sắc thu hút rất nhiều du khách ghé đến đây. Làng hoa Tây Tựu thuộc quận Bắc Từ Liêm, cách trung tâm thành phố khoảng 20km. <br>\r\nLàng hoa Tây Tựu với diện tích 200ha. Du khách sẽ được chiêm ngưỡng xứ sở muôn hoa nhiều màu sắc, phong phú như: Hoa cúc, hoa violet, hoa thược dược,.. toả hương thơm ngát. Những luống hoa cúc thẳng tắp, nở rộ theo từng đoá lớn lấp lánh màu sắc hẳn sẽ làm du khách thích mê và ngây ngất trước vẻ đẹp lung linh của loài hoa rất đỗi quen thuộc, bình dị này. Đây là loài hoa ưa chuộng để cắm trên bàn thờ dịp Tết của người Việt. Đây cũng là điểm lý tưởng để bạn chụp ảnh.<br>\r\n', '13h15: Quý khách tham quan, khám phá Khu sinh thái Vườn Quả Từ Liêm, Khu sinh thái Vườn Quả Từ Liêm cách trung tâm thành phố Hà nội 15 phút đi xe. Tới đây, du khách không chỉ được đắm mình vào không gian thiên nhiên thoáng đãng, trong lành với vườn bưởi, vườn khế, vườn vải, cây cảnh, ao cá mà còn được tham gia với các trò chơi giải trí: câu lạc bộ bi-a, bóng bàn, bắn cung, cắm trại, những trò chơi mạo hiểm nhưng rất thú vị và thu hút sự tò mò của các bạn trẻ. Ngoài ra, còn có các trò chơi dân gian nổi tiếng, các phòng hát tập thể, hệ thống nhà hàng, nhà nghỉ.<br>\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 0, '2021-04-21 02:08:14'),
(71, 41, 51, NULL, 'Bảo tàng Đường Hồ Chí Minh - Đình Bia Bà - Làng lụa Vạn Phúc - Công viên nước Water Fun', 'no', '08:00:00', '12:15:00', 'Khách sạn LIEBER II, Quận Hà Đông', 'Công viên nước Water Fun, Quận Hà Đông', 535000, 0, 'Hà Đông là một quận thuộc Hà Nội, nằm giữa dòng sông Nhuệ và sông Đáy. Từ Hà Nội để về Hà Đông du khách sẽ phải di chuyển thêm khoảng 10 km theo hướng Tây Nam.', 'Hà Đông là một quận thuộc Hà Nội, nằm giữa dòng sông Nhuệ và sông Đáy. Từ Hà Nội để về Hà Đông du khách sẽ phải di chuyển thêm khoảng 10 km theo hướng Tây Nam. Nơi đây vốn là một vùng đất giàu truyền thống văn hóa và hiện là một trong những địa phương có tốc độ phát triển nhanh nhất của Hà Nội.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách tham quan Bảo tàng Đường Hồ Chí Minh, Bảo tàng Đường Hồ Chí Minh Cách Hồ Gươm khoảng 16km, theo Quốc lộ 6 qua Thị xã Hà Đông, rẽ phải theo con đường nhỏ rợp bóng cây xanh khoảng 700m là đến Bảo tàng đường Hồ Chí Minh. Từ xa, Bảo tàng đường Hồ Chí Minh nổi lên giữa cánh đồng lúa xanh với kiến trúc khá độc đáo, thể hiện trập trùng mây núi Trường Sơn. Công trình được khởi công xây dựng vào ngày 28-2-1996 và cắt bǎng khánh thành vào ngày 10/4/1999, đúng vào dịp kỷ niệm 40 nǎm ngày ra đời của Đoàn 559, tên gọi của Binh đoàn Trường Sơn anh hùng.<br>\r\n', '09h35: Đình Bia Bà (còn được gọi là đình La Khê) nằm trong quần thể Di tích văn hóa La Khê, tại quận Hà Đông (Hà Nội) là một địa chỉ tâm linh mà nhiều người dân từ nội thành và các vùng lân cận tìm về trong những ngày đầu năm mới để thắp hương cầu tài, cầu lộc. Đình vốn là nơi thờ Nhị vị Đại vương là Hắc Diện Đại Vương và Thiên Tiên Bảo Hoa Công chúa. Đây là hai vị thành hoàng đã giúp dân trừ ác và có nước để phát triển nông nghiệp, nhờ đó vùng đất La Khê đã trở nên trù phú.  <br>\r\n10h45: Tiếp theo quý khách tham quan Làng lụa Vạn Phúc, Làng lụa Vạn Phúc là làng nghề dệt lụa tơ tằm lâu đời nhất Việt Nam, làng lụa Vạn Phúc thuộc phường Vạn Phúc chắc chắn là nơi đầu tiên du khách nên khám phá khi ghé thăm quận Hà Đông, Hà Nội. Nằm ở bên bờ sông Nhuệ, ngôi làng hiện vẫn còn giữ được ít nhiều những nét cổ kính của làng quê xưa như cây đa cổ thụ, chiếc giếng làng với những bông hoa sen hay phiên chợ chiều họp trước đình… <br>\r\n', '12h15:  Sau đó quý khách di chuyển đến Công Viên Nước Water Fun, Công Viên Nước Water Fun không gian Water Fun dưới ánh mặt trời rực rỡ, tràn ngập sắc màu tươi sáng và bắt mắt, chắc chắn sẽ mang đến cho bạn những “background” siêu đẹp, để bạn tự tin thả dáng và post hình đẹp. Phía bên ngoài Công Viên Phao Nước Water Fun có khuôn viên rộng lớn và khu để xe rộng tới 2000m2 không lo chật chội kể cả trong những ngày lễ hay cuối tuần với lượng khách đông đảo. Water Fun cũng bố trí các quầy canteen với đa dạng các loại nước uống, snack, đồ ăn nhanh, có mức giá hợp lý để đáp ứng nhu cầu “nạp năng lượng” của đông đảo khách hàng sau thời gian vui chơi hoạt động…<br>\r\nVới chất lượng dịch vụ hoàn hảo, mức giá hợp lý, Công Viên Phao Nước Water Fun chắc chắn sẽ là một trong những lựa chọn ưu tiên, đáp ứng nhu cầu vui chơi, thư giãn, giải trí đa dạng của gia đình bạn. Giờ đây, không cần phải đi du lịch quá xa mới có thể thỏa thích nô đùa và tận hưởng cảm giác mát lạnh, một “thế giới nước” đầy hào hứng và nhiều điều bất ngờ đang chờ đón bạn khám phá ngay tại Thủ Đô!<br>\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 0, '2021-04-21 02:09:59'),
(72, 42, 52, NULL, '	Bảo tàng Đường Hồ Chí Minh - Đình Bia Bà - Làng lụa Vạn Phúc - Công viên nước Thanh Hà', 'no', '08:00:00', '12:15:00', 'Khách sạn LIEBER II, Quận Hà Đông', 'Công viên nước Thanh Hà, Quận Hà Đông', 575000, 75000, 'Hà Đông là một quận thuộc Hà Nội, nằm giữa dòng sông Nhuệ và sông Đáy. Từ Hà Nội để về Hà Đông du khách sẽ phải di chuyển thêm khoảng 10 km theo hướng Tây Nam.', 'Hà Đông là một quận thuộc Hà Nội, nằm giữa dòng sông Nhuệ và sông Đáy. Từ Hà Nội để về Hà Đông du khách sẽ phải di chuyển thêm khoảng 10 km theo hướng Tây Nam. Nơi đây vốn là một vùng đất giàu truyền thống văn hóa và hiện là một trong những địa phương có tốc độ phát triển nhanh nhất của Hà Nội.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách tham quan Bảo tàng Đường Hồ Chí Minh, Bảo tàng Đường Hồ Chí Minh Cách Hồ Gươm khoảng 16km, theo Quốc lộ 6 qua Thị xã Hà Đông, rẽ phải theo con đường nhỏ rợp bóng cây xanh khoảng 700m là đến Bảo tàng đường Hồ Chí Minh. Từ xa, Bảo tàng đường Hồ Chí Minh nổi lên giữa cánh đồng lúa xanh với kiến trúc khá độc đáo, thể hiện trập trùng mây núi Trường Sơn. Công trình được khởi công xây dựng vào ngày 28-2-1996 và cắt bǎng khánh thành vào ngày 10/4/1999, đúng vào dịp kỷ niệm 40 nǎm ngày ra đời của Đoàn 559, tên gọi của Binh đoàn Trường Sơn anh hùng.<br>\r\n', '09h35: Đình Bia Bà (còn được gọi là đình La Khê) nằm trong quần thể Di tích văn hóa La Khê, tại quận Hà Đông (Hà Nội) là một địa chỉ tâm linh mà nhiều người dân từ nội thành và các vùng lân cận tìm về trong những ngày đầu năm mới để thắp hương cầu tài, cầu lộc. Đình vốn là nơi thờ Nhị vị Đại vương là Hắc Diện Đại Vương và Thiên Tiên Bảo Hoa Công chúa. Đây là hai vị thành hoàng đã giúp dân trừ ác và có nước để phát triển nông nghiệp, nhờ đó vùng đất La Khê đã trở nên trù phú. <br>\r\n10h45: Tiếp theo quý khách tham quan Làng lụa Vạn Phúc, Làng lụa Vạn Phúc là làng nghề dệt lụa tơ tằm lâu đời nhất Việt Nam, làng lụa Vạn Phúc thuộc phường Vạn Phúc chắc chắn là nơi đầu tiên du khách nên khám phá khi ghé thăm quận Hà Đông, Hà Nội. Nằm ở bên bờ sông Nhuệ, ngôi làng hiện vẫn còn giữ được ít nhiều những nét cổ kính của làng quê xưa như cây đa cổ thụ, chiếc giếng làng với những bông hoa sen hay phiên chợ chiều họp trước đình…<br>\r\n', '12h15:  Sau đó quý khách di chuyển đến Công Viên Nước Thanh Hà, Công viên nước Thanh Hà – công viên nước Hà Nội hiện đại nhất. Diện tích công viên rộng lớn, với khoảng 3ha, cùng với 11 công trình lớn nhỏ khác nhau. Với chất lượng dịch vụ hoàn hảo, mức giá hợp lý, Công Viên Phao Nước Water Fun chắc chắn sẽ là một trong những lựa chọn ưu tiên, đáp ứng nhu cầu vui chơi, thư giãn, giải trí đa dạng của gia đình bạn. Giờ đây, không cần phải đi du lịch quá xa mới có thể thỏa thích nô đùa và tận hưởng cảm giác mát lạnh, một “thế giới nước” đầy hào hứng và nhiều điều bất ngờ đang chờ đón bạn khám phá ngay tại Thủ Đô!<br>\r\nĐến với nơi đây, các bạn sẽ được thỏa thích đắm chìm, và bị hớp hồn với toàn cảnh không gian tráng lệ, đầy hiện đại trong cách thiết kế. Hơn thế nữa, các bạn sẽ được vui chơi hết mình với những hạng mục vui chơi khác nhau. Tất cả đều đầy tính mạo hiểm, hấp dẫn và tốc độ: từ nhà nước Amazon, bể tạo sóng,… Cho đến đường trượt gia đình, xoắn ốc. Có lẽ vì thế, mà công viên này luôn nhận được sự ủng hộ, quan tâm và tham quan của một lượng lớn khách du lịch. Giá vé vào công viên và tham gia cũng vừa tầm, không quá đắt<br>\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn<br>\r\n', 2, '2021-04-21 02:12:10'),
(73, 43, 53, NULL, 'CHÙA HUỲNH CUNG – ĐỀN ĐẦM – KHU SINH THÁI THĂNG LONG', 'no', '08:12:00', '12:15:00', 'Imperial Hotel & Spa, Quận Thanh Trì', 'Khu sinh thái Thăng Long, Thanh Trì', 505000, 0, 'Thanh Trì nằm ven phía Nam và Đông Nam thủ đô Hà Nội. Huyện nổi tiếng với các di tích đền chùa như đình Đinh Tiên hoàng, đình Hữu Thanh Oai, Đình Hoa Xá, Đền thờ Nguyễn Bặc, đình Phú Diễn, Đình Văn Uyên... ', 'Thanh Trì nằm ở hữu ngạn sông Hồng, địa thế thấp dần về phía Đông Nam theo hướng dòng chảy của sông Hồng. Đến với Thanh Trì, điều đầu tiên mà mình cảm nhận được đó chính là sự nhộn nhịp với những đoàn người đi trên phố, là sự phong phú về ẩm thực và cả một nên văn hóa, lịch sử lâu đời. Chính những điều này đã hun đúc huyện Thanh Trì với nhiều điểm du lịch hấp dẫn cần được chiêm ngưỡng, khám phá. ', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quý khách tham quan Chùa Huỳnh Cung được xây dựng từ thế kỷ XVII và đã được trùng tu nhiều lần. Khuôn viên chùa rộng lớn tới 10.000m2. Tam quan xây gạch, lợp ngói, cửa chính giữa lớn hơn cửa hai bên. Qua tam quan về phía bên phải là khu vườn với 13 ngọn tháp 3 tầng. Về phía bên trái qua một sân gạch là đến chùa làm theo kiểu nội công, ngoại quốc. Phía trước chùa là tiền đường, phía sau là thượng điện được nối liền với nhau bằng một ống muống.<br>\r\n', '10h15: Chùa Quang Ân tọa lạc ở thôn Trung, xã Thanh Liệt, huyện Thanh Trì, TP. Hà Nội bên bờ Ngọc Thanh Đàm, diện tích trên 10.000m2. Chùa thuộc hệ phái Bắc tông.<br>\r\nChùa được dựng vào năm 1694, là một am tranh vách đất. Đến năm 1704, Thiền sư Như Liên, trụ trì chùa Linh Tiên, cho xây lại chùa, đặt cột đá thạch trụ thiên đài trước chánh điện để kỷ niệm. Chùa xây đơn sơ, cạnh ngòi Đồng Đú, nên còn có tên là chùa Ngòi.<br>\r\n', '12h15:  Sau đó quý khách di chuyển đến khu sinh thái Thăng Long, Trang trại Hoa cây cảnh Thăng Long tọa lạc trên mảnh đất màu mỡ của vùng đồng bằng bắc bộ (Tam Hiệp – Thanh Trì – Hà Nội). Một địa điểm sinh thái khoảng 40.000 mét vuông có một không hai tại thủ đô tấc đất tấc vàng; lại mất chưa đầy 20 phút di chuyển từ trung tâm. Hơn nữa, giá lại “hạt dẻ” chỉ với 30k/1 người, miễn phí trẻ em dưới 1,2 mét. Được ngắm những vườn hoa hồng châu Âu nở ngợp và tỏa ngát hương thơm. Vậy còn chần chờ gì nữa!<br>\r\nTại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn<br>\r\n', 0, '2021-04-21 02:14:05'),
(74, 43, 54, NULL, '	CHÙA QUANG ÂN – ĐỀN ĐẦM – KHU DU LỊCH TRẢI NGHIỆM HẢI ĐĂNG', 'no', '08:00:00', '12:15:00', 'Imperial Hotel & Spa, Quận Thanh Trì', 'Khu du lịch trải nghiệm Hải Đăng, Thanh Trì', 515000, 0, 'Thanh Trì nằm ven phía Nam và Đông Nam thủ đô Hà Nội. Huyện nổi tiếng với các di tích đền chùa như đình Đinh Tiên hoàng, đình Hữu Thanh Oai, Đình Hoa Xá, Đền thờ Nguyễn Bặc, đình Phú Diễn, Đình Văn Uyên... ', 'Thanh Trì nằm ở hữu ngạn sông Hồng, địa thế thấp dần về phía Đông Nam theo hướng dòng chảy của sông Hồng. Đến với Thanh Trì, điều đầu tiên mà mình cảm nhận được đó chính là sự nhộn nhịp với những đoàn người đi trên phố, là sự phong phú về ẩm thực và cả một nên văn hóa, lịch sử lâu đời. Chính những điều này đã hun đúc huyện Thanh Trì với nhiều điểm du lịch hấp dẫn cần được chiêm ngưỡng, khám phá. ', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Chùa Quang Ân tọa lạc ở thôn Trung, xã Thanh Liệt, huyện Thanh Trì, TP. Hà Nội bên bờ Ngọc Thanh Đàm, diện tích trên 10.000m2. Chùa thuộc hệ phái Bắc tông.<br>\r\nChùa được dựng vào năm 1694, là một am tranh vách đất. Đến năm 1704, Thiền sư Như Liên, trụ trì chùa Linh Tiên, cho xây lại chùa, đặt cột đá thạch trụ thiên đài trước chánh điện để kỷ niệm. Chùa xây đơn sơ, cạnh ngòi Đồng Đú, nên còn có tên là chùa Ngòi..<br>\r\n', '10h15: Đền Dầm (thờ Mẫu Thủy, là một trong ba thánh mẫu của văn hóa tâm linh VN, bên cạnh Mẫu Đệ thiên và Mẫu Núi rừng) hiện ra uy nghi khuất sau hàng cổ thụ trăm tuổi. Đền khá rộng, kiến trúc cổ, cột gỗ mái ngói xưa cũ màu thời gian. Khuôn viên đền thoáng đãng, cây trên trăm tuổi.<br>\r\nĐền Dầm gắn liền truyền thuyết “Hoàng Long công chúa bị đày vì làm vỡ chén ngọc được chàng Liễu Nghị giải oan. Để trả ơn, nàng đã hiện lên báo mộng giúp Hưng Đạo vương Trần Quốc Tuấn đánh thắng giặc ngoại xâm”..<br>\r\n', '12h15:  Sau đó quý khách di chuyển đến khu du lịch trải nghiệm Hải Đăng, du lịch trải nghiệm Hải Đăng nằm Cách trung tâm tp.Hà Nội 12km tại xã Yên Mỹ, huyện Thành Trì, Hà Nội, trang trại Hải Đăng nằm giữa cánh đồng rau sạch của Hà Nội tách biết với thế giới ồn ào, nhộn nhịp. Du lịch trải nghiệm Hải Đăng xây dựng chương trình với mong muốn mang lại những giá trị và trải nghiệm hấp dẫn cho các bạn trẻ. Hải Đăng thiết kế các chương trình trải nghiệm đa dạng nhằm tạo điều kiện cho các bạn trẻ vui chơi giải trí hết mình sau những giờ học mệt mỏi.<br> Tại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn', 0, '2021-04-21 02:15:57'),
(75, 44, 55, NULL, '	CHÙA KIẾN SƠ - LÀNG GỐM BÁT TRÀNG – HAPPY LAND GIA LÂM', 'no', '08:00:00', '12:15:00', 'Khách Sạn New Life, Gia Lâm', 'Happy Land Gia Lâm, Gia Lâm', 535000, 35000, 'Gia Lâm nằm ở ngoại thành phía đông thành phố Hà Nội. Theo truyền thuyết đây là nơi Thánh Gióng được sinh ra, huyện còn có các địa danh, lễ hội nổi tiếng khác như: Hội Gióng Phù Đồng, làng gốm Bát Tràng... ', 'Nằm ở phía đông Hà Nội, giao thoa giữa hai vùng văn hóa Kinh Bắc và Thăng Long, huyện Gia Lâm sở hữu kho tàng di sản văn hóa đồ sộ, phong phú. Đây chính là nguồn lực để huyện phát triển sản phẩm du lịch đặc trưng, phù hợp với xu thế phát triển.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Quần thể kiến trúc chùa Kiến Sơ ngày nay khá bề thế. Cổng tam quan 5 gian chồng diêm 2 tầng. Chùa chính theo kiểu nội công ngoại quốc như nhiều ngôi chùa cổ thường thấy ở Bắc bộ. Bước qua cổng tam quan là hồ sen lớn, bao quanh là lối đi dẫn vào chùa chính. Trước tiền đường về phía bên trái có một chiếc khánh đá cổ có niên đại gần 400 năm.<br>\r\n', '10h15: Tiếp theo, du khách di chuyển đến Làng Gốm Bát Tràng cách trung tâm thành phố Hà Nội khoảng 14km. Đây là làng gốm lâu đời và nổi tiếng nhất ở Việt Nam. Đây là địa điểm vui chơi ở Gia Lâm Hà Nội thu hút sự tham quan của nhiều khách du lịch trong và ngoài nước. Làng nghề này được hình thành từ thời nhà Lý. Trải qua hơn 500 năm lịch sử với bao biến cố thăng trầm cùng thời gian. Nhưng cái tên Bát Tràng vẫn tồn tại và ngày càng phát triển cho đến tận bây giờ. <br>', '12h15:  Những nơi chụp ảnh đẹp ở Hà Nội không thể bỏ qua Happy Land Gia Lâm. Địa điểm này gần ngay ga Gia Lâm, cạnh khu chung cư Đầm Nấm. Nếu bạn ở trung tâm Hà Nội thì chỉ mất 2,5 km đi xe là đã tới nơi. Nơi đây có không gian rộng, thoáng mát. Được thiết kế vô cùng rộng rãi, với đầy đủ cánh đồng cỏ, sông hồ nên thơ, lãng mạn. Những đồ vật như chiếc thuyền, chiếc xe hơi và chiếc máy bay cổ đặt tại phim trường đã tạo nên những góc chụp nghệ thuật và hiện đại.<br>\r\n Tại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 0, '2021-04-21 02:17:52'),
(76, 44, 56, NULL, 'CHÙA KEO - LÀNG GỐM BÁT TRÀNG – KHU DU LỊCH SINH THÁI CÁNH BUÔM XANH', 'no', '08:00:00', '12:15:00', 'Khách Sạn New Life, Gia Lâm', 'Khu du lịch sinh thái cánh buồm xanh, Gia Lâm', 525000, 25000, 'Gia Lâm nằm ở ngoại thành phía đông thành phố Hà Nội. Theo truyền thuyết đây là nơi Thánh Gióng được sinh ra, huyện còn có các địa danh, lễ hội nổi tiếng khác như: Hội Gióng Phù Đồng, làng gốm Bát Tràng... ', 'Nằm ở phía đông Hà Nội, giao thoa giữa hai vùng văn hóa Kinh Bắc và Thăng Long, huyện Gia Lâm sở hữu kho tàng di sản văn hóa đồ sộ, phong phú. Đây chính là nguồn lực để huyện phát triển sản phẩm du lịch đặc trưng, phù hợp với xu thế phát triển.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Chùa Keo nằm trên một khu đất cao rộng ở nơi khu cư trú của hai làng Giao Tất và Giao Tự, trên đường thiên lý đi các nơi, có cảnh đẹp, với núi sông bao quanh. Xưa kia trước cửa chùa là một cầu đá rồi đến cổng tam quan 2 tầng, 8 mái với bia đá to ở hai bên nhưng nay tam quan không còn mà chỉ có một cổng ra vào đơn giản rồi đến sân, chùa chính, nhà thờ Mẫu, nhà thờ Tổ và khu vườn tháp.<br>\r\n', '10h15: Tiếp theo, du khách di chuyển đến Làng Gốm Bát Tràng cách trung tâm thành phố Hà Nội khoảng 14km. Đây là làng gốm lâu đời và nổi tiếng nhất ở Việt Nam. Đây là địa điểm vui chơi ở Gia Lâm Hà Nội thu hút sự tham quan của nhiều khách du lịch trong và ngoài nước. Làng nghề này được hình thành từ thời nhà Lý. Trải qua hơn 500 năm lịch sử với bao biến cố thăng trầm cùng thời gian. Nhưng cái tên Bát Tràng vẫn tồn tại và ngày càng phát triển cho đến tận bây giờ. <br>', '12h15:  Tới khu sinh thái Cánh Buồm Xanh bạn sẽ được khám phá những trò chơi thú vị hấp dẫn như: Mê cung cỏ, lễ hội té nước ở Bể Vầy. Khám phá vườn Khủng Long, chơi các trò chơi Sasuke, đá bóng tại sân bóng mini,… Các gian hàng chợ quê và tham gia những trò chơi dân gian như: Ô ăn quan, chơi chắt, chơi thuyền… <br>\r\nBên cạnh đó, các em nhỏ còn được tham quan và tìm hiểu đời sống các vật nuôi tại trang trại như: Nhím, lợn rừng, thỏ, mèo rừng, đại bàng. Và tìm hiểu về các loại rau sạch tại vườn rau hữu cơ. <br>\r\n Tại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 3, '2021-04-21 02:20:04'),
(77, 40, 57, NULL, 'CHÙA HƯƠNG – ĐẦM SEN THÔN ĐỨC – KHU SINH THÁI BỂ BƠI CỬA HƯƠNG', 'yes', '08:00:00', '13:15:00', 'Hotel du Monde, Quận Long Biên', 'Khu du lịch sinh thái bể bơi cửa Hương, Mỹ Đức', 545000, 245000, 'Mỹ Đức được tạo hóa ưu ái với những dải núi đá vôi trùng điệp, những sông, hồ rộng lớn tạo nên cảnh núi non, sơn thủy hữu tình. Không chỉ có khu thắng cảnh Chùa Hương, hồ Quan Sơn… hồ Tuy Lai còn nổi tiếng với cảnh sắc thiên nhiên phong phú với cảnh núi non sông nước kỳ vĩ, huyền ảo. Dưới sự sắp đặt của bàn tay tạo hóa đây sẽ một trong những tiềm năng du lịch lớn của huyện Mỹ Đức.', 'Huyện Mỹ Đức được thiên nhiên ban tặng một hệ thống núi đá vôi trùng trùng điệp điệp soi bóng xuống những hồ nước bao la, tạo ra khung cảnh  tuyệt đẹp. Nếu muốn có một nơi du ngoạn hay cắm trại cuối tuần không phải đi xa Hà Nội mà vẫn đem lại cảm giác mới mẻ thì mỹ đức là một lựa chọn đúng đắn.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Chùa Hương là cách nói trong dân gian, trên thực tế chùa Hương hay Hương Sơn là cả một quần thể văn hóa – tôn giáo Việt Nam, gồm hàng chục ngôi chùa thờ Phật, vài ngôi đền thờ thần, các ngôi đình, thờ tín ngưỡng nông nghiệp. Trung tâm chùa Hương nằm ở xã Hương Sơn, huyện Mỹ Đức, Hà Nội, nằm ven bờ phải sông Đáy.<br>\r\nQuần thể Hương Sơn là sự kết hợp tuyệt vời giữa kì công của Tạo hoá với bàn tay khéo léo, tài hoa của con người. Các ngôi chùa được xây dựng rải rác trên triền núi đá vôi, thấp thoáng dưới rừng cây xanh thẳm. Từ chân núi trèo ngược lên hàng ngàn bậc đá cheo leo, gập ghềnh, khách hành hương sẽ lần lượt thắp nhang ở chùa Ngoài, rồi vào chùa Trong, lên chùa Giải Oan, chùa Thiên Trù với động Hinh Bồng…<br>\r\n', '11h15: Đầm sen thôn Đức Dương, xã An Phú, huyện Mỹ Đức có lẽ là đầm sen “vô cực” nếu không có những dãy núi đá vôi “bo viền” bức tranh thiên nhiên tuyệt đẹp. Người dân An Phú bao đời nay gắn bó với ruộng đồng, mỗi năm hai vụ cấy lúa gối trồng sen. Du khách về An Phú sẽ được đắm mình trong cảnh sắc thôn quê yên bình và hương thơm thanh khiết của những đầm sen rộng lớn.<br>\r\nKhông gian bao quanh nơi này cũng rất im ắng, không ồn ào tiếng xe cộ, chỉ xa xa là dãy núi nhấp nhô, là cánh đồng lúa đã thu hoạch. Độc đáo hơn nữa là khi chiều bắt đầu nắng nghiêng sau núi. Khách tham quan sẽ thấy từng đàn chim bay qua đầm sen, tạo nên một cảnh sắc tuyệt vời. Không biết có phải do đặc điểm địa chất nơi đây khác biệt bởi có rất nhiều dãy núi đá vôi bao quanh mà sen ở đây bông to đẹp và hương rất thơm.<br>\r\n', '13h15:  Khu Sinh Thái Bể Bơi Cửa Hương ẩn chứa một điển tích đẹp nào đó từ ngày khai thiên lập địa. Nước trong đầm mát lạnh về mùa hè, ấm nóng về mùa đông. Điều đặc biệt là nước luôn được lưu thông nên rất sạch. Người dân khi làm đồng về, chỉ cần nhảy xuống tắm táp, để dòng nước vuốt ve, xoa dịu là bao mệt mỏi như tan biến. Với đám trẻ, thì hang Cửa Hương là một điểm vui chơi lý thú suốt bốn mùa.<br>\r\n Tại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 29, '2021-04-21 02:22:05'),
(78, 41, 58, NULL, 'CHÙA HƯƠNG – ĐẦM SEN THÔN ĐỨC – KHU DU LỊCH HỒ QUAN SƠN', 'yes', '08:00:00', '13:15:00', 'Hotel du Monde V, Quận Từ Liêm', 'Khu du lịch Hồ Quan Sơn, Mỹ Đức', 575000, 0, 'Mỹ Đức được tạo hóa ưu ái với những dải núi đá vôi trùng điệp, những sông, hồ rộng lớn tạo nên cảnh núi non, sơn thủy hữu tình. Không chỉ có khu thắng cảnh Chùa Hương, hồ Quan Sơn… hồ Tuy Lai còn nổi tiếng với cảnh sắc thiên nhiên phong phú với cảnh núi non sông nước kỳ vĩ, huyền ảo. Dưới sự sắp đặt của bàn tay tạo hóa đây sẽ một trong những tiềm năng du lịch lớn của huyện Mỹ Đức.', 'Huyện Mỹ Đức được thiên nhiên ban tặng một hệ thống núi đá vôi trùng trùng điệp điệp soi bóng xuống những hồ nước bao la, tạo ra khung cảnh  tuyệt đẹp. Nếu muốn có một nơi du ngoạn hay cắm trại cuối tuần không phải đi xa Hà Nội mà vẫn đem lại cảm giác mới mẻ thì mỹ đức là một lựa chọn đúng đắn.', '8h00: Xe đón Quý khách tại khách sạn, bắt đầu Tour Du Lịch Hà Nội 1 Ngày. <br>\r\n08h15: Chùa Hương là cách nói trong dân gian, trên thực tế chùa Hương hay Hương Sơn là cả một quần thể văn hóa – tôn giáo Việt Nam, gồm hàng chục ngôi chùa thờ Phật, vài ngôi đền thờ thần, các ngôi đình, thờ tín ngưỡng nông nghiệp. Trung tâm chùa Hương nằm ở xã Hương Sơn, huyện Mỹ Đức, Hà Nội, nằm ven bờ phải sông Đáy.<br>\r\nQuần thể Hương Sơn là sự kết hợp tuyệt vời giữa kì công của Tạo hoá với bàn tay khéo léo, tài hoa của con người. Các ngôi chùa được xây dựng rải rác trên triền núi đá vôi, thấp thoáng dưới rừng cây xanh thẳm. Từ chân núi trèo ngược lên hàng ngàn bậc đá cheo leo, gập ghềnh, khách hành hương sẽ lần lượt thắp nhang ở chùa Ngoài, rồi vào chùa Trong, lên chùa Giải Oan, chùa Thiên Trù với động Hinh Bồng…<br>\r\n', '11h15: Đầm sen thôn Đức Dương, xã An Phú, huyện Mỹ Đức có lẽ là đầm sen “vô cực” nếu không có những dãy núi đá vôi “bo viền” bức tranh thiên nhiên tuyệt đẹp. Người dân An Phú bao đời nay gắn bó với ruộng đồng, mỗi năm hai vụ cấy lúa gối trồng sen. Du khách về An Phú sẽ được đắm mình trong cảnh sắc thôn quê yên bình và hương thơm thanh khiết của những đầm sen rộng lớn.<br>\r\nKhông gian bao quanh nơi này cũng rất im ắng, không ồn ào tiếng xe cộ, chỉ xa xa là dãy núi nhấp nhô, là cánh đồng lúa đã thu hoạch. Độc đáo hơn nữa là khi chiều bắt đầu nắng nghiêng sau núi. Khách tham quan sẽ thấy từng đàn chim bay qua đầm sen, tạo nên một cảnh sắc tuyệt vời. Không biết có phải do đặc điểm địa chất nơi đây khác biệt bởi có rất nhiều dãy núi đá vôi bao quanh mà sen ở đây bông to đẹp và hương rất thơm.<br>\r\n', '13h15: Hồ Quan Sơn là một khu sinh thái với gần 20 ngọn núi lớn nhỏ kéo dài, lừng lững mọc trên mặt hồ nước với thảm thực vật xanh mướt và vô cùng phong phú. Vì thế nếu muốn đến đây để ngắm khung cảnh những đoá sen nở đẹp nhất thì bạn nên đến vào khoảng giữa tháng 5 đến giữa tháng 6, đó là mùa sen nở vô cùng đẹp. Nếu không thể đến được vào dịp ấy thì cũng không sao vì vào thời gian khác thì những thảm trang trang cũng phủ bóng mặt hồ đẹp không kém gì mùa sen nở.<br>\r\nKhi du ngoạn trên hồ, bạn sẽ được chiêm ngưỡng cả một bức tranh thuỷ mặc thiên nhiên sông nước vừa hùng vĩ, lại vừa nên thơ với cảnh núi non sơn thuỷ như hoà quyện làm một. Với đảo Sư Tử, đồi Voi Phục, ngọn Giằng Xé, ngọn Trâu Đá Bạc,… mỗi cái một hình thù mọc sừng sững nên mặt nước như món quà thiên nhiên ưu ái ban tặng cho nơi đây. Càng khám phá nhiều ở nơi đây, bạn sẽ lại càng bị choáng ngợp bởi sự thú vị ở đây.<br>\r\n Tại đây quý khách sẽ thăm quan, tham gia các trò chơi và thư giãn\r\n', 10, '2021-04-21 02:24:09'),
(79, 39, 59, NULL, 'Lăng Chủ Tịch – Chùa Trấn Quốc – Văn Miếu– Phố Cổ – Hoàn Kiếm', 'no', '09:30:00', '16:30:00', 'Tây Hồ Hotel, Quận Tây Hồ', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 570000, 70000, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '9h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại điểm hẹn, khởi hành tham quan du lịch Hà Nội 1 ngày.<br>\r\n10h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969.<br>\r\n11h45: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '12h10: Quý khách vào thăm quan Chùa Trấn Quốc - một trong những ngôi chùa có kiến trúc cổ kính và Bảo Tháp Xá Lợi linh thiêng nằm bên bán đảo Tây Hồ.<br>\r\n12h45: Quý khách thưởng thức ẩm thực tại nhà hàng trên phố, những món ăn truyền thống của Hà Nội.<br>\r\n14h00: Quý khách đi thăm Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám là quần thể di tích đa dạng và phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, người thầy tiêu biểu đạo cao, đức trọng của nền giáo dục Việt Nam. Năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong thiên hạ.<br>\r\n', '15h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n16h30: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist<br>\r\n', 0, '2021-04-21 10:42:06'),
(80, 39, 60, NULL, 'Lăng Chủ Tịch – Chùa Trấn Quốc – Văn Miếu– Phố Cổ – Hoàn Kiếm', 'no', '09:30:00', '16:30:00', 'Sunset Westlake Hanoi Hotel, Quận Tây Hồ', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 550000, 50000, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '9h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại điểm hẹn, khởi hành tham quan du lịch Hà Nội 1 ngày.<br>\r\n10h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969.<br>\r\n11h45: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '12h10: Quý khách vào thăm quan Chùa Trấn Quốc - một trong những ngôi chùa có kiến trúc cổ kính và Bảo Tháp Xá Lợi linh thiêng nằm bên bán đảo Tây Hồ.<br>\r\n12h45: Quý khách thưởng thức ẩm thực tại nhà hàng trên phố, những món ăn truyền thống của Hà Nội.<br>\r\n14h00: Quý khách đi thăm Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám là quần thể di tích đa dạng và phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, người thầy tiêu biểu đạo cao, đức trọng của nền giáo dục Việt Nam. Năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong thiên hạ.<br>\r\n', '15h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n16h30: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist\r\n', 0, '2021-04-21 10:44:06'),
(81, 33, 61, NULL, 'Lăng Chủ Tịch – Chùa Trấn Quốc – Văn Miếu– Phố Cổ – Hoàn Kiếm', 'no', '09:30:00', '16:30:00', 'Tượng Lý Thái Tổ, Quận Hoàn Kiếm', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 550000, 0, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', ' Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '9h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại điểm hẹn, khởi hành tham quan du lịch Hà Nội 1 ngày.<br>\r\n10h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969.<br>\r\n11h45: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '12h10: Quý khách vào thăm quan Chùa Trấn Quốc - một trong những ngôi chùa có kiến trúc cổ kính và Bảo Tháp Xá Lợi linh thiêng nằm bên bán đảo Tây Hồ.<br>\r\n12h45: Quý khách thưởng thức ẩm thực tại nhà hàng trên phố, những món ăn truyền thống của Hà Nội.<br>\r\n14h00: Quý khách đi thăm Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám là quần thể di tích đa dạng và phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, người thầy tiêu biểu đạo cao, đức trọng của nền giáo dục Việt Nam. Năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong thiên hạ.<br>\r\n', '15h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n16h30: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist<br>\r\n', 4, '2021-04-21 10:46:19');
INSERT INTO `tour` (`id_tour`, `id_category`, `id_image`, `id_comment`, `name_tour`, `holiday`, `time_start`, `time_end`, `place_start`, `place_end`, `price`, `promotional`, `introduction`, `content`, `plan1`, `plan2`, `plan3`, `view`, `create_at`) VALUES
(82, 35, 62, NULL, '	Lăng Chủ Tịch – Đền Quán Thánh – Văn Miếu - Làng Gốm – Hoàn Kiếm', 'no', '09:30:00', '17:30:00', 'Mely Hotel, Quận Thanh Xuân', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 740000, 0, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '9h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại điểm hẹn, khởi hành tham quan du lịch Hà Nội 1 ngày.<br>\r\n10h00: Quý khách tham quan Lăng Chủ tịch Hồ Chí Minh – nơi an nghỉ cuối cùng của vị lãnh tụ kính yêu của dân tộc Việt Nam, và Nhà sàn Bác Hồ – nơi Bác ở và làm việc từ năm 1958 đến năm 1969.<br>\r\n11h45: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '12h10: Điểm đến tiếp theo Đền Quán Thánh, tên chữ là Trấn Vũ Quán, có từ đời Lý Thái Tổ, thờ Huyền Thiên Trấn Vũ, là một trong bốn vị thần được lập đền thờ để trấn giữ bốn cửa ngõ thành Thăng Long khi xưa. Bốn ngôi đền đó là: Đền Bạch Mã - Bạch Mã tối linh từ; Đền Voi Phục - Tây trấn từ; Đền Kim Liên - Kim Liên. Quý khách thưởng thức ẩm thực tại nhà hàng trên phố, những món ăn truyền thống của Hà Nội.<br>\r\n14h15: Tiếp tục chương trình khám phá cuộc sống hàng ngày của gốm truyền thống tại làng gốm Bát Tràng trên bờ sông Hồng. Bạn biết về lịch sử hơn 700 năm của làng, tham quan các phòng trưng bày các sản phẩm gốm Bát Tràng.<br>\r\n15h45: Quý khách đi thăm Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám là quần thể di tích đa dạng và phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, người thầy tiêu biểu đạo cao, đức trọng của nền giáo dục Việt Nam. Năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong thiên hạ.<br>\r\n', '16h30: Điểm dừng chân cuối cùng là Hồ Hoàn Kiếm và Đền Ngọc Sơn. Hồ Hoàn Kiếm có nghĩa là hồ trả gươm, dân gian gọi tắt là Hồ Gươm. Tên gọi đó xuất hiện từ một truyền thuyết thời vua Lê Thái Tổ, thế kỷ XV. Hồ Hoàn Kiếm (còn gọi là Hồ Gươm) đẹp như một lẵng hoa giữa lòng thành phố, được bao quanh bởi các đường phố Đinh Tiên Hoàng, Lê Thái Tổ, Hàng Khay dài khoảng 1.800m. Đền Ngọc Sơn trong lòng Hồ Hoàn Kiếm là một quần thể kiến trúc phong cảnh, có non, có nước, có tháp, có đài, có cầu, có đình, có rừng cây cổ thụ và cỏ hoa bốn mùa, lại có cả một kho văn thơ kim cổ, có cả một bảo tàng về huyền thoại và lịch sử, có cả truyền thống văn hoá và đấu tranh cách mạng, điểm đến của du lịch tâm linh, du lịch nghiên cứu và du lịch sinh thái. <br>\r\n17h30: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist\r\n', 0, '2021-04-21 10:48:14'),
(83, 38, 63, NULL, '14.	Lăng Chủ Tịch – Văn Miếu - Hoàn Kiếm', 'no', '09:30:00', '16:15:00', 'Canary Hanoi Hotel, Quận Hai Bà Trưng', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 450000, 0, 'Hanoitourist tổ chức tour Hà Nội 1 ngày với lịch trình hợp lý tham quan các phố phường và Lăng Chủ Tịch, Bảo Tàng Dân Tộc Học, Văn Miếu - Quốc Tử Giám, Chùa Trấn Quốc, Tháp Rùa Hồ Hoàn Kiếm, ... ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '9h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại Phố Cổ, khởi hành tham quan du lịch Hà Nội 1 ngày.<br>\r\n10h00: Hành trình một ngày ở Hà Nội, không thể bỏ qua cơ hội đến tham quan lăng Bác Hồ - nơi lưu giữ thi hài của Chủ tịch Hồ Chí Minh vĩ đại. Nếu là lần đầu tiên đến thủ đô, chắc hẳn bạn sẽ rất ngỡ ngàng trước khung cảnh của quảng trường Ba Đình rộng lớn. Nằm trong khuôn viên của quảng trường Ba Đình, lăng Bác Hồ tọa lạc tại vị trí lễ đài, nơi người chủ tọa các cuộc mít tinh lớn và là nơi đọc bản tuyên ngôn độc lập đầu tiên trước sự chứng kiến của nhân dân Việt Nam. Bạn sẽ còn được đến khuôn viên phủ Chủ tịch để tham quan khu nhà sàn và ao cá.<br>\r\n11h45: Điểm dừng chân tiếp theo là Chùa Một Cột – ngôi chùa có kiến trúc độc đáo mang dáng dấp của một đài sen mọc lên giữa lòng hồ vuông vắn.<br>\r\n', '12h10: Sau đó quý khách sẽ trở lại Phố Cổ ăn trưa.<br>\r\n14h10: Quý khách đi thăm Văn Miếu - Quốc Tử Giám. Văn Miếu - Quốc Tử Giám là quần thể di tích đa dạng và phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Văn Miếu được xây dựng tháng 10 năm 1070, thờ Khổng Tử, các bậc Hiền triết của Nho giáo và Tư nghiệp Quốc Tử Giám Chu Văn An, người thầy tiêu biểu đạo cao, đức trọng của nền giáo dục Việt Nam. Năm 1076, nhà Quốc Tử Giám được xây kề sau Văn Miếu, ban đầu là nơi học của các Hoàng Tử, sau mở rộng thu nhận cả các học trò giỏi trong thiên hạ. <br>\r\n15h15: Quý khách tự do mua sắm thăm quan, chụp ảnh<br>\r\n', '15h45: Rời Văn Miếu, bạn sẽ được đến tham quan những hình ảnh biểu tượng khác của Hà Nội. Đền Ngọc Sơn xây dựng trên đảo Ngọc trong khuôn viên hồ Hoàn Kiếm, với chiếc cầu Thê Húc màu đỏ bắc qua. Bên cạnh đó, bạn sẽ còn được đến tham quan chùa Một Cột, công trình kiến trúc độc đáo được xây dựng vào thế kỷ thứ X, là một niềm tự hào của người Hà Nội nói riêng và của cả nước nói chung.<br>\r\n16h15: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist\r\n', 2, '2021-04-21 10:52:43'),
(84, 34, 64, NULL, 'Chùa Phúc Khánh – Chùa Láng – Chùa Hà – Chùa Kim Liên', 'no', '07:30:00', '17:45:00', 'Ngã tư sở, Quận Đống Đa', 'Hồ Hoàn Kiếm, Quận Hoàn Kiếm', 540000, 0, 'Hanoitourist tổ chức tour thăm quan lễ phật chùa Hà Nội 1 ngày với lịch trình hợp lý tham quan 6 ngôi chùa linh thiêng nhất định phải đến khi đến Hà Nội. ', 'Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng, … là một trong những điểm đến thu hút du khách trong và ngoài nước nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này!', '7h30: Xe và Hướng dẫn viên của Hanoitourist đón Quý khách tại khách sạn, khởi hành tham quan du lịch chùa ở Hà Nội 1 ngày.<br>\r\n8h45: Chùa Phúc Khánh tọa lạc trên phố Tây Sơn, Hà Nội. Nơi đây từ lâu đã là một địa chỉ tâm linh quen thuộc và nổi tiếng linh thiêng đối với người dân Hà Nội. Phần bởi chùa có kiến trúc cổ kính, thanh tịnh, phần vì chùa nổi tiếng về dâng sao giải hạn đầu năm, thế nên ngay sau thời khắc giao thừa, rất đông người đã tới đây cầu may, hái lộc và xin quẻ cho một năm mới của bản thân và gia đình. 10h45: Nằm trên phố chùa Láng, đây là cũng một trong những ngôi chùa có số lượng tượng thờ nhiều nhất Hà Nội và cả Việt Nam, gồm 198 pho tượng lớn nhỏ, tiêu biểu là tượng Lý Thần Tông (1128 – 1138) ngồi trên ngai vàng và pho tượng Từ Đạo Hạnh đan bằng mây phủ sơn bên ngoài. Vào những ngày đầu xuân, du khách thập phương nườm nượp về đây khói hương nghi ngút và lặng yên hưởng chút dư vị thanh bình hiếm hoi còn sót lại giữa lòng Hà Nội. <br>\r\n', '11h30: Sau đó quý khách sẽ ăn trưa thưởng thức ẩm thực Hà Nội tại nhà hàng trên phố Đường Láng.<br>\r\n13h10: Chùa hà từ lâu đã là ngôi chùa linh thiêng nổi tiếng về cầu tình duyên. Thế nên trong ngày đầu năm Chùa Hà được rất các bạn trẻ, nam thanh nữ tú đi lễ bên cạnh các cụ cao nên và người trung niên. Tòa phật điện của chùa Hà được bố trí theo nhiều lớp. Lớp cao nhất là ba pho Tam thế thường trụ diệu pháp thân, đại diện cho Đức Phật ở thì hiện tại, quá khứ và tương lai.<br> \r\n', '16h25: Chùa Kim Liên nằm phía đông bắc Hồ Tây, thuộc làng Nghi Tàm, phường Quảng An, quận Tây Hồ, Hà Nội. Chùa có kiến trúc mang dáng vẻ cung đình. Toàn bộ cổng chùa được làm bằng gỗ, khá đồ sộ và chạm khắc công phu. Các hoa văn được khắc trên vì kèo, đầu cột, đầu mái chùa, chủ yếu là hình hổ phù, lá và hoa sen, hình rồng cách điệu, mây vờn… Đây là lối kiến trúc có từ thế kỷ 17 trở về trước và chỉ phổ biến ở Đàng Trong. Những ngày lễ Tết, đầu xuân năm mới, người dân lại tìm đến đây để cầu bình an, may mắn.<br>\r\n17h45: Xe và hướng dẫn viên đưa Quý khách về đến điểm đón ban đầu, chia tay Quý khách kết thúc tốt đẹp chuyến thăm quan Hà Nội - Citytour trong ngày cùng với Hanoitourist<br>\r\n', 0, '2021-04-21 10:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `permission` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `user_image`, `email`, `fullname`, `address`, `phone_number`, `permission`, `create_at`) VALUES
('Mr.Rin', '1', 'sencute.jpg', 'rintl260700@gmail.com', 'Rin2', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội1', '09777777772', 'customer', '2021-04-06 11:58:38'),
('Mr.Rin1', 'rintl2607001', '', 'taquang.hskx.2000@gmail.com', 'Trần Quang', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '', 'customer', '2021-04-05 16:59:03'),
('Mr.Rin111', 'rintl2607001', '—Pngtree—cute little panda with butterflies_5053031.png', 'quangtaph12673@fpt.edu.vn', 'Mr Rin', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '', 'customer', '2021-04-05 17:00:16'),
('My', '1', '—Pngtree—cute little panda with butterflies_5053031.png', 'songoku2192@gmail.com', 'MY', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '0968686686', 'admin', '2021-04-20 13:27:46'),
('name', '1', '', 'songoku2192@gmail.com', 'name', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '0968686686', 'customer', '2021-04-21 14:38:01'),
('quangtaph12673', 'rintl260700', '1.jpg', 'songoku2192@gmail.com', 'Mr Rin', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '0968686686', 'admin', '2021-04-03 01:34:09'),
('user1', '1', '1', '1@gmail.com', '1', '1', '1', 'customer', '2021-04-05 16:45:20'),
('www', '1', '', 'taquang.hskx.2000@gmail.com', 'Trần Quang', 'Trịnh Văn Bô - Nam Từ Liêm - Hà Nội', '0968686686', 'customer', '2021-04-19 04:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` int(11) NOT NULL,
  `vourcher_name` varchar(255) NOT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `voucher_image` varchar(255) NOT NULL,
  `voucher_information` text NOT NULL,
  `voucher_number` int(11) NOT NULL,
  `voucher_people` int(11) NOT NULL,
  `voucher_endtime` datetime NOT NULL,
  `voucher_sale` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `vourcher_name`, `voucher_code`, `voucher_image`, `voucher_information`, `voucher_number`, `voucher_people`, `voucher_endtime`, `voucher_sale`, `create_at`) VALUES
(20, 'Voucher SEA', 'HN042021', 'z2441338392494_5a605d581f5a0f320f706967fe43b0e3.jpg', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 5 - 10 người khi đặt tour.<br>\r\n\r\nGiảm 5% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 43, 5, '2021-05-18 00:00:00', 5, '2021-04-21 16:56:56'),
(21, 'Voucher SKY', 'HN052021', '7.1.png', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 11 - 15 người khi đặt tour.<br>\r\n\r\nGiảm 7% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 16, 10, '2021-05-18 00:00:00', 7, '2021-04-21 16:43:40'),
(22, 'Voucher SUN', 'HN052021P', '10.2.png', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 16 - 20 người khi đặt tour.<br>\r\n\r\nGiảm 10% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 7, 16, '2021-05-18 00:00:00', 10, '2021-04-20 16:35:02'),
(25, 'Voucher SILER', 'HN072021', '13.png', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 21 - 25 người khi đặt tour.<br>\r\nGiảm 13% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 11, 21, '2021-05-20 00:00:00', 13, '2021-04-18 15:56:05'),
(26, 'Voucher GOLD', 'HN082021', '15.png', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 26 - 30 người khi đặt tour.<br>\r\nGiảm 15% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 7, 26, '2021-05-25 00:00:00', 15, '2021-04-19 03:35:03'),
(27, 'Voucher DIAMOND', 'HN092021', '18.png', 'Voucher áp dụng quyền lợi giảm giá trực tiếp cho tour 31 - 40 người khi đặt tour.<br>\r\nGiảm 18% cho các tour<br>\r\nKhi áp dụng giảm % của voucher này sẽ không áp dụng đồng thời với các voucher khác.<br>\r\nGiá trị voucher có hiệu lực ngay sau khi khách hàng lựa chọn voucher<br>\r\nƯu đãi giảm giá dịch vụ không được áp dụng đối với các tour khuyến mãi, tour giảm giá đặc biệt khác<br>', 12, 31, '2021-05-28 00:00:00', 18, '2021-04-21 16:58:02'),
(28, 'zeno', 'zeno', '', 'zeno', 1000000, 1000, '2022-04-30 22:55:41', 0, '2021-04-20 16:13:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id_information`);

--
-- Indexes for table `postnews`
--
ALTER TABLE `postnews`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id_tour`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id_information` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `postnews`
--
ALTER TABLE `postnews`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id_tour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
