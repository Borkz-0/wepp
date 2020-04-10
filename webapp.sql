-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2020 a las 22:44:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `ID_CARRERA` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `CODIGO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`ID_CARRERA`, `NOMBRE`, `CODIGO`) VALUES
(1, 'INFORMATICA', 'INFO8'),
(2, 'CONTABILIDAD', 'HOSP-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_Producto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Id_Categoria` int(11) NOT NULL,
  `Precio` float NOT NULL,
  `Imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_Producto`, `Nombre`, `Descripcion`, `Id_Categoria`, `Precio`, `Imagen`) VALUES
(1, 'CURSO DE PROGRAMACION BASICA', 'CURSO ENFOCADO EN LAS TECNICAS DE PROGRAMACION HERRAMIENTAS, LENGUAJES, CONSEPTOS, Y TODO LO NECESARIO PARA COMENZAR EN EL MUNDO DE LA PROGRAMACION', 1, 2500, 'imagen1.jpg'),
(2, 'CURSO DE DISEÑO WEB', 'CURSO DE MODELADO Y MAQUETADO DONDE APRENDERAS LO BASICO DE EL MUNDO DE LA WEB', 2, 1000, 'image2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de usuario`
--

CREATE TABLE `tipo de usuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `DESCRIPCION` text NOT NULL,
  `NIVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo de usuario`
--

INSERT INTO `tipo de usuario` (`id_tipo`, `nombre`, `DESCRIPCION`, `NIVEL`) VALUES
(1, 'CLIENTE', 'ESTE USUARIO REALIZA LAS COMPRAS DENTRO DE LA APLICACION, VISUALIZA SU PERFIL Y SU HISTORIAL DE COMPRA', 1),
(2, 'SISTEMAS', 'ESTE USUARIO PUEDE CONFIGURAR , MODYFICAR Y RESTARURAR LA APLICACION DESDE EL BACKEND O DESDE EL CODIGO ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uasuarios`
--

CREATE TABLE `uasuarios` (
  `id_usuario` int(11) NOT NULL,
  `NOMBRE` varchar(150) NOT NULL,
  `apellidoP` varchar(150) NOT NULL,
  `APELLIDOM` varchar(150) NOT NULL,
  `IMEIL` varchar(255) NOT NULL,
  `ID_CARRERA` int(11) NOT NULL,
  `MATRICULA` varchar(50) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `TUSUARIO` int(11) NOT NULL,
  `Nusuario` varchar(50) NOT NULL,
  `Pssword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `uasuarios`
--

INSERT INTO `uasuarios` (`id_usuario`, `NOMBRE`, `apellidoP`, `APELLIDOM`, `IMEIL`, `ID_CARRERA`, `MATRICULA`, `TELEFONO`, `TUSUARIO`, `Nusuario`, `Pssword`) VALUES
(1, 'HECTOR', 'LOPEZ', 'MIGUEL', 'HECTORLOPEZMIGUEL.MX', 1, '16188003420', '551169558', 2, 'lhector', '5585964');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`ID_CARRERA`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_Producto`);

--
-- Indices de la tabla `tipo de usuario`
--
ALTER TABLE `tipo de usuario`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `uasuarios`
--
ALTER TABLE `uasuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `ID_CARRERA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo de usuario`
--
ALTER TABLE `tipo de usuario`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `uasuarios`
--
ALTER TABLE `uasuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
