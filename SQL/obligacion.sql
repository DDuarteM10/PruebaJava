-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 05:57:15
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
-- Estructura de tabla para la tabla `obligacion`
--

CREATE TABLE `obligacion` (
  `Id_obligacion` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `obligacion`
--

INSERT INTO `obligacion` (`Id_obligacion`, `Descripción`, `Monto`, `Fecha_vencimiento`) VALUES
(1, 'Obligacion 1', 1000.00, '2026-01-01'),
(2, 'Obligacion 2', 1500.00, '2026-02-01'),
(3, 'Obligacion 3', 2000.00, '2026-03-01'),
(4, 'Obligacion n', 1000.05, '2025-01-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  ADD PRIMARY KEY (`Id_obligacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `obligacion`
--
ALTER TABLE `obligacion`
  MODIFY `Id_obligacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
