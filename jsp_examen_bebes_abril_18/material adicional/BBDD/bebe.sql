-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2018 a las 15:46:52
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `it_ev_jsp_1718`
--
CREATE DATABASE IF NOT EXISTS `it_ev_jsp_17_18` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `it_ev_jsp_17_18`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebe`
--

CREATE TABLE `bebe` (
  `dni` varchar(10) NOT NULL,
  `nombrePadre` varchar(25) NOT NULL,
  `nombreMadre` varchar(25) NOT NULL,
  `horaNacimiento` varchar(5) NOT NULL,
  `horaSalidaIncubadora` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bebe`
--

INSERT INTO `bebe` (`dni`, `nombrePadre`, `nombreMadre`, `horaNacimiento`, `horaSalidaIncubadora`) VALUES
('12345678A', 'Antonio Ruiz', 'Antonia Maestre', '18:30', NULL),
('22222222C', 'Luis Paco', 'Marta Gomez', '15:25', NULL),
('33333333D', 'Jacinto Cino', 'Luisa Diaz', '07:30', '11:25'),
('87654321B', 'Pedro Martin', 'Andrea Sosa', '10:20', '18:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `usuario`, `password`) VALUES
(1, 'Jose Luis', 'jose', 'jose'),
(2, 'Maria del Carmen', 'maria', 'maria'),
(3, 'Irene Cuadra', 'irene', 'irene');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebe`
--
ALTER TABLE `bebe`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
