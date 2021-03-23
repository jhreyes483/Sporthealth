-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2021 a las 03:48:56
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sporthealth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejes`
--

CREATE TABLE `ejes` (
  `id_eje` int(11) NOT NULL,
  `instruccion` varchar(200) DEFAULT NULL,
  `fk_plan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food` varchar(50) NOT NULL,
  `portions` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `fk_plan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `measures`
--

CREATE TABLE `measures` (
  `id` int(11) NOT NULL,
  `date_create` date NOT NULL,
  `caracter` varchar(10) DEFAULT NULL,
  `fk_type_n` int(11) NOT NULL,
  `fk_type_m` int(11) NOT NULL,
  `fk_us` varchar(20) DEFAULT NULL,
  `fk_doc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `measures`
--

INSERT INTO `measures` (`id`, `date_create`, `caracter`, `fk_type_n`, `fk_type_m`, `fk_us`, `fk_doc`) VALUES
(1, '2021-05-21', '150', 2, 13, '1', 'CC'),
(2, '2021-04-21', '60', 1, 23, '1', 'CC'),
(3, '2021-03-21', '60', 2, 11, '1', 'CC'),
(4, '2021-02-01', '40', 1, 23, '1', 'CC'),
(5, '2021-01-01', '35', 1, 23, '1', 'CC'),
(6, '2021-05-01', '30', 1, 23, '1', 'CC'),
(7, '2021-05-01', '31', 1, 23, '1', 'CC'),
(8, '2021-01-01', '36', 1, 23, '566', 'CC'),
(9, '2021-05-02', '40', 1, 23, '1', 'CC'),
(29, '2021-03-22', '0', 1, 23, '566', 'CC'),
(30, '2021-03-22', '0', 3, 26, '566', 'CC'),
(31, '2021-03-22', '0', 2, 13, '566', 'CC'),
(32, '2021-03-22', '0', 2, 27, '566', 'CC'),
(33, '2021-03-22', '0', 2, 28, '566', 'CC'),
(34, '2021-03-22', '0', 2, 29, '566', 'CC'),
(35, '2021-03-22', '0', 2, 11, '566', 'CC'),
(36, '2021-03-22', '0', 1, 25, '566', 'CC'),
(38, '2021-03-22', '0', 1, 25, '566', 'CC'),
(39, '2021-03-22', '0', 1, 23, '566', 'CC'),
(40, '2021-03-22', '0', 3, 26, '566', 'CC'),
(41, '2021-03-22', '0', 2, 13, '566', 'CC'),
(42, '2021-03-22', '0', 2, 27, '566', 'CC'),
(43, '2021-03-22', '0', 2, 28, '566', 'CC'),
(44, '2021-03-22', '0', 2, 29, '566', 'CC'),
(45, '2021-03-22', '0', 2, 11, '566', 'CC'),
(46, '2021-03-22', '0', 1, 25, '566', 'CC'),
(48, '2021-03-22', '65', 1, 23, '566', 'CC'),
(49, '2021-03-22', '21', 3, 26, '566', 'CC'),
(50, '2021-03-22', '150', 2, 13, '566', 'CC'),
(51, '2021-03-22', '60', 2, 27, '566', 'CC'),
(52, '2021-03-22', '90', 2, 28, '566', 'CC'),
(53, '2021-03-22', '10', 2, 29, '566', 'CC'),
(54, '2021-03-22', '10', 2, 11, '566', 'CC'),
(55, '2021-03-22', '4', 1, 25, '566', 'CC'),
(57, '2021-03-22', '65', 1, 23, '566', 'CC'),
(58, '2021-03-22', '21', 3, 26, '566', 'CC'),
(59, '2021-03-22', '150', 2, 13, '566', 'CC'),
(60, '2021-03-22', '60', 2, 27, '566', 'CC'),
(61, '2021-03-22', '90', 2, 28, '566', 'CC'),
(62, '2021-03-22', '10', 2, 29, '566', 'CC'),
(63, '2021-03-22', '10', 2, 11, '566', 'CC'),
(64, '2021-03-22', '4', 1, 25, '566', 'CC'),
(66, '2021-03-22', '65', 1, 23, '566', 'CC'),
(67, '2021-03-22', '21', 3, 26, '566', 'CC'),
(68, '2021-03-22', '150', 2, 13, '566', 'CC'),
(69, '2021-03-22', '60', 2, 27, '566', 'CC'),
(70, '2021-03-22', '90', 2, 28, '566', 'CC'),
(71, '2021-03-22', '10', 2, 29, '566', 'CC'),
(72, '2021-03-22', '10', 2, 11, '566', 'CC'),
(73, '2021-03-22', '4', 1, 25, '566', 'CC'),
(75, '2021-03-22', '65', 1, 23, '566', 'CC'),
(76, '2021-03-22', '21', 3, 26, '566', 'CC'),
(77, '2021-03-22', '150', 2, 13, '566', 'CC'),
(78, '2021-03-22', '60', 2, 27, '566', 'CC'),
(79, '2021-03-22', '90', 2, 28, '566', 'CC'),
(80, '2021-03-22', '10', 2, 29, '566', 'CC'),
(81, '2021-03-22', '10', 2, 11, '566', 'CC'),
(82, '2021-03-22', '4', 1, 25, '566', 'CC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id_plan` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `fk_doc` varchar(5) NOT NULL,
  `fk_us` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `date_request` datetime NOT NULL,
  `date_quote` datetime DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quotes`
--

INSERT INTO `quotes` (`id`, `date_request`, `date_quote`, `obs`, `status`) VALUES
(42, '2021-03-22 11:00:00', '0000-00-00 00:00:00', '', 'S'),
(43, '2021-03-22 11:00:00', '0000-00-00 00:00:00', '', 'A'),
(55, '2021-03-22 11:00:00', '0000-00-00 00:00:00', '', 'A'),
(56, '2021-03-22 11:00:00', '0000-00-00 00:00:00', '', 'R'),
(58, '2021-03-22 11:00:00', '0000-00-00 00:00:00', '', 'A'),
(59, '2021-03-22 12:00:00', '2021-03-18 19:21:00', '', 'A'),
(60, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(61, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(62, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(63, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(64, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(65, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A'),
(66, '2021-03-22 12:00:00', '2021-03-18 00:00:00', '', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quote_users`
--

CREATE TABLE `quote_users` (
  `fk_doc` varchar(5) NOT NULL,
  `fk_us` varchar(20) NOT NULL,
  `fk_quote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quote_users`
--

INSERT INTO `quote_users` (`fk_doc`, `fk_us`, `fk_quote`) VALUES
('CC', '1', 42),
('CC', '1', 43),
('CE', '2', 55),
('CE', '2', 56),
('CE', '2', 58),
('CC', '1', 59),
('CC', '1', 60),
('CC', '1', 61),
('CC', '1', 62),
('CC', '1', 63),
('CC', '1', 64),
('CE', '2', 65),
('CE', '2', 66),
('CE', '43543546', 42),
('CC', '566', 55),
('CC', '566', 59),
('CC', '1', 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_ac_rol` varchar(5) NOT NULL,
  `name_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_ac_rol`, `name_rol`) VALUES
('C', 'Cliente'),
('D', 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_m`
--

CREATE TABLE `types_m` (
  `id_m` int(11) NOT NULL,
  `name_type_n` varchar(40) NOT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `types_m`
--

INSERT INTO `types_m` (`id_m`, `name_type_n`, `obs`) VALUES
(9, 'Hombro derecho', NULL),
(10, 'Hombro izquierdo', NULL),
(11, 'Bicep', NULL),
(12, 'tricep', NULL),
(13, 'Altura', NULL),
(14, 'Pectorales', NULL),
(15, 'cuadriceps pie derecho', NULL),
(16, 'cuadriceps pie izquierdo', NULL),
(17, 'Gluteos', NULL),
(18, 'Dorsal ancho', NULL),
(19, 'Soleo derecho', NULL),
(20, 'Soleo izquierdo', NULL),
(21, 'Tibial derecho', NULL),
(22, 'Tibial izquierdo', NULL),
(23, 'Peso', NULL),
(24, 'Abdominales', NULL),
(25, 'Indice de masa Corporal', NULL),
(26, 'Edad', NULL),
(27, 'Cintura', NULL),
(28, 'Cadera', NULL),
(29, 'Muslo', NULL),
(31, 'kilos de grasa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types_n`
--

CREATE TABLE `types_n` (
  `id_n` int(11) NOT NULL,
  `name_type_m` varchar(10) NOT NULL,
  `acron` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `types_n`
--

INSERT INTO `types_n` (`id_n`, `name_type_m`, `acron`) VALUES
(1, 'kilogramo', 'kl'),
(2, 'centimetro', 'cm'),
(3, 'años', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_docs`
--

CREATE TABLE `type_docs` (
  `id_doc` varchar(5) NOT NULL,
  `name_doc` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_docs`
--

INSERT INTO `type_docs` (`id_doc`, `name_doc`) VALUES
('CC', 'Cedula de ciudadania'),
('CE', 'Cedula Extranjera'),
('TI', 'Tarjeta de identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_us` varchar(20) NOT NULL,
  `fk_doc` varchar(5) NOT NULL,
  `firt_name` varchar(30) NOT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `fk_rol` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_us`, `fk_doc`, `firt_name`, `second_name`, `last_name`, `email`, `password`, `img`, `date_of_birth`, `gender`, `fk_rol`) VALUES
('1', 'CC', 'Javier', 'H', 'Reyes', 'desarrollo01.co', '1', 'img.012', '2021-03-01', 'M', 'D'),
('2', 'CE', 'nom1', 'Javier', 'Reyes', 'jav-rn@hotmail.com', '', '', '0000-00-00', 'M', 'C'),
('43543546', 'CE', 'nom1', 'nom2', 'Reyes', 'jav-rn@hotmail.com', '', '', '2021-03-15', 'M', 'C'),
('565546', 'CC', 'nom1', 'nom2', 'Reyes', 'jav-rn@hotmail.com', '', '', '2021-03-02', 'M', 'C'),
('566', 'CC', 'Miguel', 'Patricio', 'Peres', 'jav-rn@hotmail.com', '', '', '2021-03-16', 'M', 'D');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejes`
--
ALTER TABLE `ejes`
  ADD PRIMARY KEY (`id_eje`),
  ADD KEY `eles_plans` (`fk_plan`);

--
-- Indices de la tabla `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_plans` (`fk_plan`);

--
-- Indices de la tabla `measures`
--
ALTER TABLE `measures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_measures_t` (`fk_type_n`),
  ADD KEY `fk_measures_tm` (`fk_type_m`),
  ADD KEY `fk_measures_users` (`fk_us`,`fk_doc`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `type_doc_plans` (`fk_doc`,`fk_us`);

--
-- Indices de la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quote_users`
--
ALTER TABLE `quote_users`
  ADD KEY `quote_users` (`fk_us`,`fk_doc`),
  ADD KEY `quote_m` (`fk_quote`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_ac_rol`);

--
-- Indices de la tabla `types_m`
--
ALTER TABLE `types_m`
  ADD PRIMARY KEY (`id_m`);

--
-- Indices de la tabla `types_n`
--
ALTER TABLE `types_n`
  ADD PRIMARY KEY (`id_n`);

--
-- Indices de la tabla `type_docs`
--
ALTER TABLE `type_docs`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_us`,`fk_doc`),
  ADD KEY `fk_rol` (`fk_rol`),
  ADD KEY `type_doc` (`fk_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ejes`
--
ALTER TABLE `ejes`
  MODIFY `id_eje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `measures`
--
ALTER TABLE `measures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `types_m`
--
ALTER TABLE `types_m`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `types_n`
--
ALTER TABLE `types_n`
  MODIFY `id_n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ejes`
--
ALTER TABLE `ejes`
  ADD CONSTRAINT `eles_plans` FOREIGN KEY (`fk_plan`) REFERENCES `plans` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_plans` FOREIGN KEY (`fk_plan`) REFERENCES `plans` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `measures`
--
ALTER TABLE `measures`
  ADD CONSTRAINT `fk_measures_t` FOREIGN KEY (`fk_type_n`) REFERENCES `types_n` (`id_n`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_measures_tm` FOREIGN KEY (`fk_type_m`) REFERENCES `types_m` (`id_m`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_measures_users` FOREIGN KEY (`fk_us`,`fk_doc`) REFERENCES `users` (`id_us`, `fk_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `type_doc_plans` FOREIGN KEY (`fk_doc`,`fk_us`) REFERENCES `users` (`fk_doc`, `id_us`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `quote_users`
--
ALTER TABLE `quote_users`
  ADD CONSTRAINT `quote_m` FOREIGN KEY (`fk_quote`) REFERENCES `quotes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quote_users` FOREIGN KEY (`fk_us`,`fk_doc`) REFERENCES `users` (`id_us`, `fk_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rol` FOREIGN KEY (`fk_rol`) REFERENCES `roles` (`id_ac_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_doc` FOREIGN KEY (`fk_doc`) REFERENCES `type_docs` (`id_doc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
