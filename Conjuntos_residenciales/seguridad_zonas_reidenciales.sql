-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2026 a las 01:38:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguridad_zonas_reidenciales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `ID_Administrador` int(11) NOT NULL,
  `Cargo` varchar(255) NOT NULL,
  `Area_Responsable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `ID_Asignacion` int(11) NOT NULL,
  `ID_Conjunto` int(11) NOT NULL,
  `ID_Vigilante` int(11) NOT NULL,
  `ID_Turno` int(11) NOT NULL,
  `ID_Cambio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_vigilante`
--

CREATE TABLE `asistencia_vigilante` (
  `ID_Asistencia` int(11) NOT NULL,
  `Hora_Entrada` date DEFAULT NULL,
  `Hora_Salida` date DEFAULT NULL,
  `ID_Asignacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambio_turno`
--

CREATE TABLE `cambio_turno` (
  `ID_Cambio` int(11) NOT NULL,
  `ID_Asignacion_Origen` int(11) NOT NULL,
  `ID_Asignacion_Destion` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conjunto_residencial`
--

CREATE TABLE `conjunto_residencial` (
  `ID_Conjunto` int(11) NOT NULL,
  `ID_Empresa` int(11) NOT NULL,
  `Direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_seguridad`
--

CREATE TABLE `empresa_seguridad` (
  `ID_Empresa` int(11) NOT NULL,
  `Nombre_Empresa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(11) NOT NULL,
  `Nombre_Rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `ID_Turno` int(11) NOT NULL,
  `Hora_Inicio` date DEFAULT NULL,
  `Hora_Fin` date DEFAULT NULL,
  `Dia_Semana` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(255) NOT NULL,
  `Contraseña_Usuario` text NOT NULL,
  `ID_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigilante`
--

CREATE TABLE `vigilante` (
  `ID_Vigilante` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` int(255) NOT NULL,
  `Documento` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ID_Administrador`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`ID_Asignacion`);

--
-- Indices de la tabla `asistencia_vigilante`
--
ALTER TABLE `asistencia_vigilante`
  ADD PRIMARY KEY (`ID_Asistencia`);

--
-- Indices de la tabla `cambio_turno`
--
ALTER TABLE `cambio_turno`
  ADD PRIMARY KEY (`ID_Cambio`);

--
-- Indices de la tabla `conjunto_residencial`
--
ALTER TABLE `conjunto_residencial`
  ADD PRIMARY KEY (`ID_Conjunto`);

--
-- Indices de la tabla `empresa_seguridad`
--
ALTER TABLE `empresa_seguridad`
  ADD PRIMARY KEY (`ID_Empresa`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`ID_Turno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- Indices de la tabla `vigilante`
--
ALTER TABLE `vigilante`
  ADD PRIMARY KEY (`ID_Vigilante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
