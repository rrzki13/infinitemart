-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Mar 2021 pada 13.50
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_commerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `order_id` int(20) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `deskripsi` text NOT NULL,
  `total_barang` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `snaptoken` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `order_id`, `id_produk`, `id_toko`, `id_user`, `tanggal`, `deskripsi`, `total_barang`, `harga`, `status`, `first_name`, `last_name`, `address`, `city`, `postal_code`, `phone`, `country_code`, `snaptoken`, `created_at`, `updated_at`) VALUES
(3, 1744160686, 1, 2, 1, '2021-01-20 10:44:46', 'Packing yg rapih', 2, 20000, '1', 'Gilang', 'permana', 'cilodong', 'depok', '16414', '12456', 'IDN', '35bfdf00-cef3-43b5-bf89-f3cb71df67a5', '2021-01-28 04:59:16', '2021-01-28 04:59:16'),
(12, 477036185, 16, 7, 11, '2021-03-01 14:28:12', 'yang ini', 5, 4750000, '1', 'Trafalgar', 'Law', 'jonggol', 'depok', '12231', '1209891801', 'JPN', '79ab2bad-a09d-4451-adc4-06368b135e82', '2021-03-01 00:28:13', '2021-03-01 00:28:13'),
(13, 1128682414, 16, 7, 11, '2021-03-01 14:29:25', 'tes', 5, 950000, '1', 'Trafalgar', 'Law', 'jonggol', 'depok', '12231', '1209891801', 'JPN', '9d761d51-1c9c-4f0b-b5fc-7ad82ffbf084', '2021-03-01 00:29:26', '2021-03-01 00:29:26'),
(14, 1845881839, 18, 14, 5, '2021-03-02 14:01:13', 'yang kuning', 1, 10000000, '1', 'Rizki', 'Ramadhan', 'Cilodong', 'Depok', '12131', '213123124', 'IDN', 'dd5132fc-3b56-4c1d-bbb2-f78e6141d4c6', '2021-03-02 00:01:14', '2021-03-02 00:01:14'),
(15, 172644873, 10, 7, 5, '2021-03-02 14:21:14', 'tes', 2, 500000, '1', 'Rizki', 'Ramadhan', 'Cilodong', 'Depok', '12131', '213123124', 'IDN', '697e3cb6-1182-4beb-a62e-2f9041b3b528', '2021-03-02 00:21:14', '2021-03-02 00:21:14'),
(16, 1135143015, 24, 7, 5, '2021-03-02 19:16:14', 'tes', 1, 14500000, '1', 'Rizki', 'Ramadhan', 'Cilodong', 'Depok', '12131', '213123124', 'IDN', '8acff106-abee-446b-a2e7-b1a4220af7ac', '2021-03-02 05:16:15', '2021-03-02 05:16:15'),
(21, 792148520, 28, 17, 18, '2021-03-03 20:45:24', 'Bisa terbang titanya', 3, 200000, '1', 'pancaran', 'ratna', 'jatijajar', 'depok', '3423', '244332', 'IDN', '5a2e3172-9670-469c-9a13-7244aa7857a0', '2021-03-03 06:45:25', '2021-03-03 06:45:25'),
(22, 774329155, 10, 7, 5, '2021-03-04 13:02:55', 'Biru bang', 1, 500000, '1', 'Rizki', 'Ramadhan', 'Cilodong', 'Depok', '12131', '213123124', 'IDN', '31f4bfe7-d593-49ab-9fdc-f07b8c76282b', '2021-03-03 23:02:57', '2021-03-03 23:02:57'),
(23, 530462155, 37, 17, 18, '2021-03-10 15:29:15', 'yang bagus', 1, 900000, '1', 'pancaran', 'ratna mustika', 'jatijajar', 'depok', '342332', '244332312212', 'IDN', '0e11e29d-580f-48ec-a4c1-83e1e48ef379', '2021-03-10 01:29:16', '2021-03-10 01:29:16'),
(24, 1363813044, 28, 17, 18, '2021-03-11 11:19:36', 'tes', 1, 2000000, '1', 'pancaran', 'ratna mustika', 'jatijajar', 'depok', '342332', '244332312212', 'IDN', '38e898d5-d10a-4371-b574-9ec9429049e1', '2021-03-10 21:19:40', '2021-03-10 21:19:40'),
(25, 1001045976, 28, 17, 18, '2021-03-11 11:19:55', 'tes', 100, 2000000, '1', 'pancaran', 'ratna mustika', 'jatijajar', 'depok', '342332', '244332312212', 'IDN', 'ed6e9d4e-e4ec-4970-bd99-6f575f11135d', '2021-03-10 21:19:56', '2021-03-10 21:19:56'),
(26, 2123034757, 35, 17, 18, '2021-03-11 11:23:54', 'tes', 10, 1400000000, '1', 'pancaran', 'ratna mustika', 'jatijajar', 'depok', '342332', '244332312212', 'IDN', 'f66a31d2-cf16-4913-8d79-f52152e5ccb3', '2021-03-10 21:23:56', '2021-03-10 21:23:56'),
(27, 1550653025, 37, 17, 30, '2021-03-22 20:10:26', 'tes', 1, 900000, '1', 'anna123', 'anna123', 'arrandle kingom', 'arrandle', '12345', '1233345', 'NOR', '4739957c-176c-4fe4-a0c5-fad00d4dcc9e', '2021-03-22 06:10:27', '2021-03-22 06:10:27'),
(28, 1847491708, 37, 17, 30, '2021-03-22 20:31:08', 'cek123', 1, 900000, '1', 'anna123', 'anna123', 'arrandle kingom', 'arrandle', '12345', '1233345', 'NOR', '7ddd0bd4-2b98-44c2-ad2c-47de4030f99e', '2021-03-22 06:31:08', '2021-03-22 06:31:08'),
(29, 624386979, 35, 17, 30, '2021-03-22 20:33:16', 'tes123', 1, 1400000000, '1', 'anna123', 'anna123', 'arrandle kingom', 'arrandle', '12345', '1233345', 'NOR', 'cdec979a-4043-4299-9c65-87d78994a499', '2021-03-22 06:33:17', '2021-03-22 06:33:17'),
(30, 1951374704, 17, 14, 30, '2021-03-23 10:23:50', 'yang hitam', 5, 900000, '1', 'anna123', 'anna123', 'arrandle kingom', 'arrandle', '12345', '1233345', 'NOR', '84f4d1f5-6e42-4057-afb5-be38c8a0a527', '2021-03-22 20:23:52', '2021-03-22 20:23:52'),
(31, 1226579217, 45, 22, 30, '2021-03-26 19:41:12', 'tes', 1, 14000000, '1', 'anna', 'of arrandle', 'arrandle kingom', 'arrandle', '123456', '1233345', 'NOR', 'bf1f6c71-53c4-436e-92cc-bdcb124fa00f', '2021-03-26 05:41:18', '2021-03-26 05:41:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `id_toko` int(11) NOT NULL,
  `user_beli` text DEFAULT NULL,
  `gambar_lain` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `gambar`, `id_toko`, `user_beli`, `gambar_lain`, `created_at`, `updated_at`) VALUES
