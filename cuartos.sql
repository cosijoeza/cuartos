-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2019 a las 08:39:23
-- Versión del servidor: 5.7.16-log
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuartos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arrendatario`
--

CREATE TABLE `arrendatario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `contacto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `arrendatario`
--

INSERT INTO `arrendatario` (`id`, `nombre`, `contacto`) VALUES
(1, 'Juan Pérez Alonso', '5325678'),
(2, 'Jorge Gonzalez Jimenez', '9537851459'),
(3, 'Martin Lopez García', '5032486'),
(4, 'Juan Antonio Sánchez Cruz', '9531523984'),
(5, 'Manuel Hernández Ruiz', '9538524962'),
(6, 'María del Carmen Bautista Sánchez', '9532469527'),
(7, 'Silvia Rojas Aguilar', '5026548'),
(8, 'José de Jesús Jimenez López', '5017464'),
(9, 'David García Maya', '5084625'),
(10, 'Pablo Lara Carrasco', '9531425862'),
(11, 'María Valencia Córdoba', '9538462517'),
(12, 'Lucía Díaz Ortiz', '9536259854'),
(13, 'Ambrosio Cruz Parada', '9530271526'),
(14, 'Álvaro Sosa Cruz', '5078541'),
(15, 'Marcos Morales López', '5006158'),
(16, 'Jesús Ortiz Hernández', '5063258'),
(17, 'Ulises Zarate Cuevas', '5074592'),
(18, 'Andrea Valencia Aguilar', '9534105582'),
(19, 'Laura Ruiz Estrada', '9530215247'),
(20, 'Aracely Martínez Córdoba', '9538412257'),
(21, 'Arturo Sánchez Sánchez ', '9530284125'),
(22, 'Samuel Ignacio Pacheco', '9530548168'),
(23, 'Carmen Estrada Cortez ', '9530510565'),
(24, 'Sara García García', '9530548336'),
(25, 'Héctor Aquino López', '5068189'),
(26, 'Josue Santiago Lara', '5084256'),
(27, 'Agustín Aragón Cuevas', '9530274448'),
(28, 'Estela Morales Pérez', '9532259772'),
(29, 'Teresa Santiago Pérez', '5047882'),
(30, 'Miguel Ortiz Pacheco', '9531055574');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

CREATE TABLE `edificio` (
  `id` int(11) NOT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `cantidad` varchar(10) DEFAULT NULL,
  `disponible` varchar(10) DEFAULT NULL,
  `costo` varchar(10) DEFAULT NULL,
  `deposito` varchar(10) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_arrendatario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `edificio`
--

INSERT INTO `edificio` (`id`, `domicilio`, `cantidad`, `disponible`, `costo`, `deposito`, `img`, `id_tipo`, `id_servicio`, `id_arrendatario`) VALUES
(1, 'Av. Universidad s/n', '8', '2', '1800', '1800', 'a.jpg', 1, 1, 10),
(2, 'Calle pensamientos #6', '12', '1', '1000', '1000', 'b.jpg', 3, 1, 2),
(3, 'Calle Aldama #7', '1', '0', '3000', '3000', 'casa.jpg', 2, 2, 6),
(4, 'Pino Suárez #4', '12', '1', '850', '850', 'img4.JPG', 3, 1, 12),
(5, 'Benito Juárez #11', '20', '4', '1000', '1000', 'img5.JPG', 3, 2, 30),
(6, 'Emiliano Zapata #8', '2', '1', '2800', '2800', 'img6.JPG', 2, 1, 22),
(7, 'Tierra y Libertad #12', '6', '0', '650', '650', 'img7.JPG', 3, 1, 16),
(8, 'Flores Magón #3', '8', '2', '2000', '2000', 'img8.JPG', 1, 2, 19),
(9, '10 de Abril #2', '1', '0', '3100', '3100', 'img9.JPG', 2, 2, 5),
(10, 'Lirios #9', '8', '1', '1600', '1600', 'img10.JPG', 1, 1, 25),
(11, 'Bugambilias #5', '11', '2', '900', '900', 'img11.JPG', 3, 2, 7),
(12, 'Leyes de Reforma #9', '1', '0', '3200', '3200', 'img12.JPG', 2, 1, 15),
(13, 'Calle pensamientos #4', '5', '0', '2200', '2200', 'img13.JPG', 1, 2, 11),
(14, 'Pino Suárez #8', '10', '1', '1500', '1500', 'img14.JPG', 1, 2, 18),
(15, 'Emiliano Zapata #10', '1', '0', '3000', '3000', 'img15.JPG', 2, 1, 29),
(16, 'Flores Magón #6', '13', '0', '950', '950', 'img16.JPG', 3, 2, 20),
(17, 'Lirios #4', '7', '2', '650', '650', 'img17.JPG', 3, 1, 21),
(18, 'Leyes de Reforma #10', '2', '1', '3200', '3200', 'img18.JPG', 2, 2, 9),
(19, 'Av. Universidad #3', '4', '0', '1800', '1800', 'img19.JPG', 1, 2, 3),
(20, 'Calle Aldama #3', '12', '3', '850', '850', 'img20.JPG', 3, 2, 1),
(21, 'Benito Juárez #8', '1', '0', '3000', '3000', 'img21.JPG', 2, 1, 26),
(22, 'Tierra y Libertad #7', '9', '1', '2100', '2100', 'img22.JPG', 1, 2, 27),
(23, '10 de Abril #6', '8', '0', '2000', '2000', 'img23.JPG', 1, 2, 17),
(24, 'Bugambilias #8', '5', '1', '950', '950', 'img24.JPG', 3, 2, 28),
(25, 'Calle pensamientos #8', '2', '1', '3100', '3100', 'img25.JPG', 2, 1, 4),
(26, 'Emiliano Zapata #6', '2', '0', '1200', '1200', 'img26.JPG', 1, 1, 8),
(27, 'Lirios #7', '15', '0', '750', '750', 'img27.JPG', 3, 2, 13),
(28, 'Av. Universidad #3', '1', '1', '2900', '2900', 'img28.JPG', 2, 1, 23),
(29, 'Calle pensamientos s/n', '8', '0', '1700', '1700', 'img29.JPG', 1, 2, 14),
(30, 'Calle Aldama #5', '8', '0', '950', '950', 'img30.JPG', 3, 1, 24),
(31, 'Pino Suárez #10', '3', '2', '3200', '3200', 'img31.JPG', 2, 1, 17),
(32, 'Benito Juárez #11', '4', '1', '1400', '1400', 'img32.JPG', 1, 2, 24),
(33, 'Emiliano Zapata s/n', '12', '3', '900', '900', 'img33.JPG', 3, 2, 14),
(34, 'Tierra y Libertad #9', '1', '1', '3100', '3100', 'img34.JPG', 2, 1, 28),
(35, 'Flores Magón #6', '2', '1', '2300', '2300', 'img35.JPG', 1, 2, 13),
(36, '11 de Abril #7', '2', '0', '2900', '2900', 'img36.JPG', 2, 2, 3),
(37, 'Lirios #2', '8', '1', '650', '650', 'img37.JPG', 3, 1, 6),
(38, 'Bugambilias s/n', '1', '0', '3000', '3000', 'img38.JPG', 2, 2, 25),
(39, 'Leyes de Reforma #1', '8', '0', '2000', '2000', 'img39.JPG', 1, 2, 19),
(40, 'Calle pensamientos #3', '3', '2', '3100', '3100', 'img40.JPG', 2, 2, 29),
(41, 'Pino Suárez #6', '1', '1', '3000', '3000', 'img41.JPG', 2, 1, 14),
(42, 'Emiliano Zapata s/n', '5', '1', '700', '700', 'img42.JPG', 3, 2, 4),
(43, 'Flores Magón #6', '10', '0', '1800', '1800', 'img43.JPG', 1, 2, 4),
(44, 'Lirios #8', '2', '1', '3200', '3200', 'img44.JPG', 2, 1, 22),
(45, 'Leyes de Reforma s/n', '13', '1', '1500', '1500', 'img45.JPG', 1, 2, 25),
(46, 'Av. Universidad #3', '7', '0', '900', '900', 'img46.JPG', 3, 1, 30),
(47, 'Calle Aldama #7', '2', '0', '2800', '2800', 'img47.JPG', 2, 2, 18),
(48, 'Benito Juárez #10', '4', '1', '1600', '1600', 'img48.JPG', 1, 2, 20),
(49, 'Tierra y Libertad #1', '8', '0', '1400', '1400', 'img49.JPG', 1, 1, 9),
(50, '11 de Abril s/n', '13', '2', '1000', '1000', 'img50.JPG', 3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_edificio`
--

CREATE TABLE `tipo_edificio` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_edificio`
--

INSERT INTO `tipo_edificio` (`id`, `tipo`) VALUES
(1, 'departamento'),
(2, 'casa'),
(3, 'cuarto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`id`, `tipo`) VALUES
(1, 'Basicos'),
(2, 'Basicos,Internet');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arrendatario`
--
ALTER TABLE `arrendatario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_arrendatario` (`id_arrendatario`);

--
-- Indices de la tabla `tipo_edificio`
--
ALTER TABLE `tipo_edificio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arrendatario`
--
ALTER TABLE `arrendatario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `edificio`
--
ALTER TABLE `edificio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tipo_edificio`
--
ALTER TABLE `tipo_edificio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD CONSTRAINT `edificio_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_edificio` (`id`),
  ADD CONSTRAINT `edificio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `tipo_servicio` (`id`),
  ADD CONSTRAINT `edificio_ibfk_3` FOREIGN KEY (`id_arrendatario`) REFERENCES `arrendatario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
