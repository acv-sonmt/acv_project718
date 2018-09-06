-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 16, 2018 lúc 06:41 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `acv_project718_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `author`, `created_at`, `updated_at`) VALUES
(2, 'lasfdjlaljdlfjklafjladsf', 'hoa', '2018-07-26 19:53:21', '2018-07-26 19:54:58'),
(3, '23453457', 'son', '2018-07-26 19:53:21', '2018-07-26 19:54:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `created_at`, `updated_at`) VALUES
(5, 'adggg3577', 'Male', 'ttianang@gmail.com', '2018-08-08 01:05:30', '2018-08-08 01:17:11'),
(6, 'ahjk', 'Male', 'maitruongson26@gmail.com', '2018-08-08 01:05:38', '2018-08-08 01:05:38'),
(7, 'hhsj', 'Male', 'ttianang@gmail.com', '2018-08-08 01:06:15', '2018-08-08 01:06:15'),
(9, 'hhsjádaghhha', 'Male', 'ttianang@gmail.com', '2018-08-08 01:16:40', '2018-08-10 01:04:38'),
(11, 'Sonya Witting', 'oemele', 'katarina.schaden@hotmail.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(12, 'Brody Hagenes', 'oemele', 'zmcglynn@bode.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(13, 'Miss Amya Ziemann PhD', 'oemele', 'yboehm@mohr.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(14, 'Antonietta Swift', 'oemele', 'conroy.chadd@yahoo.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(15, 'Ms. Hortense Torp DDS', 'oemele', 'cassin.shad@yahoo.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(16, 'Prof. Levi Fadel IV', 'oemele', 'uhudson@mann.net', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(17, 'Barry Cummings', 'oemele', 'mariam.maggio@yahoo.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(18, 'Mr. Darrick Heathcote PhD', 'oemele', 'miller.bogisich@yahoo.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(19, 'Zachariah Beier', 'oemele', 'hcollins@witting.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(20, 'Vanessa Crona', 'oemele', 'hayden55@yahoo.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(21, 'Jarrell Hoppe', 'oemele', 'haleigh44@hammes.com', '2018-08-08 02:03:36', '2018-08-08 02:03:36'),
(22, 'Dr. Mariano Langworth', 'oemele', 'baby.bogan@gmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(23, 'Ethelyn Leannon', 'oemele', 'rudy49@west.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(24, 'Lucienne Daugherty', 'oemele', 'lorenzo.botsford@reilly.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(25, 'Angelica Runolfsdottir', 'oemele', 'garrick.kunze@hotmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(26, 'Aurelia O\'Conner IV', 'oemele', 'lakin.rogelio@yahoo.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(27, 'Dr. Felipe Carter', 'oemele', 'keon81@romaguera.org', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(28, 'Baron Corwin', 'oemele', 'shamill@hotmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(29, 'Justen Lueilwitz III', 'oemele', 'donnelly.presley@hotmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(30, 'Mr. Tristian Hayes', 'oemele', 'pleuschke@ohara.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(31, 'Ramiro Walsh', 'oemele', 'kessler.declan@yahoo.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(32, 'Miss Creola Nitzsche', 'oemele', 'leann.wehner@gmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(33, 'Prof. Aurelio Hessel PhD', 'oemele', 'wthompson@gmail.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(34, 'Mrs. Ashly Kuhic', 'oemele', 'karen.grady@schmitt.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(35, 'Dr. Jaylan Schowalter', 'oemele', 'vwyman@yahoo.com', '2018-08-08 02:03:37', '2018-08-08 02:03:37'),
(36, 'Anjali Botsford V', 'oemele', 'beichmann@hotmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(37, 'Dr. Conor Welch', 'oemele', 'pwatsica@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(38, 'Taryn Streich', 'oemele', 'lgrant@gusikowski.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(39, 'Kenneth Fadel', 'oemele', 'garrick.hickle@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(40, 'Bernita Friesen', 'oemele', 'langworth.jamir@erdman.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(41, 'Dr. Lindsay Bailey IV', 'oemele', 'hodkiewicz.mikayla@yahoo.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(42, 'Kelsie Daugherty', 'oemele', 'freida.bednar@bode.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(43, 'Kaden Boyle', 'oemele', 'alene28@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(44, 'Elenora Stracke', 'oemele', 'myrtis96@ratke.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(45, 'Marge Hand', 'oemele', 'tanner46@hamill.biz', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(46, 'Dr. Walker Davis', 'oemele', 'jeffrey.turcotte@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(47, 'Hailey Herzog', 'oemele', 'wstreich@fisher.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(48, 'Ofelia Connelly', 'oemele', 'wstiedemann@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(49, 'Rhiannon Bosco', 'oemele', 'curt.robel@yahoo.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(51, 'Miss Phyllis Hessel', 'oemele', 'shane@conroy.info', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(52, 'Mr. Norbert Ledner', 'oemele', 'bernier.blanche@hill.info', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(53, 'Prof. Marta Lesch', 'oemele', 'lance09@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(54, 'Kallie Mitchell', 'oemele', 'beulah77@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(55, 'Luther Cormier MD', 'oemele', 'mossie31@gmail.com', '2018-08-08 02:03:38', '2018-08-08 02:03:38'),
(56, 'Emmett Swift', 'oemele', 'sgutkowski@cole.com', '2018-08-08 02:03:39', '2018-08-08 02:03:39'),
(57, 'Isabelle Harvey', 'oemele', 'juana.koss@glover.com', '2018-08-08 02:03:39', '2018-08-08 02:03:39'),
(58, 'Mason Sauer', 'oemele', 'adelia06@gmail.com', '2018-08-08 02:03:39', '2018-08-08 02:03:39'),
(59, 'Estefania Osinski', 'oemele', 'jhuel@jenkins.info', '2018-08-08 02:03:39', '2018-08-08 02:03:39'),
(60, 'Prof. Gino Greenholt MD', 'oemele', 'nrogahn@mraz.com', '2018-08-08 02:03:39', '2018-08-08 02:03:39'),
(61, 'Dr. Einar Monahan', 'male', 'karen41@hotmail.com', '2018-08-08 02:05:12', '2018-08-08 02:05:12'),
(62, 'Velda Lindgren', 'male', 'becker.colten@bauch.com', '2018-08-08 02:05:12', '2018-08-08 02:05:12'),
(63, 'Shyanne Leuschke', 'male', 'eeichmann@wuckert.biz', '2018-08-08 02:05:12', '2018-08-08 02:05:12'),
(64, 'Prof. Kelli Huel Sr.', 'male', 'coby87@hotmail.com', '2018-08-08 02:05:12', '2018-08-08 02:05:12'),
(65, 'Minnie Jones', 'male', 'koch.reginald@pfannerstill.biz', '2018-08-08 02:05:12', '2018-08-08 02:05:12'),
(66, 'Camille Johnston', 'male', 'schneider.murphy@gmail.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(67, 'Tiffany Walker', 'male', 'parker.vesta@gmail.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(68, 'Hertha Koepp Jr.', 'male', 'rkuvalis@gmail.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(69, 'Berry Sporer DDS', 'male', 'anya.damore@huel.org', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(70, 'Jaron Hauck', 'male', 'providenci13@gmail.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(71, 'Jaunita Thompson', 'male', 'zack35@gmail.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(72, 'Prof. Francesco Wintheiser', 'male', 'enolan@lubowitz.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(73, 'Bud Block', 'male', 'ukling@yahoo.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(74, 'Deanna Gibson', 'male', 'kiehn.rosalinda@harris.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(75, 'Elvie Fadel', 'male', 'carter.jabari@wyman.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(76, 'Elissa Rice I', 'male', 'witting.davon@collier.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(77, 'Asia Lubowitz', 'male', 'anne45@hand.org', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(78, 'Curt O\'Conner', 'male', 'cronin.victor@olson.com', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(79, 'Laurianne Haag', 'male', 'khintz@crist.org', '2018-08-08 02:05:13', '2018-08-08 02:05:13'),
(80, 'Colten Cole MD', 'male', 'celia.daugherty@yahoo.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(81, 'Marilou Tillman', 'male', 'monica76@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(82, 'Marilie Ankunding', 'male', 'maegan.bogan@krajcik.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(83, 'Madilyn Feil', 'male', 'lebsack.mariam@gmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(84, 'Carmine Cremin', 'male', 'upton.callie@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(86, 'Josefina Bartell', 'male', 'dreinger@gmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(87, 'Jena Boyle', 'male', 'huel.belle@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(88, 'Prof. Jerel Strosin', 'male', 'cristobal.crooks@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(89, 'Louie Buckridge', 'male', 'qturcotte@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(90, 'Austin McClure', 'male', 'manley23@gmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(91, 'Miss Bette Daniel PhD', 'male', 'kamron.mcdermott@hotmail.com', '2018-08-08 02:05:14', '2018-08-08 02:05:14'),
(92, 'Sigrid Batz', 'male', 'lucious31@adams.org', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(93, 'Nina Gutkowski', 'male', 'jacobson.gennaro@tromp.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(94, 'Jordan Corkery', 'male', 'thora63@welch.org', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(95, 'Prof. Jarrett Stark II', 'male', 'schmitt.jamal@goodwin.biz', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(96, 'Lonnie Ratke', 'male', 'ambrose73@yahoo.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(97, 'Prof. Demarco Lang', 'male', 'gregoria21@fritsch.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(98, 'Jaqueline Hessel', 'male', 'hilpert.kendra@schoen.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(99, 'Daija Dach', 'male', 'roma.ondricka@hotmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(100, 'Miss Hilda Brown PhD', 'male', 'hyatt.amaya@crist.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(101, 'Mrs. Jany Maggio', 'male', 'gerhold.cora@gmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(102, 'Milan Waters', 'male', 'aziemann@fay.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(103, 'Dr. Royce Wilkinson', 'male', 'amani.schimmel@hotmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(104, 'Ophelia Williamson Jr.', 'male', 'fmann@yahoo.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(105, 'Mariah Dickinson', 'male', 'kale09@gmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(106, 'Rogelio Ebert', 'male', 'alvina.schoen@kiehn.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(107, 'Prof. Jermey Crist V', 'male', 'eusebio.cummerata@hotmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(108, 'Mr. Zakary Okuneva III', 'male', 'keaton.gorczany@gmail.com', '2018-08-08 02:05:15', '2018-08-08 02:05:15'),
(110, 'Prof. Manuela Considine I', 'male', 'fkub@connelly.net', '2018-08-08 02:05:16', '2018-08-08 02:05:16'),
(111, 'son', 'Male', 'mtshpp@gmail.com', '2018-08-15 20:16:19', '2018-08-15 20:16:19'),
(112, 'cuc', 'Female', 'tianang@gmail.com', '2018-08-15 20:16:42', '2018-08-15 20:16:42'),
(113, 'hello', 'Female', '124315@gmail.com', '2018-08-15 20:21:06', '2018-08-15 20:21:06'),
(114, 'nam chó', 'Male', 'namcho@gmail.com', '2018-08-15 20:28:40', '2018-08-15 20:28:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `age`, `phone`, `created_at`, `updated_at`) VALUES
(6, 'Oliver Treutel', 15, '+1-976-353-0561', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(7, 'Dr. Cade Corwin', 77, '(247) 238-6307', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(8, 'Xavier Konopelski DVM', 41, '(796) 733-9031', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(9, 'Santiago Cartwright', 56, '+1-673-519-2568', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(10, 'Prof. Fred Zemlak MD', 42, '446-960-9122', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(13, 'Addison Pollich', 92, '249-890-2929 x54370', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(16, 'Boris Donnelly', 84, '+1.724.821.2653', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(18, 'Margarette Stehr DDS', 69, '224.391.7164', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(20, 'Bertrand Zboncak', 63, '604-857-5676 x8342', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(21, 'Martine Johnson', 74, '530-492-6322 x65561', '2018-07-27 03:01:34', '2018-07-27 03:01:34'),
(23, 'Declan Baumbach DDS', 5, '502.448.1265 x26865', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(24, 'Hadley Hermann', 74, '1-338-232-4760 x271', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(25, 'Alva Ferry IV', 88, '+1.814.333.2605', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(26, 'Taylor Nikolaus', 93, '(212) 584-4716', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(27, 'Americo Runolfsdottir DVM', 49, '(702) 645-8075', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(28, 'Prof. Kolby Feeney IV', 7, '919-516-8433 x969', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(29, 'Cleora Wisozk I', 33, '+1.696.486.7294', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(30, 'Tianna Hand', 95, '(887) 864-3244 x91533', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(31, 'Isac Koepp', 55, '(229) 438-8793 x59286', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(33, 'Dr. Kade Weimann Jr.', 0, '293.441.4512 x4915', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(35, 'Yesenia Dach', 75, '+1-683-433-8205', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(36, 'Doris Daugherty MD', 50, '817-466-2124', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(38, 'Melody Bayer', 30, '854-501-5392 x1729', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(39, 'Devante Franecki', 68, '476-852-7879 x257', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(40, 'Daisha Bruen II', 9, '1-993-246-0121 x4892', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(41, 'Elisa Roob', 91, '1-625-527-0221 x44106', '2018-07-27 03:01:35', '2018-07-27 03:01:35'),
(42, 'Tad Witting', 74, '203-647-7262', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(43, 'Mrs. Nova Greenfelder I', 3, '(689) 553-5364 x768', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(44, 'Mr. Clemens Yost', 79, '(513) 807-5771 x43102', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(45, 'Mike Cronin', 30, '1-619-733-9283 x169', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(46, 'Tabitha O\'Reilly', 32, '352-724-1857 x0245', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(47, 'Prof. Emily Connelly', 21, '246.838.3601 x8874', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(48, 'Eileen Ernser', 37, '1-979-643-6602', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(49, 'Enid Runolfsson', 83, '+1-384-247-3897', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(50, 'Mr. Rowan Terry MD', 29, '(612) 621-8723 x9540', '2018-07-27 03:01:36', '2018-07-27 03:01:36'),
(51, 'son', 18, '7', '2018-08-06 02:58:18', '2018-08-06 02:58:18'),
(52, 'Mai Truong Sơn', 26, '098', '2018-08-06 03:20:51', '2018-08-06 03:20:51'),
(53, 'sơn', 15, '90130', '2018-08-06 03:22:40', '2018-08-06 03:22:40'),
(54, 'hello', 25, '19302-123', '2018-08-06 03:31:43', '2018-08-06 03:31:43'),
(55, 'nam ham', 20, '12984', '2018-08-06 03:34:11', '2018-08-06 03:34:11'),
(56, 'thucuc', 20, '0963', '2018-08-06 07:52:22', '2018-08-06 07:52:22'),
(57, 'sontruong mt', 56, '015901590', '2018-08-06 07:54:46', '2018-08-06 07:54:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_07_26_142148_create_articles_table', 1),
(6, '2018_07_27_043519_create_customers_table', 2),
(7, '2018_07_27_074211_create_tusers_table', 3),
(8, '2018_08_08_070358_create_customer_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `title` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tusers`
--