(1, 'barang baru', 10000, 'produk-1611729216.png', 1, '1', 'produk_lain-1611729216.png', '2021-01-26 17:17:19', '2021-01-27 06:33:36'),
(2, 'barang2', 200000, 'produk-1611728335.png', 1, '1,2,3,4', 'produk_lain-1611728335.png', '2021-01-27 06:18:55', '2021-01-27 06:18:55'),
(10, 'Hoddie', 500000, 'produk-1613716367.png', 7, '4,10,1,5', 'produk_lain-1613716367.png', '2021-02-19 06:32:47', '2021-02-19 06:32:47'),
(13, 'Tas Ransel', 950000, 'produk-1613716497.jpg', 7, '10,5,4,2,1', 'produk_lain-1613716497.jpg', '2021-02-19 06:34:57', '2021-02-21 09:56:53'),
(16, 'Hearth pirates', 1000000, 'produk-1614397716.jpg', 7, '10,14,11,5,2,1,4', 'produk_lain-1614397716.png', '2021-02-26 20:48:36', '2021-03-01 23:59:37'),
(17, 'Gitar Listrik', 900000, 'produk-1614577472.jpg', 14, 'all', 'produk_lain-1614577472.png', '2021-02-28 22:44:32', '2021-02-28 22:44:32'),
(18, 'jam rolex', 10000000, 'produk-1614577505.jpg', 14, '1,4,10,14,11,5,2', 'produk_lain-1614577505.jpg', '2021-02-28 22:45:05', '2021-02-28 22:45:05'),
(20, 'buku harry potter', 90000, 'produk-1614668898.jpg', 7, '11,14,10', 'produk_lain-1614668898.jpg', '2021-03-02 00:08:18', '2021-03-02 00:22:32'),
(21, 'piring cantik', 90000, 'produk-1614687127.jpg', 7, '5,14,10', 'produk_lain-1614687127.jpg', '2021-03-02 05:12:07', '2021-03-02 05:12:07'),
(23, 'gitar listrik kece', 950000, 'produk-1614687251.png', 7, '5,10,14', 'produk_lain-1614687251.jpg', '2021-03-02 05:13:16', '2021-03-02 05:14:11'),
(25, 'iphone 12', 14000000, 'produk-1614752696.png', 7, '11,14,10', 'produk_lain-1614752696.png', '2021-03-02 23:24:56', '2021-03-02 23:24:56'),
(27, 'Kursi di lapisin emas', 500000, 'produk-1614754082.png', 17, '5,11,10,14', 'produk_lain-1614754082.png', '2021-03-02 23:48:02', '2021-03-03 06:44:18'),
(28, 'Jaw Titan', 2000000, 'produk-1614778974.jpg', 17, 'all', 'produk_lain-1614778974.jpg', '2021-03-03 06:42:54', '2021-03-10 01:21:58'),
(30, 'Perahu', 1000000, 'produk-1614839973.jpg', 18, '21', 'produk_lain-1614839973.jpg', '2021-03-03 23:39:33', '2021-03-03 23:39:33'),
(31, 'Perahu', 1000000, 'produk-1614839982.jpg', 18, '21', 'produk_lain-1614839982.jpg', '2021-03-03 23:39:42', '2021-03-03 23:39:42'),
(32, 'ANIME ANCA', 1000, 'produk-1614840055.jpg', 18, '21', 'produk_lain-1614840055.jpg', '2021-03-03 23:40:55', '2021-03-03 23:40:55'),
(33, 'Erennn', 1000000, 'produk-1614840202.jpg', 18, '18', 'produk_lain-1614840202.jpg', '2021-03-03 23:43:22', '2021-03-03 23:43:22'),
(34, 'pancaran', 2000, 'produk-1614840641.jpg', 19, '11,5,18,22,10,14,21', 'produk_lain-1614840641.jpg', '2021-03-03 23:50:41', '2021-03-03 23:50:41'),
(35, 'icon wa grup', 1400000000, 'produk-1615265390.png', 17, 'all', 'produk_lain-1615265390.png', '2021-03-08 21:49:50', '2021-03-09 01:43:50'),
(37, 'skecth', 900000, 'produk-1615357473.jpg', 17, 'all', 'produk_lain-1615357473.jpg', '2021-03-09 23:24:33', '2021-03-09 23:24:33'),
(40, 'Topi Jerami', 950000, 'produk-1615874783.png', 20, '24,20,18,17,21', 'produk_lain-1615874783.png', '2021-03-15 23:06:23', '2021-03-15 23:15:41'),
(43, 'into the unknown', 1000000000, 'produk-1616757126.png', 22, 'all', 'produk_lain-1616757126.png', '2021-03-26 04:12:06', '2021-03-26 04:12:06'),
(44, 'show your self', 9500000, 'produk-1616757294.png', 22, '25,24,23,14', 'produk_lain-1616762117.png', '2021-03-26 04:14:54', '2021-03-26 05:35:17'),
(45, 'Let it go', 14000000, 'produk-1616762172.png', 22, 'all', 'produk_lain-1616762172.png', '2021-03-26 05:36:12', '2021-03-26 05:36:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `logo` text NOT NULL,
  `background` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `deskripsi`, `id_user`, `logo`, `background`, `created_at`, `updated_at`) VALUES
