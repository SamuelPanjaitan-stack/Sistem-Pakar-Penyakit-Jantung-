-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2024 pada 11.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spfc_jantung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id`, `penyakit_id`, `gejala_id`) VALUES
(7, 1, 25),
(8, 1, 26),
(9, 1, 27),
(10, 1, 28),
(11, 1, 29),
(12, 1, 30),
(13, 1, 31),
(14, 1, 32),
(15, 2, 26),
(16, 2, 27),
(17, 2, 30),
(18, 2, 33),
(19, 2, 34),
(20, 2, 35),
(21, 2, 36),
(22, 2, 37),
(23, 2, 38),
(24, 4, 25),
(25, 4, 28),
(26, 4, 29),
(27, 4, 40),
(28, 4, 41),
(29, 4, 42),
(30, 4, 45),
(31, 6, 26),
(32, 6, 27),
(33, 6, 42),
(34, 6, 43),
(35, 6, 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kode`, `nama`) VALUES
(25, 'G01', 'Nyeri Dada'),
(26, 'G02', 'Sesak Napas'),
(27, 'G03', 'Kelelahan Berlebihan'),
(28, 'G04', 'Detak Jantung Lebih Cepat'),
(29, 'G05', 'Berkeringat Dingin'),
(30, 'G06', 'Pusing'),
(31, 'G07', 'Mual Hingga Muntah'),
(32, 'G08', 'Nyeri Perut Bagian Atas'),
(33, 'G09', 'Pembengkakan pada Kaki'),
(34, 'G10', 'Pembengkakan Pada Perut'),
(35, 'G11', 'Kenaikan Berat Badan'),
(36, 'G12', 'Sering Buang Air Kecil di Malam Hari'),
(37, 'G13', 'Hilang Nafsu Makan'),
(38, 'G14', 'Suara Nafas Berbunyi ( Mengi )'),
(39, 'G15', 'Batuk Disertai Lendir Warna Merah Muda'),
(40, 'G16', 'Rasa Debar Yang Kencang di Dada'),
(41, 'G17', 'Terasa Denyutan di Leher'),
(42, 'G18', 'Sakit Kepala'),
(43, 'G19', 'Detak Jantung yang Lambat'),
(44, 'G20', 'Sulit Berkonsentrasi'),
(45, 'G21', 'Merasa Lelah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`) VALUES
(1, 'P01', 'Serangan Jantung'),
(2, 'P02', 'Gagal Jantung'),
(4, 'P03', 'Aritmia Takikardia'),
(6, 'P04', 'Aritmia Bradikardia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

CREATE TABLE `solusi` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id`, `kode`, `nama`) VALUES
(32, 'S01', 'Solusi Pencegahan Serangan Jantung : \r\nmenjalani gaya hidup sehat, seperti mengonsumsi lemak baik dan serat, menjaga berat badan ideal, mengelola stres, berolahraga teratur, berhenti merokok, serta cukup istirahat dan tidur.'),
(33, 'S02', 'Solusi Pencegahan Gagal Jantung :\r\nPengobatan gagal jantung bertujuan untuk mengurangi gejala dan memperkuat fungsi jantung. Metode pengobatan dapat meliputi pemberian obat-obatan, operasi, atau pemasangan perangkat medis pada jantung. Dalam kasus yang pa'),
(34, 'S03', 'Solusi Pencegahan Aritmia Takikardia:\r\nSecara umum, takikardia dapat dicegah dengan menjaga kesehatan jantung dan menghindari faktor-faktor risiko yang dapat memicu penyakit jantung. Beberapa langkah pencegahan meliputi berhenti merokok, menghindari konsu'),
(35, 'S04', 'Solusi Pencegahan Aritmia Bradikardia:\r\nBradikardia tidak selalu dapat dicegah, tetapi ada beberapa langkah yang bisa diambil untuk mengurangi risikonya. Upaya pencegahan meliputi mengonsumsi makanan bergizi seimbang dengan kadar garam dan gula yang renda');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`),
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
