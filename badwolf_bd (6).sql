-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2022 a las 14:31:23
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `badwolf_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credenciales`
--

CREATE TABLE `credenciales` (
  `ID_CREDENCIAL` tinyint(1) NOT NULL,
  `KEY_GOOGLE` tinyint(50) NOT NULL,
  `SECRETA_GOOGLE` tinyint(50) NOT NULL,
  `KEY_FLOW` tinyint(50) NOT NULL,
  `SECRETA_FLOW` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` tinyint(1) NOT NULL,
  `NOMBRE_ESTADO` varchar(50) NOT NULL,
  `ESTADO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_ESTADO`, `NOMBRE_ESTADO`, `ESTADO`) VALUES
(1, 'ACTIVO', 'ACTIVO'),
(2, 'INACTIVO', 'INACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(3) NOT NULL,
  `NOMBRE_PRODUCTO` varchar(30) NOT NULL,
  `BMP_PRODUCTO` tinyint(3) NOT NULL,
  `PRECIO_PRODUCTO` int(6) NOT NULL,
  `DESCUENTO_PRODUCTO` int(3) NOT NULL,
  `CREACION_PRODUCTO` date NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL,
  `ID_TIPO_MOOD` tinyint(30) NOT NULL,
  `ID_TIPO_GENERO` tinyint(30) NOT NULL,
  `ID_TIPO_NOTA` tinyint(30) NOT NULL,
  `ID_TIPO_INSTRUMENTO` tinyint(30) NOT NULL,
  `ID_USUARIO` int(4) NOT NULL,
  `TIPO_LICENCIA_PRODUCTO` varchar(50) NOT NULL,
  `LINK_PRODUCTO` varchar(2000) NOT NULL,
  `URL_DESCARGA` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_PRODUCTO`, `NOMBRE_PRODUCTO`, `BMP_PRODUCTO`, `PRECIO_PRODUCTO`, `DESCUENTO_PRODUCTO`, `CREACION_PRODUCTO`, `ID_ESTADO`, `ID_TIPO_MOOD`, `ID_TIPO_GENERO`, `ID_TIPO_NOTA`, `ID_TIPO_INSTRUMENTO`, `ID_USUARIO`, `TIPO_LICENCIA_PRODUCTO`, `LINK_PRODUCTO`, `URL_DESCARGA`) VALUES
