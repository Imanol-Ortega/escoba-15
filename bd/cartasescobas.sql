-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2022 a las 19:42:33
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cartasescobas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartasesp`
--

CREATE TABLE `cartasesp` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cartasesp`
--

INSERT INTO `cartasesp` (`id`, `content`) VALUES
(1, '1copa-min.png'),
(2, '1espada-min.png'),
(3, '1oro-min.png'),
(4, '1palo-min.png'),
(5, '2copa-min.png'),
(6, '2espada-min.png'),
(7, '2oro-min.png'),
(8, '2palo-min.png'),
(9, '3copa-min.png'),
(10, '3espada-min.png'),
(11, '3oro-min.png'),
(12, '3palo-min.png'),
(13, '4copa-min.png'),
(14, '4oro-min.png'),
(15, '4espada-min.png'),
(16, '4palo-min.png'),
(17, '5copa-min.png'),
(18, '5oro-min.png'),
(19, '5espada-min.png'),
(20, '5palo-min.png'),
(21, '6copa-min.png'),
(22, '6oro-min.png'),
(23, '6espada-min.png'),
(24, '6palo-min.png'),
(25, '7copa-min.png'),
(26, '7oro-min.png'),
(27, '7espada-min.png'),
(28, '7palo-min.png'),
(29, '10copa-min.png'),
(30, '10oro-min.png'),
(31, '10espada-min.png'),
(32, '10palo-min.png'),
(33, '11copa-min.png'),
(34, '11oro-min.png'),
(35, '11espada-min.png'),
(36, '11palo-min.png'),
(37, '12copa-min.png'),
(38, '12oro-min.png'),
(39, '12espada-min.png'),
(40, '12palo-min.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartasing`
--

CREATE TABLE `cartasing` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cartasing`
--

INSERT INTO `cartasing` (`id`, `content`) VALUES
(1, '2corazones-min.png'),
(2, '2diamante-min.png'),
(3, '2pica-min.png'),
(4, '2trebol-min.png'),
(5, '3corazones-min.png'),
(6, '3diamante-min.png'),
(7, '3pica-min.png'),
(8, '3trebol-min.png'),
(9, '4corazones-min.png'),
(10, '4pica-min.png'),
(11, '4trebol-min.png'),
(12, '4diamante-min.png'),
(13, '5corazones-min.png'),
(14, '5diamante-min.png'),
(15, '5pica-min.png'),
(16, '5trebol-min.png'),
(17, '6corazones-min.png'),
(18, '6diamante-min.png'),
(19, '6pica-min.png'),
(20, '6trebol-min.png'),
(21, '7diamante-min.png'),
(22, '7pica-min.png'),
(23, '7trebol-min.png'),
(24, '7corazones-min.png'),
(25, 'Jdiamante-min.png'),
(26, 'Jpica-min.png'),
(27, 'Jtrebol-min.png'),
(28, 'Jcorazones-min.png'),
(29, 'Kdiamante-min.png'),
(30, 'Kpica-min.png'),
(31, 'Kcorazones-min.png'),
(32, 'Ktrebol-min.png'),
(33, 'Qpica-min.png'),
(34, 'Qtrebol-min.png'),
(35, 'Qcorazones-min.png'),
(36, 'Qdiamante-min.png'),
(37, 'Acorazones-min.png'),
(38, 'Adiamante-min.png'),
(39, 'Apica-min.png'),
(40, 'Atrebol-min.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `pass`) VALUES
(1, 'Imanol', 'Imanol'),
(2, 'Eduardo', 'Eduardo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartasesp`
--
ALTER TABLE `cartasesp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cartasing`
--
ALTER TABLE `cartasing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cartasesp`
--
ALTER TABLE `cartasesp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cartasing`
--
ALTER TABLE `cartasing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