CREATE TABLE `tusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tusers`
--

INSERT INTO `tusers` (`id`, `name`, `email`, `contact_number`, `created_at`, `updated_at`) VALUES
(1, 'Jovanny VonRueden', 'nbailey@upton.org', '845-607-6180 x7674', NULL, NULL),
(2, 'Lilla Dickens Jr.', 'jameson66@hotmail.com', '392-701-2668 x23864', NULL, NULL),
(3, 'Natalie Hessel', 'jhayes@smith.com', '605.915.1547 x64618', NULL, NULL),
(4, 'Ludwig McLaughlin', 'gudrun84@hotmail.com', '1-625-636-9751 x972', NULL, NULL),
(5, 'Jaqueline Osinski', 'kovacek.josue@tremblay.info', '1-435-256-5011', NULL, NULL),
(6, 'Garett Connelly', 'joelle.brown@yahoo.com', '1-354-960-5842', NULL, NULL),
(7, 'Bret Dicki', 'lmedhurst@tillman.com', '460.620.9999 x364', NULL, NULL),
(8, 'Rhiannon Armstrong', 'bradtke.rosetta@swift.com', '(663) 646-8427 x85487', NULL, NULL),
(9, 'Sophia Mertz', 'elfrieda.predovic@satterfield.com', '951-969-7142 x220', NULL, NULL),
(10, 'Deon Kirlin MD', 'keven26@bernier.info', '(532) 567-8478', NULL, NULL),
(11, 'Sadye Wintheiser', 'dusty.kihn@walsh.info', '1-494-589-7236 x2887', NULL, NULL),
(12, 'Prof. Quinton McLaughlin', 'ken.koepp@gmail.com', '264-788-6996 x675', NULL, NULL),
(13, 'Shanie Oberbrunner', 'mohammad98@hotmail.com', '1-619-564-2136', NULL, NULL),
(14, 'Reyna Strosin', 'annamarie26@yahoo.com', '456.962.4750', NULL, NULL),
(15, 'Eli Friesen', 'caleigh.orn@yahoo.com', '912.584.4073 x46354', NULL, NULL),
(16, 'Johanna Boyle', 'neha90@nicolas.com', '1-994-299-3035', NULL, NULL),
(17, 'Precious Koch', 'lenora.kassulke@wilkinson.info', '1-667-406-1938', NULL, NULL),
(18, 'Lessie Stamm', 'afton47@gmail.com', '1-240-968-0311 x67292', NULL, NULL),
(19, 'Liliana Gusikowski', 'mueller.demarcus@yahoo.com', '(261) 542-9470 x688', NULL, NULL),
(20, 'Dr. Arden Bauch', 'emiliano.kemmer@hotmail.com', '+19846322488', NULL, NULL),
(21, 'Delia Padberg', 'imelda.nienow@armstrong.com', '+13024238464', NULL, NULL),
(22, 'Miss Cassandra Cummerata', 'predovic.franco@gmail.com', '339.372.8224 x3719', NULL, NULL),
(23, 'Kirk Rodriguez', 'hilario79@hotmail.com', '376-303-5286 x961', NULL, NULL),
(24, 'Prof. Tommie Windler I', 'hunter55@hammes.com', '+1-781-887-5742', NULL, NULL),
(25, 'Prof. Estell McGlynn PhD', 'drake28@hotmail.com', '(381) 987-1594 x583', NULL, NULL),
(26, 'Mrs. Antonetta Murray', 'jabari.haley@yahoo.com', '265-284-7155 x5751', NULL, NULL),
(27, 'Betty Wisoky DVM', 'mrunolfsson@gmail.com', '1-741-428-5680 x644', NULL, NULL),
(28, 'Mrs. Florine Herman V', 'ucummings@gmail.com', '+1-404-380-0098', NULL, NULL),
(29, 'Walton Hansen IV', 'koss.haylie@rogahn.com', '+1.608.748.1053', NULL, NULL),
(30, 'Mrs. Serenity Hamill IV', 'shawna33@gmail.com', '1-619-749-8183', NULL, NULL),
(31, 'Dana Gutmann III', 'brandy.jacobi@yahoo.com', '+17485349027', NULL, NULL),
(32, 'Ole Franecki', 'sipes.anibal@gibson.com', '+1-981-856-9655', NULL, NULL),
(33, 'Wendy Rowe', 'hrutherford@tromp.com', '554.528.0185', NULL, NULL),
(34, 'Troy Frami MD', 'jacobi.felicita@hotmail.com', '+1 (714) 358-7501', NULL, NULL),
(35, 'Melody Trantow', 'mueller.watson@yahoo.com', '749.385.6189 x2652', NULL, NULL),
(36, 'Julius McCullough', 'kuvalis.marge@gibson.com', '1-901-325-4722 x8909', NULL, NULL),
(37, 'Casey Herzog', 'dweber@yahoo.com', '970-235-1430', NULL, NULL),
(38, 'Letha Kerluke', 'wblanda@gmail.com', '830-288-6548 x9995', NULL, NULL),
(39, 'Henry Eichmann IV', 'tremblay.sunny@yahoo.com', '1-483-258-3049 x677', NULL, NULL),
(40, 'Mr. Darrin Jones MD', 'qstreich@robel.com', '336-225-8933', NULL, NULL),
(41, 'Mrs. Annabel Krajcik I', 'tiana.hermann@grant.com', '886-476-1763 x8529', NULL, NULL),
(42, 'Marta Leuschke', 'stracke.asha@gmail.com', '537-864-1164 x817', NULL, NULL),
(43, 'Dr. Robbie Murazik PhD', 'davis.annamae@beer.com', '+1 (959) 885-9140', NULL, NULL),
(44, 'Willy Conroy', 'kessler.oliver@hotmail.com', '256.998.6270 x80727', NULL, NULL),
(45, 'Ms. Jannie Kuphal', 'ollie37@gmail.com', '(473) 203-8609', NULL, NULL),
(46, 'Judson Ernser', 'aosinski@yahoo.com', '1-558-813-5663 x002', NULL, NULL),
(47, 'Ms. Felicity Labadie V', 'doconnell@runolfsson.com', '(625) 217-3332', NULL, NULL),
(48, 'Mr. Shaun Rath Jr.', 'isabelle.koch@gmail.com', '(814) 416-3226', NULL, NULL),
(49, 'Ms. Lisette Russel', 'ethel72@yahoo.com', '1-472-901-5990 x45542', NULL, NULL),
(50, 'Amaya McKenzie MD', 'qkoch@batz.com', '+13243332677', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
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
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tusers`
--
ALTER TABLE `tusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tusers_email_unique` (`email`);

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
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tusers`
--
ALTER TABLE `tusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
