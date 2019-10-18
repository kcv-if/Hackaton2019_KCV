-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2019 at 07:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackaton`
--

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `nama_paket`, `created_at`, `updated_at`) VALUES
(1, 'IPA-1', NULL, NULL),
(2, 'IPA-2', NULL, NULL),
(3, 'IPA-3', NULL, NULL),
(4, 'IPA-4', NULL, NULL),
(5, 'IPA-5', NULL, NULL),
(6, 'IPA-6', NULL, NULL),
(7, 'IPA-7', NULL, NULL),
(8, 'IPA-8', NULL, NULL),
(9, 'IPA-9', NULL, NULL),
(10, 'MTK-1', NULL, NULL),
(11, 'MTK-2', NULL, NULL),
(12, 'MTK-3', NULL, NULL),
(13, 'MTK-4', NULL, NULL),
(14, 'MTK-5', NULL, NULL),
(15, 'MTK-6', NULL, NULL),
(16, 'MTK-7', NULL, NULL),
(17, 'MTK-8', NULL, NULL),
(18, 'MTK-9', NULL, NULL),
(19, 'MTK-10', NULL, NULL),
(20, 'BINDO-1', NULL, NULL);

--
-- Dumping data for table `soals`
--

INSERT INTO `soals` (`id`, `paket_id`, `soal`, `pilihan`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jika benda padat dipanaskan secara terus menerus akan', 'a:4:{s:1:\"3\";s:9:\"menyublim\";s:1:\"2\";s:7:\"mencair\";s:1:\"1\";s:7:\"menguap\";s:1:\"0\";s:7:\"membeku\";}', '2', NULL, NULL),
(2, 1, 'Kapur barus yang disimpan dalam lemari lama kelamaan akan habis, karena kapur barus', 'a:4:{s:1:\"3\";s:7:\"membeku\";s:1:\"2\";s:7:\"menguap\";s:1:\"1\";s:9:\"mengembun\";s:1:\"0\";s:9:\"menyublim\";}', '0', NULL, NULL),
(3, 1, 'Pada saat pemasangan rel kereta api, tiap sambungannya diberi celah cukup renggang dengan tujuan agar', 'a:4:{s:1:\"3\";s:30:\"rel tidak bengkok waktu memuai\";s:1:\"2\";s:24:\"memudahkan perbaikan rel\";s:1:\"1\";s:24:\"kereta api tahan getaran\";s:1:\"0\";s:25:\"memudahkan pemasangan rel\";}', '3', NULL, NULL),
(4, 1, 'Perpindahan kalor yang terjadi pada peristiwa memasak air adalah', 'a:4:{s:1:\"3\";s:7:\"isolasi\";s:1:\"2\";s:7:\"radiasi\";s:1:\"1\";s:8:\"konveksi\";s:1:\"0\";s:8:\"konduksi\";}', '1', NULL, NULL),
(5, 1, 'Besi, kertas, baja, plastik, karet, dan tembaga. Benda yang termasuk konduktor panas adalah', 'a:4:{s:1:\"3\";s:23:\"plastik, karet, tembaga\";s:1:\"2\";s:19:\"karet, kertas, baja\";s:1:\"1\";s:19:\"baja, tembaga, besi\";s:1:\"0\";s:18:\"besi, kertas, baja\";}', '1', NULL, NULL),
(6, 2, 'Perubahan energi yang terjadi pada setrika listrik adalah', 'a:4:{s:1:\"3\";s:35:\"energi kalor menjadi energi listrik\";s:1:\"2\";s:35:\"energi kimia menjadi energi listrik\";s:1:\"1\";s:35:\"energi listrik menjadi energi panas\";s:1:\"0\";s:35:\"energi listrik menjadi energi gerak\";}', '1', NULL, NULL),
(7, 2, 'Pada sebuah rumah dipasang jendela kaca. Ruangan dalam rumah menjadi terang karena cahaya matahari dapat menembusnya. Hal tersebut sesuai dengan sifat cahaya', 'a:4:{s:1:\"3\";s:21:\"menembus benda bening\";s:1:\"2\";s:14:\"merambat lurus\";s:1:\"1\";s:9:\"dibiaskan\";s:1:\"0\";s:11:\"dipantulkan\";}', '3', NULL, NULL),
(8, 2, 'Bentuk energi yang termasuk energi alternatif adalah', 'a:4:{s:1:\"3\";s:30:\"energi air dan energi matahari\";s:1:\"2\";s:25:\"energi air dan energi gas\";s:1:\"1\";s:30:\"energi gas dan energi batubara\";s:1:\"0\";s:30:\"energi gas dan energi matahari\";}', '3', NULL, NULL),
(9, 2, 'Jalan ke pegunungan dibuat berkelok-kelok, itu menggunakan prinsip', 'a:4:{s:1:\"3\";s:4:\"roda\";s:1:\"2\";s:6:\"katrol\";s:1:\"1\";s:13:\"bidang miring\";s:1:\"0\";s:10:\"pengungkit\";}', '1', NULL, NULL),
(10, 2, 'Cara yang tidak tepat untuk menghemat energi listrik di antaranya adalah', 'a:4:{s:1:\"3\";s:52:\"menggunakan peralatan listrik yang tegangannya kecil\";s:1:\"2\";s:36:\"mematikan lampu pada saat akan tidur\";s:1:\"1\";s:39:\"menerangi seluruh rumah pada malam hari\";s:1:\"0\";s:40:\"menggunakan peralatan listrik seperlunya\";}', '1', NULL, NULL),
(11, 3, 'Sistem pertanian dengan cara menanami suatu lahan dengan berbagai macam tanaman disebut', 'a:4:{s:1:\"3\";s:9:\"reboisasi\";s:1:\"2\";s:12:\"tumpang sari\";s:1:\"1\";s:10:\"terasering\";s:1:\"0\";s:16:\"panca usaha tani\";}', '2', NULL, NULL),
(12, 3, 'Di bawah ini adalah usaha-usaha manusia untuk menjaga kelestarian air, kecuali', 'a:4:{s:1:\"3\";s:38:\"membuang sampah rumah tangga ke sungai\";s:1:\"2\";s:52:\"mencegah pencemaran air dari limbah pabrik ke sungai\";s:1:\"1\";s:37:\"membuat bendungan untuk menyimpan air\";s:1:\"0\";s:43:\"mengadakan reboisasi pada lahan yang gundul\";}', '3', NULL, NULL),
(13, 3, 'Usaha yang dapat kita lakukan untuk mengembalikan kesuburan lahan gundul adalah dengan melakukan', 'a:4:{s:1:\"3\";s:37:\"memupukinya dengan jumlah yang banyak\";s:1:\"2\";s:17:\"membangun irigasi\";s:1:\"1\";s:19:\"membangun bendungan\";s:1:\"0\";s:9:\"reboisasi\";}', '0', NULL, NULL),
(14, 3, 'Di bawah ini yang bukan merupakan keuntungan yang diakibatkan dari meletusnya gunung berapi adalah', 'a:4:{s:1:\"3\";s:58:\"pasir dan batuan dari letusan dipakai untuk bahan bangunan\";s:1:\"2\";s:25:\"rusaknya daerah pertanian\";s:1:\"1\";s:57:\"daerah gunung berapi dapat dijadikan objek wisata menarik\";s:1:\"0\";s:35:\"akan didapatkan banyak bahan galian\";}', '2', NULL, NULL),
(15, 3, 'Planet yang berwarna kemerah-merahan dalam tata surya kita ialah', 'a:4:{s:1:\"3\";s:7:\"Jupiter\";s:1:\"2\";s:5:\"Venus\";s:1:\"1\";s:4:\"Bumi\";s:1:\"0\";s:4:\"Mars\";}', '0', NULL, NULL),
(16, 4, 'Revolusi bumi terhadap matahari mengakibatkan terjadinya', 'a:4:{s:1:\"3\";s:26:\"gerak semu harian matahari\";s:1:\"2\";s:15:\"siang dan malam\";s:1:\"1\";s:34:\"perbedaan waktu di tempat tertentu\";s:1:\"0\";s:16:\"pergantian musim\";}', '0', NULL, NULL),
(17, 4, 'Lama bulan Februari pada tahun kabisat kalender Masehi adalah', 'a:4:{s:1:\"3\";s:7:\"30 hari\";s:1:\"2\";s:7:\"29 hari\";s:1:\"1\";s:7:\"21 hari\";s:1:\"0\";s:7:\"28 hari\";}', '2', NULL, NULL),
(18, 4, 'Perputaran bulan mengelilingi bumi dapat mengakibatkan', 'a:4:{s:1:\"3\";s:21:\"pasang surut air laut\";s:1:\"2\";s:22:\"perubahan rasi bintang\";s:1:\"1\";s:23:\"lamanya siang dan malam\";s:1:\"0\";s:22:\"adanya siang dan malam\";}', '3', NULL, NULL),
(19, 4, 'Tahun masehi merupakan tahun yang didasarkan pada perhitungan waktu yang dibutuhkan bumi untuk mengelilingi matahari selama', 'a:4:{s:1:\"3\";s:5:\"366.5\";s:1:\"2\";s:3:\"366\";s:1:\"1\";s:3:\"364\";s:1:\"0\";s:6:\"365.25\";}', '0', NULL, NULL),
(20, 4, 'Gajah merupakan hewan yang dilindung karena keberadaannya di alam terancam oleh pemburu liar. Gajah diburu untuk diambil', 'a:4:{s:1:\"3\";s:9:\"dagingnya\";s:1:\"2\";s:8:\"kulitnya\";s:1:\"1\";s:9:\"gadingnya\";s:1:\"0\";s:9:\"taringnya\";}', '1', NULL, NULL),
(21, 5, 'Kentang dapat kita olah menjadi lauk makanan. Kentang menyimpan cadangan makanannya pada', 'a:4:{s:1:\"3\";s:4:\"daun\";s:1:\"2\";s:6:\"batang\";s:1:\"1\";s:4:\"buah\";s:1:\"0\";s:4:\"akar\";}', '0', NULL, NULL),
(22, 5, 'Di bawah ini merupakan usaha-usaha untuk melindungi hewan dan tumbuhan yang hampir punah , kecuali', 'a:4:{s:1:\"3\";s:10:\"konservasi\";s:1:\"2\";s:11:\"penangkaran\";s:1:\"1\";s:10:\"cagar alam\";s:1:\"0\";s:16:\"suaka margasatwa\";}', '2', NULL, NULL),
(23, 5, 'Pada suatu komunitas sawah, bila populasi ular berkurang maka', 'a:4:{s:1:\"3\";s:19:\"populasi padi tetap\";s:1:\"2\";s:23:\"polulasi padi bertambah\";s:1:\"1\";s:24:\"populasi tikus bertambah\";s:1:\"0\";s:24:\"populasi tikus berkurang\";}', '1', NULL, NULL),
(24, 5, 'Hubungan antara kerbau dan burung jalak termasuk simbiosis', 'a:4:{s:1:\"3\";s:7:\"alamiah\";s:1:\"2\";s:9:\"parasitis\";s:1:\"1\";s:10:\"mutualisme\";s:1:\"0\";s:12:\"komensalisme\";}', '1', NULL, NULL),
(25, 5, 'Ular merupakan hewan pemakan daging.Peranan ular dalam suatu ekosistem adalah sebagai', 'a:4:{s:1:\"3\";s:10:\"decomposer\";s:1:\"2\";s:11:\"konsumen II\";s:1:\"1\";s:10:\"konsumen I\";s:1:\"0\";s:8:\"produsen\";}', '2', NULL, NULL),
(26, 6, 'Bagian mata yang berfungsi untuk mengatur banyak sedikitnya cahaya yang masuk adalah', 'a:4:{s:1:\"3\";s:5:\"lensa\";s:1:\"2\";s:6:\"kornea\";s:1:\"1\";s:6:\"retina\";s:1:\"0\";s:5:\"pupil\";}', '0', NULL, NULL),
(27, 6, 'Bagian darah yang berfungsi untuk mengedarkan sari makanan adalah', 'a:4:{s:1:\"3\";s:12:\"plasma darah\";s:1:\"2\";s:9:\"trombosit\";s:1:\"1\";s:8:\"leukosit\";s:1:\"0\";s:9:\"eritrosit\";}', '0', NULL, NULL),
(28, 6, 'Dari pernyataan di bawah ini, yang merupakan fungsi utama daun adalah', 'a:4:{s:1:\"3\";s:23:\"mngisap air dan mineral\";s:1:\"2\";s:28:\"menopang tanaman tetap tegak\";s:1:\"1\";s:34:\"tempat berlangsungnya fotosintesis\";s:1:\"0\";s:19:\"membantu pernapasan\";}', '1', NULL, NULL),
(29, 6, 'Kekurangan vitamin D dapat menyebabkan penyakit', 'a:4:{s:1:\"3\";s:8:\"bronkist\";s:1:\"2\";s:8:\"rakhitis\";s:1:\"1\";s:6:\"anemia\";s:1:\"0\";s:8:\"leukemia\";}', '2', NULL, NULL),
(30, 6, 'Tanaman yang memiliki bunga indah dan berbau harum seperti mawar biasanya diserbukan dengan bantuan', 'a:4:{s:1:\"3\";s:3:\"air\";s:1:\"2\";s:9:\"kelelawar\";s:1:\"1\";s:8:\"serangga\";s:1:\"0\";s:5:\"angin\";}', '1', NULL, NULL),
(31, 7, 'Salah satu upaya mencegah erosi adalah ...', 'a:4:{s:1:\"3\";s:24:\" membiarkan hutan gundul\";s:1:\"2\";s:15:\" membakar hutan\";s:1:\"1\";s:15:\" menebang pohon\";s:1:\"0\";s:19:\" membuat terasering\";}', '0', NULL, NULL),
(32, 7, 'Pada persendian ... tulang dapat bergerak ke semua arah.', 'a:4:{s:1:\"3\";s:7:\" engsel\";s:1:\"2\";s:6:\" geser\";s:1:\"1\";s:7:\" pelana\";s:1:\"0\";s:7:\" peluru\";}', '0', NULL, NULL),
(33, 7, 'Bunyi yang hanya dapat didengar oleh kelelawar adalah ...', 'a:4:{s:1:\"3\";s:10:\" amplitude\";s:1:\"2\";s:11:\" infrasonik\";s:1:\"1\";s:11:\" ultrasonik\";s:1:\"0\";s:11:\" audiosonik\";}', '1', NULL, NULL),
(34, 7, 'Benda yang tidak mampu menghantarkan panas dengan baik disebut ...', 'a:4:{s:1:\"3\";s:8:\" adaptor\";s:1:\"2\";s:12:\" kondensator\";s:1:\"1\";s:10:\" konduktor\";s:1:\"0\";s:9:\" isolator\";}', '0', NULL, NULL),
(35, 7, 'Pelapukan pada tembok yang disebabkan oleh lumut terjadi karena ...', 'a:4:{s:1:\"3\";s:33:\" akar lumut masuk ke celah tembok\";s:1:\"2\";s:27:\" lumut menempel pada tembok\";s:1:\"1\";s:31:\" lumut menyerap air dari tembok\";s:1:\"0\";s:29:\" tembok menjadi makanan lumut\";}', '3', NULL, NULL),
(36, 8, 'Sifat-sifat benda berikut yang benar adalah ...', 'a:4:{s:1:\"3\";s:19:\" plastik tembus air\";s:1:\"2\";s:21:\" logam mudah dibentuk\";s:1:\"1\";s:22:\" kayu tidak tembus air\";s:1:\"0\";s:22:\" karet bersifat lentur\";}', '0', NULL, NULL),
(37, 8, 'Kelereng yang menggelinding di tanah suatu saat akan berhehti karena adanya ...', 'a:4:{s:1:\"3\";s:12:\" gaya dorong\";s:1:\"2\";s:11:\" gaya gesek\";s:1:\"1\";s:11:\" gaya pegas\";s:1:\"0\";s:10:\" gaya otot\";}', '2', NULL, NULL),
(38, 8, 'Lapisan atmosfer bumi terdiri dari ...', 'a:4:{s:1:\"3\";s:39:\" 79% nitrogen, 20% oksigen, 1% gas lain\";s:1:\"2\";s:34:\" 65% nitrogen, 34% oksigen, 1% air\";s:1:\"1\";s:26:\" 60% nitrogen, 40% oksigen\";s:1:\"0\";s:26:\" 50% nitrogen, 50% oksigen\";}', '3', NULL, NULL),
(39, 8, 'Pernapasan adalah proses ...', 'a:4:{s:1:\"3\";s:40:\" menghirup nitrogen mengeluarkan oksigen\";s:1:\"2\";s:46:\" menghirup karbondioksida mengeluarkan oksigen\";s:1:\"1\";s:46:\" menghirup oksigen mengeluarkan karbondioksida\";s:1:\"0\";s:41:\" menghirup oksigen, mengeluarkan nitrogen\";}', '1', NULL, NULL),
(40, 8, 'Yang termasuk ekosistem buatan adalah ...', 'a:4:{s:1:\"3\";s:5:\" laut\";s:1:\"2\";s:6:\" danau\";s:1:\"1\";s:9:\" akuarium\";s:1:\"0\";s:7:\" sungai\";}', '1', NULL, NULL),
(41, 9, 'Bingkai jendela kaca dipasang agak longgar supaya ...', 'a:4:{s:1:\"3\";s:28:\" memudahkan waktu pemasangan\";s:1:\"2\";s:37:\" kaca tidak pecah waktu terjadi hujan\";s:1:\"1\";s:27:\" memudahkan dalam perbaikan\";s:1:\"0\";s:30:\" kaca tidak pecah waktu memuai\";}', '0', NULL, NULL),
(42, 9, 'Kejadian yang terjadi bila ujung besi terasa panas bila ujung lainnya dibakar. Perpindahan panas ini secara ...', 'a:4:{s:1:\"3\";s:8:\" induksi\";s:1:\"2\";s:9:\" konfeksi\";s:1:\"1\";s:8:\" radiasi\";s:1:\"0\";s:9:\" konduksi\";}', '0', NULL, NULL),
(43, 9, 'Tumbuhan yang melindungi dirinya apabila dirinya tersentuh mengkerut adalah ...', 'a:4:{s:1:\"3\";s:7:\" murbai\";s:1:\"2\";s:8:\" geragih\";s:1:\"1\";s:11:\" putri malu\";s:1:\"0\";s:12:\" cocor bebek\";}', '1', NULL, NULL),
(44, 9, 'Di bawah ini yang termasuk contoh jenis batuan beku adalah ...', 'a:4:{s:1:\"3\";s:27:\" batu apung dan batu breksi\";s:1:\"2\";s:26:\" batu tulis dan batu kapur\";s:1:\"1\";s:32:\" batu kapur dan batu konglomerat\";s:1:\"0\";s:28:\" batu marmer dan batu granit\";}', '0', NULL, NULL),
(45, 9, 'Berikut ini salah satu peristiwa kapilaris adalah ...', 'a:4:{s:1:\"3\";s:33:\" air melarutkan kotoran pada baju\";s:1:\"2\";s:21:\" air melarutkan garam\";s:1:\"1\";s:34:\" air meresap ke dalam batang kapur\";s:1:\"0\";s:28:\" kapur tulis larut dalam air\";}', '0', NULL, NULL),
(46, 10, ' (28 x 35) + (28 x 18) adalah 28 x (35 + 18) Pengerjaan hitung tersebut menggunakan sifat', 'a:4:{s:1:\"3\";s:11:\" kooperatif\";s:1:\"2\";s:12:\" distributif\";s:1:\"1\";s:10:\" asosiatif\";s:1:\"0\";s:10:\" komutatif\";}', '2', NULL, NULL),
(47, 10, ' Jika 200 - 45 = ( 3 x a ) + 35, maka nilai a adalah', 'a:4:{s:1:\"3\";s:3:\" 55\";s:1:\"2\";s:3:\" 50\";s:1:\"1\";s:3:\" 45\";s:1:\"0\";s:3:\" 40\";}', '0', NULL, NULL),
(48, 10, ' Nilai dari 35 : (-5) + 10 - (-3) ialah', 'a:4:{s:1:\"3\";s:2:\" 7\";s:1:\"2\";s:2:\" 6\";s:1:\"1\";s:2:\" 5\";s:1:\"0\";s:2:\" 4\";}', '2', NULL, NULL),
(49, 10, ' Faktorisasai prima dari 2.450 adalah', 'a:4:{s:1:\"3\";s:16:\" 2^2 x 5^2 x 7^2\";s:1:\"2\";s:14:\" 2 x 5^2 x 7^2\";s:1:\"1\";s:12:\" 2^2 x 5 x 7\";s:1:\"0\";s:12:\" 2 x 5^2 x 7\";}', '2', NULL, NULL),
(50, 10, ' FPB dari 72, 96, dan 132 ialah', 'a:4:{s:1:\"3\";s:3:\" 12\";s:1:\"2\";s:3:\" 44\";s:1:\"1\";s:4:\" 288\";s:1:\"0\";s:6:\" 3.168\";}', '3', NULL, NULL),
(51, 11, ' FPB dan KPK dari bilangan 60, 72 dan 48 ialah', 'a:4:{s:1:\"3\";s:11:\" 12 dan 720\";s:1:\"2\";s:10:\" 12 dan 72\";s:1:\"1\";s:11:\" 12 dan 120\";s:1:\"0\";s:11:\" 16 dan 720\";}', '3', NULL, NULL),
(52, 11, ' KPK dari 16, 18, dan 32 ialah', 'a:4:{s:1:\"3\";s:4:\" 288\";s:1:\"2\";s:4:\" 144\";s:1:\"1\";s:3:\" 32\";s:1:\"0\";s:3:\" 16\";}', '3', NULL, NULL),
(53, 11, ' Lampu A menyala setiap 6 menit, B tiap 8 menit, dan C setiap 12 menit. Pada pukul 09.46 ketiga lampu menyala bersama-sama. Ketiga lampu akan menyala lagi pada pukul', 'a:4:{s:1:\"3\";s:6:\" 10.20\";s:1:\"2\";s:6:\" 10.15\";s:1:\"1\";s:6:\" 10.10\";s:1:\"0\";s:6:\" 10.05\";}', '1', NULL, NULL),
(54, 11, ' Nadia memiliki dua potong pita. Panjang masing-masing pita 30 cm dan 48 cm. Pita tersebut akan dipotong menjadi beberapa potongan yang sama panjang. Ukuran terpanjang untuk setiap potongnya adalah', 'a:4:{s:1:\"3\";s:3:\" 12\";s:1:\"2\";s:2:\" 8\";s:1:\"1\";s:2:\" 7\";s:1:\"0\";s:2:\" 6\";}', '0', NULL, NULL),
(55, 11, ' Pompa air mengisi bak selama 35 menit. Volume bak tersebut 7000 liter. Debit pompa adalahliter/menit', 'a:4:{s:1:\"3\";s:6:\" 2.100\";s:1:\"2\";s:6:\" 2.000\";s:1:\"1\";s:4:\" 200\";s:1:\"0\";s:4:\" 0,2\";}', '1', NULL, NULL),
(56, 12, ' Hasil perpangkatan tiga dari 12 adalah', 'a:4:{s:1:\"3\";s:6:\" 2.128\";s:1:\"2\";s:6:\" 2.025\";s:1:\"1\";s:6:\" 1.345\";s:1:\"0\";s:6:\" 1.728\";}', '0', NULL, NULL),
(57, 12, ' Debit pemadam kebakaran 12 dm^3/detik. Dalam waktu 3 menit pemadam kebakaran dapat mengalirkan air sebanyakliter', 'a:4:{s:1:\"3\";s:6:\" 2.160\";s:1:\"2\";s:6:\" 1.720\";s:1:\"1\";s:6:\" 1.240\";s:1:\"0\";s:4:\" 720\";}', '3', NULL, NULL),
(58, 12, ' Waktu yang diperlukan untuk memenuhi bak bervolume 14.400 liter adalah 10 menit. Debit air tersebut adalahdm^3/detik', 'a:4:{s:1:\"3\";s:3:\" 48\";s:1:\"2\";s:3:\" 36\";s:1:\"1\";s:3:\" 24\";s:1:\"0\";s:3:\" 12\";}', '1', NULL, NULL),
(59, 12, ' Sebuah penampungan air berbentuk tabung dengan volume 12 m^3. Tabung tersebut dialiri air dengan debit 100 liter/menit. Tabung tersebut akan penuh dalam waktujam', 'a:4:{s:1:\"3\";s:2:\" 4\";s:1:\"2\";s:2:\" 3\";s:1:\"1\";s:2:\" 2\";s:1:\"0\";s:2:\" 1\";}', '1', NULL, NULL),
(60, 12, ' Sebuah mobil pemadam kebakaran menyemprotkan air ke lokasi kebakaran. Persediaan air yang dibawa adalah 7.500 liter. Setelah 15 menit air tinggal 6.000 liter. Debit air yang dipakai dalam m^3/menit adalah', 'a:4:{s:1:\"3\";s:5:\" 0,01\";s:1:\"2\";s:4:\" 0,1\";s:1:\"1\";s:6:\" 0,001\";s:1:\"0\";s:2:\" 1\";}', '2', NULL, NULL),
(61, 13, ' Keliling lingkaran dengan diameter 42 cm adalah . cm', 'a:4:{s:1:\"3\";s:4:\" 140\";s:1:\"2\";s:4:\" 138\";s:1:\"1\";s:4:\" 136\";s:1:\"0\";s:4:\" 132\";}', '0', NULL, NULL),
(62, 13, ' Volume bangun tabung dengan diameter alas 35 cm dan tinggi 40 cm adalah', 'a:4:{s:1:\"3\";s:11:\" 38,5 liter\";s:1:\"2\";s:9:\" 38 liter\";s:1:\"1\";s:11:\" 36,5 liter\";s:1:\"0\";s:9:\" 36 liter\";}', '3', NULL, NULL),
(63, 13, ' Diameter roda mobil adalah 55 cm. Jika mobil tersebut berjalan sejauh 431,75 meter, maka roda mobil tersebut berputar sebanyak . kali', 'a:4:{s:1:\"3\";s:4:\" 250\";s:1:\"2\";s:4:\" 230\";s:1:\"1\";s:4:\" 215\";s:1:\"0\";s:4:\" 200\";}', '3', NULL, NULL),
(64, 13, ' Lantai gedung berbentuk persegi dengan luas 48 meter^2. Jika lantai tersebut akan dipasangi ubin dengan ukuran 20 cm x 20 cm, maka jumlah ubin yang dibutuhkan sebanyak . buah', 'a:4:{s:1:\"3\";s:6:\" 1.500\";s:1:\"2\";s:6:\" 1.200\";s:1:\"1\";s:6:\" 1.000\";s:1:\"0\";s:4:\" 800\";}', '2', NULL, NULL),
(65, 13, ' Data nilai ulangan matematika tertulis : 70, 50, 80, 70, 50, 60, 70, 50, 70, dan 60. Modus nilai ulangan di atas adalah', 'a:4:{s:1:\"3\";s:3:\" 80\";s:1:\"2\";s:3:\" 70\";s:1:\"1\";s:3:\" 60\";s:1:\"0\";s:3:\" 50\";}', '2', NULL, NULL),
(66, 14, ' Berat rata-rata 9 siswa dan Doni adalah 36,85 kg. Bila berat rata-rata 9 orang siswa adalah 36,5 kg, maka berat Doni adalah', 'a:4:{s:1:\"3\";s:6:\" 42 kg\";s:1:\"2\";s:6:\" 41 kg\";s:1:\"1\";s:6:\" 40 kg\";s:1:\"0\";s:6:\" 39 kg\";}', '1', NULL, NULL),
(67, 14, ' Risti mendapat nilai ulangan sebanyak 4 kali yaitu 10, 8, 9, 6. Agar nilai rata-ratanya 8,5, maka nilai ulangan kelima, Risti harus mendapat', 'a:4:{s:1:\"3\";s:3:\" 10\";s:1:\"2\";s:4:\" 9,5\";s:1:\"1\";s:4:\" 8,5\";s:1:\"0\";s:4:\" 7,5\";}', '2', NULL, NULL),
(68, 14, ' Rata-rata nilai 7 orang siswa adalah 7,4. Rama memperoleh nilai 8. Rata-rata nilai Rama dan 7 orang siswa adalah', 'a:4:{s:1:\"3\";s:6:\" 7,625\";s:1:\"2\";s:6:\" 7,475\";s:1:\"1\";s:6:\" 7,325\";s:1:\"0\";s:6:\" 7.125\";}', '2', NULL, NULL),
(69, 14, ' Volume aliran sebuah selang 1.600 liter. Air mengalir selama 40 menit. Debit selang tersebut adalah', 'a:4:{s:1:\"3\";s:12:\" 400 l/menit\";s:1:\"2\";s:11:\" 40 l/menit\";s:1:\"1\";s:10:\" 4 l/menit\";s:1:\"0\";s:12:\" 0,4 l/menit\";}', '2', NULL, NULL),
(70, 14, ' Sebuah tower PDAM dapat menampung 12.000 liter air. Jika air dikeluarkan dengan debit 200 liter/menit. Waktu yang diperlukan untuk mengosongkan penampungan air tersebut adalah', 'a:4:{s:1:\"3\";s:6:\" 1 jam\";s:1:\"2\";s:9:\" 45 menit\";s:1:\"1\";s:9:\" 40 menit\";s:1:\"0\";s:9:\" 30 menit\";}', '3', NULL, NULL),
(71, 15, ' Bentuk persen dari 3/8 adalah ....', 'a:4:{s:1:\"3\";s:6:\" 3750%\";s:1:\"2\";s:5:\" 375%\";s:1:\"1\";s:6:\" 37,5%\";s:1:\"0\";s:6:\" 3,75%\";}', '1', NULL, NULL),
(72, 15, ' Pecahan paling sederhana dari 78/182 adalah ....', 'a:4:{s:1:\"3\";s:4:\" 5/6\";s:1:\"2\";s:4:\" 3/7\";s:1:\"1\";s:4:\" 2/3\";s:1:\"0\";s:4:\" 1/3\";}', '2', NULL, NULL),
(73, 15, ' Bentuk pecahan campuran dari 3,25 adalah ....', 'a:4:{s:1:\"3\";s:6:\" 3 3/5\";s:1:\"2\";s:6:\" 3 2/5\";s:1:\"1\";s:6:\" 3 1/5\";s:1:\"0\";s:6:\" 3 1/4\";}', '0', NULL, NULL),
(74, 15, ' Jumlah murid SDN Suka Maju 834 anak. Murid perempuan ada 2/3 bagian. Banyaknya murid laki-laki ada .... anak.', 'a:4:{s:1:\"3\";s:4:\" 328\";s:1:\"2\";s:4:\" 318\";s:1:\"1\";s:4:\" 298\";s:1:\"0\";s:4:\" 278\";}', '0', NULL, NULL),
(75, 15, ' 4/5 bagian semangka beratnya 2,5 kg. Berat semangka yang masih utuh adalah ....', 'a:4:{s:1:\"3\";s:9:\" 3,250 kg\";s:1:\"2\";s:9:\" 3,125 kg\";s:1:\"1\";s:8:\" 2,85 kg\";s:1:\"0\";s:8:\" 2,75 kg\";}', '2', NULL, NULL),
(76, 16, ' Uang Andi di bank sebesar Rp 850.000,00 dan mendapat bunga 5% per tahun. Bunga selama setahun sebesar ....', 'a:4:{s:1:\"3\";s:13:\" Rp 42.500,00\";s:1:\"2\";s:13:\" Rp 42.000,00\";s:1:\"1\";s:13:\" Rp 41.500,00\";s:1:\"0\";s:13:\" Rp 40.000,00\";}', '3', NULL, NULL),
(77, 16, ' Nando membeli sepatu seharga Rp 165.000,00 dengan mendapat diskon sebesar 15%. Jika uang yang dibayarkan oleh Nando sebesar Rp 150.000,00, maka uang kembaliannya sebesar ....', 'a:4:{s:1:\"3\";s:13:\" Rp 10.000,00\";s:1:\"2\";s:12:\" Rp 9.750,00\";s:1:\"1\";s:12:\" Rp 9.500,00\";s:1:\"0\";s:12:\" Rp 9.250,00\";}', '2', NULL, NULL),
(78, 16, ' Ibu membeli salak sebanyak 120 buah. Ternyata 1/5 salak yang dibeli ibu busuk. Jumlah salak yang busuk sebanyak .... buah', 'a:4:{s:1:\"3\";s:3:\" 30\";s:1:\"2\";s:3:\" 24\";s:1:\"1\";s:3:\" 20\";s:1:\"0\";s:3:\" 18\";}', '2', NULL, NULL),
(79, 16, ' Harga 12 donat Rp 30.000,00. Harga 3 donat adalah ....', 'a:4:{s:1:\"3\";s:12:\" Rp 7.500,00\";s:1:\"2\";s:12:\" Rp 6.500,00\";s:1:\"1\";s:12:\" Rp 6.000,00\";s:1:\"0\";s:12:\" Rp 5.000,00\";}', '3', NULL, NULL),
(80, 16, ' Jarak kota A ke kota B pada peta 35 cm. Jika jarak sebenarnya adalh 175 km, maka skala peta yang digunakan adalah ....', 'a:4:{s:1:\"3\";s:14:\" 1 : 5.000.000\";s:1:\"2\";s:12:\" 1 : 500.000\";s:1:\"1\";s:11:\" 1 : 50.000\";s:1:\"0\";s:10:\" 1 : 5.000\";}', '2', NULL, NULL),
(81, 17, ' Diketahui uang Fahri Rp 90.000,00 dan uang Farhan 30.000,00. Perbandingan uang Fahri dengan uang Farhan adalah ....', 'a:4:{s:1:\"3\";s:6:\" 3 : 4\";s:1:\"2\";s:6:\" 2 : 3\";s:1:\"1\";s:6:\" 1 : 3\";s:1:\"0\";s:6:\" 1 : 2\";}', '1', NULL, NULL),
(82, 17, ' Jarak 30 km dapat ditempuh dengan waktu 40 menit, senilai dengan jarak 90 km ditempuh dalam waktu ....', 'a:4:{s:1:\"3\";s:10:\" 150 menit\";s:1:\"2\";s:10:\" 130 menit\";s:1:\"1\";s:10:\" 120 menit\";s:1:\"0\";s:10:\" 100 menit\";}', '1', NULL, NULL),
(83, 17, ' Selisih umur Doni dan Rico 10 tahun. Jika perbandingan umur Doni dan Rico 5 : 3, maka umur Doni .... tahun.', 'a:4:{s:1:\"3\";s:3:\" 30\";s:1:\"2\";s:3:\" 25\";s:1:\"1\";s:3:\" 20\";s:1:\"0\";s:3:\" 15\";}', '2', NULL, NULL),
(84, 17, ' Pada peta tercantum skala 1 : 1.500.000. Jika jarak kota A dan B pada peta adalah 12 cm, maka jarak sebenarnya adalah .... km', 'a:4:{s:1:\"3\";s:4:\" 210\";s:1:\"2\";s:4:\" 200\";s:1:\"1\";s:4:\" 190\";s:1:\"0\";s:4:\" 180\";}', '0', NULL, NULL),
(85, 17, ' Pecahan biasa dari 15 3/5 % adalah ....', 'a:4:{s:1:\"3\";s:10:\" 1560/1000\";s:1:\"2\";s:9:\" 156/1000\";s:1:\"1\";s:8:\" 156/100\";s:1:\"0\";s:7:\" 156/10\";}', '0', NULL, NULL),
(86, 18, ' Bentuk pecahan campuran dari 5,6 adalah ....', 'a:4:{s:1:\"3\";s:6:\" 5 3/5\";s:1:\"2\";s:6:\" 5 2/5\";s:1:\"1\";s:6:\" 5 1/5\";s:1:\"0\";s:6:\" 5 1/4\";}', '3', NULL, NULL),
(87, 18, ' 2/3 bagian semangka beratnya 3,75 kg. Berat semangka yang masih utuh adalah ....', 'a:4:{s:1:\"3\";s:9:\" 5,625 kg\";s:1:\"2\";s:7:\" 5,5 kg\";s:1:\"1\";s:9:\" 5,125 kg\";s:1:\"0\";s:8:\" 4,75 kg\";}', '3', NULL, NULL),
(88, 18, ' Jumlah siswa di suatu sekolah dasar 745 anak. Siswa perempuan ada 3/5 bagian. Banyaknya murid laki-laki ada .... anak.', 'a:4:{s:1:\"3\";s:4:\" 328\";s:1:\"2\";s:4:\" 318\";s:1:\"1\";s:4:\" 298\";s:1:\"0\";s:4:\" 278\";}', '1', NULL, NULL),
(89, 18, ' 2 liter bensin mampu menempuh jarak 40 km. Jika jarak yang ditempuh adalah 120 km, maka bensin yang dibutuhkan adalah .... liter', 'a:4:{s:1:\"3\";s:2:\" 6\";s:1:\"2\";s:2:\" 5\";s:1:\"1\";s:2:\" 4\";s:1:\"0\";s:2:\" 3\";}', '3', NULL, NULL),
(90, 18, ' Kelereng Dewi : Dina : Rizka = 2 : 3 : 5. Jika jumlah kelereng Dewi dan Dina 70 butir, maka jumlah kelereng mereka adalah .... butir', 'a:4:{s:1:\"3\";s:4:\" 160\";s:1:\"2\";s:4:\" 140\";s:1:\"1\";s:4:\" 130\";s:1:\"0\";s:4:\" 120\";}', '2', NULL, NULL),
(91, 19, ' Kelereng Angga 3/5 kelereng Anggi. Jika jumlah kelereng mereka 240 butir, maka kelereng masing-masing adalah ....', 'a:4:{s:1:\"3\";s:50:\" Kelereng Angga 150 butir, kelereng Anggi 90 butir\";s:1:\"2\";s:50:\" Kelereng Angga 90 butir, kelereng Anggi 150 butir\";s:1:\"1\";s:51:\" Kelereng Angga 140 butir, kelereng Anggi 100 butir\";s:1:\"0\";s:50:\" Kelereng Angga 90 butir, kelereng Anggi 140 butir\";}', '2', NULL, NULL),
(92, 19, ' Perbandingan permen X : Y adalah 2 : 3. Perbandingan kelereng Y : Z adalah 6 : 5. Jika jumlah permen mereka bertiga 60 butir, maka permen Y sebanyak .... butir', 'a:4:{s:1:\"3\";s:3:\" 28\";s:1:\"2\";s:3:\" 24\";s:1:\"1\";s:3:\" 20\";s:1:\"0\";s:3:\" 16\";}', '2', NULL, NULL),
(93, 19, ' Sebuah lapangan berbentuk persegi panjang dengan panjang 600 m dan lebar 400 meter digambar pada denah dengan skala 1 : 20.000. Panjang dan lebar lapangan tersebut pada denah adalah ....', 'a:4:{s:1:\"3\";s:27:\" panjang 30 cm, lebar 50 cm\";s:1:\"2\";s:25:\" panjang 3 cm, lebar 5 cm\";s:1:\"1\";s:27:\" panjang 50 cm, lebar 30 cm\";s:1:\"0\";s:25:\" panjang 3 cm, lebar 2 cm\";}', '0', NULL, NULL),
(94, 19, ' Dimas menabung di bank sebesar Rp 750.000,00 dan mendapat bunga 5% per tahun. Bunga selama setahun sebesar ....', 'a:4:{s:1:\"3\";s:13:\" Rp 43.500,00\";s:1:\"2\";s:13:\" Rp 42.000,00\";s:1:\"1\";s:13:\" Rp 37.500,00\";s:1:\"0\";s:13:\" Rp 26.000,00\";}', '1', NULL, NULL),
(95, 19, ' Rita membeli tas seharga Rp 175.000,00 dengan mendapat diskon sebesar 15%. Jika uang yang dibayarkan oleh Rita sebesar Rp 200.000,00, maka uang kembaliannya sebesar ....', 'a:4:{s:1:\"3\";s:13:\" Rp 51.250,00\";s:1:\"2\";s:13:\" Rp 51.000,00\";s:1:\"1\";s:13:\" Rp 50.500,00\";s:1:\"0\";s:13:\" Rp 50.750,00\";}', '3', NULL, NULL),
(96, 20, 'Air limbah yang berasal dari industri tekstil sangat berbahaya. Air itu mengandung racun. Racun tersebut bisa mengganggu kesehatan manusia. Makna kata limbah pada paragraf tersebut adalah ....', 'a:4:{s:1:\"3\";s:22:\" bahan sortiran pabrik\";s:1:\"2\";s:20:\" sisa bahan industri\";s:1:\"1\";s:21:\" sisa proses produksi\";s:1:\"0\";s:27:\" sesuatu yang tidak dipakai\";}', '1', NULL, NULL),
(97, 20, 'Pohon itu kelihatan pendek. Antonim kata pendek dalam kalimat tersebut adalah ....', 'a:4:{s:1:\"3\";s:7:\" rimbun\";s:1:\"2\";s:8:\" panjang\";s:1:\"1\";s:7:\" tinggi\";s:1:\"0\";s:6:\" besar\";}', '1', NULL, NULL),
(98, 20, '“Han, bisa kan kamu berlari cepat!” kata Hanafi. Kesalahan penggunaan tanda baca pada kalimat tersebut adalah ....', 'a:4:{s:1:\"3\";s:15:\" tanda titik(.)\";s:1:\"2\";s:14:\" tanda seru(!)\";s:1:\"1\";s:15:\" tanda koma (,)\";s:1:\"0\";s:18:\" tanda petik (“)\";}', '2', NULL, NULL),
(99, 20, 'Sudah satu minggu anak-anak berlibur di desa. Penulisan ejaan yang benar pada kalimat tersebut adalah ....', 'a:4:{s:1:\"3\";s:47:\" Sudah satu minggu, anak-anak berlibur di Desa.\";s:1:\"2\";s:47:\" Sudah satu Minggu, anak-anak berlibur di Desa.\";s:1:\"1\";s:47:\" Sudah satu Minggu, anak-anak berlibur di desa.\";s:1:\"0\";s:47:\" Sudah satu minggu, anak-anak berlibur di desa.\";}', '0', NULL, NULL),
(100, 20, 'Ibu berkata Kerjakan dulu semua tugasmu Nak. Tanda baca yang tepat untuk kalimat tersebut adalah ....', 'a:4:{s:1:\"3\";s:53:\" Ibu berkata, “Kerjakan dulu semua tugasmu, Nak!”\";s:1:\"2\";s:52:\" Ibu berkata “Kerjakan dulu semua tugasmu, Nak!”\";s:1:\"1\";s:53:\" Ibu berkata; “Kerjakan dulu semua tugasmu. Nak!”\";s:1:\"0\";s:53:\" Ibu berkata, “Kerjakan dulu semua tugasmu, Nak.”\";}', '3', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
