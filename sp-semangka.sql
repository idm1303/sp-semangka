-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2020 at 09:56 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp-semangka`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aturan`
--

CREATE TABLE `tb_aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `cf` float DEFAULT NULL,
  `mb` float DEFAULT NULL,
  `md` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aturan`
--

INSERT INTO `tb_aturan` (`id_aturan`, `id_gejala`, `id_penyakit`, `cf`, `mb`, `md`) VALUES
(1, 1, 1, 0.8, 0.8, 0.2),
(2, 2, 1, 0.6, 0.6, 0.1),
(3, 3, 1, 0.25, 0.25, 0),
(4, 4, 2, 0.2, 0.2, 0),
(5, 5, 2, 0.5, 0.5, 0),
(6, 6, 2, 0.2, 0.2, 0),
(7, 7, 2, 0.1, 0.1, 0),
(8, 1, 3, 0.3, 0.3, 0),
(9, 8, 3, 0.4, 0.4, 0),
(10, 9, 3, 0.4, 0.4, 0),
(11, 10, 4, 0.6, 0.6, 0),
(12, 11, 4, 0.4, 0.4, 0),
(13, 12, 5, 0.05, 0.05, 0),
(14, 13, 5, 0.4, 0.4, 0),
(15, 14, 5, 0.1, 0.1, 0),
(16, 15, 5, 0.4, 0.4, 0),
(17, 16, 5, 0.05, 0.05, 0),
(18, 17, 6, 1, 1, 0),
(19, 18, 7, 0.6, 0.6, 0),
(20, 19, 7, 0.15, 0.15, 0),
(21, 20, 7, 0.15, 0.15, 0),
(22, 21, 7, 0.1, 0.1, 0),
(23, 22, 8, 0.8, 0.8, 0),
(24, 23, 8, 0.2, 0.2, 0),
(25, 24, 9, 0.5, 0.5, 0),
(26, 25, 9, 0.5, 0.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` char(8) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G1', 'Menyerang pada malam hari'),
(2, 'G2', 'Pangkal batang seperti dimakan'),
(3, 'G3', 'Tanaman muda sampai terpotong'),
(4, 'G4', 'Daun berubah warna seperti perunggu (terutama pada bagian permukaan daun bawah)'),
(5, 'G5', 'Daun menjadi keriting'),
(6, 'G6', 'Daun mengering'),
(7, 'G7', 'Tanaman kadang kala mati'),
(8, 'G8', 'Terbang dari satu tanaman ke tanaman lain dengan cepat'),
(9, 'G9', 'Daun menjadi bolong-bolong'),
(10, 'G10', 'Buah membusuk'),
(11, 'G11', 'Di dalam buah terdapat larva lalat'),
(12, 'G12', 'Daun melepuh'),
(13, 'G13', 'Daun belang-belang'),
(14, 'G14', 'Daun cenderung berubah bentuk'),
(15, 'G15', 'Tanaman jadi kerdil'),
(16, 'G16', 'Timbul rekahan membujur pada batang'),
(17, 'G17', 'Batang bibit berwarna coklat, rebah kemudian mati'),
(18, 'G18', 'Daun atau batang muda yang dilapisi semacam tepung berwama putih'),
(19, 'G19', 'Bila seluruh daun terkena serangan, daun menjadi cokelat dan mengeriput'),
(20, 'G20', 'Pertumbuhan tanaman terhambat'),
(21, 'G21', 'Tanaman menjadi lemah'),
(22, 'G22', 'Tanaman mengalami layu permanen'),
(23, 'G23', 'Jika tanaman dipotong melintang tampak pembuluh xylem menghitam'),
(24, 'G24', 'Daun terlihat bercak-bercak cokelat yang akan berubah menjadi warna kemerahan kemudian akhirnya daun mati'),
(25, 'G25', 'Tampak bulatan berwarna merah jambu yang lama kelamaan semakin menguning pada buah.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Hama'),
(2, 'Penyakit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` char(8) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `nama_penyakit` varchar(256) NOT NULL,
  `ket` text,
  `solusi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `kode_penyakit`, `id_jenis`, `nama_penyakit`, `ket`, `solusi`) VALUES
(1, 'HP1', 1, 'Gangsir(Brachytripes portentosus Licht)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(2, 'HP2', 1, 'Thrips', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(3, 'HP3', 1, 'Kumbang daun (Aulacophora femoralis motschulsky)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(4, 'HP4', 1, 'Lalat buah (Dacus spp)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(5, 'HP5', 2, 'Penyakit virus (MWMV (Water Melon Virus)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(6, 'HP6', 2, 'Rebah batang (Pythium ultimum Trow)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(7, 'HP7', 2, 'Powdery mildew (Spaerotheca fuliginea Schlech)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(8, 'HP8', 2, 'Layu bakteri (Erwinia tracheiphila E. F. Sm.)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.'),
(9, 'HP9', 2, 'Antraknosa (Colletotrichum lagenarium (pass) Ell. Et. Halst)', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 'Lorem Ipsum este pur ?i simplu o machet? pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei înc? din secolul al XVI-lea, când un tipograf anonim a luat o plan?et? de litere ?i le-a amestecat pentru a crea o carte demonstrativ? pentru literele respective. Nu doar c? a supravie?uit timp de cinci secole, dar ?i a facut saltul în tipografia electronic? practic neschimbat?. A fost popularizat? în anii \'60 odat? cu ie?irea colilor Letraset care con?ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat`
--

CREATE TABLE `tb_riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_gejala` varchar(128) DEFAULT NULL,
  `prob_penyakit_ds` longtext,
  `prob_penyakit_cf` longtext,
  `kode_penyakit_ds` char(8) DEFAULT NULL,
  `kode_penyakit_cf` char(8) DEFAULT NULL,
  `tanggal_konsul` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_riwayat`
--

INSERT INTO `tb_riwayat` (`id_riwayat`, `id_user`, `kode_gejala`, `prob_penyakit_ds`, `prob_penyakit_cf`, `kode_penyakit_ds`, `kode_penyakit_cf`, `tanggal_konsul`) VALUES
(130, 7, 'G10,G11,G5,G6,G7,G8,G9', '[\"HP4\",\"HP2\",\"HP3\"]', '[\"HP2\",\"HP3\",\"HP4\"]', 'HP4', 'HP4', 1600536731),
(131, 7, 'G1,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G2,G20,G21,G22,G23,G24,G25,G3,G4,G5,G6,G7,G8,G9', '[\"HP6\",\"HP1\",\"HP3\",\"HP1,HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP7\",\"HP9\",\"HP8\"]', '[\"HP1\",\"HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP6\",\"HP7\",\"HP8\",\"HP9\"]', 'HP6', 'HP6', 1600539763),
(132, 7, 'G1,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G2,G20,G21,G22,G23,G24,G25,G3,G4,G5,G6,G7,G8,G9', '[\"HP6\",\"HP1\",\"HP3\",\"HP1,HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP7\",\"HP9\",\"HP8\"]', '[\"HP1\",\"HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP6\",\"HP7\",\"HP8\",\"HP9\"]', 'HP6', 'HP6', 1600539906),
(133, 7, 'G1,G2,G3,G4,G5,G6,G7', '[\"HP2\",\"HP1\",\"HP1,HP3\"]', '[\"HP1\",\"HP3\",\"HP2\"]', 'HP2', 'HP1', 1600539917),
(134, 7, 'G1,G2,G4,G5,G6,G7', '[\"HP2\",\"HP1,HP3\",\"HP1\"]', '[\"HP1\",\"HP3\",\"HP2\"]', 'HP2', 'HP1', 1600935934),
(135, 7, 'G1,G2,G4,G5,G6,G7', '[\"HP2\",\"HP1,HP3\",\"HP1\"]', '[\"HP1\",\"HP3\",\"HP2\"]', 'HP2', 'HP1', 1600936021),
(136, 7, 'G1,G2,G4,G5,G6,G7', '[\"HP2\",\"HP1,HP3\",\"HP1\"]', '[\"HP1\",\"HP3\",\"HP2\"]', 'HP2', 'HP1', 1600936238),
(137, 7, 'G1,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G2,G20,G21,G22,G23,G24,G25,G3,G4,G5,G6,G7,G8,G9', '[\"HP6\",\"HP1\",\"HP3\",\"HP1,HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP7\",\"HP9\",\"HP8\"]', '[\"HP1\",\"HP3\",\"HP2\",\"HP4\",\"HP5\",\"HP6\",\"HP7\",\"HP8\",\"HP9\"]', 'HP6', 'HP6', 1600939750),
(138, 7, 'G1,G2,G4', '[\"HP1,HP3\",\"HP1\",\"HP2\"]', '[\"HP1\",\"HP3\",\"HP2\"]', 'HP1,HP3', 'HP1', 1600940109);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `tanggal_dibuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `password`, `role_id`, `status`, `tanggal_dibuat`) VALUES
(6, 'ryuu', 'dragonneetoo@gmail.com', '$2y$10$E9/iICaLYX2Yrn7thf/tE.gpYctUs2TBNlJD1TOeYoNjm2SQl9mDW', 2, 1, 1587833511),
(7, 'try alternate', 'tryalternate101@gmail.com', '$2y$10$pgoK0vEAl9rXqGDUkQ19Nunf5DHDAL5JYC6UbyUl7SEXKL90vPLhe', 2, 1, 1599621900),
(8, 'asma', 'asma@gmail.com', '$2y$10$Mpfkx6JtaqPTb10XPvVZG.FM35ZHUSgGcJbivn2mnb69.jCIo/kWW', 1, 1, 1599752463);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(68) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id_token` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `tanggal_dibuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id_token`, `email`, `token`, `tanggal_dibuat`) VALUES
(1, 'asma@gmail.com', '6I4ZMQTxBNo0skHD6CfSg7eN0BEYWWk0AYA8qATUfl8=', 1599752463);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  ADD PRIMARY KEY (`id_aturan`),
  ADD KEY `gejala` (`id_gejala`),
  ADD KEY `penyakit` (`id_penyakit`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`),
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `jenis` (`id_jenis`);

--
-- Indexes for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  ADD CONSTRAINT `gejala` FOREIGN KEY (`id_gejala`) REFERENCES `tb_gejala` (`id_gejala`) ON DELETE CASCADE,
  ADD CONSTRAINT `penyakit` FOREIGN KEY (`id_penyakit`) REFERENCES `tb_penyakit` (`id_penyakit`) ON DELETE CASCADE;

--
-- Constraints for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `jenis` FOREIGN KEY (`id_jenis`) REFERENCES `tb_jenis` (`id_jenis`) ON DELETE CASCADE;

--
-- Constraints for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
