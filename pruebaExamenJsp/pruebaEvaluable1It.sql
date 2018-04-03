-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-04-2018 a las 19:58:13
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaEvaluable1It`
--
CREATE DATABASE IF NOT EXISTS `pruebaEvaluable1It` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pruebaEvaluable1It`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fechaAlta` date NOT NULL,
  `departamento` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellidos`, `fechaAlta`, `departamento`) VALUES
('11111111A', 'Carlos', 'Barranco', '2006-02-02', 'Informatica'),
('22222222A', 'Ricardo', 'Talavera', '2016-02-04', 'Informatica'),
('33333333A', 'Antonio', 'Perez', '2010-09-14', 'Deporte'),
('44444444A', 'Isabel', 'Moreno', '2012-01-20', 'LADE'),
('55555555A', 'Maria', 'Campano', '2011-05-06', 'Biotecnologia'),
('28489514N', 'Javier', 'Lopez Cano', '1985-03-31', 'biotecnologia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
