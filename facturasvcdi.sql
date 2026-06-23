-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2026 a las 23:08:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facturasvcdi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contiene`
--

CREATE TABLE `contiene` (
  `ID_Medicamento` int(10) UNSIGNED NOT NULL,
  `ID_Receta` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contiene`
--

INSERT INTO `contiene` (`ID_Medicamento`, `ID_Receta`) VALUES
(1, 1),
(2, 1),
(2, 3),
(3, 2),
(4, 3),
(5, 4),
(5, 8),
(6, 4),
(6, 9),
(7, 5),
(7, 8),
(8, 6),
(8, 10),
(9, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_Factura` int(10) UNSIGNED NOT NULL,
  `Costo_total` decimal(7,2) UNSIGNED NOT NULL,
  `ID_Receta` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_Factura`, `Costo_total`, `ID_Receta`) VALUES
(1, 5700.00, 1),
(2, 5800.00, 2),
(3, 7300.00, 3),
(4, 9400.00, 4),
(5, 2100.00, 5),
(6, 9900.00, 6),
(7, 3600.00, 7),
(8, 5000.00, 8),
(9, 6500.00, 9),
(10, 4700.00, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE `medicamento` (
  `ID_Medicamento` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Dosis` varchar(50) NOT NULL,
  `Precio_unitario` decimal(7,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamento`
--

INSERT INTO `medicamento` (`ID_Medicamento`, `Nombre`, `Dosis`, `Precio_unitario`) VALUES
(1, 'Paracetamol', '500mg', 2500.00),
(2, 'Ibuprofeno', '400mg', 3200.00),
(3, 'Amoxicilina', '875mg', 5800.00),
(4, 'Omeprazol', '20mg', 4100.00),
(5, 'Diclofenac', '50mg', 2900.00),
(6, 'Azitromicina', '500mg', 6500.00),
(7, 'Loratadina', '10mg', 2100.00),
(8, 'Metformina', '850mg', 4700.00),
(9, 'Salbutamol', '100mcg', 5200.00),
(10, 'Enalapril', '10mg', 3600.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `ID_Med` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Matricula` int(10) UNSIGNED NOT NULL,
  `Especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`ID_Med`, `Nombre`, `Apellido`, `Matricula`, `Especialidad`) VALUES
(1, 'Carlos', 'Lopez', 1001, 'Clinica Medica'),
(2, 'Ana', 'Martinez', 1002, 'Cardiologia'),
(3, 'Pedro', 'Suarez', 1003, 'Traumatologia'),
(4, 'Laura', 'Perez', 1004, 'Pediatria'),
(5, 'Diego', 'Ramirez', 1005, 'Dermatologia'),
(6, 'Paula', 'Vega', 1006, 'Neurologia'),
(7, 'Ricardo', 'Benitez', 1007, 'Oftalmologia'),
(8, 'Marina', 'Acosta', 1008, 'Ginecologia'),
(9, 'Fernando', 'Molina', 1009, 'Urologia'),
(10, 'Gabriela', 'Sosa', 1010, 'Endocrinologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `ID_Pac` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `DNI` int(10) UNSIGNED NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`ID_Pac`, `Nombre`, `Apellido`, `DNI`, `Telefono`, `Direccion`) VALUES
(1, 'Juan', 'Perez', 30111222, '1122334455', 'Av. Mitre 123'),
(2, 'Maria', 'Gomez', 28999888, '1166778899', 'San Martin 456'),
(3, 'Lucas', 'Fernandez', 35555444, '1144556677', 'Belgrano 789'),
(4, 'Sofia', 'Ruiz', 32444555, '1133445566', 'Rivadavia 101'),
(5, 'Martin', 'Diaz', 33777888, '1155667788', 'Sarmiento 202'),
(6, 'Valentina', 'Torres', 34888999, '1177889900', 'Mitre 303'),
(7, 'Joaquin', 'Castro', 35999111, '1199001122', 'Belgrano 404'),
(8, 'Camila', 'Herrera', 36111222, '1111223344', 'Moreno 505'),
(9, 'Agustin', 'Silva', 37222333, '1133557799', 'Lavalle 606'),
(10, 'Julieta', 'Romero', 38333444, '1155779911', 'Alsina 707');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `ID_Receta` int(10) UNSIGNED NOT NULL,
  `ID_Turno` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`ID_Receta`, `ID_Turno`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `ID_Turno` int(10) UNSIGNED NOT NULL,
  `ID_Med` int(10) UNSIGNED NOT NULL,
  `ID_Pac` int(10) UNSIGNED NOT NULL,
  `Horario` time NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`ID_Turno`, `ID_Med`, `ID_Pac`, `Horario`, `Fecha`) VALUES
(1, 1, 1, '09:00:00', '2026-06-20'),
(2, 2, 2, '10:30:00', '2026-06-20'),
(3, 3, 3, '11:00:00', '2026-06-21'),
(4, 4, 4, '08:30:00', '2026-06-22'),
(5, 5, 5, '09:15:00', '2026-06-22'),
(6, 6, 6, '10:00:00', '2026-06-22'),
(7, 7, 7, '10:45:00', '2026-06-23'),
(8, 8, 8, '11:30:00', '2026-06-23'),
(9, 9, 9, '12:15:00', '2026-06-23'),
(10, 10, 10, '13:00:00', '2026-06-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD PRIMARY KEY (`ID_Medicamento`,`ID_Receta`),
  ADD KEY `FK_Contiene_Receta` (`ID_Receta`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_Factura`),
  ADD KEY `ID_Receta` (`ID_Receta`);

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`ID_Medicamento`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`ID_Med`),
  ADD UNIQUE KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`ID_Pac`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`ID_Receta`),
  ADD KEY `ID_Turno` (`ID_Turno`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`ID_Turno`),
  ADD KEY `ID_Med` (`ID_Med`),
  ADD KEY `ID_Pac` (`ID_Pac`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_Factura` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `ID_Medicamento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `ID_Med` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `ID_Pac` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `ID_Receta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `ID_Turno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD CONSTRAINT `FK_Contiene_Medicamento` FOREIGN KEY (`ID_Medicamento`) REFERENCES `medicamento` (`ID_Medicamento`),
  ADD CONSTRAINT `FK_Contiene_Receta` FOREIGN KEY (`ID_Receta`) REFERENCES `receta` (`ID_Receta`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Receta`) REFERENCES `receta` (`ID_Receta`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`ID_Turno`) REFERENCES `turno` (`ID_Turno`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `turno_ibfk_1` FOREIGN KEY (`ID_Med`) REFERENCES `medico` (`ID_Med`),
  ADD CONSTRAINT `turno_ibfk_2` FOREIGN KEY (`ID_Pac`) REFERENCES `paciente` (`ID_Pac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
