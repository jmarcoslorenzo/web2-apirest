-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 03:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `campeones`
--

CREATE TABLE `campeones` (
  `id` int(11) NOT NULL,
  `id_faccion_fk` int(11) NOT NULL,
  `campeon` varchar(200) NOT NULL,
  `rareza` varchar(200) NOT NULL,
  `afinidad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campeones`
--

INSERT INTO `campeones` (`id`, `id_faccion_fk`, `campeon`, `rareza`, `afinidad`) VALUES
(1, 1, 'Mediadora', 'Legendario', 'Vacio'),
(13, 1, 'Ithos', 'Legendario', 'Vacio'),
(15, 1, 'Ithos', 'Legendario', 'Vacio'),
(18, 1, 'Ithos', 'Legendario', 'Vacio'),
(19, 1, 'Ithos', 'Legendario', 'Vacio'),
(21, 1, 'Ithos', 'Legendario', 'Vacio'),
(22, 1, 'Ithos', 'Legendario', 'Vacio'),
(23, 1, 'Ithos', 'Legendario', 'Vacio'),
(25, 1, 'Ithos', 'Legendario', 'Vacio'),
(26, 1, 'Ithos', 'Legendario', 'Vacio'),
(27, 1, 'Ithos', 'Legendario', 'Vacio'),
(28, 1, 'Ithos', 'Legendario', 'Vacio'),
(29, 1, 'Ithos', 'Legendario', 'Vacio'),
(31, 1, 'Ithos', 'Legendario', 'Vacio'),
(32, 1, 'Ithos', 'Legendario', 'Vacio'),
(33, 1, 'Ithos', 'Legendario', 'Vacio'),
(34, 1, 'Ithos', 'Legendario', 'Vacio'),
(35, 1, 'Ithos', 'Legendario', 'Vacio'),
(36, 1, 'Ithos', 'Legendario', 'Vacio'),
(37, 1, 'Ithos', 'Legendario', 'Vacio'),
(38, 1, 'Ithos', 'Legendario', 'Vacio'),
(39, 1, 'Ithos', 'Legendario', 'Vacio'),
(40, 1, 'Ithos', 'Legendario', 'Vacio'),
(41, 1, 'Ithos', 'Legendario', 'Vacio'),
(42, 1, 'Ithos', 'Legendario', 'Vacio'),
(43, 1, 'Ithos', 'Legendario', 'Vacio'),
(44, 1, 'Ithos', 'Legendario', 'Vacio'),
(45, 1, 'Ithos', 'Legendario', 'Vacio'),
(46, 1, 'Ithos', 'Legendario', 'Vacio'),
(47, 1, 'Ithos', 'Legendario', 'Vacio'),
(48, 1, 'Ithos', 'Legendario', 'Vacio'),
(49, 1, 'Ithos', 'Legendario', 'Vacio'),
(50, 1, 'Ithos', 'Legendario', 'Vacio'),
(51, 1, 'Ithos', 'Legendario', 'Vacio'),
(52, 1, 'Ithos', 'Legendario', 'Vacio'),
(53, 1, 'Ithos', 'Legendario', 'Vacio'),
(54, 1, 'Ithos', 'Legendario', 'Vacio'),
(58, 1, 'Ithos', 'Legendario', 'Vacio'),
(60, 1, 'Yannica', 'Legendario', 'Vacio'),
(62, 2, 'Errol', 'Legendario', 'Vacio');

-- --------------------------------------------------------

--
-- Table structure for table `facciones`
--

CREATE TABLE `facciones` (
  `id_faccion` int(11) NOT NULL,
  `faccion` varchar(200) NOT NULL,
  `dominio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facciones`
--

INSERT INTO `facciones` (`id_faccion`, `faccion`, `dominio`) VALUES
(1, 'Altos Elfos', 'Alianza Teleriana'),
(2, 'Hidalgos', 'Alianza Teleriana'),
(3, 'Orden Sagrada', 'Alianza Teleriana'),
(4, 'Barbaros', 'Alianza Teleriana'),
(5, 'Tribu de Ogretes', 'Pacto de Gaellen'),
(6, 'Hombres Lagarto', 'Pacto de Gaellen'),
(7, 'Cambiapieles', 'Pacto de Gaellen'),
(8, 'Orcos', 'Pacto de Gaellen'),
(9, 'Engendros', 'Corrompidos'),
(10, 'No Muertos', 'Corrompidos'),
(11, 'Elfos Oscuros', 'Corrompidos'),
(12, 'Aparecidos', 'Corrompidos'),
(13, 'Enanos', 'Union Niresana'),
(14, 'Sombrios', 'Union Niresana'),
(15, 'Vigias Silvanos', 'Union Niresana');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'jmlorenzo1993@gmail.com', '$2y$10$UP7B9ykBPb/QM0ufWkG6deGWNmJjKf/YhP7lELVfoS2pwJAGmTfBq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campeones`
--
ALTER TABLE `campeones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_faccion_fk` (`id_faccion_fk`);

--
-- Indexes for table `facciones`
--
ALTER TABLE `facciones`
  ADD PRIMARY KEY (`id_faccion`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campeones`
--
ALTER TABLE `campeones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campeones`
--
ALTER TABLE `campeones`
  ADD CONSTRAINT `campeones_ibfk_1` FOREIGN KEY (`id_faccion_fk`) REFERENCES `facciones` (`id_faccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
