-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2020 at 08:41 PM
-- Server version: 10.2.30-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tryout`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bidang`
--

CREATE TABLE `tb_bidang` (
  `id_bidang` int(11) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bidang`
--

INSERT INTO `tb_bidang` (`id_bidang`, `bidang`, `waktu`, `status`, `updated_at`) VALUES
(1, 'Saintek', '180', 'ON', '2020-01-01 12:50:05'),
(2, 'Soshum', '180', 'ON', '2020-01-01 12:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `hasil` bigint(20) NOT NULL,
  `keterangan` longtext DEFAULT NULL,
  `updated_at` varchar(30) NOT NULL,
  `created_at` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id_hasil`, `id`, `id_bidang`, `hasil`, `keterangan`, `updated_at`, `created_at`) VALUES
(65, 17, 2, 0, NULL, '2019-11-16 21:01:55', '2019-11-16 21:01:55'),
(70, 29, 1, 0, NULL, '2019-11-26 16:43:21', '2019-11-26 16:43:21'),
(72, 31, 1, -1, NULL, '2019-11-30 15:19:26', '2019-11-30 15:19:26'),
(73, 31, 1, -1, NULL, '2019-11-30 15:20:32', '2019-11-30 15:20:32'),
(74, 72, 1, 178, NULL, '2019-12-01 04:57:08', '2019-12-01 04:57:08'),
(75, 59, 1, 88, NULL, '2019-12-01 05:15:02', '2019-12-01 05:15:02'),
(76, 66, 1, 69, NULL, '2019-12-01 05:17:18', '2019-12-01 05:17:18'),
(77, 48, 1, 92, NULL, '2019-12-01 05:19:02', '2019-12-01 05:19:02'),
(78, 36, 1, 95, NULL, '2019-12-01 05:32:29', '2019-12-01 05:32:29'),
(79, 35, 1, 103, NULL, '2019-12-01 06:41:12', '2019-12-01 06:41:12'),
(80, 78, 1, 18, NULL, '2019-12-01 08:03:08', '2019-12-01 08:03:08'),
(81, 47, 1, 74, NULL, '2019-12-01 08:29:59', '2019-12-01 08:29:59'),
(82, 74, 2, 135, NULL, '2019-12-01 10:31:39', '2019-12-01 10:31:39'),
(83, 53, 1, 75, NULL, '2019-12-01 13:22:34', '2019-12-01 13:22:34'),
(84, 33, 2, 284, NULL, '2019-12-01 19:19:13', '2019-12-01 19:19:13'),
(85, 43, 1, 50, NULL, '2019-12-02 06:34:12', '2019-12-02 06:34:12'),
(86, 58, 1, 62, NULL, '2019-12-02 11:35:59', '2019-12-02 11:35:59'),
(87, 61, 1, 133, NULL, '2019-12-02 12:36:01', '2019-12-02 12:36:01'),
(88, 85, 1, 111, NULL, '2019-12-02 14:42:03', '2019-12-02 14:42:03'),
(89, 39, 2, -9, NULL, '2019-12-02 23:06:03', '2019-12-02 23:06:03'),
(90, 86, 1, 128, NULL, '2019-12-03 11:55:24', '2019-12-03 11:55:24'),
(91, 87, 1, 6, NULL, '2019-12-05 04:43:10', '2019-12-05 04:43:10'),
(92, 87, 2, 12, NULL, '2019-12-05 04:48:40', '2019-12-05 04:48:40'),
(93, 88, 1, 2, NULL, '2020-01-01 12:46:27', '2020-01-01 12:46:27'),
(94, 91, 1, 154, NULL, '2020-01-02 15:11:19', '2020-01-02 15:11:19'),
(95, 89, 1, 84, NULL, '2020-01-02 16:38:54', '2020-01-02 16:38:54'),
(96, 90, 1, 73, NULL, '2020-01-03 03:24:48', '2020-01-03 03:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `pelajaran` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`pelajaran`, `mapel`) VALUES
(1, 'Matematika Dasar'),
(2, 'Bahasa Indonesia'),
(3, 'Bahasa Inggris'),
(4, 'TPA'),
(5, 'Matematika Ipa'),
(6, 'Ekonomi'),
(7, 'Geografi'),
(8, 'Sosiologi'),
(9, 'Sejarah'),
(10, 'Fisika'),
(11, 'Kimia'),
(12, 'Biologi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_materi`
--

CREATE TABLE `tb_materi` (
  `id_materi` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `judul_materi` varchar(500) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_materi`
--

INSERT INTO `tb_materi` (`id_materi`, `foto`, `judul_materi`, `file`, `updated_at`, `created_at`) VALUES
(1, '30121-2020-01-06-16-33-59.png', 'cek', 'cekprojek.pdf', '2020-01-06 16:33:59', '2020-01-06 16:33:59'),
(2, '36326-2020-01-07-04-20-10.jpg', 'materi fisika', 'PENGUMUMAN-PEMBAYARAN-BIAYA-PENYELENGGARAAN-PENDIDIKAN-BPP-SEMESTER-II-2019-2020.pdf', '2020-01-07 04:20:10', '2020-01-07 04:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rangkuman`
--

CREATE TABLE `tb_rangkuman` (
  `id_rangkuman` int(11) NOT NULL,
  `foto` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id_soal` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `soal` longtext DEFAULT NULL,
  `gambar_soal` varchar(100) DEFAULT NULL,
  `option_a` longtext DEFAULT NULL,
  `option_b` longtext DEFAULT NULL,
  `option_c` longtext DEFAULT NULL,
  `option_d` longtext DEFAULT NULL,
  `option_e` longtext DEFAULT NULL,
  `kunci` longtext NOT NULL,
  `petunjuk` varchar(10) NOT NULL,
  `pelajaran` int(11) NOT NULL,
  `pengecekan` varchar(30) NOT NULL,
  `updated_at` varchar(30) NOT NULL,
  `created_at` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id_soal`, `id_bidang`, `soal`, `gambar_soal`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `kunci`, `petunjuk`, `pelajaran`, `pengecekan`, `updated_at`, `created_at`) VALUES
(52, 1, NULL, '79737-2019-11-30-00-36-24.JPG', '32492-2019-11-30-00-36-24.JPG', '83843-2019-11-30-00-36-24.JPG', '29117-2019-11-30-00-36-24.JPG', '89991-2019-11-30-00-36-24.JPG', '22686-2019-11-30-00-36-24.JPG', 'A', 'A', 5, 'ya', '2019-11-30 00:38:22', '2019-11-30 00:36:24'),
(53, 1, NULL, '77567-2019-11-30-00-37-52.JPG', '92602-2019-11-30-00-37-52.JPG', '58948-2019-11-30-00-37-52.JPG', '60660-2019-11-30-00-37-52.JPG', '56507-2019-11-30-00-37-52.JPG', '62537-2019-11-30-00-37-52.JPG', 'A', 'A', 5, 'ya', '2019-11-30 00:37:52', '2019-11-30 00:37:52'),
(54, 1, NULL, '89341-2019-11-30-00-39-09.JPG', '1', '2', '3', '4', '5', 'B', 'A', 5, 'tidak', '2019-11-30 00:39:09', '2019-11-30 00:39:09'),
(55, 1, 'Rumah di Jalan veteran dinomorid secara urut mulai  1 sampai dengan 150. Berapa banyak rumah yang nomornya menggunakan angka 8  sekurang-kurangnya satu kali?', NULL, '14', '15', '21', '24', '30', 'D', 'A', 5, 'tidak', '2019-11-30 00:40:21', '2019-11-30 00:40:21'),
(56, 1, 'Nilai p agar vector pi + 2j – 6k dan 4i – 3j + k saling tegak lurus adalah …', NULL, '6', '3', '1', '-1', '-6', 'C', 'A', 5, 'tidak', '2019-11-30 00:40:58', '2019-11-30 00:40:58'),
(57, 1, 'Transforasi T merupakan pencerminan terhadap garis y = x/3 dilanjutkan pencerminan terhadap garis y = -3x. Matriks penyajian T adalah …', NULL, '24583-2019-11-30-00-44-07.JPG', '70459-2019-11-30-00-44-07.JPG', '57735-2019-11-30-00-44-07.JPG', '51206-2019-11-30-00-44-07.JPG', '86727-2019-11-30-00-44-07.JPG', 'A', 'A', 5, 'ya', '2019-11-30 00:44:07', '2019-11-30 00:44:07'),
(58, 1, 'Diketahui limas beraturan T.ABCD dengan Panjang rusuk 6 cm. Titik P dan CR sehingga TP : PC  = 2 : 1. Jarak P ke bidang BDT adalah …', NULL, '14907-2019-11-30-00-45-56.JPG', '98176-2019-11-30-00-45-56.JPG', '34098-2019-11-30-00-45-56.JPG', '86539-2019-11-30-00-45-56.JPG', '27897-2019-11-30-00-45-56.JPG', 'E', 'A', 5, 'ya', '2019-11-30 00:45:56', '2019-11-30 00:45:56'),
(59, 1, NULL, '15229-2019-11-30-00-49-20.JPG', '86432-2019-11-30-00-49-20.JPG', '79496-2019-11-30-00-49-20.JPG', '89703-2019-11-30-00-49-20.JPG', '66092-2019-11-30-00-49-20.JPG', '47668-2019-11-30-00-49-20.JPG', 'A', 'A', 5, 'ya', '2019-11-30 00:49:20', '2019-11-30 00:49:20'),
(60, 1, 'Banyak bilangan ratusan dengan angka pertama dan kedua mempunyai selisih 2 angka adalah …', NULL, '120', '130', '140', '150', '160', 'D', 'A', 5, 'tidak', '2019-11-30 00:49:57', '2019-11-30 00:49:57'),
(61, 1, NULL, '22863-2019-11-30-02-44-17.JPG', '87645-2019-11-30-02-44-17.JPG', '85831-2019-11-30-02-44-17.JPG', '11866-2019-11-30-02-44-17.JPG', '17695-2019-11-30-02-44-17.JPG', '39452-2019-11-30-02-44-17.JPG', 'B', 'A', 5, 'ya', '2019-11-30 02:44:17', '2019-11-30 02:44:17'),
(62, 1, 'Misalkan fungsi f, g, dan h memenuhi g(x) = f(4x) .h(5x). Jika f(0) = 2, h(0) = -1, f\'(0) = 3,  dan h\'(0) = 7, tentukan g\'(0).', NULL, '40', '48', '58', '60', '70', 'C', 'A', 5, 'tidak', '2019-11-30 02:47:25', '2019-11-30 02:47:25'),
(63, 1, NULL, '97119-2019-11-30-02-58-30.JPG', '34416-2019-11-30-02-58-30.JPG', '25194-2019-11-30-02-58-30.JPG', '16743-2019-11-30-02-58-30.JPG', '49657-2019-11-30-02-58-30.JPG', '96371-2019-11-30-02-58-30.JPG', 'A', 'A', 5, 'ya', '2019-11-30 02:58:30', '2019-11-30 02:58:30'),
(64, 1, NULL, '66878-2019-11-30-02-59-34.JPG', '2', '1', '-1', '-2', '0', 'A', 'A', 5, 'tidak', '2019-11-30 05:37:39', '2019-11-30 02:59:34'),
(65, 1, NULL, '44743-2019-11-30-03-00-53.JPG', '2', '1', '-1', '-2', '0', 'C', 'A', 5, 'tidak', '2019-11-30 03:00:53', '2019-11-30 03:00:53'),
(66, 1, NULL, '88074-2019-11-30-03-06-05.JPG', '78187-2019-11-30-03-06-05.JPG', '42765-2019-11-30-03-06-05.JPG', '82458-2019-11-30-03-06-05.JPG', '21758-2019-11-30-03-06-05.JPG', '95769-2019-11-30-03-06-05.JPG', 'B', 'A', 5, 'ya', '2019-11-30 03:06:05', '2019-11-30 03:06:05'),
(67, 1, 'Kedua ujung sebuah pegas yang memiliki tetapan pegas 50 N/m ditarik masing-masing dengan gaya sebesar 10 N yang saling berlawanan. Pertambahan Panjang pegas tersebut adalah …', NULL, '0,0  m', '0,1  m', '0,2  m', '0,3  m', '0,4 m', 'C', 'A', 10, 'tidak', '2019-11-30 03:09:24', '2019-11-30 03:06:59'),
(68, 1, NULL, '35042-2019-11-30-03-09-18.JPG', 'Air dan es yang jumlahnya tidak dapat ditentukan', 'Air sedikit lebih banyak daripada es', '0,5 gr es dan 1,5 air', '1 gr es dan 1 cc air', '1,5 gr es dan 0,5 cc air', 'D', 'A', 10, 'tidak', '2019-11-30 03:09:18', '2019-11-30 03:09:18'),
(69, 1, 'Massa jenis suatu zat cair dapat ditentukan dengan cara memasukkan logam yang diketahui massa jenisnya dan beratnya ketika di udara, kemudian mengukur beratnya ketika berada di dalam zar cair tersebut.\r\n\r\nSEBAB\r\n\r\nBerdasarkan hokum Archimedes, selisih berat benda di udara dan di dalam zat cair sama dengan berat zat cair yang dipindahkan oleh benda tersebut.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 10, 'tidak', '2019-11-30 03:10:17', '2019-11-30 03:10:17'),
(70, 1, NULL, '78737-2019-11-30-03-13-05.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'C', 10, 'tidak', '2019-11-30 03:13:05', '2019-11-30 03:13:05'),
(71, 1, 'Seutas tali diikatkan pada sebuah balok. Keadaan di bawah ini yang menyebabkan tegangan tali tidak sama dengan berat balok m adalah …\r\n(1)	Digantung dan dimasukkan kedalam air\r\n(2)	Digantung dan dipercepat ke atas\r\n(3)	Ditarik ke atas, tetapi tetap menempel pada bidang datar\r\n(4)	Digantung dan bergerak ke bawah dengan kecepatan tetap', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'C', 10, 'tidak', '2019-11-30 03:13:48', '2019-11-30 03:13:48'),
(73, 1, NULL, '33609-2019-11-30-03-15-46.JPG', '0,21 J', '0,22 J', '0,30 J', '0,23 J', '0,20 J', 'A', 'A', 10, 'tidak', '2019-11-30 03:15:46', '2019-11-30 03:15:46'),
(74, 1, NULL, '86336-2019-11-30-03-17-33.JPG', '39668-2019-11-30-03-17-33.JPG', '28367-2019-11-30-03-17-33.JPG', '57657-2019-11-30-03-17-33.JPG', '92248-2019-11-30-03-17-33.JPG', '38417-2019-11-30-03-17-33.JPG', 'A', 'A', 10, 'ya', '2019-11-30 03:17:33', '2019-11-30 03:17:33'),
(75, 1, NULL, '50344-2019-11-30-03-19-47.JPG', '81299-2019-11-30-03-19-47.JPG', '82143-2019-11-30-03-19-47.JPG', '71248-2019-11-30-03-19-47.JPG', '30060-2019-11-30-03-19-47.JPG', '13890-2019-11-30-03-19-47.JPG', 'C', 'A', 10, 'ya', '2019-11-30 03:19:47', '2019-11-30 03:19:47'),
(76, 1, NULL, '15963-2019-11-30-03-23-38.JPG', '12 X 10^(-4) T', '30 X 10^(-4) T', '33 X 10^(-4) T', '32 X 10^(-4) T', '20 X 10^(-4) T', 'A', 'A', 10, 'tidak', '2019-11-30 03:23:38', '2019-11-30 03:23:38'),
(77, 1, NULL, '42883-2019-11-30-03-23-39.JPG', '12 X 10^(-4) T', '30 X 10^(-4) T', '33 X 10^(-4) T', '32 X 10^(-4) T', '20 X 10^(-4) T', 'A', 'A', 10, 'tidak', '2019-11-30 03:23:39', '2019-11-30 03:23:39'),
(78, 1, NULL, '62591-2019-11-30-03-29-50.JPG', '72939-2019-11-30-03-29-50.JPG', '87961-2019-11-30-03-29-50.JPG', '75875-2019-11-30-03-29-50.JPG', '81226-2019-11-30-03-29-50.JPG', '48143-2019-11-30-03-29-50.JPG', 'E', 'A', 10, 'ya', '2019-11-30 03:29:50', '2019-11-30 03:29:50'),
(80, 1, 'Sebuah stasiun radio memancarkan sinyal dengan daya 10 kW pada frekuensi 100 MHz. dengan mengasumsikan stasiun radio berlaku seperti sumber titik, pada jarak 1 km dari antena, tentukan lah rapat energi rata-rata.', NULL, '2,00 x 10^(-2)  J/m^3', '2,6 x 10^(-2) J/m^3', '1,65 x 10^(-2) J/m^3', '2,65 x 10^(-2) J/m^3', '2,05 x 10^(-2) J/m^3', 'D', 'A', 10, 'tidak', '2019-11-30 03:33:31', '2019-11-30 03:33:31'),
(81, 1, NULL, '59727-2019-11-30-03-35-18.JPG', '2,4 x 10^(-3) N ke atas dan 6 x 10^(-3) N ke atas.', '6,0 x 10^(-3) N ke bawah dan 2,4 x 10^(-3) N ke atas.', '2,4 x 10^(-3) N ke bawah dan 2,6 x 10^(-3) N ke bawah.', '6,0 x 10^(-3) N ke bawah dan 6,4 x 10^(-3) N ke bawah.', '8,4 x 10^(-3) N ke atas dan 3,6 x 10^(-3) N ke atas.', 'E', 'A', 10, 'tidak', '2019-11-30 03:35:18', '2019-11-30 03:35:18'),
(82, 1, 'Terdapat dua lensa plan konveks sejenis. Bila sebuah benda diletakkan 20cm di kiri salah satu lensa plan konveks tersebut, maka terbentuk bayangan 40 cm di kanan lensa plan tersebut (lihat gambar). Kemudian kedua lensa plan konveks disusun bersentuhan sehingga membentuk sebuah lensa bikonveks.\r\n Jika benda berada 20cm di kiri lensa bikonveks tersebut letak bayangan  yang terbentuk adalah …', '28540-2019-11-30-03-36-41.JPG', '6,7 cm di kanan lensa', '10 cm di kanan lensa', '20 cm di kanan lensa', '80 cm di kanan lensa', '80 cm di kiri lensa', 'B', 'A', 10, 'tidak', '2019-11-30 03:36:41', '2019-11-30 03:36:41'),
(83, 1, 'Empat bola lamput identic A, B, C, dan D disusun dalam rangkaian seperti ditunjukkan oleh gambar di bawah.\r\nBila lampu D diputus, yang terjadi dengan lampu yang lain adalah', '75228-2019-11-30-03-39-01.JPG', 'Semua lampu meredup', 'B mati, A dan C meredup', 'B mati, A dan C makin terang', 'B mati, C meredup, dan A makin terang', 'B mati, A meredup, dan C makin terang', 'E', 'A', 10, 'tidak', '2019-11-30 03:39:01', '2019-11-30 03:39:01'),
(84, 1, NULL, '63021-2019-11-30-03-43-27.JPG', '3,33 M', '2,67 M', '1,33 M', '0,67 M', '0,33 M', 'E', 'A', 11, 'tidak', '2019-11-30 03:43:27', '2019-11-30 03:43:27'),
(85, 1, 'Elektrolisis larutan ZnSO4 (Ar=65) menghasilkan 16,25 g logam Zn. Bila arus yang sama digunakan untuk mengelektrolisis larutan NiSO4 (Ar= 59), maka massa logam Ni yang diperoleh adalah …', NULL, '4,51 g', '14,75 g', '17,9 g', '23,03 g', '32,5 g', 'B', 'A', 11, 'tidak', '2019-11-30 15:26:52', '2019-11-30 03:45:09'),
(86, 1, 'Asam amino merupakan molekul yans bersifat amfoter.\r\n\r\nSEBAB\r\n\r\nAsam amino mempunyai minimal satu gugus karboksil dan satu gugus amina.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 11, 'tidak', '2019-11-30 15:25:39', '2019-11-30 03:45:45'),
(87, 1, NULL, '55852-2019-11-30-03-46-54.JPG', NULL, NULL, NULL, NULL, NULL, 'A', 'C', 11, 'tidak', '2019-11-30 03:46:54', '2019-11-30 03:46:54'),
(88, 1, NULL, '14524-2019-11-30-03-48-05.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'C', 11, 'tidak', '2019-11-30 03:48:05', '2019-11-30 03:48:05'),
(89, 1, 'Atom X pada periode 3 tabel periodik unsur diketahui memiliki energi ionisasi pertama hingga keenam berturut-turut adalah 786, 1580, 3230, 4360, 16000, 20000 kJ/mol. Tuliskan bilangan kuantum n, l, m,yang mungkin untuk electron pada subkulit terluar atom X tersebut.', NULL, 'N = 3, l = 1, m = 0, atau -1 atau +1', 'N = 2, l = 1, m = 0, atau -1 atau +1', 'N = 3, l = 2, m = 0, atau -1 atau +1', 'N = 1, l = 1, m = 0, atau -1 atau +1', 'N = 2, l = 2, m = 0, atau -1 atau +1', 'A', 'A', 11, 'tidak', '2019-11-30 03:49:14', '2019-11-30 03:49:14'),
(90, 1, NULL, '32318-2019-11-30-03-50-39.JPG', '2,200 kg', '2,209 kg', '2,000 kg', '1,800 kg', '2,222 kg', 'B', 'A', 11, 'tidak', '2019-11-30 03:50:39', '2019-11-30 03:50:39'),
(91, 1, NULL, '25214-2019-11-30-03-51-40.JPG', '5,02 x 10^2 J', '5,0 x 10^2 J', '4,02 x 10^2 J', '4,99 x 10^2 J', '5,32 x 10^2 J', 'A', 'A', 11, 'tidak', '2019-11-30 03:51:40', '2019-11-30 03:51:40'),
(93, 1, 'Urutan pembentukan ATP pada proses respirasi aerob yangbenar adalah …', NULL, 'Siklus Krebs – glikolisis – pembentukan asetil ko A – transport elektron', 'transport electron – glikolisis - pembentukan asetil ko A - Siklus Krebs', 'glikolisis - pembentukan asetil ko A - Siklus Krebs - transport elektron', 'glikolisis - Siklus Krebs - pembentukan asetil ko A - transport elektron', 'pembentukan asetil ko A - transport elektron - Siklus Krebs – glikolisis', 'C', 'A', 12, 'tidak', '2019-11-30 04:02:25', '2019-11-30 04:02:25'),
(94, 1, 'Jika DNA dipotong oleh enzim restriksi bagian yang terputus adalah ikatan …', NULL, 'Nitrogen', 'Peptide', 'Fosfat', 'Karbon', 'Hydrogen', 'C', 'A', 12, 'tidak', '2019-11-30 04:03:26', '2019-11-30 04:03:26'),
(95, 1, 'Peranan gen asing di bawah ini merupakan keberhasilan rekayasa genetika, kecuali …', NULL, 'Yang dimasukkan melalui plasmid terekspresi pada tumbuhan atau hewan transgenic', 'Yang dimasukkan melalui plasmid akan berintegrasi dengan genom tanaman target', 'Berkombinasi dengan DNA genom yang terdapat di dalam inti', 'Turut direplikasi pada tanaman atau hewan transgenic', 'Mempertahankan ekspresi gen target', 'D', 'A', 12, 'tidak', '2019-11-30 04:04:36', '2019-11-30 04:04:36'),
(96, 1, 'Tahapan telofase, metafase, anafase, dan profase ditunjukkan oleh angka …', '57176-2019-11-30-04-07-20.jpg', '1-3-2-4', '1-3-4-2', '1-4-3-2', '4-1-2-3', '4-1-3-2', 'B', 'A', 12, 'tidak', '2019-11-30 04:07:20', '2019-11-30 04:07:20'),
(97, 1, 'pabila korteks adrenal memproduksi kortisol dalam jumlah besar, kondisi yang terjadi adalah …', NULL, 'Produksi CRH menurun', 'Produksi ACTH meningkat', 'Aktivitas hipotalamus akan meningkat', 'Aktivitas kelenjar pituitary anterior akan meningkat', 'Sensivitas hipotalamus terhadap kortisol menurun', 'A', 'A', 12, 'tidak', '2019-11-30 04:08:22', '2019-11-30 04:08:22'),
(98, 1, 'Hasil studi komparatif perkembangan embrio berbagai jenis vertebrata menghasilkan simpulan sebagai berikut, kecuali …', NULL, 'Ada  hubungan kekerabatan', 'Persamaan proses perkembangan zigot', 'Tidak ada perkembangbiakan secara aseksual', 'Memiliki persamaan mekanisme fertilisasi internal', 'Persamaan perkembangan pada fase organogenesis', 'D', 'A', 12, 'tidak', '2019-11-30 04:09:38', '2019-11-30 04:09:38'),
(99, 1, 'Dalam glikolisis dihasilkan 4 molekul ATP untuk setiap satu molekul glukosa. DUa molekul ATP di antaranya digunakan dalma reaksi yang bersifat …', NULL, 'Siklik', 'Hidrolitik', 'Termolitik', 'Eksergonik', 'Endergonik', 'E', 'A', 12, 'tidak', '2019-11-30 04:10:18', '2019-11-30 04:10:18'),
(100, 1, 'Tumbuhan paku dapat digunakan sebagai pupuk organik karena dapat bersimbiosis dengan alga untuk mengikat N2  dari udara adalah …', NULL, 'Marsilea crenata', 'Azolla pinnata', 'Salvinia molesta', 'Equisetum debile', 'Asplenium nidus', 'B', 'A', 12, 'tidak', '2019-11-30 04:11:07', '2019-11-30 04:11:07'),
(101, 1, 'Dua Organisme disbeut satu jenis (spesies) apabila …', NULL, 'Memiliki morfologi sama dan dapat saling kawin', 'Dapat saling kawin dan menghasilkan keturunan fertile', 'Dapat saling kawin dan menghasilkan keturunan steril', 'Dapat saling kawin dan hidup pada habitat yang berbeda', 'Memiliki morfologi sama dan hidup pada habitat yang sama', 'B', 'A', 12, 'tidak', '2019-11-30 04:11:52', '2019-11-30 04:11:52'),
(102, 1, 'Berdasarkan morfologinya, ayam jantan dan ayam betina dibedakan berdasarkan ukuran, warna, ornamentasi, dan perilaku. Perbedaan karakter seksual sekunder tersebut dikenal sebagai …', NULL, 'Heterozigot', 'Morfogenesis', 'Sex-linked', 'Dimofisme', 'E.	Variasi intraspesies', 'D', 'A', 12, 'tidak', '2019-11-30 04:12:40', '2019-11-30 04:12:40'),
(103, 1, 'Monyet kecil surili (Presbytis comata) adalah hewan yang dilindungi di Taman Nasional …', NULL, 'Lore Lindu di Sulawesi', 'Ujung Kulon di Banten', 'Baluran di Situbondo', 'Gunung Leuser di Aceh', 'Meru Betiri di Banyuwangi', 'B', 'A', 12, 'tidak', '2019-11-30 04:13:30', '2019-11-30 04:13:30'),
(104, 1, 'Di dalam fotosintesis berlangsung hal-hal berikut, kecuali …', NULL, 'Daur Calvin dalam reaksi terang', 'Pengikatan CO2  dalam reaksi gelap', 'Pemecahan air yang melepaskan electron', 'Pemanfaatan ATP dan NADPH dalam reaksi gelap', 'Perubahan senyawa batom C tiga menjadi glukosa.', 'A', 'A', 12, 'tidak', '2019-11-30 04:14:16', '2019-11-30 04:14:16'),
(105, 1, 'Euglena merupakan protozoa yang dapat dijadikan bioindicator perairan yang tercemar limbah organic\r\n \r\nSEBAB\r\n \r\nEuglena bersifat hererotrod yang hidupnya bergantung pada bahan organic dari lingkungan perairan.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'B', 12, 'tidak', '2019-11-30 04:14:54', '2019-11-30 04:14:54'),
(106, 1, 'Bacillus thuringiensis sebagai biopestisida menghasilkan …\r\n(1)	Toksin yang merusak sistem perencanaan ulat\r\n(2)	Toksin yang merusak permukaan kulit\r\n(3)	Kristal toksin yang berupa protein\r\n(4)	Eksotoksin', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 12, 'tidak', '2019-11-30 04:15:28', '2019-11-30 04:15:28'),
(107, 1, 'Raisa seorang editor redaksi bulletin harian. Jika Raisa tidak telah maka dia akan mendapatkan reward. Semua editor redaksi bulletin harian tidak pernah telat.', NULL, 'Raisa merupakan editor redaksi bulletin yang cantik.', 'Raisa akan mendapatkan reward.', 'Semua editor redaksi bulletin akan menadapatkan reward.', 'Walaupun tidak telat namun Raisa belum mendapatkan reward.', 'Raisa termasuk editor bulletin yang rajin.', 'B', 'A', 4, 'tidak', '2019-11-30 04:28:29', '2019-11-30 04:28:29'),
(108, 1, 'M dapat disimpulkan jika dan hanya jika N telah disimpulkan. O dapat disimpukan jika dan hanya jika N telah disimpulkan. Maka, jika M telah disimpulkan berarti …', NULL, 'N dan O belum disimpulkan.', 'N telah disimpukan dan O dapat disimpulkan.', 'N telah disimpukan dan O dapat disimpulkan.', 'O dapat disimpukan dan N belum tentu telah disimpulkan.', NULL, 'C', 'A', 4, 'tidak', '2019-11-30 04:29:22', '2019-11-30 04:29:22'),
(109, 1, 'Saat hujan semua pengendara sepeda motor berteduh jika tidak mengenakan jas hujan.', NULL, 'Alwi tidak mengenakan jas hujan.', 'Alwi tidak berteduh meskipun tidak mengenakan jas hujan', 'Alwi mengenakan jas hujan', 'Alwi mengendarai sepeda motor tanpa jas hujan', 'Alwi berteduh', 'C', 'A', 4, 'tidak', '2019-11-30 05:37:29', '2019-11-30 04:30:04'),
(110, 1, 'Semua komedi akan membuat tertawa penonton. Sebagian acara di televisi adalah komedi', NULL, 'Semua acara di televisi adalah komedi', 'Semua acara televisi membuat tertawa', 'Sebagian acara televisi membuat tertawa.', 'Sebagian yang membuat tertawa adalah komedi di televisi', 'Semua yang membuat tertawa adalah acara televisi.', 'C', 'A', 4, 'tidak', '2019-11-30 04:30:41', '2019-11-30 04:30:41'),
(111, 1, 'Semua penyakit bisa disembuhkan. Sebagian penyakit disebabkan virus.', NULL, 'Semua virus menyebabkan penyakit', 'Beberaa virus menyebabkan penyakit', 'Beberapa virus dapat disembuhkan', 'Beberapa yang dapat disembuhkan dikarenakan virus', 'Penyakit karena virus dapat disembuhkan', 'D', 'A', 4, 'tidak', '2019-11-30 04:32:25', '2019-11-30 04:32:25'),
(112, 1, '(1) Penegak hukum tidak menjalankan tugas secara sungguh-sungguh.\r\n(2) Banyak aturan hukum yang sudah tidak relevan dan perlu diperbaharui.\r\n\r\nMahakah di bawah ini yang menggambarkan hubungan antara pernyataan (1) dan (2) ?', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyataan (2) adalah penyebab dan pernyataan (1) adalah akibat.', 'Pernyataan (1)  dan (2) adalah penyebab namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang tidak saling berhubungan.', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama.', 'C', 'A', 4, 'tidak', '2019-11-30 04:33:22', '2019-11-30 04:33:22'),
(113, 1, '(1) Angka kematian ibu akibat kehamilan usia muda masih tergolong tinggi\r\n(2) Pemerintah mengkaji ulang peraturan perundangan yang mengatur batasan minimal usia menikah\r\nManakah pilihan di bawah ini yang menggambarkan hubungan pernyataan (1) dan (2)?', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyataan (2) adalah penyebab dan pernyataan (1) adalah akibat', 'Pernyataan (1) dan (2) adalah penyebab, namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang saling tidak berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama.', 'A', 'A', 4, 'tidak', '2019-11-30 04:34:32', '2019-11-30 04:34:32'),
(114, 1, '8.	(1) Banyak terjadi alih fungsi lahan hutan menjadi lahan pertanian dan perkebunan.\r\n(2) Kesadaran masyarakat untuk memelihara kebersihan lingkungan masih rendah.', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyatan (2) adalah penyebab dan pernyataan (1) adalah akibat', 'Pernyataan (1) dan (2) adalah penyebab, namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang saling tidak berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama', 'C', 'A', 4, 'tidak', '2019-11-30 04:35:11', '2019-11-30 04:35:11'),
(115, 1, 'BULAN : MATAHARI = SISWA : …', NULL, 'Teman', 'Kerabat', 'Ayah', 'Wali', 'Guru', 'E', 'A', 4, 'tidak', '2019-11-30 04:35:48', '2019-11-30 04:35:48'),
(116, 1, 'INSTING : NALURI = … : …', NULL, 'Relatif : hampir', 'Inspirasi : ilham', 'Instruksi : instruktur', 'Remang : gelap', 'Intervensi : sanggahan', 'B', 'A', 4, 'tidak', '2019-11-30 04:36:34', '2019-11-30 04:36:34'),
(117, 1, 'VOTING : PERBEDAAN : KEPUTUSAN = … : … : …', NULL, 'Perbaikan : got : lancar', 'Perselisihan : tawuran : ketenangan', 'Pertandingan : kompetisi : kemenangan', 'Perundingan : konflik : perdamaian', 'Tuntutan : kericuhan : pembatalan', 'D', 'A', 4, 'tidak', '2019-11-30 04:37:12', '2019-11-30 04:37:12'),
(118, 1, 'Santi, Santo, Ilham, dan Intan adalah lima orang anak yang belajar pada sekolah yang sama. Jarak rumah Santo ke sekolah lebih jauh daripada jarak rumah Ilham. Jarak rumah Badrun ke sekolah lebih dekat daripada jarak rumah Santi. Jarak rumah Intan paling dekat dengan sekolah. Tidak ada jarak rumah ke sekolah yang sama..\r\nJika jarak rumah Ilham ke sekolah lebih jauh daripada jarak rumah Santi, maka siapa yang berjarak paling jauh ke sekolah?', NULL, 'Intan', 'Santi', 'Ilham', 'Santo', 'Badrun', 'D', 'A', 4, 'tidak', '2019-11-30 04:37:52', '2019-11-30 04:37:52'),
(119, 1, 'Pernyataan dibawah ini yang paling benar adalah …', NULL, 'Pada hari Kamis hanya ada seni drama.', 'Seni music diberikan tiap hari Rabu dan Minggu.', 'Seni tari diberikan setiap hari Minggu.', 'Hanya olahraga yang diajarkan pada hari Kamis', 'Seni suara dna Bahasa diberikan pada hari Selasa.', 'D', 'A', 4, 'tidak', '2019-11-30 04:44:37', '2019-11-30 04:38:57'),
(120, 1, 'Pelatihan yang mungkin diadakan pada hari Sabtu adalah …', NULL, 'Seni drama', 'Seni lukis', 'Olahraga', 'Seni tari', 'Seni suara', 'D', 'A', 4, 'tidak', '2019-11-30 04:43:57', '2019-11-30 04:39:44'),
(121, 1, 'Urutan pelatihan utama yang diadakan dari hari Senin – Jumat adalah …', NULL, 'Seni tari, seni musik, seni lukis, seni drama', 'Seni tari, seni music, seni lukis, seni drama, olahraga.', 'Seni tari, seni suara, seni lukis, olahraga, seni drama.', 'Seni tari, seni drama, seni lukis, olahraga, seni drama.', 'Seni tari, seni llukis, olahraga, seni drama, seni musik.', 'A', 'A', 4, 'tidak', '2019-11-30 04:41:50', '2019-11-30 04:41:50'),
(122, 1, '2, …, 4, 6, …, 12, 16, 24, 32.', NULL, '3 dan 9', '3 dan 8', '4 dan 8', '5 dan 7', '5 dan 8', 'B', 'A', 4, 'tidak', '2019-11-30 04:45:36', '2019-11-30 04:45:36'),
(123, 1, '72, 70, 67, 62, 55, 44, …', NULL, '14', '23', '29', '31', '33', 'D', 'A', 4, 'tidak', '2019-11-30 04:46:04', '2019-11-30 04:46:04'),
(124, 1, '4, 9, 20, 43, 90 …', NULL, '180', '185', '191', '196', '202', 'B', 'A', 4, 'tidak', '2019-11-30 04:46:36', '2019-11-30 04:46:36'),
(125, 1, NULL, '88188-2019-11-30-04-47-39.JPG', '2ab', 'a + b', 'a - b', 'a^2 – b', 'a', 'E', 'A', 4, 'tidak', '2019-11-30 04:47:39', '2019-11-30 04:47:39'),
(126, 1, NULL, '73827-2019-11-30-04-48-46.JPG', '2017', '0', '1', '1/2017', '-1', 'C', 'A', 4, 'tidak', '2019-11-30 04:48:46', '2019-11-30 04:48:46'),
(127, 1, 'Jika 3p = q, maka 9p – 5q = …', NULL, '-2q', '-2p', '6p', '-6p', '-6', 'A', 'A', 4, 'tidak', '2019-11-30 04:49:34', '2019-11-30 04:49:34'),
(128, 1, NULL, '21609-2019-11-30-04-50-44.JPG', '41,8', '132', '418', '1320', '4180', 'C', 'A', 4, 'tidak', '2019-11-30 04:50:44', '2019-11-30 04:50:44'),
(129, 1, 'Bagaimana hubungan antara x^2 dan x^3?', NULL, 'x^2  > x^3', 'x^2= x^3', 'x^2  < x^3', 'Hubungan antara x^2  dan x^3 tidak dapat ditentukan', '1/3 x^2 = x^3', 'A', 'A', 4, 'tidak', '2019-11-30 04:51:39', '2019-11-30 04:51:39'),
(130, 1, NULL, '48941-2019-11-30-04-55-49.JPG', '29650-2019-11-30-04-55-49.JPG', '51268-2019-11-30-04-55-49.JPG', '79060-2019-11-30-04-55-49.JPG', '19559-2019-11-30-04-55-49.JPG', '17933-2019-11-30-04-55-49.JPG', 'C', 'A', 4, 'ya', '2019-11-30 04:55:49', '2019-11-30 04:55:49'),
(131, 1, 'Jika a + b = 1 dan a^2+ b^2 = 2. Nilai a^4+ b^4 = …', NULL, '35122-2019-11-30-04-58-12.JPG', '34224-2019-11-30-04-58-12.JPG', '43231-2019-11-30-04-58-12.JPG', '40667-2019-11-30-04-58-12.JPG', '47029-2019-11-30-04-58-12.JPG', 'C', 'A', 4, 'ya', '2019-11-30 04:58:12', '2019-11-30 04:58:12'),
(132, 1, 'Dalam sebuah ujian, sisea diharuskan mengerjakan 8 soal dari 12 soal yang disediakan. Jika soal nomor 2 dan 10 harus dikerjakan, banuak cara siswa memilih sisi sisa soal yang harius dikerjakan adalah …', NULL, '66', '200', '205', '310', '296', 'D', 'A', 4, 'tidak', '2019-11-30 04:58:40', '2019-11-30 04:58:40'),
(133, 1, 'Tiga kotak masing-masing berisi 30 buah kartu dengan lima jenis yang memiliki gambar berupa huruf P, Q, R, serta angka 3 dan 5.\r\nJika Unang secara acak mengambil satu kartu pada tiap kotak, maka ia memiliki kemungkinan besar memiliki kartu …', '14597-2019-11-30-04-59-56.JPG', 'Keempatnya kartu huruf', 'Keempatnya kartu huruf Keempatnya kartu angka', 'Lebih banyak terambil kartu huruf daripada angka', 'Kartu nomor 10 dan lainnya kartu huruf', 'Kartu hurud R dan lainnya kartu angka', 'C', 'A', 4, 'tidak', '2019-11-30 04:59:56', '2019-11-30 04:59:56'),
(134, 1, 'Pada penyuluhan yang diadakan KUA untuk calon pasangan yang akan menikah dihadiri 8 pasang calon pengantin. Setelah acara selesai, mereka kemudian saling berjabat tangan, namun setiap pasangan calon pengantin tidak berjabat tangan. Ada berapa banyak jabat tangan yang terjadi?', NULL, '136', '120', '112', '72', '36', 'C', 'A', 4, 'tidak', '2019-11-30 05:00:29', '2019-11-30 05:00:29'),
(135, 1, 'Jika 5 ekor kucing menangkap 5 ekor tikus dalam waktu 5 menit, maka berapa tikus yang dapat ditangkap oleh 20 kucing dalam waktu 1 jam?', NULL, '2000 ekor', '1200 ekor', '480 ekor', '240 ekor', '120 ekor', 'D', 'A', 4, 'tidak', '2019-11-30 05:01:11', '2019-11-30 05:01:11'),
(136, 1, 'Kabupaten manakah yang memiliki angka penurunan terbesar dalamtotal jumlah urbanisasi ke kota Yogyakarta antara periode 2011 – 2013 dan 2014-2016?', NULL, 'Wonogiri', 'Sleman', 'Magelang', 'Purworejo', 'Temanggung', 'D', 'A', 4, 'tidak', '2019-11-30 05:01:47', '2019-11-30 05:01:47'),
(137, 1, NULL, '65513-2019-11-30-05-02-27.JPG', NULL, NULL, NULL, NULL, NULL, 'A', 'A', 4, 'tidak', '2019-11-30 05:02:27', '2019-11-30 05:02:27'),
(138, 1, NULL, '40377-2019-11-30-05-02-51.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 05:02:51', '2019-11-30 05:02:51'),
(139, 1, NULL, '98719-2019-11-30-05-03-35.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 05:03:35', '2019-11-30 05:03:35'),
(140, 1, NULL, '22900-2019-11-30-05-03-58.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 05:03:58', '2019-11-30 05:03:58'),
(141, 1, NULL, '52991-2019-11-30-05-04-59.JPG', NULL, NULL, NULL, NULL, NULL, 'D', 'A', 4, 'tidak', '2019-11-30 05:04:59', '2019-11-30 05:04:59'),
(142, 1, NULL, '60243-2019-11-30-05-05-27.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 05:05:27', '2019-11-30 05:05:27'),
(144, 1, NULL, '75907-2019-11-30-05-06-23.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 05:06:23', '2019-11-30 05:06:23'),
(145, 1, NULL, '25462-2019-11-30-05-06-52.JPG', NULL, NULL, NULL, NULL, NULL, 'A', 'A', 4, 'tidak', '2019-11-30 05:06:52', '2019-11-30 05:06:52'),
(146, 1, NULL, '85739-2019-11-30-05-07-29.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 05:07:29', '2019-11-30 05:07:29'),
(147, 1, NULL, '26750-2019-11-30-05-08-00.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 05:08:00', '2019-11-30 05:08:00'),
(148, 1, NULL, '61972-2019-11-30-05-08-39.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 05:08:39', '2019-11-30 05:08:39'),
(149, 1, NULL, '72352-2019-11-30-05-09-02.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 05:09:02', '2019-11-30 05:09:02'),
(150, 1, NULL, '12180-2019-11-30-05-09-29.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 05:09:29', '2019-11-30 05:09:29'),
(151, 1, NULL, '78644-2019-11-30-05-09-58.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 05:09:58', '2019-11-30 05:09:58'),
(152, 1, 'Dengan mengudap makanan ringan, perut akan merasa hangat. Apabila kalua camilan itu dimakan pada waktu cuaca mendung. Ibu rumah tangga bisa menyediakan camilan yang menyehatkan setiap hari. Untuk ibu yang hobinya masa, hal itu bukan masalah. Akan tetapi, apa jadinya kalua ibu itu seorang wanita karier yang sibuk dengan urusan diluar rumah? Kalau sudah begini, siapkan saja biskuit siap saji yang menyehatkan.\r\n\r\nPokok yang dibicarakan dalam teks di atas adalah …', NULL, 'Makanan camilan yang harus tesedia di setiap rumah tangga.', 'Fungsi camilan bagi setiap orang.', 'Penyediaan camilan yang menyebabkan alternative para ibu.', 'Penyediaan camilan dalam keluarga oleh seorang ibu.', 'Biskuit sebagai satu-taunya camilan yang menyehatkan.', 'C', 'A', 2, 'tidak', '2019-11-30 05:10:53', '2019-11-30 05:10:53'),
(153, 1, NULL, '27097-2019-11-30-05-12-23.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 05:12:23', '2019-11-30 05:12:23'),
(154, 1, 'Dalam  ilmu ekonomi, inflasi adalah suatu proses meningkatnya harga-harga secara umum dan terus-menerus berkaitan dengan mekanisme pasar. Istilah inflasi juga  berarti peningkatan persediaana uang yang menyebabkan kenaikan harga. Inflasi terjadi jika proses kenaikan harga berlangsung secara terus-menerus dan saling memengaruhi.\r\nAgar menjadi paragraph yang baik, kalimat penutup yang sesuai adalah …', NULL, 'Dengan  demikian, ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Akibatnyam untuk mengukur tingkat inflasi diperlukan dua cara, yaitu CPI dan GDP deflator', 'Jadi ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Dalam hal ini ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Oleh karena itu, ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'D', 'A', 2, 'tidak', '2019-11-30 05:13:29', '2019-11-30 05:13:29'),
(155, 1, '(1) Kemandirian KPUD ternyata tidak membawa kepastian, keterpecayaan publik, dan jaminan akan kelancaram proses pilkada. (2) Dalam proses tersebut, keandalan KPUD dihadapkan pada tiga masalah utama yang mengganggu mekanisme kerjanya. (3) Masalah pertama adalah konflik pada waktu pendaftaran calon, yakni KPU banyak diganggu oleh keributan yang terjadi di tubuh internal partai. (4) Masalah kedua adalah fanatisme pendukung partai politik yang kandidatnya tidak lulus verifikasi, yakni orang-orang yang gagal untuk memenangi pilkada, menyita pemikiran KPUD. (5) Masalah ketiaga aadlaah tidak professionalnya KPUD, berdampak pada proses pilkada setelah calon-calon tersebut dipilih. (6) Selain itu, dalam sepervisi tidak bisa memperoleh hasil yang optimal mengingat masalah internal KPU di pusat berkaitan dengan kasus korupsi. \r\n\r\n\r\nPenyataan berikut ini sesuai dengan isi bacaan di atas, kecuali …', NULL, 'Kepercayaan penuh yang diberikan kepada KPUD belum menjamin kelancaran proses pilkada.', 'Perseteruan internal partai sering mengganggu saat pendaftaran calon.', 'Olah dan sikap pendukung fanatic partai yang calonnya.', 'tidak lulus verifikasi dalam pilkada.', 'Kekurangprofesionalan KPUD yang berdampak pada proses pilkada.', 'D', 'A', 2, 'tidak', '2019-11-30 05:14:43', '2019-11-30 05:14:43'),
(156, 1, '(1) Kemandirian KPUD ternyata tidak membawa kepastian, keterpecayaan publik, dan jaminan akan kelancaram proses pilkada. (2) Dalam proses tersebut, keandalan KPUD dihadapkan pada tiga masalah utama yang mengganggu mekanisme kerjanya. (3) Masalah pertama adalah konflik pada waktu pendaftaran calon, yakni KPU banyak diganggu oleh keributan yang terjadi di tubuh internal partai. (4) Masalah kedua adalah fanatisme pendukung partai politik yang kandidatnya tidak lulus verifikasi, yakni orang-orang yang gagal untuk memenangi pilkada, menyita pemikiran KPUD. (5) Masalah ketiaga aadlaah tidak professionalnya KPUD, berdampak pada proses pilkada setelah calon-calon tersebut dipilih. (6) Selain itu, dalam sepervisi tidak bisa memperoleh hasil yang optimal mengingat masalah internal KPU di pusat berkaitan dengan kasus korupsi.\r\n\r\nIde pokok paragraph di atas adalah …', NULL, 'Ketidak pastian dalam pilkada.', 'Tidak adanya jaminan kemandirian KPUD.', 'Masalah-masalah yang dihadapi KPUD.', 'Ketidaklancaran pelaksanaan pilkada.', 'Penyebab ketidakmandirian KPUD.', 'C', 'A', 2, 'tidak', '2019-11-30 05:15:52', '2019-11-30 05:15:52'),
(157, 1, '(1) Kemandirian KPUD ternyata tidak membawa kepastian, keterpecayaan publik, dan jaminan akan kelancaram proses pilkada. (2) Dalam proses tersebut, keandalan KPUD dihadapkan pada tiga masalah utama yang mengganggu mekanisme kerjanya. (3) Masalah pertama adalah konflik pada waktu pendaftaran calon, yakni KPU banyak diganggu oleh keributan yang terjadi di tubuh internal partai. (4) Masalah kedua adalah fanatisme pendukung partai politik yang kandidatnya tidak lulus verifikasi, yakni orang-orang yang gagal untuk memenangi pilkada, menyita pemikiran KPUD. (5) Masalah ketiaga aadlaah tidak professionalnya KPUD, berdampak pada proses pilkada setelah calon-calon tersebut dipilih. (6) Selain itu, dalam sepervisi tidak bisa memperoleh hasil yang optimal mengingat masalah internal KPU di pusat berkaitan dengan kasus korupsi.\r\n\r\n\r\nDalam bacaan di atas, terdapat kalimat yang menggunakan tanda koma (,) secara tidak tepat, yakni …', NULL, 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'Kalimat 6', 'D', 'A', 2, 'tidak', '2019-11-30 05:17:04', '2019-11-30 05:17:04'),
(158, 1, 'Keanekaragaman hayati dan pemandangan … bawah laut di perairan Pulau Lemukutan, yang menjadi bagian dari Kawasan Konservasi Laut Daerah (KKLD) Bengkayang, dalam setengah tahun terakhir makin … wisatawan. KKLD Bengkayang berada di sekitar 35 kilometer sebelah barat Pulau Kalimantan di pesisir Pantai Bengkayang. Di situ terdapat … pulauvLemukutan, Randayan, Penata Besar, Penata Kecil, Baru, dan Kabung.\r\nUntuk mengisi titik-titik pada teks di atas, kata-kata yang tepat adalah …', NULL, 'Pesona, disenangi, kelompok.', 'Indah, dikenal, bentang.', 'Elok, diketahui, banyak.', 'Cantic, dikunjungi, deretan.', 'Alam, diminati, gugusan.', 'E', 'A', 2, 'tidak', '2019-11-30 05:17:55', '2019-11-30 05:17:55'),
(159, 1, '… Salah satu penyakit kulit adalah acne vulgaris. Tidak seorang pun di dunia ini yang tidak pernah menderita penyakit ini. Acne vulgaris adalah penyakit peradangan folikel sebasea  yang umumnya terjadi pada masa remaja dan dapat sembuh sendiri. Dalam masyarakat umum acne vulgaris biasa dikenal dengan istilah jerawat.\r\nKalimat manakah yang tepat untuk mengisi titik-titik diatas ?', NULL, 'Acne Vulgaris adalah penyakit kulit biasa.', 'Acne vulgaris pernah dialami semua manusia', 'Penyakit kulit banyak jenis dan macamnya.', 'Jerawat banyak jenis dan macamnya.', 'Penyakit yang diderita remaja bermacam-macam.', 'C', 'A', 2, 'tidak', '2019-11-30 05:18:46', '2019-11-30 05:18:46'),
(160, 1, 'Baru-baru ini sebuah Lembaga daripada survei pendidikan tinggi diseluruh dunia tidak berapa lama ini telah mengeluarkan daftar peringkat tentang perguruan tinggi yang berkualitas di seluruh dunia.\r\nPerbaikan terhadap kalimat di atas adalah …', NULL, 'Tidak  berapa lama ini sebuah Lembaga survei pendidikan  tinggi telah mengeluarkan daftar peringkat tentang perguruan tinggi yang berkualitas.', 'Baru-baru ini sebuah lembaga dari  survei Pendidikan tinggi telah mengeluarkan daftar peringkat perguruan tinggi berkualitas di seluruh dunia.', 'Tidak berapa lama ini sebuah le,baga daripada survei Pendidikan berkualitas di seluruh dunia.', 'Baru-baru ini sebuah Lembaga survei Pendidikan tinggi mengeluarkan daftar peringkat perguruan tinggi berkualitas di seluruh dunia.', 'Baru-baru ini sebuah Lembaga survei Pendidikan tinggi mengeluarkan daftar peringkat perguruan tinggi berkualitas di seluruh dunia.', 'D', 'A', 2, 'tidak', '2019-11-30 05:19:26', '2019-11-30 05:19:26'),
(161, 1, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas kata regulasi (kalimat 4) digunakan dalam arti …', NULL, 'Pengaturan', 'Peraturan', 'Aturan', 'Keteraturan', 'Teratur', 'A', 'A', 2, 'tidak', '2019-11-30 05:20:27', '2019-11-30 05:20:27'),
(162, 1, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas dijumpai pemakaian tanda koma (,) yang tidak tepat pada …', NULL, 'Kalimat 1', 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'B', 'A', 2, 'tidak', '2019-11-30 05:22:04', '2019-11-30 05:21:08'),
(163, 1, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas dapat ditambahkan kalimat Pada tutup tahun 2009, diprediksi target sebesar 6,5 juta wisman dapat terlampaui.\r\nKalimat tersebut tepat diletakkan setelah …', NULL, 'Kalimat 1', 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'D', 'A', 2, 'tidak', '2019-11-30 05:23:06', '2019-11-30 05:23:06'),
(164, 1, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\n\r\nDalam   bacaan di atas terdapat penulisan kata yang salah, yaitu …', NULL, 'mancanegara (kalimat 2)', 'survei (kalimat 3)', 'Daya saing  (kalimat 4)', 'Infrastruktur (kalimat 4)', NULL, 'D', 'A', 2, 'tidak', '2019-11-30 05:24:44', '2019-11-30 05:24:44'),
(165, 1, 'Pernyataan berikut yang sesuai dengan isi bacaan adalah …', '54269-2019-11-30-05-27-18.JPG', 'Semakin rendai posisi suatu tempat, semakin rendah pula suhu udaranya.', 'Semakin rendah posisi suatutempat, semakin sejuk udaranya.', 'Suhu udara di daerah pegunungan lebih panas daripada di daerah pantai.', 'Pada kedalaman 10 m, orang akan merasakan suhu udara yang panas.', NULL, 'D', 'A', 2, 'tidak', '2019-11-30 05:27:18', '2019-11-30 05:27:18'),
(166, 1, 'Pernyataan yang sesuai dengan maksud bacaan tersebut adalah Salah satu sumber energi yang agak permanen adalah geotermal, yaitu energi panas yang dihasilkan dari perut bumi. Sehingga (D) pada kedalaman 10 m, orang akan merasakan suhu udara yang panas.\r\n Ide pokok bacaan di atas adalah …', NULL, 'Energi geothermal', 'Energi panas perut bumi', 'Sumber panas bumi', 'Magma', 'Suhu udara', 'A', 'A', 2, 'tidak', '2019-11-30 05:28:30', '2019-11-30 05:28:30'),
(167, 1, 'Apa judul yang tepat untuk teks tersebut?', '27460-2019-11-30-05-31-25.JPG', 'Pengenalan kebiasaan membaca sejak dini', 'Balita dan kebiasaan mendengarkan cerita', 'Pembiasaan anak dalam mendengarkan cerita', 'Peningkatan kinerja otak melalui membaca', 'Membaca membuat otak balita terlatih', 'A', 'A', 2, 'tidak', '2019-11-30 05:31:25', '2019-11-30 05:31:25'),
(171, 1, 'Tentukan g\'(1) jika diketahui g(x)=x^2  f(x) dengan f(1) = f \' (1) = 3.', NULL, '9', '8', '10', '7', '6', 'A', 'A', 1, 'tidak', '2019-11-30 05:38:24', '2019-11-30 05:38:24'),
(172, 1, 'Misalkan f(x) = x | x |. Tentukan f\'(0) jika ada.', NULL, '5', '7', '0', '8', '1', 'C', 'A', 1, 'tidak', '2019-11-30 05:38:56', '2019-11-30 05:38:56'),
(173, 1, NULL, '53209-2019-11-30-05-41-29.JPG', '1/2', '0', '-1', '-1/2', '2', 'D', 'A', 1, 'tidak', '2019-11-30 05:41:29', '2019-11-30 05:41:29'),
(174, 1, NULL, '96885-2019-11-30-05-42-19.JPG', '0', '1', '2', '3', '4', 'B', 'A', 1, 'tidak', '2019-11-30 05:42:19', '2019-11-30 05:42:19'),
(175, 1, NULL, '99269-2019-11-30-05-42-59.JPG', '3/2', '1/2', '1', '0', '-1/2', 'A', 'A', 1, 'tidak', '2019-11-30 05:42:59', '2019-11-30 05:42:59'),
(176, 1, 'Jika g(x+1) = 2x – 1 dan f(g(x +1)) = 2x + 4, maka f(0) = …', NULL, '6', '5', '3', '-4', '-6', 'B', 'A', 1, 'tidak', '2019-11-30 05:44:41', '2019-11-30 05:44:41'),
(177, 1, 'Peserta SNMPTN tahun 2010 naik 10 % disbanding tahun lalu. Peserta perempuan naik 20 %, sedangkan peserta lai-laki naik 5%. Jika banyak peserta laki-laki tahun lalu 300 ribu orang, maka banyak peserta SNMPTN tahun 2010 adalah …', NULL, '530 ribu', '520 ribu', '510 ribu', '500 ribu', '495 ribu', 'E', 'A', 1, 'tidak', '2019-11-30 05:45:24', '2019-11-30 05:45:24'),
(178, 1, NULL, '52990-2019-11-30-05-46-10.JPG', '-14', '-12', '-10', '-8', '-6', 'B', 'A', 1, 'tidak', '2019-11-30 05:46:10', '2019-11-30 05:46:10'),
(179, 1, 'Jika huruf-huruf B, M, N, P, S, T, akan disusun menjadi kata-kata yang diurutkan secara alfabet, maka kata “SBMPTN” akan terletak pada urutan ke …', NULL, '480', '483', '484', '485', '488', 'C', 'A', 1, 'tidak', '2019-11-30 05:47:13', '2019-11-30 05:47:13'),
(180, 1, NULL, '69807-2019-11-30-05-49-26.JPG', '71498-2019-11-30-05-49-26.JPG', '24492-2019-11-30-05-49-26.JPG', '34993-2019-11-30-05-49-26.JPG', '16900-2019-11-30-05-49-26.JPG', '19191-2019-11-30-05-49-26.JPG', 'E', 'A', 1, 'ya', '2019-11-30 05:49:26', '2019-11-30 05:49:26'),
(181, 1, NULL, '81681-2019-11-30-05-50-58.JPG', '-1/4', '-1/8', '0', '2/8', '2/4', 'D', 'A', 1, 'tidak', '2019-11-30 05:50:58', '2019-11-30 05:50:58'),
(182, 1, 'Ibu mendapat potongan harga sebesar 25% dari total pembelian barang di suatu took. Took tersebut membebankan pajak sebesar 10% dari harga total pembelian setelah dipotong. Jika X adalah harga total pembelian, maka ibu harus membayar sebesar …', NULL, '(0,1 x 0,25) x', '(0,9 x 0,25)x', '(0,9 c 0,75)x', '(1,1 x 0,25)x', '(1,1 x 0,75)x', 'E', 'A', 1, 'tidak', '2019-11-30 05:51:55', '2019-11-30 05:51:55'),
(183, 1, 'Kode kupon untuk belanja pada suatu toko sealayan berbentuk bilangan yang disusun angka 1, 3, 5, 7. Jika kupon-kupon tersebut disusun berdasarkan kodenya mulai dari yang terkecil sampai dengan yang terbesar, maka kupon dengan kode 53137 berada pada urutan ke- …', NULL, '52', '40', '39', '24', '20', 'B', 'A', 1, 'tidak', '2019-11-30 05:52:44', '2019-11-30 05:52:44'),
(184, 1, 'Bentuk  |5 – 5x| < 5 serta (ekuivalen) dengan …', NULL, '-5 < |5x – 5|', '|x – 1| < 1', '5x – 5 < 5', '5x – 5 > -5', '0 < 5 – 5x < 5', 'B', 'A', 1, 'tidak', '2019-11-30 05:53:43', '2019-11-30 05:53:43'),
(185, 1, 'Persegi Panjang ABCD disusun dari 6 persegi. Dua persegi diketaui luasnya seperti dalam gambar. Perbandingan luas daerah persegi terkecil dengan terbesar di dalam persegi Panjang ABCD adalah …', '92197-2019-11-30-05-54-55.JPG', '1 : 7', '1 : 16', '1 : 45', '1: 49', '1 : 64', 'D', 'A', 1, 'tidak', '2019-11-30 05:54:55', '2019-11-30 05:54:55'),
(187, 1, 'What is the topic of text above?', '38838-2019-11-30-05-58-50.JPG', 'Ling-life span', 'Survival', 'Youth', 'Old age', 'Old age Health secrets', 'A', 'A', 3, 'tidak', '2019-11-30 05:58:50', '2019-11-30 05:58:50'),
(188, 1, 'According to the information in the passage, people may …', '19686-2019-11-30-06-57-46.JPG', 'Reach an old age if their parents do so', 'Not reach old age unless they live in areas where it is prevalent.', 'Reach old age if they are brought up separately from their siblings', 'Fail to reach and old age unless they are mentally healthy', 'Reach old age if they keep a healthy lifestyle', 'E', 'A', 3, 'tidak', '2019-11-30 06:57:46', '2019-11-30 06:57:46'),
(189, 1, 'Which of the following is true about the information in the text?', '47815-2019-11-30-06-58-37.JPG', 'Gebe quality contributes much more to life span', 'Okinawa people look younger at their actual age.', 'All alcoholic drinks decrease life expectation', 'All of Dr. Perl’s subjects are self-reliant', 'Superold people normally can exceed 100.', 'B', 'A', 3, 'tidak', '2019-11-30 06:58:37', '2019-11-30 06:58:37'),
(190, 1, 'How is the information of the last paragraph in the text organized?', '22719-2019-11-30-06-59-24.JPG', 'Each question is provided with an illustration', 'Scientific question are followed by studies', 'Scientific question are presented from general to specific', 'Each study is followed by research finding', 'Three related question are followed by one finding.', 'E', 'A', 3, 'tidak', '2019-11-30 06:59:24', '2019-11-30 06:59:24'),
(191, 1, 'Which of the following best expresses the main idea of the text?', '89197-2019-11-30-07-00-19.JPG', 'Several biological factors are at work affecting life span', 'Genes and lifestyles are essential for a long-life span', 'Elderly people cluster in particular part of the world', 'Biological factors influence mental and physical health', 'The population of the elderly people is increasing', 'B', 'A', 3, 'tidak', '2019-11-30 07:00:19', '2019-11-30 07:00:19'),
(193, 1, 'Paragraph 2 exemplifies the idea about classification that … Chemicals may be solid, liquid, and gaseous.', '29103-2019-11-30-07-03-02.JPG', 'Appearance is not a useful basis in  chemistry', 'The use of colors is better than that of appearance', 'Both colors and appearance should be considered', 'Colors should be included for identifying appearance', NULL, 'A', 'A', 3, 'tidak', '2019-11-30 07:03:02', '2019-11-30 07:03:02'),
(194, 1, 'The sentence “Chemist are no exeption” (Paragraph 2 line 1) could possibly be restated as …', '77086-2019-11-30-07-03-56.JPG', 'Chemical materials can alseo be put into classification', 'Classification of chemical materials is without exception', 'Chemist may also classify materials using certain criteria', 'When appearance is the basis, chemist are not involved', 'In material classification, chemicals should not be included', 'C', 'A', 3, 'tidak', '2019-11-30 07:03:56', '2019-11-30 07:03:56'),
(195, 1, 'The paragraph following the passage most likely deals with the classification of …', '84330-2019-11-30-07-04-42.JPG', 'Flora and fauna', 'Human sounds', 'Liquids and gases', 'Human behaviors', 'Words and phrases', 'C', 'A', 3, 'tidak', '2019-11-30 07:04:42', '2019-11-30 07:04:42'),
(196, 1, 'How does the author organize the ideas?', '29486-2019-11-30-07-05-23.JPG', 'Putting the main idea with examples', 'Presenting causes followed by effects', 'Interpreting different ways of classifying', 'Presenting the strengths of the main idea', 'Exposing supporting details onronologically', 'C', 'A', 3, 'tidak', '2019-11-30 07:05:23', '2019-11-30 07:05:23'),
(197, 1, 'The author’s main concern in the first paragraph of the passage is …', '27525-2019-11-30-07-16-50.JPG', 'There is no exact definition about education', 'Education is a fundamental individual’s right', 'Everyone has the right to get quality education', 'Education occurs is any place not just schools', 'Development can be gained through education', 'B', 'A', 3, 'tidak', '2019-11-30 07:16:50', '2019-11-30 07:16:50'),
(198, 1, 'If the author is right concerning the role of education, the following might be predicted to take place. EXCEPT …', '75849-2019-11-30-07-17-50.JPG', 'Longer life expectation', 'Lesser birth rate', 'Improved welfare', 'Better quality living', 'More jobs opportunities', 'B', 'A', 3, 'tidak', '2019-11-30 07:17:50', '2019-11-30 07:17:50');
INSERT INTO `tb_soal` (`id_soal`, `id_bidang`, `soal`, `gambar_soal`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `kunci`, `petunjuk`, `pelajaran`, `pengecekan`, `updated_at`, `created_at`) VALUES
(199, 1, 'The following sentences reflect the author’s opinions in the passage, EXCEPT …', '45733-2019-11-30-07-18-38.JPG', 'Everyone has the right to get education', 'Education cannot be easily defined', 'EFA provides quality education by 2015', 'Education is basic to human development', 'The EFA goals are faced with serious challenges', 'C', 'A', 3, 'tidak', '2019-11-30 07:18:38', '2019-11-30 07:18:38'),
(200, 1, 'The situation the author shows in the passage above is best described as follows …', '73749-2019-11-30-07-19-35.JPG', 'Quality education fundamentally ensures quality living in all sectors', 'Education is essentially everyone’s right yet it still has its challenges', 'There are problems in education in spite of it significant role', 'As long as nations compete, education cannot progress', 'Absence of an exact definition causes problem in education', 'B', 'A', 3, 'tidak', '2019-11-30 07:19:35', '2019-11-30 07:19:35'),
(201, 1, 'The part following the passage above would likely discuss …', '92544-2019-11-30-07-25-37.JPG', 'Lack of access to technology in developing countries to support educational practices', 'Needs of modern digital technology to back up the implementation of EFA in education', 'Role of technology in providing individuals with cheap and accessible quality education', 'Inability of developing nations to compete with developed countries in technology', 'Government’s roles and responsibilities in managing education for their children.', 'C', 'A', 3, 'tidak', '2019-11-30 07:25:37', '2019-11-30 07:25:37'),
(202, 2, '“Makmur” selama bulan September 2013 melakukan transaksi sebagai berikut:\r\nPencatatan ke jurnal pengeluaran kas pada gambar dibawah ini.\r\nPencatatan yang benar terjadi pada tanggal…', '26429-2019-11-30-11-29-30.PNG', '(3), (5), dan (7)', '(3), (5), dan (9)', '(5), (9), dan (13)', '(7), (9), dan (11)', '(7), (11), dan (13)', 'B', 'A', 6, 'tidak', '2019-11-30 11:39:47', '2019-11-30 11:29:30'),
(203, 2, 'Perusahaan membayar utang jangka Panjang yang sudah jatuh tempo sebesar Rp80.000.000,00 dengan tunai, sementara modal sendiri masih tetap sebesar Rp70.000.000,00 maka …', NULL, 'Aktiva berkurang sebesar Rp80.000.000,00', 'Aktiva berkurang sebesar Rp10.000.000,00', 'Pasiva berkurang sebesar Rp70.000.000,00', 'Pasiva berkurang sebesar Rp10.000.000,00', 'Aktiva lancar berkurang sebesar Rp10.000.000,00', 'A', 'A', 6, 'tidak', '2019-11-30 11:38:46', '2019-11-30 11:38:46'),
(204, 2, 'Ciri utama pasar persaingan  sempurna adalah …', NULL, 'Pembeli dan penjual relative sedikit, sekitar 5-10 unit usaha', 'Yang diperjualbelikan lebih terdeferensiasi', 'Pembeli dan penjual tidak bebas keluar-masuk pasar', 'Mobilitas barang terbatas', 'Harga ditentukan oleh permintaan dan penawaran', 'E', 'A', 6, 'tidak', '2019-11-30 11:40:28', '2019-11-30 11:40:28'),
(205, 2, 'Kegiatan operasional koperasi sehari-hari dilaksanakan oleh pengurus koperasi.\r\nSEBAB\r\nPengurus koperasi melaksanakan tugas dan tanggung jawab ke luar dan ke dalam, termasuk merumuskan kebijakan umum dalam usaha koperasi.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'B', 6, 'tidak', '2019-11-30 11:44:41', '2019-11-30 11:44:41'),
(206, 2, 'Pendapataan perkapita negara Indonesia saat ini sudah mencapai di atas US $1.000 sehingga Indonesia tidak lagi dikelompokkan sebagai negara miskin, tapi dikelompokkan sebagai negara berpenghasilan menengah.\r\n\r\nSEBAB\r\n\r\nPendapatan per kapita adalah saatu-satunya ukuran yang paling akurat untuk melihat standar kemakmuran dan tingkat kemajuan perekonomian di berbagai negara', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'A', 6, 'tidak', '2019-11-30 11:49:29', '2019-11-30 11:49:29'),
(209, 2, 'Ketika Pemerintah meningkatkan penerimaan pajak, maka pendapatan nasional akan turun sebesar pertambahan penerimaan pajak itu sendiri.\r\n\r\nSEBAB\r\n\r\nAngka pengganda pajak lebih kecil daripada angka pengganda pengeluaran pemerintah.', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'B', 6, 'tidak', '2019-11-30 11:54:44', '2019-11-30 11:54:44'),
(210, 2, 'Pengawasan dan peraturan terhadap operasional perbankan dilakukan oleh Bank Indonesia sebagai bank sentral\r\n\r\nSEBAB\r\n\r\nBank Indonesia mempunyai tugas membuat kebijakan moneter', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'B', 6, 'tidak', '2019-11-30 11:55:47', '2019-11-30 11:55:47'),
(211, 2, 'Fungsi konsumsi sebuah negara adalah S = -100 + 0,25Y. bila pendapatan nasional (Y) sebesar  Rp1.000 triliun tahun 2008, berdasarkan model persamaan tersebut dapat diketahui …\r\n(1)	Besarnya konsumsi C adalah Rp1.150 triliun\r\n(2)	Persamaan fungsi konsumsi adalah C = 100 + 0,75Y.\r\n(3)	Besarnya tabungan (S) adalah Rp150 triliun.\r\n(4)	Besarnya koefisien MPS adalah 0,25.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 6, 'tidak', '2019-11-30 11:57:13', '2019-11-30 11:57:13'),
(212, 2, 'Bila pemerinrah mengurangi subsidi harga penjualan BBM di dalam negeri, harga jual BBM akan naik. Bila kenaikan harga BBM sebesar 30% jumlah permintaan terhadap BBM akan turun sebesar 20%. Hal ini BBM tergolong barang …', NULL, 'Lux (mewah)', 'Bersifar elastis', 'Inferior', 'Bersifat in-elastis', 'Bersifat unitary-elastic', 'D', 'A', 6, 'tidak', '2019-11-30 11:57:41', '2019-11-30 11:57:41'),
(213, 2, 'Keseimbangan konsumen akan tercapat pada saat …', NULL, 'Kurva indiferensiasi berpotongan dengan garis anggaran', 'Kurva indiferensiasi berada di atas garis anggaran', 'Kurva indiferensiasi berada di bawah garis anggaran', 'Kurva indiferensiasi bersinggungan dengan garis anggaran', 'Kuva indiferensiasi berpotongan dengan sumbu horizontal', 'D', 'A', 6, 'tidak', '2019-11-30 11:59:06', '2019-11-30 11:59:06'),
(214, 2, 'Pada pasar oligopoly, harga cenderung kaku karena …', NULL, 'Perusahaan sebagai price taker', 'Perusahaan sebagai price maker', 'Ketika perusahaan merurunkan harga, perusahaan lain akan mengikuti', 'Biaya produksi tidak berpengaruh terhadap harga jual', 'Jumlah output tidak berpengaruh terhadap harga jual', 'C', 'A', 6, 'tidak', '2019-11-30 12:07:38', '2019-11-30 12:07:38'),
(215, 2, 'Peruasahaan pada pasar persaingan sempurna yang memaksimalkan laba dihadapkan pad kondisi ketika harga sama dengan …\r\n(1)	Penerimaan marginal\r\n(2)	Penerimaan rata-rata\r\n(3)	Biaya marginal\r\n(4)	Biaya rata-rata', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'C', 6, 'tidak', '2019-11-30 12:08:16', '2019-11-30 12:08:16'),
(216, 2, 'Kesetimbangan pasar yang baru ditandai oleh meningkatnya jumlah barang yang ditransaksikan dan tidak berubahnya harga barang.\r\nHal ini dapat digambarkan oleh …', NULL, 'Peningkatan permintaan dan penurunan pernawaran dalam proporsi yang sama', 'Penurunan permintaan dan peningkatan penawaran dalam proporsi yang sama', 'Penurunan permintaan dan penawaran', 'Penurunan permintaan', 'Peningkatan permintaan dan penawaran dalam proporsi yang sama', 'E', 'A', 6, 'tidak', '2019-11-30 12:09:36', '2019-11-30 12:09:36'),
(217, 2, 'Jenis biaya yang tidak perlu dikeluarkan oleh perusahaan ketika tidak berproduksi adalah …', NULL, 'Biaya tetap', 'Biaya total', 'Biaya total', 'Biaya  ariable', 'Biaya peluang', 'D', 'A', 6, 'tidak', '2019-11-30 12:10:14', '2019-11-30 12:10:14'),
(218, 2, 'Kurva biaya total (TC) menggambarkan hubungan antara lain …', NULL, 'Jumla input yang digunakan dan biaya total', 'Jumlah output yang diproduksi dan biaya total', 'Jumlah output yang diproduksi dan penerima total', 'Biaya total dan laba', 'Biaya total dan penerima total', 'B', 'A', 6, 'tidak', '2019-11-30 12:11:02', '2019-11-30 12:11:02'),
(221, 2, 'Setiap lapisan pada atmosfer bumi memiliki karakteristik yang berbeda-beda. Troposfer merupakan lapisan dengan kondisi udara yang tidak stabil. Pada lapisan ini banyak terjadi gerakan udara. Sementara itu, lapisan di atasnya yaitu stratosfer merupakan lapisan yang sangat stabil dengan gerakan udara yang sangat sedikit. Jika suatu saat nanti terjadi perubahan rastic pada kedua lapisan tersebut, di mana kondisi udara pada troposfer menjadi sangat stagnan dan kondisi udara pada stratosfer menjadi sangat dinamis, maka peristiwa yang dapat terjadi yaitu….', NULL, 'Hembusan rasti kencang semakin sering terjadi di permukaan bumi dan dapat menimbulkan berbagai bencana rasti di seluruh bagian permukaan bumi.', 'Aktivitas nelayan menjadi lebih mudah karena tiupan rasti darat dan rasti laut menjadi lebih kuat.', 'Pelubangan ozon berlangsung lebih cepat dan gas-gas beracun akan melayang-layang di troposfer.', 'Pesawat harus terbang di stratosfer untuk menghindari gangguan udara.', 'Hujan salju sering terjadi karena ketidakstabilan iklim.', 'C', 'A', 7, 'tidak', '2019-11-30 12:14:54', '2019-11-30 12:14:54'),
(222, 2, 'Penyebab terjadinya vegetasi savana di Nusa Tenggara Timur adalah ...', NULL, 'musim tidak beraturan.', 'suhu udara selalu tinggi. pertengahan tahun.', 'intensitas penyinaran tinggi.', 'curah hujan tahunan rendah.', 'kondisi tanah selalu kering.', 'D', 'A', 7, 'tidak', '2019-11-30 12:16:15', '2019-11-30 12:16:15'),
(223, 2, 'Faktor yang digunakan untuk menentukan angka kematian kasar (crude mortality rate) penduduk di suatu wilayah adalah ...', NULL, 'angka kern-atian akhir tahun dan jumlah penduduk awal tahun.', 'jurnlah penduduk pertengahan tahun dan angka kematian bayi.', 'angka kematian awal tahun dan jumlah penduduk akhir tahun.', 'jumlah penduduk pada akhir tahun dan angka kematian bayi.', 'angka kematian dan jumlah penduduk pertengahan tahun.', 'E', 'A', 7, 'tidak', '2019-11-30 12:16:58', '2019-11-30 12:16:58'),
(224, 2, 'Air laut di daerah hujan tropis pada umumnya berkadar garam rendah karena …', NULL, 'Perbedaan suhu laut dan darat ekstrim', 'Banyak sungai bermuara di laut', 'Penguapan sangat tinggi', 'Kelembapan udara rendah', 'Temperature udara tinggi', 'B', 'A', 7, 'tidak', '2019-11-30 12:17:50', '2019-11-30 12:17:50'),
(225, 2, 'Sifat fisik tanah yang menyebabkan tanah mudah terangkut oleh tenaga angin adalah …', NULL, 'Ukuran butir dan tekstur', 'Tekstur dan porositas', 'Porositas dan struktur', 'Struktur dan berat jenis', 'Berat jenis dan ukuran butir', 'A', 'A', 7, 'tidak', '2019-11-30 12:18:34', '2019-11-30 12:18:34'),
(226, 2, 'Proses penyebab terbentuknya formasi beting gisik (beach ridge) di pesisir adalah …', NULL, 'Pengikisan oleh arus balik gelombang', 'Pengendapan oleh tenaga angin', 'Pengendapan oleh gelombang', 'Pengikisan oleh arus sungai di muara', 'Pengendalian oleh arus gelombang sepanjang pantai', 'C', 'A', 7, 'tidak', '2019-11-30 12:19:38', '2019-11-30 12:19:38'),
(227, 2, 'Berikut ini yang mencirikan pola peruntukan ruang di wilayah kota adalah', NULL, 'Sistem jaringan jalan', 'Infrastruktur air bersih', 'Jalur evakuasi bencana', 'Pusat kegiatan jasa', 'Kawasan terbuka hijau', 'D', 'A', 7, 'tidak', '2019-11-30 12:20:29', '2019-11-30 12:20:29'),
(228, 2, 'Perkembangan kota ditentukan oleh jumlah penduduk desa-desa di sekitarnya.\r\n\r\nSEBAB\r\n\r\nPenduduk desa sangat menentukan arah dan kecepatan perkembangan suatu kota.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 7, 'tidak', '2019-11-30 12:22:07', '2019-11-30 12:22:07'),
(229, 2, 'Ekosistem padang lamun berada di perairan laut dangkal dan mempunyai fungsi menjaga kualitas air laut.\r\n\r\nSEBAB\r\n\r\nDi dalam ekosistem padang lamun banyak dijumpai binatang pencacah seperti kepiting dan kerang.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'B', 7, 'tidak', '2019-11-30 12:22:43', '2019-11-30 12:22:43'),
(230, 2, 'Tanah longsor termasuk salah satu bencana geomorfologis yang dpicu oleh pemanfaatan lahan di daerah pegunungan.\r\n\r\nSEBAB\r\n\r\nGaya penahan longsor dipengaruhi oleh kekuatan batuan dan kepadatan material tanah.', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'B', 7, 'tidak', '2019-11-30 12:23:37', '2019-11-30 12:23:37'),
(231, 2, 'Karakteristik wilayah yang menefrikan wilayah fungsional adalah ...\r\n(1) menunjukkan kondisi fisik tertentu.\r\n(2) merupakan wilayah yang dinamis.\r\n(3) merupakan kawasan homogen.\r\n(4) pada umumnya terdapat di pusat kota.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 7, 'tidak', '2019-11-30 12:23:47', '2019-11-30 12:23:47'),
(232, 2, 'Cara efisien untuk mengolah air di daerah karst yang banyak mengandung kalsium (Ca) menjadi air minum adalah …\r\n(1)	Direaksikan\r\n(2)	Disaring\r\n(3)	Disuling \r\n(4)	direbus', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'C', 7, 'tidak', '2019-11-30 12:24:37', '2019-11-30 12:24:37'),
(234, 2, 'Hal yang perlu diperhatikan dengan cermat pada saat memilih sistem proyek peta adalah …\r\n(1)	Bentuk permukaan bumi\r\n(2)	Letak wilayah di permukaan bumi\r\n(3)	Luas daerah yang dipetakan \r\n(4)	Jumlah dan jenis informasi/data', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 7, 'tidak', '2019-11-30 12:25:05', '2019-11-30 12:25:05'),
(236, 2, 'Kebijakan kependudukan yang utama di Indonesia dalam pembangunan era millennium saat ini adalah peningkatan …\r\n(1)	Lapangan kerja dan penyerapan tenaga kerja\r\n(2)	Pemerataan distribusi dan pendapatan penduduk\r\n(3)	Urbanisasi dan transmigrasi penduduk\r\n(4)	Pendidikan dan kesehatan penduduk', NULL, NULL, NULL, NULL, NULL, NULL, 'E', 'C', 7, 'tidak', '2019-11-30 12:27:40', '2019-11-30 12:27:40'),
(237, 2, 'Indonesia sudah lama menerapkan kebijakan desentralisasi kebijakan daerah, termasuk tata cara pengelolaan hutan dan lingkungan hidup. Sayangnya, kebijakan ini justru menimbulkan fenomena tumpang tindih izin pengelolaan lahan antara pemerintah pusat dan pemerintah daerah.\r\n\r\n\r\nMenggunakan analisis perubahan sosial, munculnya kebijakan desentralisasi dapat dilihat dari adanya....', NULL, 'perubahan struktural yang harus muncul dengan pertimbangan kesiapan sistem pemerintahan antara daerah dengan pusat', 'perubahan struktural yang harus muncul dengan pertimbangan kesiapan mental pemerintahan antara daerah dengan pusat', 'perubahan struktural yang harus muncul dengan pertimbangan kesiapan kekuatan material pemerintahan antara daerah dengan pusat', 'perubahan kultural yang terencana dengan pertimbangan kesiapan kekuatan seimbang antara pemerintahan antara daerah dengan pusat', 'perubahan kultural yang harus muncul dengan pertimbangan besarnya wewenang yang akan dilimpahkan dari pusat ke daerah', 'A', 'A', 8, 'tidak', '2019-11-30 12:28:36', '2019-11-30 12:28:36'),
(238, 2, 'Berikut ini adalah unsur-unsur lembaga sosial yang berfungsi untuk membedakan satu lembaga sosial dengan lembaga sosiallainnya, kecuali ...', NULL, 'kemampuan beradaptasi dengan lingkungan masyarakat.', 'simbol sosial yang memiliki makna tertentu.', 'tata tertib yang bertujuan untuk mengatur keperluan bersama.', 'ideologi yang menuntun sikap dan perilaku para anggotanya.', 'alat-alat kelengkapan dalam memenuhi kebutuhan anggotanya.', 'A', 'A', 8, 'tidak', '2019-11-30 12:29:31', '2019-11-30 12:29:31'),
(239, 2, 'Jumlah pendatang di Kota Jakarta yang tinggi tidak sesuai dengan lapangan kerja yang terserdia. Masyarakat pendatang dengan modal minim cenderung memilih \r\ntinggal di kawasan padat penduduk yang murah bahkan cenderung kumuh. Kota Jakarta Barat bahkan disinyalir sebagai daerah dengan jumlah penduduk paling padat dan kawasan slum area paling kumuh di Jakarta. Masyarakat yang tinggal di slum area bersinggungan langsung dengan sungai kumuh, masalah air bersih, dan banjir pada musim hujan.\r\n\r\n\r\nUntuk menyelesaikan masalah pendatang dan slum area di perkotaan, solusi yang diperlukan adalah....', NULL, 'memanfaatkan kebijakan struktural untuk membangun rumah susun murah bagi pendatang', 'memanfaatkan kebijakan kultural untuk membuka lapangan kerja sebesar-besarnya di perkotaan', 'memanfaatkan kebijakan struktural untuk merealisasikan pemerataan pembangunan antara desa dan kota', 'memanfaatkan kebijakan kultural untuk membuat masyarakat desa bisa bersaing di pasar kerja perkotaan', 'memanfaatkan kebijakan struktural untuk menghentikan paksa aktivitas urbanisasi', 'C', 'A', 8, 'tidak', '2019-11-30 12:32:35', '2019-11-30 12:32:35'),
(240, 2, 'Perubahan sosial yang disebabkan oleh faktor yang berasal dari dalam masyarakat disebut …', NULL, 'Contact change', 'Immanent change', 'Transitional change', 'Material change', 'Functional change', 'B', 'A', 8, 'tidak', '2019-11-30 12:33:37', '2019-11-30 12:33:37'),
(241, 2, 'Sifat hubungan “Patembayan” dapat ditentukan dalam masyarakat …', NULL, 'Perdesaan', 'Tradisional', 'Perkotaan', 'Terpencil', 'Miskin', 'C', 'A', 8, 'tidak', '2019-11-30 12:33:53', '2019-11-30 12:33:53'),
(242, 2, 'Sistem stratifikasi yang memungkinkan anggotanya untuk mengubah status yang dimilikinya disebut stratifikasi …', NULL, 'Achieved', 'Ascribed', 'Tertutup', 'Terbuka', 'Campuran', 'D', 'A', 8, 'tidak', '2019-11-30 12:34:32', '2019-11-30 12:34:32'),
(243, 2, 'Dampak positif program transmigrasi adalah membaurnya pendatang dan penduduk asli dan memperkuat …', NULL, 'Interaksi sosial', 'Koalisi', 'Amalgamasi', 'Asimilasi', 'Integrase sosial', 'E', 'A', 8, 'tidak', '2019-11-30 12:35:36', '2019-11-30 12:35:36'),
(244, 2, 'Perbedaan status individu dalam masyarakat berdasarkan usia disebut perbedaan …', NULL, 'Sistem merit', 'Senioritas', 'Gender', 'Kekerabatan', 'Pendidikan', 'B', 'A', 8, 'tidak', '2019-11-30 12:36:35', '2019-11-30 12:36:35'),
(245, 2, 'Sosialisasi anak dalam keluarga inti dilakukan dengan melibatkan ayah, ibu, dan saudara kandung yang berperan sebagai agen.\r\n\r\nSEBAB\r\n\r\nSosialisasi primer adalah sosialisasi yang pertama diterima oleh individ~ untuk menjadi anggota masyarakat.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'A', 8, 'tidak', '2019-11-30 12:37:24', '2019-11-30 12:37:24'),
(246, 2, 'Perilaku yang mengikuti prosedur yang ada disebut konformitas.\r\n\r\nSEBAB\r\n\r\nMasyarakat akan merasa aman dan nyaman dengan nilai dan norma yang berlaku dalam masyarakat.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 8, 'tidak', '2019-11-30 12:38:46', '2019-11-30 12:38:46'),
(247, 2, 'Pembahasan tentang mobilitas sosial pada dasarnya adalah pembiacaraan tentang struktur sosial.\r\n\r\nSEBAB\r\n\r\nMobilitas sosial terdisi atas mobilitas vertikal dan horizontal.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 8, 'tidak', '2019-11-30 12:39:15', '2019-11-30 12:39:15'),
(248, 2, 'Teori structural fungsional ajeg melihat perubahan sosial sebagai upaya mencapai keseimbangan baru.\r\n\r\nSEBAB\r\n\r\nTeori structural fungsional selau melihat masyarakat dalam kondisi harmonis.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 8, 'tidak', '2019-11-30 12:39:44', '2019-11-30 12:39:44'),
(249, 2, 'Sosialisasi formal dan informal yang bertujuan membentuk pertumbuhan pribadi anak sesuai dengan sistem nilai dan norma dalam masyarakat adalah ...\r\n(1)	demokratis.\r\n(2)	represif.\r\n(3)	otokratis.\r\n(4)	partisipatoris.', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 8, 'tidak', '2019-11-30 12:40:25', '2019-11-30 12:40:25'),
(250, 2, 'Unsur menandai ciri suatu kelompok sosial adalah dengan adanya persamaan …\r\n(1)	Lingkungan \r\n(2)	Tujuan\r\n(3)	Cara berfikir\r\n(4)	Kesadaran', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 8, 'tidak', '2019-11-30 12:40:54', '2019-11-30 12:40:54'),
(251, 2, 'Perjenjangan sosial dalam masyarakat yang menggunakan ukuran kekuasaan, privilege dan prestise dapat dikategorikan sebagai perjenjangan berdasarkan …\r\n(1)	Ekonomi\r\n(2)	Etnis\r\n(3)	Politik\r\n(4)	Kelas', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'C', 8, 'tidak', '2019-11-30 12:41:18', '2019-11-30 12:41:18'),
(252, 2, 'Pada masa penjajahan bangsa Eropa terdapat berbagai perlawanan yang dilakukan oleh bangsa Indonesia. Setiap daerah memiliki karakteristik yang berbeda-beda. Berdasarkan karakteristiknya perbedaan perlawanan rakyat Aceh dan perlawanan rakyat Maluku adalah….', NULL, 'Prinsip perlawanan jihad pada masyarakat Maluku lebih kuat dibandingkan Aceh', 'Perlawanan Aceh dipimpin oleh Kesultanan sementara perlawanan rakyat Maluku dalam bentuk suku-suku yang terorganisir', 'Perlawaman rakyat Aceh lebih terorganisir sementara perlawan rakyat Maluku tergantung pada tokoh tertentu', 'Semangat mental perlawanan rakyat Aceh yang tak mudah dikalahkan sementara rakyat Maluku meyuarakan sampai titik darah penghabisan', 'Aceh tidak mudah ditaklukan dengan politik devide et impera sementara rakyat Maluku menggunakan taktik perang gerilya', 'C', 'A', 9, 'tidak', '2019-11-30 12:43:46', '2019-11-30 12:43:46'),
(253, 2, 'Daerah simbol warna merah bulat pada peta di atas merupakan pusat dari salah satu Kerajaan Hindu-Buddha yang bercorak maritim. Pusat kerajaan tersebut terletak di tepi sungai. Berikut analisis fakta yang benar tentang kerajaan yang ditunjukan oleh simbol warna merah tersebut adalah....', '47609-2019-11-30-12-46-50.jpg', 'Kerajaan tersebut dipimpin oleh seorang raja yang cakap', 'sistem ekonomi yang diandalkan oleh kerajaan tersebut adalah agraris', 'pernah dilakukan Ekspedisi Pamalayu yang bertujuan untuk melepaskan pengaruh Sriwijaya atas Melayu sekaligus memperluas wilayah', 'masyarakat pada kerajaan tersebut mayoritas beragama Hindu dan sebagian telah mendapatkan pengaruh Islam', 'Wilayah kekuasaannya kerajaan tersebut hampir meliputi seluruh Nusantara', 'C', 'A', 9, 'tidak', '2019-11-30 12:46:50', '2019-11-30 12:46:50'),
(254, 2, 'Peninggalan kebudayaan Mesolithik di Indonesia adalah ...', NULL, 'Kapak lonjong, sistem pertanian, sistem pengairan, dan tenun.', 'Pebbe (kapak batu), kjokkenmodinger (sampah dapur), cap-cap tangan pada dinding gua di leang-leang, dan flakes', 'Kapak persegi, kapak lonjong, pebble, dan flakes', 'kapak lonjong, nekara, punden berundak, dan sarcopagus', 'pebble (kapak batu), flakes, anak panah dan batu, dan kapak persegi', 'B', 'A', 9, 'tidak', '2019-11-30 12:47:51', '2019-11-30 12:47:51'),
(255, 2, 'Penyebab utama keruntuhan Kerajaan Demak pada pertengahan abad ke-16 adalah ...', NULL, 'Perang saudara memperebutkan tahta Kerajaan Demak', 'Kerajaan Demak dikalahkan oleh Portugis di Malaka', 'Kerajaan Demak dihancurkan oleh pasukan dari Panarukan', 'Perang saudara antara Demak dan Majapahit', 'Tidak ada raja yang pandai dalam mengemudikan pemerintakan', 'C', 'A', 9, 'tidak', '2019-11-30 12:49:09', '2019-11-30 12:49:09'),
(256, 2, 'Dalam masyarakat tradisional Indonesia yang belum mengenal tulisan, kisah sejarah yang telah terjadi dua atau tiga generasi sebelumnya disampaikan melalui …', NULL, 'Babad', 'Kakawinan', 'Tradisi lisan', 'Mitos', 'Hikayat', 'C', 'A', 9, 'tidak', '2019-11-30 12:49:52', '2019-11-30 12:49:52'),
(257, 2, 'Pembawa kebudayaan perunggu ke Indonesia adalah suku bangsa...', NULL, 'Papua melanesoid', 'Melayu Austronesia', 'Melayu polinesia', 'Proto melayu', 'Deutro melayu', 'E', 'A', 9, 'tidak', '2019-11-30 12:51:26', '2019-11-30 12:51:26'),
(258, 2, 'Tujuan pembentukan Marshall Plan pasca-Perang Dunoa II adalah ...', NULL, 'Menata kembali tata ekonomi dunia setelah perang', 'Membantu pembangunan ekonomi Eropa Barat setelah perang', 'Memberi bantuan modal kepada negara-negara berkembang', 'Membendung perluasan pengaruh liberalism di kawasan Eropa', 'Mempertahankan dominasi Eropa di Asia Afrika', 'B', 'A', 9, 'tidak', '2019-11-30 12:52:19', '2019-11-30 12:52:19'),
(259, 2, 'Salah satu pendiri organisasi pergerakan nasional Indische Partij adalah Douwes Dekker.\r\n\r\nSEBAB\r\n\r\nSebagai kerutunan Belanda, Douwes Dekker ikut berjuang mencapai kemerdekaan bangsa Indonesia dan juga menulis buku kritik sosial \"Max Havelaar\"', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'B', 9, 'tidak', '2019-11-30 12:52:54', '2019-11-30 12:52:54'),
(260, 2, 'Sistem tanam paksa berhasil menciptakan keuntungan ekonomi yang sangat besar bagi pemerintah kolonial dan menyebabkan kemiskinan bagi masyarakat Indonesia\r\n\r\nSEBAB\r\n\r\nSejak tahun 1870 pemerintah kolonial melakukan perubahan ke sistem perekonomian yang liberal.', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'B', 7, 'tidak', '2019-11-30 12:53:44', '2019-11-30 12:53:44'),
(261, 2, 'Daerah simbol warna merah bulat pada peta di atas merupakan pusat dari salah satu Kerajaan Hindu-Buddha yang bercorak maritim. Pusat kerajaan tersebut terletak di tepi sungai. Berikut analisis fakta yang benar tentang kerajaan yang ditunjukan oleh simbol warna merah tersebut adalah....', '68057-2019-11-30-12-53-50.jpg', 'Kerajaan tersebut dipimpin oleh seorang raja yang cakap', 'sistem ekonomi yang diandalkan oleh kerajaan tersebut adalah agraris', 'pernah dilakukan Ekspedisi Pamalayu yang bertujuan untuk melepaskan pengaruh Sriwijaya atas Melayu sekaligus memperluas wilayah', 'masyarakat pada kerajaan tersebut mayoritas beragama Hindu dan sebagian telah mendapatkan pengaruh Islam', 'Wilayah kekuasaannya kerajaan tersebut hampir meliputi seluruh Nusantara', 'C', 'A', 9, 'tidak', '2019-11-30 12:53:50', '2019-11-30 12:53:50'),
(262, 2, 'Perbuatan korupsi, kolusi, dan nepotisme (KKN) di Iingkungan pejabat pemerintahan menjadi salah satu penyebab terjadinya reformasi di Indonesia.\r\n\r\nSEBAB\r\n\r\nPerbuatan KKN melanggar prinsip keadilan dan menghancurkan kepentingan sosial-eksnomi rakyat Indonesia.', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'B', 9, 'tidak', '2019-11-30 12:54:29', '2019-11-30 12:54:29'),
(263, 2, 'Pada era reformasi, TNI mendapat kewenangan dalam bidang pertanian.\r\n\r\nSEBAB\r\n\r\nReformasi mengakui supremasi sipil yang melarang TNI terlibat dalam politik praktis.', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'B', 9, 'tidak', '2019-11-30 12:55:05', '2019-11-30 12:55:05'),
(264, 2, 'Program European Economic Community (MEE) adalah ...\r\n(1)	Pada tahun 1954 menetapkan pasaran bersama untuk batu bara dan baja antara Jerman dan Perancis\r\n(2)	Pada tahun 1958 menetapkan perluasan anggota MEE\r\n(3)	Pada tahun 1957 menetapkan kerja sama regional dalam bidang ekonomi dan moneter yang meliputi negara-negara Perancis, Jerman Barat, dan Belgium-Netherland-Luxemburg (BENELUX)\r\n(4)	Pada tahun 1973 menetapkan kerja sama dalam bidang ekonomi yang mnecakup negara-negara Uni Soviet, Amerika Serikat, dan Inggris', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'C', 9, 'tidak', '2019-11-30 12:55:37', '2019-11-30 12:55:37'),
(265, 2, 'Bagaimana peran Amerika Serikat dalam dunia internasional setelah jatuhnya rezim Uni Soviet?\r\n(1)	Semakin dominan khususnya dalam bidang militer, politik, dan ekonomi\r\n(2)	Menjadi kekuaatan politik dan ekonomi utama yang membantu negara berkembang\r\n(3)	Sangat kuat dan strategis dalam membantu tatanan demokrasi secara damai\r\n(4)	Menjadi negara yang berpengaruh terbesar dalam bidang militer dan politik', NULL, NULL, NULL, NULL, NULL, NULL, 'E', 'C', 9, 'tidak', '2019-11-30 13:00:47', '2019-11-30 13:00:47'),
(266, 2, 'Pada tanggal 4 Juli 1776 kaum koloni di Amerika mengumumkan Declaration of Independence, yang harus diakui oleh Inggris pada Perjanjian Paris 1783. Latar belakang revolusi yang dipimpin oleh George Washington ini adalah ...\r\n(1)	Pemberlakuan berbagai sistem pajak oleh Inggris yang sangat memberatkan kaum kolonis di Amerika\r\n(2)	Keinginan kaum kolonis di Amerika untuk bebas dari segala bentuk tekanan dari penduduk asli\r\n(3)	Kaum kolonis di Amerika menuntut no taxation without representation\r\n(4)	Kaum kolonis di Amerika ingin menjadi bangsa besar yang paling berpengaruh dalam lingkup ekonomi dan politik dunia', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'C', 9, 'tidak', '2019-11-30 13:00:48', '2019-11-30 13:00:48'),
(267, 2, 'Penyebaran agama Islam yang dilakukan oleh wali songo mudah diterima oleh masyarakat Jawa pada abad ke-15 hingga abad ke-16 karena melalui …', NULL, 'Mubalig yang didatangkan dari Timur Tengah', 'Ajaran tasawuf', 'Ajaran ijtihad', 'Kesenian', 'Ceramah', 'C', 'A', 9, 'tidak', '2019-11-30 13:02:52', '2019-11-30 13:02:52'),
(268, 2, 'Raisa seorang editor redaksi bulletin harian. Jika Raisa tidak telah maka dia akan mendapatkan reward. Semua editor redaksi bulletin harian tidak pernah telat.', NULL, 'Raisa merupakan editor redaksi bulletin yang cantik.', 'Raisa akan mendapatkan reward.', 'Semua editor redaksi bulletin akan menadapatkan reward.', 'Walaupun tidak telat namun Raisa belum mendapatkan reward.', 'Raisa termasuk editor bulletin yang rajin.', 'B', 'A', 4, 'tidak', '2019-11-30 13:23:19', '2019-11-30 13:23:19'),
(269, 2, 'M dapat disimpulkan jika dan hanya jika N telah disimpulkan. O dapat disimpukan jika dan hanya jika N telah disimpulkan. Maka, jika M telah disimpulkan berarti …', NULL, 'N dan O belum disimpulkan.', 'N telah disimpukan dan O dapat disimpulkan.', 'N dapat disimpukan dan O belum tentu telah disimpukan.', 'O dapat disimpukan dan N belum tentu telah disimpulkan.', NULL, 'C', 'A', 4, 'tidak', '2019-11-30 13:24:20', '2019-11-30 13:24:20'),
(270, 2, 'Saat hujan semua pengendara sepeda motor berteduh jika tidak mengenakan jas hujan.', NULL, 'Alwi tidak mengenakan jas hujan.', 'Alwi tidak berteduh meskipun tidak mengenakan jas hujan', 'Alwi mengenakan jas hujan', 'Alwi mengendarai sepeda motor tanpa jas hujan', 'Alwi berteduh', 'C', 'A', 4, 'tidak', '2019-11-30 13:24:59', '2019-11-30 13:24:59'),
(271, 2, 'Semua komedi akan membuat tertawa penonton. Sebagian acara di televisi adalah komedi', NULL, 'Semua acara di televisi adalah komedi', 'Semua acara televisi membuat tertawa', 'Sebagian acara televisi membuat tertawa.', 'Sebagian yang membuat tertawa adalah komedi di televisi', 'Semua yang membuat tertawa adalah acara televisi.', 'C', 'A', 4, 'tidak', '2019-11-30 13:25:39', '2019-11-30 13:25:39'),
(272, 2, 'Semua penyakit bisa disembuhkan. Sebagian penyakit disebabkan virus.', NULL, 'Semua virus menyebabkan penyakit', 'Beberaa virus menyebabkan penyakit', 'Beberapa virus dapat disembuhkan', 'Beberapa yang dapat disembuhkan dikarenakan virus', 'Penyakit karena virus dapat disembuhkan', 'D', 'A', 4, 'tidak', '2019-11-30 13:26:23', '2019-11-30 13:26:23'),
(273, 2, 'Saat hujan semua pengendara sepeda motor berteduh jika tidak mengenakan jas hujan.', NULL, 'Alwi tidak mengenakan jas hujan.', 'Alwi tidak berteduh meskipun tidak mengenakan jas hujan', 'Alwi mengenakan jas hujan', 'Alwi mengendarai sepeda motor tanpa jas hujan', 'Alwi berteduh', 'C', 'A', 4, 'tidak', '2019-11-30 13:26:37', '2019-11-30 13:26:37'),
(274, 2, '(1) Penegak hukum tidak menjalankan tugas secara sungguh-sungguh.\r\n(2) Banyak aturan hukum yang sudah tidak relevan dan perlu diperbaharui.\r\n\r\nMahakah di bawah ini yang menggambarkan hubungan antara pernyataan (1) dan (2) ?', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyataan (2) adalah penyebab dan pernyataan (1) adalah akibat.', 'Pernyataan (1)  dan (2) adalah penyebab namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang tidak saling berhubungan.', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama.', 'C', 'A', 4, 'tidak', '2019-11-30 13:27:39', '2019-11-30 13:27:39'),
(275, 2, '(1) Angka kematian ibu akibat kehamilan usia muda masih tergolong tinggi\r\n(2) Pemerintah mengkaji ulang peraturan perundangan yang mengatur batasan minimal usia menikah\r\nManakah pilihan di bawah ini yang menggambarkan hubungan pernyataan (1) dan (2)?', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyataan (2) adalah penyebab dan pernyataan (1) adalah akibat', 'Pernyataan (1) dan (2) adalah penyebab, namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang saling tidak berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama.', 'A', 'A', 4, 'tidak', '2019-11-30 13:28:18', '2019-11-30 13:28:18'),
(276, 2, '(1) Banyak terjadi alih fungsi lahan hutan menjadi lahan pertanian dan perkebunan.\r\n(2) Kesadaran masyarakat untuk memelihara kebersihan lingkungan masih rendah.', NULL, 'Pernyataan (1) adalah penyebab dan pernyataan (2) adalah akibat', 'Pernyatan (2) adalah penyebab dan pernyataan (1) adalah akibat', 'Pernyataan (1) dan (2) adalah penyebab, namun tidak saling berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari dua penyebab yang saling tidak berhubungan', 'Pernyataan (1) dan (2) adalah akibat dari suatu penyebab yang sama', 'C', 'A', 4, 'tidak', '2019-11-30 13:29:15', '2019-11-30 13:29:15'),
(277, 2, 'BULAN : MATAHARI = SISWA : …', NULL, 'Teman', 'Kerabat', 'Ayah', 'Wali', 'Guru', 'E', 'A', 4, 'tidak', '2019-11-30 13:29:46', '2019-11-30 13:29:46'),
(278, 2, 'INSTING : NALURI = … : …', NULL, 'Relatif : hampir', 'Inspirasi : ilham', 'Instruksi : instruktur', 'Remang : gelap', 'Intervensi : sanggahan', 'B', 'A', 4, 'tidak', '2019-11-30 13:30:31', '2019-11-30 13:30:31'),
(279, 2, 'VOTING : PERBEDAAN : KEPUTUSAN = … : … : …', NULL, 'Perbaikan : got : lancar', 'Perselisihan : tawuran : ketenangan', 'Pertandingan : kompetisi : kemenangan', 'Perundingan : konflik : perdamaian', 'Tuntutan : kericuhan : pembatalan', 'D', 'A', 4, 'tidak', '2019-11-30 13:31:06', '2019-11-30 13:31:06'),
(280, 2, 'Lembaga pelatihan buka seitap hari dengan 6 pelatihan utama, yaitu seni suara, seni lukis, olahraga, seni tari, seni musik dan seni drama. Setiap hari hanya ada 1 pelatihan utama tetapi tiap 2 hari sekali ada tambahan pelatihan Bahasa. Awal minggu dimulai dengan hari Senin. Pada hari Rabu diberikan pelatihan seni lukis dan Bahasa.\r\n•	Olahraga ada di antara seni lukis dan seni drama.\r\n•	Seni lukis diberikan 2 hari setelah seni tari.\r\n•	Seni musik ditawarkan 2 kali seminggu, tetapi tidak boleh berurutan.\r\nPernyataan dibawah ini yang paling benar adalah …', NULL, 'Pada hari Kamis hanya ada seni drama.', 'Seni music diberikan tiap hari Rabu dan Minggu.', 'Seni tari diberikan setiap hari Minggu.', 'Hanya olahraga yang diajarkan pada hari Kamis', 'Seni suara dan Bahasa diberikan pada hari Selasa.', 'D', 'A', 4, 'tidak', '2019-11-30 13:33:21', '2019-11-30 13:33:21'),
(281, 2, 'Santi, Santo, Ilham, dan Intan adalah lima orang anak yang belajar pada sekolah yang sama. Jarak rumah Santo ke sekolah lebih jauh daripada jarak rumah Ilham. Jarak rumah Badrun ke sekolah lebih dekat daripada jarak rumah Santi. Jarak rumah Intan paling dekat dengan sekolah. Tidak ada jarak rumah ke sekolah yang sama..\r\nJika jarak rumah Ilham ke sekolah lebih jauh daripada jarak rumah Santi, maka siapa yang berjarak paling jauh ke sekolah?', NULL, 'Intan', 'Santi', 'Ilham', 'Santo', 'Badrun', 'D', 'A', 4, 'tidak', '2019-11-30 13:33:30', '2019-11-30 13:33:30'),
(282, 2, 'Lembaga pelatihan buka seitap hari dengan 6 pelatihan utama, yaitu seni suara, seni lukis, olahraga, seni tari, seni musik dan seni drama. Setiap hari hanya ada 1 pelatihan utama tetapi tiap 2 hari sekali ada tambahan pelatihan Bahasa. Awal minggu dimulai dengan hari Senin. Pada hari Rabu diberikan pelatihan seni lukis dan Bahasa.\r\n•	Olahraga ada di antara seni lukis dan seni drama.\r\n•	Seni lukis diberikan 2 hari setelah seni tari.\r\n•	Seni musik ditawarkan 2 kali seminggu, tetapi tidak boleh berurutan.\r\nPelatihan yang mungkin diadakan pada hari Sabtu adalah …', NULL, 'Seni drama', 'Seni lukis', 'Olahraga', 'Seni tari', 'Seni suara', 'E', 'A', 4, 'tidak', '2019-11-30 13:34:44', '2019-11-30 13:34:44'),
(283, 2, 'Lembaga pelatihan buka seitap hari dengan 6 pelatihan utama, yaitu seni suara, seni lukis, olahraga, seni tari, seni musik dan seni drama. Setiap hari hanya ada 1 pelatihan utama tetapi tiap 2 hari sekali ada tambahan pelatihan Bahasa. Awal minggu dimulai dengan hari Senin. Pada hari Rabu diberikan pelatihan seni lukis dan Bahasa.\r\n•	Olahraga ada di antara seni lukis dan seni drama.\r\n•	Seni lukis diberikan 2 hari setelah seni tari.\r\n•	Seni musik ditawarkan 2 kali seminggu, tetapi tidak boleh berurutan.\r\nUrutan pelatihan utama yang diadakan dari hari Senin – Jumat adalah …', NULL, 'Seni tari, seni musik, seni lukis, seni drama', 'Seni tari, seni music, seni lukis, seni drama, olahraga.', 'Seni tari, seni suara, seni lukis, olahraga, seni drama.', 'Seni tari, seni drama, seni lukis, olahraga, seni drama.', 'Seni tari, seni llukis, olahraga, seni drama, seni musik.', 'A', 'A', 4, 'tidak', '2019-11-30 13:35:34', '2019-11-30 13:35:34'),
(284, 2, '2, …, 4, 6, …, 12, 16, 24, 32.', NULL, '3 dan 9', '3 dan 8', '4 dan 8', '5 dan 7', '5 dan 8', 'B', 'A', 4, 'tidak', '2019-11-30 13:36:23', '2019-11-30 13:36:23'),
(285, 2, '72, 70, 67, 62, 55, 44, …', NULL, '14', '23', '29', '31', '33', 'D', 'A', 4, 'tidak', '2019-11-30 13:36:53', '2019-11-30 13:36:53'),
(286, 2, '4, 9, 20, 43, 90 …', NULL, '180', '185', '191', '196', '202', 'B', 'A', 4, 'tidak', '2019-11-30 13:37:23', '2019-11-30 13:37:23'),
(287, 2, NULL, '59203-2019-11-30-13-38-34.JPG', '2ab', 'a + b', 'a - b', 'a^2 – b', 'a', 'E', 'A', 4, 'tidak', '2019-11-30 13:38:34', '2019-11-30 13:38:34'),
(288, 2, NULL, '81491-2019-11-30-13-39-17.JPG', '2017', '0', '1', '1/2017', '-1', 'C', 'A', 4, 'tidak', '2019-11-30 13:39:17', '2019-11-30 13:39:17'),
(289, 2, 'Jika 3p = q, maka 9p – 5q = …', NULL, '-2q', '-2p', '6p', '-6p', '-6', 'A', 'A', 4, 'tidak', '2019-11-30 13:39:51', '2019-11-30 13:39:51'),
(290, 2, NULL, '86269-2019-11-30-13-40-46.JPG', '41,8', '132', '418', '1320', '4180', 'C', 'A', 4, 'tidak', '2019-11-30 13:40:46', '2019-11-30 13:40:46'),
(291, 2, 'Bagaimana hubungan antara x^2 dan x^3?', NULL, 'x^2  > x^3', 'x^2= x^3', 'x^2  < x^3', 'Hubungan antara x^2  dan x^3 tidak dapat ditentukan', '1/3 x^2 = x^3', 'A', 'A', 4, 'tidak', '2019-11-30 13:41:21', '2019-11-30 13:41:21'),
(292, 2, NULL, '64523-2019-11-30-13-42-18.JPG', '18950-2019-11-30-13-42-18.JPG', '96491-2019-11-30-13-42-18.JPG', '36985-2019-11-30-13-42-18.JPG', '50687-2019-11-30-13-42-18.JPG', '97278-2019-11-30-13-42-18.JPG', 'C', 'A', 4, 'ya', '2019-11-30 13:42:18', '2019-11-30 13:42:18'),
(293, 2, 'Jika a + b = 1 dan a^2+ b^2 = 2. Nilai a^4+ b^4 = …', NULL, '87910-2019-11-30-13-43-17.JPG', '85463-2019-11-30-13-43-17.JPG', '32777-2019-11-30-13-43-17.JPG', '86688-2019-11-30-13-43-17.JPG', '24850-2019-11-30-13-43-17.JPG', 'C', 'A', 4, 'ya', '2019-11-30 13:43:17', '2019-11-30 13:43:17'),
(294, 2, 'Dalam sebuah ujian, sisea diharuskan mengerjakan 8 soal dari 12 soal yang disediakan. Jika soal nomor 2 dan 10 harus dikerjakan, banuak cara siswa memilih sisi sisa soal yang harius dikerjakan adalah …', NULL, '66', '200', '205', '310', '496', 'D', 'A', 4, 'tidak', '2019-11-30 13:44:01', '2019-11-30 13:44:01'),
(295, 2, 'Tiga kotak masing-masing berisi 30 buah kartu dengan lima jenis yang memiliki gambar berupa huruf P, Q, R, serta angka 3 dan 5.\r\nJika Unang secara acak mengambil satu kartu pada tiap kotak, maka ia memiliki kemungkinan besar memiliki kartu …', '36500-2019-11-30-13-45-49.JPG', 'Keempatnya kartu huruf', 'Keempatnya kartu angka', 'Lebih banyak terambil kartu huruf daripada angka', 'Kartu nomor 10 dan lainnya kartu huruf', 'Kartu huruf R dan lainnya kartu angka', 'C', 'A', 4, 'tidak', '2019-11-30 13:45:49', '2019-11-30 13:45:49'),
(296, 2, 'Pada penyuluhan yang diadakan KUA untuk calon pasangan yang akan menikah dihadiri 8 pasang calon pengantin. Setelah acara selesai, mereka kemudian saling berjabat tangan, namun setiap pasangan calon pengantin tidak berjabat tangan. Ada berapa banyak jabat tangan yang terjadi?', NULL, '136', '120', '112', '72', '36', 'C', 'A', 4, 'tidak', '2019-11-30 13:46:04', '2019-11-30 13:46:04'),
(297, 2, 'Jika 5 ekor kucing menangkap 5 ekor tikus dalam waktu 5 menit, maka berapa tikus yang dapat ditangkap oleh 20 kucing dalam waktu 1 jam?', NULL, '2000 ekor', '1200 ekor', '480 ekor', '240 ekor', '120 ekor', 'D', 'A', 4, 'tidak', '2019-11-30 13:46:49', '2019-11-30 13:46:49'),
(298, 2, 'Kabupaten manakah yang memiliki angka penurunan terbesar dalamtotal jumlah urbanisasi ke kota Yogyakarta antara periode 2011 – 2013 dan 2014-2016?', '32457-2019-11-30-13-47-41.JPG', 'Wonogiri', 'Sleman', 'Magelang', 'Purworejo', 'Temanggung', 'D', 'A', 4, 'tidak', '2019-11-30 13:47:41', '2019-11-30 13:47:41'),
(299, 2, NULL, '38013-2019-11-30-13-48-15.JPG', NULL, NULL, NULL, NULL, NULL, 'A', 'A', 4, 'tidak', '2019-11-30 13:48:15', '2019-11-30 13:48:15'),
(300, 2, NULL, '69171-2019-11-30-13-48-42.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 13:48:42', '2019-11-30 13:48:42'),
(301, 2, NULL, '63419-2019-11-30-13-49-12.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 13:49:12', '2019-11-30 13:49:12'),
(302, 2, NULL, '47131-2019-11-30-13-49-37.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 13:49:37', '2019-11-30 13:49:37'),
(303, 2, NULL, '48624-2019-11-30-13-50-00.JPG', NULL, NULL, NULL, NULL, NULL, 'D', 'A', 4, 'tidak', '2019-11-30 13:50:00', '2019-11-30 13:50:00'),
(304, 2, NULL, '61067-2019-11-30-14-05-54.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 14:05:54', '2019-11-30 14:05:54'),
(305, 2, NULL, '89155-2019-11-30-14-06-05.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 14:06:05', '2019-11-30 14:06:05'),
(306, 2, NULL, '38380-2019-11-30-14-06-34.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 14:06:34', '2019-11-30 14:06:34'),
(307, 2, NULL, '40280-2019-11-30-14-07-08.JPG', NULL, NULL, NULL, NULL, NULL, 'A', 'A', 4, 'tidak', '2019-11-30 14:07:08', '2019-11-30 14:07:08'),
(308, 2, NULL, '92133-2019-11-30-14-07-39.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 14:07:39', '2019-11-30 14:07:39'),
(309, 2, NULL, '61599-2019-11-30-14-08-15.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 14:08:15', '2019-11-30 14:08:15'),
(310, 2, NULL, '70202-2019-11-30-14-09-00.JPG', NULL, NULL, NULL, NULL, NULL, 'C', 'A', 4, 'tidak', '2019-11-30 14:09:00', '2019-11-30 14:09:00'),
(311, 2, NULL, '96869-2019-11-30-14-09-45.JPG', NULL, NULL, NULL, NULL, NULL, 'B', 'A', 4, 'tidak', '2019-11-30 14:09:45', '2019-11-30 14:09:45'),
(312, 2, NULL, '15852-2019-11-30-14-10-40.JPG', NULL, NULL, NULL, NULL, NULL, 'E', 'A', 4, 'tidak', '2019-11-30 14:10:40', '2019-11-30 14:10:40'),
(314, 2, 'Dengan mengudap makanan ringan, perut akan merasa hangat. Apabila kalua camilan itu dimakan pada waktu cuaca mendung. Ibu rumah tangga bisa menyediakan camilan yang menyehatkan setiap hari. Untuk ibu yang hobinya masa, hal itu bukan masalah. Akan tetapi, apa jadinya kalua ibu itu seorang wanita karier yang sibuk dengan urusan diluar rumah? Kalau sudah begini, siapkan saja biskuit siap saji yang menyehatkan.\r\nPokok yang dibicarakan dalam teks di atas adalah …', NULL, 'Makanan camilan yang harus tesedia di setiap rumah tangga.', 'Fungsi camilan bagi setiap orang.', 'Penyediaan camilan yang menyebabkan alternative para ibu.', 'Penyediaan camilan dalam keluarga oleh seorang ibu.', 'Biskuit sebagai satu-taunya camilan yang menyehatkan.', 'C', 'A', 2, 'tidak', '2019-11-30 14:12:13', '2019-11-30 14:12:13'),
(315, 2, 'Dalam  ilmu ekonomi, inflasi adalah suatu proses meningkatnya harga-harga secara umum dan terus-menerus berkaitan dengan mekanisme pasar. Istilah inflasi juga  berarti peningkatan persediaana uang yang menyebabkan kenaikan harga. Inflasi terjadi jika proses kenaikan harga berlangsung secara terus-menerus dan saling memengaruhi.\r\nAgar menjadi paragraph yang baik, kalimat penutup yang sesuai adalah …', NULL, 'Dengan  demikian, ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Akibatnyam untuk mengukur tingkat inflasi diperlukan dua cara, yaitu CPI dan GDP deflator', 'Jadi ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Dalam hal ini ada du acara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'Oleh karena itu, ada dua cara untuk mengukur tingkat inflasi, yaitu CPI dan GDP deflator', 'D', 'A', 2, 'tidak', '2019-11-30 14:15:58', '2019-11-30 14:15:58'),
(316, 2, 'Penyataan berikut ini sesuai dengan isi bacaan di atas, kecuali …', '41895-2019-11-30-14-18-43.JPG', 'Kepercayaan penuh yang diberikan kepada KPUD belum menjamin kelancaran proses pilkada.', 'Perseteruan internal partai sering mengganggu saat pendaftaran calon.', 'Olah dan sikap pendukung fanatic partai yang calonnya.', 'tidak lulus verifikasi dalam pilkada.', 'Kekurangprofesionalan KPUD yang berdampak pada proses pilkada.', 'D', 'A', 2, 'tidak', '2019-11-30 14:18:43', '2019-11-30 14:18:43'),
(317, 2, NULL, '99184-2019-11-30-14-19-50.JPG', 'Ketidak pastian dalam pilkada.', 'Tidak adanya jaminan kemandirian KPUD.', 'Masalah-masalah yang dihadapi KPUD.', 'Ketidaklancaran pelaksanaan pilkada.', 'Penyebab ketidakmandirian KPUD.', 'C', 'A', 2, 'tidak', '2019-11-30 14:19:50', '2019-11-30 14:19:50'),
(318, 2, 'Dalam bacaan di atas, terdapat kalimat yang menggunakan tanda koma (,) secara tidak tepat, yakni …', '99690-2019-11-30-14-20-44.JPG', 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'Kalimat 6', 'D', 'A', 2, 'tidak', '2019-11-30 14:20:44', '2019-11-30 14:20:44'),
(319, 2, 'Keanekaragaman hayati dan pemandangan … bawah laut di perairan Pulau Lemukutan, yang menjadi bagian dari Kawasan Konservasi Laut Daerah (KKLD) Bengkayang, dalam setengah tahun terakhir makin … wisatawan. KKLD Bengkayang berada di sekitar 35 kilometer sebelah barat Pulau Kalimantan di pesisir Pantai Bengkayang. Di situ terdapat … pulauvLemukutan, Randayan, Penata Besar, Penata Kecil, Baru, dan Kabung.\r\nUntuk mengisi titik-titik pada teks di atas, kata-kata yang tepat adalah …', NULL, 'Pesona, disenangi, kelompok.', 'Indah, dikenal, bentang.', 'Elok, diketahui, banyak.', 'Cantic, dikunjungi, deretan.', 'Alam, diminati, gugusan.', 'E', 'A', 2, 'tidak', '2019-11-30 14:21:36', '2019-11-30 14:21:36'),
(320, 2, '… Salah satu penyakit kulit adalah acne vulgaris. Tidak seorang pun di dunia ini yang tidak pernah menderita penyakit ini. Acne vulgaris adalah penyakit peradangan folikel sebasea  yang umumnya terjadi pada masa remaja dan dapat sembuh sendiri. Dalam masyarakat umum acne vulgaris biasa dikenal dengan istilah jerawat.\r\nKalimat manakah yang tepat untuk mengisi titik-titik diatas ?', NULL, 'Acne Vulgaris adalah penyakit kulit biasa.', 'Acne vulgaris pernah dialami semua manusia', 'Penyakit kulit banyak jenis dan macamnya.', 'Jerawat banyak jenis dan macamnya.', 'Penyakit yang diderita remaja bermacam-macam.', 'C', 'A', 2, 'tidak', '2019-11-30 14:22:39', '2019-11-30 14:22:39'),
(321, 2, 'Baru-baru ini sebuah Lembaga daripada survei pendidikan tinggi diseluruh dunia tidak berapa lama ini telah mengeluarkan daftar peringkat tentang perguruan tinggi yang berkualitas di seluruh dunia.\r\nPerbaikan terhadap kalimat di atas adalah …', NULL, 'Tidak  berapa lama ini sebuah Lembaga survei pendidikan  tinggi telah mengeluarkan daftar peringkat tentang perguruan tinggi yang berkualitas.', 'Baru-baru ini sebuah lembaga dari  survei Pendidikan tinggi telah mengeluarkan daftar peringkat perguruan tinggi berkualitas di seluruh dunia.', 'Tidak berapa lama ini sebuah le,baga daripada survei Pendidikan berkualitas di seluruh dunia.', 'Baru-baru ini sebuah Lembaga survei Pendidikan tinggi mengeluarkan daftar peringkat perguruan tinggi berkualitas di seluruh dunia.', 'Baru-baru ini sebuah Lembaga survei Pendidikan tinggi telah mengeluarkan daftar peringkat tentang perguruan tinggi berkualitas di seluruh dunia.', 'D', 'A', 2, 'tidak', '2019-11-30 14:23:35', '2019-11-30 14:23:35'),
(322, 2, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas kata regulasi (kalimat 4) digunakan dalam arti …', NULL, 'Pengaturan', 'Peraturan', 'Aturan', 'Keteraturan', 'Teratur', 'A', 'A', 2, 'tidak', '2019-11-30 14:24:17', '2019-11-30 14:24:17'),
(323, 2, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas dijumpai pemakaian tanda koma (,) yang tidak tepat pada …', NULL, 'Kalimat 1', 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'B', 'A', 2, 'tidak', '2019-11-30 14:25:37', '2019-11-30 14:25:37');
INSERT INTO `tb_soal` (`id_soal`, `id_bidang`, `soal`, `gambar_soal`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `kunci`, `petunjuk`, `pelajaran`, `pengecekan`, `updated_at`, `created_at`) VALUES
(324, 2, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam bacaan di atas dapat ditambahkan kalimat Pada tutup tahun 2009, diprediksi target sebesar 6,5 juta wisman dapat terlampaui.\r\n\r\nKalimat tersebut tepat diletakkan setelah …', NULL, 'Kalimat 1', 'Kalimat 2', 'Kalimat 3', 'Kalimat 4', 'Kalimat 5', 'D', 'A', 2, 'tidak', '2019-11-30 14:26:55', '2019-11-30 14:26:55'),
(325, 2, '(1) Program Visit Indonesia Year akan tetap dilanjutkan hingga pada tahun 2010 karena dari tahun ke tahun dinilai mampu menggerakkan daerah-daerah untuk semakin bergairah membangun pariwisata wilayahnya. (2) Program ini dinilai telah sukses menjaring dan mendatangkan wisatawan mancanegara (wisman) untuk berkunjung  ke tanah air, sehingga mampu mencatat rekor jumlah kunjungan 6,4 juta pada tahun 2008 dengan jumlah devisa mencapai 7,5 juta dolar Amerika Serikat. (3) Sesuai dengan survei World Economir Forum 2009, Indonesia menempati posisi ke-81 dari 133 negara di dunia tentang daya saing pariwisata. (4) Indeks daya saing kepariwisataan itu dinilai dari tiga hal, yakni kerangka regulasi, infrastruktur dan bisnis, serta sumberdaya manusia, budaya, dan alam. (5) Rangking ini sangat jauh dibandingkan dengan negara tetangga, yaitu Singapura pada peringkat ke-10, Malaysia pada peringkat ke-32, Thailand pada peringkat ke-39, dan Brunei pada peringkat ke-69.\r\n\r\nDalam   bacaan di atas terdapat penulisan kata yang salah, yaitu …', NULL, 'mancanegara (kalimat 2)', 'survei (kalimat 3)', 'Daya saing  (kalimat 4)', 'Infrastruktur (kalimat 4)', NULL, 'D', 'A', 2, 'tidak', '2019-11-30 14:27:51', '2019-11-30 14:27:51'),
(326, 2, 'Pernyataan berikut yang sesuai dengan isi bacaan di atas adalah …', '35507-2019-11-30-14-29-13.JPG', 'Semakin rendai posisi suatu tempat, semakin rendah pula suhu udaranya.', 'Semakin rendah posisi suatutempat, semakin sejuk udaranya.', 'Suhu udara di daerah pegunungan lebih panas daripada di daerah pantai.', 'Pada kedalaman 10 m, orang akan merasakan suhu udara yang panas.', NULL, 'D', 'A', 2, 'tidak', '2019-11-30 14:29:13', '2019-11-30 14:29:13'),
(327, 2, 'Ide pokok bacaan adalah …', '80083-2019-11-30-14-30-38.JPG', 'Energi geothermal', 'Energi panas perut bumi', 'Sumber panas bumi', 'Magma', 'Suhu udara', 'A', 'A', 2, 'tidak', '2019-11-30 14:30:38', '2019-11-30 14:30:38'),
(328, 2, '(1)	Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengarkan cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkebangan jaringan otak yang lebih awal. (2) sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkenbangan yang kurang pada jaringan tersebut. (3) anak-anak balita dengan orang tua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orang tua yang cenderung pasig dalam membacakan buku. (4) menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak. (5) peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang medengarkan orang tua mereka membacakan buku melalui scanner otak yang disebut functuinal magnetic resonance imaging (FMRI). (6) orang tua menjawab pernyataan tentang berapa banyak mereka membackaan cerita untuk anak-anak serta seberapa sering melakukan komunikasi. (7) para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orang tua bercerita, sejumlah daerah di bagian kiri notak menjadi aktif. (8) ini adalah derah yang terlibat dalam memahami arti kata, konsep,dan memori. (9) wilayah otak ini juga menjadi aktif ketika anak-anak bercertia atau membaca. (10) pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibk pada anak-anak yang orangtuanya gemar membaca. (12) membacakan buku anak di masa depan dalam hal kebiasaan membaca.\r\n\r\npa judul yang tepat untuk teks tersebut?', NULL, 'Pengenalan kebiasaan membaca sejak dini', 'Balita dan kebiasaan mendengarkan cerita', 'Pembiasaan anak dalam mendengarkan cerita', 'Peningkatan kinerja otak melalui membaca', 'Membaca membuat otak balita terlatih', 'A', 'A', 2, 'tidak', '2019-11-30 14:31:18', '2019-11-30 14:31:18'),
(329, 2, 'Tentukan g\'(1) jika diketahui g(x)=x^2  f(x) dengan f(1) = f\'(1) = 3.', NULL, '9', '8', '10', '7', '6', 'A', 'A', 1, 'tidak', '2019-11-30 14:32:14', '2019-11-30 14:32:14'),
(330, 2, 'Misalkan f(x) = x | x |. Tentukan f\'(0) jika ada.', NULL, '5', '7', '0', '8', '1', 'C', 'A', 1, 'tidak', '2019-11-30 14:32:44', '2019-11-30 14:32:44'),
(331, 2, NULL, '42671-2019-11-30-14-33-42.JPG', '1/2', '0', '-1', '-1/2', '2', 'D', 'A', 1, 'tidak', '2019-11-30 14:33:42', '2019-11-30 14:33:42'),
(332, 2, NULL, '78574-2019-11-30-14-34-40.JPG', '0', '1', '2', '3', '4', 'B', 'A', 1, 'tidak', '2019-11-30 14:34:40', '2019-11-30 14:34:40'),
(333, 2, NULL, '15657-2019-11-30-14-35-02.JPG', '3/2', '1/2', '1', '0', '-1/2', 'A', 'A', 1, 'tidak', '2019-11-30 14:35:02', '2019-11-30 14:35:02'),
(334, 2, 'Jika g(x+1) = 2x – 1 dan f(g(x +1)) = 2x + 4, maka f(0) = …', NULL, '6', '5', '3', '-4', '-6', 'B', 'A', 1, 'tidak', '2019-11-30 14:35:44', '2019-11-30 14:35:44'),
(335, 2, 'Peserta SNMPTN tahun 2010 naik 10 % disbanding tahun lalu. Peserta perempuan naik 20 %, sedangkan peserta lai-laki naik 5%. Jika banyak peserta laki-laki tahun lalu 300 ribu orang, maka banyak peserta SNMPTN tahun 2010 adalah …', NULL, '530 ribu', '520 ribu', '510 ribu', '500 ribu', '495 ribu', 'E', 'A', 1, 'tidak', '2019-11-30 14:36:37', '2019-11-30 14:36:37'),
(336, 2, NULL, '89405-2019-11-30-14-36-59.JPG', '-14', '-12', '-10', '-8', '-6', 'B', 'A', 1, 'tidak', '2019-11-30 14:36:59', '2019-11-30 14:36:59'),
(337, 2, 'Jika huruf-huruf B, M, N, P, S, T, akan disusun menjadi kata-kata yang diurutkan secara alfabet, maka kata “SBMPTN” akan terletak pada urutan ke …', NULL, '480', '483', '484', '485', '488', 'C', 'A', 1, 'tidak', '2019-11-30 14:37:40', '2019-11-30 14:37:40'),
(338, 2, NULL, '96522-2019-11-30-14-38-47.JPG', '24321-2019-11-30-14-38-47.JPG', '91769-2019-11-30-14-38-47.JPG', '31078-2019-11-30-14-38-47.JPG', '15500-2019-11-30-14-38-47.JPG', '29805-2019-11-30-14-38-47.JPG', 'E', 'A', 1, 'ya', '2019-11-30 14:38:47', '2019-11-30 14:38:47'),
(339, 2, NULL, '73474-2019-11-30-14-39-37.JPG', '-1/4', '-1/8', '0', '1/8', '1/4', 'D', 'A', 1, 'tidak', '2019-11-30 14:39:37', '2019-11-30 14:39:37'),
(340, 2, 'Ibu mendapat potongan harga sebesar 25% dari total pembelian barang di suatu took. Took tersebut membebankan pajak sebesar 10% dari harga total pembelian setelah dipotong. Jika X adalah harga total pembelian, maka ibu harus membayar sebesar …', NULL, '(0,1 x 0,25) x', '(0,9 x 0,25)x', '(0,9 c 0,75)x', '(1,1 x 0,25)x', '(1,1 x 0,25)x', 'E', 'A', 1, 'tidak', '2019-11-30 14:40:40', '2019-11-30 14:40:40'),
(341, 2, 'Kode kupon untuk belanja pada suatu toko sealayan berbentuk bilangan yang disusun angka 1, 3, 5, 7. Jika kupon-kupon tersebut disusun berdasarkan kodenya mulai dari yang terkecil sampai dengan yang terbesar, maka kupon dengan kode 53137 berada pada urutan ke- …', NULL, '52', '40', '39', '24', '20', 'B', 'A', 1, 'tidak', '2019-11-30 14:41:09', '2019-11-30 14:41:09'),
(342, 2, 'Persegi Panjang ABCD disusun dari 6 persegi. Dua persegi diketaui luasnya seperti dalam gambar berikut.\r\nPerbandingan luas daerah persegi terkecil dengan terbesar di dalam persegi Panjang ABCD adalah …', '37437-2019-11-30-14-42-37.JPG', '1 : 7', '1 : 16', '1 : 45', '1: 49', '1 : 64', 'D', 'A', 1, 'tidak', '2019-11-30 14:42:37', '2019-11-30 14:42:37'),
(343, 2, 'Ani telah mengikuti tes Matematik sebanyak n. Pada tes berikutnya ia memperoleh nilai 83 sehingga nilai rata-rata Ani adalah 80. Tetapi, jika nilai tersebut adalah 67, maka rata-ratanya adalah 76. N adalah …', NULL, '2', '3', '4', '5', '6', 'B', 'A', 1, 'tidak', '2019-11-30 14:45:32', '2019-11-30 14:45:32'),
(344, 2, 'What is the topic of text above?', '40976-2019-11-30-14-46-48.JPG', 'Ling-life span', 'Survival', 'Youth', 'Old age', 'Health secrets', 'A', 'A', 3, 'tidak', '2019-11-30 14:46:48', '2019-11-30 14:46:48'),
(345, 2, 'According to the information in the passage, people may …', '71183-2019-11-30-14-47-47.JPG', 'Reach an old age if their parents do so', 'Not reach old age unless they live in areas where it is prevalent.', 'Reach old age if they are brought up separately from their siblings', 'Fail to reach and old age unless they are mentally healthy', 'Reach old age if they keep a healthy lifestyle', 'E', 'A', 3, 'tidak', '2019-11-30 14:47:47', '2019-11-30 14:47:47'),
(346, 2, 'Which of the following is true about the information in the text?', '61427-2019-11-30-14-48-33.JPG', 'Gebe quality contributes much more to life span', 'Okinawa people look younger at their actual age.', 'All alcoholic drinks decrease life expectation', 'All of Dr. Perl’s subjects are self-reliant', 'Superold people normally can exceed 100.', 'B', 'A', 3, 'tidak', '2019-11-30 14:48:33', '2019-11-30 14:48:33'),
(347, 2, 'How is the information of the last paragraph in the text organized?', '96219-2019-11-30-14-49-26.JPG', 'Each question is provided with an illustration', 'Scientific question are followed by studies', 'Scientific question are presented from general to specific', 'Each study is followed by research finding', 'Three related question are followed by one finding.', 'E', 'A', 3, 'tidak', '2019-11-30 14:49:26', '2019-11-30 14:49:26'),
(348, 2, 'Which of the following best expresses the main idea of the text?', '23393-2019-11-30-14-50-23.JPG', 'Several biological factors are at work affecting life span', 'Genes and lifestyles are essential for a long-life span', 'Elderly people cluster in particular part of the world', 'Biological factors influence mental and physical health', 'The population of the elderly people is increasing', 'B', 'A', 3, 'tidak', '2019-11-30 14:50:23', '2019-11-30 14:50:23'),
(349, 2, 'The examples provided in paragraph 2 clairfy that …', '70747-2019-11-30-14-51-32.JPG', 'Many kinds of liquid be grouped as one.', 'Different kinds of gas can be colorless and odoeless.', 'Materials in chemistry should be classified differently', 'Chemistry materials have more complicated classification.', 'Taxonomy can be made and applied fusther to other areas.', 'D', 'A', 3, 'tidak', '2019-11-30 14:51:32', '2019-11-30 14:51:32'),
(350, 2, 'Paragraph 2 examplifies the idea about classification that … Chemicals may be solid, liquid, and gaseous.', '67606-2019-11-30-14-52-11.JPG', 'Appearance is not a useful basis in  chemistry', 'The use of colors is better than that of appearance', 'Both colors and appearance should be considered', 'Colors should be included for identifying appearance', NULL, 'A', 'A', 3, 'tidak', '2019-11-30 14:52:11', '2019-11-30 14:52:11'),
(351, 2, 'The sentence “Chemist are no exeption” (Paragraph 2 line 1) could possibly be restated as …', '58459-2019-11-30-14-53-41.JPG', 'Chemical materials can alseo be put into classification', 'Classification of chemical materials is without exception', 'Chemist may also classify materials using certain criteria', 'When appearance is the basis, chemist are not involved', 'In material classification, chemicals should not be included', 'C', 'A', 3, 'tidak', '2019-11-30 14:53:41', '2019-11-30 14:53:41'),
(352, 2, 'The paragraph following the passage most likely deals with the classification of …', '22894-2019-11-30-14-54-00.JPG', 'Flora and fauna', 'Human sounds', 'Liquids and gases', 'Human behaviors', 'Words and phrases', 'C', 'A', 3, 'tidak', '2019-11-30 14:54:00', '2019-11-30 14:54:00'),
(353, 2, 'How does the author organize the ideas?', '70629-2019-11-30-14-54-44.JPG', 'Putting the main idea with examples', 'Presenting causes followed by effects', 'Interpreting different ways of classifying', 'Presenting the strengths of the main idea', 'Exposing supporting details onronologically', 'C', 'A', 3, 'tidak', '2019-11-30 14:54:44', '2019-11-30 14:54:44'),
(354, 2, 'The author’s main concern in the first paragraph of the passage is …', '42046-2019-11-30-14-55-51.JPG', 'There is no exact definition about education', 'Education is a fundamental individual’s right', 'Everyone has the right to get quality education', 'Education occurs is any place not just schools', 'Development can be gained through education', 'B', 'A', 3, 'tidak', '2019-11-30 14:55:51', '2019-11-30 14:55:51'),
(355, 2, 'If the author is right concerning the role of education, the following might be predicted to take place. EXCEPT …', '26747-2019-11-30-14-56-35.JPG', 'Longer life expectation', 'Lesser birth rate', 'Improved welfare', 'Better quality living', 'More jobs opportunities', 'B', 'A', 3, 'tidak', '2019-11-30 14:56:35', '2019-11-30 14:56:35'),
(356, 2, 'The following sentences reflect the author’s opinions in the passage, EXCEPT …', '53141-2019-11-30-14-57-32.JPG', 'Everyone has the right to get education', 'Education cannot be easily defined', 'EFA provides quality education by 2015', 'Education is basic to human development', 'The EFA goals are faced with serious challenges', 'C', 'A', 3, 'tidak', '2019-11-30 14:57:32', '2019-11-30 14:57:32'),
(357, 2, 'The situation the author shows in the passage above is best described as follows …', '45262-2019-11-30-14-58-23.JPG', 'Quality education fundamentally ensures quality living in all sectors', 'Education is essentially everyone’s right yet it still has its challenges', 'There are problems in education in spite of it significant role', 'As long as nations compete, education cannot progress', 'Absence of an exact definition causes problem in education', 'B', 'A', 3, 'tidak', '2019-11-30 14:58:23', '2019-11-30 14:58:23'),
(358, 2, 'The part following the passage above would likely discuss …', '79894-2019-11-30-14-59-21.JPG', 'Lack of access to technology in developing countries to support educational practices', 'Needs of modern digital technology to back up the implementation of EFA in education', 'Role of technology in providing individuals with cheap and accessible quality education', 'Inability of developing nations to compete with developed countries in technology', 'Government’s roles and responsibilities in managing education for their children.', 'C', 'A', 3, 'tidak', '2019-11-30 14:59:21', '2019-11-30 14:59:21'),
(359, 1, 'Tekanan Osmotik rata-rata darah adalah 27 C adalah 8,2 atm. Nilai R = 0,082 L atm/molK. Konsentrasi glukosa yang isotonic dengan darah adalah …', NULL, '3,33 M', '2,67 M', '1,33 M', '0,67 M', '0,33 M', 'E', 'A', 11, 'tidak', '2019-11-30 15:28:39', '2019-11-30 15:28:39'),
(362, 1, 'HNO2 merupakan asam yang lebih kuat dibandingkan HNO3\r\n\r\nSEBAB\r\n\r\nAfinitas NO3 terhadap proton lebih kecil daripada afinitas NO2 terhadap proton.', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'B', 11, 'tidak', '2019-11-30 15:33:52', '2019-11-30 15:33:52'),
(363, 1, 'Kelarutan AgCl dalam air dapat ditingkatkan dengan menambahkan NH3 ke dalam larutan\r\n\r\nSEBAB\r\n\r\nPenambahan NH3 akan mengurangi konsentrasi Ag+ membentuk Ag(NH3)2+.', NULL, NULL, NULL, NULL, NULL, NULL, 'A', 'B', 11, 'tidak', '2019-11-30 15:34:04', '2019-11-30 15:34:04'),
(365, 1, 'Dalam reaksi esterifikasi dibawah ini :\r\n Konsentrasi C3H7COOC2H5 akan meningkat bila …\r\n(1) Ditambahkan C2H5OH\r\n(2) Ditambahkan katalis asam\r\n(3) Air dikeluarkan dari sistem\r\n(4) Tekanakan dinaikkan', '53520-2019-11-30-15-37-21.jpg', NULL, NULL, NULL, NULL, NULL, 'B', 'C', 11, 'tidak', '2019-11-30 15:37:21', '2019-11-30 15:37:21'),
(366, 1, 'Reaksi senyawa X dengan air menghasilkan suatu senyawa yang merupakan isomer gugus fungsi eter. Pernyataan yangbenar untuk senyawa X adalah …\r\n(1)	Dapat memiliki rumus empiris CH2\r\n(2)	Semua atom C memiliki hibridasi sp3\r\n(3)	Dapat membentuk epoksida\r\n(4)	Larut baik dalam air.', NULL, NULL, NULL, NULL, NULL, NULL, 'B', 'C', 11, 'tidak', '2019-11-30 15:43:48', '2019-11-30 15:43:48'),
(367, 1, 'Diantara molekul-molekul yang disusun atom-atom 7N,6O,9F, 16S, 17Cl yang bersifat polar adalah ...\r\n(1)ClNO\r\n(2)SF_4\r\n(3)HCN\r\n(4)NO', NULL, NULL, NULL, NULL, NULL, NULL, 'D', 'A', 11, 'tidak', '2019-11-30 15:45:42', '2019-11-30 15:45:42'),
(370, 1, 'Jika mol loham selenium (Se) tepat habis beraksi dengan mol Br2 menghasilkan ion Br- dan Se^(n+), maka nilai n adalah …', NULL, '1', '2', '3', '4', '5', 'D', 'A', 11, 'tidak', '2019-11-30 15:49:12', '2019-11-30 15:49:12'),
(372, 1, 'Prinsip penerapan teknologi kultur jaringan berdasarkan konsep totipotensi sel, yaitu …\r\n(1)	Dapat dilakukan dalam kondisi non-steril\r\n(2)	Memliki sel-sel yang berbentuk relative kecil\r\n(3)	Hanya jaringan tertentu yang dapat berdiferensiasi\r\n(4)	Menumbuhkan sifat meristematis sel tanaman', NULL, NULL, NULL, NULL, NULL, NULL, 'C', 'C', 12, 'tidak', '2019-11-30 15:57:24', '2019-11-30 15:57:24'),
(373, 1, 'Over this decade, employment in jobs requiring education beyond a high school diploma will grow more rapidly than employment in jobs in do not; of the 30 fastest growing occopations, more than half require post secondary education. With the average earnings of college graduates at a level that is twice as high as that of workers with only a high school diploma, higher education is now the clearest (16) … into the middle class. In higher education, the U.S. has been outpaced internationally. While the united states ranks ninth in the world in the proportion, of young adults enrolled in college, we have fallen to 16th in the world in our share of certificate and degrees awarded to adults ages 25-34 lagging behind Korea, Canada, Japan, and other nations. While more than half of college students graduate within six years, the (17) … for low-income students is around 25 percent.\r\n	Acknowledging these factors early in his administration, President Obama challenged every American to commit to at least one year of higher education or post-secondary training. (18) … that America would once again have the highest proportion of college graduates in the world by 2020.\r\n\r\nThe option that best completes (18) is …', NULL, 'American will deserve higher education for their future', 'Middle class Americans are invited to provide financial aids', 'American students are suggested to take entrepreneurial skills', 'The President has set up a new educational goal for the country', 'The government recommends Americans for college education', 'D', 'A', 3, 'tidak', '2019-11-30 16:02:30', '2019-11-30 16:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('ADMIN','USER','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sekolah` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akses` enum('SAINTEK','SOSHUM','ALL','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `level`, `alamat`, `asal_sekolah`, `akses`, `no_hp`, `created_at`, `updated_at`) VALUES
(17, 'ADMIN', 'admin@admin.com', '$2y$10$YPdFavXU/JDaYjLzBQI0T.S5kRx0IlW9ev49rPPN6fQuRqqy28ATK', 'sgPBzDR1ZxuWCJX5G3p3u21t9iVSOPDQUZgyLdfDwNovgO670siNsK1Wcr2t', 'ADMIN', 'Bandung', 'PASIM', 'ALL', '08987676', '2019-11-10 08:24:16', '2019-11-10 08:24:16'),
(29, 'asdasd', 'asd@gmail.com', '$2y$10$MVbTcjp65SavNgl/tYN0Pe8nrmcj3X5aQUUW51n/QZEDa79Gb.j8q', 'NSkQvoWUpyfw0HnDoMjXQG7BAYxFc2E755MdaeXmPpH74RXGj52ACWgUnQAv', 'USER', 'asdasd', 'asd', 'SAINTEK', '089667671619', '2019-11-26 09:42:42', '2019-11-26 09:42:42'),
(31, 'anis', 'anis@gmail.com', '$2y$10$AEQ118LdDPbBw/a7SZW8V.lPfoXk.QeCgFV.Y/1P04smMoO/ttmTa', 'JXBpi6In4IQLpUyiRN2Teaap3Vh3ajPcB0upGrSvixJkUKh6YCqIq1gXctoQ', 'USER', 'asrama', 'sman1', 'SAINTEK', '082245526321', '2019-11-29 23:44:59', '2019-12-26 20:45:18'),
(32, 'rozaq', 'cek@cek.com', '$2y$10$.Y.AyGlY0nkiD6hUIw9TzeYPdfldJE7FUzEWt/VAZHQIkrgmZ9Bsy', 'CGqxs6PfLbagFvklxtoeFH30ei3Yq8qWVwY7dPVFWafTsLL4ROdgZrXr2LZH', 'USER', 'bandung', 'PASIM', 'SAINTEK', '0898989899', '2019-11-30 07:07:53', '2019-11-30 07:07:53'),
(33, 'Nurlita Anggraini', 'litaluthfi1127@gmail.com', '$2y$10$UUScefsSRvVOh0hkL2g1uOnZAkMx58aYy10um9XKR/D3CLiw.wHXe', 'iHB2Y028DY1Bjd6J3Yc5fW5RQwKAcfyRKEttcRm8r5C7bVK7Wo44ZbbrU1PN', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '082241098634', '2019-11-30 17:14:19', '2019-11-30 17:14:19'),
(34, 'Pradiva Cintia Paramitha', 'pradivacintia1209@gmail.com', '$2y$10$Pt7jX249Lq3AuKzpYeCkJu/AeE.jvqqACTO.aRcNpSN14oj9Y11bC', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '082241098634', '2019-11-30 17:15:30', '2019-11-30 17:15:30'),
(35, 'Dea Sri', 'deayuni17@gmail.com', '$2y$10$84.RvrGYtU7fNs0FdDzxGeCRoKFWELAhIXolDhMxbA3SKPvLWRnde', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0876543221421', '2019-11-30 17:17:17', '2019-11-30 17:17:17'),
(36, 'Jeni Ghina Syifa', 'jenisyifa13@gmail.com', '$2y$10$WCFnCRUXFFye6oBIWNICj.G5gaQChpXx5Z08Gm1VFp7Ma5KSwVWce', NULL, 'USER', 'Jakarta Indonesia', 'sman1', 'SAINTEK', '086888888888', '2019-11-30 17:19:42', '2019-11-30 17:19:42'),
(37, 'Emy Siauwono', 'emysiauwono02@gmail.com', '$2y$10$TqhX6PDKOLLX2owM9jHQkueyrd6SS2wOMfpknOXMk.wbqJF.Kdahu', NULL, 'USER', 'Jakarta Indonesia', 'sman1', 'SAINTEK', '086888888888', '2019-11-30 17:21:56', '2019-11-30 17:21:56'),
(38, 'Atikah Rahmaniah', 'atikahrahmaniah1107@gmail.com', '$2y$10$YX8grzZti7T1v4HeEHK8WOjyjhsA2HJnZVz.150.x2oh5hQL8GFnq', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '082824098634', '2019-11-30 17:23:11', '2019-11-30 17:23:11'),
(39, 'Sansan Santika', 'sansansantika112@gmail.com', '$2y$10$9d267DlTg6F5qRto1FihQ.jB5pG1Av55.rqnODfW.2PJmCoalsmt.', 'NLwOF30jh7QbUWsF0i8TsqhHpppWpCOgcE7tRFT9AgzEMJaiv5jsAZkqUVyi', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '08778776567', '2019-11-30 17:25:46', '2019-11-30 17:25:46'),
(40, 'Nadira Zahidah', 'nadira_zahidah@yahoo.com', '$2y$10$mRDLQm2p7m4A7PAIsFSQFumv/uHA0SG65n95a8NBypv4ffnqp2XSa', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '08778776567', '2019-11-30 17:28:00', '2019-11-30 17:28:00'),
(41, 'Siti Nurdiniyah Sari', 'sitinurdiniyahsari01@gmail.com', '$2y$10$gacz9gzHcPd1oc2.Hip98OKwk3Gpjx.1pUYU0bGI5hXtfqXGkNUBW', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '087876876876', '2019-11-30 17:29:23', '2019-11-30 17:29:23'),
(42, 'Novalin Kurnia Jacob', 'novalinkurniaj@gmail.com', '$2y$10$CShw5H5WZNcyAOrl1pzt6.yy9cu194pxwWUyB4Pvwvv4D04X09TDS', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '087876876876', '2019-11-30 17:30:59', '2019-11-30 17:30:59'),
(43, 'Wiji Rakhmawati', 'wijirakhmawati121@gmail.com', '$2y$10$n1JV4Fafnf38BHUgZCGJKecQJfZgCRgup5afS58RlXB7ZRMOuJSoW', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'ALL', '087087808708', '2019-11-30 17:32:10', '2019-11-30 17:32:10'),
(44, 'Tsabita Fiddiini', 'fiddiinitsabita@gmail.com', '$2y$10$zFZnZD4wZnvuZn/kEcqvrOHnTSGS99sGh8xuPpIoPZJFe70qXL.A2', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '087876876876', '2019-11-30 17:33:21', '2019-11-30 17:33:21'),
(45, 'Lulu Mardiah', 'lulumardiah672@gmail.com', '$2y$10$a3cGCOF1hGVvHQrqYDAwv.O/JXgfgEUIXS16XkVr.cSxqvJ7sHXea', 'RlSVLyuCc8Anx420W8MLIuFa7OYSSlszxWTpeiVbhX2uaqcu2AgF83tvuWwB', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'ALL', '087876876876', '2019-11-30 17:34:18', '2019-11-30 23:25:24'),
(46, 'Dinynda Maharani Wibowo', 'diniimaharani@gmail.com', '$2y$10$0Khmq5e74kr1hKKuimgJV.Tj9.rWCFph9HasF/vHFU7Rt04DFdGn.', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '087876876876', '2019-11-30 17:35:11', '2019-11-30 17:35:11'),
(47, 'Nabila Az Zahra', 'nabilaasrisazzahara@gmail.com', '$2y$10$QPp5mOgA9jl77wicjCNaeedsTGbsvViR7CYdqe/owtzs.P3qsMKH6', 'thi5htX6yi6JDTPSWvBeymN4FZ9MRPw7glBJIfpYM2zOXlGoRo3rWWdwguWJ', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '087876876876', '2019-11-30 17:36:11', '2019-11-30 17:36:11'),
(48, 'Fadhilah Alawiyah', 'fadhilahalawiyah11861@gmail.com', '$2y$10$i./u96YCAFEyzjt2mdz1durQCXvLDOfgKHqfhthVgxpJVHbMg6BQ6', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '087876876876', '2019-11-30 17:36:58', '2019-11-30 17:36:58'),
(49, 'Jessica Melinda', 'jessicamelinda8@gmail.com', '$2y$10$J9Iv7NaOWRwQ2C6kGAiBvul/Ce5mYKSo5AvsFqd42WTzx8iaCEDK6', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '08787878787', '2019-11-30 17:37:44', '2019-11-30 17:37:44'),
(50, 'Lestari Wilujeng', 'hatakelestari1962@gmail.com', '$2y$10$T2JuC0okcHgQ.xkmx3.Miu9olvS96gEoJq.eVXcqgDRe8wvU/wYku', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '08787878787', '2019-11-30 17:38:37', '2019-11-30 17:38:37'),
(51, 'Intan Permata Sari Suharno', 'ip9932570@gmail.com', '$2y$10$VVbymCGfHFGdt8LNun/Oa.nANV6RwFbGP5rZuX6OHp5TExI1m4nuK', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '0856457475', '2019-11-30 17:39:15', '2019-11-30 17:39:15'),
(52, 'Cristina Natalia', 'cnatalia101@gmail.com', '$2y$10$WS0pBj97XRy4NzBEvhhRd.3yHMp/jQQnZwucmfB5tLNke52aG/xgq', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '976986796', '2019-11-30 17:40:36', '2019-11-30 17:40:36'),
(53, 'Aldilla Yuliani Noer Firdaus', 'adillayulianifirdaus07@gmail.com', '$2y$10$w3SP8TpxcoFdTQvIR0O2HectWArYIP2OfIRTRG1M4C/UJGm6ZET5i', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0087886868', '2019-11-30 17:42:20', '2019-11-30 17:42:20'),
(54, 'Iqra Fatwa Alam', 'iqrafatwa01@gmail.com', '$2y$10$mtwC/F/hqRRZvhrfk7lNO.xoOgvLc.DIY/wUVd7iLWWVSIiDPovk.', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '09869867', '2019-11-30 17:43:21', '2019-11-30 17:43:21'),
(55, 'Fitria', 'Fitriaaaaaaafitri0101@gmail.com', '$2y$10$wNBYLacWHA5Uax9V9X8vJu8gRL20UVF1BLTIoCFVJyQ3ZScfB43MG', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0867686868', '2019-11-30 17:45:17', '2019-11-30 17:45:17'),
(56, 'Linda Widya Shintaningrum', 'lindawidya61@gmail.com', '$2y$10$dXgpqZrif/nsGl/KWpS2zOpKcK/iLdUP5eeVgWICI7albNQpi7Wm6', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'ALL', '07896957', '2019-11-30 17:46:21', '2019-11-30 17:46:21'),
(57, 'Asifa Huda Pramudita Putri', 'asifahudap@gmail.com', '$2y$10$NSsHl8n9XPho7wbzG3vGMuXkegcx84lB5gXSb.wWpfvkRZGgzXtny', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '08708779', '2019-11-30 17:46:58', '2019-11-30 17:46:58'),
(58, 'Agasi Hana Syafitri', 'agasihana29@gmail.com', '$2y$10$swNQ6ROYqJ8PvZgS7uFisOcsJkxGztRNihMzJnKevTEdbCrzemaI6', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '08787686', '2019-11-30 17:47:32', '2019-11-30 17:47:32'),
(59, 'Maryama Aflaha', 'aflaha.maryama@gmail.com', '$2y$10$uX/f22eeQniGNIi0ePj5PumhSqLyRkMMECk6nU.rHyh/66CCvT02W', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '088687678', '2019-11-30 17:48:11', '2019-11-30 19:14:43'),
(60, 'Nadia Afny Zuraida', 'nadiaafnyz@gmail.com', '$2y$10$3AT3snbta02sQIvn.qRoEeggYJyfSJlZoU//Tm3dUNnDKOmLf3b0S', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '68844683583', '2019-11-30 17:48:51', '2019-11-30 17:48:51'),
(61, 'Rizki Amalia', 'rizma.juwandinata@gmail.com', '$2y$10$b5tbo1pUhoykRUWvGSb53eGV5.9bW/3f1y7h5B0uQvzxzd4fvjke6', 'gNVn1eR5JBZbY3M9F8N5urzfhMmbFa0EYMLFGBCBK191UI80wvUTMGvx7vhg', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821313141', '2019-11-30 17:50:09', '2019-11-30 17:50:09'),
(63, 'Eka Alfiatun Nabila', 'ekabella442@gmail.com', '$2y$10$27FNuddtqwTMdgd/lmqpZO4g.0GLhNeOvNKsZD1httQXCzUMQtLta', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821313141', '2019-11-30 17:51:45', '2019-11-30 17:51:45'),
(64, 'Berlian Adel Nimpuna', 'berlianadelnimpuna261201@gmail.com', '$2y$10$L6qJS/gCTgMjBzMTgO8TKeaN53T9s7Ldj3MDzzF8LXvgj2jHXToHu', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '9768578845', '2019-11-30 17:52:28', '2019-11-30 19:10:05'),
(65, 'Inggit Sukmawati', 'inggit.sukmawati80@gmail.com', '$2y$10$87L57xcBwlJ08wZMr9EbtOlH3ifFhofD8vi5YJJNWBDFNV/iZyEZe', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '087768', '2019-11-30 17:53:07', '2019-11-30 17:53:07'),
(66, 'Muhammad Fahrudin', 'muhammadfahrudin0000@gmail.com', '$2y$10$FIgsNfjRtULmIwT3jDCQOuG4bJCZSt9fKFJMf1XcoONdiHoNsM8Bm', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'ALL', '54747474748', '2019-11-30 17:53:48', '2019-11-30 17:53:48'),
(67, 'Putra Rizky Wahyu Setyawan', 'putrar04maret@gmail.com', '$2y$10$A7D05X4OViYKappxkIgGD./cZ5CMCtsLJx8fhCMgJoZzPlWsmM2Oi', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'ALL', '0877887', '2019-11-30 17:54:41', '2019-11-30 17:54:41'),
(68, 'Ratu Anita Tazkya', 'tazkyatigapuluh@gmail.com', '$2y$10$b5qqAXjAUZsV/dZqxxI5d.bGWpV5WVaqzaS8sD14EIYmX/u/yqzGu', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0877867857', '2019-11-30 17:56:10', '2019-11-30 17:56:10'),
(69, 'Agustina Putri Ayu', 'agustina.110801@gmail.com', '$2y$10$h5H1IdHtN4SfkvDu5YO/u.xizRMpTMhYYDgZkGYRFozFJqD7yoY12', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0877867857', '2019-11-30 17:57:35', '2019-11-30 17:57:35'),
(70, 'Andi Hajriel Tri Agung', 'ANDIHAJRIELTRIAGUNG@gmail.com', '$2y$10$A5qILk7tVdiSk6wA75vtqe4WOMFn2Z9ve0/v.T4EhJ3gFQj2DpoTm', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', NULL, '0821388913', '2019-11-30 17:58:15', '2019-11-30 18:12:56'),
(71, 'Yowana Andan Mayoreta', 'yowana28@gmail.com', '$2y$10$Xu00Rb0kPej8JQi9ypL.OObfyR15DUdn1hFX79WNR3.5s9HKFuVTO', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '087797979', '2019-11-30 17:59:01', '2019-11-30 17:59:01'),
(72, 'Safril Astafira', 'firasafril4@gmail.com', '$2y$10$HMEVu35OZhkEmIEQCuKLXu3gUAODCH3hdor5phbZe0tJT2ti.Ef0m', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:04:16', '2019-11-30 19:12:03'),
(74, 'Farid Hamzah P', 'faridhp38@gmail.com', '$2y$10$MjT/KDwEcmPpEbDB5koO8e.ugjxJKGgGHGCt21VxuEaD9UOEKnY6i', 'zFPGNsrVHcDB3Ln0ETfQ0DIkFtVely37JEPwFnN8HMTN7PEOYlhkwJijHPGP', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '0821388913', '2019-11-30 18:05:17', '2019-11-30 18:05:17'),
(75, 'Valentina kusumaningrum', 'mas.itox@gmail.com', '$2y$10$Xx0SjG.EokokO2kucg80Xum3JRcksr1MJWeOCMARUiRug1Z8qpK.C', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:06:04', '2019-11-30 18:06:04'),
(76, 'Nafisah Julia Putri', 'nafisahjp@gmail.com', '$2y$10$ZbAVxAslB/XPm.D7vqFAyOtR4fIlDQ01qHja9.Ey5PW6ROyoWfjwW', 'OZgx3Z3R4WTVyUI2W1k7bqzMAHPI2WUKOZyqJmQibi09NzFNJGyl4sd5sizu', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:08:02', '2019-11-30 18:08:02'),
(77, 'Danendra nadhif pramana', 'nadhif900@gmail.com', '$2y$10$hstvbSfWZZYr7sQtAGG46.WnaMocWSoKPSu1bdc.5kpHznupPt.lm', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '0821388913', '2019-11-30 18:09:57', '2019-11-30 18:09:57'),
(78, 'Nur Riauldinna', 'nurriauldinna01@gmail.com', '$2y$10$kGXsSY0kNVUuS5wiwNLgmeNtaaH1hI3K3M0qznFo1B/4kms21QTmO', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:10:52', '2019-11-30 18:10:52'),
(79, 'Yuspi Maulifa', 'yuspimf@gmail.com', '$2y$10$pFe.SGNomNInYECwx1bhceZdgkHyEA.n3/ykiqCXd0hhks4lNZV/W', 'r14gwdznJwBh4ZxRVYX4cCitCMEXnX45j5g6Hw4fWTtUUwWNhOvZh16PyEol', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:11:50', '2019-11-30 23:13:13'),
(81, 'Indra Gunawan', 'Indragunawan2542@gmail.com', '$2y$10$y7H7OnPrNUP/VHocPi6GRutLb6211FfIUJNL42dLfMUzBnyIo1yPu', 'fShn0ml6vbNufJFN7BYbWbIIG1ZeK6u2Y9oGHDrAmvsBwKKJVVUP1uLDWZe8', 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:13:55', '2019-11-30 18:13:55'),
(82, 'Gumilang Firdaus', 'gumilangmf@gmail.com', '$2y$10$a.AUKuTxLQJgGRqyDtixXeV8DZy.teJcoaIksm1GkIFGOTt9KWiRS', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:14:46', '2019-11-30 18:14:46'),
(83, 'Silfia Salsabila', 'silfiasalsa16@gmail.com', '$2y$10$dAyTReuMGCu4uqhKeST1x.VGDQkb2jFgvOXKFYjSJsGnENmAjyIEK', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SOSHUM', '0821388913', '2019-11-30 18:16:09', '2019-11-30 18:16:09'),
(84, 'rifkykrismantoro', 'rifkykrismantoro@gmail.com', '$2y$10$Ill7Nil64JSIPijl5h.rFubpzhIoMCx4qyrIX9bqTddV1pEWTUdDC', NULL, 'USER', 'Jakarta Indonesia', 'SMAN 1', 'SAINTEK', '0821388913', '2019-11-30 18:21:26', '2019-12-01 01:51:25'),
(85, 'dita', 'tyodita.td@gmail.com', '$2y$10$dNYzR6nlR8bbgOmpIf0CMOIW5pbmRCvNnzrphFp28r23vVXgAh4aC', NULL, 'USER', 'asrama', 'sman1', 'SAINTEK', '08224109864', '2019-12-02 04:40:14', '2019-12-02 04:40:14'),
(86, 'ummi', 'ummikalsumlubis02@gmail.com', '$2y$10$fT2INCaRqCUj95Y1vOoMj.x0bhZYIA7fTNia43dmO66pNOHSb3Dz2', NULL, 'USER', 'asrama', 'sman1', 'SAINTEK', '082156467687', '2019-12-02 09:25:49', '2019-12-02 09:25:49'),
(87, 'tes', 'teskuy@gmail.com', '$2y$10$JIdPRkyUkf1Q5k/9Go825OyCArGoqm1eUeqQEU/YsAtHivYFrG8rq', NULL, 'USER', 'tes dong', 'SMAN 1', 'ALL', '0821388913', '2019-12-04 21:37:47', '2019-12-04 21:37:47'),
(88, 'Defi Aisah Nurahman', 'nurachmandefi8@gmail.com', '$2y$10$rDadVPNZdP.jsx/Fm.EWvesadvV4s8Cxts0SpwG0wFL4Qakqf.aca', NULL, 'USER', 'default', 'SMAN 1', 'SAINTEK', '081240168', '2020-01-01 05:02:37', '2020-01-01 05:02:37'),
(89, 'Feby Kinanti', 'febykinantisiwi279@gmail.com', '$2y$10$0.b77WlO9eBBW3qTh4Nfg.0wo0SpT55D1/bCYjRaIP6Rtkgu7OKLS', NULL, 'USER', 'default', 'SMAN 1', 'SAINTEK', '085887479014', '2020-01-01 05:10:45', '2020-01-01 05:10:45'),
(90, 'Adellia Azzahra', 'adelliaazzahra123@gmail.com', '$2y$10$fQXTj/pJm7iU1ZSNJiavRO6FHYIFsDJ8D6JTDDGYIdiiFHvKL6ovC', NULL, 'USER', 'default', 'SMAN 1', 'SAINTEK', '089687828', '2020-01-01 05:12:28', '2020-01-01 05:12:28'),
(91, 'Devi', 'devi@gmail.com', '$2y$10$8ge7LmQJsvAZ9ziXM0az4uPuG9xvokVa4FtjvKAcEeLsZzyo6Akf.', NULL, 'USER', 'default', 'SMAN 1', 'SAINTEK', '0821388913', '2020-01-01 05:52:07', '2020-01-01 05:52:07'),
(92, 'Muh', 'bambang@gmail.com', '$2y$10$N0PbExmpPF1lLr2w8zUf2uhrDPKiSYYVkcxml6Ekqh3xovKqxW/uS', NULL, 'USER', 'Ksks', 'Sma ku', 'SAINTEK', '089645121375487', '2020-01-08 19:09:41', '2020-01-08 19:09:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tb_bidang`
--
ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `FK_tb_hasil` (`id_bidang`),
  ADD KEY `FK_tb_hasilg` (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`pelajaran`);

--
-- Indexes for table `tb_materi`
--
ALTER TABLE `tb_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tb_rangkuman`
--
ALTER TABLE `tb_rangkuman`
  ADD PRIMARY KEY (`id_rangkuman`),
  ADD KEY `id` (`id`),
  ADD KEY `id_materi` (`id_materi`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `FK_tb_soal` (`id_bidang`),
  ADD KEY `FK_tb_soalasd` (`pelajaran`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_bidang`
--
ALTER TABLE `tb_bidang`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_materi`
--
ALTER TABLE `tb_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_rangkuman`
--
ALTER TABLE `tb_rangkuman`
  MODIFY `id_rangkuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD CONSTRAINT `FK_tb_hasil` FOREIGN KEY (`id_bidang`) REFERENCES `tb_bidang` (`id_bidang`),
  ADD CONSTRAINT `FK_tb_hasilg` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD CONSTRAINT `FK_tb_soal` FOREIGN KEY (`id_bidang`) REFERENCES `tb_bidang` (`id_bidang`),
  ADD CONSTRAINT `FK_tb_soalasd` FOREIGN KEY (`pelajaran`) REFERENCES `tb_mapel` (`pelajaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
