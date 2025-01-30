-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 05:56:11
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
-- Estructura de tabla para la tabla `negocio_fiduciario`
--

CREATE TABLE `negocio_fiduciario` (
  `Id_Negocio_Fiduciario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripción` text DEFAULT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `negocio_fiduciario`
--

INSERT INTO `negocio_fiduciario` (`Id_Negocio_Fiduciario`, `Nombre`, `Descripción`, `Fecha_inicio`, `Fecha_fin`) VALUES
(1, 'A', 'Negocio 1', '2025-01-28', '2025-01-30'),
(2, 'B', 'Negocio 2', '2025-01-28', '2025-01-30'),
(3, 'C', 'Negocio 3', '2025-01-28', '2025-01-30'),
(4, 'D', 'Negocio 4', '2025-01-28', '2025-01-30'),
(5, 'E', 'Negocio 5', '2025-01-28', '2025-01-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `negocio_fiduciario`
--
ALTER TABLE `negocio_fiduciario`
  ADD PRIMARY KEY (`Id_Negocio_Fiduciario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `negocio_fiduciario`
--
ALTER TABLE `negocio_fiduciario`
  MODIFY `Id_Negocio_Fiduciario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
