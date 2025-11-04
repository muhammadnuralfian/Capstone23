-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 03:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greensamarinda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `wewenang` varchar(100) DEFAULT NULL,
  `id_akun` int(11) DEFAULT NULL,
  `status_admin` varchar(20) DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `jabatan`, `wewenang`, `id_akun`, `status_admin`) VALUES
(1, 'Kepala Dinas Lingkungan Hidup', 'Penuh', 1, 'Aktif'),
(2, 'Koordinator Program Kolaborasi', 'Terbatas', 2, 'Aktif'),
(3, 'Supervisor TPS', 'Terbatas', 3, 'Aktif'),
(4, 'Admin Sistem Informasi', 'Terbatas', 4, 'Aktif'),
(5, 'Petugas Evaluasi Laporan', 'Terbatas', 5, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `akun_pengguna`
--

CREATE TABLE `akun_pengguna` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kontak` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT 'user@greensamarinda.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun_pengguna`
--

INSERT INTO `akun_pengguna` (`id_akun`, `username`, `password`, `role`, `alamat`, `kontak`, `email`) VALUES
(1, 'admin_samarinda', 'admin123', 'admin', 'Jl. Pahlawan No.1', '081234500001', 'admin@greensamarinda.id'),
(2, 'admin2', 'admin123', 'admin', 'Jl. Basuki Rahmat No.20', '0811111112', 'admin2@green.id'),
(3, 'warga', 'warga123', 'masyarakat', '666666', '09988', 'warga1@mail.com'),
(4, 'warga2', 'warga123', 'masyarakat', 'Jl. Juanda No.0', '0822000002', 'warga2@mail.com'),
(5, 'warga3', 'warga123', 'masyarakat', 'Jl. Juanda No.3', '0822000003', 'warga3@mail.com'),
(6, 'warga4', 'warga123', 'masyarakat', 'Jl. Gunung Lingai', '0822000004', 'warga4@mail.com'),
(7, 'warga5', 'warga123', 'masyarakat', 'Jl. Sempaja', '0822000005', 'warga5@mail.com'),
(8, 'warga6', 'warga123', 'masyarakat', 'Jl. Antasari', '0822000006', 'warga6@mail.com'),
(9, 'warga7', 'warga123', 'masyarakat', 'Jl. MT Haryono', '0822000007', 'warga7@mail.com'),
(10, 'warga8', 'warga123', 'masyarakat', 'Jl. Pemuda', '0822000008', 'warga8@mail.com'),
(11, 'warga9', 'warga123', 'masyarakat', 'Jl. Lembuswana', '0822000009', 'warga9@mail.com'),
(12, 'warga10', 'warga123', 'masyarakat', 'Jl. Wahid Hasyim', '0822000010', 'warga10@mail.com'),
(14, 'warga12', 'warga123', 'masyarakat', 'Jl. Cipto Mangunkusumo', '0822000012', 'warga12@mail.com'),
(15, 'warga13', 'warga123', 'masyarakat', 'Jl. Mugirejo', '0822000013', 'warga13@mail.com'),
(16, 'warga14', 'warga123', 'masyarakat', 'Jl. Sentosa', '0822000014', 'warga14@mail.com'),
(17, 'warga15', 'warga123', 'masyarakat', 'Jl. Bayur', '0822000015', 'warga15@mail.com'),
(18, 'stake1', 'stake123', 'stakeholder', 'Jl. Dahlia', '0833000001', 'stake1@csr.com'),
(19, 'stake2', 'stake123', 'stakeholder', 'Jl. Pahlawan', '0833000002', 'stake2@csr.com'),
(25, 'Dekan', '12345678', 'admin', 'jl.p.dosen korupsi', '081253067497', NULL),
(31, 'admin1', '123', 'admin', NULL, NULL, 'admin1@greensamarinda.id'),
(41, 'pian', '111', 'stakeholder', '', '', 'pian@greensamarinda.id'),
(43, 'den', '123', 'stakeholder', '', '', 'den@greensamarinda.id'),
(46, 'santos', '111', 'stakeholder', 'stakeholder', 'gatau', NULL),
(47, 'udin', '111', 'masyarakat', 'gatau', '88888', NULL),
(49, 'zen', '123', 'stakeholder', 'Stakeholder', 'ggggg', 'user@greensamarinda.id'),
(51, 'san', '123', 'Masyarakat', 'Jl.Paji', '0812333545', 'user@greensamarinda.id'),
(55, 'din', '123', 'Masyarakat', 'ahmad yani', '0999999', 'user@greensamarinda.id'),
(59, 'iiiiiiiiii', 'i', 'Masyarakat', 'ttttggggggggggggg', '55555555555', 'user@greensamarinda.id'),
(67, 'ggggggg', 'ggggg', 'admin', 'gggggg', 'gggggg', 'user@greensamarinda.id');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kegiatan`
--

CREATE TABLE `laporan_kegiatan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_laporan` date DEFAULT NULL,
  `nama_kegiatan` varchar(100) DEFAULT NULL,
  `deskripsi_kegiatan` text DEFAULT NULL,
  `hasil_kegiatan` text DEFAULT NULL,
  `volume_sampah` decimal(8,2) DEFAULT NULL,
  `id_program` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_kegiatan`
--

INSERT INTO `laporan_kegiatan` (`id_laporan`, `tanggal_laporan`, `nama_kegiatan`, `deskripsi_kegiatan`, `hasil_kegiatan`, `volume_sampah`, `id_program`) VALUES
(1, '2024-03-01', 'Workshop Daur Ulang', 'Pelatihan daur ulang plastik', '100 peserta hadir', 250.00, 1),
(2, '2024-03-02', 'Sosialisasi Bank Sampah', 'Edukasi aplikasi bank sampah', '200 pengguna baru', 300.00, 2),
(3, '2024-03-03', 'Gerakan Sungai Bersih', 'Membersihkan sungai dari limbah', '2 ton sampah terkumpul', 2000.00, 4),
(4, '2024-03-04', 'Hari Tanpa Sampah Nasional', 'Aksi di car free day', 'Sampah berkurang 30%', 500.00, 6);

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tanggal_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id_akun`, `nama`, `alamat`, `kontak`, `jenis_kelamin`, `tanggal_daftar`) VALUES
(3, NULL, NULL, NULL, 'Laki-laki', '2024-01-01'),
(4, NULL, NULL, NULL, 'Perempuan', '2024-01-02'),
(5, NULL, NULL, NULL, 'Laki-laki', '2024-01-03'),
(6, NULL, NULL, NULL, 'Perempuan', '2024-01-04'),
(7, NULL, NULL, NULL, 'Laki-laki', '2024-01-05'),
(8, NULL, NULL, NULL, 'Perempuan', '2024-01-06'),
(9, NULL, NULL, NULL, 'Laki-laki', '2024-01-07'),
(10, NULL, NULL, NULL, 'Perempuan', '2024-01-08'),
(11, NULL, NULL, NULL, 'Laki-laki', '2024-01-09'),
(12, NULL, NULL, NULL, 'Perempuan', '2024-01-10'),
(14, NULL, NULL, NULL, 'Perempuan', '2024-01-12'),
(15, NULL, NULL, NULL, 'Laki-laki', '2024-01-13'),
(16, NULL, NULL, NULL, 'Perempuan', '2024-01-14'),
(17, NULL, NULL, NULL, 'Laki-laki', '2024-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan_masyarakat`
--

CREATE TABLE `pelaporan_masyarakat` (
  `id_pelapor` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `lokasi_laporan` varchar(100) NOT NULL,
  `jenis_masalah` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status_laporan` varchar(50) DEFAULT NULL,
  `id_masyarakat` int(11) DEFAULT NULL,
  `id_stakeholder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelaporan_masyarakat`
--

INSERT INTO `pelaporan_masyarakat` (`id_pelapor`, `tanggal_laporan`, `lokasi_laporan`, `jenis_masalah`, `deskripsi`, `status_laporan`, `id_masyarakat`, `id_stakeholder`) VALUES
(1, '2024-02-06', 'Jl. Juanda', 'TPS Penuh', 'TPS sudah penuh selama 2 hari', 'baru', 3, 18),
(2, '2024-02-02', 'Jl. Gunung Lingai', 'Sampah Bau banget', 'Sampah rumah tangga tidak diangkut', 'diproses', 4, NULL),
(4, '2024-02-04', 'Jl. Pemuda', 'Penumpukan Sampah', 'Sampah menumpuk di sudut gang', 'baru', 6, 19),
(67, '2025-11-04', 'ttttt', 'tttt', 'ttttt', 'Baru', NULL, NULL),
(69, '2025-11-04', 'gggggg', 'gggggggg', 'ggggggg', 'Diproses', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program_kolaborasi`
--

CREATE TABLE `program_kolaborasi` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `status_program` enum('Perencanaan','Berjalan','Selesai') DEFAULT 'Perencanaan',
  `id_akun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_kolaborasi`
--

INSERT INTO `program_kolaborasi` (`id_program`, `nama_program`, `deskripsi`, `tanggal_mulai`, `tanggal_selesai`, `status_program`, `id_akun`) VALUES
(1, 'Program Daur Ulang Plastik', 'Mengumpulkan dan mendaur ulang plastik rumah tangga', '2024-01-01', '2024-04-01', 'Selesai', 18),
(2, 'Bank Sampah Digital', 'Membuat aplikasi untuk transaksi sampah online', '2024-02-01', '2024-06-01', 'Berjalan', 19),
(3, 'Green School', 'Program edukasi lingkungan di sekolah dasar', '2024-03-01', '2024-09-01', 'Berjalan', NULL),
(4, 'Gerakan Bersih Sungai', 'Membersihkan sungai dari limbah plastik', '2024-04-01', '2024-05-01', 'Selesai', NULL),
(6, 'Hari Tanpa Sampah', 'Kampanye nasional bebas sampah', '2024-06-01', '2024-06-02', 'Selesai', NULL),
(8, 'Samarinda Hijau 2025', 'Program jangka panjang menuju kota hijau', '2025-01-01', '2025-12-31', 'Perencanaan', 18),
(12, 'tttttttttt', 'tttttttttt', '2025-11-05', '2025-11-07', 'Perencanaan', NULL),
(13, 'ggggggggg', 'gggggg', '2025-11-06', '2025-11-07', 'Perencanaan', NULL),
(14, 'ttttttttttt', 'tttttttttt', '2025-11-05', '2025-11-05', 'Perencanaan', NULL),
(15, 'gggggg', 'gggggggggg', '2025-11-06', '2025-11-20', 'Berjalan', NULL),
(16, 'gggggg', 'gggggggggg', '2025-11-06', '2025-11-20', 'Berjalan', NULL),
(17, 'gggggg', 'gggggggggg', '2025-11-06', '2025-11-20', 'Perencanaan', NULL),
(18, 'gggggg', 'gggggggggggg', '2025-11-29', '2025-11-30', 'Perencanaan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder`
--

CREATE TABLE `stakeholder` (
  `id_akun` int(11) NOT NULL,
  `jenis_stakeholder` varchar(50) NOT NULL,
  `deskripsi_tugas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stakeholder`
--

INSERT INTO `stakeholder` (`id_akun`, `jenis_stakeholder`, `deskripsi_tugas`) VALUES
(18, 'Dinas Lingkungan Hidup', 'Mengelola kebijakan pengelolaan sampah kota Samarinda'),
(19, 'Komunitas Lingkungan', 'Mengola kolaborasi pengelolaan sampah');

-- --------------------------------------------------------

--
-- Table structure for table `tps`
--

CREATE TABLE `tps` (
  `id_tps` int(11) NOT NULL,
  `nama_tps` varchar(100) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `kapasitas_m3` decimal(8,2) DEFAULT NULL,
  `status` enum('Aktif','Penuh','Rusak') DEFAULT 'Aktif',
  `id_stakeholder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indexes for table `akun_pengguna`
--
ALTER TABLE `akun_pengguna`
  ADD PRIMARY KEY (`id_akun`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `laporan_kegiatan_ibfk_1` (`id_program`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `pelaporan_masyarakat`
--
ALTER TABLE `pelaporan_masyarakat`
  ADD PRIMARY KEY (`id_pelapor`),
  ADD KEY `fk_pelapor_masyarakat` (`id_masyarakat`),
  ADD KEY `fk_pelapor_stakeholder` (`id_stakeholder`);

--
-- Indexes for table `program_kolaborasi`
--
ALTER TABLE `program_kolaborasi`
  ADD PRIMARY KEY (`id_program`),
  ADD KEY `program_kolaborasi_ibfk_1` (`id_akun`);

--
-- Indexes for table `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tps`
--
ALTER TABLE `tps`
  ADD PRIMARY KEY (`id_tps`),
  ADD KEY `fk_tps_stakeholder` (`id_stakeholder`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `akun_pengguna`
--
ALTER TABLE `akun_pengguna`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelaporan_masyarakat`
--
ALTER TABLE `pelaporan_masyarakat`
  MODIFY `id_pelapor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `program_kolaborasi`
--
ALTER TABLE `program_kolaborasi`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tps`
--
ALTER TABLE `tps`
  MODIFY `id_tps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  ADD CONSTRAINT `fk_laporan_program` FOREIGN KEY (`id_program`) REFERENCES `program_kolaborasi` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_kegiatan_ibfk_1` FOREIGN KEY (`id_program`) REFERENCES `program_kolaborasi` (`id_program`);

--
-- Constraints for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD CONSTRAINT `fk_masyarakat_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_masyarakat_akun_new` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masyarakat_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`);

--
-- Constraints for table `pelaporan_masyarakat`
--
ALTER TABLE `pelaporan_masyarakat`
  ADD CONSTRAINT `fk_pelapor_masyarakat` FOREIGN KEY (`id_masyarakat`) REFERENCES `masyarakat` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pelapor_stakeholder` FOREIGN KEY (`id_stakeholder`) REFERENCES `stakeholder` (`id_akun`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `program_kolaborasi`
--
ALTER TABLE `program_kolaborasi`
  ADD CONSTRAINT `fk_program_stakeholder` FOREIGN KEY (`id_akun`) REFERENCES `stakeholder` (`id_akun`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `program_kolaborasi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`);

--
-- Constraints for table `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD CONSTRAINT `fk_stakeholder_akun` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stakeholder_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun_pengguna` (`id_akun`);

--
-- Constraints for table `tps`
--
ALTER TABLE `tps`
  ADD CONSTRAINT `fk_tps_stakeholder` FOREIGN KEY (`id_stakeholder`) REFERENCES `stakeholder` (`id_akun`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
