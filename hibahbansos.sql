-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2020 pada 14.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hibahbansos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `nohp` varchar(13) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `usertype` int(11) NOT NULL,
  `jenis_pd` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` varchar(50) NOT NULL,
  `company_phone2` varchar(50) NOT NULL,
  `company_fax` varchar(50) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_gmail` varchar(50) NOT NULL,
  `company_gmail_pass` varchar(255) NOT NULL,
  `company_photo` text NOT NULL,
  `company_photo_thumb` text NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `company_gmail`, `company_gmail_pass`, `company_photo`, `company_photo_thumb`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'LigEt', 'History, Target, Background, etc', 'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081241412', '0711412402', '24141', 'robyj03@gmail.com', 'robyj03@gmail.com', 'rahasia030799', 'e-hibah-bangka-barat20200804090805.jpg', 'e-hibah-bangka-barat20200804090805_thumb.jpg', '', '2017-11-09 06:45:34', '', '2020-09-15 11:16:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_access`
--

CREATE TABLE `data_access` (
  `id_data_access` int(11) NOT NULL,
  `data_access_name` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_access`
--

INSERT INTO `data_access` (`id_data_access`, `data_access_name`, `color`) VALUES
(1, 'Read', 'primary'),
(2, 'Create', 'info'),
(3, 'Update', 'warning'),
(4, 'Delete', 'danger'),
(5, 'Restore', 'success');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jenis`
--

CREATE TABLE `detail_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL,
  `jenis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_jenis`
--

INSERT INTO `detail_jenis` (`id_jenis`, `nama_jenis`, `jenis_id`) VALUES
(1, 'Pembangunan Masjid', 1),
(2, 'Musholla/Langgar/Surau', 1),
(3, 'Pembangunan Gereja', 1),
(4, 'Pembangunan Klenteng', 1),
(5, 'Pembangunan Vihara', 1),
(6, 'Pembangunan Pura', 1),
(7, 'Pembangunan Tepekong', 1),
(8, 'Beasiswa Pendidikan Kuliah', 2),
(9, 'Beasiswa Pendidikan SMA/SMK/MA', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis_proposal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis_proposal`) VALUES
(1, 'HIbah'),
(2, 'Bansos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `username`, `time`) VALUES
(22, '::1', 'dinkes', '2020-08-31 00:17:13'),
(26, '::1', 'dinkes', '2020-08-31 01:21:39'),
(27, '::1', 'dinkes', '2020-08-31 01:21:50'),
(36, '::1', 'kesra12345', '2020-09-15 11:37:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_queries`
--

CREATE TABLE `log_queries` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(15) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_queries`
--

INSERT INTO `log_queries` (`id`, `content`, `created_by`, `created_at`, `ip_address`, `user_agent`) VALUES
(1, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'dashboards\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:40:18', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(2, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'dashboards asdasda sdasd\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:40:22', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(3, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'Dashboard\', `menu_url` = \'dashboardsasdasdasdasd\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:41:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(4, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'Dashboard\', `menu_url` = \'asdasasdasdawdad\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:41:42', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(5, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'asdasasdasdawdad\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:42:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(6, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'asdasasdasdawdad asasd asd a\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:42:29', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(7, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'dashboard\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-23 20:42:36', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(8, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`) VALUES (\'Percobaan\', \'percobaan\', \'#\')', 'Muhammad Azmi', '2019-07-23 20:55:10', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(9, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'5\', \'SubMenu Coba 1\', \'percobaan/submenu1\', \'1\')', 'Muhammad Azmi', '2019-07-23 21:09:34', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(10, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'5\', \'SubMenu 2\', \'percobaan/submenu2\', \'2\')', 'Muhammad Azmi', '2019-07-23 21:13:24', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(11, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'SubMenu Coba 2\', `submenu_url` = \'percobaan/submenu2\', `order_no` = \'2\'\nWHERE `id_submenu` IS NULL', 'Muhammad Azmi', '2019-07-23 21:14:51', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(12, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'SubMenu Coba 2\', `submenu_url` = \'percobaan/submenu2\', `order_no` = \'2\'\nWHERE `id_submenu` = \'8\'', 'Muhammad Azmi', '2019-07-23 21:15:47', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(13, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'5\', \'SubMenu Coba 2\', \'percobaan/submenu2\', \'2\')', 'Muhammad Azmi', '2019-07-23 21:16:06', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(14, 'UPDATE `menu_access` SET `usertype_id` = \'1\', `menu_id` = \'5\', `submenu_id` = \'7\'\nWHERE `id_menu_access` = \'19\'', 'Muhammad Azmi', '2019-07-23 21:41:38', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(15, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'10\'', 'Muhammad Azmi', '2019-07-23 21:44:33', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(16, 'UPDATE `menu_access` SET `usertype_id` = \'1\', `menu_id` = \'4\', `submenu_id` = NULL\nWHERE `id_menu_access` = \'19\'', 'Muhammad Azmi', '2019-07-23 21:44:43', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(17, 'UPDATE `menu` SET `menu_name` = \'Percobaan\', `menu_slug` = \'percobaan\', `menu_url` = \'#\'\nWHERE `id_menu` = \'5\'', 'Muhammad Azmi', '2019-07-23 21:57:35', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(18, 'UPDATE `menu` SET `menu_name` = \'Percobaan\', `menu_slug` = \'percobaan\', `menu_url` = \'#\', `menu_icon` = \'fa-balance-scale\'\nWHERE `id_menu` = \'5\'', 'Muhammad Azmi', '2019-07-23 21:58:10', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(19, 'UPDATE `users` SET `name` = \'Muhammad Azmi\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'xx\', `phone` = \'081228289766\', `email` = \'azmi2793@gmail.com\', `username` = \'muhazmi\', `modified_by` = \'muhazmi\', `photo` = \'muhazmi20190724055403.png\', `photo_thumb` = \'muhazmi20190724055403_thumb.png\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-24 05:54:03', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(20, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'12345\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 05:55:30', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(21, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 05:56:56', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(22, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 05:59:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(23, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$kneC1zqK23uQvk.G6QXeteXlZ3HW6V7wFbpPh1.uwTA0dTORFHVse\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:04:57', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(24, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$wMbKmXgd4YGGXdhYXYaIdOMGmuCjHdcYXLX7TO9wTVAYAHYuQDgtS\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:05:04', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(25, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$0vTknFp0g2DAAGLdb0Vjou2EmNIZDw4/vhoyDGwDT5GoULhBxp7tC\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:10:27', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(26, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$NatAWLuGSat/MH5qJYXzXOR5VgKxCt5SC.9GsFdU9LPPybSuoyax2\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:14:19', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(27, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:19:40', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(28, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$lSCbkcvr5D4Xq75ntfdrYe8PP04NAFZMxGbnNK1p0gS747SITTHCu\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:19:55', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(29, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'$2y$10$FpmL6vtC5Ru/RGolG6ZuJORzzrl.0gtKfJQuiSHSXm39bUOAwIzAG\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 06:52:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(30, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `company_gmail_pass` = \'wakped2017\', `modified_by` = \'muhazmi\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 07:10:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(31, 'UPDATE `users` SET `password` = \'$2y$10$wCwKsciaSVVB0UY.sfw9bO13szZ7/itjn7OxRZEGxT4w/18gsR7.m\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-24 07:15:22', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(32, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 07:24:25', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(33, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-24 07:25:04', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(34, 'UPDATE `menu` SET `menu_name` = \'Dashboard\', `menu_slug` = \'dashboard\', `menu_url` = \'dashboard\', `menu_icon` = \'fa-dashboard\'\nWHERE `id_menu` = \'4\'', 'Muhammad Azmi', '2019-07-24 07:25:27', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(35, 'UPDATE `users` SET `name` = \'System Operator\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'operator@gmail.com\', `username` = \'operator\', `usertype` = \'3\', `modified_by` = \'muhazmi\'\nWHERE `id_users` = \'7\'', 'Muhammad Azmi', '2019-07-24 08:00:16', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(36, 'UPDATE `users` SET `name` = \'Muhammad Azmi\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'xx\', `phone` = \'081228289766\', `email` = \'azmi2793@gmail.com\', `username` = \'muhazmi\', `usertype` = \'1\', `modified_by` = \'muhazmi\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:00:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(37, 'UPDATE `users` SET `name` = \'Budi Sudarsono\', `birthdate` = \'07/31/2019\', `birthplace` = \'Jakarta\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'budisudarsono@gmail.com\', `username` = \'budisudarsono\', `usertype` = \'2\', `modified_by` = \'muhazmi\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2019-07-24 08:00:24', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(38, 'UPDATE `users` SET `name` = \'Muhammad Azmi\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'xx\', `phone` = \'081228289766\', `email` = \'azmi2793@gmail.com\', `username` = \'superadmin\', `usertype` = \'1\', `modified_by` = \'muhazmi\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:02:02', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(39, 'UPDATE `users` SET `password` = \'$2y$10$w6gj5urxK7fcV/rq.X1imerL1iwZmyXtJh6g87Em9J.9y/mIJxCj6\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:02:12', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(40, 'UPDATE `template` SET `value` = \'fixed\'\nWHERE `id` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:10:39', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(41, 'UPDATE `template` SET `value` = \'layout-boxed\'\nWHERE `id` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:11:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(42, 'UPDATE `template` SET `value` = \'sidebar-collapse\'\nWHERE `id` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:11:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(43, 'UPDATE `template` SET `value` = \'\'\nWHERE `id` = \'1\'', 'Muhammad Azmi', '2019-07-24 08:11:35', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(44, 'UPDATE `template` SET `value` = \'skin-blue\'\nWHERE `id` = \'2\'', 'Muhammad Azmi', '2019-07-24 08:11:45', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(45, 'UPDATE `template` SET `value` = \'skin-red\'\nWHERE `id` = \'2\'', 'Muhammad Azmi', '2019-07-24 08:11:47', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(46, 'UPDATE `template` SET `value` = \'skin-black\'\nWHERE `id` = \'2\'', 'Muhammad Azmi', '2019-07-24 08:11:53', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(47, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2019-07-24 08:20:am\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2019-07-24 08:20:38', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(48, 'UPDATE `menu` SET `menu_name` = \'Peminjaman\', `menu_slug` = \'peminjaman\', `menu_url` = \'#\', `menu_icon` = \'fa-edit\'\nWHERE `id_menu` = \'5\'', 'Muhammad Azmi', '2019-07-24 11:49:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(49, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`) VALUES (\'Pengembalian\', \'pengembalian\', \'#\', \'fa-edit\')', 'Muhammad Azmi', '2019-07-24 11:49:44', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(50, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`) VALUES (\'Master Arsip\', \'masterarsip\', \'#\', \'fa-archive\')', 'Muhammad Azmi', '2019-07-24 11:50:11', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(51, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`) VALUES (\'Master Rak\', \'masterrak\', \'#\', \'fa-building\')', 'Muhammad Azmi', '2019-07-24 11:50:54', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(52, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`) VALUES (\'Master Baris\', \'masterbaris\', \'#\', \'fa-bookmark\')', 'Muhammad Azmi', '2019-07-24 11:51:14', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(53, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`) VALUES (\'Laporan\', \'laporan\', \'#\', \'fa-file\')', 'Muhammad Azmi', '2019-07-24 11:53:25', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(54, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Tambah Peminjaman\', `submenu_url` = \'peminjaman/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'7\'', 'Muhammad Azmi', '2019-07-24 11:54:04', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(55, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Data Peminjaman\', `submenu_url` = \'peminjaman\', `order_no` = \'2\'\nWHERE `id_submenu` = \'9\'', 'Muhammad Azmi', '2019-07-24 11:54:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(56, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'6\', \'Tambah Pengembalian\', \'pengembalian/create\', \'1\')', 'Muhammad Azmi', '2019-07-24 11:54:40', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(57, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'6\', \'Data Pengembalian\', \'pengembalian\', \'2\')', 'Muhammad Azmi', '2019-07-24 11:54:51', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(58, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'7\', \'Tambah Arsip\', \'arsip/create\', \'1\')', 'Muhammad Azmi', '2019-07-24 11:55:06', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(59, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'7\', \'Data Arsip\', \'arsip\', \'2\')', 'Muhammad Azmi', '2019-07-24 11:55:14', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(60, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'8\', \'Tambah Rak\', \'rak/create\', \'1\')', 'Muhammad Azmi', '2019-07-24 11:55:43', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(61, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'8\', \'Data Rak\', \'rak\', \'2\')', 'Muhammad Azmi', '2019-07-24 11:55:54', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(62, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'9\', \'Tambah Baris\', \'baris/create\', \'1\')', 'Muhammad Azmi', '2019-07-24 11:56:14', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(63, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'9\', \'Data Baris\', \'baris\', \'2\')', 'Muhammad Azmi', '2019-07-24 11:56:22', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(64, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'10\', \'Laporan Peminjaman\', \'laporan/peminjaman\', \'1\')', 'Muhammad Azmi', '2019-07-24 11:56:52', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(65, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'10\', \'Pengembalian\', \'laporan/pengembalian\', \'2\')', 'Muhammad Azmi', '2019-07-24 11:57:08', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(66, 'UPDATE `submenu` SET `menu_id` = \'10\', `submenu_name` = \'Laporan Pengembalian\', `submenu_url` = \'laporan/pengembalian\', `order_no` = \'2\'\nWHERE `id_submenu` = \'19\'', 'Muhammad Azmi', '2019-07-24 12:25:29', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(67, 'UPDATE `menu` SET `menu_name` = \'Pengembalian\', `menu_slug` = \'pengembalian\', `menu_url` = \'#\', `menu_icon` = \'fa-edit\', `order_no` = \'3\'\nWHERE `id_menu` = \'6\'', 'Muhammad Azmi', '2019-07-24 12:31:45', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(68, 'UPDATE `menu` SET `menu_name` = \'Master Arsip\', `menu_slug` = \'masterarsip\', `menu_url` = \'#\', `menu_icon` = \'fa-archive\', `order_no` = \'4\'\nWHERE `id_menu` = \'7\'', 'Muhammad Azmi', '2019-07-24 12:31:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(69, 'UPDATE `menu` SET `menu_name` = \'Master Rak\', `menu_slug` = \'masterrak\', `menu_url` = \'#\', `menu_icon` = \'fa-building\', `order_no` = \'5\'\nWHERE `id_menu` = \'8\'', 'Muhammad Azmi', '2019-07-24 12:31:54', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(70, 'UPDATE `menu` SET `menu_name` = \'Master Baris\', `menu_slug` = \'masterbaris\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Muhammad Azmi', '2019-07-24 12:31:57', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(71, 'UPDATE `menu` SET `menu_name` = \'Laporan\', `menu_slug` = \'laporan\', `menu_url` = \'#\', `menu_icon` = \'fa-file\', `order_no` = \'7\'\nWHERE `id_menu` = \'10\'', 'Muhammad Azmi', '2019-07-24 12:32:00', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(72, 'UPDATE `users` SET `name` = \'Administrator\', `birthdate` = \'07/31/2019\', `birthplace` = \'Jakarta\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'Administrator@gmail.com\', `username` = \'Administrator\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2019-07-24 12:34:36', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(73, 'UPDATE `users` SET `name` = \'Administrator\', `birthdate` = \'07/31/2019\', `birthplace` = \'Jakarta\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'administrator@gmail.com\', `username` = \'administrator\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(74, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'2\')', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(75, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'4\')', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(76, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'1\')', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(77, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'5\')', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(78, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'3\')', 'Muhammad Azmi', '2019-07-24 12:34:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(79, 'UPDATE `users` SET `password` = \'$2y$10$m7S0mm1S8ZuT3SLBXUpKg.taEkG.M5sGKFb3ytxBp6.P21jgn6L9m\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2019-07-24 12:34:58', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(80, 'UPDATE `menu` SET `menu_name` = \'Arsip\', `menu_slug` = \'arsip\', `menu_url` = \'#\', `menu_icon` = \'fa-archive\', `order_no` = \'4\'\nWHERE `id_menu` = \'7\'', 'Muhammad Azmi', '2019-07-24 14:10:53', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(81, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-003\', `arsip_name` = \'Coba lagi 03\', `rak_id` = \'1\', `baris_id` = \'1\', `file_arsip` = \'coba-lagi-0320190724144248.pdf\'\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:42:48', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(82, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-001\', `arsip_name` = \'Percobaan Arsip 1\', `rak_id` = \'1\', `baris_id` = \'1\', `file_arsip` = \'percobaan-arsip-120190724144306.pdf\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 14:43:06', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(83, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-0011\', `arsip_name` = \'Percobaan Arsip 1\', `rak_id` = \'1\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 14:43:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(84, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-001\', `arsip_name` = \'Percobaan Arsip 1\', `rak_id` = \'2\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 14:43:42', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(85, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-00111\', `arsip_name` = \'Percobaan Arsip 1\', `rak_id` = \'2\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 14:43:52', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(86, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 14:47:pm\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 14:47:55', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(87, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'7\', \'Recycle Bin\', \'arsip/deleted_list\', \'3\')', 'Muhammad Azmi', '2019-07-24 14:51:55', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(88, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 14:56:pm\'\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:56:34', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(89, 'UPDATE `arsip` SET `is_delete` = \'0\', `deleted_by` = NULL, `deleted_at` = NULL\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:56:38', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(90, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 14:57:pm\'\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:57:16', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(91, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 14:57:pm\'\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:57:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(92, 'DELETE FROM `arsip`\nWHERE `id_arsip` = \'5\'', 'Muhammad Azmi', '2019-07-24 14:58:48', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(93, 'UPDATE `menu` SET `menu_name` = \'Rak\', `menu_slug` = \'rak\', `menu_url` = \'#\', `menu_icon` = \'fa-building\', `order_no` = \'5\'\nWHERE `id_menu` = \'8\'', 'Muhammad Azmi', '2019-07-24 16:09:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(94, 'INSERT INTO `rak` (`rak_name`) VALUES (\'Rak C\')', 'Muhammad Azmi', '2019-07-24 16:13:13', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(95, 'UPDATE `rak` SET `rak_name` = \'Rak CCCC\'\nWHERE `id_rak` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:13:32', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(96, 'UPDATE `rak` SET `rak_name` = \'Rak C\'\nWHERE `id_rak` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:13:37', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(97, 'UPDATE `menu` SET `menu_name` = \'Baris\', `menu_slug` = \'baris\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Muhammad Azmi', '2019-07-24 16:15:36', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(98, 'INSERT INTO `baris` (`baris_name`) VALUES (\'Baris 3\')', 'Muhammad Azmi', '2019-07-24 16:17:15', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(99, 'UPDATE `baris` SET `baris_name` = \'Baris 32\'\nWHERE `id_baris` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:17:19', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(100, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-12345\', \'1\', \'4\')', 'Muhammad Azmi', '2019-07-24 16:31:06', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(101, 'INSERT INTO `usertype` (`usertype_name`) VALUES (\'Pegawai\')', 'Muhammad Azmi', '2019-07-24 16:33:02', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(102, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'asdadqwdva\', \'5\', \'2\')', 'Muhammad Azmi', '2019-07-24 16:39:18', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(103, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'adawdvwqdvawd\', \'7\', \'1\')', 'Muhammad Azmi', '2019-07-24 16:40:40', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(104, 'UPDATE `peminjaman` SET `kode_peminjaman` = \'QWEQWRQWR\', `user_id` = \'7\', `arsip_id` = \'1\'\nWHERE `id_peminjaman` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:47:11', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(105, 'UPDATE `peminjaman` SET `kode_peminjaman` = \'QWEQWRQWR\', `user_id` = \'7\', `arsip_id` = \'2\'\nWHERE `id_peminjaman` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:47:16', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(106, 'UPDATE `peminjaman` SET `kode_peminjaman` = \'QWEQWRQWR\', `user_id` = \'7\', `arsip_id` = \'3\'\nWHERE `id_peminjaman` = \'3\'', 'Muhammad Azmi', '2019-07-24 16:47:20', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(107, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-003\', \'5\', \'1\')', 'Muhammad Azmi', '2019-07-24 17:19:25', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(108, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'PGB-1\', \'4\')', 'Muhammad Azmi', '2019-07-24 17:20:00', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(109, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-1\', \'5\', \'2\')', 'Muhammad Azmi', '2019-07-24 18:47:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(110, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'asdasdsa\', \'1\')', 'Muhammad Azmi', '2019-07-24 19:29:30', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Mobile Safari/537.36'),
(111, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'asdasczczca\', \'1\')', 'Muhammad Azmi', '2019-07-24 19:30:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(112, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'zxcaqfdqdf\', \'1\')', 'Muhammad Azmi', '2019-07-24 19:31:04', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(113, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'\'', 'Muhammad Azmi', '2019-07-24 19:31:04', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(114, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'ACszca\', \'1\')', 'Muhammad Azmi', '2019-07-24 21:18:37', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(115, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 21:18:37', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(116, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'sxcwdf1\', \'1\')', 'Muhammad Azmi', '2019-07-24 21:20:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(117, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 21:20:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(118, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-01\', `arsip_name` = \'Testing lagi\', `rak_id` = \'2\', `baris_id` = \'2\'\nWHERE `id_arsip` = \'4\'', 'Muhammad Azmi', '2019-07-24 22:03:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(119, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-02\', `arsip_name` = \'Percobaan Arsip 1\', `rak_id` = \'2\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 22:03:30', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(120, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-03\', `arsip_name` = \'Arsip Nomor 3\', `rak_id` = \'2\', `baris_id` = \'2\'\nWHERE `id_arsip` = \'2\'', 'Muhammad Azmi', '2019-07-24 22:03:44', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(121, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-01\', `arsip_name` = \'Arsip No 1\', `rak_id` = \'2\', `baris_id` = \'2\'\nWHERE `id_arsip` = \'4\'', 'Muhammad Azmi', '2019-07-24 22:03:48', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36');
INSERT INTO `log_queries` (`id`, `content`, `created_by`, `created_at`, `ip_address`, `user_agent`) VALUES
(122, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-02\', `arsip_name` = \'Arsip Nomor 2\', `rak_id` = \'2\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 22:03:56', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(123, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-04\', `arsip_name` = \'Arsip Nomor 4\', `rak_id` = \'1\', `baris_id` = \'1\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 22:04:06', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(124, 'UPDATE `arsip` SET `kode_arsip` = \'ARS-01\', `arsip_name` = \'Arsip Nomor 1\', `rak_id` = \'2\', `baris_id` = \'2\'\nWHERE `id_arsip` = \'4\'', 'Muhammad Azmi', '2019-07-24 22:04:12', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(125, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-1\', \'5\', \'4\')', 'Muhammad Azmi', '2019-07-24 22:04:33', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(126, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-2\', \'5\', \'3\')', 'Muhammad Azmi', '2019-07-24 22:04:44', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(127, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-1\', \'5\', \'4\')', 'Muhammad Azmi', '2019-07-24 22:07:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(128, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-2\', \'5\', \'2\')', 'Muhammad Azmi', '2019-07-24 22:07:37', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(129, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 22:14:pm\'\nWHERE `id_arsip` = \'4\'', 'Muhammad Azmi', '2019-07-24 22:14:46', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(130, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 22:14:pm\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 22:14:48', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(131, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 22:14:pm\'\nWHERE `id_arsip` = \'2\'', 'Muhammad Azmi', '2019-07-24 22:14:49', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(132, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2019-07-24 22:14:pm\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 22:14:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(133, 'DELETE FROM `arsip`\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-24 22:14:52', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(134, 'DELETE FROM `arsip`\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 22:14:53', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(135, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-001\', \'Arsip Nomor 1\', \'1\', \'1\', \'arsip-nomor-120190724221534.pdf\')', 'Muhammad Azmi', '2019-07-24 22:15:34', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(136, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-002\', \'Arsip Nomor 2\', \'2\', \'2\', \'arsip-nomor-220190724221557.pdf\')', 'Muhammad Azmi', '2019-07-24 22:15:57', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(137, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-003\', \'Arsip Nomor 3\', \'1\', \'1\', \'arsip-nomor-320190724221617.pdf\')', 'Muhammad Azmi', '2019-07-24 22:16:17', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(138, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-100\', \'5\', \'1\')', 'Muhammad Azmi', '2019-07-24 22:16:50', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(139, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-200\', \'5\', \'2\')', 'Muhammad Azmi', '2019-07-24 22:17:20', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(140, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'PGB-111\', \'1\')', 'Muhammad Azmi', '2019-07-24 22:18:18', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(141, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'1\'', 'Muhammad Azmi', '2019-07-24 22:18:18', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(142, 'UPDATE `users` SET `password` = \'$2y$10$y.VZy7drCtFPSXjjAMMCve6IcwxvzeUQmtUMwA.qpXZvlr7dWFMMm\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2019-07-25 05:58:00', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(143, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = \'superadmin\', `company_photo` = \'muhazcms20190725150713.jpeg\', `company_photo_thumb` = \'muhazcms20190725150713_thumb.jpeg\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-25 15:07:13', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(144, 'UPDATE `company` SET `company_name` = \'MuhAzCMS\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = \'superadmin\', `company_photo` = \'muhazcms20190725150840.png\', `company_photo_thumb` = \'muhazcms20190725150840_thumb.png\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-25 15:08:40', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(145, 'UPDATE `company` SET `company_name` = \'SIMARSIP\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2019-07-25 15:08:52', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(146, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-004\', \'Arsip Nomor 4\', \'2\', \'2\', \'arsip-nomor-420190725151631.pdf\')', 'Muhammad Azmi', '2019-07-25 15:16:31', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(147, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-005\', \'Arsip Nomor 5\', \'2\', \'2\', \'arsip-nomor-520190725151645.pdf\')', 'Muhammad Azmi', '2019-07-25 15:16:45', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(148, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'ARS-006\', \'Arsip Nomor 6\', \'1\', \'2\', \'arsip-nomor-620190725151710.pdf\')', 'Muhammad Azmi', '2019-07-25 15:17:10', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(149, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`) VALUES (\'ARS-007\', \'Arsip Nomor 7\', \'1\', \'2\')', 'Muhammad Azmi', '2019-07-25 15:17:21', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(150, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-300\', \'7\', \'3\')', 'Muhammad Azmi', '2019-07-25 15:20:59', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(151, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'PGB-2\', \'3\')', 'Muhammad Azmi', '2019-07-25 15:21:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(152, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'3\'', 'Muhammad Azmi', '2019-07-25 15:21:23', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(153, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'PMJ-400\', \'7\', \'7\')', 'Muhammad Azmi', '2019-07-26 07:26:35', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(154, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'PGB-1234\', \'4\')', 'Muhammad Azmi', '2019-07-26 07:30:49', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(155, 'UPDATE `arsip` SET `is_available` = \'0\'\nWHERE `id_arsip` = \'7\'', 'Muhammad Azmi', '2019-07-26 07:30:49', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/75.0.3770.90 Chrome/75.0.3770.90 Safari/537.36'),
(156, 'UPDATE `company` SET `company_name` = \'E-Hibah Bangka Barat\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'no-reply@muhazmi.com\', `company_gmail` = \'wakpedwakyeng@gmail.com\', `modified_by` = \'superadmin\', `company_photo` = \'e-hibah-bangka-barat20200804090805.jpg\', `company_photo_thumb` = \'e-hibah-bangka-barat20200804090805_thumb.jpg\'\nWHERE `id_company` = \'1\'', 'Muhammad Azmi', '2020-08-04 09:08:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(157, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-08-04 09:08:am\'\nWHERE `id_users` = \'7\'', 'Muhammad Azmi', '2020-08-04 09:08:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(158, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-08-04 09:08:am\'\nWHERE `id_users` = \'5\'', 'Muhammad Azmi', '2020-08-04 09:08:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(159, 'UPDATE `users` SET `name` = \'Roby Julian\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'azmi2793@gmail.com\', `username` = \'superadmin\', `usertype` = \'1\', `modified_by` = \'superadmin\', `photo` = \'superadmin20200804091216.jpg\', `photo_thumb` = \'superadmin20200804091216_thumb.jpg\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2020-08-04 09:12:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(160, 'UPDATE `users` SET `name` = \'Roby Julian\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'robyjulian212@gmail.com\', `username` = \'superadmin\', `usertype` = \'1\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'1\'', 'Muhammad Azmi', '2020-08-04 09:12:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(161, 'INSERT INTO `arsip` (`kode_arsip`, `arsip_name`, `rak_id`, `baris_id`, `file_arsip`) VALUES (\'Kwitansi 012\', \'Kwitansi\', \'2\', \'2\', \'kwitansi20200804091504.pdf\')', 'Roby Julian', '2020-08-04 09:15:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(162, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`, `order_no`) VALUES (\'Proposal\', \'proposal\', \'proposal\', \'fa file-pdf-o\', \'6\')', 'Roby Julian', '2020-08-04 09:21:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(163, 'UPDATE `menu` SET `menu_name` = \'Proposal\', `menu_slug` = \'proposal\', `menu_url` = \'proposal\', `menu_icon` = \'fa-file-pdf-o\', `order_no` = \'7\'\nWHERE `id_menu` = \'11\'', 'Roby Julian', '2020-08-04 09:22:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(164, 'UPDATE `menu` SET `menu_name` = \'Proposal\', `menu_slug` = \'proposal\', `menu_url` = \'proposal\', `menu_icon` = \'fa-file-pdf-o\', `order_no` = \'8\'\nWHERE `id_menu` = \'11\'', 'Roby Julian', '2020-08-04 09:22:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(165, 'UPDATE `users` SET `name` = \'Roby Julian\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'robyjulian212@gmail.com\', `username` = \'superadmin\', `usertype` = \'1\', `modified_by` = \'superadmin\', `photo` = \'superadmin20200804092356.jpg\', `photo_thumb` = \'superadmin20200804092356_thumb.jpg\'\nWHERE `id_users` = \'1\'', 'Roby Julian', '2020-08-04 09:23:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(166, 'UPDATE `users` SET `name` = \'Roby Julian\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'robyjulian212@gmail.com\', `username` = \'superadmin\', `modified_by` = \'superadmin\', `photo` = \'superadmin20200804093355.jpg\', `photo_thumb` = \'superadmin20200804093355_thumb.jpg\'\nWHERE `id_users` = \'1\'', 'Roby Julian', '2020-08-04 09:33:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(167, 'UPDATE `arsip` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-04 10:17:am\'\nWHERE `id_arsip` = \'1\'', 'Roby Julian', '2020-08-04 10:17:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(168, 'DELETE FROM `arsip`\nWHERE `id_arsip` = \'1\'', 'Roby Julian', '2020-08-04 10:17:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(169, 'UPDATE `template` SET `value` = \'skin-blue\'\nWHERE `id` = \'2\'', 'Roby Julian', '2020-08-04 10:28:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(170, 'UPDATE `template` SET `value` = \'skin-black\'\nWHERE `id` = \'2\'', 'Roby Julian', '2020-08-04 10:28:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(171, 'UPDATE `template` SET `value` = \'fixed\'\nWHERE `id` = \'1\'', 'Roby Julian', '2020-08-04 10:28:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(172, 'UPDATE `template` SET `value` = \'skin-purple\'\nWHERE `id` = \'2\'', 'Roby Julian', '2020-08-04 10:28:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(173, 'UPDATE `template` SET `value` = \'skin-black\'\nWHERE `id` = \'2\'', 'Roby Julian', '2020-08-04 10:29:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(174, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `arsip_id`) VALUES (\'P10\', \'1\', \'8\')', 'Roby Julian', '2020-08-05 11:13:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(175, 'UPDATE `menu` SET `menu_name` = \'Jenis\', `menu_slug` = \'jenis\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Roby Julian', '2020-08-05 15:45:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(176, 'UPDATE `jenis` SET `jenis_proposal` = \'Bantuan Hibah\'\nWHERE `id_jenis` = \'2\'', 'Roby Julian', '2020-08-05 15:58:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(177, 'UPDATE `jenis` SET `jenis_proposal` = \'Bantuan Sosial\'\nWHERE `id_jenis` = \'1\'', 'Roby Julian', '2020-08-05 15:59:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(178, 'INSERT INTO `jenis` (`jenis_proposal`) VALUES (\'Baris\')', 'Roby Julian', '2020-08-05 22:19:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(179, 'UPDATE `submenu` SET `menu_id` = \'9\', `submenu_name` = \'Data Jenis\', `submenu_url` = \'jenis\', `order_no` = \'2\'\nWHERE `id_submenu` = \'17\'', 'Roby Julian', '2020-08-05 22:21:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(180, 'UPDATE `submenu` SET `menu_id` = \'9\', `submenu_name` = \'Tambah Jenis\', `submenu_url` = \'jenis/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'16\'', 'Roby Julian', '2020-08-05 22:22:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(181, 'UPDATE `menu` SET `menu_name` = \'Jenis\', `menu_slug` = \'jenis\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Roby Julian', '2020-08-05 22:22:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(182, 'UPDATE `menu` SET `menu_name` = \'Baris\', `menu_slug` = \'baris\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Roby Julian', '2020-08-05 22:22:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(183, 'UPDATE `menu` SET `menu_name` = \'Jenis\', `menu_slug` = \'jenis\', `menu_url` = \'#\', `menu_icon` = \'fa-bookmark\', `order_no` = \'6\'\nWHERE `id_menu` = \'9\'', 'Roby Julian', '2020-08-05 22:22:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(184, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'8\'', 'Roby Julian', '2020-08-05 22:23:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(185, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'9\'', 'Roby Julian', '2020-08-05 22:23:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(186, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'20\'', 'Roby Julian', '2020-08-05 22:23:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(187, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'21\'', 'Roby Julian', '2020-08-05 22:23:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(188, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'15\'', 'Roby Julian', '2020-08-05 22:25:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(189, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'17\'', 'Roby Julian', '2020-08-05 22:25:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(190, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'16\'', 'Roby Julian', '2020-08-05 22:26:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(191, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'14\'', 'Roby Julian', '2020-08-05 22:26:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(192, 'UPDATE `menu` SET `menu_name` = \'Proposal\', `menu_slug` = \'proposal\', `menu_url` = \'#\', `menu_icon` = \'fa-archive\', `order_no` = \'4\'\nWHERE `id_menu` = \'7\'', 'Roby Julian', '2020-08-06 02:39:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(193, 'UPDATE `submenu` SET `menu_id` = \'7\', `submenu_name` = \'Tambah Proposal\', `submenu_url` = \'proposal/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'12\'', 'Roby Julian', '2020-08-06 02:39:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(194, 'UPDATE `submenu` SET `menu_id` = \'7\', `submenu_name` = \'Data Proposal\', `submenu_url` = \'proposal\', `order_no` = \'2\'\nWHERE `id_submenu` = \'13\'', 'Roby Julian', '2020-08-06 02:39:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(195, 'UPDATE `submenu` SET `menu_id` = \'7\', `submenu_name` = \'Recycle Bin\', `submenu_url` = \'proposal/deleted_list\', `order_no` = \'3\'\nWHERE `id_submenu` = \'20\'', 'Roby Julian', '2020-08-06 02:39:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(196, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `rak_id`, `jenis_id`, `file_proposal`) VALUES (\'Pro-10\', \'Bansos Masjid Nurul Hidayah\', \'2\', \'2\', \'bansos-masjid-nurul-hidayah20200806024206.docx\')', 'Roby Julian', '2020-08-06 02:42:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(197, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-06 03:00:am\'\nWHERE `id_proposal` = \'7\'', 'Roby Julian', '2020-08-06 03:00:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(198, 'INSERT INTO `peminjaman` (`kode_peminjaman`, `user_id`, `proposal_id`) VALUES (\'P-32\', \'1\', \'9\')', 'Roby Julian', '2020-08-06 03:03:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(199, 'UPDATE `peminjaman` SET `kode_peminjaman` = \'P10\', `user_id` = \'1\', `proposal_id` = \'2\'\nWHERE `id_peminjaman` = \'5\'', 'Roby Julian', '2020-08-06 03:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(200, 'INSERT INTO `pengembalian` (`kode_pengembalian`, `peminjaman_id`) VALUES (\'Pa-2\', \'5\')', 'Roby Julian', '2020-08-06 03:06:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(201, 'UPDATE `proposal` SET `is_available` = \'0\'\nWHERE `id_proposal` = \'2\'', 'Roby Julian', '2020-08-06 03:06:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(202, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `rak_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Po1\', \'Bansos Penyelengaraan MTQ\', \'1\', \'1\', \'superadmin\', \'1\', \'bansos-penyelengaraan-mtq20200806104757.docx\')', 'Roby Julian', '2020-08-06 10:47:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(203, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `rak_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Lo\', \'MAM\', \'1\', \'2\', \'superadmin\', \'2\', \'mam20200806105030.pdf\')', 'Roby Julian', '2020-08-06 10:50:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(204, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `rak_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'ds\', \'sd\', \'2\', \'2\', \'superadmin\', \'2020-08-06 10:52:am\', \'sd20200806105206.pdf\')', 'Roby Julian', '2020-08-06 10:52:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(205, 'UPDATE `rak` SET `rak_name` = \'PD A\'\nWHERE `id_rak` = \'2\'', 'Roby Julian', '2020-08-06 10:53:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(206, 'UPDATE `rak` SET `rak_name` = \'PD B\'\nWHERE `id_rak` = \'1\'', 'Roby Julian', '2020-08-06 10:53:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(207, 'UPDATE `menu` SET `menu_name` = \'Pemerintahan Daerah\', `menu_slug` = \'pemerintahandaerah\', `menu_url` = \'#\', `menu_icon` = \'fa-building\', `order_no` = \'5\'\nWHERE `id_menu` = \'8\'', 'Roby Julian', '2020-08-06 11:06:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(208, 'UPDATE `submenu` SET `menu_id` = \'8\', `submenu_name` = \'Tambah PD\', `submenu_url` = \'pd/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'14\'', 'Roby Julian', '2020-08-06 11:06:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(209, 'UPDATE `submenu` SET `menu_id` = \'8\', `submenu_name` = \'Data PD\', `submenu_url` = \'pd\', `order_no` = \'2\'\nWHERE `id_submenu` = \'15\'', 'Roby Julian', '2020-08-06 11:06:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(210, 'INSERT INTO `usertype` (`usertype_name`) VALUES (\'Member\')', 'Roby Julian', '2020-08-06 11:14:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(211, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'31\'', 'Roby Julian', '2020-08-10 08:47:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(212, 'UPDATE `users` SET `name` = \'Admin Satu\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'admin@gmail.com\', `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'8\'', 'Roby Julian', '2020-08-10 08:49:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(213, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'2\')', 'Roby Julian', '2020-08-10 08:49:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(214, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'24\'', 'Roby Julian', '2020-08-10 08:54:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(215, 'UPDATE `users` SET `name` = \'Admin Satu\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'admin@gmail.com\', `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'8\'', 'Roby Julian', '2020-08-10 08:55:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(216, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'2\')', 'Roby Julian', '2020-08-10 08:55:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(217, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'4\')', 'Roby Julian', '2020-08-10 08:55:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(218, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'1\')', 'Roby Julian', '2020-08-10 08:55:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(219, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'3\')', 'Roby Julian', '2020-08-10 08:55:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(220, 'UPDATE `peminjaman` SET `kode_peminjaman` = \'P10\', `user_id` = \'1\', `proposal_id` = \'2\'\nWHERE `id_peminjaman` = \'5\'', 'Admin Satu', '2020-08-10 09:09:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(221, 'UPDATE `menu` SET `menu_name` = \'Persetujuan\', `menu_slug` = \'persetujuan\', `menu_url` = \'#\', `menu_icon` = \'fa-edit\', `order_no` = \'2\'\nWHERE `id_menu` = \'5\'', 'Roby Julian', '2020-08-10 09:11:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(222, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Tambah Peminjaman\', `submenu_url` = \'persetujuan/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'7\'', 'Roby Julian', '2020-08-10 09:27:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(223, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Tambah Persetujuan\', `submenu_url` = \'persetujuan/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'7\'', 'Roby Julian', '2020-08-10 09:27:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(224, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Data Peminjaman\', `submenu_url` = \'persetujuan\', `order_no` = \'2\'\nWHERE `id_submenu` = \'9\'', 'Roby Julian', '2020-08-10 09:27:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(225, 'UPDATE `submenu` SET `menu_id` = \'5\', `submenu_name` = \'Data Persetujuan\', `submenu_url` = \'persetujuan\', `order_no` = \'2\'\nWHERE `id_submenu` = \'9\'', 'Roby Julian', '2020-08-10 09:31:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(226, 'UPDATE `submenu` SET `menu_id` = \'6\', `submenu_name` = \'Data Penolakan\', `submenu_url` = \'penolakan\', `order_no` = \'2\'\nWHERE `id_submenu` = \'11\'', 'Roby Julian', '2020-08-10 11:18:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(227, 'UPDATE `submenu` SET `menu_id` = \'6\', `submenu_name` = \'Tambah Penolakan\', `submenu_url` = \'penolakan/create\', `order_no` = \'1\'\nWHERE `id_submenu` = \'10\'', 'Roby Julian', '2020-08-10 11:18:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(228, 'UPDATE `menu` SET `menu_name` = \'Penolakan\', `menu_slug` = \'penolakan\', `menu_url` = \'#\', `menu_icon` = \'fa-edit\', `order_no` = \'3\'\nWHERE `id_menu` = \'6\'', 'Roby Julian', '2020-08-10 11:18:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(229, 'UPDATE `users` SET `name` = \'Jajang\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'admin@gmail.com\', `username` = \'admin\', `modified_by` = \'admin\'\nWHERE `id_users` = \'8\'', 'Admin Satu', '2020-08-11 22:46:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(230, 'UPDATE `users` SET `name` = \'Jajang\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'robyjulian212@gmail.com\', `username` = \'superadmin\', `modified_by` = \'superadmin\', `photo` = \'superadmin20200811225029.jpg\', `photo_thumb` = \'superadmin20200811225029_thumb.jpg\'\nWHERE `id_users` = \'1\'', 'Roby Julian', '2020-08-11 22:50:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(231, 'UPDATE `users` SET `name` = \'Roby Julian\', `birthdate` = \'08/05/2020\', `birthplace` = \'Mentok\', `gender` = \'1\', `address` = \'Gg Sukun\', `phone` = \'082280497403\', `email` = \'robyjulian212@gmail.com\', `username` = \'superadmin\', `modified_by` = \'superadmin\', `photo` = \'superadmin20200811225106.jpg\', `photo_thumb` = \'superadmin20200811225106_thumb.jpg\'\nWHERE `id_users` = \'1\'', 'Jajang', '2020-08-11 22:51:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(232, 'UPDATE `users` SET `name` = \'Heri\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'member@gmail.com\', `username` = \'member\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'9\'', 'Roby Julian', '2020-08-11 22:53:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(233, 'UPDATE `menu_access` SET `usertype_id` = \'6\', `menu_id` = \'7\', `submenu_id` = \'13\'\nWHERE `id_menu_access` = \'33\'', 'Roby Julian', '2020-08-11 22:55:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(234, 'UPDATE `submenu` SET `menu_id` = \'10\', `submenu_name` = \'Laporan Penolakan\', `submenu_url` = \'laporan/penolakan\', `order_no` = \'2\'\nWHERE `id_submenu` = \'19\'', 'Roby Julian', '2020-08-11 23:30:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(235, 'UPDATE `submenu` SET `menu_id` = \'10\', `submenu_name` = \'Laporan Persetujuan\', `submenu_url` = \'laporan/persetujuan\', `order_no` = \'1\'\nWHERE `id_submenu` = \'18\'', 'Roby Julian', '2020-08-11 23:31:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(236, 'UPDATE `users` SET `name` = \'mmmmm\', `birthdate` = \'\', `birthplace` = \'\', `gender` = \'1\', `address` = \'\', `phone` = \'\', `email` = \'rbby@gmail.com\', `username` = \'roby\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'10\'', 'Roby Julian', '2020-08-12 09:15:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(237, 'UPDATE `users` SET `name` = \'mamang\', `birthdate` = \'20200813093507\', `birthplace` = \'mamam\', `gender` = \'1\', `address` = \'mama\', `phone` = \'12341234\', `email` = \'mamam@gmail.com\', `username` = \'mamang\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'11\'', 'Roby Julian', '2020-08-13 10:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(238, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'11\', \'2\')', 'Roby Julian', '2020-08-13 10:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(239, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'11\', \'4\')', 'Roby Julian', '2020-08-13 10:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(240, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'11\', \'1\')', 'Roby Julian', '2020-08-13 10:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(241, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'11\', \'3\')', 'Roby Julian', '2020-08-13 10:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(242, 'UPDATE `users` SET `name` = \'mamang\', `birthdate` = NULL, `birthplace` = \'mamam\', `gender` = \'1\', `address` = \'mama\', `phone` = \'12341234\', `email` = \'mamam@gmail.com\', `username` = \'mamang\', `modified_by` = \'mamang\'\nWHERE `id_users` = \'11\'', 'mamang', '2020-08-13 10:20:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(243, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Prof-1\', \'Hibah 123\', \'1\', \'2\', \'mamang\', \'2020-08-13 10:21:am\', \'hibah-12320200813102130.pdf\')', 'mamang', '2020-08-13 10:21:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(244, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`) VALUES (\'prof-1\', \'admin\', \'13\')', 'Jajang', '2020-08-13 10:38:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(245, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'ma\', \'Bansos Acara Kesehatan\', \'1\', \'1\', \'mamang\', \'2020-08-13 11:05:am\', \'bansos-acara-kesehatan20200813110505.docx\')', 'mamang', '2020-08-13 11:05:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(246, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`) VALUES (\'mam1\', 0, \'14\')', 'Jajang', '2020-08-13 11:11:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(247, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`) VALUES (\'m\', 0, \'3\')', 'Jajang', '2020-08-13 11:34:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(248, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`) VALUES (\'nn\', 9, \'12\')', 'Jajang', '2020-08-13 11:43:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(249, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`, `status`) VALUES (\'mama\', \'11\', \'6\', \'2\')', 'Muhammad Azmi', '2020-08-13 15:48:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(250, 'UPDATE `proposal` SET `kode_proposal` = \'ARS-006\', `nama_proposal` = \'Arsip Nomor 6\', `pd_id` = \'1\', `jenis_id` = \'2\', `file_proposal` = \'arsip-nomor-620200813155339.docx\'\nWHERE `id_proposal` = \'6\'', 'mamang', '2020-08-13 15:53:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(251, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`, `status`) VALUES (\'bb\', \'11\', \'6\', \'1\')', 'Jajang', '2020-08-13 15:55:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(252, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'bb\', `user_id` = 0, `proposal_id` = \'6\', `status` = \'1\'\nWHERE `id_persetujuan` = \'13\'', 'Jajang', '2020-08-13 16:01:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36'),
(253, 'UPDATE `proposal` SET `kode_proposal` = \'ARS-006\', `nama_proposal` = \'Proposal Bansos TPA\', `pd_id` = \'1\', `jenis_id` = \'2\'\nWHERE `id_proposal` = \'6\'', 'mamang', '2020-08-14 08:48:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(254, 'UPDATE `proposal` SET `kode_proposal` = \'ARS-006\', `nama_proposal` = \'Proposal Bansos TPA\', `pd_id` = \'2\', `jenis_id` = \'2\'\nWHERE `id_proposal` = \'6\'', 'mamang', '2020-08-14 08:49:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(255, 'UPDATE `proposal` SET `kode_proposal` = \'ARS-006\', `nama_proposal` = \'Proposal Bansos TPA\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'6\'', 'mamang', '2020-08-14 08:51:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(256, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'No 1/2/3\', \'Proposal Bansos Pembangunan WC Umum\', \'1\', \'1\', \'mamang\', \'2020-08-14 09:27:am\', \'proposal-bansos-pembangunan-wc-umum20200814092707.docx\')', 'mamang', '2020-08-14 09:27:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(257, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `user_id`, `proposal_id`, `status`) VALUES (\'asd\', \'15\', \'2\', \'2\')', 'Roby Julian', '2020-08-18 02:18:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(258, 'UPDATE `users` SET `name` = \'Bambang\', `birthdate` = \'18/08/2020\', `birthplace` = \'123123123\', `gender` = \'1\', `address` = \'asdasdas\', `phone` = \'123123123\', `email` = \'bambang@gmail.com\', `username` = \'bambang\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'15\'', 'Roby Julian', '2020-08-18 02:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(259, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'15\', \'2\')', 'Roby Julian', '2020-08-18 02:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(260, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'15\', \'4\')', 'Roby Julian', '2020-08-18 02:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(261, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'15\', \'1\')', 'Roby Julian', '2020-08-18 02:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(262, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'15\', \'3\')', 'Roby Julian', '2020-08-18 02:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(263, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'14\'', 'Roby Julian', '2020-08-18 09:31:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(264, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'13\'', 'Roby Julian', '2020-08-18 09:31:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(265, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'12\'', 'Roby Julian', '2020-08-18 09:31:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(266, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'11\'', 'Roby Julian', '2020-08-18 09:31:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36');
INSERT INTO `log_queries` (`id`, `content`, `created_by`, `created_at`, `ip_address`, `user_agent`) VALUES
(267, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'10\'', 'Roby Julian', '2020-08-18 09:31:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(268, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'9\'', 'Roby Julian', '2020-08-18 09:31:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(269, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'8\'', 'Roby Julian', '2020-08-18 09:31:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(270, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'6\'', 'Roby Julian', '2020-08-18 09:31:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(271, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-18 09:31:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(272, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-18 09:31:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(273, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'3\'', 'Roby Julian', '2020-08-18 09:31:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(274, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-18 09:31:am\'\nWHERE `id_proposal` = \'2\'', 'Roby Julian', '2020-08-18 09:31:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(275, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'11\'', 'Roby Julian', '2020-08-18 09:31:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(276, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'10\'', 'Roby Julian', '2020-08-18 09:31:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(277, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'7\'', 'Roby Julian', '2020-08-18 09:32:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(278, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'6\'', 'Roby Julian', '2020-08-18 09:33:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(279, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-18 09:33:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(280, 'DELETE FROM `proposal`\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-18 09:33:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(281, 'UPDATE `users` SET `name` = \'Bambang\', `birthdate` = NULL, `birthplace` = \'123123123\', `gender` = \'1\', `address` = \'kakaka\', `phone` = \'12323123\', `email` = \'bambang@gmail.com\', `username` = \'bambang\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'2\'', 'Roby Julian', '2020-08-18 09:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(282, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'2\', \'2\')', 'Roby Julian', '2020-08-18 09:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(283, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'2\', \'4\')', 'Roby Julian', '2020-08-18 09:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(284, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'2\', \'1\')', 'Roby Julian', '2020-08-18 09:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(285, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'2\', \'3\')', 'Roby Julian', '2020-08-18 09:52:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(286, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'mamam\', \'namanm\', \'2\', \'2\', \'bambang\', \'2020-08-18 11:09:am\', \'namanm20200818110933.pdf\')', 'Bambang', '2020-08-18 11:09:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(287, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `status`) VALUES (\'KP-01\', \'16\', \'1\')', 'Roby Julian', '2020-08-18 11:24:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(288, 'UPDATE `proposal` SET `kode_proposal` = \'mamam\', `nama_proposal` = \'namanm\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'16\'', 'Roby Julian', '2020-08-18 11:42:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(289, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-01\', `proposal_id` = \'16\', `status` = \'1\'\nWHERE `id_persetujuan` = \'15\'', 'Roby Julian', '2020-08-18 11:43:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(290, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-01\', `proposal_id` = \'16\', `status` = \'2\'\nWHERE `id_persetujuan` = \'15\'', 'Roby Julian', '2020-08-18 11:45:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(291, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-01\', `proposal_id` = \'16\', `status` = \'1\'\nWHERE `id_persetujuan` = \'15\'', 'Roby Julian', '2020-08-18 11:45:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(292, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-01\', `proposal_id` = \'16\', `status` = \'2\'\nWHERE `id_persetujuan` = \'15\'', 'Roby Julian', '2020-08-18 11:46:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(293, 'UPDATE `proposal` SET `kode_proposal` = \'mamam\', `nama_proposal` = \'namanm\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'16\'', 'Roby Julian', '2020-08-18 11:47:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(294, 'UPDATE `users` SET `name` = \'Macam\', `npwp` = \'123123\', `gender` = \'1\', `address` = \'mama\', `nik` = \'123123\', `email` = \'macam@gmail.com\', `username` = \'macam\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'3\'', 'Roby Julian', '2020-08-18 15:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(295, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'2\')', 'Roby Julian', '2020-08-18 15:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(296, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'4\')', 'Roby Julian', '2020-08-18 15:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(297, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'1\')', 'Roby Julian', '2020-08-18 15:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(298, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'3\')', 'Roby Julian', '2020-08-18 15:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(299, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Prop_A\', \'Proposal A\', \'2\', \'1\', \'3\', \'macam\', \'2020-08-18 15:31:pm\', \'proposal-a20200818153133.pdf\')', 'Macam', '2020-08-18 15:31:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(300, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Prop B\', \'Proposal B\', \'1\', \'1\', \'3\', \'macam\', \'2020-08-18 15:55:pm\', \'proposal-b20200818155517.pdf\')', 'Macam', '2020-08-18 15:55:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(301, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Prop C\', \'Proposal C\', \'2\', \'2\', \'2\', \'bambang\', \'2020-08-18 15:56:pm\', \'proposal-c20200818155614.pdf\')', 'Bambang', '2020-08-18 15:56:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(302, 'UPDATE `menu_access` SET `usertype_id` = \'2\', `menu_id` = \'10\', `submenu_id` = \'18\'\nWHERE `id_menu_access` = \'26\'', 'Roby Julian', '2020-08-19 10:12:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(303, 'UPDATE `users` SET `name` = \'admin\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-08-19 10:17:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(304, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'2\')', 'Roby Julian', '2020-08-19 10:17:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(305, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'4\')', 'Roby Julian', '2020-08-19 10:17:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(306, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'1\')', 'Roby Julian', '2020-08-19 10:17:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(307, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'5\')', 'Roby Julian', '2020-08-19 10:17:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(308, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'3\')', 'Roby Julian', '2020-08-19 10:17:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(309, 'UPDATE `users` SET `name` = \'admin\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-08-19 10:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(310, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'2\')', 'Roby Julian', '2020-08-19 10:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(311, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'4\')', 'Roby Julian', '2020-08-19 10:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(312, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'1\')', 'Roby Julian', '2020-08-19 10:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(313, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'3\')', 'Roby Julian', '2020-08-19 10:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(314, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'26\'', 'Roby Julian', '2020-08-19 10:18:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(315, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `status`) VALUES (\'KP-1\', \'2\', \'1\')', 'admin', '2020-08-19 10:36:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(316, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'admin', '2020-08-19 10:39:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(317, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'2\'\nWHERE `id_persetujuan` = \'22\'', 'admin', '2020-08-19 10:40:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(318, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'admin', '2020-08-19 10:41:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(319, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'admin', '2020-08-19 10:47:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(320, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'admin', '2020-08-19 10:51:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(321, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'2\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 10:55:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(322, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'2\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 10:55:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(323, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 10:56:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(324, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 11:01:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(325, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'2\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 11:02:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(326, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 11:03:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(327, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-1\', `proposal_id` = \'2\', `memo` = \'Memang mantap, gurizzz dan menyefarkan\', `status` = \'1\'\nWHERE `id_persetujuan` = \'22\'', 'Roby Julian', '2020-08-19 11:20:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(328, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'KP-2\', \'3\', \'\', \'1\')', 'Roby Julian', '2020-08-19 11:27:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(329, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'KP-3\', \'4\', \'MAMAM\', \'2\')', 'Roby Julian', '2020-08-19 11:35:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(330, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'KP-3\', `proposal_id` = \'4\', `memo` = \'Mamam 123123asd\', `status` = \'2\'\nWHERE `id_persetujuan` = \'24\'', 'Roby Julian', '2020-08-19 11:40:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(331, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'KP-1\', \'2\', \'\', \'\', \'1\')', 'admin', '2020-08-19 15:01:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(332, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'KP-1\', \'2\', \'asdas\', \'\', \'1\')', 'admin', '2020-08-19 15:05:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(333, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'Kp-1\', \'2\', \'\', \'\', \'1\')', 'admin', '2020-08-19 15:07:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(334, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp-1\', \'2\', \'asda\', \'1\')', 'admin', '2020-08-19 15:10:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(335, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp-1\', \'2\', \'asdasd\', \'1\')', 'admin', '2020-08-19 15:13:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(336, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp1\', \'2\', \'sdas\', \'1\')', 'admin', '2020-08-19 15:14:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(337, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'a\', \'3\', \'as\', \'2\')', 'admin', '2020-08-19 15:15:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(338, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp-1\', \'2\', \'\\r\\naas\', \'1\')', 'admin', '2020-08-19 15:18:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(339, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp2\', \'3\', \'123\', \'1\')', 'admin', '2020-08-19 15:18:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(340, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp3\', \'4\', \'a\', \'1\')', 'admin', '2020-08-19 15:21:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(341, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp1\', \'2\', \'qqq\', \'1\')', 'admin', '2020-08-19 15:22:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(342, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp1\', \'3\', \'mamam\', \'1\')', 'admin', '2020-08-19 15:23:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(343, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'k4\', \'4\', \'asdasd\', \'1\')', 'admin', '2020-08-19 15:25:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(344, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp1\', \'4\', \'qweq\', \'1\')', 'admin', '2020-08-19 15:25:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(345, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp23\', \'4\', \'\\r\\n12312\', \'1\')', 'admin', '2020-08-19 15:26:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(346, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp23\', `proposal_id` = \'4\', `memo` = \'MA\', `status` = \'1\'\nWHERE `id_persetujuan` = \'39\'', 'admin', '2020-08-19 15:34:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(347, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp23\', `proposal_id` = \'4\', `memo` = \'MAMA\', `status` = \'1\'\nWHERE `id_persetujuan` = \'39\'', 'admin', '2020-08-19 15:36:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(348, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp23\', `proposal_id` = \'4\', `memo` = \'asd\', `status` = \'1\'\nWHERE `id_persetujuan` = \'39\'', 'admin', '2020-08-19 15:50:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(349, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp\', \'3\', \'asd\', \'1\')', 'admin', '2020-08-19 15:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(350, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'nnn\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'admin', '2020-08-19 16:00:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(351, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'qqq\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 16:43:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(352, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'sdsd\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:01:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(353, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'aa\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:05:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(354, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'qq\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:07:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(355, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'sdasd\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:07:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(356, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'sssss\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:08:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(357, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'sssss\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:08:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(358, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'ssss\', `status` = \'2\'\nWHERE `id_persetujuan` = \'40\'', 'Roby Julian', '2020-08-19 17:08:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(359, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp\', `proposal_id` = \'3\', `memo` = \'aaaaaa\', `status` = \'1\'\nWHERE `id_persetujuan` = \'40\'', 'admin', '2020-08-19 17:09:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(360, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp-1\', \'4\', \'awwwww\', \'1\')', 'admin', '2020-08-19 17:10:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(361, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'kp-1\', `proposal_id` = \'4\', `memo` = \'qwerty\', `status` = \'1\'\nWHERE `id_persetujuan` = \'41\'', 'admin', '2020-08-19 17:12:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(362, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `status`) VALUES (\'kp1\', \'2\', \'\', \'1\')', 'admin', '2020-08-19 17:16:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36'),
(363, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'Kp-1\', \'4\', \'Mamama\', \'2\', \'1\')', 'Roby Julian', '2020-08-23 04:18:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(364, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Prop D\', \'Proposal D\', \'1\', \'1\', \'2\', \'bambang\', \'2020-08-23 04:21:am\', \'proposal-d20200823042103.docx\')', 'Bambang', '2020-08-23 04:21:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(365, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'KP-Zero\', \'5\', \'sebuah percubaan yang mantap\', \'2\', \'2\')', 'admin', '2020-08-23 04:22:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(366, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'7\', \'deleted_list\', \'back/proposal/proposal_deleted_list\', \'3\')', 'Roby Julian', '2020-08-23 04:50:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(367, 'UPDATE `submenu` SET `menu_id` = \'7\', `submenu_name` = \'deleted_list\', `submenu_url` = \'proposal/deleted_list\', `order_no` = \'3\'\nWHERE `id_submenu` = \'21\'', 'Roby Julian', '2020-08-23 04:50:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(368, 'UPDATE `submenu` SET `menu_id` = \'7\', `submenu_name` = \'Recycle Bin\', `submenu_url` = \'proposal/deleted_list\', `order_no` = \'3\'\nWHERE `id_submenu` = \'21\'', 'Roby Julian', '2020-08-23 04:50:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(369, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-08-23 04:51:am\'\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-23 04:51:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(370, 'UPDATE `proposal` SET `is_delete` = \'0\', `deleted_by` = NULL, `deleted_at` = NULL\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-23 04:55:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(371, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'7\', \'Daftar Dihapus\', \'proposal/deleted_list\', \'3\')', 'Roby Julian', '2020-08-23 04:56:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(372, 'UPDATE `users` SET `password` = \'$2y$10$F7xMGgEvN8wGgQL.BXxHx.QLTE46.OVaykuyaUSbzcGY7H/qeK5VC\'\nWHERE `id_users` = \'2\'', 'Bambang', '2020-08-25 10:55:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(373, 'UPDATE `company` SET `company_name` = \'E-Hibah Bangka Barat\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'robyjulian212@gmail.com\', `company_gmail` = \'robyjulian212@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Roby Julian', '2020-08-25 11:20:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(374, 'UPDATE `company` SET `company_name` = \'E-Hibah Bangka Barat\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'robyj03@gmail.com\', `company_gmail` = \'robyj03@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Roby Julian', '2020-08-25 13:54:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(375, 'UPDATE `company` SET `company_name` = \'E-Hibah Bangka Barat\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'robyj03@gmail.com\', `company_gmail` = \'robyj03@gmail.com\', `company_gmail_pass` = \'rahasia030799\', `modified_by` = \'superadmin\'\nWHERE `id_company` = \'1\'', 'Roby Julian', '2020-08-25 13:55:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(376, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi1234520200826100402.png\', `photo_thumb` = \'vivi1234520200826100402_thumb.png\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:04:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(377, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi1234520200826100806.jpg\', `photo_npwp` = \'vivi1234520200826100806.jpg\', `photo_thumb` = \'vivi1234520200826100806_thumb.jpg\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:08:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(378, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi1234520200826101011.jpg\', `photo_npwp` = \'vivi1234520200826101011.jpg\', `photo_thumb` = \'vivi1234520200826101011_thumb.jpg\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:10:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(379, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi1234520200826101123.jpg\', `photo_npwp` = \'vivi1234520200826101123.jpg\', `photo_thumb` = \'vivi1234520200826101123_thumb.jpg\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:11:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(380, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi1234520200826101332.png\', `photo_npwp` = \'vivi1234520200826101332.png\', `photo_thumb` = \'vivi1234520200826101332_thumb.png\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:13:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(381, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi12345202008261022191.jpg\', `photo_npwp` = \'vivi12345202008261022191.jpg_npwp\', `photo_thumb` = \'vivi1234520200826102219_thumb.jpg\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:22:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(382, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'vivi12345202008261023311.jpg\', `photo_npwp` = \'_npwpvivi12345202008261023311.jpg\', `photo_thumb` = \'vivi1234520200826102331_thumb.jpg\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:23:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(383, 'UPDATE `users` SET `name` = \'vivi\', `npwp` = \'123123123\', `gender` = \'1\', `address` = \'sjsjsjsj\', `nik` = \'123123123\', `email` = \'cdevrywhr@gmail.com\', `nohp` = NULL, `username` = \'vivi12345\', `usertype` = \'6\', `modified_by` = \'superadmin\', `photo` = \'ktp_vivi1234520200826102614.png\', `photo_npwp` = \'npwp_vivi1234520200826102614.png\', `photo_thumb` = \'vivi1234520200826102614_thumb.png\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 10:26:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(384, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-08-26 16:08:pm\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-08-26 16:08:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(385, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-08-31 01:24:am\'\nWHERE `id_users` = \'6\'', 'Roby Julian', '2020-08-31 01:24:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(386, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-08-31 01:24:am\'\nWHERE `id_users` = \'7\'', 'Roby Julian', '2020-08-31 01:24:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(387, 'UPDATE `users` SET `name` = \'admin\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `nohp` = NULL, `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-08-31 01:25:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(388, 'UPDATE `users` SET `name` = \'admin\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `nohp` = NULL, `username` = \'admin\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-08-31 01:27:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(389, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'2\')', 'Roby Julian', '2020-08-31 01:27:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(390, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'4\')', 'Roby Julian', '2020-08-31 01:27:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(391, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'1\')', 'Roby Julian', '2020-08-31 01:27:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(392, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'4\', \'3\')', 'Roby Julian', '2020-08-31 01:27:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(393, 'UPDATE `users` SET `name` = \'Macam\', `npwp` = \'123123\', `gender` = \'1\', `address` = \'mama\', `nik` = \'123123\', `email` = \'macam@gmail.com\', `nohp` = NULL, `username` = \'macam\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'3\'', 'Roby Julian', '2020-08-31 01:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(394, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'2\')', 'Roby Julian', '2020-08-31 01:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(395, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'4\')', 'Roby Julian', '2020-08-31 01:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(396, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'1\')', 'Roby Julian', '2020-08-31 01:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(397, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'3\', \'3\')', 'Roby Julian', '2020-08-31 01:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(398, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:32:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(399, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:32:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(400, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'2\', \'4\', \'s\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:33:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(401, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:34:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(402, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'dsd\', \'5\', \'d\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:34:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(403, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:35:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(404, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'4\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:35:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(405, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:35:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(406, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'4\', \'sd\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:36:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(407, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'5\', \'sd\', \'2\', \'2\')', 'Roby Julian', '2020-08-31 01:37:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(408, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:38:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(409, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:38:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(410, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'ff\', \'5\', \'f\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:38:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(411, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:40:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(412, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'dsd\', \'4\', \'mama\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:41:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(413, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:42:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(414, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'asd\', \'4\', \'mimi\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:42:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36');
INSERT INTO `log_queries` (`id`, `content`, `created_by`, `created_at`, `ip_address`, `user_agent`) VALUES
(415, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:43:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(416, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'5\', \'sdsd\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:43:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(417, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sds\', \'4\', \'d\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:43:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(418, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:44:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(419, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'4\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:47:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(420, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'5\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(421, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:53:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(422, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:53:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(423, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'cxc\', \'5\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:54:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(424, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sd\', \'2\', \'\', \'3\', \'1\')', 'Roby Julian', '2020-08-31 01:55:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(425, 'UPDATE `proposal` SET `kode_proposal` = \'Prop_A\', `nama_proposal` = \'Proposal A\', `pd_id` = \'2\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'2\'', 'Roby Julian', '2020-08-31 01:55:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(426, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:55:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(427, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'df\', \'5\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:56:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(428, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:56:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(429, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'d\', \'5\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:57:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(430, 'UPDATE `proposal` SET `kode_proposal` = \'Prop D\', `nama_proposal` = \'Proposal D\', `pd_id` = \'1\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-08-31 01:58:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(431, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'dsd\', \'2\', \'sd\', \'3\', \'1\')', 'Roby Julian', '2020-08-31 01:58:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(432, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'sds\', \'4\', \'\', \'2\', \'1\')', 'Roby Julian', '2020-08-31 01:59:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(433, 'UPDATE `proposal` SET `kode_proposal` = \'Prop_A\', `nama_proposal` = \'Proposal A\', `pd_id` = \'2\', `jenis_id` = \'1\', `is_available` = 0\nWHERE `id_proposal` = \'2\'', 'Roby Julian', '2020-08-31 01:59:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(434, 'UPDATE `proposal` SET `kode_proposal` = \'Prop C\', `nama_proposal` = \'Proposal C\', `pd_id` = \'2\', `jenis_id` = \'2\', `is_available` = 0\nWHERE `id_proposal` = \'4\'', 'Roby Julian', '2020-08-31 01:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36'),
(435, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'asd\', \'4\', \'Kurang besar gan\', \'2\', \'2\')', 'Roby Julian', '2020-09-14 02:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(436, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'123\', \'asdasd\', \'4\', \'2\', \'10000000\', \'1\', \'superadmin\', \'2020-09-14 03:00:am\', \'asdasd20200914030051.pdf\')', 'Roby Julian', '2020-09-14 03:00:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(437, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'123\', \'asd\', \'4\', \'2\', \'12323123\', \'2\', \'bambang\', \'2020-09-14 03:10:am\', \'asd20200914031049.pdf\')', 'Bambang', '2020-09-14 03:10:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(438, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'123\', \'8\', \'asdasd\', \'2\', \'1\')', 'admin', '2020-09-14 03:13:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(439, 'UPDATE `users` SET `name` = \'Kesejahteraan Masyarakat\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `nohp` = NULL, `username` = \'kesra12345\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-09-14 03:15:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(440, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp-109-14\', \'ASDA\', \'4\', \'2\', \'123123123\', \'1\', \'superadmin\', \'2020-09-14 10:55:am\', \'asda20200914105547.pdf\')', 'Roby Julian', '2020-09-14 10:55:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(441, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp-109-140\', \'asdasd\', \'4\', \'1\', \'123123123\', \'1\', \'superadmin\', \'2020-09-14 11:00:am\', \'asdasd20200914110009.pdf\')', 'Roby Julian', '2020-09-14 11:00:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(442, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp109140\', \'asdasdasd\', \'4\', \'1\', \'123123123\', \'1\', \'superadmin\', \'2020-09-14 11:01:am\', \'asdasdasd20200914110108.pdf\')', 'Roby Julian', '2020-09-14 11:01:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(443, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp109141\', \'mmms\', \'4\', \'2\', \'123123123\', \'1\', \'superadmin\', \'2020-09-14 11:02:am\', \'mmms20200914110257.pdf\')', 'Roby Julian', '2020-09-14 11:02:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(444, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp109141\', \'djdjdjdj\', \'4\', \'2\', \'8484848\', \'1\', \'superadmin\', \'2020-09-14 11:03:am\', \'djdjdjdj20200914110318.pdf\')', 'Roby Julian', '2020-09-14 11:03:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(445, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp109141\', \'mdmmdm\', \'4\', \'1\', \'8838381\', \'1\', \'superadmin\', \'2020-09-14 11:04:am\', \'mdmmdm20200914110453.pdf\')', 'Roby Julian', '2020-09-14 11:04:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(446, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'Kp109141105\', \'msmsmsm\', \'4\', \'1\', \'8383838\', \'1\', \'superadmin\', \'2020-09-14 11:05:am\', \'msmsmsm20200914110548.pdf\')', 'Roby Julian', '2020-09-14 11:05:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(447, 'INSERT INTO `jenis` (`jenis_proposal`) VALUES (\'Bansos Beasiswa SMA/MA/Perguruan Tinggi\')', 'Roby Julian', '2020-09-14 11:08:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(448, 'UPDATE `jenis` SET `jenis_proposal` = \'Hibah Pembangunan Masjid/Surau/Musholla\'\nWHERE `id_jenis` = \'2\'', 'Roby Julian', '2020-09-14 11:09:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(449, 'UPDATE `jenis` SET `jenis_proposal` = \'HIbah\'\nWHERE `id_jenis` = \'1\'', 'Roby Julian', '2020-09-14 11:10:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(450, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'15\'', 'Roby Julian', '2020-09-14 11:10:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(451, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'14\'', 'Roby Julian', '2020-09-14 11:10:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(452, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'13\'', 'Roby Julian', '2020-09-14 11:10:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(453, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'12\'', 'Roby Julian', '2020-09-14 11:10:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(454, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'11\'', 'Roby Julian', '2020-09-14 11:10:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(455, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'10\'', 'Roby Julian', '2020-09-14 11:10:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(456, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:10:am\'\nWHERE `id_proposal` = \'9\'', 'Roby Julian', '2020-09-14 11:10:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(457, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:11:am\'\nWHERE `id_proposal` = \'7\'', 'Roby Julian', '2020-09-14 11:11:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(458, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:11:am\'\nWHERE `id_proposal` = \'5\'', 'Roby Julian', '2020-09-14 11:11:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(459, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:11:am\'\nWHERE `id_proposal` = \'3\'', 'Roby Julian', '2020-09-14 11:11:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(460, 'UPDATE `proposal` SET `is_delete` = \'1\', `deleted_by` = NULL, `deleted_at` = \'2020-09-14 11:11:am\'\nWHERE `id_proposal` = \'2\'', 'Roby Julian', '2020-09-14 11:11:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(461, 'UPDATE `jenis` SET `jenis_proposal` = \'Bansos\'\nWHERE `id_jenis` = \'5\'', 'Roby Julian', '2020-09-14 11:18:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(462, 'UPDATE `jenis` SET `jenis_proposal` = \'Hibah\'\nWHERE `id_jenis` = \'2\'', 'Roby Julian', '2020-09-14 11:18:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(463, 'UPDATE `users` SET `name` = \'KESRA\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'admin@gmail.com\', `nohp` = NULL, `username` = \'kesra12345\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-09-15 09:43:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(464, 'UPDATE `persetujuan` SET `kode_persetujuan` = \'asd\', `proposal_id` = \'4\', `memo` = \'Dana terlalu besar\', `status` = \'2\'\nWHERE `id_persetujuan` = \'65\'', 'Roby Julian', '2020-09-15 09:52:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(465, 'UPDATE `users` SET `name` = \'Mm\', `npwp` = \'12312312\', `gender` = \'1\', `address` = \'mamama\', `nik` = \'2312312\', `email` = \'m@gmail.com\', `nohp` = NULL, `username` = \'macamm\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-09-15 10:34:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(466, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'2\')', 'Roby Julian', '2020-09-15 10:34:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(467, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'4\')', 'Roby Julian', '2020-09-15 10:34:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(468, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'1\')', 'Roby Julian', '2020-09-15 10:34:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(469, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'5\', \'3\')', 'Roby Julian', '2020-09-15 10:34:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(470, 'UPDATE `company` SET `company_name` = \'LigEt\', `company_desc` = \'History, Target, Background, etc\', `company_address` = \'Jl. Forward Backward Kec. Sukasaja Kel. Maju Mundur, Dunia Lain\', `company_maps` = \'<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127504.42574918512!2d104.69292440979198!3d-2.954966346052835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b75e8fc27a3e3%3A0x3039d80b220d0c0!2sPalembang%2C+Palembang+City%2C+South+Sumatra!5e0!3m2!1sen!2sid!4v1563888493605!5m2!1sen!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen></iframe>\', `company_phone` = \'081241412\', `company_phone2` = \'0711412402\', `company_fax` = \'24141\', `company_email` = \'robyj03@gmail.com\', `company_gmail` = \'robyj03@gmail.com\', `modified_by` = NULL\nWHERE `id_company` = \'1\'', 'Roby Julian', '2020-09-15 11:16:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(471, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-09-17 01:01:am\'\nWHERE `id_users` = \'2\'', 'Roby Julian', '2020-09-17 01:01:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(472, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-09-17 01:01:am\'\nWHERE `id_users` = \'3\'', 'Roby Julian', '2020-09-17 01:01:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(473, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-09-17 01:01:am\'\nWHERE `id_users` = \'5\'', 'Roby Julian', '2020-09-17 01:01:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(474, 'UPDATE `users` SET `is_delete` = \'1\', `deleted_by` = \'superadmin\', `deleted_at` = \'2020-09-17 01:01:am\'\nWHERE `id_users` = \'4\'', 'Roby Julian', '2020-09-17 01:01:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(475, 'UPDATE `users` SET `name` = \'Samsul\', `npwp` = \'\', `gender` = \'1\', `address` = \'jln raya\', `nik` = \'2323232\', `email` = \'samsul@gmail.com\', `nohp` = NULL, `username` = \'samsul\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'8\'', 'Roby Julian', '2020-09-17 01:22:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(476, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'2\')', 'Roby Julian', '2020-09-17 01:22:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(477, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'4\')', 'Roby Julian', '2020-09-17 01:22:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(478, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'1\')', 'Roby Julian', '2020-09-17 01:22:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(479, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'8\', \'3\')', 'Roby Julian', '2020-09-17 01:22:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(480, 'UPDATE `users` SET `name` = \'Baim\', `npwp` = \'\', `gender` = \'1\', `address` = \'jln raya\', `nik` = \'234234234\', `email` = \'baim@gmail.com\', `nohp` = NULL, `username` = \'baim111\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'9\'', 'Roby Julian', '2020-09-17 01:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(481, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'9\', \'2\')', 'Roby Julian', '2020-09-17 01:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(482, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'9\', \'4\')', 'Roby Julian', '2020-09-17 01:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(483, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'9\', \'1\')', 'Roby Julian', '2020-09-17 01:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(484, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'9\', \'3\')', 'Roby Julian', '2020-09-17 01:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(485, 'INSERT INTO `menu` (`menu_name`, `menu_slug`, `menu_url`, `menu_icon`, `order_no`) VALUES (\'Daftar Pengguna\', \'daftarpengguna\', \'#\', \'a-users\', \'8\')', 'Roby Julian', '2020-09-18 07:32:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(486, 'INSERT INTO `submenu` (`menu_id`, `submenu_name`, `submenu_url`, `order_no`) VALUES (\'12\', \'Data Pengguna\', \'pd\', \'1\')', 'Roby Julian', '2020-09-18 07:32:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(487, 'UPDATE `menu` SET `menu_name` = \'Daftar Pengguna\', `menu_slug` = \'daftarpengguna\', `menu_url` = \'#\', `menu_icon` = \'fa-users\', `order_no` = \'8\'\nWHERE `id_menu` = \'12\'', 'Roby Julian', '2020-09-18 07:35:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(488, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'109180741\', \'rooo\', \'7\', \'9\', \'5000000\', \'1\', \'superadmin\', \'2020-09-18 07:41:am\', \'rooo20200918074122.pdf\')', 'Roby Julian', '2020-09-18 07:41:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(489, 'UPDATE `users` SET `name` = \'Dini\', `npwp` = \'\', `gender` = \'1\', `address` = \'jln kaa\', `nik` = \'3123123\', `email` = \'dini@gmail.com\', `nohp` = NULL, `username` = \'dini\', `usertype` = \'6\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'10\'', 'Roby Julian', '2020-09-18 08:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(490, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'10\', \'2\')', 'Roby Julian', '2020-09-18 08:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(491, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'10\', \'4\')', 'Roby Julian', '2020-09-18 08:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(492, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'10\', \'1\')', 'Roby Julian', '2020-09-18 08:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(493, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'10\', \'3\')', 'Roby Julian', '2020-09-18 08:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(494, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009180810\', \'Dini Tes\', \'6\', \'9\', \'2500000\', \'10\', \'dini\', \'2020-09-18 08:10:am\', \'dini-tes20200918081019.pdf\')', 'Dini', '2020-09-18 08:10:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(495, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `status`) VALUES (\'609180813\', \'3\', \'Mantap Lanjutkan\', \'10\', \'1\')', 'Dinas Pendidikan', '2020-09-18 08:13:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(496, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_anggaran`, `status`) VALUES (\'609180823\', \'3\', \'Mantatat\', \'10\', \'1\', \'1\')', 'Dinas Pendidikan', '2020-09-18 08:23:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(497, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_anggaran`, `status`) VALUES (\'609180826\', \'3\', \'\', \'10\', \'1\', \'1\')', 'Dinas Pendidikan', '2020-09-18 08:26:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(498, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_id`, `status`) VALUES (\'609180928\', \'3\', \'\', \'10\', \'1\', \'1\')', 'Dinas Pendidikan', '2020-09-18 09:28:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(499, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'40\'', 'Roby Julian', '2020-09-18 09:46:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(500, 'UPDATE `users` SET `name` = \'Dinas Pendidikan\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'dinaspen@gmail.com\', `nohp` = NULL, `username` = \'dinaspendidikan\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'6\'', 'Roby Julian', '2020-09-18 09:47:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(501, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'2\')', 'Roby Julian', '2020-09-18 09:47:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(502, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'4\')', 'Roby Julian', '2020-09-18 09:47:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(503, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'1\')', 'Roby Julian', '2020-09-18 09:47:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(504, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'5\')', 'Roby Julian', '2020-09-18 09:47:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(505, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'3\')', 'Roby Julian', '2020-09-18 09:47:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(506, 'UPDATE `users` SET `name` = \'Dinas Pendidikan\', `npwp` = \'\', `gender` = \'1\', `address` = \'\', `nik` = \'\', `email` = \'dinaspen@gmail.com\', `nohp` = NULL, `username` = \'dinaspendidikan\', `usertype` = \'2\', `modified_by` = \'superadmin\'\nWHERE `id_users` = \'6\'', 'Roby Julian', '2020-09-18 09:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(507, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'2\')', 'Roby Julian', '2020-09-18 09:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(508, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'4\')', 'Roby Julian', '2020-09-18 09:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(509, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'1\')', 'Roby Julian', '2020-09-18 09:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(510, 'INSERT INTO `users_data_access` (`user_id`, `data_access_id`) VALUES (\'6\', \'3\')', 'Roby Julian', '2020-09-18 09:48:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(511, 'DELETE FROM `menu_access`\nWHERE `id_menu_access` = \'38\'', 'Roby Julian', '2020-09-18 09:48:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(512, 'UPDATE `menu_access` SET `usertype_id` = \'2\', `menu_id` = \'12\', `submenu_id` = \'23\'\nWHERE `id_menu_access` = \'41\'', 'Roby Julian', '2020-09-18 10:25:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(513, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `tahun_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009181831\', \'asdasd\', 7, \'3\', 0, \'12312312\', \'10\', \'dini\', \'2020-09-18 18:31:pm\', \'asdasd20200918183147.pdf\')', 'Dini', '2020-09-18 18:31:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(514, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `tahun_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009181837\', \'sdsd\', 7, \'9\', 0, \'123123\', \'10\', \'dini\', \'2020-09-18 18:37:pm\', \'sdsd20200918183719.pdf\')', 'Dini', '2020-09-18 18:37:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(515, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `tahun_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009181924\', \'sdasd\', 7, \'1\', 1, \'123123\', \'10\', \'dini\', \'2020-09-18 19:24:pm\', \'sdasd20200918192419.pdf\')', 'Dini', '2020-09-18 19:24:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(516, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `tahun_id`, `nominal`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009181927\', \'adas\', 7, \'3\', 1, \'123123\', \'10\', \'dini\', \'2020-09-18 19:27:pm\', \'adas20200918192723.pdf\')', 'Dini', '2020-09-18 19:27:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(517, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_id`, `nominal`, `status`) VALUES (\'709181934\', \'20\', \'\', \'10\', \'2\', \'200000\', \'1\')', 'Kesejahteraan Rakyat', '2020-09-18 19:34:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(518, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_id`, `nominal`, `status`) VALUES (\'709181936\', \'20\', \'asdasd\', \'10\', \'2\', \'123123\', \'1\')', 'Kesejahteraan Rakyat', '2020-09-18 19:36:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(519, 'UPDATE `proposal` SET `nama_proposal` = \'adas\', `jenis_id` = \'3\', `nominal_pengajuan` = \'123123\', `is_available` = 0\nWHERE `id_proposal` = \'20\'', 'Dini', '2020-09-18 19:53:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(520, 'UPDATE `proposal` SET `nama_proposal` = \'adas\', `jenis_id` = \'3\', `nominal_pengajuan` = \'123123\', `is_available` = 0\nWHERE `id_proposal` = \'20\'', 'Dini', '2020-09-18 19:54:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(521, 'UPDATE `proposal` SET `nama_proposal` = \'adas\', `jenis_id` = \'3\', `nominal_pengajuan` = \'123123\', `is_available` = 0\nWHERE `id_proposal` = \'20\'', 'Dini', '2020-09-18 19:54:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(522, 'UPDATE `proposal` SET `nama_proposal` = \'Pemabangunan Klenteng ABC\', `jenis_id` = \'4\', `nominal_pengajuan` = \'5000000\', `file_proposal` = \'pemabangunan-klenteng-abc20200918195513.pdf\', `is_available` = 0\nWHERE `id_proposal` = \'20\'', 'Dini', '2020-09-18 19:55:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(523, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_id`, `nominal_disetujui`, `status`) VALUES (\'709182002\', \'20\', \'\', \'10\', \'3\', \'200000\', \'1\')', 'Kesejahteraan Rakyat', '2020-09-18 20:02:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(524, 'INSERT INTO `proposal` (`kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `tahun_id`, `nominal_pengajuan`, `member_id`, `create_by`, `create_at`, `file_proposal`) VALUES (\'1009191251\', \'Bantuan Kuliah S2\', 7, \'8\', 1, \'2000000\', \'10\', \'dini\', \'2020-09-19 12:51:pm\', \'bantuan-kuliah-s220200919125156.pdf\')', 'Dini', '2020-09-19 12:51:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(525, 'UPDATE `proposal` SET `nama_proposal` = \'Bantuan Kuliah S2\', `jenis_id` = \'8\', `nominal_pengajuan` = \'2000000\', `is_available` = 0\nWHERE `id_proposal` = \'21\'', 'Dini', '2020-09-19 12:52:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36'),
(526, 'INSERT INTO `persetujuan` (`kode_persetujuan`, `proposal_id`, `memo`, `member_id`, `tahun_id`, `nominal_disetujui`, `status`) VALUES (\'709191254\', \'21\', \'Latar Belakang yg tidak kuat\', \'10\', \'3\', \'2000000\', \'3\')', 'Kesejahteraan Rakyat', '2020-09-19 12:54:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_slug` varchar(100) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `order_no` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `menu_name`, `menu_slug`, `menu_url`, `menu_icon`, `is_active`, `order_no`) VALUES
(4, 'Dashboard', 'dashboard', 'dashboard', 'fa-dashboard', 1, 1),
(5, 'Persetujuan', 'persetujuan', '#', 'fa-edit', 1, 2),
(7, 'Proposal', 'proposal', '#', 'fa-archive', 1, 4),
(8, 'Pemerintahan Daerah', 'pemerintahandaerah', '#', 'fa-building', 0, 5),
(9, 'Jenis', 'jenis', '#', 'fa-bookmark', 1, 6),
(10, 'Laporan', 'laporan', '#', 'fa-file', 1, 7),
(12, 'Daftar Pengguna', 'daftarpengguna', '#', 'fa-users', 1, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_access`
--

CREATE TABLE `menu_access` (
  `id_menu_access` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_access`
--

INSERT INTO `menu_access` (`id_menu_access`, `usertype_id`, `menu_id`, `submenu_id`) VALUES
(1, 1, 5, 7),
(2, 1, 5, 9),
(3, 1, 4, NULL),
(4, 1, 10, 18),
(6, 1, 7, 13),
(7, 1, 7, 12),
(22, 1, 9, 17),
(23, 1, 9, 16),
(25, 2, 4, NULL),
(28, 2, 5, 9),
(29, 2, 5, 7),
(33, 6, 7, 13),
(34, 6, 7, 12),
(35, 2, 7, 13),
(36, 2, 10, 18),
(37, 1, 7, 22),
(39, 1, 12, 23),
(41, 2, 12, 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pd`
--

CREATE TABLE `pd` (
  `id_pd` int(11) NOT NULL,
  `pd_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pd`
--

INSERT INTO `pd` (`id_pd`, `pd_name`) VALUES
(1, 'Dinas Kesehatan'),
(2, 'Dinas Pendidikan'),
(5, 'DInas Sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persetujuan`
--

CREATE TABLE `persetujuan` (
  `id_persetujuan` int(11) NOT NULL,
  `kode_persetujuan` varchar(15) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nominal_disetujui` int(15) NOT NULL,
  `memo` text NOT NULL,
  `tahun_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `persetujuan`
--

INSERT INTO `persetujuan` (`id_persetujuan`, `kode_persetujuan`, `proposal_id`, `member_id`, `status`, `nominal_disetujui`, `memo`, `tahun_id`, `created_at`) VALUES
(7, '709182002', 20, 10, 1, 200000, '', 3, '2020-09-18 20:02:43'),
(8, '709191254', 21, 10, 3, 2000000, 'Latar Belakang yg tidak kuat', 3, '2020-09-19 12:54:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal`
--

CREATE TABLE `proposal` (
  `id_proposal` int(11) NOT NULL,
  `kode_proposal` varchar(15) NOT NULL,
  `nama_proposal` varchar(100) NOT NULL,
  `pd_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `nominal_pengajuan` int(15) NOT NULL,
  `tahun_id` int(11) NOT NULL,
  `create_by` varchar(100) NOT NULL,
  `nominal_setujui` int(15) NOT NULL,
  `member_id` int(11) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 0,
  `memo` text NOT NULL,
  `file_proposal` text NOT NULL,
  `create_at` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_by` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proposal`
--

INSERT INTO `proposal` (`id_proposal`, `kode_proposal`, `nama_proposal`, `pd_id`, `jenis_id`, `nominal_pengajuan`, `tahun_id`, `create_by`, `nominal_setujui`, `member_id`, `is_available`, `memo`, `file_proposal`, `create_at`, `is_delete`, `deleted_by`, `deleted_at`) VALUES
(20, '1009181927', 'Pemabangunan Klenteng ABC', 7, 4, 5000000, 3, 'dini', 200000, 10, 1, '', 'pemabangunan-klenteng-abc20200918195513.pdf', '2020-09-18 19:27:00', 0, NULL, NULL),
(21, '1009191251', 'Bantuan Kuliah S2', 7, 8, 2000000, 3, 'dini', 2000000, 10, 3, 'Latar Belakang yg tidak kuat', 'bantuan-kuliah-s220200919125156.pdf', '2020-09-19 12:51:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id_submenu` int(11) NOT NULL,
  `submenu_name` varchar(100) NOT NULL,
  `submenu_url` varchar(100) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `order_no` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `submenu_name`, `submenu_url`, `menu_id`, `order_no`) VALUES
(7, 'Tambah Persetujuan', 'persetujuan/create', 5, 1),
(9, 'Data Persetujuan', 'persetujuan', 5, 2),
(12, 'Tambah Proposal', 'proposal/create', 7, 1),
(13, 'Data Proposal', 'proposal', 7, 2),
(16, 'Tambah Jenis', 'jenis/create', 9, 1),
(17, 'Data Jenis', 'jenis', 9, 2),
(18, 'Laporan Persetujuan', 'laporan/persetujuan', 10, 1),
(22, 'Daftar Dihapus', 'proposal/deleted_list', 7, 3),
(23, 'Data Pengguna', 'pd', 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_anggaran`
--

CREATE TABLE `tahun_anggaran` (
  `id_tahun` int(11) NOT NULL,
  `tahun_anggaran` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_anggaran`
--

INSERT INTO `tahun_anggaran` (`id_tahun`, `tahun_anggaran`) VALUES
(1, '-'),
(2, '2022'),
(3, '2023'),
(4, '2024'),
(5, '2025');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `template`
--

INSERT INTO `template` (`id`, `name`, `value`) VALUES
(1, 'Layout', 'fixed'),
(2, 'Skins', 'skin-black');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `npwp` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` text NOT NULL,
  `nik` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `photo` text NOT NULL,
  `photo_thumb` text NOT NULL,
  `ip_add_reg` varchar(50) NOT NULL,
  `code_activation` varchar(50) DEFAULT NULL,
  `code_forgotten` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_by` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `name`, `npwp`, `gender`, `address`, `nik`, `email`, `nohp`, `username`, `password`, `usertype`, `is_active`, `photo`, `photo_thumb`, `ip_add_reg`, `code_activation`, `code_forgotten`, `last_login`, `created_by`, `created_at`, `modified_by`, `modified_at`, `is_delete`, `deleted_by`, `deleted_at`) VALUES
(1, 'Roby Julian', 'Mentok', 1, 'Gg Sukun', '082280497403', 'robyjulian212@gmail.com', '', 'superadmin', '$2y$10$npEfRzbEGVxC6uTV9kp66OznCcaOyW3PelRJ75dgCS4GKSqEeIzUK', 1, 1, 'superadmin20200811225106.jpg', 'superadmin20200811225106_thumb.jpg', '::1', NULL, '', '2020-09-18 10:25:07', '', '2019-03-22 08:41:56', 'superadmin', '2020-09-18 10:25:07', 0, NULL, NULL),
(2, 'Bambang', '123123123', 1, 'kakaka', '12323123', 'bambang@gmail.com', '', 'bambang', '$2y$10$F7xMGgEvN8wGgQL.BXxHx.QLTE46.OVaykuyaUSbzcGY7H/qeK5VC', 6, 1, 'bambang20200818095203.jpg', 'bambang20200818095203_thumb.jpg', '::1', NULL, NULL, '2020-09-14 03:10:28', 'self', '2020-08-18 09:52:04', 'superadmin', '2020-09-17 01:01:20', 1, 'superadmin', '2020-09-17 01:01:00'),
(3, 'Macam', '123123', 1, 'mama', '123123', 'macam@gmail.com', '', 'macam', '$2y$10$sRkPVypoxcG.BludcfCM/uF30VSdR8z48ebSYxfa/KRE16hL8tHIm', 6, 1, 'macam20200818150138.png', 'macam20200818150138_thumb.png', '::1', NULL, NULL, '2020-08-19 14:52:27', 'self', '2020-08-18 15:01:38', 'superadmin', '2020-09-17 01:01:25', 1, 'superadmin', '2020-09-17 01:01:00'),
(4, 'KESRA', '', 1, '', '', 'admin@gmail.com', '', 'kesra12345', '$2y$10$bAa5uUaQgreMrWTJOUpZsOblzRwAzxOYwfgJhcXxl7rMv64Cjyv0e', 2, 1, 'admin20200819101032.jpg', 'admin20200819101032_thumb.jpg', '::1', NULL, NULL, '2020-09-14 03:10:56', 'superadmin', '2020-08-19 10:10:33', 'superadmin', '2020-09-17 01:01:31', 1, 'superadmin', '2020-09-17 01:01:00'),
(5, 'Mm', '12312312', 1, 'mamama', '2312312', 'm@gmail.com', '', 'macamm', '$2y$10$56TzzkdUVIM3gP6WxwHfqeSu2YLmg03oE2sy4jp6Q2/fux/jSkb36', 6, 1, 'macamm20200915103151.jpg', 'macamm20200915103151_thumb.jpg', '::1', NULL, NULL, '2020-09-16 13:09:39', 'self', '2020-09-15 10:31:52', 'superadmin', '2020-09-17 01:01:28', 1, 'superadmin', '2020-09-17 01:01:00'),
(6, 'Dinas Pendidikan', '', 1, '', '', 'dinaspen@gmail.com', '', 'dinaspendidikan', '$2y$10$wnOAMt151WjXhC0uZLLv.Of.SBq.fwXAqGo30vJhorQ31o76dvQVS', 2, 1, '', '', '::1', NULL, NULL, '2020-09-18 19:55:31', 'superadmin', '2020-09-15 11:39:05', 'superadmin', '2020-09-18 19:55:31', 0, NULL, NULL),
(7, 'Kesejahteraan Rakyat', '', 1, '', '', 'kesra@gmail.com', '0822222222', 'kesra', '$2y$10$62D69XEu9h7x18bZxbOinOMXZKQQpONOp.fXL.bFjLTAm3nwLg/0G', 2, 1, '', '', '::1', NULL, NULL, '2020-09-19 12:54:08', 'superadmin', '2020-09-17 01:02:41', '', '2020-09-19 12:54:08', 0, NULL, NULL),
(8, 'Samsul', '', 1, 'jln raya', '2323232', 'samsul@gmail.com', '', 'samsul', '$2y$10$l5bPo7cAOyTm3O.4Y/OqcuNOqWUOakj/BoHZe6MYfKzt0dbmaGF7C', 6, 1, 'samsul20200917011038.jpg', 'samsul20200917011038_thumb.jpg', '::1', NULL, NULL, NULL, 'self', '2020-09-17 01:10:38', 'superadmin', '2020-09-17 01:22:26', 0, NULL, NULL),
(9, 'Baim', '', 1, 'jln raya', '234234234', 'baim@gmail.com', '', 'baim111', '$2y$10$mvujqnoBTiAx1xvsmpp17eU8esqZ.YvddccY4.G08rwj7cCTOczOC', 6, 1, 'baim11120200917011236.png', 'baim11120200917011236_thumb.png', '::1', NULL, NULL, NULL, 'self', '2020-09-17 01:12:36', 'superadmin', '2020-09-17 01:22:44', 0, NULL, NULL),
(10, 'Dini', '', 1, 'jln kaa', '3123123', 'dini@gmail.com', '', 'dini', '$2y$10$p2krnEa8wcfP1YJ53KerZ.hvhE5XOODPLdNlegMzdjn6nBZL1N5na', 6, 1, 'dini20200917011506.jpg', 'dini20200917011506_thumb.jpg', '::1', NULL, NULL, '2020-09-19 12:48:18', 'self', '2020-09-17 01:15:06', 'superadmin', '2020-09-19 12:48:18', 0, NULL, NULL),
(11, 'Baba', '12312312', 1, 'asdasd', '12312312', 'baba@gmail.com', '082280497403', 'baba', '$2y$10$aP55.UVX63.pPSafX2b31Oi0am0jWf4Vjlr9YkW9zaxfMdwwsgc2i', 6, 1, 'baba20200918102829.jpg', 'baba20200918102829_thumb.jpg', '::1', NULL, NULL, '2020-09-18 10:28:47', 'self', '2020-09-18 10:28:30', '', '2020-09-18 10:28:47', 0, NULL, NULL),
(12, 'mamam', '123123', 1, 'mamamama', '123123213', 'mama@gmail.com', '98232323', 'mamamama', '$2y$10$ZhwkmTHQlLsno8zbDcdKdeZDa5I2r8NUbZZdQ9CeZRbV1sOskSmKK', 6, 1, 'mamamama20200918103822.jpg', 'mamamama20200918103822_thumb.jpg', '::1', NULL, NULL, NULL, 'self', '2020-09-18 10:38:22', '', NULL, 0, NULL, NULL),
(13, 'cecep', '8282828', 1, 'kakakak', '8282828', 'cecep@gmail.com', '8282828', 'cecep', '$2y$10$N1Ex3j1lKeL7YgyqGcDF3uuycDZu2.Pmq83ta1Yoyo/GgWCh/FkDy', 6, 1, 'cecep20200918104007.jpg', 'cecep20200918104007_thumb.jpg', '::1', NULL, NULL, NULL, 'self', '2020-09-18 10:40:07', '', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_data_access`
--

CREATE TABLE `users_data_access` (
  `id_users_data_access` int(11) NOT NULL,
  `data_access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_data_access`
--

INSERT INTO `users_data_access` (`id_users_data_access`, `data_access_id`, `user_id`) VALUES
(22, 2, 1),
(23, 4, 1),
(24, 1, 1),
(25, 5, 1),
(26, 3, 1),
(59, 2, 2),
(60, 4, 2),
(61, 1, 2),
(62, 3, 2),
(97, 2, 4),
(98, 4, 4),
(99, 1, 4),
(100, 3, 4),
(101, 2, 3),
(102, 4, 3),
(103, 1, 3),
(104, 3, 3),
(105, 2, 5),
(106, 4, 5),
(107, 1, 5),
(108, 3, 5),
(113, 2, 7),
(114, 4, 7),
(115, 1, 7),
(116, 3, 7),
(117, 2, 8),
(118, 4, 8),
(119, 1, 8),
(120, 3, 8),
(121, 2, 9),
(122, 4, 9),
(123, 1, 9),
(124, 3, 9),
(125, 2, 10),
(126, 4, 10),
(127, 1, 10),
(128, 3, 10),
(134, 2, 6),
(135, 4, 6),
(136, 1, 6),
(137, 3, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usertype`
--

CREATE TABLE `usertype` (
  `id_usertype` int(10) NOT NULL,
  `usertype_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usertype`
--

INSERT INTO `usertype` (`id_usertype`, `usertype_name`) VALUES
(1, 'Superadmin'),
(2, 'Administrator'),
(6, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `FK_usertype` (`usertype`),
  ADD KEY `FK_jenispd` (`jenis_pd`);

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indeks untuk tabel `data_access`
--
ALTER TABLE `data_access`
  ADD PRIMARY KEY (`id_data_access`);

--
-- Indeks untuk tabel `detail_jenis`
--
ALTER TABLE `detail_jenis`
  ADD PRIMARY KEY (`id_jenis`),
  ADD KEY `FK_jenis` (`jenis_id`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_queries`
--
ALTER TABLE `log_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `menu_access`
--
ALTER TABLE `menu_access`
  ADD PRIMARY KEY (`id_menu_access`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `submenu_id` (`submenu_id`),
  ADD KEY `usertype_id` (`usertype_id`);

--
-- Indeks untuk tabel `pd`
--
ALTER TABLE `pd`
  ADD PRIMARY KEY (`id_pd`);

--
-- Indeks untuk tabel `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD PRIMARY KEY (`id_persetujuan`),
  ADD KEY `persetujuan_ibfk_1` (`proposal_id`),
  ADD KEY `persetujuan_ibfk_2` (`member_id`),
  ADD KEY `persetujuan_ibfk_3` (`tahun_id`);

--
-- Indeks untuk tabel `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`id_proposal`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `proposal_ibfk_1` (`pd_id`),
  ADD KEY `proposal_ibfk_2` (`jenis_id`),
  ADD KEY `fk_tahun_anggaran` (`tahun_id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_submenu`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `tahun_anggaran`
--
ALTER TABLE `tahun_anggaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `FK_cms_users_cms_usertype` (`usertype`);

--
-- Indeks untuk tabel `users_data_access`
--
ALTER TABLE `users_data_access`
  ADD PRIMARY KEY (`id_users_data_access`),
  ADD KEY `FK_cms_user_access_cms_access` (`data_access_id`),
  ADD KEY `FK_cms_user_access_cms_users` (`user_id`);

--
-- Indeks untuk tabel `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id_usertype`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_access`
--
ALTER TABLE `data_access`
  MODIFY `id_data_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_jenis`
--
ALTER TABLE `detail_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `log_queries`
--
ALTER TABLE `log_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `menu_access`
--
ALTER TABLE `menu_access`
  MODIFY `id_menu_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pd`
--
ALTER TABLE `pd`
  MODIFY `id_pd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `persetujuan`
--
ALTER TABLE `persetujuan`
  MODIFY `id_persetujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id_proposal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tahun_anggaran`
--
ALTER TABLE `tahun_anggaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users_data_access`
--
ALTER TABLE `users_data_access`
  MODIFY `id_users_data_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id_usertype` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_jenispd` FOREIGN KEY (`jenis_pd`) REFERENCES `pd` (`id_pd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_usertype` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id_usertype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_jenis`
--
ALTER TABLE `detail_jenis`
  ADD CONSTRAINT `FK_jenis` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_access`
--
ALTER TABLE `menu_access`
  ADD CONSTRAINT `menu_access_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_access_ibfk_2` FOREIGN KEY (`submenu_id`) REFERENCES `submenu` (`id_submenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_access_ibfk_3` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`id_usertype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD CONSTRAINT `persetujuan_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id_proposal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persetujuan_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persetujuan_ibfk_3` FOREIGN KEY (`tahun_id`) REFERENCES `tahun_anggaran` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `fk_tahun_anggaran` FOREIGN KEY (`tahun_id`) REFERENCES `tahun_anggaran` (`id_tahun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_ibfk_1` FOREIGN KEY (`pd_id`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `detail_jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_cms_users_cms_usertype` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id_usertype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_data_access`
--
ALTER TABLE `users_data_access`
  ADD CONSTRAINT `FK_cms_user_access_cms_access` FOREIGN KEY (`data_access_id`) REFERENCES `data_access` (`id_data_access`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cms_user_access_cms_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
