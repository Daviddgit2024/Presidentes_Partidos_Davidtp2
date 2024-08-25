-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 00:50:54
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
-- Base de datos: `db_presidentesargentina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos politicos`
--

CREATE TABLE `partidos politicos` (
  `ID` int(11) NOT NULL,
  `Partidos Politicos` varchar(11) NOT NULL,
  `ID_Foranea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos politicos`
--

INSERT INTO `partidos politicos` (`ID`, `Partidos Politicos`, `ID_Foranea`) VALUES
(1, 'Partido Nac', 1),
(2, 'Partido Ind', 2),
(3, 'Partido Aut', 3),
(4, 'Partido Aut', 4),
(5, 'Partido Aut', 5),
(6, 'Partido Aut', 6),
(7, 'Partido Aut', 7),
(8, 'Partido Aut', 8),
(9, 'Partido Aut', 9),
(10, 'Partido Aut', 10),
(11, 'Partido Aut', 11),
(12, 'Partido Aut', 12),
(13, 'Partido Aut', 13),
(14, 'Union Civic', 14),
(15, 'Union Civic', 15),
(16, 'Union Civic', 16),
(17, 'De Facto', 17),
(18, 'Union Civic', 18),
(19, 'Union Civic', 19),
(20, 'Partido Dem', 20),
(21, 'De Facto', 21),
(22, 'De Facto', 22),
(23, 'De Facto', 23),
(24, 'Partido Jus', 24),
(25, 'Partido Jus', 25),
(26, 'De Facto', 26),
(27, 'De Facto', 27),
(28, 'Union Civic', 28),
(29, 'Union Civic', 29),
(30, 'Union Civic', 30),
(31, 'De Facto', 31),
(32, 'De Facto', 32),
(33, 'De Facto', 33),
(34, 'Partido Jus', 34),
(35, 'Partido Jus', 35),
(36, 'Partido Jus', 36),
(37, 'Partido Jus', 37),
(38, 'De Facto', 38),
(39, 'De Facto', 39),
(40, 'De Facto', 40),
(41, 'De Facto', 41),
(42, 'Union Civic', 42),
(43, 'Partido Jus', 43),
(44, 'Partido Jus', 44),
(45, 'Union Civic', 45),
(46, 'Partido Jus', 46),
(47, 'Partido Jus', 47),
(48, 'Partido Jus', 48),
(49, 'Partido Jus', 49),
(50, 'Partido Jus', 50),
(51, 'Partido Jus', 51),
(52, 'Partido Jus', 52),
(53, 'Cambiemos', 53),
(54, 'Partido Jus', 54),
(55, 'La Libertad', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presidentesargentina`
--

CREATE TABLE `presidentesargentina` (
  `ID` int(11) NOT NULL,
  `Presidente` varchar(100) NOT NULL,
  `Inicio del Periodo` int(11) NOT NULL,
  `Fin del Periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presidentesargentina`
--

INSERT INTO `presidentesargentina` (`ID`, `Presidente`, `Inicio del Periodo`, `Fin del Periodo`) VALUES
(1, 'Bartolome Mitre', 1862, 1868),
(2, 'Domingo Faustino Sarmiento ', 1868, 1874),
(3, 'Nicolas Avellaneda ', 1874, 1880),
(4, 'Julio Argentino Roca ', 1880, 1886),
(5, 'Miguel Juarez Cellman ', 1886, 1890),
(6, 'Carlos Pellegrini', 1890, 1892),
(7, 'Luis Saenz Peña', 1892, 1895),
(8, 'Jose Evaristo Uriburu', 1895, 1898),
(9, 'Julio Argentino Roca', 1898, 1904),
(10, 'Manuel Quintana ', 1904, 1906),
(11, 'Jose Figueroa Alcorta ', 1906, 1910),
(12, 'Roque Saenz Peña', 1910, 1914),
(13, 'Victorino De la Plaza', 1914, 1916),
(14, 'Hipolito Yrigoyen ', 1916, 1922),
(15, 'Marcelo Torcuato De Alvear', 1922, 1928),
(16, 'Hipolito Yrigoyen ', 1928, 1930),
(17, 'Jose Felix Uriburu ', 1930, 1932),
(18, 'Agustin P Justo ', 1932, 1938),
(19, 'Roberto Ortiz', 1938, 1942),
(20, 'Ramon Castillo ', 1942, 1943),
(21, 'Arturo Rawson', 1943, 1943),
(22, 'Pedro P Ramirez ', 1943, 1944),
(23, 'Edelmiro J Farrell ', 1944, 1946),
(24, 'Juan Domingo Peron ', 1946, 1952),
(25, 'Juan Domingo Peron ', 1952, 1955),
(26, 'Eduardo Lonardi', 1955, 1955),
(27, 'Pedro Eugenio Aramburu ', 1955, 1958),
(28, 'Arturo Frondizi ', 1958, 1962),
(29, 'Jose Maria Guido ', 1962, 1963),
(30, 'Arturo Umberto Illia ', 1963, 1966),
(31, 'Juan Carlos Ongania ', 1966, 1970),
(32, 'Roberto Levingston ', 1970, 1971),
(33, 'Alejandro Lanusse ', 1971, 1973),
(34, 'Hector J Campora ', 1973, 1973),
(35, 'Raul Lastiri ', 1973, 1973),
(36, 'Juan Domingo Peron ', 1973, 1974),
(37, 'Martinez de Peron ', 1974, 1976),
(38, 'Jorge Rafael Videla ', 1976, 1981),
(39, 'Roberto Viola ', 1981, 1981),
(40, 'Leopoldo Galtieri ', 1981, 1982),
(41, 'Reynaldo Bignone ', 1982, 1983),
(42, 'Raul Alfonsin ', 1983, 1989),
(43, 'Carlos Saul Menem ', 1989, 1995),
(44, 'Carlos Saul Menem ', 1995, 1999),
(45, 'Fernando De la Rua ', 1999, 2001),
(46, 'Ramon Puerta', 2001, 2001),
(47, 'Adolfo Rodriguez Saa', 2001, 2001),
(48, 'Eduardo Camaño ', 2001, 2002),
(49, 'Eduardo Duhalde ', 2002, 2003),
(50, 'Nestor Kirchner ', 2003, 2007),
(51, 'Cristina Fernandez de Kirchner ', 2007, 2011),
(52, 'Cristina Fernandez de Kirchner ', 2011, 2015),
(53, 'Mauricio Macri ', 2015, 2019),
(54, 'Alberto Fernandez ', 2019, 2023),
(55, 'Javier Milei', 2023, 2027);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Rango` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `name`, `Password`, `Rango`) VALUES
(1, 'webadmin', '$2y$10$hFXrttNIm.fjXjfa1AanRuAHUl5WW77cpMDCj5r2wk0l/T.qOK7C6', 'Admi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partidos politicos`
--
ALTER TABLE `partidos politicos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Foranea` (`ID_Foranea`);

--
-- Indices de la tabla `presidentesargentina`
--
ALTER TABLE `presidentesargentina`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_2` (`ID`),
  ADD KEY `ID_3` (`ID`),
  ADD KEY `ID_4` (`ID`),
  ADD KEY `ID_5` (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partidos politicos`
--
ALTER TABLE `partidos politicos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `presidentesargentina`
--
ALTER TABLE `presidentesargentina`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partidos politicos`
--
ALTER TABLE `partidos politicos`
  ADD CONSTRAINT `partidos politicos_ibfk_1` FOREIGN KEY (`ID_Foranea`) REFERENCES `presidentesargentina` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