(1, 'muerte subita', 120, 10000, 0, '2022-11-16', 1, 1, 2, 2, 1, 2, 'Standar', '<iframe width=\"100%\" height=\"300\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1098990511&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true%22%3E</iframe><div style=\"font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;\"><a href=\"https://soundcloud.com/badwolfmusicsessions\" title=\"Bad Wolf Music Sessions\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">Bad Wolf Music Sessions</a> · <a href=\"https://soundcloud.com/badwolfmusicsessions/5alva-todo-relax\" title=\"5alva - Todo Relax\" target=\"_blank\" style=\"color: #cccccc; text-decoration: none;\">5alva - Todo Relax</a></div>', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_genero`
--

CREATE TABLE `tipo_genero` (
  `ID_TIPO_GENERO` tinyint(30) NOT NULL,
  `TIPO_GENERO` varchar(30) NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_genero`
--

INSERT INTO `tipo_genero` (`ID_TIPO_GENERO`, `TIPO_GENERO`, `ID_ESTADO`) VALUES
(2, 'Trap', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_instrumento`
--

CREATE TABLE `tipo_instrumento` (
  `ID_TIPO_INSTRUMENTO` tinyint(30) NOT NULL,
  `TIPO_INSTRUMENTO` varchar(30) NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_instrumento`
--

INSERT INTO `tipo_instrumento` (`ID_TIPO_INSTRUMENTO`, `TIPO_INSTRUMENTO`, `ID_ESTADO`) VALUES
(1, 'bateria', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mood`
--

CREATE TABLE `tipo_mood` (
  `ID_TIPO_MOOD` tinyint(30) NOT NULL,
  `TIPO_MOOD` varchar(30) NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_mood`
--

INSERT INTO `tipo_mood` (`ID_TIPO_MOOD`, `TIPO_MOOD`, `ID_ESTADO`) VALUES
(1, 'movido', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nota`
--

CREATE TABLE `tipo_nota` (
  `ID_TIPO_NOTA` tinyint(30) NOT NULL,
  `TIPO_NOTA` varchar(30) NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_nota`
--

INSERT INTO `tipo_nota` (`ID_TIPO_NOTA`, `TIPO_NOTA`, `ID_ESTADO`) VALUES
(2, 'c#m', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `ID_TIPO_USUARIO` tinyint(2) NOT NULL,
  `TIPO_USUARIO` varchar(30) NOT NULL,
  `CREACION_TIPO_USUARIO` date NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`ID_TIPO_USUARIO`, `TIPO_USUARIO`, `CREACION_TIPO_USUARIO`, `ID_ESTADO`) VALUES
(1, 'ADMINISTRADOR', '2022-11-15', 1),
(2, 'BEATMAKER', '2022-11-15', 1),
(3, 'CLIENTE', '2022-11-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(4) NOT NULL,
  `NOMBRE_USUARIO` varchar(30) NOT NULL,
  `ALIAS_USUARIO` varchar(30) NOT NULL,
  `CORREO_USUARIO` varchar(50) NOT NULL,
  `CLAVE_USUARIO` varchar(50) NOT NULL,
  `DOMICILIO_USUARIO` varchar(50) NOT NULL,
  `PAIS_USUARIO` varchar(50) NOT NULL,
  `PETICION` tinyint(1) NOT NULL,
  `CREACION_USUARIO` date NOT NULL,
  `ID_TIPO_USUARIO` tinyint(2) NOT NULL,
  `ID_ESTADO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOMBRE_USUARIO`, `ALIAS_USUARIO`, `CORREO_USUARIO`, `CLAVE_USUARIO`, `DOMICILIO_USUARIO`, `PAIS_USUARIO`, `PETICION`, `CREACION_USUARIO`, `ID_TIPO_USUARIO`, `ID_ESTADO`) VALUES
(1, 'ADMIN', 'ADMIN', '', '123', '', '', 0, '2022-11-15', 1, 1),
(2, 'BEAT', 'BEAT', '', '123', '', '', 0, '0000-00-00', 2, 1),
(3, 'CLIENTE', 'CLIENTE', '', '123', '', 'CHILITO', 0, '2022-11-15', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_VENTA` int(4) NOT NULL,
  `FECHA_VENTA` date NOT NULL,
  `PRECIO_TOTAL` int(10) NOT NULL,
  `ID_PRODUCTO` int(3) NOT NULL,
  `ID_USUARIO` int(4) NOT NULL,
  `COMPROBANTE_VENTA` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  ADD PRIMARY KEY (`ID_CREDENCIAL`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_TIPO_INSTRUMENTO` (`ID_TIPO_INSTRUMENTO`),
  ADD KEY `ID_TIPO_NOTA` (`ID_TIPO_NOTA`),
  ADD KEY `ID_TIPO_GENERO` (`ID_TIPO_GENERO`),
  ADD KEY `ID_TIPO_MOOD` (`ID_TIPO_MOOD`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tipo_genero`
--
ALTER TABLE `tipo_genero`
  ADD PRIMARY KEY (`ID_TIPO_GENERO`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tipo_instrumento`
--
ALTER TABLE `tipo_instrumento`
  ADD PRIMARY KEY (`ID_TIPO_INSTRUMENTO`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tipo_mood`
--
ALTER TABLE `tipo_mood`
  ADD PRIMARY KEY (`ID_TIPO_MOOD`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
  ADD PRIMARY KEY (`ID_TIPO_NOTA`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`ID_TIPO_USUARIO`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`),
  ADD KEY `ID_TIPO_USUARIO` (`ID_TIPO_USUARIO`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_VENTA`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  MODIFY `ID_CREDENCIAL` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID_ESTADO` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PRODUCTO` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_genero`
--
ALTER TABLE `tipo_genero`
  MODIFY `ID_TIPO_GENERO` tinyint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_instrumento`
--
ALTER TABLE `tipo_instrumento`
  MODIFY `ID_TIPO_INSTRUMENTO` tinyint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_mood`
--
ALTER TABLE `tipo_mood`
  MODIFY `ID_TIPO_MOOD` tinyint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
  MODIFY `ID_TIPO_NOTA` tinyint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `ID_TIPO_USUARIO` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_VENTA` int(4) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`ID_TIPO_MOOD`) REFERENCES `tipo_mood` (`ID_TIPO_MOOD`),
  ADD CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`ID_TIPO_GENERO`) REFERENCES `tipo_genero` (`ID_TIPO_GENERO`),
  ADD CONSTRAINT `producto_ibfk_5` FOREIGN KEY (`ID_TIPO_NOTA`) REFERENCES `tipo_nota` (`ID_TIPO_NOTA`),
  ADD CONSTRAINT `producto_ibfk_6` FOREIGN KEY (`ID_TIPO_INSTRUMENTO`) REFERENCES `tipo_instrumento` (`ID_TIPO_INSTRUMENTO`);

--
-- Filtros para la tabla `tipo_genero`
--
ALTER TABLE `tipo_genero`
  ADD CONSTRAINT `tipo_genero_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `tipo_instrumento`
--
ALTER TABLE `tipo_instrumento`
  ADD CONSTRAINT `tipo_instrumento_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `tipo_mood`
--
ALTER TABLE `tipo_mood`
  ADD CONSTRAINT `tipo_mood_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
  ADD CONSTRAINT `tipo_nota_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD CONSTRAINT `tipo_usuario_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`ID_TIPO_USUARIO`) REFERENCES `tipo_usuario` (`ID_TIPO_USUARIO`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
