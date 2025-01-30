-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 05:57:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_david`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio_obligacion`
--

CREATE TABLE `negocio_obligacion` (
  `Id_Negocio` int(11) NOT NULL,
  `obligacion_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `negocio_obligacion`
--

INSERT INTO `negocio_obligacion` (`Id_Negocio`, `obligacion_ID`) VALUES
(1, 1),
(1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `negocio_obligacion`
--
ALTER TABLE `negocio_obligacion`
  ADD PRIMARY KEY (`Id_Negocio`,`obligacion_ID`),
  ADD KEY `obligacion_ID` (`obligacion_ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `negocio_obligacion`
--
ALTER TABLE `negocio_obligacion`
  ADD CONSTRAINT `negocio_obligacion_ibfk_1` FOREIGN KEY (`Id_Negocio`) REFERENCES `negocio_fiduciario` (`Id_Negocio_Fiduciario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `negocio_obligacion_ibfk_2` FOREIGN KEY (`obligacion_ID`) REFERENCES `obligacion` (`id_obligacion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
