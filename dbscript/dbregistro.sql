-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2024 a las 15:00:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbregistro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcolege`
--

CREATE TABLE `tcolege` (
  `idColege` char(13) NOT NULL,
  `name` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `phone` char(15) NOT NULL,
  `email` char(15) NOT NULL,
  `webSite` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcourse`
--

CREATE TABLE `tcourse` (
  `idCourse` varchar(13) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `requisites` text NOT NULL,
  `description` text NOT NULL,
  `modality` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tcourse`
--

INSERT INTO `tcourse` (`idCourse`, `code`, `name`, `category`, `requisites`, `description`, `modality`, `created_at`, `updated_at`) VALUES
('65f1195cb43cc', 'MATE001', 'Matemáticas', 'Primaria', 'Ninguno', 'Curso de matemáticas.', 'Presencial', '2024-03-12 22:17:47', '0000-00-00 00:00:00'),
('65f1196c6eaef', 'CINA002', 'Ciencias Naturales', 'Primaria', 'Ninguno', 'Curso de ciencias naturales.', 'Presencial', '2024-03-12 22:17:47', '0000-00-00 00:00:00'),
('65f1197fe14c5', 'LECU003', 'Lenguaje y Comunicación', 'Primaria', 'Ninguno', 'Curso de lenguaje y comunicación.', 'Presencial', '2024-03-12 22:17:47', '0000-00-00 00:00:00'),
('65f119946cf12', 'ARMU004', 'Arte y Música', 'Primaria', 'Ninguno', 'Curso de arte y música.', 'Presencial', '2024-03-12 22:17:47', '0000-00-00 00:00:00'),
('65f119a5cca09', 'EDFI005', 'Educación Física', 'Primaria', 'Ninguno', 'Curso de educación física.', 'Presencial', '2024-03-12 22:17:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tenrolled`
--

CREATE TABLE `tenrolled` (
  `idEnroller` varchar(13) NOT NULL,
  `idPerson` varchar(13) NOT NULL,
  `idCourse` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperson`
--

CREATE TABLE `tperson` (
  `idPerson` char(13) NOT NULL,
  `idUser` char(13) DEFAULT NULL,
  `firstName` varchar(50) NOT NULL,
  `surName` varchar(100) NOT NULL,
  `dni` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tperson`
--

INSERT INTO `tperson` (`idPerson`, `idUser`, `firstName`, `surName`, `dni`, `phone`, `email`, `role`, `created_at`, `updated_at`) VALUES
('65f13390e96b3', '65f12b531fb18', 'Max', 'huilca Lopinta', 85274163, '987852654', 'max@gmail.com', 'admin', '2024-03-13 06:06:26', '2024-03-13 06:06:26'),
('65f13409b39c0', 'ece4797eaf5e', 'Roberth', 'Centeno', 71423999, '987654321', 'r.centen0ba@gmail.com', 'teacher', '2024-03-13 06:08:39', '2024-03-13 06:08:39'),
('a5BvR4s2j6PcD', NULL, 'Carlos', 'López', 34567890, '345678901', 'carlos@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('b2Z4BpQ6XvC2N', NULL, 'Marina', 'López', 67890124, '678901234', 'marina@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('b8Z4BpQ6XvC2N', NULL, 'Sara', 'López', 56789014, '567890123', 'sara@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('c6XvC2N4BpQ6X', NULL, 'Daniel', 'Fernández', 78901236, '789012345', 'daniel@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('d5VrC8x2Z4BpQ', NULL, 'Alejandro', 'Gómez', 89012347, '890123456', 'alejandro@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('e3T5FtY1JhM7V', NULL, 'Roberto', 'Fernández', 56789013, '567890123', 'roberto@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('f1GhJ8n2VrKlT', NULL, 'Laura', 'Martínez', 45678901, '456789012', 'laura@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('g4Z4BpQ6XvC2N', NULL, 'Carmen', 'Sánchez', 45678902, '456789012', 'carmen@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('h5VrC8x2Z4BpQ', NULL, 'Hugo', 'García', 34567891, '345678901', 'hugo@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('j7U2JhM3T5FtY', NULL, 'Silvia', 'Martínez', 12345679, '123456780', 'silvia@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('k6XvC2N4BpQ6X', NULL, 'Eva', 'Hernández', 23456780, '234567890', 'eva@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('m5VrC8x2Z4BpQ', NULL, 'Antonio', 'García Martín', 90123457, '901234567', 'antonio@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('m7V3T5FtY1JhM', NULL, 'Julia', 'García', 34567892, '345678901', 'julia@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('n6VrC8x2Z4BpQ', NULL, 'Elena', 'López', 12345670, '123456780', 'elena@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('n8XvC2N4BpQ6X', NULL, 'Elena', 'Hernández López', 12345678, '123456789', 'elena@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('o7U2JhM3T5FtY', NULL, 'Manuel', 'Gómez Ruiz', 23456789, '234567890', 'manuel@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('p6XvC2N4BpQ6X', NULL, 'Sara', 'Martínez García', 34567890, '345678901', 'sara@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('p7ZmB4c9V8NlM', NULL, 'Pedro', 'Rodríguez', 67890123, '678901234', 'pedro@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('p9XvC2N4BpQ6X', NULL, 'Pablo', 'Martínez', 89012346, '890123456', 'pablo@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('q3KlP9o8Z6XvC', NULL, 'Diego', 'Gómez', 89012345, '890123456', 'diego@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('q5VrC8x2Z4BpQ', NULL, 'Javier', 'López Sánchez', 45678901, '456789012', 'javier@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('r5FtY1v7U2JhI', NULL, 'Sofía', 'Fernández', 78901234, '789012345', 'sofia@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('r8XvC2N4BpQ6X', NULL, 'Laura', 'Fernández López', 56789012, '567890123', 'laura@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('s7U2JhM3T5FtY', NULL, 'David', 'Martín Gómez', 67890123, '678901234', 'david@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('s8hU1kF7n3QzY', NULL, 'Juan', 'Pérez', 12345678, '123456789', 'juan@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('t2WdJ9x6g5LpE', NULL, 'María', 'González', 23456789, '234567890', 'maria@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('t6XvC2N4BpQ6X', NULL, 'Paula', 'Rodríguez Martínez', 78901234, '789012345', 'paula@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('u2JhM7v3T5FtY', NULL, 'Lucía', 'Hernández', 90123456, '901234567', 'lucia@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('u5VrC8x2Z4BpQ', NULL, 'Miguel', 'Sánchez Rodríguez', 89012345, '890123456', 'miguel@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('v7U2JhM3T5FtY', NULL, 'Marta', 'Sánchez', 67890125, '678901234', 'marta@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('v8XvC2N4BpQ6X', NULL, 'Cristina', 'López Martínez', 90123456, '901234567', 'cristina@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('w1JhM3T5FtY7U', NULL, 'Isabel', 'Gómez', 78901235, '789012345', 'isabel@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('w9QkS3t6PzHbX', NULL, 'Ana', 'Sánchez', 56789012, '567890123', 'ana@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('x8Z4BpQ6XvC2N', NULL, 'Luis', 'Martínez', 23456781, '234567890', 'luis@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('y8XvC2N4BpQ6X', NULL, 'Lucas', 'Rodríguez', 90123458, '901234567', 'lucas@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23'),
('z9XvC2N4BpQ6X', NULL, 'Mario', 'Pérez', 45678903, '456789012', 'mario@gmail.com', 'student', '2024-03-13 08:54:23', '2024-03-13 08:54:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tuser`
--

CREATE TABLE `tuser` (
  `idUser` char(13) NOT NULL,
  `firstName` varchar(70) NOT NULL,
  `surName` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(700) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tuser`
--

INSERT INTO `tuser` (`idUser`, `firstName`, `surName`, `email`, `password`, `created_at`, `updated_at`) VALUES
('65f12b531fb18', 'Max', 'Huilca Lopinta', 'max@gmail.com', '12345678', '2024-03-13 05:30:51', '2024-03-13 05:30:51'),
('ece4797eaf5e', 'Roberth', 'Centeno', 'r.centen0ba@gmail.com', '12345678', '2024-03-13 05:30:51', '2024-03-13 05:30:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tcolege`
--
ALTER TABLE `tcolege`
  ADD PRIMARY KEY (`idColege`);

--
-- Indices de la tabla `tcourse`
--
ALTER TABLE `tcourse`
  ADD PRIMARY KEY (`idCourse`);

--
-- Indices de la tabla `tenrolled`
--
ALTER TABLE `tenrolled`
  ADD PRIMARY KEY (`idEnroller`),
  ADD KEY `idPerson` (`idPerson`),
  ADD KEY `idCourse` (`idCourse`);

--
-- Indices de la tabla `tperson`
--
ALTER TABLE `tperson`
  ADD PRIMARY KEY (`idPerson`);

--
-- Indices de la tabla `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`idUser`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tenrolled`
--
ALTER TABLE `tenrolled`
  ADD CONSTRAINT `tenrolled_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `tperson` (`idPerson`),
  ADD CONSTRAINT `tenrolled_ibfk_2` FOREIGN KEY (`idCourse`) REFERENCES `tcourse` (`idCourse`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
