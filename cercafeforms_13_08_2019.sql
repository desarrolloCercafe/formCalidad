-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 12:29 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cercafeforms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bache`
--

CREATE TABLE `bache` (
  `id` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `carga` int(11) NOT NULL,
  `observacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calendario`
--

CREATE TABLE `calendario` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` time NOT NULL,
  `id_bache` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consecutivos`
--

CREATE TABLE `consecutivos` (
  `id` int(11) NOT NULL,
  `consecutivo_op` int(11) NOT NULL,
  `consecutivo_lote` int(11) NOT NULL,
  `consecutivo_dieta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consecutivos`
--

INSERT INTO `consecutivos` (`id`, `consecutivo_op`, `consecutivo_lote`, `consecutivo_dieta`) VALUES
(1, 209, 313, 232);

-- --------------------------------------------------------

--
-- Table structure for table `dieta`
--

CREATE TABLE `dieta` (
  `id` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dieta`
--

INSERT INTO `dieta` (`id`, `consecutivo`, `nombre`) VALUES
(1, 201, 'Crecimiento'),
(2, 202, 'Lactancia Flushing'),
(3, 203, 'Gestacion'),
(4, 204, 'Gestacion Medicada'),
(5, 205, 'Gestacion Preparto'),
(6, 206, 'Gestacion Preparto Choque'),
(7, 207, 'Gestacion Choque'),
(8, 208, 'Desarrollo'),
(9, 209, 'Lactancia Mag'),
(10, 210, 'Lactancia Livol'),
(11, 211, 'Lactancia'),
(12, 212, 'Lactancia Primerizas'),
(13, 213, 'Preiniciador Fase 1'),
(14, 214, 'Preiniciador Fase 2'),
(15, 215, 'Preiniciador Fase 3'),
(16, 216, 'Iniciador'),
(17, 217, 'Levante Medicado'),
(18, 218, 'Levante'),
(19, 219, 'Engorde 1'),
(20, 220, 'Engorde 2'),
(21, 221, 'Engorde 2 Medicado'),
(22, 222, 'Gestacion Granel'),
(23, 223, 'Gestacion Medicada Granel'),
(24, 224, 'Gestacion Preparto Granel'),
(25, 225, 'Gestacion  Choque Granel'),
(26, 226, 'Preiniciador Fase 3 Granel'),
(27, 227, 'Iniciador Granel'),
(28, 228, 'Levante Medicado Granel'),
(29, 229, 'Levante Granel'),
(30, 230, 'Engorde 2 Granel'),
(31, 231, 'Engorde 2 Medicado Granel');

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `humedad_bache`
--

