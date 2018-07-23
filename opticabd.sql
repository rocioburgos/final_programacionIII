-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2018 a las 15:33:01
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `opticabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anteojos`
--

CREATE TABLE `anteojos` (
  `id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `precio` varchar(30) NOT NULL,
  `aumento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anteojos`
--

INSERT INTO `anteojos` (`id`, `color`, `marca`, `precio`, `aumento`) VALUES
(2, 'mixto', 'lala', '12', '45'),
(4, 'celeste', 'lala', '15', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `perfil` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `clave`, `nombre`, `apellido`, `perfil`, `foto`) VALUES
(1, 'rocio@as.com', 'rocio', 'rocio', 'burgos', 'propietario', './FotosUsuarios/burgos-rocio.j'),
(2, 'marcos@as.com', 'rocio', 'rocio', 'burgos', 'propietario', './FotosUsuarios/burgos-rocio.j'),
(3, 'sofia@as.com', 'sofia', 'sofia', 'burgos', 'empleado', './FotosUsuarios/burgos-sofia.j'),
(4, 'celeste@as.com', 'celeste', 'celeste', 'burgos', 'encargado', './FotosUsuarios/burgos-celeste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_anteojos`
--

CREATE TABLE `ventas_anteojos` (
  `id` int(11) NOT NULL,
  `id_anteojos` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas_anteojos`
--

INSERT INTO `ventas_anteojos` (`id`, `id_anteojos`, `cantidad`, `fecha`) VALUES
(1, 1, 20, '20-10-2018'),
(2, 1, 20, '20-10-2017');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anteojos`
--
ALTER TABLE `anteojos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_anteojos`
--
ALTER TABLE `ventas_anteojos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anteojos`
--
ALTER TABLE `anteojos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ventas_anteojos`
--
ALTER TABLE `ventas_anteojos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
