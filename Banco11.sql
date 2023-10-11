-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2023 a las 02:32:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banquero`
--

CREATE TABLE `banquero` (
  `id` int(11) NOT NULL,
  `nombrebanquero` varchar(100) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `ciudadbanquero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banquero`
--

INSERT INTO `banquero` (`id`, `nombrebanquero`, `direccion`, `ciudadbanquero`) VALUES
(1, 'Julio', 'Hidalgo 245 Mirador', 'Puebla'),
(2, 'Alberto', 'Jardin 4 Jardin', 'Izucar de Matamoros'),
(3, 'Silvia', 'Bosques Verdes 548 San nicolas', 'Puebla'),
(4, 'Ramiro', 'Lomas Turbas 69 Lejos', 'Queretaro'),
(5, 'Francisco', 'Independencia 648 Centro', 'Ciudad Juarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `direccion` varchar(254) NOT NULL,
  `ciudadcliente` varchar(254) NOT NULL,
  `tipocliente` tinyint(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombrecliente`, `direccion`, `ciudadcliente`, `tipocliente`, `status`) VALUES
(1, 'Esteban', 'C. 10 b Sur 2451 Anzures, Puebla.', 'Puebla', 1, 1),
(2, 'Marcos', 'C. Sexta de Victoria 252 Piaxtla, Izucar de Matamoros, Puebla.', 'Izucar de Matamoros', 2, 1),
(3, 'Juan Felipe', 'C. Margaritas 34 Chula Vista, Puebla.', 'Puebla', 2, 0),
(4, 'Pablo', 'Av. Reforma 35 centro, Toluca, Estado de México.', 'Toluca', 1, 1),
(5, 'Andrea', 'Av. Centenario 25 Centro, Mazatlán, Sinaloa.', 'Mazatlán', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE `deposito` (
  `numdeposito` int(11) NOT NULL,
  `fechadeposito` datetime NOT NULL,
  `importedeposito` float NOT NULL,
  `tipomoneda` tinyint(4) NOT NULL,
  `formadeposito` int(100) NOT NULL,
  `idcliente` int(100) NOT NULL,
  `idsucursal` int(100) NOT NULL,
  `idbanquero` int(100) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deposito`
--

INSERT INTO `deposito` (`numdeposito`, `fechadeposito`, `importedeposito`, `tipomoneda`, `formadeposito`, `idcliente`, `idsucursal`, `idbanquero`, `fecharegistro`) VALUES
(1, '2023-06-26 12:00:36', 2500, 1, 1, 4, 2, 1, '2023-06-26 12:00:36'),
(2, '2023-06-27 07:01:24', 10000, 1, 1, 5, 2, 4, '2023-06-27 07:01:24'),
(3, '2023-06-29 23:50:36', 500, 2, 2, 1, 5, 5, '2023-06-29 23:50:36'),
(4, '2023-07-01 14:20:45', 1500, 3, 2, 4, 3, 1, '2023-07-01 14:20:45'),
(5, '2023-07-03 10:30:11', 500, 3, 1, 2, 1, 4, '2023-07-03 10:30:11'),
(6, '2023-07-06 10:45:16', 5000, 1, 2, 3, 3, 5, '2023-07-06 10:45:16'),
(7, '2023-07-08 13:50:20', 1000, 2, 1, 1, 4, 2, '2023-07-08 13:50:20'),
(8, '2023-07-11 09:41:34', 6500, 3, 1, 5, 1, 3, '2023-07-11 09:41:34'),
(9, '2023-07-13 17:04:45', 2000, 1, 2, 2, 5, 4, '2023-07-13 17:04:45'),
(10, '2023-07-15 21:54:34', 3500, 2, 2, 2, 1, 3, '2023-07-15 21:54:34'),
(11, '2023-09-30 17:23:04', 9500, 1, 1, 3, 5, 3, '2023-09-30 17:23:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `numprestamo` int(11) NOT NULL,
  `fechaautorizacion` datetime NOT NULL,
  `importeprestamo` float NOT NULL,
  `tipomoneda` tinyint(4) NOT NULL,
  `idcliente` int(100) NOT NULL,
  `idsucursal` int(100) NOT NULL,
  `idbanquero` int(100) NOT NULL,
  `fecharegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`numprestamo`, `fechaautorizacion`, `importeprestamo`, `tipomoneda`, `idcliente`, `idsucursal`, `idbanquero`, `fecharegistro`) VALUES
(1, '2023-07-25 10:02:45', 2000, 1, 2, 3, 5, '2023-07-25 10:02:45'),
(2, '2023-07-30 12:26:48', 500, 3, 1, 2, 4, '2023-07-30 12:26:48'),
(3, '2023-08-01 11:35:26', 1200, 2, 3, 5, 1, '2023-08-01 11:35:26'),
(4, '2023-08-03 09:45:12', 1000, 3, 5, 4, 3, '2023-08-03 09:45:12'),
(5, '2023-08-05 09:15:24', 2500, 2, 4, 1, 2, '2023-08-05 09:15:24'),
(6, '2023-08-09 10:30:46', 5000, 1, 3, 4, 1, '2023-08-09 10:30:46'),
(7, '2023-08-11 13:50:16', 1954, 2, 4, 2, 3, '2023-08-11 13:50:16'),
(8, '2023-08-15 09:32:29', 2200, 3, 3, 2, 1, '2023-08-15 09:32:29'),
(9, '2023-08-18 14:20:35', 3290, 1, 4, 5, 2, '2023-08-18 14:20:35'),
(10, '2023-08-20 11:34:05', 5142, 2, 1, 3, 5, '2023-08-20 11:34:05'),
(11, '2023-05-30 05:45:54', 6850, 1, 1, 1, 3, '2023-05-30 05:45:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL,
  `nombresucursal` varchar(100) NOT NULL,
  `activa` tinyint(4) NOT NULL,
  `ciudadsucursal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `nombresucursal`, `activa`, `ciudadsucursal`) VALUES
(1, 'Sucursal Dorada', 1, 'Norte'),
(2, 'Sucursal Cristal', 0, 'Sur'),
(3, 'Sucursal Centro', 1, 'Centro'),
(4, 'Sucursal Mirador', 0, 'Este'),
(5, 'Sucursal Paseo Bravo', 1, 'Norte');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banquero`
--
ALTER TABLE `banquero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`numdeposito`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idsucursal` (`idsucursal`),
  ADD KEY `idbanquero` (`idbanquero`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`numprestamo`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idsucursal` (`idsucursal`),
  ADD KEY `idbanquero` (`idbanquero`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banquero`
--
ALTER TABLE `banquero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `deposito`
--
ALTER TABLE `deposito`
  MODIFY `numdeposito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `numprestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD CONSTRAINT `deposito_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `deposito_ibfk_2` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `deposito_ibfk_3` FOREIGN KEY (`idbanquero`) REFERENCES `banquero` (`id`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`idsucursal`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`idbanquero`) REFERENCES `banquero` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
