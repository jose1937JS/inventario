-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 04:24 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.2.12-1+0~20181112102304.11+stretch~1.gbp55f215

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Inventario`
--
CREATE DATABASE IF NOT EXISTS `Inventario` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `Inventario`;

-- --------------------------------------------------------

--
-- Table structure for table `Cartuchos`
--

CREATE TABLE `Cartuchos` (
  `id_cartucho` int(11) NOT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CPUs`
--

CREATE TABLE `CPUs` (
  `id_cpu` int(11) NOT NULL,
  `memoria_ram` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `procesador` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `so` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `memoria_video` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Departamentos`
--

CREATE TABLE `Departamentos` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Desktops`
--

CREATE TABLE `Desktops` (
  `id_desktop` int(11) NOT NULL,
  `monitor_id` int(11) NOT NULL,
  `cpu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Impresoras`
--

CREATE TABLE `Impresoras` (
  `id_impresoras` int(11) NOT NULL,
  `serial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Laptops`
--

CREATE TABLE `Laptops` (
  `id_laptop` int(11) NOT NULL,
  `serial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Monitores`
--

CREATE TABLE `Monitores` (
  `id_monitor` int(11) NOT NULL,
  `serial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pulgadas` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Otros`
--

CREATE TABLE `Otros` (
  `id_otro` int(11) NOT NULL,
  `serial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Tecnicos`
--

CREATE TABLE `Tecnicos` (
  `id_tecnico` int(11) NOT NULL,
  `cedula` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cartuchos`
--
ALTER TABLE `Cartuchos`
  ADD PRIMARY KEY (`id_cartucho`);

--
-- Indexes for table `CPUs`
--
ALTER TABLE `CPUs`
  ADD PRIMARY KEY (`id_cpu`);

--
-- Indexes for table `Departamentos`
--
ALTER TABLE `Departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indexes for table `Desktops`
--
ALTER TABLE `Desktops`
  ADD PRIMARY KEY (`id_desktop`),
  ADD KEY `cpu_id` (`cpu_id`),
  ADD KEY `monitor_id` (`monitor_id`);

--
-- Indexes for table `Impresoras`
--
ALTER TABLE `Impresoras`
  ADD PRIMARY KEY (`id_impresoras`);

--
-- Indexes for table `Laptops`
--
ALTER TABLE `Laptops`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indexes for table `Monitores`
--
ALTER TABLE `Monitores`
  ADD PRIMARY KEY (`id_monitor`);

--
-- Indexes for table `Otros`
--
ALTER TABLE `Otros`
  ADD PRIMARY KEY (`id_otro`);

--
-- Indexes for table `Tecnicos`
--
ALTER TABLE `Tecnicos`
  ADD PRIMARY KEY (`id_tecnico`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cartuchos`
--
ALTER TABLE `Cartuchos`
  MODIFY `id_cartucho` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CPUs`
--
ALTER TABLE `CPUs`
  MODIFY `id_cpu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Departamentos`
--
ALTER TABLE `Departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Desktops`
--
ALTER TABLE `Desktops`
  MODIFY `id_desktop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Impresoras`
--
ALTER TABLE `Impresoras`
  MODIFY `id_impresoras` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Laptops`
--
ALTER TABLE `Laptops`
  MODIFY `id_laptop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Monitores`
--
ALTER TABLE `Monitores`
  MODIFY `id_monitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Otros`
--
ALTER TABLE `Otros`
  MODIFY `id_otro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Tecnicos`
--
ALTER TABLE `Tecnicos`
  MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Desktops`
--
ALTER TABLE `Desktops`
  ADD CONSTRAINT `Desktops_ibfk_1` FOREIGN KEY (`cpu_id`) REFERENCES `CPUs` (`id_cpu`),
  ADD CONSTRAINT `Desktops_ibfk_2` FOREIGN KEY (`monitor_id`) REFERENCES `Monitores` (`id_monitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
