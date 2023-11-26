-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 05:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpgl`
--

-- --------------------------------------------------------

--
-- Table structure for table `avenue`
--

CREATE TABLE `avenue` (
  `id_av` int(11) NOT NULL,
  `nom_avenue` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avenue`
--

INSERT INTO `avenue` (`id_av`, `nom_avenue`) VALUES
(1, 'mulinga');

-- --------------------------------------------------------

--
-- Table structure for table `commune`
--

CREATE TABLE `commune` (
  `id_com` int(11) NOT NULL,
  `nom_com` varchar(20) NOT NULL,
  `created_com` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commune`
--

INSERT INTO `commune` (`id_com`, `nom_com`, `created_com`) VALUES
(1, 'karisimbi1', '2023-08-18 09:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `cpegl`
--

CREATE TABLE `cpegl` (
  `id_cp` int(11) NOT NULL,
  `id_pers` int(11) NOT NULL,
  `date_1` varchar(15) NOT NULL,
  `created_cp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_log` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_log`, `email`, `name`, `password`, `user_type`) VALUES
(1, 'heri@gmail.com', 'herithier', '123456', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id_per` int(11) NOT NULL,
  `nom_pers` varchar(50) NOT NULL,
  `lieu_naiss` varchar(50) NOT NULL,
  `date_naiss` varchar(15) NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `num_carte` int(11) NOT NULL,
  `ref_ville` int(11) NOT NULL,
  `ref_commune` int(11) NOT NULL,
  `ref_quartier` int(11) NOT NULL,
  `ref_avenue` int(11) NOT NULL,
  `created_pers` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id_per`, `nom_pers`, `lieu_naiss`, `date_naiss`, `nationalite`, `contact`, `photo`, `num_carte`, `ref_ville`, `ref_commune`, `ref_quartier`, `ref_avenue`, `created_pers`) VALUES
(1, 'herithier test', 'Goma', '2006-06-18', 'congolaise', 990987645, 'bnn.PNG', 76776, 1, 1, 1, 1, '2023-08-18 13:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `quartier`
--

CREATE TABLE `quartier` (
  `id_q` int(11) NOT NULL,
  `nom_quartier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quartier`
--

INSERT INTO `quartier` (`id_q`, `nom_quartier`) VALUES
(1, 'mabanga nord');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id_v` int(11) NOT NULL,
  `nom_ville` varchar(50) NOT NULL,
  `created_ville` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`id_v`, `nom_ville`, `created_ville`) VALUES
(1, 'Goma', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avenue`
--
ALTER TABLE `avenue`
  ADD PRIMARY KEY (`id_av`);

--
-- Indexes for table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id_com`);

--
-- Indexes for table `cpegl`
--
ALTER TABLE `cpegl`
  ADD PRIMARY KEY (`id_cp`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_per`),
  ADD KEY `fk_ville` (`ref_ville`),
  ADD KEY `fk_com` (`ref_commune`),
  ADD KEY `fk_avenue` (`ref_avenue`),
  ADD KEY `fk_quartier` (`ref_quartier`);

--
-- Indexes for table `quartier`
--
ALTER TABLE `quartier`
  ADD PRIMARY KEY (`id_q`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_v`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avenue`
--
ALTER TABLE `avenue`
  MODIFY `id_av` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commune`
--
ALTER TABLE `commune`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cpegl`
--
ALTER TABLE `cpegl`
  MODIFY `id_cp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quartier`
--
ALTER TABLE `quartier`
  MODIFY `id_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `fk_avenue` FOREIGN KEY (`ref_avenue`) REFERENCES `avenue` (`id_av`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_com` FOREIGN KEY (`ref_commune`) REFERENCES `commune` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_quartier` FOREIGN KEY (`ref_quartier`) REFERENCES `quartier` (`id_q`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ville` FOREIGN KEY (`ref_ville`) REFERENCES `ville` (`id_v`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
