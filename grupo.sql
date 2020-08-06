-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-08-2020 a las 05:33:13
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sql10354667`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `grpClave` int NOT NULL,
  `grpCarrera` varchar(60) NOT NULL,
  `actClave` int NOT NULL,
  `insClave` int NOT NULL,
  `grpAula` varchar(10) NOT NULL,
  `grpLimite` int NOT NULL,
  `grpDateIni` date NOT NULL,
  `grpDateFin` date NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`grpClave`, `grpCarrera`, `actClave`, `insClave`, `grpAula`, `grpLimite`, `grpDateIni`, `grpDateFin`, `id`) VALUES
(1, 'Ingeniería en Sistemas', 3, 1, '6', 11, '2020-07-17', '2020-07-18', 12),
(2, 'Ingeniería Informática', 3, 1, '2', 22, '2020-07-21', '2020-07-21', 45),
(3, 'Ingeniería en Sistemas', 100, 10, 'A333', 33, '2020-07-17', '2020-07-17', 46),
(4, 'Ingeniería Industrial', 200, 15, 'A5', 8, '2020-07-28', '2020-07-31', 49),
(5, 'Ingenieríe en Gestión', 300, 15, 'A7', 32, '2020-08-03', '2020-08-07', 50),
(6, 'Ingeniería Informática', 70, 1, '7', 77, '2020-07-07', '2020-07-28', 51);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
