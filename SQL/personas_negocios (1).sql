-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 05:57:21
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
-- Estructura de tabla para la tabla `personas_negocios`
--

CREATE TABLE `personas_negocios` (
  `Numero_Doc` int(11) NOT NULL,
  `Documento` enum('CC','TI','CE','NIT','PASAPORTE') NOT NULL,
  `Id_Negocio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `personas_negocios`
--

INSERT INTO `personas_negocios` (`Numero_Doc`, `Documento`, `Id_Negocio`) VALUES
(123456789, 'CC', 1),
(123456789, 'CC', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas_negocios`
--
ALTER TABLE `personas_negocios`
  ADD PRIMARY KEY (`Numero_Doc`,`Documento`,`Id_Negocio`),
  ADD KEY `Id_Negocio` (`Id_Negocio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personas_negocios`
--
ALTER TABLE `personas_negocios`
  ADD CONSTRAINT `personas_negocios_ibfk_1` FOREIGN KEY (`Id_Negocio`) REFERENCES `negocio_fiduciario` (`Id_Negocio_Fiduciario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personas_negocios_ibfk_2` FOREIGN KEY (`Numero_Doc`,`Documento`) REFERENCES `personas_participantes` (`Numero_Documento`, `Tipo_Documento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
