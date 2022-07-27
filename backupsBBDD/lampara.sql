-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Servidor: adriandecradmin.mysql.db
-- Tiempo de generación: 24-02-2021 a las 08:31:31
-- Versión del servidor: 5.6.50-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adriandecradmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lampara`
--

CREATE TABLE `lampara` (
  `nif` varchar(8) NOT NULL,
  `altura` int(11) DEFAULT NULL,
  `elevacion` int(11) DEFAULT NULL,
  `alcanceNom` float(10,2) DEFAULT NULL,
  `linterna` varchar(200) DEFAULT NULL,
  `candelasCalc` float(12,2) DEFAULT NULL,
  `alcanceLum` float(10,2) DEFAULT NULL,
  `candelasInst` float(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de detalles lampara';

--
-- Volcado de datos para la tabla `lampara`
--

INSERT INTO `lampara` (`nif`, `altura`, `elevacion`, `alcanceNom`, `linterna`, `candelasCalc`, `alcanceLum`, `candelasInst`) VALUES
('25530', 7, 15, 7.00, 'DES 33 MaqVal Bola leds 50 w optica300 mm', 0.00, 0.00, 0.00),
('25545', 3, 2, 1.00, 'Des 33 Maq. Val.Bola de leds de 50 W OpicaFresnel 300mm', 0.00, 0.00, 0.00),
('25552', 4, 6, 3.00, 'DES 22 Maq. Val.  8 coronas de leds  Óptica BDL 120       ', 0.00, NULL, NULL),
('25554', 2, 2, 1.00, 'MCL 160 (MSM)', 0.00, NULL, NULL),
('25555', 2, 4, 1.00, 'DES 22 Maq. Val.  4 coronas de leds  Óptica BDL 120', 0.00, NULL, NULL),
('25560', 2, 4, 1.00, 'DES 22 LMV   4 coronas de leds  Óptica BDL 120', 0.00, NULL, NULL),
('25563', 2, 3, 1.00, 'MBL 160 (MSM)', 0.00, NULL, NULL),
('25564', 3, 3, 1.00, 'MBL 160 (MSM)', 0.00, NULL, NULL),
('25565', 3, 5, 1.00, 'DES 22 LMV     2 discos de leds    Óptica BDL 120', 0.00, NULL, NULL),
('25570', 3, 5, 1.00, 'DES 22 LMV  2 discos de leds  Óptica BDL 120', 0.00, NULL, NULL),
('25590', 7, 10, 5.00, 'BDL 300 LMV Leds 18w. DES 22', 0.00, NULL, NULL),
('25600', 7, 10, 3.00, 'BDL 120 LMV DES 22', 0.00, NULL, NULL),
('25640', 0, 0, 0.00, '', 0.00, NULL, NULL),
('25650', 14, 28, 19.00, '1', 0.00, 0.00, 0.00),
('25665', 5, 7, 4.00, 'AUTONOMA MCL 140 MSM (3MN)', 0.00, NULL, NULL),
('25667', 2, 3, 1.00, 'Autónoma SL60 SEALITE (1MN)', 0.00, NULL, NULL),
('25700', 10, 20, 20.00, '2', 2.00, 0.00, 0.00),
('25720', 5, 21, 5.00, 'BDL 300 50w.', 0.00, 0.00, 0.00),
('25721', 4, 6, 1.00, 'BDL 120 cuatro coronas.', 0.00, 0.00, 0.00),
('25730', 4, 4, 3.00, 'BDL 120 dos coronas', 1000.00, NULL, NULL),
('25740', 4, 4, 5.00, 'BDL 120 ocho coronas.    ', 0.00, NULL, NULL),
('25761', 4, 4, 3.00, 'BDL 120 una corona HI (DES33).', 0.00, NULL, NULL),
('25765', 4, 4, 3.00, 'BDL 120 una corona HI (DES33).', 0.00, NULL, NULL),
('25768', 3, 3, 2.00, 'MCL 160', 0.00, NULL, NULL),
('25774', 9, 21, 3.00, 'BDL 300 50w.', 0.00, NULL, NULL),
('25776', 3, 12, 3.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25777', 4, 6, 3.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25800', 3, 5, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25820', 4, 6, 3.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25830', 6, 8, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25831', 2, 5, 1.00, 'BDL HI dos coronas.', 0.00, NULL, NULL),
('25840', 4, 7, 3.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('25841', 3, 3, 3.00, 'BDL 120 (ocho coronas de led)', 0.00, NULL, NULL),
('25842', 4, 5, 1.00, 'MCL 200', 0.00, NULL, NULL),
('25842.5', 2, 0, 1.00, 'MCL 160 12% divergencia', 109.00, NULL, NULL),
('25843', 2, 0, 1.00, 'MCL 200', 0.00, NULL, NULL),
('25843.5', 2, 0, 1.00, 'MCL 140', 0.00, NULL, NULL),
('25843.8', 2, 0, 1.00, 'MCL 140', 0.00, NULL, NULL),
('25844', 3, 3, 3.00, 'BDL 120 dos. coronas.', 0.00, NULL, NULL),
('25850', 0, 0, 0.00, '0', 0.00, 0.00, 0.00),
('25920', 4, 6, 1.00, 'BDL 120 ocho coronas.  ', 0.00, NULL, NULL),
('25940', 4, 6, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('26020', 3, 9, 3.00, 'BDL 120 LC-b/ HI.', 0.00, NULL, NULL),
('26021', 4, 9, 3.00, 'BDL 300 Piña de leds de 25W.', 0.00, NULL, NULL),
('26025', 4, 5, 1.00, 'BDL 300 Piña de leds de 25W.', 0.00, NULL, NULL),
('26035', 3, 5, 1.00, 'BDL 120 ocho coronas. ', 0.00, NULL, NULL),
('26041', 3, 5, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('26045', 4, 8, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('26046', 4, 5, 1.00, 'BDL 120 ocho coronas.', 0.00, NULL, NULL),
('26047', 5, 17, 5.00, 'BDL 300', 0.00, NULL, NULL),
('26047.1', 4, 16, 3.00, 'BDL 120 HI', 0.00, NULL, NULL),
('26047.2', 4, 16, 3.00, 'BDL 120 HI', 0.00, NULL, NULL),
('26048', 5, 12, 5.00, 'BDL 300', 0.00, NULL, NULL),
('26048.1', 4, 9, 3.00, 'BDL 120', 0.00, NULL, NULL),
('26048.2', 3, 0, 3.00, 'MBL 160', 0.00, NULL, NULL),
('26048.3', 3, 0, 3.00, 'MBL 160', 0.00, NULL, NULL),
('26049', 2, 2, 3.00, '', 0.00, NULL, NULL),
('26050', 3, 9, 5.00, '', 0.00, NULL, NULL),
('26052', 0, 6, 3.00, '', 0.00, NULL, NULL),
('26052.5', 1, 0, 1.00, 'MCL 100', 0.00, NULL, NULL),
('26052.7', 1, 0, 1.00, 'MCL 100', 0.00, NULL, NULL),
('26055', 0, 5, 1.00, '', 0.00, NULL, NULL),
('26055.6', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26056', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.1', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.15', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.16', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.17', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.2', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.4', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.6', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26058.8', 3, 5, 1.00, '', 0.00, NULL, NULL),
('26060', 0, 0, 1.00, '', 0.00, NULL, NULL),
('26190', 4, 4, 3.00, 'MCL140', 10.10, 2.30, 0.00),
('26270', 2, 2, 3.00, 'MCL-140  SN 295  (Autoalimentada)', 0.00, NULL, NULL),
('26285', 5, 20, 5.00, ' BDL-300 (50w)/ DES-22', 0.00, NULL, NULL),
('26290', 4, 7, 2.00, 'BDL-120 (3 coronas) / DES-22', 0.00, NULL, NULL),
('26311', 4, 17, 3.00, 'BDL-120 (3 coronas) / DES-22', 0.00, NULL, NULL),
('26312', 4, 17, 3.00, 'BDL-120 (8 coronas) / DES-22', 0.00, NULL, NULL),
('26313', 5, 5, 3.00, 'BDL-120 (5 coronas) / DES-33', 0.00, NULL, NULL),
('26314', 4, 12, 3.00, 'BDL-120 (4 coronas) / DES-22', 0.00, NULL, NULL),
('26320', 4, 4, 3.00, 'BDL-120 (4 coronas) / DES-22', 0.00, NULL, NULL),
('26325', 4, 8, 3.00, 'BDL-120 (8 coronas) / DES-22', 0.00, NULL, NULL),
('26326', 5, 7, 1.00, 'MBL-160', 0.00, NULL, NULL),
('26360', 4, 4, 3.00, 'BDL-120 (8 coronas) / DES-22', 0.00, NULL, NULL),
('26380', 4, 6, 3.00, 'BDL-120 (8 coronas) / DES-22', 0.00, NULL, NULL),
('26390', 4, 6, 1.00, 'BDL-120 HI (2 coronas) / DES-33', 0.00, NULL, NULL),
('26392', 4, 6, 1.00, 'BDL-120 HI (2 coronas) / DES-33', 0.00, NULL, NULL),
('26450', 6, 12, 5.00, 'BDL-300 (PiÃ±a Led 50w) / DES-33', 0.00, 0.00, 0.00),
('26460', 66, 66, 3.00, 'Si', 0.00, 0.00, 0.00),
('26470', 0, 0, 3.00, 'Si', 0.00, NULL, NULL),
('26500', 10, 20, 20.00, '0', 0.00, NULL, NULL),
('26508', 2, 4, 1.00, 'BDL 120 dos coronas.', 0.00, NULL, NULL),
('26512', 2, 4, 1.00, 'BDA 155 LMV', 0.00, NULL, NULL),
('prueba', 0, 0, 0.00, '0', 0.00, 0.00, 0.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lampara`
--
ALTER TABLE `lampara`
  ADD PRIMARY KEY (`nif`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lampara`
--
ALTER TABLE `lampara`
  ADD CONSTRAINT `lampara_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);
COMMIT;


/* 
ALTER TABLE `lampara` DROP FOREIGN KEY `lampara_FK`; 
ALTER TABLE `lampara` ADD CONSTRAINT `lampara_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento`(`nif`) ON UPDATE CASCADE */

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
