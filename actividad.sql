-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-08-2020 a las 05:30:39
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
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `actClave` int NOT NULL,
  `actNombre` varchar(100) NOT NULL,
  `actCategoria` varchar(50) NOT NULL,
  `actObjetivo` varchar(100) NOT NULL,
  `actContenido` varchar(200) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`actClave`, `actNombre`, `actCategoria`, `actObjetivo`, `actContenido`, `id`) VALUES
(3, 'congreso de sistemas', 'Congreso', '1', '1', 53),
(70, 'Emprendedor', 'Concurso', 'Hacer una Empresa y se emprendedor', 'Empresa 100', 56),
(100, 'Computo en la nube', 'Concurso', 'Hacer Computo en la nube', 'servicios de aws', 57),
(200, 'taller de emprendedores', 'Congreso', 'aprender a ser emprendedores', 'empresa', 58),
(300, 'Congreso Mazatán', 'Congreso', 'Actualización de Conocimientos', 'Areas de la computacón', 59),
(400, 'Tutorias semestre 2020', 'Tutorias', 'Guiar a estudiantes nuevo ingreso', 'conocer el ITJ reglamentos y autoridades', 61),
(500, 'Maraton de WEB', 'Concurso', 'Aprender todo WEB', 'React, LoopBack, Deploy', 63);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
