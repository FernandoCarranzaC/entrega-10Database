-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-08-2020 a las 05:37:30
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detgrupo`
--

CREATE TABLE `detgrupo` (
  `grpClave` int NOT NULL,
  `estNoControl` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `estNoControl` varchar(10) NOT NULL,
  `estNombre` varchar(50) NOT NULL,
  `estCarrera` varchar(60) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`estNoControl`, `estNombre`, `estCarrera`, `id`) VALUES
('8', '8', 'Ingeniería Informática', 96),
('10', '10', 'Ingeniería Bioquímica', 100),
('12', 'yadira', 'Ingeniería Informática', 102),
('14', 'fernando', 'Ingeniería Industrial', 104),
('15', 'Yadira Nuñez', 'Ingeniería en Sistemas', 105),
('17', 'Alejandra Zambrano', 'Ingeniería Industrial', 107),
('20', 'María del Rosario', 'Ingeniería Informática', 108);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `insClave` int NOT NULL,
  `insNombre` varchar(50) NOT NULL,
  `insDepto` varchar(60) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`insClave`, `insNombre`, `insDepto`, `id`) VALUES
(1, 'Othoniel Rivera', 'Desarrollo Academico', 50),
(9, 'Leonardo Martinez', 'Desarrollo Academico', 54),
(10, 'Fernando Carranza', 'Instrustrial', 57),
(11, 'Sandra Ruán', 'Ciencias Básicas', 58),
(12, 'Mariela Vázquez', 'Sistemas y Computacion', 59),
(15, 'Sandra Ruán', 'Instrustrial', 60),
(16, 'Fernando Carranza Campos', 'Sistemas y Computacion', 62),
(17, 'Maritza Gómez Ruan', 'Ciencias Básicas', 63);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detgrupo`
--
ALTER TABLE `detgrupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `detgrupo`
--
ALTER TABLE `detgrupo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
