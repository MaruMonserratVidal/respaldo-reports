-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2018 a las 05:55:46
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reportsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjunto_informe`
--

CREATE TABLE `adjunto_informe` (
  `idadjunto` int(11) NOT NULL,
  `idinforme` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `adjunto_informe`
--

INSERT INTO `adjunto_informe` (`idadjunto`, `idinforme`, `url`, `descripcion`) VALUES
(1, 14, 'img/ad_inf/1541458100_15.jpeg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjunto_tareadetalle`
--

CREATE TABLE `adjunto_tareadetalle` (
  `idadjunto` int(11) NOT NULL,
  `idtarea_detalle` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idarea` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idarea`, `nombre`, `idpersona`) VALUES
(2, 'Electricos', 22),
(3, 'Mecánico', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avance`
--

CREATE TABLE `avance` (
  `idavance` int(11) NOT NULL,
  `porcentaje` varchar(45) DEFAULT NULL,
  `idtarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambio_estado`
--

CREATE TABLE `cambio_estado` (
  `idcambio` int(11) NOT NULL,
  `idhseq` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idinforme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idcargo`, `nombre`) VALUES
(1, 'Coordinador'),
(2, 'Licenciado en Seguridad e Higiene Laboral'),
(3, 'Tec. Seguridad e Higiene Laboral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nombre`) VALUES
(1, 'Abierto'),
(2, 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hseq`
--

CREATE TABLE `hseq` (
  `idhseq` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idcargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hseq`
--

INSERT INTO `hseq` (`idhseq`, `idpersona`, `idcargo`) VALUES
(1, 9, 1),
(2, 7, 3),
(3, 10, 1),
(4, 26, 3),
(7, 28, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `idinforme` int(11) NOT NULL,
  `idhseq` int(11) NOT NULL,
  `idzona` int(11) DEFAULT NULL,
  `idprioridad` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `descripcion` text NOT NULL,
  `fechalimite` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`idinforme`, `idhseq`, `idzona`, `idprioridad`, `idestado`, `titulo`, `descripcion`, `fechalimite`, `create_at`) VALUES
(2, 1, 2, 3, 1, 'cxvcv', 'vcxvcxv', '2018-10-24', '2018-10-15 22:17:06'),
(3, 1, 1, 1, 1, 'asdsd', 'sadsad', '2018-12-11', '2018-10-20 23:26:37'),
(4, 1, 1, 1, 1, 'dsfsdfdsf', 'sadsarewrewrewrd', '2018-12-11', '2018-10-20 23:51:50'),
(5, 1, 1, 1, 1, 'dasdsad', 'sadsad', '2018-12-11', '2018-10-21 00:05:18'),
(6, 1, 1, 1, 1, 'token', 'sadsad', '2018-12-11', '2018-10-21 00:12:09'),
(7, 1, 1, 1, 1, 'qweqwe', 'qweeqwe', '2018-10-31', '2018-10-21 00:20:17'),
(8, 1, 1, 1, 1, 'test 1', 'un informe de prueba', '2018-10-30', '2018-10-21 00:20:55'),
(9, 1, 1, 1, 1, 'test 1', 'un informe de prueba', '2018-10-30', '2018-10-21 00:21:18'),
(10, 3, NULL, 1, 1, 'ewrewr', 'dsfdfsdf', '2018-10-31', '2018-10-21 01:03:41'),
(11, 3, 1, 1, 1, 'asdads', 'sdsad', '2018-10-27', '2018-10-21 01:06:04'),
(12, 3, 1, 2, 1, 'test de selects', 'asdsad', '2018-10-30', '2018-10-21 01:09:48'),
(13, 3, 1, 1, 1, 'sfsdf', 'dsfdsfds', '2018-10-26', '2018-10-22 21:33:32'),
(14, 2, 1, 2, 1, 'Prueba para Mia F.', '<p><strong>Ver Tarea</strong> <strong><u>específica.</u></strong></p>', '2018-11-05', '2018-11-05 22:48:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modifica`
--

CREATE TABLE `modifica` (
  `idmodifica` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idinforme` int(11) NOT NULL,
  `idhseq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `usuario` varchar(70) NOT NULL,
  `password` varchar(90) NOT NULL,
  `legajo` varchar(45) NOT NULL,
  `rol` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `dni`, `nombre`, `apellido`, `telefono`, `email`, `usuario`, `password`, `legajo`, `rol`) VALUES
(7, 54645445, 'Mia', 'Farias', 32123456, 'mia@petmail.com', 'mia', '$2y$10$B7jr4JgT1jXByGDtzm9gnu.t.tmwnfOi7ulQM7aJD7tjPxACPx7N.', 'fi3214', 'admin'),
(9, 36692567, 'Karen', 'Farias', 154167403, 'karen77f@gmail.com', 'karenfarias', '$2y$10$EtvAYQvIFv8urYSozg7a1urY1R.4xvo5uNuIxgNOiPWgWPbt09yXO', 'faea1372', 'hseq'),
(10, 2312132, 'Cuca', 'Farias', 4654654, 'cuca@petmail.com', 'cuca', '$2y$10$YBofXctjanbpZB28DHTfFeS3bFUr6a42wpT3AcDH5BB3WZzpBBug2', 'fi546', 'hseq'),
(11, 5300000, 'area', 'test', 55500055, 'area@gmail.com', 'area', '$2y$10$ec/Ueyr8cEzQqlDkMXadFerRIYeqGvdk82NzAhfmTY617Jk8v80gK', 'ar123', NULL),
(12, 123456789, 'Usuario', 'Nuevo', 4440044, 'test@gmail.com', 'testeando', '$2y$10$RKmUkhq2UNmDKH/D/SBfjOdm78ETdUcUYX52S3iEX9.CnEnxKekry', 'test123', NULL),
(21, 9939399, 'Un usuario de prueba', 'Testeando', 2147483647, 'prueba@gmail.com', 'testi', '$2y$10$.hbbKsP/9dveabrfDNG/ou/ZzpoC42Jjy3aFv.tvpRLA79TQPrABO', 'sad12', 'area'),
(22, 213213, 'asd', 'sad', 34324, 'sds@gmail.com', 'asdask', '$2y$10$MoGcf96aO3sybR2pK9AZcOxrcKH8QFH2baA.ZF6tliMkJIiAA54hK', 'asd123', 'hseq'),
(23, 43234, 'qwe', 'fd', 43423, 'dsf@gmailc.om', 'sdf', '$2y$10$4D0e28lMNyq.dygpJtj2x.FZy76OPgKBx1u0R85.dYGpuLxXUzeCC', 'dsf', 'area'),
(26, 213212, 'asdsad', 'qweqw', 465464, 'asdasd@gmail.com', 'fariaskaren', '$2y$10$fwO2KeZop/8qS3q3HdSD5uGUeEi0Yv7OQWeAxNsWZmvKn/gQNUJfa', 'kad123', 'hseq'),
(28, 32434, 'qwewq', 'rewrew', 3432423, 'sdfdfs@gm.com', 'dasdsa', '$2y$10$oo2j/ooEjQQUjlbu1qUqV.0geWrLzwiJqUs5.uhh4Eh680OlWiZPu', '3fds4', 'hseq'),
(29, 3662567, 'fasdasd', 'ewqeqwe', 23123, 'qwewqe@gmai.com', 'gdsdf', '$2y$10$hYrLg5dvVOFtG8ur.3b95OarecBviOdHuiV1o3M8gMFBgNZVonkee', 'fdd33', 'hseq'),
(30, 123456, 'Es un Mecanico', 'Mecanico', 123546, 'sads@g.com', 'mecanico', '$2y$10$Xiy5Ziz8AGK46Rd0LF5Zv.7A6vaVbAl0ZmCl9geW6qm7T19vrCKh2', '123154s', 'area');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad`
--

CREATE TABLE `prioridad` (
  `idprioridad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prioridad`
--

INSERT INTO `prioridad` (`idprioridad`, `nombre`) VALUES
(1, 'Baja'),
(2, 'Media'),
(3, 'Alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `idsolicita` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `legajo` varchar(12) NOT NULL,
  `email` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `idtarea` int(11) NOT NULL,
  `idinforme` int(11) NOT NULL,
  `idarea` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`idtarea`, `idinforme`, `idarea`, `titulo`, `descripcion`) VALUES
(1, 14, 3, 'Ver Esta Tarea Mecanico!!', 'Debe poder ver esta tarea. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea_detalle`
--

CREATE TABLE `tarea_detalle` (
  `idtarea_detalle` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` text NOT NULL,
  `idtarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `idzona` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`idzona`, `nombre`) VALUES
(1, 'Torre 3'),
(2, 'Torre 7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adjunto_informe`
--
ALTER TABLE `adjunto_informe`
  ADD PRIMARY KEY (`idadjunto`),
  ADD KEY `idinforme` (`idinforme`);

--
-- Indices de la tabla `adjunto_tareadetalle`
--
ALTER TABLE `adjunto_tareadetalle`
  ADD PRIMARY KEY (`idadjunto`),
  ADD KEY `idtarea_detalle` (`idtarea_detalle`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idarea`),
  ADD UNIQUE KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `avance`
--
ALTER TABLE `avance`
  ADD PRIMARY KEY (`idavance`),
  ADD KEY `idtarea` (`idtarea`);

--
-- Indices de la tabla `cambio_estado`
--
ALTER TABLE `cambio_estado`
  ADD PRIMARY KEY (`idcambio`),
  ADD KEY `idestado` (`idestado`),
  ADD KEY `idinforme` (`idinforme`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `hseq`
--
ALTER TABLE `hseq`
  ADD PRIMARY KEY (`idhseq`),
  ADD UNIQUE KEY `idpersona` (`idpersona`),
  ADD KEY `idcargo` (`idcargo`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`idinforme`),
  ADD KEY `idhseq` (`idhseq`),
  ADD KEY `idzona` (`idzona`),
  ADD KEY `idprioridad` (`idprioridad`),
  ADD KEY `idestado` (`idestado`);

--
-- Indices de la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD PRIMARY KEY (`idmodifica`),
  ADD KEY `idinforme` (`idinforme`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `legajo` (`legajo`);

--
-- Indices de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  ADD PRIMARY KEY (`idprioridad`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`idsolicita`),
  ADD UNIQUE KEY `legajo` (`legajo`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`idtarea`),
  ADD KEY `idinforme` (`idinforme`),
  ADD KEY `idarea` (`idarea`);

--
-- Indices de la tabla `tarea_detalle`
--
ALTER TABLE `tarea_detalle`
  ADD PRIMARY KEY (`idtarea_detalle`),
  ADD KEY `idtarea` (`idtarea`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`idzona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adjunto_informe`
--
ALTER TABLE `adjunto_informe`
  MODIFY `idadjunto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `adjunto_tareadetalle`
--
ALTER TABLE `adjunto_tareadetalle`
  MODIFY `idadjunto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `avance`
--
ALTER TABLE `avance`
  MODIFY `idavance` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cambio_estado`
--
ALTER TABLE `cambio_estado`
  MODIFY `idcambio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hseq`
--
ALTER TABLE `hseq`
  MODIFY `idhseq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `informe`
--
ALTER TABLE `informe`
  MODIFY `idinforme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `modifica`
--
ALTER TABLE `modifica`
  MODIFY `idmodifica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  MODIFY `idprioridad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `idsolicita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `idtarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tarea_detalle`
--
ALTER TABLE `tarea_detalle`
  MODIFY `idtarea_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adjunto_informe`
--
ALTER TABLE `adjunto_informe`
  ADD CONSTRAINT `adjunto_informe_ibfk_1` FOREIGN KEY (`idinforme`) REFERENCES `informe` (`idinforme`);

--
-- Filtros para la tabla `adjunto_tareadetalle`
--
ALTER TABLE `adjunto_tareadetalle`
  ADD CONSTRAINT `adjunto_tareadetalle_ibfk_1` FOREIGN KEY (`idtarea_detalle`) REFERENCES `tarea_detalle` (`idtarea_detalle`);

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`);

--
-- Filtros para la tabla `avance`
--
ALTER TABLE `avance`
  ADD CONSTRAINT `avance_ibfk_1` FOREIGN KEY (`idtarea`) REFERENCES `tarea` (`idtarea`);

--
-- Filtros para la tabla `cambio_estado`
--
ALTER TABLE `cambio_estado`
  ADD CONSTRAINT `cambio_estado_ibfk_1` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`),
  ADD CONSTRAINT `cambio_estado_ibfk_2` FOREIGN KEY (`idinforme`) REFERENCES `informe` (`idinforme`);

--
-- Filtros para la tabla `hseq`
--
ALTER TABLE `hseq`
  ADD CONSTRAINT `hseq_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`),
  ADD CONSTRAINT `hseq_ibfk_2` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`);

--
-- Filtros para la tabla `informe`
--
ALTER TABLE `informe`
  ADD CONSTRAINT `informe_ibfk_1` FOREIGN KEY (`idhseq`) REFERENCES `hseq` (`idhseq`),
  ADD CONSTRAINT `informe_ibfk_2` FOREIGN KEY (`idzona`) REFERENCES `zona` (`idzona`),
  ADD CONSTRAINT `informe_ibfk_3` FOREIGN KEY (`idprioridad`) REFERENCES `prioridad` (`idprioridad`),
  ADD CONSTRAINT `informe_ibfk_4` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`);

--
-- Filtros para la tabla `modifica`
--
ALTER TABLE `modifica`
  ADD CONSTRAINT `modifica_ibfk_1` FOREIGN KEY (`idinforme`) REFERENCES `informe` (`idinforme`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`idinforme`) REFERENCES `informe` (`idinforme`),
  ADD CONSTRAINT `tarea_ibfk_2` FOREIGN KEY (`idarea`) REFERENCES `area` (`idarea`);

--
-- Filtros para la tabla `tarea_detalle`
--
ALTER TABLE `tarea_detalle`
  ADD CONSTRAINT `tarea_detalle_ibfk_1` FOREIGN KEY (`idtarea`) REFERENCES `tarea` (`idtarea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