(1, 'toko c', 'update toko', 1, 'logo-1611733278.png', 'background-1611733278.png', '2021-01-26 17:14:49', '2021-01-27 07:41:19'),
(7, 'Corazon Store', 'The heart pirates\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatem itaque reiciendis numquam, iste sunt, nostrum molestias vero culpa saepe illo velit ab esse porro, incidunt facilis tenetur. Molestias, reiciendis recusandae.', 5, 'logo-1614352446.jpg', 'background-1614352056.jpg', '2021-02-15 07:33:43', '2021-03-26 00:18:19'),
(14, 'heart pirates', 'the heart of the ocean', 11, 'logo-1614576281.png', 'background-1614576281.jpg', '2021-02-28 22:24:41', '2021-02-28 22:24:41'),
(17, 'Pancaran Furniture', 'Pancaran hyper\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur corrupti expedita, hic aliquam corporis perferendis quo ab nam maxime dolore dignissimos dolorum, necessitatibus, reiciendis in sed itaque eum accusamus illum!', 18, 'logo-1614753775.png', 'background-1615364576.jpg', '2021-03-02 23:42:55', '2021-03-10 20:51:51'),
(18, 'tes123456', 'tes\ntes', 21, 'logo-1614839875.jpg', 'background-1614839875.jpg', '2021-03-03 23:37:55', '2021-03-03 23:37:55'),
(19, 'jajajaj', 'anda beli kami senang', 22, 'logo-1614840584.jpg', 'background-1614840584.jpg', '2021-03-03 23:49:44', '2021-03-03 23:49:44'),
(20, 'Mugiwara Kaizokudan', 'Future pirates king', 24, 'logo-1615438660.png', 'background-1615438660.jpg', '2021-03-10 21:56:32', '2021-03-10 21:57:40'),
(22, 'Arrandle Store', 'Welcome To Arrandle Store', 30, 'logo-1616395511.jpg', 'background-1616754580.png', '2021-03-21 23:45:11', '2021-03-26 03:29:40'),
(23, 'Bruni Store', 'Welcome To Bruni Store', 31, 'logo-1616762959.jpg', 'background-1616762996.jpg', '2021-03-26 05:49:19', '2021-03-26 05:49:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `role` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(11) NOT NULL,
  `country_code` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `role`, `first_name`, `last_name`, `address`, `city`, `postal_code`, `country_code`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin@admin.com', '$2y$10$z9xQ4Gl01bzHrBzOLwHkQOQzXthonpiEwnvUjN4d6Fzo154ssPIRK', 1, '', '', '', '', '0', '', '1234567890', '2021-01-26 09:40:55.000000', '2021-01-26 09:40:55.000000'),
(2, 'admin2', 'admin2@admin.com', '$2y$10$nstX/s7otJUWEwcW5NjPaenSvMafnAgKqGwEPqFY7/YrMwwBtmZ8G', 1, '', '', '', '', '0', '', '1234567890', '2021-01-26 18:33:28.000000', '2021-01-26 18:33:28.000000'),
(4, 'admin4', 'admin3@admin.com', '$2y$10$IMojkgDkzWkVotFm7fsEeu.WM2iIb.pcilJMGJlslkShGG0qLMxFO', 1, 'admin3', 'adm', 'cilodong', 'depok', '16414', 'IDN', '1234567890', '2021-01-28 04:29:31.000000', '2021-01-28 04:29:31.000000'),
(5, 'ricky123', 'ricky@gmail.com', '$2y$10$WsVCFY8LT8vYY1TMbTjPgOheMknZgrYS.9B0nj93UUg5/pKaWo0gO', 2, 'Rizki', 'Ramadhan', 'Cilodong', 'Depok', '12131', 'IDN', '213123124', '2021-02-03 16:03:27.000000', '2021-02-03 16:03:27.000000'),
(10, 'sven', 'farazrizki13@gmail.com', '$2y$10$vMmXRUVOErWk2xT4lUnNROV5B5MRqyu5gXubkFwgYunGhiVD1JH8u', 2, 'koki', 'ramadhan', 'lkjhlk', 'kiki', '98089', 'IDN', '979087', '2021-02-12 04:26:53.000000', '2021-02-12 04:26:53.000000'),
(11, 'trafalgar', 'opera@gmail.com', '$2y$10$6ZkS1VpRbYHw8hvnbYtgF.PWGLK9uLXqjnm0IbuQExOJEJBTqCe4K', 2, 'Trafalgar', 'Law', 'jonggol', 'depok', '12231', 'JPN', '1209891801', '2021-02-22 03:17:18.000000', '2021-02-22 03:17:18.000000'),
(14, 'kkyy13', 'kiki123@gmail.com', '$2y$10$fegBufAjNVYuekCQfmhEzOrq3kfKIsGby4l7mXSiQ9EKA6ifMQLfi', 2, 'Rizki', 'Ramadhan', 'jonggol', 'depok', '21321321', 'AUS', '879798798', '2021-02-24 14:09:36.000000', '2021-02-24 14:09:36.000000'),
(17, 'admin', 'admin123@gmail.com', '$2y$10$sL1p3MQExEUmx1PIM23qm.sfe4G1ukn2qy.nKXLTwcpKGO3dYt5.O', 1, 'Admiral', 'sakazuki', 'cilodong', 'depok', '32121', 'IDN', '123113221', '2021-03-02 00:29:54.000000', '2021-03-08 21:26:40.000000'),
(18, 'anca', 'anca@gmail.com', '$2y$10$eHhzaxSyk24ABS3nJeRUHuYE57T8vHvu6hEdomeLczMCHlaSKcNNu', 2, 'pancaran', 'ratna mustika', 'jatijajar', 'depok', '342332', 'IDN', '244332312212', '2021-03-02 23:38:01.000000', '2021-03-10 20:51:16.000000'),
(20, 'raqwan', 'raqwan@gmail.com', '$2y$10$pkrBRnbKk2ZtZRlhOQ.3ZurtJegR8APV9DUhRLMvziZZYZzpR4sKC', 1, 'raqwan', 'Ratna', 'banjaran', 'Depok', '23498', 'AUS', '3274238', '2021-03-03 05:52:41.000000', '2021-03-03 05:52:41.000000'),
(21, 'andika123', 'andikasp787@gmail.com', '$2y$10$/9M1EVn5emtMReWTqkpbhOg5Oo1NGllts/xQerrWG8SbqTGoqBhpO', 2, 'muhamad', 'dika', 'Cilangkap', 'jakarta', '72567', 'IDN', '8571124', '2021-03-03 23:33:12.000000', '2021-03-03 23:33:12.000000'),
(22, 'hatori', 'gaminghouse@gmail.com', '$2y$10$gzU6O5Nt5iZivKAgXMKZnObiwOTP0E6z38cTO/iB8Ychj30pgyLXi', 2, 'rasyid', 'ridho', 'proklamasi24', 'bogor', '23454', 'IDN', '853150', '2021-03-03 23:47:33.000000', '2021-03-03 23:47:33.000000'),
(23, 'tsubasa', 'wkwk@gmail.com', '$2y$10$Ke.yqVug.WnfAPdQFvCm2ONZMZ0oV8JCeDeT1bSuVG8onDHz6Ygca', 2, 'tsubasa', 'ozora', 'jl.manchester 32', 'bogor', '16961', 'IDN', '896654321', '2021-03-03 23:58:55.000000', '2021-03-03 23:58:55.000000'),
(24, 'opera', 'opera22@gmail.com', '$2y$10$7RHA89CizjTm2wX9GkB0eu99ae7B4WvVrIIxF6gTwZug79JY9iGeu', 2, 'Mugiwara No', 'Luffy', 'depok', 'depok', '323432', 'JPN', '324332432', '2021-03-10 21:52:58.000000', '2021-03-10 21:55:28.000000'),
(25, 'kiku123', 'kiku123@gmail.com', '$2y$10$9pVc3QrJfe1lcq3Y8XPI4uLSNjdLzRqeMnDIoRAcULIHdzMqQFxQ2', 2, 'rizki', 'Law', 'depok', 'depok', '2123221', 'AIA', '312421212', '2021-03-21 03:11:37.000000', '2021-03-21 03:11:37.000000'),
(30, 'anna123', 'anna@gmail.com', '$2y$10$soGQsE7NHDSHHq1KoQ0bfeXIMh4AxKJ8oC/ho/5FWCjZrkvtRcqpq', 2, 'anna', 'of arrandle', 'arrandle kingom', 'arrandle', '123456', 'NOR', '1233345', '2021-03-21 21:35:08.000000', '2021-03-26 05:42:36.000000'),
(31, 'elsa', 'elsa@gmail.com', '$2y$10$ohz7wrES3Q4b1EM4DmNbIOncAGGAHwAARqbZGO9kvQeflJW3yrSEe', 2, 'elsa', 'of arrandle', 'arrandle kingdom', 'arrandle', '2142212', 'NOR', '324323231', '2021-03-26 05:46:56.000000', '2021-03-26 05:46:56.000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
