-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2017 a las 06:32:58
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(400) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `existencias` int(11) NOT NULL,
  `precio_compra` int(11) NOT NULL,
  `precio_venta` int(11) NOT NULL,
  `posted_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto`, `descripcion`, `existencias`, `precio_compra`, `precio_venta`, `posted_on`) VALUES
(2, 'Impresora uuuu', 'Multifuncional hp color', 25, 5000, 6200, '2017-03-23 05:28:35'),
(5, 'Radio', 'Sony compact', 5, 1200, 1500, NULL),
(6, 'Laptop Nueva', 'Dell inspiron 6200', 12, 13000, 15000, '2017-03-23 05:29:06'),
(7, 'DVD', 'Sony ', 25, 2500, 3200, NULL),
(8, 'Refrigerador', 'Samsung ', 17, 17000, 20000, NULL),
(9, 'Reloj', 'Smart watch', 10, 7000, 8500, '2017-03-23 01:57:52'),
(10, 'Mouse', 'wireless optical mouse', 20, 300, 400, '2017-03-23 01:52:51'),
(11, 'Camara', 'Sony ultimo model', 12, 10000, 12000, '2017-03-23 02:00:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
