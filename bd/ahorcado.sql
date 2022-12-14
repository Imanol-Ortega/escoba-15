-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 23:49:55
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
-- Base de datos: `ahorcado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dificil`
--

CREATE TABLE `dificil` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dificil`
--

INSERT INTO `dificil` (`id`, `content`) VALUES
(1, 'VOLADOR'),
(2, 'FRANCIA'),
(3, 'ADOPTAR'),
(4, 'CALDERA'),
(5, 'BAHAMAS'),
(6, 'DESISTE'),
(7, 'ECUADOR'),
(8, 'GLUTEOS'),
(9, 'HOTELES'),
(10, 'MASCARA'),
(11, 'REMERAS'),
(12, 'BELGICA'),
(13, 'LETALES'),
(14, 'FUERTES'),
(15, 'LUBRICA'),
(16, 'PATATAS'),
(17, 'TENEDOR'),
(18, 'BALONES'),
(19, 'SIMBOLO'),
(20, 'GORRITA'),
(21, 'URUGUAY'),
(22, 'LASTIMA'),
(23, 'ESCOBAS'),
(24, 'CERROJO'),
(25, 'HUERTOS'),
(26, 'MILITAR'),
(27, 'FIGURAS'),
(28, 'TEORICO'),
(29, 'HIBRIDO'),
(30, 'HELADOS'),
(31, 'MOJARSE'),
(32, 'FELICES'),
(33, 'CAMERUN'),
(34, 'BATATAS'),
(35, 'REPROBO'),
(36, 'ESCOCIA'),
(37, 'JAPONES'),
(38, 'DORMIDO'),
(39, 'TEMPLOS'),
(40, 'ADULTOS'),
(41, 'SECRETO'),
(42, 'IRLANDA'),
(43, 'CROACIA'),
(44, 'GRAFICA'),
(45, 'FISICOS'),
(46, 'ESCUDOS'),
(47, 'DOLORES'),
(48, 'CAMINOS'),
(49, 'BOLIVIA'),
(50, 'ARDILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facil`
--

CREATE TABLE `facil` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facil`
--

INSERT INTO `facil` (`id`, `content`) VALUES
(1, 'BUENO'),
(2, 'APODO'),
(3, 'COPAS'),
(4, 'DADOS'),
(5, 'ENVIO'),
(6, 'GASES'),
(7, 'BESOS'),
(8, 'FETOS'),
(9, 'HECHO'),
(10, 'AGUDO'),
(11, 'MENTA'),
(12, 'EUROS'),
(13, 'REINO'),
(14, 'BARCO'),
(15, 'LADOS'),
(16, 'GAFAS'),
(17, 'PESOS'),
(18, 'CALMA'),
(19, 'NOTAS'),
(20, 'FOCOS'),
(21, 'DENSO'),
(22, 'HECES'),
(23, 'GIROS'),
(24, 'PATOS'),
(25, 'ANIMO'),
(26, 'MANGO'),
(27, 'SOBRE'),
(28, 'DOMOS'),
(29, 'RUSIA'),
(30, 'OBRAS'),
(31, 'CATAR'),
(32, 'TENER'),
(33, 'FOLIO'),
(34, 'DUBAI'),
(35, 'MALTA'),
(36, 'PECES'),
(37, 'AYUDA'),
(38, 'ORDEN'),
(39, 'ENOJO'),
(40, 'ROBAN'),
(41, 'CREMA'),
(42, 'GRITE'),
(43, 'PARIS'),
(44, 'BEBES'),
(45, 'FRITO'),
(46, 'ESPIA'),
(47, 'LENTO'),
(48, 'APODO'),
(49, 'GORDO'),
(50, 'DONAS');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio`
--

CREATE TABLE `medio` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medio`
--

INSERT INTO `medio` (`id`, `content`) VALUES
(1, 'HABLAR'),
(2, 'ABEJAS'),
(3, 'DELFIN'),
(4, 'CABEZA'),
(5, 'FLORES'),
(6, 'ESPAÑA'),
(7, 'HORNOS'),
(8, 'LAMINA'),
(9, 'ORIGEN'),
(10, 'VOTADO'),
(11, 'ULTIMO'),
(12, 'BRASIL'),
(13, 'OPTICO'),
(14, 'PASTOR'),
(15, 'EMOJIS'),
(16, 'TARIFA'),
(17, 'GRADAS'),
(18, 'SUECIA'),
(19, 'NAIPES'),
(20, 'CAJITA'),
(21, 'GOTICO'),
(22, 'NITIDO'),
(23, 'LENTES'),
(24, 'ROBOTS'),
(25, 'AEREOS'),
(26, 'TOMATE'),
(27, 'DIGITO'),
(28, 'FABULA'),
(29, 'ORBITA'),
(30, 'REPOSO'),
(31, 'BOLSAS'),
(32, 'PALITO'),
(33, 'ICONOS'),
(34, 'TITULO'),
(35, 'CEDULA'),
(36, 'SALMON'),
(37, 'OLORES'),
(38, 'HEROES'),
(39, 'NUMERO'),
(40, 'MEDIAS'),
(41, 'ARAÑAS'),
(42, 'QUIERO'),
(43, 'GRECIA'),
(44, 'ORUGAS'),
(45, 'ENVIOS'),
(46, 'OXIDAR'),
(47, 'MEXICO'),
(48, 'ITALIA'),
(49, 'DOCTOR'),
(50, 'BARCOS');

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dificil`
--
ALTER TABLE `dificil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facil`
--
ALTER TABLE `facil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medio`
--
ALTER TABLE `medio`
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
-- AUTO_INCREMENT de la tabla `dificil`
--
ALTER TABLE `dificil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facil`
--
ALTER TABLE `facil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `medio`
--
ALTER TABLE `medio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
