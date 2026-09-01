-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Agu 2026 pada 19.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot_akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'adminunhar123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot_log`
--

CREATE TABLE `chatbot_log` (
  `id` int(11) NOT NULL,
  `nomor_wa` varchar(20) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `balasan` text DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `chatbot_log`
--

INSERT INTO `chatbot_log` (`id`, `nomor_wa`, `pesan`, `balasan`, `waktu`) VALUES
(1, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n📚 jadwal selasa\n\n👨‍🎓 npm 221001\n\n📢 pengumuman\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-09 03:00:37'),
(2, '49113034944598@lid', 'tes', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-09 03:00:43'),
(3, '49113034944598@lid', 'jadwal senin', 'Jadwal tidak ditemukan.', '2026-07-09 03:01:07'),
(4, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n📚 jadwal selasa\n\n👨‍🎓 npm 221001\n\n📢 pengumuman\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-09 03:06:58'),
(5, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n📚 jadwal selasa\n\n👨‍🎓 npm 221001\n\n📢 pengumuman\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-09 03:30:05'),
(6, '120363419678090260@n', 'rrq calleb', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-11 22:26:03'),
(7, '120363419680829031@n', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-11 22:26:03'),
(8, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-14 01:01:50'),
(9, '49113034944598@lid', 'jadwal senin', '📚 JADWAL KULIAH\n\n1. Matematika Diskrit\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 13:00:00 - 15:30:00\nRuangan : undefined\n\n2. Matematika Diskrit\nDosen : Arie Rafika Dewi,S.Kom,M.Kom\nKelas : 1-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n3. English for Entrepreneurship\nDosen : Sri Rahayu,S.Ag,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n4. Bahasa Indonesia\nDosen : Ika Sari,S.Pd,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n5. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n6. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n7. Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n8. Praktik Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n9. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n10. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n11. Arsitektur SI/TI\nDosen : Dedy Irwan,ST,M.Kom\nKelas : 3-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n12. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n13. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n14. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n15. Etika Profesi\nDosen : Andi Marwan Elhanafi,ST,M.Kom\nKelas : 4-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n16. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n', '2026-07-14 01:01:57'),
(10, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST,M.Kom\n\nKode :\nundefined', '2026-07-14 01:02:30'),
(11, '49113034944598@lid', 'dosen andi', '👨‍🏫 DOSEN\n\nNama :\nAndi Marwan Elhanafi,ST,M.Kom\n\nKode :\nundefined', '2026-07-14 01:02:45'),
(12, '49113034944598@lid', 'jadwal kelas 2-1 Pagi', 'Jadwal tidak ditemukan.', '2026-07-14 01:03:31'),
(13, '49113034944598@lid', 'seminar 222370025', 'Data seminar tidak ditemukan.', '2026-07-14 01:04:22'),
(14, '49113034944598@lid', '222370025', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-14 01:04:33'),
(15, '49113034944598@lid', 'npm 222370025', '👨‍🎓 DATA MAHASISWA\n\n                Nama : Ramadhani Syahputra R\n                NPM : 222370025\n                Jenis Kelamin : Laki-laki\n                Semester : 8\n                No HP : 08982817649', '2026-07-14 01:04:43'),
(16, '49113034944598@lid', 'npm 222370067', '👨‍🎓 DATA MAHASISWA\n\n                Nama : M Ginda Rizky Mulia Lubis\n                NPM : 222370067\n                Jenis Kelamin : Laki-laki\n                Semester : 8\n                No HP : 082163880239', '2026-07-14 01:05:26'),
(17, '49113034944598@lid', 'cek judul chatbot', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-14 01:06:15'),
(18, '49113034944598@lid', 'mk data mining', 'Mata kuliah tidak ditemukan.', '2026-07-14 01:06:48'),
(19, '49113034944598@lid', 'skripsi 222370025', 'Data skripsi tidak ditemukan.', '2026-07-14 01:07:02'),
(20, '120363303319343363@n', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-17 22:21:45'),
(21, '120363419680829031@n', 'ramaikan VT terbaru guissssss, cosple jadi Arcane \n(collab sama Arknights Enfield)', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-17 22:21:45'),
(22, '120363419678090260@n', 'ig nya si coach aldo ini apa', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-17 22:21:45'),
(23, '257019483275277@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-21 20:43:48'),
(24, '142876382097503@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-21 20:43:48'),
(25, '120363303319343363@n', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-22 18:50:48'),
(26, '120363419680829031@n', 'snepi telah meninggalkan jejak 3 karakter wuwa di kota oslo\n\nclue: toko sushi', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-22 18:50:48'),
(27, '120363303319343363@n', 'Kata kata hari ini', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-22 19:34:32'),
(28, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-26 23:50:49'),
(29, '49113034944598@lid', 'berhenti', 'Berhasil berhenti berlangganan.', '2026-07-26 23:50:56'),
(30, '49113034944598@lid', 'daftar', 'Berhasil terdaftar notifikasi akademik.', '2026-07-26 23:51:00'),
(31, '49113034944598@lid', 'men', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 00:02:36'),
(32, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-27 00:02:38'),
(33, '49113034944598@lid', 'berhenti', 'Berhasil berhenti berlangganan.', '2026-07-27 00:02:43'),
(34, '49113034944598@lid', 'daftar', 'Berhasil terdaftar notifikasi akademik.', '2026-07-27 00:02:44'),
(35, '49113034944598@lid', 'berhenti', 'Berhasil berhenti berlangganan.', '2026-07-27 00:03:28'),
(36, '49113034944598@lid', 'bagaimana cara mengisi KRS?', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 00:18:27'),
(37, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-27 00:53:54'),
(38, '49113034944598@lid', 'Jadwal', 'Jadwal tidak ditemukan.', '2026-07-27 00:54:44'),
(39, '49113034944598@lid', 'jadwal senin', '📚 JADWAL KULIAH\n\n1. Matematika Diskrit\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 13:00:00 - 15:30:00\nRuangan : undefined\n\n2. Matematika Diskrit\nDosen : Arie Rafika Dewi,S.Kom,M.Kom\nKelas : 1-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n3. English for Entrepreneurship\nDosen : Sri Rahayu,S.Ag,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n4. Bahasa Indonesia\nDosen : Ika Sari,S.Pd,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n5. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n6. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n7. Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n8. Praktik Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n9. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n10. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n11. Arsitektur SI/TI\nDosen : Dedy Irwan,ST,M.Kom\nKelas : 3-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n12. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n13. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n14. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n15. Etika Profesi\nDosen : Andi Marwan Elhanafi,ST,M.Kom\nKelas : 4-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n16. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n', '2026-07-27 00:56:43'),
(40, '49113034944598@lid', 'jadwal senin', '📚 JADWAL KULIAH\n\n1. Matematika Diskrit\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 13:00:00 - 15:30:00\nRuangan : undefined\n\n2. Matematika Diskrit\nDosen : Arie Rafika Dewi,S.Kom,M.Kom\nKelas : 1-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n3. English for Entrepreneurship\nDosen : Sri Rahayu,S.Ag,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n4. Bahasa Indonesia\nDosen : Ika Sari,S.Pd,M.Pd\nKelas : 1-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n5. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n6. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n7. Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n8. Praktik Pemrograman Berbasis WEB\nDosen : Ahmad Zakir,ST,M.Kom\nKelas : 2-2 Pagi\nHari : Senin\nJam : 10:30:00 - 11:20:00\nRuangan : undefined\n\n9. Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n10. Praktik Pemrograman Berbasis WEB\nDosen : Septiana Dewi Andriana,S.Kom,M.Kom\nKelas : 2-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n11. Arsitektur SI/TI\nDosen : Dedy Irwan,ST,M.Kom\nKelas : 3-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n12. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n13. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-1 Pagi\nHari : Senin\nJam : 10:30:00 - 13:00:00\nRuangan : undefined\n\n14. Audit Sistem Informasi\nDosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\nKelas : 4-2 Pagi\nHari : Senin\nJam : 08:00:00 - 10:30:00\nRuangan : undefined\n\n15. Etika Profesi\nDosen : Andi Marwan Elhanafi,ST,M.Kom\nKelas : 4-1 Sore\nHari : Senin\nJam : 17:30:00 - 19:00:00\nRuangan : undefined\n\n16. Etika Profesi\nDosen : Nurjamiyah,S.Kom,M.Cs\nKelas : 4-1 Sore\nHari : Senin\nJam : 19:00:00 - 20:30:00\nRuangan : undefined\n\n', '2026-07-27 00:58:38'),
(41, '49113034944598@lid', 'pengumuman', '📢 PENGUMUMAN\n\n1. UAS\nKartu ujian UAS sudah dapat di ambil d prodi. Dengan ketentuan sudah melunasi tagihan yg ada d portal masing2. Terima kasih\nTanggal : 8/7/2026\n\n', '2026-07-27 00:59:31'),
(42, '49113034944598@lid', 'kalender', '📅 KALENDER AKADEMIK\n\n1. UAS\n13/7/2026 s/d 18/7/2026\n\n2. Ujian Remedial\n4/8/2026 s/d 7/8/2026\n\n', '2026-07-27 01:00:15'),
(43, '49113034944598@lid', 'kp', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:00:44'),
(44, '49113034944598@lid', 'Skripsi', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:00:59'),
(45, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-27 01:01:58'),
(46, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk basis data\n\n📢 pengumuman\n🔔 notifikasi\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-07-27 01:04:38'),
(47, '49113034944598@lid', '222370025', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:06:39'),
(48, '49113034944598@lid', 'npm 222370025', '👨‍🎓 DATA MAHASISWA\n\n            Nama : Ramadhani Syahputra R\n            NPM : 222370025\n            Jenis Kelamin : Laki-laki\n            Semester : 8\n            No HP : -', '2026-07-27 01:06:50'),
(49, '49113034944598@lid', 'jadwal', 'Jadwal tidak ditemukan.', '2026-07-27 01:07:57'),
(50, '49113034944598@lid', 'jadwal ahmad zakir', 'Jadwal tidak ditemukan.', '2026-07-27 01:08:14'),
(51, '49113034944598@lid', 'jadwal matematika diskrit', 'Jadwal tidak ditemukan.', '2026-07-27 01:08:23'),
(52, '49113034944598@lid', 'jadwal 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-07-27 01:09:05'),
(53, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST,M.Kom\n\nKode :\nundefined', '2026-07-27 01:09:27'),
(54, '49113034944598@lid', 'matkul', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:10:36'),
(55, '49113034944598@lid', 'matkul bahasa indonesia', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:10:47'),
(56, '49113034944598@lid', 'matkul senin', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:10:53'),
(57, '49113034944598@lid', 'mk', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:11:01'),
(58, '49113034944598@lid', 'mk bahasa indonesia', '📖 MATA KULIAH\n\nNama :\nBahasa Indonesia\n\nSKS :\n2\n\nSemester :\n2', '2026-07-27 01:11:12'),
(59, '49113034944598@lid', 'skripsi', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:11:58'),
(60, '49113034944598@lid', 'skripsi 222370025', '📚 DATA SKRIPSI\n\nNama : Ramadhani Syahputra R\n\nJudul :\nRANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\nPembimbing :\nAhmad Zakir,ST,M.Kom\n\nStatus :\nProses\n\nTanggal Sidang :\n30/10/2026', '2026-07-27 01:12:11'),
(61, '49113034944598@lid', 'skripsi 222370025', '📚 DATA SKRIPSI\n\nNama : Ramadhani Syahputra R\n\nJudul :\nRANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\nPembimbing :\nAhmad Zakir,ST,M.Kom\n\nStatus :\nProses\n\nTanggal Sidang :\n30/10/2026', '2026-07-27 01:13:44'),
(62, '122175210168445@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:40'),
(63, '122175210168445@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:40'),
(64, '239578157940946@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(65, '120363144949628728@g', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(66, '189928034050162@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(67, '240218275901604@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(68, '77021765988471@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(69, '264505678397506@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(70, '227599158640785@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:41'),
(71, '158222971355161@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:42'),
(72, '128076612636913@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:42'),
(73, '77550617399453@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:42'),
(74, '73568578732242@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-07-27 01:17:42'),
(75, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-04 23:27:45'),
(76, '49113034944598@lid', 'daftar', 'Berhasil terdaftar notifikasi akademik.', '2026-08-04 23:28:02'),
(77, '49113034944598@lid', 'npm 222370025', '👨‍🎓 DATA MAHASISWA\n\n            Nama : Ramadhani Syahputra R\n            NPM : 222370025\n            Jenis Kelamin : Laki-laki\n            Semester : 8\n            No HP : -', '2026-08-04 23:28:18'),
(78, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST,M.Kom\n\nKode :\nundefined', '2026-08-04 23:28:31'),
(79, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST,M.Kom\n\nKode :\nundefined', '2026-08-04 23:31:02'),
(80, '49113034944598@lid', 'jadwal kelas 4-1 sore', 'Jadwal tidak ditemukan.', '2026-08-04 23:31:28'),
(81, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-04 23:34:18'),
(82, '49113034944598@lid', 'jadwal 4-1 sore', 'Jadwal tidak ditemukan.', '2026-08-04 23:34:26'),
(83, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST,M.Kom\n\nKode :\nZKR', '2026-08-04 23:34:34'),
(84, '49113034944598@lid', 'jadwal 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-04 23:36:50'),
(85, '278262861279272@lid', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-04 23:51:44'),
(86, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-05 00:04:23'),
(87, '49113034944598@lid', 'jadwal kelas 2-1 Pagi', 'Jadwal tidak ditemukan.', '2026-08-05 00:08:22'),
(88, '49113034944598@lid', 'jadwal 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-05 00:08:36'),
(89, '120363144949628728@g', '', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-05 00:14:57'),
(90, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-05 00:15:48'),
(91, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-05 00:15:48'),
(92, '49113034944598@lid', 'jadwal kelas 2-1 pagi', '📚 *JADWAL KELAS 2-1 PAGI*\n\n📖 Kecerdasan Buatan\n👨‍🏫 Eka Rahayu,S.Kom,M.Kom\n📅 Kamis\n🕒 08:00:00 - 10:30:00\n🏫 K-104\n\n📖 Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Kewarganegaraan\n👨‍🏫 Sugih Ayu Pratitis,SH,M.Hum\n📅 Kamis\n🕒 10:30:00 - 12:10:00\n🏫 K-104\n\n📖 Praktikum Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Sistem Informasi Manajemen\n👨‍🏫 Arie Rafika Dewi,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 15:30:00\n🏫 K-104\n\n📖 Bahasa Indonesia\n👨‍🏫 Ika Sari,S.Pd,M.Pd\n📅 Rabu\n🕒 10:30:00 - 12:10:00\n🏫 K-201\n\n📖 Analisis Proses Bisnis\n👨‍🏫 Marina Elsera,ST,M.Kom\n📅 Rabu\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 08:00:00 - 10:30:00\n🏫 K-202\n\n📖 English for Entrepreneurship\n👨‍🏫 Dr.Dharmawati,S.Pd.M.Hum\n📅 Selasa\n🕒 08:50:00 - 10:30:00\n🏫 K-201\n\n📖 Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Praktik Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Praktik Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Sekuriti Sistem Informasi\n👨‍🏫 Husni Lubis,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Praktik Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 13:00:00\n🏫 K-202\n\n📖 Matematika Diskrit\n👨‍🏫 Ahmad Zakir,ST,M.Kom\n📅 Senin\n🕒 13:00:00 - 15:30:00\n🏫 K-201\n\n', '2026-08-05 00:16:06'),
(93, '49113034944598@lid', 'jadwal kelas 2-1 pagi', '📚 *JADWAL KELAS 2-1 PAGI*\n\n📖 Kecerdasan Buatan\n👨‍🏫 Eka Rahayu,S.Kom,M.Kom\n📅 Kamis\n🕒 08:00:00 - 10:30:00\n🏫 K-104\n\n📖 Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Kewarganegaraan\n👨‍🏫 Sugih Ayu Pratitis,SH,M.Hum\n📅 Kamis\n🕒 10:30:00 - 12:10:00\n🏫 K-104\n\n📖 Praktikum Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Sistem Informasi Manajemen\n👨‍🏫 Arie Rafika Dewi,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 15:30:00\n🏫 K-104\n\n📖 Bahasa Indonesia\n👨‍🏫 Ika Sari,S.Pd,M.Pd\n📅 Rabu\n🕒 10:30:00 - 12:10:00\n🏫 K-201\n\n📖 Analisis Proses Bisnis\n👨‍🏫 Marina Elsera,ST,M.Kom\n📅 Rabu\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 08:00:00 - 10:30:00\n🏫 K-202\n\n📖 English for Entrepreneurship\n👨‍🏫 Dr.Dharmawati,S.Pd.M.Hum\n📅 Selasa\n🕒 08:50:00 - 10:30:00\n🏫 K-201\n\n📖 Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Praktik Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Praktik Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Sekuriti Sistem Informasi\n👨‍🏫 Husni Lubis,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Praktik Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 13:00:00\n🏫 K-202\n\n📖 Matematika Diskrit\n👨‍🏫 Ahmad Zakir,ST,M.Kom\n📅 Senin\n🕒 13:00:00 - 15:30:00\n🏫 K-201\n\n', '2026-08-05 00:16:06'),
(94, '49113034944598@lid', 'jadwal senin', '📚 *JADWAL KULIAH*\n\n1. Matematika Diskrit\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n2. Matematika Diskrit\n👨‍🏫 Dosen : Arie Rafika Dewi,S.Kom,M.Kom\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-202\n\n3. English for Entrepreneurship\n👨‍🏫 Dosen : Sri Rahayu,S.Ag,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n4. Bahasa Indonesia\n👨‍🏫 Dosen : Ika Sari,S.Pd,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-201\n\n5. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n6. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n7. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n8. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n9. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-202\n\n10. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n11. Arsitektur SI/TI\n👨‍🏫 Dosen : Dedy Irwan,ST,M.Kom\n🏫 Kelas : 3-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-203\n\n12. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-203\n\n13. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-104\n\n14. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-104\n\n15. Etika Profesi\n👨‍🏫 Dosen : Andi Marwan Elhanafi,ST,M.Kom\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n16. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-204\n\n', '2026-08-05 00:16:23'),
(95, '49113034944598@lid', 'jadwal senin', '📚 *JADWAL KULIAH*\n\n1. Matematika Diskrit\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n2. Matematika Diskrit\n👨‍🏫 Dosen : Arie Rafika Dewi,S.Kom,M.Kom\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-202\n\n3. English for Entrepreneurship\n👨‍🏫 Dosen : Sri Rahayu,S.Ag,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n4. Bahasa Indonesia\n👨‍🏫 Dosen : Ika Sari,S.Pd,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-201\n\n5. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n6. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n7. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n8. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n9. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-202\n\n10. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n11. Arsitektur SI/TI\n👨‍🏫 Dosen : Dedy Irwan,ST,M.Kom\n🏫 Kelas : 3-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-203\n\n12. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-203\n\n13. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-104\n\n14. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-104\n\n15. Etika Profesi\n👨‍🏫 Dosen : Andi Marwan Elhanafi,ST,M.Kom\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n16. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-204\n\n', '2026-08-05 00:16:23'),
(96, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-05 00:31:11'),
(97, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-05 00:31:11'),
(98, '49113034944598@lid', 'jadwal dosen ahmad zakir', '👨‍🏫 *JADWAL DOSEN AHMAD ZAKIR*\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n📖 Matematika Diskrit\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n', '2026-08-05 00:31:37'),
(99, '49113034944598@lid', 'jadwal dosen ahmad zakir', '👨‍🏫 *JADWAL DOSEN AHMAD ZAKIR*\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n📖 Matematika Diskrit\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n', '2026-08-05 00:31:37'),
(100, '49113034944598@lid', 'cekjudul chatbot', '⚠ Judul serupa ditemukan:\n\n1. Rancang Bangun Chatbot Whatsapp Akademik Menggunakan Node.Js Dan Metode Rule-Based System Pada Program Studi Sistem Informasi\n', '2026-08-05 00:35:54'),
(101, '49113034944598@lid', 'cekjudul chatbot', '⚠ Judul serupa ditemukan:\n\n1. Rancang Bangun Chatbot Whatsapp Akademik Menggunakan Node.Js Dan Metode Rule-Based System Pada Program Studi Sistem Informasi\n', '2026-08-05 00:35:54'),
(102, '49113034944598@lid', 'faq apa syarat skripsi?', '❓ Apa Syarat Skripsi?\n\n✅ Skripsi dapat diambil oleh mahasiswa dengan syarat telah menempuh kuliah minimal 122 SKS dan Indeks Prestasi minimal 2,50 dan sedang mengambil atau telah lulus mata kuliah bidang peminatan dan Kerja Praktek.', '2026-08-05 00:36:48'),
(103, '49113034944598@lid', 'faq apa syarat skripsi?', '❓ Apa Syarat Skripsi?\n\n✅ Skripsi dapat diambil oleh mahasiswa dengan syarat telah menempuh kuliah minimal 122 SKS dan Indeks Prestasi minimal 2,50 dan sedang mengambil atau telah lulus mata kuliah bidang peminatan dan Kerja Praktek.', '2026-08-05 00:36:48'),
(104, '49113034944598@lid', 'cekjudul sistem informasi penjualan', '⚠ Judul serupa ditemukan:\n\n1. PERANCANGAN SISTEM INFORMASI PENJUALAN SEPATU BERBASIS WEB PADA TOKO KIDIRO SECONDARY\n2. SISTEM INFORMASI PENJUALAN KAMBING ETAWA BERBASIS WEB MENGGUNAKAN METODE FIRST IN FIRST OUT(FIFO)\n3. IMPLEMENTASI TAMPILAN VISUAL 360 PADA SISTEM INFORMASI PENJUALAN KENDARAAN BEKAS BERBASIS WEB STUDI KASUS LAJU JAYA MOTOR\n4. PENERAPAN SISTEM INFORMASI PENJUALAN DESSERT BERBASIS WEB DENGAN PENDEKATAN POAC\n', '2026-08-05 00:38:01'),
(105, '49113034944598@lid', 'cekjudul sistem informasi penjualan', '⚠ Judul serupa ditemukan:\n\n1. PERANCANGAN SISTEM INFORMASI PENJUALAN SEPATU BERBASIS WEB PADA TOKO KIDIRO SECONDARY\n2. SISTEM INFORMASI PENJUALAN KAMBING ETAWA BERBASIS WEB MENGGUNAKAN METODE FIRST IN FIRST OUT(FIFO)\n3. IMPLEMENTASI TAMPILAN VISUAL 360 PADA SISTEM INFORMASI PENJUALAN KENDARAAN BEKAS BERBASIS WEB STUDI KASUS LAJU JAYA MOTOR\n4. PENERAPAN SISTEM INFORMASI PENJUALAN DESSERT BERBASIS WEB DENGAN PENDEKATAN POAC\n', '2026-08-05 00:38:01'),
(106, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal senin\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n\n📚 skripsi npm\n📝 cekjudul chatbot\n\n🏢 kp npm\n🎤 seminar npm\n⚖ sidang npm\n🌍 kkn npm\n\n📄 dokumen\n❓ faq skripsi\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-11 00:02:56'),
(107, '49113034944598@lid', 'jadwal Ahmad zakir', 'Jadwal tidak ditemukan.', '2026-08-11 00:03:16'),
(108, '49113034944598@lid', 'jadwal dosen Ahmad zakir', '👨‍🏫 *JADWAL DOSEN AHMAD ZAKIR*\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n', '2026-08-11 00:03:33'),
(109, '49113034944598@lid', 'faq cekjudul Sistem informasi manajemen', 'FAQ tidak ditemukan.', '2026-08-11 00:03:58'),
(110, '49113034944598@lid', 'cekjudul sistem informasi manajemen', '⚠ Judul serupa ditemukan:\n\n1. SISTEM INFORMASI MANAJEMEN DATA ASET PADA FALULTAS TEKNIK DAN KOMPUTER HARAPAN MEDAN BERBASIS WEB\n', '2026-08-11 00:04:17'),
(111, '49113034944598@lid', 'faq syarat skripsi', '❓ Apa Syarat Skripsi?\n\n✅ Skripsi dapat diambil oleh mahasiswa dengan syarat telah menempuh kuliah minimal 122 SKS dan Indeks Prestasi minimal 2,50 dan sedang mengambil atau telah lulus mata kuliah bidang peminatan dan Kerja Praktek.', '2026-08-11 00:04:34'),
(112, '49113034944598@lid', 'syarat skripsi', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-11 00:04:41'),
(113, '49113034944598@lid', 'pengumuman', '📢 PENGUMUMAN\n\n1. UAS\nKartu ujian UAS sudah dapat di ambil d prodi. Dengan ketentuan sudah melunasi tagihan yg ada d portal masing2. Terima kasih\nTanggal : 8/7/2026\n\n', '2026-08-11 00:05:45'),
(114, '49113034944598@lid', 'seminar 222370025', 'Data seminar tidak ditemukan.', '2026-08-11 00:06:12'),
(115, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-11 14:27:52'),
(116, '49113034944598@lid', 'npm 222370025', '👨‍🎓 DATA MAHASISWA\n\n            Nama : Ramadhani Syahputra Ritonga\n            NPM : 222370025\n            Jenis Kelamin : Laki-laki\n            Semester : 8\n            No HP : -', '2026-08-11 14:28:12'),
(117, '49113034944598@lid', 'jadwal matematika diskrit', 'Jadwal tidak ditemukan.', '2026-08-11 14:28:47'),
(118, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 DOSEN\n\nNama :\nAhmad Zakir,ST.,M.Kom\n\nKode :\nZKR', '2026-08-11 14:29:03'),
(119, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-20 01:29:51'),
(120, '49113034944598@lid', 'jadwal kelas 2-1 pagi', '📚 *JADWAL KELAS 2-1 PAGI*\n\n📖 Kecerdasan Buatan\n👨‍🏫 Eka Rahayu,S.Kom,M.Kom\n📅 Kamis\n🕒 08:00:00 - 10:30:00\n🏫 K-104\n\n📖 Kewarganegaraan\n👨‍🏫 Sugih Ayu Pratitis,SH,M.Hum\n📅 Kamis\n🕒 10:30:00 - 12:10:00\n🏫 K-104\n\n📖 Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Sistem Informasi Manajemen\n👨‍🏫 Arie Rafika Dewi,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 15:30:00\n🏫 K-104\n\n📖 Praktikum Struktur Data\n👨‍🏫 Boni Oktaviana Sembiring,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Bahasa Indonesia\n👨‍🏫 Ika Sari,S.Pd,M.Pd\n📅 Rabu\n🕒 10:30:00 - 12:10:00\n🏫 K-201\n\n📖 Analisis Proses Bisnis\n👨‍🏫 Marina Elsera,ST,M.Kom\n📅 Rabu\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 08:00:00 - 10:30:00\n🏫 K-202\n\n📖 English for Entrepreneurship\n👨‍🏫 Dr.Dharmawati,S.Pd.M.Hum\n📅 Selasa\n🕒 08:50:00 - 10:30:00\n🏫 K-201\n\n📖 Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 10:30:00 - 13:00:00\n🏫 K-201\n\n📖 Praktik Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Selasa\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Praktik Sistem Operasi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 13:50:00\n🏫 LAB\n\n📖 Sekuriti Sistem Informasi\n👨‍🏫 Husni Lubis,ST,M.Kom\n📅 Selasa\n🕒 13:00:00 - 15:30:00\n🏫 K-202\n\n📖 Praktik Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 Pemrograman Berbasis WEB\n👨‍🏫 Septiana Dewi Andriana,S.Kom,M.Kom\n📅 Senin\n🕒 10:30:00 - 13:00:00\n🏫 K-202\n\n📖 Matematika Diskrit\n👨‍🏫 Dr.Irvan,M.Si\n📅 Senin\n🕒 13:00:00 - 15:30:00\n🏫 K-201\n\n', '2026-08-20 01:30:15'),
(121, '49113034944598@lid', 'jadwal kelas 2-2 pagi', '📚 *JADWAL KELAS 2-2 PAGI*\n\n📖 Sistem Informasi Manajemen\n👨‍🏫 Arie Rafika Dewi,S.Kom,M.Kom\n📅 Kamis\n🕒 10:30:00 - 13:00:00\n🏫 K-203\n\n📖 Kecerdasan Buatan\n👨‍🏫 Eka Rahayu,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 15:30:00\n🏫 K-203\n\n📖 Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Rabu\n🕒 08:00:00 - 10:30:00\n🏫 K-203\n\n📖 Bahasa Indonesia\n👨‍🏫 Ika Sari,S.Pd,M.Pd\n📅 Rabu\n🕒 08:50:00 - 10:30:00\n🏫 k-202\n\n📖 Praktik Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Rabu\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 English for Entrepreneurship\n👨‍🏫 Dr.Dharmawati,S.Pd.M.Hum\n📅 Selasa\n🕒 10:30:00 - 12:10:00\n🏫 M-101\n\n📖 Sekuriti Sistem Informasi\n👨‍🏫 Husni Lubis,ST,M.Kom\n📅 Selasa\n🕒 10:30:00 - 13:00:00\n🏫 K-203\n\n📖 Kewarganegaraan\n👨‍🏫 Sugih Ayu Pratitis,SH,M.Hum\n📅 Selasa\n🕒 13:00:00 - 14:40:00\n🏫 K-203\n\n📖 Pemrograman Berbasis WEB\n👨‍🏫 Ahmad Zakir,ST.,M.Kom\n📅 Senin\n🕒 08:00:00 - 10:30:00\n🏫 K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n👨‍🏫 Ahmad Zakir,ST.,M.Kom\n📅 Senin\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n', '2026-08-20 01:30:33'),
(122, '49113034944598@lid', 'jadwal kelas 4-1sore', 'Jadwal kelas 4-1sore tidak ditemukan.', '2026-08-20 01:30:50'),
(123, '49113034944598@lid', 'jadwal kelas 4-1 sore', '📚 *JADWAL KELAS 4-1 SORE*\n\n📖 Audit Sistem Informasi\n👨‍🏫 Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n📅 Jumat\n🕒 08:00:00 - 10:30:00\n🏫 Tutup\n\n📖 Etika Profesi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Senin\n🕒 17:30:00 - 19:00:00\n🏫 K-204\n\n📖 Etika Profesi\n👨‍🏫 Nurjamiyah,S.Kom,M.Cs\n📅 Senin\n🕒 19:00:00 - 20:30:00\n🏫 K-204\n\n', '2026-08-20 01:31:00'),
(124, '49113034944598@lid', 'NPM 222370025', '👨‍🎓 *DATA MAHASISWA*\n\nNama : Ramadhani Syahputra Ritonga\nNPM : 222370025\nJenis Kelamin : Laki-laki\nAngkatan : 2022\nSemester : 8\nNo HP : -', '2026-08-20 01:31:21'),
(125, '49113034944598@lid', 'mk etika profesi', '📖 *MATA KULIAH*\n\nNama :\nEtika Profesi\n\nSKS :\n2\n\nSemester :\n8', '2026-08-20 01:31:43'),
(126, '49113034944598@lid', 'daftar', 'Anda sudah terdaftar.', '2026-08-20 01:31:58'),
(127, '49113034944598@lid', 'faq syarat skripsi', '❓ Apa Syarat Skripsi?\n\n✅ Skripsi dapat diambil oleh mahasiswa dengan syarat telah menempuh kuliah minimal 122 SKS dan Indeks Prestasi minimal 2,50 dan sedang mengambil atau telah lulus mata kuliah bidang peminatan dan Kerja Praktek.', '2026-08-20 01:32:31'),
(128, '49113034944598@lid', 'dokumen', '📂 *DOKUMEN AKADEMIK*\n\n1. Undangan Seminar Nasional 10 Pohon Ilmu dan Rekor MURI\n2. Penyesuaian Jam Kerja dan Perkuliahan Terkait WFH\n3. Pengumuman Libur Idul Adha 1447H\n\nKetik: dokumen 1', '2026-08-20 01:34:36'),
(129, '49113034944598@lid', 'dokumen 2', 'Download dokumen: Penyesuaian Jam Kerja dan Perkuliahan Terkait WFH', '2026-08-20 01:34:50'),
(130, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-23 21:29:15'),
(131, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-23 23:46:50'),
(132, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 02:06:26'),
(133, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 02:38:21'),
(134, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 02:40:10'),
(135, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 02:40:49'),
(136, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 02:46:32'),
(137, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 03:46:11'),
(138, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 03:46:45'),
(139, '49113034944598@lid', 'dokumen', 'Terjadi kesalahan sistem.', '2026-08-24 03:46:58'),
(140, '49113034944598@lid', 'pengumuman', 'Terjadi kesalahan sistem.', '2026-08-24 03:47:07'),
(141, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-24 03:47:22'),
(142, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 20:02:57'),
(143, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n⚖ sidang (npm)\n🏢 kp (npm)\n🎤 seminar (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 20:21:43'),
(144, '49113034944598@lid', 'jadwal senin', '📚 *JADWAL KULIAH*\n\n1. Matematika Diskrit\n👨‍🏫 Dosen : Arie Rafika Dewi,S.Kom,M.Kom\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-202\n\n2. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-104\n\n3. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n4. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-203\n\n5. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-104\n\n6. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n7. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n8. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n9. Matematika Diskrit\n👨‍🏫 Dosen : Dr.Irvan,M.Si\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n10. Arsitektur SI/TI\n👨‍🏫 Dosen : Dedy Irwan,ST,M.Kom\n🏫 Kelas : 3-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-203\n\n11. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-202\n\n12. English for Entrepreneurship\n👨‍🏫 Dosen : Sri Rahayu,S.Ag,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n13. Etika Profesi\n👨‍🏫 Dosen : Andi Marwan Elhanafi,ST,M.Kom\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n14. Bahasa Indonesia\n👨‍🏫 Dosen : Ika Sari,S.Pd,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-201\n\n15. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-204\n\n16. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n', '2026-08-25 20:23:33'),
(145, '49113034944598@lid', 'npm 222370025', '👨‍🎓 *DATA MAHASISWA*\n\nNama : Ramadhani Syahputra Ritonga\nNPM : 222370025\nJenis Kelamin : Laki-laki\nAngkatan : 2022\nSemester : 8\nNo HP : -', '2026-08-25 20:23:52'),
(146, '49113034944598@lid', 'jadwal kelas 4-1 sore', '📚 *JADWAL KELAS 4-1 SORE*\n\n📖 Audit Sistem Informasi\n👨‍🏫 Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n📅 Jumat\n🕒 08:00:00 - 10:30:00\n🏫 Tutup\n\n📖 Etika Profesi\n👨‍🏫 Andi Marwan Elhanafi,ST,M.Kom\n📅 Senin\n🕒 17:30:00 - 19:00:00\n🏫 K-204\n\n📖 Etika Profesi\n👨‍🏫 Nurjamiyah,S.Kom,M.Cs\n📅 Senin\n🕒 19:00:00 - 20:30:00\n🏫 K-204\n\n', '2026-08-25 20:24:10'),
(147, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 21:05:49');
INSERT INTO `chatbot_log` (`id`, `nomor_wa`, `pesan`, `balasan`, `waktu`) VALUES
(148, '49113034944598@lid', 'jadwal senin', '📚 *JADWAL KULIAH*\n\n1. Matematika Diskrit\n👨‍🏫 Dosen : Arie Rafika Dewi,S.Kom,M.Kom\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-202\n\n2. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-104\n\n3. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n4. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-203\n\n5. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-104\n\n6. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n7. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n8. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n9. Matematika Diskrit\n👨‍🏫 Dosen : Dr.Irvan,M.Si\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n10. Arsitektur SI/TI\n👨‍🏫 Dosen : Dedy Irwan,ST,M.Kom\n🏫 Kelas : 3-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-203\n\n11. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-202\n\n12. English for Entrepreneurship\n👨‍🏫 Dosen : Sri Rahayu,S.Ag,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n13. Etika Profesi\n👨‍🏫 Dosen : Andi Marwan Elhanafi,ST,M.Kom\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n14. Bahasa Indonesia\n👨‍🏫 Dosen : Ika Sari,S.Pd,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-201\n\n15. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-204\n\n16. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n', '2026-08-25 21:05:59'),
(149, '49113034944598@lid', 'pengumuman', '📢 *PENGUMUMAN*\n\n1. UAS\nKartu ujian UAS sudah dapat di ambil d prodi. Dengan ketentuan sudah melunasi tagihan yg ada d portal masing2. Terima kasih\nTanggal : 8/7/2026\n\n', '2026-08-25 21:06:16'),
(150, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 21:49:53'),
(151, '49113034944598@lid', 'skripsi 222370025', '📚 *DATA SKRIPSI*\n\nNama :\nRamadhani Syahputra Ritonga\n\nJudul :\nRANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\nPembimbing :\nAhmad Zakir,ST.,M.Kom\n\nStatus :\nProses\n\nTanggal Sidang :\n30/10/2026', '2026-08-25 22:12:29'),
(152, '49113034944598@lid', 'seminar 222370025', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-25 22:13:36'),
(153, '49113034944598@lid', 'skripsi 222370025', '📚 *DATA SKRIPSI*\n\nNama :\nRamadhani Syahputra Ritonga\n\nJudul :\nRANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\nPembimbing :\nAhmad Zakir,ST.,M.Kom\n\nStatus :\nProses\n\nTanggal Sidang :\n30/10/2026', '2026-08-25 22:14:46'),
(154, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 22:24:31'),
(155, '49113034944598@lid', 'jadwal senin 4-1 sore', 'Jadwal tidak ditemukan.', '2026-08-25 22:24:42'),
(156, '49113034944598@lid', 'jadwal senin 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-25 22:24:53'),
(157, '49113034944598@lid', 'jadwal senin 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-25 22:25:14'),
(158, '49113034944598@lid', 'jadwal senin 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-25 22:35:31'),
(159, '49113034944598@lid', 'jadwal senin', '📚 *JADWAL KULIAH*\n\n1. Matematika Diskrit\n👨‍🏫 Dosen : Arie Rafika Dewi,S.Kom,M.Kom\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-202\n\n2. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-104\n\n3. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n4. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-203\n\n5. Audit Sistem Informasi\n👨‍🏫 Dosen : Yanti Faradillah Siahaan,ST,M.Si,M.Kom\n🏫 Kelas : 4-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-104\n\n6. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n7. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n8. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Ahmad Zakir,ST.,M.Kom\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n9. Matematika Diskrit\n👨‍🏫 Dosen : Dr.Irvan,M.Si\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n10. Arsitektur SI/TI\n👨‍🏫 Dosen : Dedy Irwan,ST,M.Kom\n🏫 Kelas : 3-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-203\n\n11. Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-202\n\n12. English for Entrepreneurship\n👨‍🏫 Dosen : Sri Rahayu,S.Ag,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n13. Etika Profesi\n👨‍🏫 Dosen : Andi Marwan Elhanafi,ST,M.Kom\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n14. Bahasa Indonesia\n👨‍🏫 Dosen : Ika Sari,S.Pd,M.Pd\n🏫 Kelas : 1-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-201\n\n15. Etika Profesi\n👨‍🏫 Dosen : Nurjamiyah,S.Kom,M.Cs\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : K-204\n\n16. Praktik Pemrograman Berbasis WEB\n👨‍🏫 Dosen : Septiana Dewi Andriana,S.Kom,M.Kom\n🏫 Kelas : 2-1 Sore\n📅 Hari : Senin\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n', '2026-08-25 22:35:48'),
(160, '49113034944598@lid', 'jadwal senin kelas 2-1 pagi', 'Jadwal tidak ditemukan.', '2026-08-25 22:36:03'),
(161, '49113034944598@lid', 'jadwal senin kelas 2-1 pagi', '📚 Jadwal kelas kelas 2-1 pagi pada hari senin tidak ditemukan.', '2026-08-25 22:57:55'),
(162, '49113034944598@lid', 'jadwal senin kelas 2-2 pagi', '📚 Jadwal kelas kelas 2-2 pagi pada hari senin tidak ditemukan.', '2026-08-25 22:59:59'),
(163, '49113034944598@lid', 'jadwal selasa kelas 1-2 pagi', '📚 Jadwal kelas kelas 1-2 pagi pada hari selasa tidak ditemukan.', '2026-08-25 23:00:38'),
(164, '49113034944598@lid', 'jadwal rabu kelas 2-2 pagi', '📚 Jadwal kelas kelas 2-2 pagi pada hari rabu tidak ditemukan.', '2026-08-25 23:01:03'),
(165, '49113034944598@lid', 'jadwal kelas 2-2 pagi', '📚 *JADWAL KELAS 2-2 PAGI*\n\n📖 Sistem Informasi Manajemen\n👨‍🏫 Arie Rafika Dewi,S.Kom,M.Kom\n📅 Kamis\n🕒 10:30:00 - 13:00:00\n🏫 K-203\n\n📖 Kecerdasan Buatan\n👨‍🏫 Eka Rahayu,S.Kom,M.Kom\n📅 Kamis\n🕒 13:00:00 - 15:30:00\n🏫 K-203\n\n📖 Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Rabu\n🕒 08:00:00 - 10:30:00\n🏫 K-203\n\n📖 Bahasa Indonesia\n👨‍🏫 Ika Sari,S.Pd,M.Pd\n📅 Rabu\n🕒 08:50:00 - 10:30:00\n🏫 k-202\n\n📖 Praktik Probabilitas dan Statistik\n👨‍🏫 Hasdiana,S.Kom,M.Kom\n📅 Rabu\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n📖 English for Entrepreneurship\n👨‍🏫 Dr.Dharmawati,S.Pd.M.Hum\n📅 Selasa\n🕒 10:30:00 - 12:10:00\n🏫 M-101\n\n📖 Sekuriti Sistem Informasi\n👨‍🏫 Husni Lubis,ST,M.Kom\n📅 Selasa\n🕒 10:30:00 - 13:00:00\n🏫 K-203\n\n📖 Kewarganegaraan\n👨‍🏫 Sugih Ayu Pratitis,SH,M.Hum\n📅 Selasa\n🕒 13:00:00 - 14:40:00\n🏫 K-203\n\n📖 Pemrograman Berbasis WEB\n👨‍🏫 Ahmad Zakir,ST.,M.Kom\n📅 Senin\n🕒 08:00:00 - 10:30:00\n🏫 K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n👨‍🏫 Ahmad Zakir,ST.,M.Kom\n📅 Senin\n🕒 10:30:00 - 11:20:00\n🏫 LAB\n\n', '2026-08-25 23:01:14'),
(166, '49113034944598@lid', 'jadwal senin 2-2 pagi', '📚 *JADWAL SENIN*\n🏫 Kelas : 2-2 PAGI\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n', '2026-08-25 23:01:32'),
(167, '49113034944598@lid', 'jadwal senin 2-1 pagi', '📚 *JADWAL SENIN*\n🏫 Kelas : 2-1 PAGI\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n📖 Matematika Diskrit\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Senin\n🕒 Jam : 13:00:00 - 15:30:00\n📍 Ruangan : K-201\n\n', '2026-08-25 23:01:48'),
(168, '49113034944598@lid', 'jadwal dosen ahmad zakir', '👨‍🏫 *JADWAL DOSEN AHMAD ZAKIR*\n\n📖 Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 08:00:00 - 10:30:00\n📍 Ruangan : K-201\n\n📖 Praktik Pemrograman Berbasis WEB\n🏫 Kelas : 2-2 Pagi\n📅 Hari : Senin\n🕒 Jam : 10:30:00 - 11:20:00\n📍 Ruangan : LAB\n\n', '2026-08-25 23:05:41'),
(169, '49113034944598@lid', 'jadwal dosen andi marwan', '👨‍🏫 *JADWAL DOSEN ANDI MARWAN*\n\n📖 Sistem Operasi\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Kamis\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-202\n\n📖 Praktik Sistem Operasi\n🏫 Kelas : 1-2 Pagi\n📅 Hari : Kamis\n🕒 Jam : 13:00:00 - 13:50:00\n📍 Ruangan : LAB\n\n📖 Sistem Operasi\n🏫 Kelas : 1-1 Sore\n📅 Hari : Kamis\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-201\n\n📖 Praktik Sistem Operasi\n🏫 Kelas : 1-1 Sore\n📅 Hari : Kamis\n🕒 Jam : 19:00:00 - 20:30:00\n📍 Ruangan : LAB\n\n📖 Sistem Operasi\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Selasa\n🕒 Jam : 10:30:00 - 13:00:00\n📍 Ruangan : K-201\n\n📖 Praktik Sistem Operasi\n🏫 Kelas : 2-1 Pagi\n📅 Hari : Selasa\n🕒 Jam : 13:00:00 - 13:50:00\n📍 Ruangan : LAB\n\n📖 Etika Profesi\n🏫 Kelas : 4-1 Sore\n📅 Hari : Senin\n🕒 Jam : 17:30:00 - 19:00:00\n📍 Ruangan : K-204\n\n', '2026-08-25 23:05:52'),
(170, '49113034944598@lid', 'npm 222370025', '👨‍🎓 *DATA MAHASISWA*\n\nNama : Ramadhani Syahputra Ritonga\nNPM : 222370025\nJenis Kelamin : Laki-laki\nAngkatan : 2022\nSemester : 8\nNo HP : -', '2026-08-25 23:06:03'),
(171, '49113034944598@lid', 'npm 2223700005', 'Mahasiswa Tidak Ditemukan.', '2026-08-25 23:06:11'),
(172, '49113034944598@lid', 'npm 222370005', '👨‍🎓 *DATA MAHASISWA*\n\nNama : Mhd Kabul Maulana\nNPM : 222370005\nJenis Kelamin : Laki-laki\nAngkatan : 2022\nSemester : 8\nNo HP : -', '2026-08-25 23:06:23'),
(173, '49113034944598@lid', 'dosen ahmad zakir', '👨‍🏫 *DOSEN*\n\nNama :\nAhmad Zakir,ST.,M.Kom\n\nKode :\nZKR', '2026-08-25 23:06:34'),
(174, '49113034944598@lid', 'dosen andi marwan', '👨‍🏫 *DOSEN*\n\nNama :\nAndi Marwan Elhanafi,ST,M.Kom\n\nKode :\nADM', '2026-08-25 23:06:40'),
(175, '49113034944598@lid', 'mk data mining', 'Mata kuliah tidak ditemukan.', '2026-08-25 23:06:56'),
(176, '49113034944598@lid', 'mk audit sistem informasi', '📖 *MATA KULIAH*\n\nNama :\nAudit Sistem Informasi\n\nSKS :\n3\n\nSemester :\n8', '2026-08-25 23:07:07'),
(177, '49113034944598@lid', 'pengumuman', '📢 *PENGUMUMAN*\n\n1. tes\ntes\nTanggal : 26/8/2026\n\n2. tes2\ntes2\nTanggal : 21/8/2026\n\n3. UAS\nKartu ujian UAS sudah dapat di ambil d prodi. Dengan ketentuan sudah melunasi tagihan yg ada d portal masing2. Terima kasih\nTanggal : 8/7/2026\n\n', '2026-08-25 23:07:23'),
(178, '49113034944598@lid', 'cekjudul chatbot', '⚠ *JUDUL SERUPA DITEMUKAN*\n\n1. RANCANG BANGUNCHATBOT AKADEMIK MENGGUNAKAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\n', '2026-08-25 23:07:33'),
(179, '49113034944598@lid', 'cekjudul penjualan', '⚠ *JUDUL SERUPA DITEMUKAN*\n\n1. PERANCANGAN SISTEM INFORMASI PENJUALAN SEPATU BERBASIS WEB PADA TOKO KIDIRO SECONDARY\n\n2. PENERAPAN METODE TIME SERIES DALAM MEMPREDIKSI PENJUALAN GALON AIR\n\n3. IMPLEMENTASI FRAMEWORK LARAVEL UNTUK PENGMBANGAN WEBSITE PENJUALAN AYAM POTONG DENGAN PEMANFAATAN MIDTRANS MENGGUNAKAN METODE FAST\n\n4. APLIKASI SISTEM PELAYANAN DAN PENJUALAN PRODUK PADA BENGKEL LAS BERBASIS WEB\r\n\n\n5. ANALISIS METODE TREND MOMENT SEBAGAI PERAMALAN(FORECAST) PENJUALAN UMKM DIMSUM\r\n\n\n6. IMPLEMENTASI METODE BUSSINESS TO BUSSINESS DALAM MENINGKATKAN PENJUALAN IKAN PADA PT. ASAHI SIBOLGA\n\n7. APLIKASI PELAPORAN PENJUALAN PRODUK IQOS BERBASIS WEB MENGGUNAKAN METODE PENGEMBANGAN SISTEM WATERFALL\n\n8. PERANCANGAN SISTEM UNTUK PENJUALAN ELEKTRONIK DAN JASA SERVIS STUDI KASUS PT PRIMAJAYA MULTI TECHNOLOGY BERBASIS WEB\n\n9. APLIKASI E-COMMERCE DENGAN METODE BUSSINESS MODEL CANVAS UNTUK MENINGKATKAN PENJUALAN INSHA PARFUM\n\n10. SISTEM INFORMASI PENJUALAN KAMBING ETAWA BERBASIS WEB MENGGUNAKAN METODE FIRST IN FIRST OUT(FIFO)\n\n11. IMPLEMENTASI TAMPILAN VISUAL 360 PADA SISTEM INFORMASI PENJUALAN KENDARAAN BEKAS BERBASIS WEB STUDI KASUS LAJU JAYA MOTOR\n\n12. PENERAPAN SISTEM INFORMASI PENJUALAN DESSERT BERBASIS WEB DENGAN PENDEKATAN POAC\n\n13. RANCANG BANGUN SISTEM MANAJEMEN TERINTEGRASI DAN PENJUALAN HEWAN PETERNAKAN DENGAN PENERAPAN METODE MANUFACTURING RESOURCE PLANNING PADA 3Z FARM\n\n14. IMPLEMENTASI METODE USER-CENTERED DESIGN PADA SISTEM MONITORING PENJUALAN PERSEDIAAN BARANG BERBASIS WEB PADA UD. BATOK INDAH PERABOT\n\n15. IMPLEMENTASI METODE  COLLABORATIVE FILTERING BERDASARKAN PREFERENSI KONSUMEN PADA PENJUALAN BUKET(BOUQUET)\n\n16. PENERAPAN REGION OF INTEREST (ROI) UNTUK OPTIMASI VISUALISASI GAMBAR PADA PENJUALAN MOBIL BEKAS\n\n', '2026-08-25 23:07:45'),
(180, '49113034944598@lid', 'skripsi 222370025', '📚 *DATA SKRIPSI*\n\nNama :\nRamadhani Syahputra Ritonga\n\nJudul :\nRANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI\n\nPembimbing :\nAhmad Zakir,ST.,M.Kom\n\nStatus :\nProses', '2026-08-25 23:08:01'),
(181, '49113034944598@lid', 'skripsi 222370005', 'Data skripsi tidak ditemukan.', '2026-08-25 23:08:10'),
(182, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:08:30'),
(183, '49113034944598@lid', 'kp', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-25 23:09:46'),
(184, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:09:58'),
(185, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:29:39'),
(186, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 23:36:48'),
(187, '49113034944598@lid', 'kp222370025', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-25 23:36:58'),
(188, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:37:04'),
(189, '49113034944598@lid', 'kp ramadhani', 'Terjadi kesalahan sistem.', '2026-08-25 23:37:31'),
(190, '49113034944598@lid', 'kp ramadhani syahputra ritonga', 'Terjadi kesalahan sistem.', '2026-08-25 23:37:47'),
(191, '49113034944598@lid', 'kkn 222370025', '🌍 *KKN*\n\nNama :\nRamadhani Syahputra Ritonga\n\nKelompok :\n1\n\nLokasi :\nKOPERASI MAKO LANUD SOEWONDO\n\nStatus :\nSelesai', '2026-08-25 23:38:54'),
(192, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:39:38'),
(193, '49113034944598@lid', 'kkn 222370005', '🌍 *KKN*\n\nNama :\nMhd Kabul Maulana\n\nKelompok :\n1\n\nLokasi :\nKOPERASI MAKO LANUD SOEWONDO\n\nStatus :\nSelesai', '2026-08-25 23:39:46'),
(194, '49113034944598@lid', 'dokumen', '📂 *DOKUMEN AKADEMIK*\n\n1. Undangan Seminar Nasional 10 Pohon Ilmu dan Rekor MURI\n2. Penyesuaian Jam Kerja dan Perkuliahan Terkait WFH\n3. Pengumuman Libur Idul Adha 1447H\n\nKetik: dokumen 1', '2026-08-25 23:40:07'),
(195, '49113034944598@lid', 'dokumen 3', 'Download dokumen: Pengumuman Libur Idul Adha 1447H', '2026-08-25 23:40:19'),
(196, '49113034944598@lid', 'daftar', 'Anda sudah terdaftar.', '2026-08-25 23:40:27'),
(197, '49113034944598@lid', 'berhenti', 'Berhasil berhenti berlangganan.', '2026-08-25 23:40:36'),
(198, '49113034944598@lid', 'daftar', 'Berhasil terdaftar notifikasi akademik.', '2026-08-25 23:40:40'),
(199, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 23:43:51'),
(200, '49113034944598@lid', 'kp 222370025', 'Terjadi kesalahan sistem.', '2026-08-25 23:43:58'),
(201, '49113034944598@lid', 'mene', 'Perintah tidak dikenali.\n\nKetik *menu* untuk melihat daftar layanan.', '2026-08-25 23:53:04'),
(202, '49113034944598@lid', 'menu', '\n\n🎓 CHATBOT AKADEMIK\n\n📚 jadwal (matkul)\n📚 jadwal kelas (kelas)\n📚 jadwal dosen (nama dosen)\n📅 kalender\n\n👨‍🎓 npm (npm)\n👨‍🏫 dosen (nama dosen)\n📖 mk (matkul)\n\n📢 pengumuman\n📝 cekjudul (judul)\n\n📚 skripsi (npm)\n🏢 kp (npm)\n🌍 kkn (npm)\n\n📄 dokumen\n\n🔔 daftar\n❌ berhenti\n\n', '2026-08-25 23:53:07'),
(203, '49113034944598@lid', 'kp 222370025', '🏢 *KERJA PRAKTEK*\n\nNama :\nRamadhani Syahputra Ritonga\n\nNPM :\n222370025\n\nPerusahaan :\nDSGN Printing\n\nPembimbing :\nAhmad Zakir,ST.,M.Kom\n\nTahun :\n2026', '2026-08-25 23:53:13'),
(204, '49113034944598@lid', 'kp 222370005', '🏢 *KERJA PRAKTEK*\n\nNama :\nMhd Kabul Maulana\n\nNPM :\n222370005\n\nPerusahaan :\nBADAN KEUANGAN DAN ASET DAERAH PEMPROVSU\n\nPembimbing :\nYanti Faradillah Siahaan,ST,M.Si,M.Kom\n\nTahun :\n2026', '2026-08-25 23:53:34'),
(205, '49113034944598@lid', 'kp 222370004', '🏢 *KERJA PRAKTEK*\n\nNama :\nMUHAMMAD SURYA ERLANGGA\n\nNPM :\n222370004\n\nPerusahaan :\nPDAM TIRTANADI CABANG PADANG BULAN\n\nPembimbing :\nHusni Lubis,ST,M.Kom\n\nTahun :\n2026', '2026-08-25 23:55:10'),
(206, '49113034944598@lid', 'kp 222370003', '🏢 *KERJA PRAKTEK*\n\nNama :\nTIFANY AUDRI DALIMUNTHE\n\nNPM :\n222370003\n\nPerusahaan :\nUNIT PELAKSANA TEKNIS DAERAH(UPTD) KHUSUS RUMAH SAKIT UMUM HAJI MEDAN BIDANG INSTALASI IT DAN SISTEM\n\nPembimbing :\nHasdiana,S.Kom,M.Kom\n\nTahun :\n2026', '2026-08-25 23:56:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `upload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama`, `kategori`, `file`, `upload`) VALUES
(3, 'Undangan Seminar Nasional 10 Pohon Ilmu dan Rekor MURI', 'Seminar', '1785085566216.pdf', '2026-07-27 00:06:06'),
(4, 'Penyesuaian Jam Kerja dan Perkuliahan Terkait WFH', 'Akademik', '1785085966469.pdf', '2026-07-27 00:12:46'),
(5, 'Pengumuman Libur Idul Adha 1447H', 'Libur', '1785085994978.pdf', '2026-07-27 00:13:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `kode`) VALUES
(3, 'Ahmad Zakir,ST.,M.Kom', 'ZKR'),
(5, 'Andi Marwan Elhanafi,ST,M.Kom', 'ADM'),
(6, 'Boni Oktaviana Sembiring,S.Kom,M.Kom', 'BON'),
(7, 'Dr.Dharmawati,S.Pd.M.Hum', 'DRW'),
(8, 'Ika Sari,S.Pd,M.Pd', 'IKS'),
(9, 'Marina Elsera,ST,M.Kom', 'MEL'),
(10, 'Sri Rahayu,S.Ag,M.Pd', 'SRY'),
(11, 'Tantri Hidayati Sinaga,S.Kom,M.Kom', 'THS'),
(12, 'Ahmad Taufiq,SH,MM', 'ATQ'),
(13, 'Husni Lubis,ST,M.Kom', 'HNL'),
(14, 'Hasdiana,S.Kom,M.Kom', 'HSD'),
(15, 'Sugih Ayu Pratitis,SH,M.Hum', 'SGA'),
(16, 'Septiana Dewi Andriana,S.Kom,M.Kom', 'SPN'),
(17, 'Arie Rafika Dewi,S.Kom,M.Kom', 'ARD'),
(18, 'Dedy Irwan,ST,M.Kom', 'DIW'),
(19, 'Edrian Hadinata,S.Kom,M.Kom', 'EHT'),
(20, 'Edy Rahman Syahputra,ST,M.Kom', 'ERS'),
(21, 'Fachrul Rozi Lubis,S.Kom,M.Kom', 'FZI'),
(22, 'Ihsan Lubis,ST,M.Kom', 'ILS'),
(23, 'Nurjamiyah,S.Kom,M.Cs', 'NJY'),
(24, 'Yanti Faradillah Siahaan,ST,M.Si,M.Kom', 'YAN'),
(25, 'Dr.Irvan,M.Si', 'IRV'),
(26, 'Eka Rahayu,S.Kom,M.Kom', 'EKA'),
(27, 'ARIF RIDHO LUBIS, M.Sc.IT', 'ARL'),
(28, 'DR. AL-KHOWARIZMI, S.KOM.,M.KOM', 'AK'),
(29, 'YULIA AGUSTINA DALIMUNTHE, S.KOM.,M.KOM', 'YAD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` text DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `kategori`) VALUES
(1, 'Bagaimana Cara Mengisi KRS?', 'Login <a href=\"https://siaunhar.harapan.ac.id/mahasiswa/\" target=\"_blank\">SIAUNHAR</a> → Pilih menu KRS → Isi mata kuliah → Submit', 'Akademik'),
(2, 'Bagaimana Cara Cuti Kuliah', 'Mahasiswa mengajukan surat cuti ke bagian akademik', 'Akademik'),
(3, 'Apa Syarat Skripsi?', 'Skripsi dapat diambil oleh mahasiswa dengan syarat telah menempuh kuliah minimal 122 SKS dan Indeks Prestasi minimal 2,50 dan sedang mengambil atau telah lulus mata kuliah bidang peminatan dan Kerja Praktek.', 'Akademik'),
(4, 'Apa Syarat Wisuda?', 'Lulus yudisium, bebas lab, bebas perpustakaan', 'Akademik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_mk` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `semester` int(4) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `ruangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_mk`, `id_dosen`, `semester`, `kelas`, `hari`, `jam_mulai`, `jam_selesai`, `ruangan`) VALUES
(3, 3, 7, 2, '2-1 Pagi', 'Selasa', '08:50:00', '10:30:00', 'K-201'),
(4, 4, 5, 2, '2-1 Pagi', 'Selasa', '10:30:00', '13:00:00', 'K-201'),
(5, 5, 5, 2, '2-1 Pagi', 'Selasa', '13:00:00', '13:50:00', 'LAB'),
(6, 6, 8, 2, '2-1 Pagi', 'Rabu', '10:30:00', '12:10:00', 'K-201'),
(7, 7, 9, 2, '2-1 Pagi', 'Rabu', '13:00:00', '15:30:00', 'K-202'),
(8, 8, 6, 2, '2-1 Pagi', 'Kamis', '10:30:00', '13:00:00', 'K-201'),
(9, 9, 6, 2, '2-1 Pagi', 'Kamis', '13:00:00', '13:50:00', 'LAB'),
(10, 3, 7, 2, '2-2 Pagi', 'Selasa', '10:30:00', '12:10:00', 'M-101'),
(11, 6, 8, 2, '2-2 Pagi', 'Rabu', '08:50:00', '10:30:00', 'k-202'),
(12, 7, 9, 2, '1-2 Pagi', 'Rabu', '10:30:00', '13:00:00', 'K-202'),
(13, 1, 17, 2, '1-2 Pagi', 'Senin', '08:00:00', '10:30:00', 'K-202'),
(14, 4, 5, 2, '1-2 Pagi', 'Kamis', '10:30:00', '13:00:00', 'K-202'),
(15, 5, 5, 2, '1-2 Pagi', 'Kamis', '13:00:00', '13:50:00', 'LAB'),
(16, 8, 6, 2, '1-2 Pagi', 'Jumat', '08:00:00', '10:30:00', 'K-202'),
(17, 9, 6, 2, '1-2 Pagi', 'Jumat', '10:30:00', '11:20:00', 'LAB'),
(18, 3, 10, 2, '1-1 Sore', 'Senin', '17:30:00', '19:00:00', 'K-201'),
(19, 6, 8, 2, '1-1 Sore', 'Senin', '19:00:00', '20:30:00', 'K-201'),
(20, 7, 9, 2, '1-1 Sore', 'Selasa', '17:30:00', '19:00:00', 'K-202'),
(21, 1, 25, 2, '1-1 Sore', 'Selasa', '19:00:00', '20:30:00', 'K-201'),
(22, 8, 11, 2, '1-1 Sore', 'Rabu', '17:30:00', '19:00:00', 'K-204'),
(23, 9, 11, 2, '1-1 Sore', 'Rabu', '19:00:00', '20:30:00', 'LAB'),
(24, 4, 5, 2, '1-1 Sore', 'Kamis', '17:30:00', '19:00:00', 'K-201'),
(25, 5, 5, 2, '1-1 Sore', 'Kamis', '19:00:00', '20:30:00', 'LAB'),
(26, 10, 16, 4, '2-1 Pagi', 'Senin', '10:30:00', '13:00:00', 'K-202'),
(27, 11, 16, 4, '2-1 Pagi', 'Senin', '10:30:00', '11:20:00', 'LAB'),
(28, 12, 14, 4, '2-1 Pagi', 'Selasa', '08:00:00', '10:30:00', 'K-202'),
(29, 13, 14, 4, '2-1 Pagi', 'Selasa', '10:30:00', '11:20:00', 'LAB'),
(30, 14, 13, 4, '2-1 Pagi', 'Selasa', '13:00:00', '15:30:00', 'K-202'),
(31, 15, 26, 4, '2-1 Pagi', 'Kamis', '08:00:00', '10:30:00', 'K-104'),
(32, 16, 15, 4, '2-1 Pagi', 'Kamis', '10:30:00', '12:10:00', 'K-104'),
(33, 17, 17, 4, '2-1 Pagi', 'Kamis', '13:00:00', '15:30:00', 'K-104'),
(34, 10, 3, 4, '2-2 Pagi', 'Senin', '08:00:00', '10:30:00', 'K-201'),
(35, 11, 3, 4, '2-2 Pagi', 'Senin', '10:30:00', '11:20:00', 'LAB'),
(36, 14, 13, 4, '2-2 Pagi', 'Selasa', '10:30:00', '13:00:00', 'K-203'),
(37, 16, 15, 4, '2-2 Pagi', 'Selasa', '13:00:00', '14:40:00', 'K-203'),
(38, 12, 14, 4, '2-2 Pagi', 'Rabu', '08:00:00', '10:30:00', 'K-203'),
(39, 13, 14, 4, '2-2 Pagi', 'Rabu', '10:30:00', '11:20:00', 'LAB'),
(40, 17, 17, 4, '2-2 Pagi', 'Kamis', '10:30:00', '13:00:00', 'K-203'),
(41, 15, 26, 4, '2-2 Pagi', 'Kamis', '13:00:00', '15:30:00', 'K-203'),
(42, 10, 16, 4, '2-1 Sore', 'Senin', '17:30:00', '19:00:00', 'K-202'),
(43, 11, 16, 4, '2-1 Sore', 'Senin', '19:00:00', '20:30:00', 'LAB'),
(44, 14, 13, 4, '2-1 Sore', 'Selasa', '17:30:00', '19:00:00', 'K-104'),
(45, 12, 14, 4, '2-1 Sore', 'Rabu', '17:30:00', '19:00:00', 'K-202'),
(46, 13, 14, 4, '2-1 Sore', 'Rabu', '19:00:00', '20:30:00', 'LAB'),
(47, 16, 12, 4, '2-1 Sore', 'Kamis', '16:30:00', '17:30:00', 'K-104'),
(48, 17, 17, 4, '2-1 Sore', 'Kamis', '17:30:00', '19:00:00', 'K-202'),
(49, 15, 26, 4, '2-1 Sore', 'Kamis', '19:00:00', '20:30:00', 'K-202'),
(50, 18, 20, 6, '3-1 Pagi', 'Selasa', '10:30:00', '13:00:00', 'K-204'),
(51, 19, 11, 6, '3-1 Pagi', 'Selasa', '13:00:00', '15:30:00', 'K-204'),
(52, 20, 21, 6, '3-1 Pagi', 'Rabu', '08:00:00', '10:30:00', 'K-204'),
(53, 27, 18, 6, '3-1 Pagi', 'Rabu', '08:00:00', '10:30:00', 'K-205'),
(54, 21, 22, 6, '3-1 Pagi', 'Rabu', '10:30:00', '13:00:00', 'K-204'),
(55, 22, 22, 6, '3-1 Pagi', 'Rabu', '13:00:00', '15:30:00', 'LAB'),
(56, 23, 19, 6, '3-1 Pagi', 'Kamis', '10:30:00', '13:00:00', 'K-204'),
(57, 24, 18, 6, '3-1 Pagi', 'Kamis', '13:00:00', '15:30:00', 'Tutup'),
(58, 19, 11, 6, '3-1 Pagi', 'Selasa', '10:30:00', '13:00:00', 'K-202'),
(59, 24, 18, 6, '3-1 Pagi', 'Selasa', '13:00:00', '15:30:00', 'Tutup'),
(60, 18, 23, 6, '3-2 Pagi', 'Rabu', '08:00:00', '10:30:00', 'K-201'),
(61, 20, 21, 6, '3-2 Pagi', 'Rabu', '10:30:00', '13:00:00', 'K-104'),
(62, 28, 18, 6, '3-2 Pagi', 'Rabu', '13:00:00', '15:30:00', 'K-214'),
(63, 21, 22, 6, '3-2 Pagi', 'Kamis', '08:00:00', '10:30:00', 'K-201'),
(64, 22, 22, 6, '3-2 Pagi', 'Kamis', '10:30:00', '11:20:00', 'LAB'),
(65, 23, 19, 6, '3-2 Pagi', 'Kamis', '13:00:00', '15:30:00', 'K-201'),
(66, 24, 18, 6, '3-1 Sore', 'Senin', '17:30:00', '19:00:00', 'K-203'),
(67, 21, 22, 6, '3-1 Sore', 'Selasa', '17:30:00', '19:00:00', 'K-203'),
(68, 22, 22, 6, '3-1 Sore', 'Selasa', '17:30:00', '19:00:00', 'LAB'),
(69, 23, 19, 6, '3-1 Sore', 'Rabu', '17:30:00', '19:00:00', 'K-203'),
(70, 20, 21, 6, '3-1 Sore', 'Rabu', '19:00:00', '20:30:00', 'K-203'),
(71, 19, 6, 6, '3-1 Sore', 'Kamis', '17:30:00', '19:00:00', 'K-203'),
(72, 18, 20, 6, '3-1 Sore', 'Kamis', '19:00:00', '20:30:00', 'K-203'),
(73, 25, 23, 8, '4-1 Pagi', 'Senin', '08:00:00', '10:30:00', 'K-203'),
(74, 26, 24, 8, '4-1 Pagi', 'Senin', '10:30:00', '13:00:00', 'K-104'),
(75, 26, 24, 8, '4-2 Pagi', 'Senin', '08:00:00', '10:30:00', 'K-104'),
(76, 25, 9, 8, '4-2 Pagi', 'Selasa', '13:00:00', '14:40:00', 'K-203'),
(77, 25, 5, 8, '4-1 Sore', 'Senin', '17:30:00', '19:00:00', 'K-204'),
(78, 25, 23, 8, '4-1 Sore', 'Senin', '19:00:00', '20:30:00', 'K-204'),
(79, 26, 24, 8, '4-1 Sore', 'Jumat', '08:00:00', '10:30:00', 'Tutup'),
(80, 1, 25, 2, '2-1 Pagi', 'Senin', '13:00:00', '15:30:00', 'K-201');

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul_skripsi`
--

CREATE TABLE `judul_skripsi` (
  `id_judul` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `dosen_pembimbing_1` int(11) DEFAULT NULL,
  `dosen_pembimbing_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `judul_skripsi`
--

INSERT INTO `judul_skripsi` (`id_judul`, `judul`, `id_mahasiswa`, `tahun`, `dosen_pembimbing_1`, `dosen_pembimbing_2`) VALUES
(4, 'SISTEM INFORMASI PERJALANAN DINAS BERBASIS WEB (STUDI KASUS : DPRD KOTA MEDAN)', 16, '2023', 20, 26),
(11, 'SISTEM INFORMASI LAPORAN KERUSAKAN BARANG PADA CV. MEKAR JAYA BERBASIS WEB', 17, '2023', 20, 6),
(12, 'PERANCANGAN SISTEM INFORMASI PENJUALAN SEPATU BERBASIS WEB PADA TOKO KIDIRO SECONDARY', 18, '2023', 27, 22),
(13, 'SISTEM PENDUKUNG KEPUTUSAN PENENTU CALON BARISTA BARU MENGGUNAKAN METODE MOORA PADA BROUW COFFEE SHOP', 227, '2023', 3, 14),
(14, 'SURVEY KEPUASAN PELANGGAN TERHADAP LAYANAN SERVICE AC MENGGUNAKAN METODE IMPORTANCE PERFORMANCE ANALYSIS(IPA)', 19, '2023', 3, 5),
(15, 'RANCANG BANGUN SISTEM INFOMASI DISPOSISI ONLINE BERBASIS WEB STUDI KASUS POLRESTABES MEDAN\r\n', 20, '2023', 3, 5),
(16, 'MODEL TRANSFORMASI PERPUSTAKAAN CERDAS DALAM MENINGKATKAN PROSES BISNIS\r\n', 21, '2023', 27, 28),
(17, 'IMPLEMENTASI METODE WEIGHTED PRODUCT UNTUK MENENTUKAN ALTERNATIF PARFUME TERBAIK (STUDI ', 22, '2023', 3, 5),
(18, 'RANCANG BANGUN SISTEM PEMENSANAN PAKAIAN TEMPAHAN BERBASIS WEB MENGGUNAKAN FRAMEWORK ', 23, '2023', 14, 13),
(19, 'RANCANGAN E-COMMERCE SABLON BAJU MENGGUNAKAN METODE PROTOTYPING PADA TOKO URBAN SABLON\r\n', 24, '2023', 3, 17),
(20, 'SISTEM INFORMASI JASA SEWA JAS DAN BLAZER BERBASIS WEB\r\n', 25, '2023', 6, 18),
(21, 'IMPLEMENTASI METODE SMART DALAM MENENTUKAN PUPUK ORGANIK PADA PERKEBUNAN KELAPA SAWIT DI ', 26, '2023', 22, 18),
(22, 'DETEKSI KATA SERAPAN TERHADAP DOKUMEN MENGGUNAKAN PENDEKATAN DEEP LEARNING\r\n', 27, '2023', 20, 13),
(23, 'APLIKASI OBJEK WISATA HALAL KABUPATEN DAIRI BERBASIS ANDROID\r\n', 28, '2023', 22, 13),
(24, 'APLIKASI MARKERLESS AUGMENTED REALITY UNTUK MEDIA INFORMASI UNHAR BERBASIS ANDROID\r\n', 29, '2023', 24, 23),
(25, 'SISTEM INFORMASI PARKIR MENGGUNAKAN QR CODE BERBASIS ANDROID PADA BANK SUMUT\r\n', 30, '2023', 24, 5),
(26, 'IMPLEMENTASI FRAMEWORK CODEIGNITER UNTUK PENGMBANGAN WEBSITE SISTEM PERHITUNGAN MASA TAHANAN DI SEKTOR KEPOLISIAN DELI TUA MEDAN', 31, '2023', 3, 21),
(27, 'WEBSITE EVENT SEBAGAI DAYA TARIK PARIWISATA KARO MENGGGUNAKAN FITUR MULTILANGUANGE\r\n', 32, '2023', 17, 21),
(28, 'PENERAPAN MEOTDE MEEP DALAM MENENTUKAN PRIORITAS PERBAIKAN JALAN RAYA PADA KABUPATEN DELI SERDANG', 33, '2023', 29, 18),
(29, 'PENERAPAN METODE TIME SERIES DALAM MEMPREDIKSI PENJUALAN GALON AIR', 34, '2023', 25, 29),
(30, 'SISTEM INFROMASI PERSEDIAAN BIBIT TANAM PADA PERKEBUNAN RERANABA KOTA BINJAI BERBASIS WEB\r\n', 35, '2023', 29, 18),
(31, 'APLIKASI KURSUS MOBIL BERBASIS WEB PADA PERUSAHAAN RAY MOBIL\r\n', 36, '2023', 6, 21),
(32, 'AUGUMENTED REALITY PENGENALAN KAMPUS FAKULTAS TEKNIK DAN KOMPUTER UNIVERSITAS HARAPAN MEDAN DENGAN METODE MARKER BASED TRACKING', 6, '2023', 9, 23),
(33, 'IMPLEMENTASI FRAMEWORK LARAVEL UNTUK PENGMBANGAN WEBSITE PENJUALAN AYAM POTONG DENGAN PEMANFAATAN MIDTRANS MENGGUNAKAN METODE FAST', 38, '2023', 17, 19),
(34, 'PERANCANGAN APLIKASI PENDATAAN KEMATIAN DAN LANSIA PADA KANTOR CAMAT MEDAN JOHOR BERBASIS WEB', 39, '2023', 6, 18),
(35, 'MEDAN WEDDING ORGANIZER BERBASIS WEB\r\n', 40, '2023', 3, 5),
(36, 'SISTEM INFORMASI MANAJEMEN DATA ASET PADA FALULTAS TEKNIK DAN KOMPUTER HARAPAN MEDAN BERBASIS WEB', 41, '2023', 20, 16),
(37, 'APLIKASI SISTEM PELAYANAN DAN PENJUALAN PRODUK PADA BENGKEL LAS BERBASIS WEB\r\n', 42, '2023', 6, 16),
(38, 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN MASKAPAI TERBAIK DI BANDARA KUALANAMU MENGGUNAKAN METODE WEIGHT PRODUCT', 43, '2023', 9, 23),
(39, 'PENERAPAN METODE ARAS PADA SISTEM PENDUKUNG KEPUTUSAN UNTUK MENENTUKAN OBAT YANG PALING DIBUTUHKAN PADA POLIKLINIK GIGI PADA RUMAH SAKIT PRINGADI MEDAN', 44, '2023', 11, 24),
(40, 'PERANCANGAN SISTEM ENTREPRISE RESOURCE PLANNING(ERP) MENGGUNAKAN MODUL INVENTORY PADA TOKO BANGUNAN SEDERHANA MANDIRI JAYA SEJAHTERA', 6, '2023', 27, 19),
(41, 'PERANCANGAN PROTOTYPE USER INTERFACE APLIKASI BOOKING WARNET PADA PPERUSAHAAN STREAM UNIVERSE MENGGUNAKAN METODE DESIGN THINKING', 46, '2023', 25, 23),
(42, 'ANALISIS PREDIKSI PERSEDIAAN STOK BARANG PADA TOKO SANTI FOTOCOPY MENGGUNAKAN ALGORITMA APRIORI BERBASIS WEB', 47, '2023', 26, 19),
(43, 'ANALISIS METODE TREND MOMENT SEBAGAI PERAMALAN(FORECAST) PENJUALAN UMKM DIMSUM\r\n', 48, '2023', 27, 28),
(44, 'IMPLEMENTASI METODE VIKOR DALAM MENENTUKAN BUKU BERDASARKAN TREN REFERENSI KONSUMEN PADA TOKO GRAMEDIA', 49, '2023', 14, 19),
(45, 'PENERAPAN METODE MULTIFACTOR EVALUATION PROCESS UNTUK MENENTUKAN PROGRAM TELEVISI TERBAIK ANAK ANAK TERBAIK', 50, '2023', 25, 9),
(46, 'PEMANFAATAN ALGORITMA APRIORI UNUTK MEREKOMENDASI PROSUK PADA PT.CENTECH METALS ENGUNEERING\r\n', 51, '2023', 20, 13),
(47, 'ANALISIS ASOSIASI RULE MINING DALAM REKOIMENDASI SPAREPART PADA BENGKEL SERVICE 227 MENGGUNAKAN ALGORITMA CT-PRO', 53, '2023', 14, 23),
(48, 'PENERAPAN METODE WEIGHT PRODUCT DALAM MENENTUKAN MEREK SEPATU LOKAL YANG PALING DIMINATI\r\n', 54, '2023', 6, 5),
(49, 'PERANCANGAN SISTEM POINT OF SALES MULTI PAYMENT BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL PADA UMKM MR.BOBA', 55, '2023', 14, 13),
(50, 'SISTEM INFOMASI PENGOLAHAN DATA SISWA BERBASIS WEB PADA SMK ASGA MANDIRI MENGGUNAKAN METODE WATERFALL', 56, '2023', 29, 17),
(51, 'PENERAPAN PAYMENT GATEAWAY BOOKING LAPANGAN MINI SOCCER', 57, '2023', 22, 17),
(52, 'PERBANDINGAN METODE MOORA DAN METODE SIMPLE ADDITIVE WEIGTH(SAW) UNTUK MENENTUKAN PUPUK TERBAIK PADA TANAMAN KACANG PANJANG', 58, '2023', 3, 17),
(53, 'SISTEM SIBARA PADA PENGADILAN MILITER MENGGUNAKAN METODE PROTOTYPING EVOLUSIONER DAN PIECES FRAMEWORK', 59, '2023', 11, 23),
(54, 'IMPLEMENTASI METODE BUSSINESS TO BUSSINESS DALAM MENINGKATKAN PENJUALAN IKAN PADA PT. ASAHI SIBOLGA', 60, '2023', 6, 26),
(55, 'APLIKASI SISTEM ADMINISTRASI PADA KANTOR KELURAHAN KWALA BERKALA BERBASIS WEB\r\n', 61, '2023', 26, 19),
(56, 'IMPLEMENTASI SISTEM PEMILIHAN AGEN PERUBAHAN PADA PENGADILAN MILITER TINGGI 1 MEDAN MENGGUNAKAN METODE TOPSIS', 62, '2023', 3, 21),
(57, 'RANCANG BANGUN APLIKASI PENCATAT MENU PELANGGAN BERBASIS ANDROID PADA BENU COFFEE SHOP MENGGUNAKAN METIDE AGILE', 63, '2024', 18, 13),
(58, 'PEMETAAN RUTE BUS LISTRIK DI KOTA MEDAN BERBASIS SISTEM INFORMASI GEOGRAFIS', 64, '2024', 19, 16),
(59, 'APLIKASI PELAPORAN PENJUALAN PRODUK IQOS BERBASIS WEB MENGGUNAKAN METODE PENGEMBANGAN SISTEM WATERFALL', 65, '2024', 5, 18),
(60, 'PENERAPAN METODE PROTOTYPR UNTUK APLIKASI COMPUTER BASED TEST DALAM MELAKUKAN SELEKSI PENERIMAAN KARYAWAN BARU', 66, '2024', 11, 16),
(61, 'RANCANG BANGUN APLIKASI REMINDER SERVICE UNTUK KENAIKAN PANGKAT DAN INFORMASI PENSIUN ASN MENGGUNAKAN WHATSAPP API BERBASIS WEBSITE', 67, '2024', 28, 16),
(62, 'APLIKASI PENGAJUAN UJI PRODUK PADA BALAI STANDARISASI DAN PELAYYANAN JADA INDUSTRI MEDAN MENGGUNAKAN METODE FAST', 68, '2024', 9, 23),
(63, 'PEMESANAN E TIKET BUS MENGGUNAKAN METODE AGILE PADA CV FINAL TRANSPORT', 69, '2024', 3, 6),
(64, 'E-KINERJA PEGAWAI MENGGUNAKAN METODE IMPORTANCE PERFORMANCE ANALYSIS(STUDI KASUS KLINIK ANDIKA)', 70, '2024', 14, 16),
(65, 'REPOSITORY SKRIPSI, KERJA PRAKTEK DAN KKN PADA PROGRAM STUDI SISTEM INFORMASI BERBASIS WEB\r\n', 71, '2024', 3, 9),
(66, 'IMPLEMENTASI METODE PEMBOBOTAN RANK ORDER CENTROID(ROC) PADA EVALUATION BASEN ON DISTANCE OPTIMALISASI PEMBERIAN INTENSIF KARYAWAN (STUDI KASUS PT. JUISHIN)', 72, '2024', 28, 24),
(67, 'ANALISIS DAN PERANCANGAN APLIKASI E-REGISTER ANGGOTA PERPUSTAKAAN DENGAN PIECE FRAMEWORK DAN METODE SINGLE SIGN ON', 73, '2024', 11, 19),
(68, 'IMPLEMENTASI METODE AGILE UNTUK PERANCANGAN WEBSITE DI DESA AEKLUNG DOLOKSANGGUL\r\n', 74, '2024', 17, 21),
(69, 'SISTEM INFORMASI APOTEK MAJU BERSAMA MENGGUNAKAN METODE PROTOTYPE BERBASIS WEB\r\n', 75, '2024', 5, 18),
(70, 'APLIKASI SIMULAI PEMANTAUAN DAN EVALUASI KINERJA PENYELENGGARAAN PELAYANAN PUBLIK KABUPATEN/KOTA', 76, '2024', 19, 16),
(71, 'RANCANG BANGUN APLIKASI SISTEM INFORMASI UNTUK MENGELOLA PEMBAYARAN MAINTENANCE PADA PERUMAHAN TAMAN RIVIERA MENGGUNAKAN METODE RAID', 77, '2024', 25, 19),
(72, 'PERANCANGAN SISTEM UNTUK PENJUALAN ELEKTRONIK DAN JASA SERVIS STUDI KASUS PT PRIMAJAYA MULTI TECHNOLOGY BERBASIS WEB', 78, '2024', 5, 18),
(73, 'SISTEM INFOMASI UNTUK MENENTUKAN KELAYAKAN OPERASIONAL BUS PADA PT. ALS(ANTAR LINTAS SUMATERA) MENGGUNAKAN METODE SMART BERBASIS WEB', 79, '2024', 18, 22),
(74, 'RANCANG BANGUN APLIKASI PENGAJUAN SIMPAN PINJAM PADA KOPERASI SIMPAN PINJAM DANA ARTA MANDIRI BERBASIS WEB', 80, '2024', 20, 14),
(75, 'APLIKASI PROSES TRANSAKSI MATERIAL BANGUNAN BERBASIS WEBSITE', 81, '2024', 28, 16),
(76, 'LAPORAN HASIL BELAJAR SISWA PADA SEKOLAH MIS ISLAMIYAH GUPPI', 82, '2024', 22, 13),
(77, 'SISTEM PENDUKUNG KEPUTUSAN PARTAI POLITIK YANG PALING BANYAK DIMINATI DI SUMATERA UTARA MENGGUNAKAN METODE SIMPLE ADDITIVE WEIGHTING(SAW)', 83, '2024', 24, 11),
(78, 'SISTEM INFORMASI NOTIFIKASI E-BOOKING PADA MEJA BILLIARD MENGGUNAKAN METODE SYSTEM DEVELOPMENT LIFE CYCLE', 84, '2024', 20, 9),
(79, 'SISTEM INFORMASI LAPORAN KINERJA PROGRAM STUDI PADA PROGRAM STUDI SISTEM INFORMASI BERBASIS WEB MENGGGUNAKAN METODE RAPID APPLICATION DEVELOPMENT', 85, '2024', 3, 21),
(80, 'SISTEM INFORMASI PENGADUAN LAYANAN BENCANA BERBASIS WEB', 86, '2024', 22, 13),
(81, 'PEMANFAATAN METODE SPIRAL DALAM APLIKASI GURU LES PRIVAT BERBASIS WEB\r\n', 6, '2024', 6, 14),
(82, 'PENGEMBANGAN APLIKASI GAME KUIS MATEMATIKA INTERAKTIF MENGGUNAKAN UNITY 2D AGAR MENINGKATKAN KECERDASAN DAN MINAT DALAM MENGHITUNG', 88, '2024', 9, 26),
(83, 'SISTEM INFORMASI PRAKERIN UNTUK MEMONITORING PRAKTIK KERJA LAPANGAN BERBASIS WEBSITE MENGGUNAKAN PIECES FRAMEWORK', 89, '2024', 3, 11),
(84, 'SISTEM REKOMENDASI MAKANAN KUCING BERBASIS WEB MENGGUNAKAN METODE COLLABORATIVE FILTERING\r\n', 90, '2024', 17, 21),
(85, 'E-COMMERCE FOOD PADA DAPUR A&A BERBASIS WEBSITE', 91, '2024', 26, 23),
(86, 'PENGEMBANGAN E-COMMERCE DENGAN PENDEKATAN RAPID APPLICATION DEVELOPMENT(RAD) PADA UMKM BOLLEN PISANG ESTU SARI', 92, '2024', 28, 11),
(87, 'PERANCANGAN E-COMMERCE GALERI SONGKET MENGGUNAKAN METODE AGILE', 93, '2024', 6, 11),
(88, 'APLIKASI E-COMMERCE DENGAN METODE BUSSINESS MODEL CANVAS UNTUK MENINGKATKAN PENJUALAN INSHA PARFUM', 94, '2024', 26, 5),
(89, 'SISTEM INFORMASI PENJUALAN KAMBING ETAWA BERBASIS WEB MENGGUNAKAN METODE FIRST IN FIRST OUT(FIFO)', 95, '2024', 20, 14),
(90, 'IMPLEMENTASI METODE MULTI-ATTRIBUTIVE BORDER APPROXIMATION KUALITAS BATU BATA TERBAIK\r\n', 96, '2024', 20, 21),
(91, 'APLIKASI COMPUTER BASED TEST (CBT) BERBASIS WEB MENGGUNAKAN METODE RAD PADA SMA NEGERI 21 MEDAN', 97, '2024', 19, 24),
(92, 'ANALISIS SWOT DALAM PENERAPAN PORTAL BERITA RADIO TRIJAYA FM', 98, '2024', 11, 26),
(93, 'PENERAPAN METODE UCD DALAM PERANCANGAN APLIKASI TABUNGAN SIMPEL DI MTS AL-MANAR WEBSITE\r\n', 99, '2024', 3, 26),
(94, 'ANALISA PERBANDINGAN METODE SMART DENGAN WASPAS DALAM PENERIMAAN MEKANIK BARU PADA PT. DAYA ANUGRAH MANDIRI BERBASIS WEBSITE', 100, '2024', 11, 13),
(95, 'RANCANG BANGUN APLIKASI PENGAJUAN DAN PENGGUNAAN KEBUTUHAN ALAT KESEHATAN (STUDI KASUS RUMAH SAKIT MITRA MEDIKA BANDAR KLIPPA) MENGGUNAKAN METODE PROTOTYPE', 101, '2024', 3, 5),
(96, 'RANCANG BANGUN SISTEM PEMESANAN MENU MAKANAN DAN MINUMAN BERBASIS WEBSITE DENGAN MENGGUNAKAN METODE PROROTYPR PADA WARUNK JURAGAN', 102, '2024', 3, 26),
(97, 'SISTEM INFORMASI PEMASANGAN DAN GANGGUAN WIFI DI SUMBAGUT PADA PT ICONPLUS BERBASIS WEB\r\n', 103, '2024', 28, 16),
(98, 'PENERAPAN METODE FULL COSTING DALAM MENENTUKAN HARGA JUAL PRODUK HASIL PERCERAKAN BERBASIS WEB STUDI KASUS CV. HARCO NANCY', 104, '2025', 9, NULL),
(99, 'IMPLEMENTASI TAMPILAN VISUAL 360 PADA SISTEM INFORMASI PENJUALAN KENDARAAN BEKAS BERBASIS WEB STUDI KASUS LAJU JAYA MOTOR', 105, '2025', 5, NULL),
(100, 'SISTEM INFORMASI REKAM MEDIS DAN LAYANAN KLINIK HEWAN BERBASIS WEB  DENGAN METODE WATERFALL PADA UNIT PELAKSANA TEKNIS DAERAH(UPTD) KLINIK KESEHATAN HEWAN KOTA MEDAN', 106, '2025', 3, NULL),
(101, 'SMART LOGISTICS : OPTIMASI DIGITAL TATA LETAK DAN ANTRIAN PETI KEMAS BERBASIS WEB DI PT. PRIMA INDONESIA LOGISTIK MENGGUNAKAN LARAVEL', 107, '2025', 16, NULL),
(102, 'PEMBUATAN SISTEM ABSENSI PEGAWAI MENGGUNAKAN TEKNOLOGI PENGENALAN WAJAH DENGAN MTCNN DI PT. RAHAYU PERDANA TRANS', 108, '2025', 17, NULL),
(103, 'E-SALES SPAREPART MOBILE BEKAS MENEGGUNAKAN METODE RAPID APPLICATION DEVELOPMENT(RAD)\r\n', 109, '2025', 9, NULL),
(104, 'IMPLEMENTASI METODE SIMPLE MULTY ATRIBUTE RATING TECHNIQUE(SMART) DALAM SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN MAKANAN DRY FOOD KITTEN', 110, '2025', 17, NULL),
(105, 'DETEKSI MALWARE BERBASISKAN ANALISA STATIS DAN DINAMIS MENGGUNAKAN ALGORITMA CONVOLUTIONAL NEURAL NETWORK(CNN)', 111, '2025', 19, NULL),
(106, 'PENERAPAN SISTEM INFORMASI PENJUALAN DESSERT BERBASIS WEB DENGAN PENDEKATAN POAC', 112, '2025', 11, NULL),
(107, 'RANCANG BANGUN SISTEM MANAJEMEN TERINTEGRASI DAN PENJUALAN HEWAN PETERNAKAN DENGAN PENERAPAN METODE MANUFACTURING RESOURCE PLANNING PADA 3Z FARM', 113, '2025', 26, NULL),
(108, 'RANCANG BANGUN APLIKASI LAPORAN PENGELOLAAN DANA DESA BERBASIS WEB DI KANTOR DESA SENA DUSUN V', 114, '2025', 23, NULL),
(109, 'SISTEM INFORMASI E-LEARNING BERBASIS WEBSITE MENGGUNAKAN FRAMEWORK CODEIGNITER PADA SEKOLAH SMP AL-WASHLIYAH 24 MEDAN', 115, '2025', 26, NULL),
(110, 'IMPLEMENTASI MODEL BUSSINESS TO BUSSINESS DALAM PEMASARAN PRODUK JAMU DAPOER NISWAH MENGGUNAKAN FRAMEWORK LARAVEL', 116, '2025', 6, NULL),
(111, 'SISTEM TRACKING STOK REMPAH BERBASIS QR CODE DENGAN NOTIFIKASI REAL-TIME STUDI KASUS TOKO HERA REMPAH', 117, '2025', 9, NULL),
(112, 'PEMANFAATAN TEKNOLOGI INFORMASI UNTUK MENIGKATKAN PELAYANAN PADA KOLAM RENANG KUALA MEGA BERBASIS WEBSITE', 118, '2025', 6, NULL),
(113, 'PENGEMBANGAN APLIKASI WEB BERBASIS LARAVEL UNTUK EKSPLORASI & PROMOSI DAERAH WISATA TANJUNGBALAI DALAM MENDUKUNG PENINGKATAN KUNJUNGAN WISATAWAN', 119, '2025', 16, NULL),
(114, 'PENGELOMPOLAN DATA SISWA PRESTASI DALAM SISTEM PENGAMBILAN KEPUTUSAN MENGGUNAKAN METODE WEIGHT PRODUCT DI SMA AN-NIZAM MEDAN', 120, '2025', 22, NULL),
(115, 'SISTEM INFORMASI GEOGRAFIS UNTUK VISUALISASI SEBARAN WILAYAH PENGABDIAN GERAKAN SUMUT MENGAJAR MENGGUNAKAN METODE RAD', 121, '2025', 18, NULL),
(116, 'SISTEM INFORMASI PENGELOLAAN ANGGARAN KOST AFYM MMTC BERBASIS WEB MENGGUNAKAN METODE PROTOTYPE', 122, '2025', 18, NULL),
(117, 'SISTEM MONITORING TUMBUH KEMBANG ANAK BERBASIS WEB MENGGUNAKAN METODE RAPID APPLICATION DEVELOPMENT STUDI KASUS UPT PUSKESMAS MEDAN JUHOR', 123, '2025', 3, NULL),
(118, 'PERANCANGAN SISTEM INFORMASI NOTIFIKASI KADALUARSA OBAT PADA APOTEK BERKAH JAYA DENGAN METODE FIRDT EXPIRED FIRST OUT(FEFO)', 124, '2025', 21, NULL),
(119, 'PENERAPAN SISTEM HRMS BERBASIS WEB UNTUK SELEKSI DAN REKOMENDASI KARYAWAN DENGAN METODE K-NEAREST NEIGHTBOR(KNN)', 125, '2025', 22, NULL),
(120, 'PERANCANGAN SISTEM PENDISTRIBUSI DAN PENDATA STOK ROKOK MULTI-USER SECARA REAL-TIME BERBASIS WEB DI PERUSAHAAN ROKOK MENGGUNAKAN METODE V-MODEL', 126, '2025', 5, NULL),
(121, 'ANALISIS SENTIMEN TERHADAP ULASAN CASHLESS MENGGUNAKAN METODE KNOWLEDGE DISCOVERY DATABASE BERBASIS WEB', 127, '2025', 20, NULL),
(122, 'SISTEM INFORMASI PENYEWA ALAT BERAT PADA PT. TRIMURTI PERKASA DENGAN METODE SCRUM BERBASIS WEB', 128, '2025', 17, NULL),
(123, 'PERANCANGAN PROTOTYPE UI/UX WEBSITE PENDAFTARAN PESERTA DIDIK BARU BERBASIS DESIGN THINKING PADA MA AZ-ZUHRI KECAMATAN TANJUNG MORAWA', 129, '2025', 19, NULL),
(124, 'SMART UMROH: DESIGN AND DEVELOPMENT DATA ADMINISTRASI JAMAAH DI PT AMINDY BAROKAH BERSAMA TOUR AND TRAVEL BERBASIS MOBILE APPS', 130, '2025', 16, NULL),
(125, 'PENGENBANGAN SISTEM MANAJEMEN STOK OBAT BERBASIS WEB DENGAN METODE LEAN SOFTWARE DEVELOPMENT(LSD) UNTUK MONITORING DAN KLASIFIKASI WAKTU  KEDALUARDSA PADA OBAT', 131, '2025', 14, NULL),
(126, 'RANCANG BANGUN SISTEM INFORMASI  GEOGRAFIS BERBASIS WEB UNTUK PENCARIAN LOKASI WISATA KULINER PADA KOTA MEDAN MENGGUNAKAN METODE EUCLIDEAN DISTANCE', 132, '2025', 9, NULL),
(127, 'SISTEM INFORMASI MONITORING HASIL TAMBANG NASIONAL BERBASIS WEB', 133, '2025', 24, NULL),
(128, 'SISTEM INFORMASI PEMESANAN PRODUK CETAK DENGAN EDITOR DESAIN INTERAKTIIF BERBASIS WEB STUDI KASUS CV. MEGA TAMA PRIMA', 134, '2025', 3, NULL),
(129, 'SISTEM INFORMASI RESERVASI MINI SOCCER BERBASIS WEB MENGGUNAKAN FRAMEWORK CODEIGNEITER', 136, '2025', 20, NULL),
(130, 'EVALUASI KINERJA KARYWAN MENGGUNAKAN METODE ANP(ANALYSTIC NETWORK PROCESS) UNTUK PENENTUAN KARYWAN TERBAIK PADA PT. ANEKA TEKNINDO PERSADA', 137, '2025', 5, NULL),
(131, 'IMPLEMENTASI METODE USER-CENTERED DESIGN PADA SISTEM MONITORING PENJUALAN PERSEDIAAN BARANG BERBASIS WEB PADA UD. BATOK INDAH PERABOT', 138, '2025', 17, NULL),
(132, 'IMPLEMENTASI METODE EXTREME PROGRAMING(XP) UNTUK MENIGKATKAN DAYA JUAL PADA UMKM BATIK BERBASIS WEBSITE', 139, '2025', 11, NULL),
(133, 'RANCANG BANGUN WEBSITE E-COMMERCE CAMILAN DENGAN SISTEM PRE-ORDER DAN NOTIFIKASI STUDI KASUS CAMILAN FOODKUY', 140, '2025', 14, NULL),
(134, 'RANCANG BANGUN SISTEM INFORMASI COFFEE SHOP BERBASIS MOBILE DENGAN METODE RAD STUDI KASUS PASSLA COFFEE', 141, '2025', 22, NULL),
(135, 'IMPLEMENTASI GAME QUIZ BAHASA KOREA BERBASIS MOBILE APPS MENGGUNAKAN METODE GAME DEVELOPMENT LIFE CYCLE(GDLC)', 142, '2025', 11, NULL),
(136, 'PENERAPAN SISTEM INFORMASI  PARIWISATA DI KABUPATEN NIAS SELATAN MENGGUNAKAN METODE USER CENTERED DESIGN(UCD)', 143, '2025', 5, NULL),
(137, 'IMPLEMENTASI HYBRID ONNLINE LEARNING DENGAN FITUR NOTIFIKASI WHATSAPP MENGGUNAKAN METODE SCRUM DI SMA ANGKASA 1', 144, '2025', 5, NULL),
(138, 'PERANCANGAN MOBILE APPS MENU PESAN ANTAR HIDANGAN KULINER PADA RUMAH MAKAN PUTRA RANG  TANJUNG MENGGUNAKAN METODE RAD', 145, '2025', 20, NULL),
(139, 'IMPLEMENTASI METODE V-MODEL DALAM APLIKASI PENCARIAN BAKAT BERBASIS WEB UNTUK INDUSTRI HIBURAN MENGGUNAKAN FRAMEWORK LARAVEL', 146, '2025', 6, NULL),
(140, 'RANCANG BANGUN SISTEM POINT OF SALE(POS) PADA RAMA COFFEE MEDAN MENGGUNAKAN METODE RAPID APPLICATION DEVELOPMENT(RAD)\r\n', 147, '2025', 24, NULL),
(141, 'IMPLEMENTASI ALGORITMA SVM (SUPPORT VECTOR MACHINE) DALAM MEMPREDIKSI HASIL PRODUKSI SARANG BURUNG WALET STUDI KASUS PT. ORI GINALNEST INDONESIA', 148, '2025', 26, NULL),
(142, 'ANALISIS PENGGUNAAN LEARNING MANAGEMENT SYSTEM PADA MAHASISWA SISTEM INFORMASI UNIVERSITAS HARAPAN MEDAN DENGAN MENGGUNAKAN METODE K-MEANS', 149, '2025', 13, NULL),
(143, 'PREDIKSI JUMLAH PEMINAT EKSTRAKULIKULER SEKOLAH MENGGUNAKAN FUZZY TIME SERIES BERBASIS WEB\r\n', 150, '2025', 11, NULL),
(144, 'APLIKASI DISTRIBUSI PUPUK MASUK DAN KELUAR PADA UD. HIJAU PUPUK', 151, '2025', 22, NULL),
(145, 'PERANCANGAN WEBSITE PUCAKO COFFEE ROASTERY MENGGUNAKAN METODE AGILE', 152, '2025', 5, NULL),
(146, 'SISTEM INFORMASI BERBASIS WEB DI PT. PANIN DAI-CHI LIFE MENGGUNAKAN OBJECT ORIENTED ANALYSIS DAN DESIGN(OOAD)', 153, '2025', 24, NULL),
(147, 'PENGAMBANGAN KONTRAK PERJANJIAN DIGITAL STUDI KASUS SISTEM INFORMASI PENYEWAAN PAKAIAN ADAT\r\n', 155, '2025', 19, NULL),
(148, 'IMPLEMENTASI WEBGIS UNTUK NAVIGASI RUTE DAN MONITORING HYDRANT PEMADAM KEBAKARAN DI KORA MEDAN DENGAN METODE PROTOTYPE', 156, '2025', 11, NULL),
(149, 'IMPLEMENTASI METODE  COLLABORATIVE FILTERING BERDASARKAN PREFERENSI KONSUMEN PADA PENJUALAN BUKET(BOUQUET)', 157, '2025', 24, NULL),
(150, 'IMPLEMENTASI METODE PROTOTYPE PADA SISTEM PAYMENT GATEWAY UNTUK SEPATU KOTAMA', 158, '2025', 11, NULL),
(151, 'SISTEM INFORMASI JASA TITIP PRODUK BERBASIS WEB MENGGUNAKAN FRAMEWORK LARAVEL DENGAN METODE DESIGN THINKING', 159, '2025', 14, NULL),
(152, 'PERANCANGAN DAN IMPLEMENTASI APLIKASI TRYOUT ONLINE BERBASIS WEB DENGAN FITUR MANAJEMEN SOAL DAN PENDAFTARAN TERINTEGRASI', 160, '2025', 5, NULL),
(153, 'PENERAPAN REGION OF INTEREST (ROI) UNTUK OPTIMASI VISUALISASI GAMBAR PADA PENJUALAN MOBIL BEKAS', 161, '2025', 3, NULL),
(154, 'RANCANG BANGUNCHATBOT AKADEMIK MENGGUNAKAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI', 6, '2026', 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kalender_akademik`
--

CREATE TABLE `kalender_akademik` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(150) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kalender_akademik`
--

INSERT INTO `kalender_akademik` (`id`, `kegiatan`, `tanggal_mulai`, `tanggal_selesai`, `kategori`) VALUES
(1, 'UAS', '2026-07-13', '2026-07-18', 'Akademik'),
(2, 'Ujian Remedial', '2026-08-04', '2026-08-07', 'Akademik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerja_praktik`
--

CREATE TABLE `kerja_praktik` (
  `id_kp` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `dosen_pembimbing` int(11) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kerja_praktik`
--

INSERT INTO `kerja_praktik` (`id_kp`, `id_mahasiswa`, `judul`, `dosen_pembimbing`, `tahun`) VALUES
(2, 162, 'PDAM TIRTANADI CABANG PADANG BULAN', 13, '2026'),
(3, 6, 'DSGN PRINTING BAGIAN OPERATOR MESIN', 3, '2026'),
(4, 8, 'SMP SWASTA YAPIM BIRU-BIRU', 24, '2026'),
(5, 15, 'PEKERJAAN UMUM DAN PENATAAN RUANG PROVINSI SUMATERA UTARA', 6, '2026'),
(6, 7, 'BADAN KEUANGAN DAN ASET DAERAH PEMPROVSU', 24, '2026'),
(7, 189, 'KANTOR CAMAT KECAMATAN BESITANG BIDANG PERPAJAKAN', 11, '2026'),
(8, 190, 'KANTOR PT. ODY LESTARI ADVERTISING BIDANG EDITING DAN PROMOSI', 22, '2026'),
(9, 191, 'DINAS PERDAGANGAN DAN ESDM PROVINSI SUMATERA UTARA BAGIAN DISTRIBUSI BARANG KEBUTUHAN POKOK', 5, '2026'),
(10, 192, 'DINAS PERDAGANGAN DAN ESDM PROVINSI SUMATERA UTARA BAGIAN STABILISASI DAN PENGENDALIAN ', 5, '2026'),
(11, 193, 'ADMINISTRASI PENGELOLAAN DATA PADA PT. TARIA_2NDSHOES BAGIAN PEMASARAN', 20, '2026'),
(12, 194, 'PT MEGA PERINTIS TBK PLAZA MEDAN FAIR DI BAGIAN SALES ASSOCIATE', 21, '2026'),
(13, 195, 'PROSES KERJA PRAKTIK PERUMDA TIRTANADI PROVINSI SUMATERA UTARA DISIVI SUMBER DAYA MANUSIA(SDM)', 19, '2026'),
(14, 196, 'PDAM CABANG PADANG BULAN BAGIAN UMUM', 13, '2026'),
(15, 197, 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU KOTA MEDAN BAGIAN MULTIMEDIA', 9, '2026'),
(16, 198, 'KEJAKSAAN TINGGI SUMATERA UTARA DIVISI PERPUSATAKAAN', 9, '2026'),
(17, 199, 'DINAS PERINDUSTRIAN, PERDAGANGAN ENERGI DAN SUMBER DAYA MINERAL PROVINSI SUMATERA UTARA BIDANG SEKRE', 9, '2026'),
(18, 200, 'PT. BANK SUMUT CABANG PEMBANTU KCP DEKI TUA BAGIAN BISNIS', 17, '2026'),
(19, 201, 'PROSES PENDATAAN PEDAGANG SERTA KIOS PADA BIDANG PERENCANAAN SISTEM PASAR UMUM DAERAH(PUD) PASAR KOT', 19, '2026'),
(20, 202, 'PERAN IT SUPPORT DALAM PROSES BISNIS PEMBAYARAN DIGITAL (VIRTUAL ACCOUNT) DI PERUSAHAAN UMUM DAERAH(', 19, '2026'),
(21, 203, 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH KABUPATEN DELI SERDANG PADA BIDANG KELEMBAGAAN DAN USAHA KO', 23, '2026'),
(22, 204, 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH KABUPATEN DELI SERDANG BIDANG PEMBERDAYAAN USAHA MIKRO', 23, '2026'),
(23, 205, 'KANTOR PERUMNAS PROYEK SUMUT DIVISI KEUANGAN', 16, '2026'),
(24, 206, 'PT. TRANS ENGINEERING SENTOSA BAGIAN KEUANGAN', 16, '2026'),
(25, 207, 'LEMBAGA PEMBAYARAN PUBLIK TVRI SUMATERA UTARA BAGIAN PLAYOUT CLIENT', 3, '2026'),
(26, 208, 'UNIT PELAKSANA TEKNIS DAERAH(UPTD) KHUSUS RUMAH SAKIT UMUM HAJI MEDAN BIDANG INSTALASI IT DAN SISTEM', 14, '2026'),
(27, 209, 'PT PLN ICON PLUS STRATEGIC BUSSINESS UNIT REGIONAL SUMBAGUT BAGIAN PEMBANGUNAN', 3, '2026'),
(28, 210, 'PT. KENCANA PERMATA NUSANTARA SUMUT BAGIAN PERSONALIA', 17, '2026'),
(29, 211, 'UNIVERSITAS HARAPAN MEDAN FAKULTAS TEKNIK DAN KOMPUTER BAGIAN ADMINISTRASI', 20, '2026'),
(30, 212, 'UNIVERSITAS HARAPAN MEDAN FAKULTAS TEKNIK DAN KOMPUTER BAGIAN SUMBER DAYA MANUSIA(SMD)', 20, '2026'),
(31, 213, 'PT PLN ICON PLUS SBU REGIONAL SUMBAGUT BAGIAN SALES', 5, '2026'),
(32, 214, 'PT PLN ICON PLUS SBU REGIONAL SUMBAGUT BAGIAN ADEV(ADMINISTRASI EVALUASI)', 17, '2026'),
(33, 215, 'LEMBAGA PENYIARAN PUBLIK TVRI SUMATERA UTARA PADA BAGIAN APLIKASI CHARGEN', 3, '2026'),
(34, 216, 'LEMBAGA PENYIARAN PUBLIK TVRI SUMATERA UTARA PADA BAGIAN APLIKASI CHARGEN', 3, '2026'),
(35, 218, 'PT. ASTRA INTERNASIONAL TOYOTA AUTO 2000 MEDAN MARELAN DI BIDANG ADMINISTRASI SERVIS DAN BENGKEL', 23, '2025'),
(36, 159, 'PT PLPN(PERSERO) UNIT INDUK DISTRIBUSI BAGIAN KOMUNIKASI & TANGGUNG JAWAB SOSIAL DAN LINGKUNGAN(TJSL', 24, '2025'),
(37, 144, 'RUMAH SAKIT UMUM HAJI MEDAN BIDANG PENDIDIKAN DAN PELATIHAN', 24, '2025'),
(38, 220, 'RUMAH SAKIT HAJI MEDAN PROVINSI SUMATERA UTARA BIDANG PENELITIAN DAN PENGEMBANGAN', 24, '2025'),
(39, 221, 'PANITIA PENGAWAS PEMILIHAN UMUM KECAMATAN BATANG KUIS PADA BIDANG ORGANISASI SUMBER SAYA MANUSIA(OSD', 22, '2025'),
(40, 222, 'SISTEM PENJUALAN KREDIT KENDARAAN BERMOTOR RODA DUA PADA CV. DUTA MOTOR', 3, '2025'),
(41, 223, 'PT PLN PERSERO UNIT INDUK DISTRIBUSI SUMATERA UTARA DIVIS MEKANISME NIAGA DAN PIUTANG', 9, '2025'),
(42, 224, 'PT. SULIS ALTHA ABADI BAGIAN ADMIN AKTIVASI', 5, '2025'),
(43, 225, 'PELAKSANAAN KERJA PRAKTIK PADA DINAS LINGKUNGAN HIDUP DAN KEHUTANAN PROVINSI SUMATERA UTARA PADA BID', 6, '2025');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kkn`
--

CREATE TABLE `kkn` (
  `id_kkn` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `kelompok` varchar(20) DEFAULT NULL,
  `dosen_pembimbing` int(11) DEFAULT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kkn`
--

INSERT INTO `kkn` (`id_kkn`, `id_mahasiswa`, `lokasi`, `kelompok`, `dosen_pembimbing`, `periode`, `status`) VALUES
(1, 6, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai'),
(2, 7, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai'),
(3, 8, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai'),
(4, 15, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai'),
(5, 180, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai'),
(6, 178, 'KOPERASI MAKO LANUD SOEWONDO', '1', 19, '25', 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `angkatan` year(4) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `status_mahasiswa` enum('Aktif','Alumni') DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `npm`, `nama`, `jenis_kelamin`, `no_hp`, `angkatan`, `semester`, `status_mahasiswa`) VALUES
(6, '222370025', 'Ramadhani Syahputra Ritonga', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(7, '222370005', 'Mhd Kabul Maulana', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(8, '222370052', 'Samuel Rivaldo', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(15, '222370067', 'M Ginda Rizky Mulia Lubis', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(16, '192370058', 'DWI FAKHRUL RIZKIE', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(17, '192370003', 'ARI IKBAR DHIA', 'Laki-laki', '-', '2019', 1, 'Alumni'),
(18, '192370001', 'YORA AMALIA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(19, '192370083', 'YUMNA SHAFIRA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(20, '192370041', 'HARTIKA SARI DEWI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(21, '192370039', 'AZILLA MUSTIKA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(22, '192370050', 'ISMA RAMADHANI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(23, '192370063', 'SAFIRA NURUL LITA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(24, '192370089', 'ARI PRAMANA', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(25, '192370101', 'NURUL KHOFIFAH SIREGAR', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(26, '192370078', 'MUHAMMAD HAFIZ AL HUSNA LUBIS', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(27, '192370016', 'WINDI HALIMARDANI ', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(28, '192370097', 'SUCI RAMADHANI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(29, '192370091', 'CUT SARAH SALSABILA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(30, '192370006', 'AHMAD MULIAWAN', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(31, '192370057', 'MAYA DWI SARDILLA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(32, '192370038', 'SRI ULINA SINULINGGA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(33, '192370093', 'FAHMI SARGUNUNG SIREGAR', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(34, '182370019', 'AMRIN HAKIM RAMBE', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(35, '192370107', 'REHULINA ASLAMIYAH', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(36, '192370045', 'AWALUDDIN HARAHAP', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(37, '192370064', 'KHAIRIL ASHAR', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(38, '192370054', 'CHAIDIR GIBRAN', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(39, '192370044', 'MUHAMMAD AWWAL ASHARI SIREGAR', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(40, '192370132', 'HANI AISYAH PUTRI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(41, '192370051', 'SIKA RANI JK', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(42, '192370037', 'SRI HERIANI HASIBUAN', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(43, '192370034', 'MUHAMMAD EZAM AZHARI', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(44, '192370080', 'HANAFIAH ISYAHRI SIBUEA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(45, '192370012', 'LIYANI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(46, '192370024', 'MUHAMMAD WIRA RAMADHANA', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(47, '192370114', 'ROSANTI DAELI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(48, '182370028', 'TESSYA FAKHTA TRI NASUTION', 'Perempuan', '-', '2018', NULL, 'Alumni'),
(49, '192370134', 'ADJIE SATRIA', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(50, '192370052', 'MAYANG ANDINI S DEPARI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(51, 'RIFQI SETIAWAN', 'RIFQI SETIAWAN', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(53, 'YOGIKA AZIS', 'YOGIKA AZIS', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(54, 'MUHAMMAD AINIL ARBIE', 'MUHAMMAD AINIL ARBIE NASUTION', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(55, '192370117', 'FIKRI MAULANA LATHIEF', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(56, 'ADJIE TARUNA SURYA', 'ADJIE TARUNA SURYA', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(57, '192370087', 'MHD HAFIZ', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(58, 'ANMOLLIZA', 'ANMOLLIZA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(59, 'FRISKA A SILABAN', 'FRISKA A SILABAN', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(60, 'INDRA ULI SAPUTRA PU', 'INDRA ULI SAPUTRA PURBA', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(61, 'ILHAM ZUNERI KARO-KA', 'ILHAM ZUNERI KARO-KARO', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(62, 'FEBRICA HOTMAULINA S', 'FEBRICA HOTMAULINA SITORUS', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(63, '192370082', 'WITA ATIKA PUTRI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(64, '202370042', 'HALIMATUSSA\'DIAH', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(65, '182370127', 'HANIFUL CHAIR RIZKI', 'Laki-laki', '-', '2018', NULL, 'Alumni'),
(66, '202370057', 'NENI INDRAYANI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(67, '222373005', 'HABIB AL QADRI', 'Laki-laki', '-', '2022', NULL, 'Alumni'),
(68, '202370033', 'MUHAMMAD RIFKY FARID', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(69, '182370069', 'RIZKA ANNISA LUBIS', 'Perempuan', '-', '2018', NULL, 'Alumni'),
(70, '202370008', 'GANANG YUDHA FAHREZA', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(71, '192370066', 'ROSIDAH', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(72, '2022370002', 'AHMAD HAZAZI SIMANUNGKALIT', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(73, '192370116', 'BALQIS NABILAH', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(74, '202370015', 'AIGHNES LORENSA SIAGIAN', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(75, '192370128', 'FITRA DWI NANDA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(76, '202370036', 'ANNISA ASHARI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(77, '202370061', 'MUHAMMAD DAHRUL RIZKY', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(78, '192370011', 'WAHYU RIDHO NURKHOLIS', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(79, '202370056', 'FAHRIKA ARIYANI LUBIS', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(80, '202370005', 'MUHAMMAD BISMAR AFFANDI', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(81, '202373006', 'WIRNA MAWADDAH', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(82, '202370052', 'RANIA ASMALIA FITRI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(83, '192370061', 'KUSTANTI RAMADANI', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(84, '202370016', 'FAHRUR ROZY', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(85, '202370028', 'ISMA RAMADHANI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(86, '172370079', 'MUHAMMAD FAHRI EFFENDI', 'Laki-laki', '-', '2017', NULL, 'Alumni'),
(87, '202370013', 'ZEIN HASYIM ALJUFRI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(88, '202370063', 'MARCHO MALONA HUTAHAEAN', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(89, '202370066', 'CHAIRANI SYAHPUTRI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(90, '192370010', 'LAILA TUSYFA BARUS', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(91, '202370020', 'M. RIFAI', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(92, '192370031', 'YUSIANI JULIANINGRUM', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(93, '222373001', 'ACTAVIA NASUTION', 'Perempuan', '-', '2022', NULL, 'Alumni'),
(94, '192370098', 'ADITYA GUNAWAN', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(95, '202370018', 'YULI ARTIKA', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(96, '202370023', 'SALSABILLA', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(97, '202370060', 'MAXI LAMTAMA HUTAHAHEAN', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(98, '192370056', 'TRIVENA MISIA', 'Perempuan', '-', '2019', NULL, 'Alumni'),
(99, '202370035', 'NADYA UTAMI', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(100, '202370011', 'RISKA AULINA', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(101, '202370045', 'RAISA NADIRATUL ALFATH NASUTION', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(102, '202370038', 'SHELSAPRILLA NURFA', 'Perempuan', '-', '2020', NULL, 'Alumni'),
(103, '192370104', 'FADHIL HISYAM', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(104, '212370041', 'HADIT DINATA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(105, '202370003', 'ARYA YUSUF FAUZI', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(106, '212370099', 'SANDRA KIRANA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(107, '212370098', 'YOGI PRA IDAKA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(108, '212370022', 'PARHAN ABDI POHAN', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(109, '192370043', 'MUHAMMAD ALIF FIQRI HARAHAP', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(110, '212370064', 'SUHAILA RAZAK', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(111, '232373002', 'TRI WIYONO', 'Laki-laki', '-', '2023', NULL, 'Alumni'),
(112, '202370055', 'DANU ABILSYAH AIMAR', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(113, '212370017', 'TIO BAYU HERMAWAN', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(114, '212370091', 'AYU ANJELLI BR BERUTU', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(115, '212370009', 'M. ADRIANSYAH LUBIS', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(116, '212370102', 'ARYA DWI WAHYUDA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(117, '212370010', 'MUHAMMAD RIDHO', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(118, '212370080', 'JELLY SIMAJUNTAK', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(119, '212370062', 'SITI NURJANAH', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(120, '212370100', 'RYANZU LEZTA LUBIS', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(121, '212370020', 'AZMI SAKINAH HARAHAP', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(122, '212370029', 'YASMIN MUMTAZ', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(123, '212370047', 'SYIFAA SALSABIILA PUTRI', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(124, '212370071', 'YURIKA YULISTINA BR KARO', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(125, '212370024', 'ANISYA AVISHTYA INDRA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(126, '212370075', 'MUHAMMAD ABDILLAH', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(127, '212370013', 'ANNISA FARAH', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(128, '212370046', 'LUKLUIL MAKNUN', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(129, '212370006', 'TIO RANI', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(130, '212370070', 'BAYU TRI KURNIAWAN', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(131, '212370011', 'AGUSTIAN IRFANI', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(132, '212370040', 'FARRAS BATUBARA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(133, '212370066', 'DWINA JASMINE FAHIRA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(134, '212370087', 'SAHIRA ANISA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(136, 'RIZKY JULIANA NASUTI', 'RIZKY JULIANA NASUTION', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(137, '212370004', 'ANGGA IRAWAN', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(138, '212370110', 'SANDY WAHYUDI', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(139, '202370017', 'BAYU RAHMADSYAH', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(140, '212370015', 'NIRWANA SYAHPUTRI', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(141, '212370037', 'SITI ANNISA FITRI', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(142, '212370016', 'SUCI TRI ASWARI', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(143, '212370002', 'DESSRY CANTIKA LASE', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(144, '212370113', 'TARISA AULIA MAHENDRA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(145, '212370097', 'PUTRI ANANDA SAFIRA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(146, '212370053', 'FARHAN ZAINADIN ZIDAN GINTING', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(147, '212370112', 'M AGUNG PRATAMA NST', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(148, '212370027', 'POPPY MEIDINA', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(149, '212370111', 'ALI RAMADHAN RITONGA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(150, '212370031', 'GIANCARLO ARSY MAHA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(151, '212370005', 'SAPRIZAL', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(152, '222373002', 'ISTI NUR FADHILAH NASUTION', 'Perempuan', '-', '2022', NULL, 'Alumni'),
(153, '212370077', 'RIO FEBRIAN', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(155, 'SITI AISYAH DASWIN', 'SITI AISYAH DASWIN', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(156, '212370079', 'RIZKY AFRIANSYAH', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(157, '202370068', 'ROHENDA ANSOR KETAREN', 'Laki-laki', '-', '2020', NULL, 'Alumni'),
(158, '212370101', 'NADHIRA NAJMI HENDRI LUBIS', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(159, '212370038', 'MUHAMMAD WAFIQ ARDHANA', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(160, '182370062', 'MUHAMMAD IBNU AFFAN', 'Laki-laki', '-', '2018', NULL, 'Alumni'),
(161, '212370096', 'MUHAMMAD SADDAM IFANNI', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(162, '222370004', 'MUHAMMAD SURYA ERLANGGA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(163, '222370020', 'RISWANDA AMALUDIN FAUZI HASIBUAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(164, '222370017', 'LUKMAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(165, '222370043', 'ALFI SAHRI MANURUNG', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(166, '222370075', 'FAJAR SURAIN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(167, '222370042', 'SRI UTARI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(168, '222370014', 'M. FAHRIZA HILFANDI', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(169, '222370056', 'MUHAMMAD AULIA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(170, '222370044', 'AMIRUL FITRAH IRAWAN PANJAITAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(171, '222370057', 'MUHAMMAD ARIF', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(173, 'UMMU SALAMAH', 'UMMU SALAMAH', 'Perempuan', '-', '2022', 8, 'Aktif'),
(174, '222370002', 'JOHARDIK DAMANIK', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(175, '222370012', 'RIFKI SYA\'BAN FIRMANSYAH', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(176, '222370080', 'ALFIA SYAHMADINA', 'Perempuan', '-', '2022', 8, 'Aktif'),
(177, '192370123', 'MUHAMMAD AKBAR FACHREZI', 'Laki-laki', '-', '2019', 8, 'Aktif'),
(178, '222370008', 'SAFILLA DWI MAHIRAH', 'Perempuan', '-', '2022', 8, 'Aktif'),
(179, '222370013', 'M RAIHAN AUDTYA PRATAMA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(180, '222370006', 'DINDA SABRINA SARAGIH', 'Perempuan', '-', '2022', 8, 'Aktif'),
(181, '222370039', 'RIZKY DERMAWAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(182, '222370033', 'FAUZI ANANDA HARAHAP', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(183, '222370016', 'FAJAR RIZKY HASIBUAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(184, '222370022', 'TANIRA  LAIA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(185, '222370023', 'LIZA AULIA ARIANI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(186, '222370047', 'RAZIE ALIEF ANANTA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(187, '222370041', 'IQLIMA FITRI ANISI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(188, '222370059', 'MUHAMMAD RAIHAN NAUFAL', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(189, '222370018', 'MUHAMMAD NAUFAL RAIHAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(190, '222370029', 'MUHAMMAD RAPLI FAUZAN POHAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(191, '222370053', 'WISNU ALFRIADI', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(192, '222370061', 'AININ HAFIZ NASUTION', 'Perempuan', '-', '2022', 8, 'Aktif'),
(193, '222370046', 'DINDA PUSPA SARI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(194, '222370079', 'MUHAMMAD HARIS', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(195, '222370048', 'SARAH TSABITAH', 'Perempuan', '-', '2022', 8, 'Aktif'),
(196, '222370031', 'RAFI AZHAR NUGRAHA', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(197, '222370066', 'ANZAR ALFRYAN LUBIS', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(198, '222370054', 'ALKINDY SHIYAA ULHAQ', 'Perempuan', '-', '2022', 8, 'Aktif'),
(199, '222370011', 'ZSA ZSA WILATIKTA', 'Perempuan', '-', '2022', 8, 'Aktif'),
(200, '222370030', 'SONITA MARWAH RANGKUTI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(201, '222370040', 'SALSABILA', 'Perempuan', '-', '2022', 8, 'Aktif'),
(202, '222370001', 'UCI AYUNINGRUM', 'Perempuan', '-', '2022', 8, 'Aktif'),
(203, '222370055', 'DIKY ALFIANSYAH POHAN', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(204, '222370060', 'MIRZA QASHMAL LUBIS', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(205, '222370069', 'RATNA JUWITA EFENDI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(206, '222370070', 'RIDHA ANNISA DAULAY', 'Perempuan', '-', '2022', 8, 'Aktif'),
(207, '222370051', 'SITI ANNISAH', 'Perempuan', '-', '2022', 8, 'Aktif'),
(208, '222370003', 'TIFANY AUDRI DALIMUNTHE', 'Perempuan', '-', '2022', 8, 'Aktif'),
(209, '222370038', 'INDRY SABRINA LUBIS', 'Perempuan', '-', '2022', 8, 'Aktif'),
(210, '212370115', 'YUPITA SRI REZKI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(211, '222370071', 'TASYA FEBRIYANT', 'Perempuan', '-', '2022', 8, 'Aktif'),
(212, '222370065', 'ANDINI SRI REZEKI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(213, '222370010', 'ELSA ANDINI PUTRI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(214, '222370007', 'MHD SULTANNUL HAFIZ', 'Laki-laki', '-', '2022', 8, 'Aktif'),
(215, '222370068', 'PUSPA HAPSARI', 'Perempuan', '-', '2022', 8, 'Aktif'),
(216, '222370072', 'WINDA AZHARA', 'Perempuan', '-', '2022', 8, 'Aktif'),
(218, '192370119', 'MUHAMMAD AZWAN HAFIZD', 'Laki-laki', '-', '2019', NULL, 'Alumni'),
(220, '212370089', 'ARIEF HABIB AL AKBAR PASARIBU', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(221, '212370090', 'ASRI NURHASANAH PUTRI SOLIN', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(222, '202370050', 'NURUL AINI SIREGAR', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(223, '212370019', 'MUHAMMAD IHLAM', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(224, '212370086', 'HALIMATUSYADIAH', 'Perempuan', '-', '2021', NULL, 'Alumni'),
(225, '212370054', 'M. DAUD MURSAL LUBIS', 'Laki-laki', '-', '2021', NULL, 'Alumni'),
(227, 'TASYA ATHIFAH', 'TASYA ATHIFAH', 'Perempuan', '-', '2019', NULL, 'Alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mk` int(11) NOT NULL,
  `kode_mk` varchar(20) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mk`, `kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
(1, 'MD', 'Matematika Diskrit', 3, 2),
(3, 'EE', 'English for Entrepreneurship', 2, 2),
(4, 'SO', 'Sistem Operasi', 3, 2),
(5, 'POK', 'Praktik Sistem Operasi', 1, 2),
(6, 'BI', 'Bahasa Indonesia', 2, 2),
(7, 'APB', 'Analisis Proses Bisnis', 3, 2),
(8, 'SD', 'Struktur Data', 3, 2),
(9, 'PSD', 'Praktikum Struktur Data', 1, 2),
(10, 'PBW', 'Pemrograman Berbasis WEB', 3, 4),
(11, 'PPBO', 'Praktik Pemrograman Berbasis WEB', 1, 4),
(12, 'PS', 'Probabilitas dan Statistik', 3, 4),
(13, 'PPS', 'Praktik Probabilitas dan Statistik', 1, 4),
(14, 'SSI', 'Sekuriti Sistem Informasi', 3, 4),
(15, 'KB', 'Kecerdasan Buatan', 3, 4),
(16, 'KN', 'Kewarganegaraan', 2, 4),
(17, 'SIM', 'Sistem Informasi Manajemen', 3, 4),
(18, 'MP', 'Metode Penelitian', 3, 6),
(19, 'DM', 'Digital Marketing', 3, 6),
(20, 'ERP', 'Enterprise Resource Planning', 3, 6),
(21, 'PASI', 'Proyek Aplikasi SI', 3, 6),
(22, 'PPASI', 'Praktik Proyek Aplikasi SI', 3, 6),
(23, 'SIP', 'Sistem Informasi Pemerintahan', 3, 6),
(24, 'AST', 'Arsitektur SI/TI', 3, 6),
(25, 'EP', 'Etika Profesi', 2, 8),
(26, 'ASI', 'Audit Sistem Informasi', 3, 8),
(27, 'ERP(P)', 'Enterprise Resource Planning  (Pecahan)', 3, 6),
(28, 'MP(P)', 'Metode Penelitian  (Pecahan)	', 3, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `judul` varchar(150) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `status` enum('Terkirim','Belum') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `id_mahasiswa`, `judul`, `pesan`, `tanggal`, `status`) VALUES
(6, 6, 'tes', 'ts', '2026-08-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan_bot`
--

CREATE TABLE `pelanggan_bot` (
  `id` int(11) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan_bot`
--

INSERT INTO `pelanggan_bot` (`id`, `no_hp`, `created_at`) VALUES
(10, '49113034944598@lid', '2026-08-25 16:40:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `tanggal`, `jam`) VALUES
(11, 'UAS', 'Kartu ujian UAS sudah dapat di ambil d prodi. Dengan ketentuan sudah melunasi tagihan yg ada d portal masing2. Terima kasih', '2026-07-08 00:00:00', '12:00:00'),
(18, 'tes', 'tes', '2026-08-26 00:00:00', '13:12:00'),
(19, 'tes2', 'tes2', '2026-08-21 00:00:00', '23:09:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skripsi`
--

CREATE TABLE `skripsi` (
  `id_skripsi` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `pembimbing` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tanggal_sidang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `skripsi`
--

INSERT INTO `skripsi` (`id_skripsi`, `id_mahasiswa`, `judul`, `tahun`, `pembimbing`, `status`, `tanggal_sidang`) VALUES
(9, 6, 'RANCANG BANGUN CHATBOT WHATSAPP AKADEMIK MENGGUNAKAN NODE.JS DAN METODE RULE-BASED SYSTEM PADA PROGRAM STUDI SISTEM INFORMASI', '2026', 3, 'Proses', '2026-10-30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chatbot_log`
--
ALTER TABLE `chatbot_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indeks untuk tabel `judul_skripsi`
--
ALTER TABLE `judul_skripsi`
  ADD PRIMARY KEY (`id_judul`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `idx_pembimbing1` (`dosen_pembimbing_1`),
  ADD KEY `idx_pembimbing2` (`dosen_pembimbing_2`);

--
-- Indeks untuk tabel `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kerja_praktik`
--
ALTER TABLE `kerja_praktik`
  ADD PRIMARY KEY (`id_kp`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `dosen_pembimbing` (`dosen_pembimbing`);

--
-- Indeks untuk tabel `kkn`
--
ALTER TABLE `kkn`
  ADD PRIMARY KEY (`id_kkn`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `dosen_pembimbing` (`dosen_pembimbing`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `npm` (`npm`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mk`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);

--
-- Indeks untuk tabel `pelanggan_bot`
--
ALTER TABLE `pelanggan_bot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_hp` (`no_hp`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id_skripsi`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `pembimbing` (`pembimbing`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `chatbot_log`
--
ALTER TABLE `chatbot_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `judul_skripsi`
--
ALTER TABLE `judul_skripsi`
  MODIFY `id_judul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kerja_praktik`
--
ALTER TABLE `kerja_praktik`
  MODIFY `id_kp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `kkn`
--
ALTER TABLE `kkn`
  MODIFY `id_kkn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_mk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pelanggan_bot`
--
ALTER TABLE `pelanggan_bot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id_skripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `mata_kuliah` (`id_mk`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `judul_skripsi`
--
ALTER TABLE `judul_skripsi`
  ADD CONSTRAINT `fk_pembimbing1` FOREIGN KEY (`dosen_pembimbing_1`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `fk_pembimbing2` FOREIGN KEY (`dosen_pembimbing_2`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `kerja_praktik`
--
ALTER TABLE `kerja_praktik`
  ADD CONSTRAINT `kerja_praktik_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  ADD CONSTRAINT `kerja_praktik_ibfk_2` FOREIGN KEY (`dosen_pembimbing`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `kkn`
--
ALTER TABLE `kkn`
  ADD CONSTRAINT `kkn_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  ADD CONSTRAINT `kkn_ibfk_2` FOREIGN KEY (`dosen_pembimbing`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);

--
-- Ketidakleluasaan untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `skripsi_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  ADD CONSTRAINT `skripsi_ibfk_2` FOREIGN KEY (`pembimbing`) REFERENCES `dosen` (`id_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
