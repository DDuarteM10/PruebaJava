-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2025 a las 05:57:25
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
-- Estructura de tabla para la tabla `personas_participantes`
--

CREATE TABLE `personas_participantes` (
  `id_Persona` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Tipo_Documento` enum('CC','TI','CE','NIT','PASAPORTE') NOT NULL,
  `Numero_Documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `personas_participantes`
--

INSERT INTO `personas_participantes` (`id_Persona`, `Nombre`, `Apellido`, `Tipo_Documento`, `Numero_Documento`) VALUES
(1, 'Juan', 'Pérez', 'CC', 123456789),
(2, 'María', 'Gómez', 'TI', 987654321),
(3, 'Carlos', 'López', 'NIT', 112233445),
(4, 'Ana', 'Martínez', 'PASAPORTE', 0),
(5, 'Luis', 'Fernández', 'TI', 998877665),
(6, 'David', 'Duarte', 'TI', 100001),
(8, 'David', 'Duarte', 'TI', 100002);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas_participantes`
--
ALTER TABLE `personas_participantes`
  ADD PRIMARY KEY (`id_Persona`),
  ADD UNIQUE KEY `unique_documento` (`Numero_Documento`,`Tipo_Documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas_participantes`
--
ALTER TABLE `personas_participantes`
  MODIFY `id_Persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
