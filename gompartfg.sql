-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-05-2019 a las 19:44:01
-- Versión del servidor: 10.3.14-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id9305132_gompartfg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_juego` int(11) NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`username`, `id_juego`, `clave`, `valor`) VALUES
('edu123', 1, 'puntuacionmax', 500),
('alejandroplayer', 1, 'puntuacionmax', 150),
('juanprueba', 1, 'puntuacionmax', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `nombre_juego` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `nombre_juego`, `descripcion`, `ruta`, `img`, `visible`) VALUES
(1, 'JetPack Man VS Misiles', 'Este juego está creado por Eduardo Gómez y es una prueba del desarollo en Unity con C#', 'https://gompartfg.000webhostapp.com/biblioteca/JetPack Man VS Misiles/', 'JetPack_Man_VS_Misiles.jpg', 1),
(19, 'Survival or Die', 'Este juego está creado por Eduardo Gómez y es una prueba del desarollo en Unity con C#', 'https://gompartfg.000webhostapp.com/biblioteca/Survival or Die/', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`username`, `password`, `nombre`, `apellido`) VALUES
('admin', '99928fe764ff84a6004b251e467a38ca', '', ''),
('alejandroplayer', '202cb962ac59075b964b07152d234b70', 'Alejandro', 'Profesor Prueba'),
('edu123', '202cb962ac59075b964b07152d234b70', 'Eduardo', 'Gómez Paredes'),
('juanprueba', '202cb962ac59075b964b07152d234b70', 'Juan', 'Prueba 1'),
('juanvelasco', '202cb962ac59075b964b07152d234b70', 'Juan', 'Compa Curro'),
('otraprueba', '202cb962ac59075b964b07152d234b70', 'otra', 'prueba mas'),
('prueba14', '202cb962ac59075b964b07152d234b70', 'Prueba', 'De Clase'),
('pruebaclase', '202cb962ac59075b964b07152d234b70', 'Prueba', 'En clase'),
('usuario1', '202cb962ac59075b964b07152d234b70', 'usuario', 'prueba uno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD KEY `user` (`username`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juego`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id_juego`),
  ADD CONSTRAINT `biblioteca_ibfk_2` FOREIGN KEY (`username`) REFERENCES `usuarios` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