CREATE TABLE `humedad_bache` (
  `id` int(11) NOT NULL,
  `id_bache` int(11) NOT NULL,
  `hum_premezcla` float NOT NULL,
  `hum_terminado` float NOT NULL,
  `hum_acondicionado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lote`
--

CREATE TABLE `lote` (
  `id` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `cant_cribas` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `op`
--

CREATE TABLE `op` (
  `id` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `id_dieta` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_calendario` int(11) NOT NULL,
  `cant_baches` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stats_bache`
--

CREATE TABLE `stats_bache` (
  `id` int(11) NOT NULL,
  `id_bache` int(11) NOT NULL,
  `retencion` float NOT NULL,
  `desviacion_estandar` float NOT NULL,
  `durabilidad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stats_grano_bache`
--

CREATE TABLE `stats_grano_bache` (
  `id` int(11) NOT NULL,
  `id_bache` int(11) NOT NULL,
  `granulometria` float NOT NULL,
  `finos` float NOT NULL,
  `densidad` float NOT NULL,
  `dureza` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stats_maquina_bache`
--

CREATE TABLE `stats_maquina_bache` (
  `id` int(11) NOT NULL,
  `id_bache` int(11) NOT NULL,
  `amperaje` varchar(50) NOT NULL,
  `vapor_linea` int(11) NOT NULL,
  `vapor_reducido` int(11) NOT NULL,
  `apertura_valvula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temperatura_bache`
--

CREATE TABLE `temperatura_bache` (
  `id` int(11) NOT NULL,
  `id_bache` int(11) NOT NULL,
  `temp_enfriadora` float NOT NULL,
  `temp_ambiente` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turno`
--

INSERT INTO `turno` (`id`, `nombre`) VALUES
(1, 'diurna'),
(2, 'nocturna');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `cargo`) VALUES
(1, 'Anllely Alcalde', 'analista'),
(2, 'Angie Palacio', 'analista'),
(3, 'Carlos Valencia', 'analista'),
(4, 'Estefania Giraldo', 'analista'),
(5, 'Otro', 'analista');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bache`
--
ALTER TABLE `bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lote` (`id_lote`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`),
  ADD KEY `id_lote` (`id_lote`);

--
-- Indexes for table `consecutivos`
--
ALTER TABLE `consecutivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dieta`
--
ALTER TABLE `dieta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humedad_bache`
--
ALTER TABLE `humedad_bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`);

--
-- Indexes for table `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_turno` (`id_turno`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indexes for table `op`
--
ALTER TABLE `op`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dieta` (`id_dieta`),
  ADD KEY `id_lote` (`id_lote`),
  ADD KEY `id_calendario` (`id_calendario`);

--
-- Indexes for table `stats_bache`
--
ALTER TABLE `stats_bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`);

--
-- Indexes for table `stats_grano_bache`
--
ALTER TABLE `stats_grano_bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`);

--
-- Indexes for table `stats_maquina_bache`
--
ALTER TABLE `stats_maquina_bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`);

--
-- Indexes for table `temperatura_bache`
--
ALTER TABLE `temperatura_bache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bache` (`id_bache`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bache`
--
ALTER TABLE `bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consecutivos`
--
ALTER TABLE `consecutivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dieta`
--
ALTER TABLE `dieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `humedad_bache`
--
ALTER TABLE `humedad_bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lote`
--
ALTER TABLE `lote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `op`
--
ALTER TABLE `op`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats_bache`
--
ALTER TABLE `stats_bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats_grano_bache`
--
ALTER TABLE `stats_grano_bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats_maquina_bache`
--
ALTER TABLE `stats_maquina_bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temperatura_bache`
--
ALTER TABLE `temperatura_bache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bache`
--
ALTER TABLE `bache`
  ADD CONSTRAINT `bache_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bache_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id`);

--
-- Constraints for table `calendario`
--
ALTER TABLE `calendario`
  ADD CONSTRAINT `calendario_ibfk_1` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id`),
  ADD CONSTRAINT `calendario_ibfk_2` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);

--
-- Constraints for table `humedad_bache`
--
ALTER TABLE `humedad_bache`
  ADD CONSTRAINT `humedad_bache_ibfk_1` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);

--
-- Constraints for table `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id`),
  ADD CONSTRAINT `lote_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`);

--
-- Constraints for table `op`
--
ALTER TABLE `op`
  ADD CONSTRAINT `op_ibfk_1` FOREIGN KEY (`id_dieta`) REFERENCES `dieta` (`id`),
  ADD CONSTRAINT `op_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id`),
  ADD CONSTRAINT `op_ibfk_3` FOREIGN KEY (`id_calendario`) REFERENCES `calendario` (`id`);

--
-- Constraints for table `stats_bache`
--
ALTER TABLE `stats_bache`
  ADD CONSTRAINT `stats_bache_ibfk_1` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);

--
-- Constraints for table `stats_grano_bache`
--
ALTER TABLE `stats_grano_bache`
  ADD CONSTRAINT `stats_grano_bache_ibfk_1` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);

--
-- Constraints for table `stats_maquina_bache`
--
ALTER TABLE `stats_maquina_bache`
  ADD CONSTRAINT `stats_maquina_bache_ibfk_1` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);

--
-- Constraints for table `temperatura_bache`
--
ALTER TABLE `temperatura_bache`
  ADD CONSTRAINT `temperatura_bache_ibfk_1` FOREIGN KEY (`id_bache`) REFERENCES `bache` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
