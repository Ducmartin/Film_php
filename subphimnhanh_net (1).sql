-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2021 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `subphimnhanh.net`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_03_132057_create_tbl_kinds_table', 1),
(5, '2021_11_04_074723_create_tbl_countries_table', 1),
(6, '2021_11_04_075020_create_tbl_translates_table', 1),
(7, '2021_11_04_075239_create_tbl_film_odds_table', 1),
(8, '2021_11_04_075706_create_tbl_film_series_table', 1),
(9, '2021_11_04_075909_create_tbl_film_episodes_table', 1),
(10, '2021_11_21_193203_create_tbl_ratings_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_film` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `name`, `slug`, `count_film`, `created_at`, `updated_at`) VALUES
(1, 'Trung Quốc', 'trung-quoc', 4, NULL, '2021-11-30 08:15:27'),
(2, 'Mỹ', 'my\r\n', 23, NULL, '2021-11-30 07:10:21'),
(3, 'Nhật Bản', 'nhat-ban\r\n', NULL, NULL, '2021-11-27 07:22:40'),
(4, 'Ấn Độ', 'an-do', 8, NULL, '2021-11-30 07:53:21'),
(5, 'Hàn Quốc', 'han-quoc', 7, NULL, '2021-11-30 19:28:24'),
(6, 'Anh', 'anh', 1, NULL, '2021-11-30 07:57:35'),
(7, 'Thái Lan', 'thai-lan', 3, NULL, '2021-11-30 08:11:35'),
(8, 'Khác', 'khac\r\n', 2, NULL, '2021-11-30 07:50:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_film_episodes`
--

CREATE TABLE `tbl_film_episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `film_episode` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_film_episodes`
--

INSERT INTO `tbl_film_episodes` (`id`, `film_id`, `film_episode`, `link`, `created_at`, `updated_at`) VALUES
(4, 8, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615bc2dd569132062b2d1669&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638266411&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:03:01', '2021-11-30 03:03:01'),
(5, 8, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615bf812569132062b2d44e1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638266761&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:08:22', '2021-11-30 03:08:22'),
(6, 8, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615bf814569132062b2d44e7&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267038&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:10:32', '2021-11-30 03:10:32'),
(7, 8, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615bf816569132062b2d44ec&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638266918&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:10:58', '2021-11-30 03:10:58'),
(8, 8, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615d20bb039a0b1e6da96311&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267094&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:11:27', '2021-11-30 03:11:27'),
(9, 8, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615e7b85039a0b1e6da963d3&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267011&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:12:29', '2021-11-30 03:12:29'),
(10, 8, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616014c99e29215972879d05&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267032&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:12:53', '2021-11-30 03:12:53'),
(11, 8, 8, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6162935a9e29215972879ed3&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267063&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:13:19', '2021-11-30 03:13:19'),
(12, 8, 9, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6162935c9e29215972879ed6&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267234&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:13:41', '2021-11-30 03:13:41'),
(13, 8, 10, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6162935e9e29215972879ed9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267301&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:14:50', '2021-11-30 03:14:50'),
(14, 8, 11, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616293619e29215972879edc&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267324&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:15:13', '2021-11-30 03:15:13'),
(15, 8, 12, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616293639e29215972879edf&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267345&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:15:34', '2021-11-30 03:15:34'),
(16, 8, 13, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6168e05241cb69b06c01695d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267369&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:15:58', '2021-11-30 03:15:58'),
(17, 8, 14, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6168e05241cb69b06c016960&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267243&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:16:18', '2021-11-30 03:16:18'),
(18, 8, 15, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616a5e1841cb69b06c016a7d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267265&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:16:38', '2021-11-30 03:16:38'),
(19, 8, 16, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616a5e1841cb69b06c016a80&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267294&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:17:08', '2021-11-30 03:17:08'),
(20, 8, 17, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616bba4541cb69b06c016b4d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267316&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:17:30', '2021-11-30 03:17:30'),
(21, 8, 18, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616d1b935eb90ce272a74bff&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267482&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:18:19', '2021-11-30 03:18:19'),
(22, 8, 19, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616e3a1141cb69b06c016e65&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267532&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:18:40', '2021-11-30 03:18:40'),
(23, 8, 20, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616e3a1241cb69b06c016e68&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267408&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:19:00', '2021-11-30 03:19:00'),
(24, 8, 21, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616f6ac041cb69b06c016f93&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267427&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:19:23', '2021-11-30 03:19:23'),
(25, 8, 22, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616f6ac141cb69b06c016f96&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267456&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:19:54', '2021-11-30 03:19:54'),
(26, 8, 23, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=617120f441cb69b06c01725a&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267478&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:20:25', '2021-11-30 03:20:25'),
(27, 8, 24, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=617120f441cb69b06c01725d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267511&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:20:46', '2021-11-30 03:20:46'),
(28, 8, 25, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6177cf4941cb69b06c0184fe&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267532&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:21:05', '2021-11-30 03:21:05'),
(29, 8, 26, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6177cf4a41cb69b06c018501&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267551&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:21:25', '2021-11-30 03:21:25'),
(30, 8, 27, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6178c522095baf9b6aa5213b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267717&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:21:46', '2021-11-30 03:21:46'),
(31, 8, 28, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6178c522095baf9b6aa5213e&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267594&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:22:07', '2021-11-30 03:22:07'),
(32, 8, 29, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=617b6cca095baf9b6aa522dd&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267613&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:22:26', '2021-11-30 03:22:26'),
(33, 8, 30, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=617b6ccb095baf9b6aa522e0&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267777&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:22:44', '2021-11-30 03:22:44'),
(34, 8, 31, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6180de97095baf9b6aa52382&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267798&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:23:06', '2021-11-30 03:23:06'),
(35, 8, 32, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6180de99095baf9b6aa52385&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267674&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:23:27', '2021-11-30 03:23:27'),
(36, 8, 33, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61839a9d095baf9b6aa523c1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267694&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:23:48', '2021-11-30 03:23:48'),
(37, 8, 34, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61839a9e095baf9b6aa523c4&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267858&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:24:07', '2021-11-30 03:24:07'),
(38, 8, 35, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61839a9e095baf9b6aa523c7&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267733&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:24:26', '2021-11-30 03:24:26'),
(39, 8, 36, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61839a9f095baf9b6aa523ca&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267900&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:24:47', '2021-11-30 03:24:47'),
(40, 8, 37, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f71095baf9b6aa52a15&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267920&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:25:10', '2021-11-30 03:25:10'),
(41, 8, 38, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f71095baf9b6aa52a18&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267940&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:25:29', '2021-11-30 03:25:29'),
(42, 8, 39, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f72095baf9b6aa52a1b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267961&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:25:52', '2021-11-30 03:25:52'),
(43, 8, 40, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f72095baf9b6aa52a1e&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638267988&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 03:26:21', '2021-11-30 03:26:21'),
(44, 9, 1, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/fYdWKWLxiY.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 05:58:12', '2021-11-30 05:58:12'),
(45, 9, 2, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/RpPfvNyOBe.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:09:06', '2021-11-30 06:09:06'),
(46, 9, 3, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/zQNNtBvjPd.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:09:59', '2021-11-30 06:09:59'),
(47, 9, 4, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/UEkGNtJeDm.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:10:32', '2021-11-30 06:10:32'),
(48, 9, 5, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/vMmZkJnFnJ.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:11:12', '2021-11-30 06:11:12'),
(49, 9, 6, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/nSyRauMwbV.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:11:48', '2021-11-30 06:11:48'),
(50, 9, 7, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/qribzifFcb.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:12:27', '2021-11-30 06:12:27'),
(51, 9, 8, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/kdgOYreAiu.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:13:05', '2021-11-30 06:13:05'),
(52, 9, 9, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/XBdAuIlaMz.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:13:36', '2021-11-30 06:13:36'),
(53, 9, 10, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://ok.ru/videoembed/2739948423877?autoplay=1\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\" __idm_id__=\"1344651265\"></iframe>', '2021-11-30 06:14:20', '2021-11-30 06:14:20'),
(54, 9, 11, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/SzQbaqxXim.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:14:51', '2021-11-30 06:14:51'),
(55, 9, 12, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/etXSUwEfYd.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:15:22', '2021-11-30 06:15:22'),
(56, 9, 13, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/oAYSVeVFLI.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:15:59', '2021-11-30 06:15:59'),
(57, 9, 14, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/ypmeolrZQY.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:16:35', '2021-11-30 06:16:35'),
(58, 10, 1, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/HvkIWmcwQq.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:29:00', '2021-11-30 06:29:00'),
(59, 9, 15, '<iframe id=\"iframe-player\" class=\"metaframe rptss\" src=\"https://zembed.net/v/HvkIWmcwQq.html\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; encrypted-media\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:31:55', '2021-12-06 01:09:44'),
(60, 11, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f74095baf9b6aa52a27&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279143&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:34:52', '2021-11-30 06:34:52'),
(61, 11, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f74095baf9b6aa52a2a&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279328&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:35:19', '2021-11-30 06:35:19'),
(62, 11, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6194547d095baf9b6aa52c2d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279360&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:35:51', '2021-11-30 06:35:51'),
(63, 11, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6194547e095baf9b6aa52c30&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279237&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:36:13', '2021-11-30 06:36:13'),
(64, 11, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619c4182095baf9b6aa52de8&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279262&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:36:39', '2021-11-30 06:36:39'),
(65, 11, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a44c2b095baf9b6aa532a7&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279431&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:37:01', '2021-11-30 06:37:01'),
(66, 11, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a5c44c095baf9b6aa53352&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279453&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:37:22', '2021-11-30 06:37:22'),
(67, 12, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6187ab83095baf9b6aa52752&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279715&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:44:58', '2021-11-30 06:44:58'),
(68, 12, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6187ab83095baf9b6aa52755&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279788&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:45:24', '2021-11-30 06:45:24'),
(69, 12, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619078ad095baf9b6aa52ac2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279959&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:45:46', '2021-11-30 06:45:46'),
(70, 12, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6191bc62095baf9b6aa52be8&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279981&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:46:07', '2021-11-30 06:46:07'),
(71, 12, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6198f978095baf9b6aa52d34&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279999&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:46:26', '2021-11-30 06:46:26'),
(72, 12, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619a2354095baf9b6aa52d44&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279871&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:46:53', '2021-11-30 06:46:53'),
(73, 12, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a20260095baf9b6aa531c2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280043&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:47:10', '2021-11-30 06:47:10'),
(74, 12, 8, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a44c28095baf9b6aa53292&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638279916&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:47:30', '2021-11-30 06:47:30'),
(75, 13, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=615292e6569132062b23d479&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280186&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:52:09', '2021-11-30 06:52:09'),
(76, 13, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6152977e039a0b1e6da8b958&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280364&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:52:30', '2021-11-30 06:52:30'),
(77, 13, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616293659e29215972879ee2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280235&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:52:50', '2021-11-30 06:52:50'),
(78, 13, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616293679e29215972879ee5&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280403&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:53:12', '2021-11-30 06:53:12'),
(79, 13, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6163c08c9e2921597287a05d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280279&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:53:31', '2021-11-30 06:53:31'),
(80, 13, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616501a341cb69b06c0163f9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280301&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:53:53', '2021-11-30 06:53:53'),
(81, 13, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616d1b845eb90ce272a74be9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280320&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:54:19', '2021-11-30 06:54:19'),
(82, 13, 8, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=616e3a1241cb69b06c016e6b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280492&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:54:40', '2021-11-30 06:54:40'),
(83, 13, 9, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6176298841cb69b06c018338&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280364&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:54:58', '2021-11-30 06:54:58'),
(84, 13, 10, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6177cf4c41cb69b06c018513&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280381&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:55:16', '2021-11-30 06:55:16'),
(85, 13, 11, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6180dfbb095baf9b6aa52391&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280547&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:55:33', '2021-11-30 06:55:33'),
(86, 13, 12, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6180de9d095baf9b6aa5238b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280563&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:55:51', '2021-11-30 06:55:51'),
(87, 13, 13, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f73095baf9b6aa52a21&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280435&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:56:07', '2021-11-30 06:56:07'),
(88, 13, 14, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f73095baf9b6aa52a24&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280598&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:58:59', '2021-11-30 06:58:59'),
(89, 13, 15, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6191bc66095baf9b6aa52c00&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280625&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:59:18', '2021-11-30 06:59:18'),
(90, 13, 16, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6194547d095baf9b6aa52c2a&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280646&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 06:59:45', '2021-11-30 06:59:45'),
(91, 13, 17, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619aea1d095baf9b6aa52d9b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280817&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:00:09', '2021-11-30 07:00:09'),
(92, 13, 18, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619c4182095baf9b6aa52de5&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280843&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:00:31', '2021-11-30 07:00:31'),
(93, 13, 19, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a44c2a095baf9b6aa532a4&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280716&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:00:56', '2021-11-30 07:00:56'),
(94, 13, 20, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a5c44b095baf9b6aa5334f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280742&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:01:17', '2021-11-30 07:01:17'),
(95, 14, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f6e095baf9b6aa52a06&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281117&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:05:10', '2021-11-30 07:05:10'),
(96, 14, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618b3f6f095baf9b6aa52a09&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638280997&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:05:30', '2021-11-30 07:05:30'),
(97, 14, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61945478095baf9b6aa52c0c&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281019&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:05:52', '2021-11-30 07:05:52'),
(98, 14, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61945479095baf9b6aa52c0f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281184&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:06:10', '2021-11-30 07:06:10'),
(99, 14, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619c417f095baf9b6aa52dd6&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281205&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:06:31', '2021-11-30 07:06:31'),
(100, 14, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e8095baf9b6aa53096&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281078&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:06:50', '2021-11-30 07:06:50'),
(101, 14, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a5c44a095baf9b6aa53343&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281098&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:07:14', '2021-11-30 07:07:14'),
(102, 15, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e2095baf9b6aa53072&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281458&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:11:03', '2021-11-30 07:11:03'),
(103, 15, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e3095baf9b6aa53075&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281357&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:11:30', '2021-11-30 07:11:30'),
(104, 15, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e3095baf9b6aa53078&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281377&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:11:52', '2021-11-30 07:11:52'),
(105, 15, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e4095baf9b6aa5307b&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281401&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:12:13', '2021-11-30 07:12:13'),
(106, 15, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e4095baf9b6aa5307e&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281419&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:12:32', '2021-11-30 07:12:32'),
(107, 16, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea74adec9127f4ac6e0f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284185&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:58:46', '2021-11-30 07:58:46'),
(108, 16, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea75adec9127f4ac6e13&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284384&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:59:33', '2021-11-30 07:59:33'),
(109, 16, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea75adec9127f4ac6e17&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284406&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 07:59:54', '2021-11-30 07:59:54'),
(110, 16, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea75adec9127f4ac6e20&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284282&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:00:16', '2021-11-30 08:00:16'),
(111, 16, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea76adec9127f4ac6e26&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284449&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:00:35', '2021-11-30 08:00:35'),
(112, 16, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea76adec9127f4ac6e2c&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284322&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:00:53', '2021-11-30 08:00:53'),
(113, 16, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea77adec9127f4ac6e31&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284484&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:01:12', '2021-11-30 08:01:12'),
(114, 16, 8, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128ea77adec9127f4ac6e35&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284351&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:01:31', '2021-11-30 08:01:31'),
(115, 17, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6144058b666fe2bbf0a15921&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285366&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:16:05', '2021-11-30 08:16:05'),
(116, 17, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61440daa666fe2bbf0a1679f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285251&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:16:25', '2021-11-30 08:16:25'),
(117, 17, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61441392666fe2bbf0a171c9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285417&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:16:46', '2021-11-30 08:16:46'),
(118, 17, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614401ca666fe2bbf0a15268&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285430&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:17:00', '2021-11-30 08:17:00'),
(119, 17, 5, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61441484666fe2bbf0a17386&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285298&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:17:12', '2021-11-30 08:17:12'),
(120, 17, 6, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61441657666fe2bbf0a176f4&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285461&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:17:30', '2021-11-30 08:17:30'),
(121, 17, 7, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61455b027fbbb6c7e1f7337f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285474&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:17:44', '2021-11-30 08:17:44'),
(122, 17, 8, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61455b027fbbb6c7e1f73382&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285342&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:17:57', '2021-11-30 08:17:57'),
(123, 17, 9, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6146b3cf7fbbb6c7e1f73402&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285361&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:18:14', '2021-11-30 08:18:14'),
(124, 17, 10, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6146b3cf7fbbb6c7e1f73405&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285381&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:18:35', '2021-11-30 08:18:35'),
(125, 17, 11, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614e6bcea3bf0b3c29e774ce&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285393&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:18:50', '2021-11-30 08:18:50'),
(126, 17, 12, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614e6bcea3bf0b3c29e774d1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285415&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:19:06', '2021-11-30 08:19:06'),
(127, 17, 13, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614feda5a3bf0b3c29e777d3&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285576&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:19:24', '2021-11-30 08:19:24'),
(128, 17, 14, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614feda6a3bf0b3c29e777d6&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285442&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:19:38', '2021-11-30 08:19:38');
INSERT INTO `tbl_film_episodes` (`id`, `film_id`, `film_episode`, `link`, `created_at`, `updated_at`) VALUES
(129, 17, 15, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614feda7a3bf0b3c29e777dc&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285610&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:19:55', '2021-11-30 08:19:55'),
(130, 17, 16, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=614feda7a3bf0b3c29e777dc&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285610&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:22:19', '2021-11-30 08:22:19'),
(131, 17, 17, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61568c65039a0b1e6da8c5e5&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285773&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:22:41', '2021-11-30 08:22:41'),
(132, 17, 18, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61568c65039a0b1e6da8c5e8&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285785&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:22:55', '2021-11-30 08:22:55'),
(133, 17, 19, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6157dce5039a0b1e6da8d9f1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285799&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:23:11', '2021-11-30 08:23:11'),
(134, 17, 20, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6157dce5039a0b1e6da8d9f4&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285669&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:23:29', '2021-11-30 08:23:29'),
(135, 17, 21, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61594e9a039a0b1e6da8ff4f&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285696&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:23:51', '2021-11-30 08:23:51'),
(136, 17, 22, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61594e9a039a0b1e6da8ff52&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285717&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 08:24:09', '2021-11-30 08:24:09'),
(137, 18, 1, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6189119b095baf9b6aa529d7&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638325779&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 19:29:29', '2021-11-30 19:29:29'),
(138, 18, 2, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6191bc5e095baf9b6aa52bd0&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638325655&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 19:29:49', '2021-11-30 19:29:49'),
(139, 18, 3, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619c417f095baf9b6aa52dd3&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638325675&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 19:30:09', '2021-11-30 19:30:09'),
(140, 18, 4, '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a44c24095baf9b6aa53277&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638325693&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', '2021-11-30 19:30:28', '2021-11-30 19:30:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_film_odds`
--

CREATE TABLE `tbl_film_odds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `total_rating` int(11) NOT NULL,
  `view` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind_id` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `translate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_film_odds`
--

INSERT INTO `tbl_film_odds` (`id`, `name`, `slug`, `intro`, `rate`, `total_rating`, `view`, `photo`, `link`, `kind_id`, `country_id`, `translate_id`, `created_at`, `updated_at`) VALUES
(9, 'Clifford: Chú Chó Đỏ Khổng Lồ – Clifford the Big Red Dog', 'clifford-chu-cho-do-khong-lo-clifford-the-big-red-dog', '<article id=\"post-110037\" class=\"item-content\">\r\n<h2>Clifford: Ch&uacute; Ch&oacute; Đỏ Khổng Lồ - Clifford the Big Red Dog, Clifford the Big Red Dog 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">T&igrave;nh y&ecirc;u của một c&ocirc; g&aacute;i trẻ d&agrave;nh cho ch&uacute; ch&oacute; con nhỏ t&ecirc;n Clifford đ&atilde; khiến ch&uacute; ch&oacute; ph&aacute;t triển với k&iacute;ch thước khổng lồ.</span></p>\r\n<div class=\"at-below-post addthis_tool\" data-url=\"https://phimgii.net/clifford-chu-cho-do-khong-lo-clifford-the-big-red-dog/\">&nbsp;</div>\r\n<div class=\"at-below-post-recommended addthis_tool\">&nbsp;</div>\r\n</article>\r\n<div class=\"item-content-toggle\">&nbsp;</div>', 8.4, 1, 7, 'public/uploads/photo/chu_cho_do.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a20255095baf9b6aa53177&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638255077&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tinh-cam,phieu-luu,chieu-rap', 2, 2, '2021-11-29 23:43:13', '2021-12-01 18:39:29'),
(10, 'Venom 2: Đối Mặt Tử Thù – Venom 2: Let There Be Carnage', 'venom-2-doi-mat-tu-thu-venom-2-let-there-be-carnage', '<h2>Venom 2: Đối Mặt Tử Th&ugrave; - Venom 2: Let There Be Carnage, Venom 2: Let There Be Carnage 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Eddie Brock cố gắng phục hồi sự nghiệp của m&igrave;nh bằng c&aacute;ch phỏng vấn kẻ giết người h&agrave;ng loạt Cletus Kasady, kẻ trở th&agrave;nh chủ nh&acirc;n của Cuộc t&agrave;n s&aacute;t symbiote v&agrave; trốn tho&aacute;t khỏi nh&agrave; t&ugrave; sau một vụ h&agrave;nh quyết thất bạ</span></p>', 8, 1, 6, 'public/uploads/photo/doi_mat_voi_tu_thu.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619cbcbe095baf9b6aa52e45&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638254748&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,kinh-di,vien-tuong,tam-ly,chieu-rap', 2, 1, '2021-11-29 23:46:07', '2021-11-30 20:07:39'),
(11, 'Đêm Trước Ở Soho – Last Night in Soho', 'dem-truoc-o-soho-last-night-in-soho', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đ&ecirc;m Trước Ở Soho - Last Night in Soho, Last Night in Soho 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một nh&agrave; thiết kế thời trang đầy tham vọng c&oacute; thể bước v&agrave;o những năm 1960 một c&aacute;ch b&iacute; ẩn, nơi c&ocirc; ấy gặp một ca sĩ wannabe rực rỡ. Nhưng vẻ h&agrave;o nho&aacute;ng kh&ocirc;ng phải l&agrave; tất cả v&agrave; những giấc mơ trong qu&aacute; khứ bắt đầu rạn nứt v&agrave; biến th&agrave;nh một thứ g&igrave; đ&oacute; đen tối hơn.</span></p>', 7.8, 1, NULL, 'public/uploads/photo/dem_truoc_o_soho.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619b5523095baf9b6aa52db1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638255148&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'kinh-di,vien-tuong,tam-ly,le,chieu-rap', 2, 2, '2021-11-29 23:54:20', '2021-11-29 23:54:20'),
(12, 'Ở Nhà Một Mình 6 – Home Sweet Home Alone', 'o-nha-mot-minh-6-home-sweet-home-alone', '<h2>&nbsp; &nbsp; &nbsp;Ở Nh&agrave; Một M&igrave;nh 6 - Home Sweet Home Alone, Home Sweet Home Alone 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một cặp vợ chồng cố gắng cướp lại một vật gia truyền c&oacute; gi&aacute; trị từ một đứa trẻ rắc rối.</span></p>', 9, 1, NULL, 'public/uploads/photo/o_nha_1_minh_6.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5d2095baf9b6aa52f9c&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638255227&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,hai-huoc,le,chieu-rap', 2, 1, '2021-11-29 23:57:34', '2021-11-29 23:57:34'),
(13, 'Lệnh Truy Nã Đỏ – Red Notice Red Notice', 'lenh-truy-na-do-red-notice-red-notice', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lệnh Truy N&atilde; Đỏ - Red Notice, Red Notice 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Một đặc vụ Interpol theo d&otilde;i t&ecirc;n trộm nghệ thuật bị truy n&atilde; gắt gao nhất thế giới.</span></p>', 9.2, 1, NULL, 'public/uploads/photo/truy_na_do.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5d8095baf9b6aa52fc9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638255601&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,tinh-cam,hinh-su,phieu-luu,tam-ly,chieu-rap', 2, 1, '2021-11-30 00:00:40', '2021-11-30 00:00:40'),
(14, 'Hậu Tận Thế – Finch', 'hau-tan-the-finch', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hậu Tận Thế - Finch, Finch 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Tr&ecirc;n một tr&aacute;i đất hậu khải huyền, một người m&aacute;y, được chế tạo để bảo vệ cuộc sống của ch&uacute; ch&oacute; y&ecirc;u qu&yacute; của người tạo ra m&igrave;nh, t&igrave;m hiểu về cuộc sống, t&igrave;nh y&ecirc;u, t&igrave;nh bạn v&agrave; &yacute; nghĩa của việc trở th&agrave;nh con người.</span></p>', 8.4, 1, 2, 'public/uploads/photo/hau_tan_the.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5cf095baf9b6aa52f8d&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638255786&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,vien-tuong,hinh-su,chieu-rap', 2, 1, '2021-11-30 00:03:12', '2021-11-30 00:16:50'),
(15, 'Điệp Viên 007: Không Phải Lúc Chết – James Bond 25: No Time to Die', 'diep-vien-007-khong-phai-luc-chet-james-bond-25-no-time-to-die', '<h2>&nbsp; Điệp Vi&ecirc;n 007: Kh&ocirc;ng Phải L&uacute;c Chết - James Bond 25: No Time to Die, James Bond 25: No Time to Die 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">James Bond đ&atilde; rời qu&acirc;n ngũ. Sự b&igrave;nh y&ecirc;n của anh ấy chỉ tồn tại trong thời gian ngắn khi Felix Leiter, một người bạn cũ từ CIA, đến nhờ gi&uacute;p đỡ, dẫn Bond v&agrave;o dấu vết của một nh&acirc;n vật phản diện b&iacute; ẩn được trang bị c&ocirc;ng nghệ mới nguy hiểm.</span></p>', 7.6, 1, NULL, 'public/uploads/photo/007.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5d6095baf9b6aa52fba&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638256837&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,hinh-su,le', 2, 1, '2021-11-30 00:20:51', '2021-11-30 00:20:51'),
(16, 'Nữ Hoàng Lừa Đảo – Queenpins', 'nu-hoang-lua-dao-queenpins', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; Nữ Ho&agrave;ng Lừa Đảo - Queenpins, Queenpins 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một cặp b&agrave; nội trợ tạo ra một vụ lừa đảo phiếu giảm gi&aacute; trị gi&aacute; 40 triệu đ&ocirc; la.</span></p>', 7.2, 1, NULL, 'public/uploads/photo/nu_hoang_lua_dao.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5d8095baf9b6aa52fc6&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638256992&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,hinh-su,le', 2, 1, '2021-11-30 00:23:44', '2021-11-30 00:23:44'),
(17, 'Từ Khi Có Anh 3 – After We Fell', 'tu-khi-co-anh-3-after-we-fell', '<article id=\"post-103044\" class=\"item-content\">\r\n<h2>Từ Khi C&oacute; Anh 3 - After We Fell, After We Fell 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Ngay khi Tessa đưa ra quyết định lớn nhất trong cuộc đời m&igrave;nh, mọi thứ đều thay đổi. Những tiết lộ về gia đ&igrave;nh của c&ocirc; ấy, v&agrave; sau đ&oacute; l&agrave; Hardin, n&eacute;m tất cả những g&igrave; họ biết trước đ&acirc;y v&agrave;o sự nghi ngờ v&agrave; khiến tương lai kh&oacute; gi&agrave;nh được của họ với nhau kh&oacute; khẳng định hơn.</span></p>\r\n<div class=\"at-below-post addthis_tool\" data-url=\"https://phimgii.net/tu-khi-co-anh-3-after-we-fell/\">&nbsp;</div>\r\n<div class=\"at-below-post-recommended addthis_tool\">&nbsp;</div>\r\n</article>\r\n<div class=\"item-content-toggle\">&nbsp;</div>', 6.9, 1, 2, 'public/uploads/photo/tu_khi_co_anh.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5cc095baf9b6aa52f78&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257241&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'tinh-cam,tam-ly,le', 2, 1, '2021-11-30 00:27:30', '2021-11-30 06:20:56'),
(18, 'Cảnh Báo – Warning', 'canh-bao-warning', '<h2>Cảnh B&aacute;o - Warning, Warning 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">&nbsp;&Yacute; nghĩa của cuộc sống được kh&aacute;m ph&aacute; th&ocirc;ng qua nhiều cuộc sống được kết nối với nhau được đặt ra trong tương lai gần.</span></p>', 7.4, 1, NULL, 'public/uploads/photo/canh_bao.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5cd095baf9b6aa52f81&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257407&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,kinh-di,vien-tuong,chieu-rap', 2, 1, '2021-11-30 00:30:23', '2021-11-30 00:30:23'),
(19, 'Hành Tinh Cát – Dune', 'hanh-tinh-cat-dune', '<h2>H&agrave;nh Tinh C&aacute;t - Dune, Dune 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Chuyển thể từ tiểu thuyết khoa học viễn tưởng của Frank Herbert, kể về con trai của một gia đ&igrave;nh qu&yacute; tộc quyền lực với việc bảo vệ t&agrave;i sản qu&yacute; gi&aacute; nhất v&agrave; nguy&ecirc;n tố quan trọng nhất trong thi&ecirc;n h&agrave;.</span></p>', 8, 1, NULL, 'public/uploads/photo/hanh_tinh_cat.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5ce095baf9b6aa52f84&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257382&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,phieu-luu,tam-ly,le', 2, 1, '2021-11-30 00:32:20', '2021-11-30 00:32:20'),
(20, 'Chim Cổ Đỏ Robin – Robin Robin', 'chim-co-do-robin-robin-robin', '<article id=\"post-110061\" class=\"item-content\">\r\n<h2>Chim Cổ Đỏ Robin - Robin Robin, Robin Robin 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Trong bộ phim ngắn chuyển động n&agrave;y, một con chim được chuột nu&ocirc;i bắt đầu đặt c&acirc;u hỏi về nơi m&igrave;nh thuộc về v&agrave; bắt đầu một h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; bản th&acirc;n đầy t&aacute;o bạo.</span></p>\r\n<div class=\"at-below-post addthis_tool\" data-url=\"https://phimgii.net/chim-co-do-robin-robin-robin/\">&nbsp;</div>\r\n<div class=\"at-below-post-recommended addthis_tool\">&nbsp;</div>\r\n</article>\r\n<div class=\"item-content-toggle\">&nbsp;</div>', 8.4, 1, NULL, 'public/uploads/photo/chim_co_robin.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a20267095baf9b6aa531ef&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257643&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,phieu-luu,hoat-hinh,le', 2, 1, '2021-11-30 00:34:55', '2021-11-30 00:34:55'),
(21, 'Giáng Sinh Cuối Cùng – Spencer', 'giang-sinh-cuoi-cung-spencer', '<h2>Gi&aacute;ng Sinh Cuối C&ugrave;ng - Spencer, Spencer 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Trong kỳ nghỉ Gi&aacute;ng sinh c&ugrave;ng gia đ&igrave;nh ho&agrave;ng gia tại điền trang Sandringham ở Norfolk, Anh, Diana Spencer, đang vật lộn với c&aacute;c vấn đề sức khỏe t&acirc;m thần, quyết định kết th&uacute;c cuộc h&ocirc;n nh&acirc;n k&eacute;o d&agrave;i một thập kỷ với Th&aacute;i tử Charles.</span></p>', 6, 1, NULL, 'public/uploads/photo/giang_sinh_cuoi_cung.png', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17ec095baf9b6aa530b1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257692&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'tam-ly,le', 2, 1, '2021-11-30 00:37:26', '2021-11-30 00:37:26'),
(22, 'Adele One Night Only', 'adele-one-night-only', '<article id=\"post-110013\" class=\"item-content\">\r\n<h2>Adele One Night Only, Adele One Night Only 2021 Full</h2>\r\n<p>B&ecirc;n cạnh buổi tr&igrave;nh diễn những ca kh&uacute;c nổi tiếng của m&igrave;nh, ca sĩ Adele sẽ t&acirc;m sự về cuộc sống sau ly h&ocirc;n, b&iacute; k&iacute;p giảm c&acirc;n, trong chương tr&igrave;nh phỏng vấn độc quyền c&oacute; t&ecirc;n gọi Adele: One Night Only.</p>\r\n<div class=\"at-below-post addthis_tool\" data-url=\"https://phimgii.net/adele-one-night-only/\">&nbsp;</div>\r\n<div class=\"at-below-post-recommended addthis_tool\">&nbsp;</div>\r\n</article>\r\n<div class=\"item-content-toggle\">&nbsp;</div>', 7.6, 1, NULL, 'public/uploads/photo/adele.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619f17e5095baf9b6aa53081&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257930&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,le', 2, 1, '2021-11-30 00:39:49', '2021-11-30 00:39:49'),
(23, 'Đám Con Hư Đốn – Pourris gâtés (Spoiled Brats)', 'dam-con-hu-don-pourris-gates-spoiled-brats', '<h2>Đ&aacute;m Con Hư Đốn - Pourris g&acirc;t&eacute;s (Spoiled Brats), Pourris g&acirc;t&eacute;s (Spoiled Brats) 2021 Full</h2>\r\n<p>Ba anh em bị chiều hư buộc phải bươn chải kiếm sống sau khi &ocirc;ng bố gi&agrave;u c&oacute; muốn tốt cho con n&ecirc;n giả vờ m&igrave;nh đ&atilde; mất tất cả để dạy họ một b&agrave;i học.</p>', 7.8, 1, NULL, 'public/uploads/photo/dam_con_hu_don.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a20266095baf9b6aa531ec&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638257968&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tinh-cam,tam-ly,le', 2, 1, '2021-11-30 00:41:56', '2021-11-30 00:41:56'),
(24, 'Hòn Đảo Bí Ẩn – Izla (Only You)', 'hon-dao-bi-an-izla-only-you', '<article id=\"post-110046\" class=\"item-content\">\r\n<h2>H&ograve;n Đảo B&iacute; Ẩn - Izla (Only You), Izla 2021 Full</h2>\r\n<p>Hai anh em đồng h&agrave;nh c&ugrave;ng một nh&oacute;m vlogger tr&ecirc;n h&agrave;nh tr&igrave;nh t&igrave;m kiếm h&ograve;n đảo th&acirc;̀n thoại. Nhưng khi họ t&igrave;m thấy n&oacute;, những bí m&acirc;̣t hi&ecirc;̉m ác l&acirc;̀n lượt được l&acirc;̣t mở.</p>\r\n<div class=\"at-below-post addthis_tool\" data-url=\"https://phimgii.net/hon-dao-bi-an-izla-only-you/\">&nbsp;</div>\r\n<div class=\"at-below-post-recommended addthis_tool\">&nbsp;</div>\r\n</article>\r\n<div class=\"item-content-toggle\">&nbsp;</div>', 8.9, 1, NULL, 'public/uploads/photo/hon_dao_bi_an.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61a2025a095baf9b6aa53198&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638258235&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,kinh-di,vien-tuong,phieu-luu,le,chieu-rap', 2, 1, '2021-11-30 00:44:00', '2021-11-30 00:44:00'),
(25, 'Olaf Presents', 'olaf-presents', '<h2>Olaf Presents, Olaf Presents 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Người tuyết của Frozen, Olaf, kể những c&acirc;u chuyện cổ điển của Disney.</span></p>', 6.7, 1, NULL, 'public/uploads/photo/olaf.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619c4181095baf9b6aa52de2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638258368&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hoat-hinh,le', 2, 1, '2021-11-30 00:46:10', '2021-11-30 00:46:10'),
(26, 'Yêu Không Đo Đếm – Just Short Of Perfect', 'yeu-khong-do-dem-just-short-of-perfect', '<p>Một luật sư đ&atilde; ly h&ocirc;n phải l&ograve;ng một b&aacute;c sĩ tim mạch l&ocirc;i cuốn. Nhưng khi sự kh&aacute;c biệt về quy m&ocirc; của họ dẫn đến x&iacute;ch m&iacute;ch trong gia đ&igrave;nh, liệu c&ocirc; ấy c&oacute; sẵn s&agrave;ng lắng nghe tr&aacute;i tim m&igrave;nh?</p>', 8.7, 1, NULL, 'public/uploads/photo/yeu_khong_do_dem.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619aea1e095baf9b6aa52da3&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638258529&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'tinh-cam,le', 2, 1, '2021-11-30 00:48:49', '2021-11-30 00:48:49'),
(27, 'Công Chúa Thế Vai 3: Chuyện Tình Ngôi Sao – The Princess Switch 3: Romancing the Star', 'cong-chua-the-vai-3-chuyen-tinh-ngoi-sao-the-princess-switch-3-romancing-the-star', '<h2>C&ocirc;ng Ch&uacute;a Thế Vai 3: Chuyện T&igrave;nh Ng&ocirc;i Sao - The Princess Switch 3: Romancing the Star, The Princess Switch 3: Romancing the Star 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Khi một di vật v&ocirc; gi&aacute; bị đ&aacute;nh cắp, Nữ ho&agrave;ng Margaret v&agrave; C&ocirc;ng ch&uacute;a Stacy tranh thủ sự gi&uacute;p đỡ của Fiona, anh họ của Margaret, c&ugrave;ng với một người đ&agrave;n &ocirc;ng trong qu&aacute; khứ của c&ocirc; ấy để lấy lại n&oacute;, với sự l&atilde;ng mạn v&agrave; dẫn đến một sự thay đổi rất bất ngờ.</span></p>', 8.8, 1, NULL, 'public/uploads/photo/cong_chua_the_vai.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619890b7095baf9b6aa52cff&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638258510&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tam-ly,le', 2, 1, '2021-11-30 00:51:02', '2021-11-30 00:51:02'),
(28, 'Chị Dâu Trở Về – Return Of Sister-In-Law', 'chi-dau-tro-ve-return-of-sister-in-law', '<h2>Chị D&acirc;u Trở Về - Return Of Sister-In-Law, Return Of Sister-In-Law 2021 Full</h2>\r\n<p>Chị D&acirc;u Trở Về &ndash; Return of Sister-in-law c&ocirc; gi&aacute; Thanh Trừng từng l&agrave; một thiếu nữ xinh đẹp tốt bụng, nhưng khi người th&acirc;n của c&ocirc; bị s&aacute;t hại. C&ocirc; đ&atilde; quyết t&acirc;m tập luyện để trở th&agrave;nh một nữ s&aacute;t thủ chuy&ecirc;n nghiệp v&agrave; b&aacute;o th&ugrave;. Sau khi c&ocirc; giết hại nhiều người, c&ocirc; quyết định rửa tay g&aacute;c kiếm v&agrave; bỏ &yacute; định trả th&ugrave;, v&agrave; sống b&igrave;nh y&ecirc;n trong trại An Lạc. Tại đ&acirc;y, c&ocirc; gặp gỡ A Bang v&agrave; kết h&ocirc;n sống hạnh ph&uacute;c với anh ấy, Thanh Trừng cũng phải giả th&agrave;nh một c&ocirc; g&aacute;i ngoan hiền v&agrave; che giấu đi qu&aacute; khứ của m&igrave;nh. Thế nhưng, một h&ocirc;m giang hồ lại trỗi dậy v&agrave; tấn c&ocirc;ng trại An Lạc, v&igrave; thế Thanh Trừng đ&agrave;nh phải quay trở lại con đường cũ để bảo vệ sự an to&agrave;n cho An Lạc.</p>', 8.6, 1, NULL, 'public/uploads/photo/chi_dau_tro_ve.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61960f7d095baf9b6aa52c51&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638258798&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,hai-huoc,hinh-su,tam-ly,le', 1, 3, '2021-11-30 00:53:12', '2021-11-30 00:53:12'),
(29, 'Ngôi Nhà Về Đêm – The Night House', 'ngoi-nha-ve-dem-the-night-house', '<h2>Ng&ocirc;i Nh&agrave; Về Đ&ecirc;m - The Night House, The Night House 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một g&oacute;a phụ bắt đầu kh&aacute;m ph&aacute; ra những b&iacute; mật đ&aacute;ng lo ngại của người chồng mới qua đời của m&igrave;nh.</span></p>', 7.6, 1, NULL, 'public/uploads/photo/ngoi_nha_ve_dem.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619da5e0095baf9b6aa52fe1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638265505&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'kinh-di,vien-tuong,chieu-rap', 2, 1, '2021-11-30 02:48:43', '2021-11-30 02:48:43'),
(30, 'Chuyện Tình Thời Chiến – The Ottoman Lieutenant', 'chuyen-tinh-thoi-chien-the-ottoman-lieutenant', '<h2>Chuyện T&igrave;nh Thời Chiến - The Ottoman Lieutenant, 2017 FULL</h2>\r\n<div class=\"desc\"><span class=\"title-english\" title=\"Phim Chuyện T&igrave;nh Thời Chiến - The Ottoman Lieutenant\">THE OTTOMAN LIEUTENANT</span>&nbsp;:&nbsp;The Ottoman Lieutenant 2017 l&agrave; một c&acirc;u chuyện t&igrave;nh giữa một y t&aacute; người Mỹ l&yacute; tưởng ( Hera Hilmar ) v&agrave; một sĩ quan Thổ Nhĩ Kỳ ( Michiel Huisman ) trong Thế chiến thứ nhất. Một người phụ nữ xinh đẹp, mạnh mẽ, nản l&ograve;ng v&igrave; bất c&ocirc;ng ở nh&agrave;, đ&atilde; rời Hoa Kỳ sau khi gặp Jude, một b&aacute;c sĩ người Mỹ điều h&agrave;nh một sứ mệnh y tế từ xa trong Đế chế Ottoman &ndash; một thế giới kỳ lạ v&agrave; nguy hiểm, v&agrave; gần bờ biển Về những g&igrave; sắp trở th&agrave;nh Thế chiến thứ nhất. Ở đ&oacute;, c&ocirc; t&igrave;m thấy sự trung th&agrave;nh của m&igrave;nh đối với Jude v&agrave; người s&aacute;ng lập sứ mệnh đ&atilde; thử nghiệm khi c&ocirc; y&ecirc;u người th&ugrave; địch nhận thức của họ, một trung &uacute;y trong Qu&acirc;n đội Ho&agrave;ng gia Ottoman. B&acirc;y giờ, với c&aacute;c lực lượng qu&acirc;n x&acirc;m lược trước cửa nh&agrave; của họ, v&agrave; thế giới sắp rơi v&agrave;o &hellip;</div>', 7.8, 1, NULL, 'public/uploads/photo/chuyen_tinh_thoi_chien.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61841443338c714d7d1ea5c9&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638281766&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,tinh-cam,chien-tranh', 8, 1, '2021-11-30 07:16:13', '2021-11-30 07:16:13'),
(31, 'Hành Trình Tìm Công Lý – Thimmarusu: Assignment Vali', 'hanh-trinh-tim-cong-ly-thimmarusu-assignment-vali', '<h2>H&agrave;nh Tr&igrave;nh T&igrave;m C&ocirc;ng L&yacute; - Thimmarusu: Assignment Vali, Thimmarusu: Assignment Vali 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một luật sư chiến đấu với tham nhũng cả trong v&agrave; ngo&agrave;i ph&ograve;ng xử &aacute;n.</span></p>', 6.5, 1, NULL, 'public/uploads/photo/hanh_trinh_tim_lai_cong_ly.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61397370da6e9c4e338e61a5&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638282727&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hinh-su,tam-ly,le', 4, 1, '2021-11-30 07:34:23', '2021-11-30 07:34:23'),
(32, 'Cuộc chiến Kargil – Shershaah', 'cuoc-chien-kargil-shershaah', '<h2>Cuộc chiến Kargil - Shershaah, Shershaah 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Đ&acirc;y l&agrave; c&acirc;u chuyện về một người l&iacute;nh Ấn Độ dũng cảm từng được giải thưởng PVC &ndash; Đại &uacute;y. Vikram Batra, người đ&atilde; nổi tiếng v&agrave; trở th&agrave;nh một c&aacute;i t&ecirc;n quen thuộc trong Chiến tranh Kargil năm 1999. Tinh thần bất khuất v&agrave; l&ograve;ng dũng cảm ki&ecirc;n cường của anh ta trong việc đ&aacute;nh đuổi h&agrave;ng loạt binh l&iacute;nh Pakistan ra khỏi l&atilde;nh thổ Ấn Độ đ&atilde; g&oacute;p phần gi&uacute;p Ấn Độ cuối c&ugrave;ng gi&agrave;nh chiến thắng trong Chiến tranh Kargil năm 1999.</span></p>', 7, 1, NULL, 'public/uploads/photo/cuoc_chien_cagil.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=612755d95145300e1fb89707&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638282836&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'chien-tranh,tam-ly,le', 4, 1, '2021-11-30 07:36:13', '2021-11-30 07:36:13'),
(33, 'Peekay Ngây Thơ – PK', 'peekay-ngay-tho-pk', '<h2>Peekay Ng&acirc;y Thơ - PK, 2014 FULL</h2>\r\n<div class=\"desc\"><span class=\"title-english\" title=\"Phim Peekay Ng&acirc;y Thơ - Pk\">PK</span>&nbsp;:&nbsp;PK, bộ phim đ&aacute;nh dấu sự t&aacute;i hợp của đạo diễn Rajkumar Hirani v&agrave; nam diễn vi&ecirc;n Aamir Khan đ&atilde; lập n&ecirc;n kỷ lục mới khi đạt doanh thu to&agrave;n cầu hơn 77 triệu USD. Vượt doanh thu 63 triệu USD của bộ phim nổi tiếng trước đ&oacute; của họ 3 Idiots (Ba Ch&agrave;ng Ngốc), vốn l&agrave; phim c&oacute; doanh thu cao nhất mọi thời đại ở Ấn Độ v&agrave;o năm 2009.</div>', 6.9, 1, NULL, 'public/uploads/photo/packey_ngay_tho.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=617fae72338c714d7d1b28ea&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283085&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tinh-cam,le', 4, 1, '2021-11-30 07:37:57', '2021-11-30 07:37:57'),
(34, 'Người Tình Mê Đắm – Haseen Dillruba', 'nguoi-tinh-me-dam-haseen-dillruba', '<h2>Người T&igrave;nh M&ecirc; Đắm - Haseen Dillruba, Haseen Dillruba 2021 HD</h2>\r\n<div class=\"title-info-synopsis\" data-uia=\"title-info-synopsis\">Đang bị điều tra vì l&agrave; nghi phạm giết chồng, một người vợ tiết lộ những chi tiết về cuộc h&ocirc;n nh&acirc;n đầy ch&ocirc;ng gai của họ &ndash; nhưng dường như chỉ khiến sự thật nh&ograve;a đi th&ecirc;m.</div>', 7.6, 1, NULL, 'public/uploads/photo/người tình mê đắm.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=612761b0f3e6a90eb2d8f18a&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283240&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'tam-ly,le', 4, 1, '2021-11-30 07:40:27', '2021-11-30 07:40:27'),
(35, 'Cảnh Sát Siêu Hạng – Radhe', 'canh-sat-sieu-hang-radhe', '<h2>Cảnh S&aacute;t Si&ecirc;u Hạng - Radhe, Radhe 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Sau khi hạ gục t&ecirc;n tr&ugrave;m x&atilde; hội đen đ&aacute;ng sợ Gani Bhai, ACP Rajveer Shikawat hay c&ograve;n gọi l&agrave; Radhe tiến h&agrave;nh một cuộc truy l&ugrave;ng để t&igrave;m ra người đ&agrave;n &ocirc;ng gi&agrave;u c&oacute; nhất của thị trấn đang b&iacute; mật điều h&agrave;nh một tổ chức tội phạm.</span></p>', 7.3, 1, NULL, 'public/uploads/photo/canh_sat_sieu_hang.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61276951f3e6a90eb2d90039&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283196&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,hinh-su,le', 4, 1, '2021-11-30 07:42:18', '2021-11-30 07:42:18'),
(36, 'Lòng Tham – Jallikattu', 'long-tham-jallikattu', '<h2>L&ograve;ng Tham - Jallikattu, Jallikattu 2019 SD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Bức ch&acirc;n dung về một ng&ocirc;i l&agrave;ng hẻo l&aacute;nh, nơi một con tr&acirc;u chạy trốn v&agrave; g&acirc;y ra một trận bạo lực đi&ecirc;n cuồng.</span></p>', 6.9, 1, NULL, 'public/uploads/photo/long_tham.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=61292327adec9127f4ad3a65&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283488&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,hinh-su,le', 4, 1, '2021-11-30 07:44:41', '2021-11-30 07:44:41'),
(37, 'Cọp Trắng – The White Tiger', 'cop-trang-the-white-tiger', '<h2>Cọp Trắng - The White Tiger, The White Tiger 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span lang=\"vi\">H&agrave;nh tr&igrave;nh sử thi của một người l&aacute;i xe ngh&egrave;o người Ấn Độ, người phải sử dụng sự th&ocirc;ng minh v&agrave; xảo quyệt của m&igrave;nh để tho&aacute;t khỏi cảnh n&ocirc; lệ cho những người chủ gi&agrave;u c&oacute; của m&igrave;nh v&agrave; vươn l&ecirc;n đỉnh cao.</span></p>', 7, 1, NULL, 'public/uploads/photo/cop_trang.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6128e004adec9127f4ac45f8&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283532&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hinh-su,tam-ly,le', 4, 1, '2021-11-30 07:47:46', '2021-11-30 07:47:46'),
(38, 'Đường Trở Về – The Way Back', 'duong-tro-ve-the-way-back', '<h2>Đường Trở Về - The Way Back, The Way Back 2010 HD</h2>\r\n<p>Bỏ trốn gulag Siberia đi bốn ng&agrave;n dặm bằng ch&acirc;n tự do ở Ấn Độ.</p>', 7.8, 1, NULL, 'public/uploads/photo/way_back_home.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=612df1a65b5aeb2e67fa91c2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638283845&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,phieu-luu,le', 8, 1, '2021-11-30 07:50:37', '2021-11-30 07:50:37'),
(39, 'Tin Chấn Động – Dhamaka', 'tin-chan-dong-dhamaka', '<h2>Tin Chấn Động - Dhamaka, Dhamaka 2021 Full</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Được giao nhiệm vụ từ TV sang đ&agrave;i ph&aacute;t thanh, một mỏ neo thất vọng nh&igrave;n thấy cả nguy hiểm v&agrave; cơ hội khi anh ta nhận được c&aacute;c cuộc gọi đe dọa tr&ecirc;n s&oacute;ng.</span></p>', 7.8, 1, NULL, 'public/uploads/photo/dmmm.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=619890ab095baf9b6aa52cb1&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284011&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hanh-dong,kinh-di,tam-ly,le', 4, 1, '2021-11-30 07:53:21', '2021-11-30 07:53:21'),
(40, 'Ariya Jutanugarn: Nữ Hoàng Sân Golf – Tee Shot: Ariya Jutanugarn', 'ariya-jutanugarn-nu-hoang-san-golf-tee-shot-ariya-jutanugarn', '<h2>Ariya Jutanugarn: Nữ Ho&agrave;ng S&acirc;n Golf - Tee Shot: Ariya Jutanugarn, 2019 FULL</h2>\r\n<div class=\"desc\"><span class=\"title-english\" title=\"Phim Ariya Jutanugarn: Nữ Ho&agrave;ng S&acirc;n Golf - Tee Shot: Ariya Jutanugarn\">TEE SHOT: ARIYA JUTANUGARN</span>&nbsp;:&nbsp;Bộ phim tiểu sử ph&aacute;c họa h&agrave;nh tr&igrave;nh đến với giải LPGA của tay golf chuy&ecirc;n nghiệp Ariya Jutanugarn: từ thần đồng nhỏ tuổi cho đến vị tr&iacute; số một thế giới.</div>', 7.6, 1, NULL, 'public/uploads/photo/nu.jpg', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=618c789e338c714d7d2477ac&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284724&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'tam-ly,le', 7, 1, '2021-11-30 08:07:38', '2021-11-30 08:07:38'),
(41, 'Yêu Anh, Chàng Kiêu Kỳ – Love You My Arrogance', 'yeu-anh-chang-kieu-ky-love-you-my-arrogance', '<h2>Y&ecirc;u Anh, Ch&agrave;ng Ki&ecirc;u Kỳ - Love You My Arrogance, Love You My Arrogance 2021 HD</h2>\r\n<p>Bộ phim kể về Sun, một anh ch&agrave;ng Youtuber đẹp trai nổi tiếng, c&oacute; khả năng nghe được những suy nghĩ v&agrave; đọc được t&acirc;m tr&iacute; của người kh&aacute;c. Anh ấy cảm thấy kh&ocirc;ng h&agrave;i l&ograve;ng với khả năng n&agrave;y v&igrave; anh ta nghĩ rằng thật căng thẳng v&agrave; mệt mỏi khi nghe được suy nghĩ của mọi người.</p>', 6.9, 1, NULL, 'public/uploads/photo/yeu_anh_chang_kieu_ki.png', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=6127af0ec3b9b015cc2eb799&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638284833&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tinh-cam,le', 7, 1, '2021-11-30 08:09:28', '2021-11-30 08:09:28'),
(42, 'Lừa Đểu Gặp Lừa Đảo – The Con-Heartist', 'lua-deu-gap-lua-dao-the-con-heartist', '<h2>Lừa Đểu Gặp Lừa Đảo - The Con-Heartist, The Con-Heartist 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span lang=\"vi\">Ina, người m&agrave; bạn trai cũ bỏ trốn, khiến c&ocirc; nợ nần chồng chất, cố gắng bắt được một t&ecirc;n lừa đảo xảo quyệt đang cố lừa gạt c&ocirc;. Nhưng thay v&igrave; chuyển anh ta cho cảnh s&aacute;t, c&ocirc; thu&ecirc; kẻ lừa đảo n&agrave;y để lừa bạn trai cũ của m&igrave;nh để trả th&ugrave;.</span></p>', 7.8, 1, NULL, 'public/uploads/photo/lua_deu_gap_lua_dao.png', '<iframe class=\"embed-responsive-item\" src=\"https://play.gotphim.com/public/index.html?id=612755685145300e1fb895a2&amp;subs=&amp;lang=vietnam&amp;ads=https://toolpg.com/demo.xml&amp;v=1638285106&amp;logo=https://phimgii.net/player/dk.jpg&amp;link=https%3A%2F%2Fdk802.com%2F%3FinviteCode%3D34195598%26regAgentJumpFlag%3D0\" allowfullscreen=\"\"></iframe>', 'hai-huoc,tinh-cam,chieu-rap', 7, 1, '2021-11-30 08:11:35', '2021-11-30 08:11:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_film_series`
--

CREATE TABLE `tbl_film_series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `view` bigint(20) UNSIGNED DEFAULT NULL,
  `update_episode` int(11) DEFAULT NULL,
  `end_episode` int(11) DEFAULT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kind_id` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `translate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_film_series`
--

INSERT INTO `tbl_film_series` (`id`, `name`, `slug`, `intro`, `showtime`, `rate`, `total_rating`, `view`, `update_episode`, `end_episode`, `photo`, `bg_photo`, `kind_id`, `country_id`, `translate_id`, `created_at`, `updated_at`) VALUES
(8, 'Sáng như trăng trong mây', 'sang-nhu-trang-trong-may', '<h2>S&aacute;ng Như Trăng Trong M&acirc;y (Ho&agrave;n Khố Thế Tử Phi) - Bright As the Moon, Bright As the Moon 2021 Full (40/40) HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Người ta đồn rằng Yun Qian Yue, con g&aacute;i lớn của th&aacute;i tử Yun trang vi&ecirc;n; l&agrave; ăn chơi, ki&ecirc;u ngạo v&agrave; thất học. Tr&ecirc;n thực tế, tin đồn do ch&iacute;nh Qian Yue cố &yacute; lan truyền v&igrave; c&ocirc; kh&ocirc;ng muốn kết h&ocirc;n với Ho&agrave;ng gia. Qian Yue cũng đ&atilde; cải trang th&agrave;nh cấp dưới của Ye Tian Shuo trong gần một thập kỷ. C&ocirc; y&ecirc;u Rong Jing từ trang vi&ecirc;n Prince Rong nhưng bị quyền lực của Ho&agrave;ng gia &aacute;p bức. Rong Jing, một người đ&agrave;n &ocirc;ng sở hữu ngoại h&igrave;nh đẹp một c&aacute;ch lạ thường, mắc một căn bệnh khiến anh yếu ớt v&agrave; ốm yếu trong nhiều năm do hậu quả của thuốc k&iacute;ch dục. Để t&igrave;m c&aacute;ch chữa trị cho anh ta, Qian Yue đ&atilde; khởi động chuyến bay Phoenix m&agrave; kh&ocirc;ng quan t&acirc;m đến hậu quả. Tuy nhi&ecirc;n c&ugrave;ng l&uacute;c đ&oacute;, Ho&agrave;ng đế Ye Qing Ran hiện tại lại y&ecirc;u Qian Yue s&acirc;u sắc v&agrave; để c&oacute; được t&igrave;nh y&ecirc;u của c&ocirc;, anh ta đ&atilde; đặt một loại thuốc độc tr&aacute;i tim kh&oacute;a sinh tử v&agrave;o cơ thể c&ocirc;, do đ&oacute; cấm c&ocirc; rời khỏi b&ecirc;n m&igrave;nh. Mặc d&ugrave; bị mất tr&iacute; nhớ do chất độc, Yun Qian Yue kh&ocirc;ng qu&ecirc;n được tr&aacute;i tim thật sự của m&igrave;nh.</span></p>', 'Đã cập nhật hết', 7.9, 1, 17, 40, 40, 'public/uploads/photo/sang-nhu-trang-trong-may_1.jpg', 'public/uploads/bg_img/banner_sang-nhu-trang-trong-may_1.jpg', 'co-trang', 1, 1, '2021-11-30 03:01:58', '2021-11-30 19:36:21'),
(9, 'Luyến Mộ Vietsub, The King\'s Affection (2021)', 'luyen-mo-vietsub-the-kings-affection-2021', '<h2>Luyến Mộ VietSub, The King\'s Affection (2021)</h2>\r\n<p>Bộ phim kể về một vị phi tần sinh ra cặp song sinh trai g&aacute;i được coi l&agrave; điềm gở, nh&agrave; vua hạ lệnh giết con g&aacute;i (Park Eun Bin) . Để cứu đứa con g&aacute;i, người mẹ b&iacute; mật gửi đứa b&eacute; ra khỏi cung điện. V&agrave;i năm sau, người con trai sinh đ&ocirc;i Lee Hwi qua đời v&igrave; bạo bệnh. Che giấu c&aacute;i chết của đứa con trai song sinh, người mẹ mang con g&aacute;i trở lại v&agrave; nu&ocirc;i nấng c&ocirc; b&eacute; thế th&acirc;n cho Ho&agrave;ng tử Lee Hwi. Cuối c&ugrave;ng c&ocirc; trở th&agrave;nh một th&aacute;i tử. Lo sợ rằng danh t&iacute;nh thực sự của m&igrave;nh sẽ bị lộ, Lee Hwi kh&ocirc;ng để cho bất cứ ai gần gũi với m&igrave;nh v&agrave; che giấu cảm x&uacute;c của bản th&acirc;n với người kh&aacute;c, lu&ocirc;n tỏ ra lạnh l&ugrave;ng v&agrave; cứng rắn.</p>\r\n<p>Mặc d&ugrave; phải che giấu bản th&acirc;n nhưng c&ocirc; ấy vẫn kh&ocirc;ng tho&aacute;t khỏi được tiếng gọi của t&igrave;nh y&ecirc;u khi tiếp x&uacute;c với Jung Ji Woon (Rowoon) , gi&aacute;o vi&ecirc;n của c&ocirc; ấy, người xuất th&acirc;n từ một gia đ&igrave;nh qu&yacute; tộc. Jung Ji Woon l&agrave; gi&aacute;o vi&ecirc;n của Th&aacute;i tử sikangwon, một văn ph&ograve;ng ch&iacute;nh phủ với mục đ&iacute;ch duy nhất l&agrave; gi&aacute;o dục c&aacute;c th&aacute;i tử. Anh ấy được m&ocirc; tả l&agrave; một người đ&agrave;n &ocirc;ng đẹp trai, dũng cảm, ki&ecirc;n tr&igrave; v&agrave; ngoan cường, nhưng cũng c&oacute; xu hướng đ&oacute;n nhận cuộc sống v&agrave; sống kh&ocirc;ng vướng bận những lo lắng của thế gian như một người lạc quan, tận hưởng cuộc sống. L&agrave; con trai của một quan chức ch&iacute;nh phủ ở Saheonbu (một văn ph&ograve;ng ch&iacute;nh phủ điều tra), tương lai của anh ấy dường như đ&atilde; được định sẵn cho anh ấy. Tuy nhi&ecirc;n, c&oacute; một l&yacute; do khiến anh ấy chọn con đường ri&ecirc;ng của m&igrave;nh v&agrave; bỏ lại con đường dễ d&agrave;ng ph&iacute;a sau.</p>', 'Lịch chiếu: VietSub 21h40 Thứ 2,3 hàng tuần', 8.4, 1, 15, 15, NULL, 'public/uploads/photo/luyen-mo_1.jpg', 'public/uploads/bg_img/banner_luyen-mo_1.jpg', 'tinh-cam,co-trang,bo', 5, 1, '2021-11-30 05:56:11', '2021-11-30 06:31:55'),
(10, 'Phía Sau Khung Cửa Sổ – Show Window: The Queen’s House', 'phia-sau-khung-cua-so-show-window-the-queens-house', '<h2>Ph&iacute;a Sau Khung Cửa Sổ - Show Window: The Queen\'s House, Show Window: The Queen\'s House 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Nh&igrave;n từ b&ecirc;n ngo&agrave;i, cuộc sống của Han Sun Joo lu&ocirc;n tỏ ra kh&ocirc;ng c&oacute; g&igrave; l&agrave; ho&agrave;n hảo. Sinh ra trong một gia đ&igrave;nh gi&agrave;u c&oacute;, Sun Joo v&agrave; em trai của c&ocirc;, Han Jung Won, được lớn l&ecirc;n m&agrave; kh&ocirc;ng c&oacute; sự chăm s&oacute;c của thế giới. Giờ đ&acirc;y khi trưởng th&agrave;nh, Jung Won đ&atilde; trưởng th&agrave;nh một c&aacute;ch phi thường với tr&aacute;i tim ấm &aacute;p, cho ph&eacute;p anh ấy duy tr&igrave; một tinh thần lạc quan vững chắc trong khi Sun Joo đ&atilde; trở th&agrave;nh một người phụ nữ kết h&ocirc;n l&yacute; tưởng, với một ng&ocirc;i nh&agrave; lộng lẫy, một người chồng tận tụy v&agrave; một đứa con xinh đẹp. Thật kh&ocirc;ng may, cuộc sống ho&agrave;n hảo của Sun Joo đang tr&ecirc;n bờ vực sụp đổ</span></p>', 'Lịch chiếu: VietSub 21h thứ 2,3 hàng tuần', 7.9, 1, NULL, 1, NULL, 'public/uploads/photo/phia-sau-khung-cua-so_1.jpg', 'public/uploads/bg_img/banner_phia-sau-khung-cua-so_1.jpg', 'tinh-cam,tam-ly,bo', 5, 1, '2021-11-30 06:27:44', '2021-11-30 06:29:00'),
(11, 'Thần Tượng: Cuộc Đảo Chính Vietsub, Idol: The Coup (2021)', 'than-tuong-cuoc-dao-chinh-vietsub-idol-the-coup-2021', '<h2>Thần Tượng: Cuộc Đảo Ch&iacute;nh Vietsub, Idol: The Coup (2021)</h2>\r\n<p>Phim khắc họa c&acirc;u chuyện cuối c&ugrave;ng của những &ldquo;thần tượng cam chịu&rdquo;, những người cần một &ldquo;th&agrave;nh c&ocirc;ng&rdquo; duy nhất để kh&ocirc;ng &ldquo;tan r&atilde;&rdquo;. C&acirc;u chuyện về những người trẻ tuổi tự tin bu&ocirc;ng bỏ ước mơ khi trưởng th&agrave;nh vượt qua thất bại v&agrave; can đảm bước tới những mục ti&ecirc;u mới. Kim Je Na l&agrave; th&agrave;nh vi&ecirc;n của Cotton Candy trong 6 năm qua.</p>', 'Lịch chiếu: VietSub 21h thứ 2,3 hàng tuần', 7.4, 1, NULL, 7, NULL, 'public/uploads/photo/than-tuong-cuoc-dao-chinh_1.jpg', 'public/uploads/bg_img/banner_than-tuong-cuoc-dao-chinh_1.jpg', 'tam-ly,bo', 5, 1, '2021-11-30 06:33:52', '2021-11-30 06:37:22'),
(12, 'Nắm Giữ Sinh Mệnh – Happiness', 'nam-giu-sinh-menh-happiness', '<h2>Nắm Giữ Sinh Mệnh - Happiness, Happiness 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một loại vi r&uacute;t chết người mới lan truyền khắp th&agrave;nh phố, v&agrave; căn hộ nơi c&oacute; c&aacute;c tầng lớp x&atilde; hội kh&aacute;c nhau của người d&acirc;n bị phong tỏa. Với nỗi sợ h&atilde;i của vi r&uacute;t v&agrave; xung đột của c&aacute;c tầng lớp kh&aacute;c nhau, c&aacute;c cư d&acirc;n phải sống v&agrave; tồn tại trong m&ocirc;i trường sống mới. Yoon Sae Bom rất nhanh trong quyết định v&agrave; ph&aacute;n đo&aacute;n. C&ocirc; ấy đ&atilde; kh&ocirc;ng lớn l&ecirc;n trong một m&ocirc;i trường tốt. C&ocirc; ấy muốn sống thoải m&aacute;i trong thế giới phức tạp, nhưng c&ocirc; ấy ch&iacute;nh trực v&agrave; kh&ocirc;ng thể chịu đựng bất c&ocirc;ng. Jung Yi Hyun l&agrave; một th&aacute;m tử cảnh s&aacute;t, người chủ yếu phụ tr&aacute;ch c&aacute;c tội phạm bạo lực. Anh từng l&agrave; một cầu thủ b&oacute;ng ch&agrave;y nhưng phải nghỉ thi đấu v&igrave; chấn thương đầu gối. Anh đấu tranh để bảo vệ mọi người khỏi nguy hiểm trong căn hộ. Han Tae Seok l&agrave; một nh&acirc;n vi&ecirc;n th&ocirc;ng tin trong thời gian phục vụ trong qu&acirc;n đội, v&agrave; sau khi xuất ngũ, anh ấy l&agrave;m gi&aacute;m đốc điều h&agrave;nh tại một c&ocirc;ng ty dược phẩm. Anh ấy l&agrave; người ho&agrave;n hảo cho vị tr&iacute; đối ph&oacute; với c&aacute;c bệnh truyền nhiễm.</span></p>', 'Lịch chiếu: VietSub 11h trưa thứ 7, chủ nhật hàng tuần', 8.9, 1, 2, 8, NULL, 'public/uploads/photo/nam_giu_sinh_menh.jpg', NULL, 'hanh-dong,kinh-di,tinh-cam,tam-ly,bo', 5, 1, '2021-11-30 06:43:39', '2021-12-03 06:36:35'),
(13, 'Thiếu Nữ Và Quý Ông – A Gentleman and a Young Lady', 'thieu-nu-va-quy-ong-a-gentleman-and-a-young-lady', '<h2>Thiếu Nữ V&agrave; Qu&yacute; &Ocirc;ng - A Gentleman and a Young Lady, A Gentleman and a Young Lady 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Lee Young Kook l&agrave; một g&oacute;a phụ c&oacute; ba người con. Anh ấy vẫn chưa vượt qua được c&aacute;i chết của vợ m&igrave;nh. Anh quyết định thu&ecirc; Park Dan Dan l&agrave;m gia sư trực tiếp cho con m&igrave;nh v&agrave; anh bị c&ocirc; ấy thu h&uacute;t. Trong khi đ&oacute;, Park Dan Dan c&oacute; một t&iacute;nh c&aacute;ch tươi s&aacute;ng v&agrave; t&iacute;ch cực bất chấp ho&agrave;n cảnh khắc nghiệt của c&ocirc;.</span></p>', 'Lịch chiếu: VietSub 20h Chủ nhật, Thứ 2 hàng tuần', 8.4, 1, NULL, 20, NULL, 'public/uploads/photo/thieu_nu_va_quy_ong.jpg', 'public/uploads/bg_img/banner_young-lady-and-gentleman_1.jpg', 'hai-huoc,tinh-cam,bo', 5, 1, '2021-11-30 06:51:33', '2021-11-30 07:01:17'),
(14, 'Ngự Sử Tài Ba Và Quý Cô Thông Thái (Chuyện Về Ám Hành Ngự Sử Và Jo Yi)', 'ngu-su-tai-ba-va-quy-co-thong-thai-chuyen-ve-am-hanh-ngu-su-va-jo-yi', '<h2>Ngự Sử T&agrave;i Ba V&agrave; Qu&yacute; C&ocirc; Th&ocirc;ng Th&aacute;i (Chuyện Về &Aacute;m H&agrave;nh Ngự Sử V&agrave; Jo Yi) - Secret Royal Inspector and Joy, Secret Royal Inspector &amp; Joy 2021 HD</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Một thanh tra b&iacute; mật của ho&agrave;ng gia l&agrave;m việc như một quan chức ch&igrave;m thanh tra c&aacute;c tỉnh địa phương để vạch trần tham nhũng. Anh hợp t&aacute;c với một phụ nữ đang t&igrave;m kiếm hạnh ph&uacute;c bằng c&aacute;ch ly h&ocirc;n với người chồng hiện tại của c&ocirc; ấy. Sau đ&oacute;, bộ đ&ocirc;i thực hiện một kế hoạch lớn để kh&aacute;m ph&aacute; sự thật v&agrave; t&igrave;m ra những kẻ đồi bại.</span></p>', 'Lịch chiếu: VietSub 19h thứ 4,5,6 hàng tuần', 9.2, 1, NULL, 7, NULL, 'public/uploads/photo/ngu_su_tai_ba.jpg', NULL, 'hai-huoc,tinh-cam,co-trang,bo', 5, 1, '2021-11-30 07:04:38', '2021-11-30 07:07:14'),
(15, 'Những Chủ Nhân Vũ Trụ: Khải Huyền (Phần 2)', 'nhung-chu-nhan-vu-tru-khai-huyen-phan-2', '<h2>Những Chủ Nh&acirc;n Vũ Trụ: Khải Huyền (Phần 2) - Masters Of The Universe: Revelation (Season 2), Masters Of The Universe: Revelation (Season 2) 2021 Full (5/5) Season 2</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Cuộc chiến tranh gi&agrave;nh Eternia lại bắt đầu trong trận chiến cuối c&ugrave;ng giữa He-Man v&agrave; Skeletor. Một loạt phim hoạt h&igrave;nh mới của nh&agrave; văn ki&ecirc;m đạo diễn Kevin Smith.</span></p>', 'Đã cập nhật full (5/5) tập session 2', 9.8, 1, NULL, 5, NULL, 'public/uploads/photo/hh_linh_chi.jpg', NULL, 'hoat-hinh,chieu-rap,bo', 2, 1, '2021-11-30 07:10:21', '2021-11-30 07:12:32'),
(16, 'Chiến Bại (Phần 1) – The Defeated (Shadowplay) (Season 1)', 'chien-bai-phan-1-the-defeated-shadowplay-season-1', '<h2>Chiến Bại (Phần 1) - The Defeated (Shadowplay) (Season 1), The Defeated (Shadowplay) (Season 1) 2021 Ho&agrave;n tất (8/8) Season 1</h2>\r\n<p id=\"tw-target-text\" class=\"tw-data-text tw-text-large XcVN5d tw-ta\" dir=\"ltr\" data-placeholder=\"Bản dịch\"><span class=\"Y2IQFc\" lang=\"vi\">Max McLaughlin l&agrave; một cảnh s&aacute;t người Mỹ đến Berlin v&agrave;o m&ugrave;a h&egrave; năm 1946 để gi&uacute;p th&agrave;nh lập lực lượng cảnh s&aacute;t trong hậu quả hỗn loạn của chiến tranh.</span></p>', 'Đã cập nhật full  Chiến Bại (Phần 1) – The Defeated (Shadowplay) (Season 1)', 7.6, 1, 1, 8, NULL, 'public/uploads/photo/chien_bai_phan_1.jpg', NULL, 'tam-ly,bo', 6, 1, '2021-11-30 07:57:35', '2021-12-01 18:34:21'),
(17, 'Anh Trai Nhà Đối Diện – Sweet Sweet', 'anh-trai-nha-doi-dien-sweet-sweet', '<h2>Anh Trai Nh&agrave; Đối Diện VietSub, Sweet Sweet (2021)</h2>\r\n<p>C&ocirc; g&aacute;i đ&aacute;ng y&ecirc;u vừa tốt nghiệp ng&agrave;nh thiết kế Điền Điềm trong một lần t&igrave;nh cờ đ&atilde; gặp ch&agrave;ng trai mắc chứng mất ng&ocirc;n ngữ T&ocirc; Mộ. Dưới sự tr&ugrave;ng hợp của vận mệnh, chỉ c&oacute; kem do ch&iacute;nh tay Điền Điềm l&agrave;m mới khiến t&acirc;m trạng T&ocirc; Mộ vui vẻ, n&oacute;i năng tr&ocirc;i chảy. Trong một lần thử nghiệm, m&aacute;y bay kh&ocirc;ng người l&aacute;i của T&ocirc; Mộ bay v&agrave;o nh&agrave; Điền Điềm, tưởng rằng nh&agrave; kh&ocirc;ng người n&ecirc;n anh tr&egrave;o v&agrave;o t&igrave;m, bị Điền Điềm đang tắm bắt quả tang, hai người thiếu ch&uacute;t nữa đ&atilde; \"Lo&atilde; lồ gặp nhau\".</p>', 'Đã cập nhật full   Anh Trai Nhà Đối Diện – Sweet Sweet', 8.4, 1, 26, 22, NULL, 'public/uploads/photo/anh-trai-nha-doi-dien_1.jpg', 'public/uploads/bg_img/banner_anh-trai-nha-doi-dien_1.jpg', 'hai-huoc,tinh-cam,tam-ly,bo', 1, 1, '2021-11-30 08:15:27', '2021-12-11 01:30:11'),
(18, 'Anh Là Hiệp Sĩ Bóng Đêm Của Em – Let Me Be Your Knight', 'anh-la-hiep-si-bong-dem-cua-em-let-me-be-your-knight', '<h2>Anh L&agrave; Hiệp Sĩ B&oacute;ng Đ&ecirc;m Của Em - Let Me Be Your Knight, Let Me Be Your Knight 2021 HD</h2>\r\n<p><strong>Anh L&agrave; Hiệp Sĩ B&oacute;ng Đ&ecirc;m Của Em</strong>&nbsp;(Let Me Be Your Knight 2021) l&agrave; bộ phim về thần tượng của H&agrave;n Quốc, phim kể về c&acirc;u chuyện l&atilde;ng mạn giữa nam thần tượng nổi tiếng thế giới mắc bệnh mộng du v&agrave; nữ b&aacute;c sĩ b&iacute; mật chữa trị cho anh.</p>', 'Lịch chiếu: VietSub 21h10 chủ nhật hàng tuần', 9.4, 1, NULL, 4, NULL, 'public/uploads/photo/anh_la_hsbd_cua_em.jpg', NULL, 'hai-huoc,tinh-cam,bo', 5, 1, '2021-11-30 19:28:24', '2021-11-30 19:30:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_kinds`
--

CREATE TABLE `tbl_kinds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kind_film` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_film` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_kinds`
--

INSERT INTO `tbl_kinds` (`id`, `kind_film`, `slug`, `count_film`, `created_at`, `updated_at`) VALUES
(1, 'hành động', 'hanh-dong', 17, NULL, '2021-11-30 07:53:21'),
(2, 'hài hước', 'hai-huoc', 18, NULL, '2021-11-30 19:28:24'),
(3, 'kinh dị', 'kinh-di', 9, NULL, '2021-11-30 07:53:21'),
(4, 'tình cảm', 'tinh-cam', 21, NULL, '2021-11-30 19:28:24'),
(5, 'viễn tưởng', 'vien-tuong', 6, NULL, '2021-11-30 02:48:43'),
(6, 'hình sự', 'hinh-su', 9, NULL, '2021-11-30 07:47:46'),
(7, 'chiến tranh', 'chien-tranh', 2, NULL, '2021-11-30 07:36:13'),
(8, 'cổ trang', 'co-trang', 4, NULL, '2021-11-30 19:36:21'),
(9, 'thần thoại', 'than-thoai', NULL, NULL, '2021-11-27 06:01:39'),
(10, 'phiêu lưu', 'phieu-luu', 9, NULL, '2021-11-30 07:50:37'),
(11, 'hoạt hình', 'hoat-hinh', 3, NULL, '2021-11-30 07:10:21'),
(12, 'tâm lý', 'tam-ly', 23, NULL, '2021-11-30 08:15:27'),
(13, 'lẻ', 'le', 26, NULL, '2021-11-30 08:09:28'),
(14, 'chiếu rạp', 'chieu-rap', 14, NULL, '2021-11-30 08:11:35'),
(15, 'bộ', 'bo\r\n', 13, NULL, '2021-11-30 19:28:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ratings`
--

CREATE TABLE `tbl_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `kind_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rating` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_translates`
--

CREATE TABLE `tbl_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_translates`
--

INSERT INTO `tbl_translates` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vietsub', NULL, NULL),
(2, 'Engsub', NULL, NULL),
(3, 'Thuyết minh', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'ducthu15012001', 'duc15012001@gmail.com', '2021-11-28 01:42:37', '$2y$10$TCw.7qsChyLPOT7u45oRgunAIl7DIKOl9YU2Em6yavmM1AhaOQa0i', NULL, '2021-11-28 01:41:37', '2021-11-28 01:42:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_film_episodes`
--
ALTER TABLE `tbl_film_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_film_episodes_film_id_foreign` (`film_id`);

--
-- Chỉ mục cho bảng `tbl_film_odds`
--
ALTER TABLE `tbl_film_odds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_film_odds_country_id_foreign` (`country_id`),
  ADD KEY `tbl_film_odds_translate_id_foreign` (`translate_id`);

--
-- Chỉ mục cho bảng `tbl_film_series`
--
ALTER TABLE `tbl_film_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_film_series_country_id_foreign` (`country_id`),
  ADD KEY `tbl_film_series_translate_id_foreign` (`translate_id`);

--
-- Chỉ mục cho bảng `tbl_kinds`
--
ALTER TABLE `tbl_kinds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_translates`
--
ALTER TABLE `tbl_translates`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_film_episodes`
--
ALTER TABLE `tbl_film_episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `tbl_film_odds`
--
ALTER TABLE `tbl_film_odds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_film_series`
--
ALTER TABLE `tbl_film_series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_kinds`
--
ALTER TABLE `tbl_kinds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_translates`
--
ALTER TABLE `tbl_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_film_episodes`
--
ALTER TABLE `tbl_film_episodes`
  ADD CONSTRAINT `tbl_film_episodes_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `tbl_film_series` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_film_odds`
--
ALTER TABLE `tbl_film_odds`
  ADD CONSTRAINT `tbl_film_odds_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `tbl_countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_film_odds_translate_id_foreign` FOREIGN KEY (`translate_id`) REFERENCES `tbl_translates` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_film_series`
--
ALTER TABLE `tbl_film_series`
  ADD CONSTRAINT `tbl_film_series_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `tbl_countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_film_series_translate_id_foreign` FOREIGN KEY (`translate_id`) REFERENCES `tbl_translates` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
