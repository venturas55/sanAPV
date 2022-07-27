-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Servidor: adriandecradmin.mysql.db
-- Tiempo de generación: 31-05-2019 a las 12:16:16
-- Versión del servidor: 5.6.43-log
-- Versión de PHP: 7.0.33

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
-- Estructura de tabla para la tabla `balizamiento`
--

CREATE TABLE `balizamiento` (
  `nif` varchar(8) NOT NULL,
  `num_internacional` varchar(12) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `telecontrol` varchar(200) DEFAULT NULL,
  `apariencia` varchar(50) DEFAULT NULL,
  `periodo` decimal(5,2) DEFAULT NULL,
  `caracteristica` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de balizas';

--
-- Volcado de datos para la tabla `balizamiento`
--

INSERT INTO `balizamiento` (`nif`, `num_internacional`, `tipo`, `telecontrol`, `apariencia`, `periodo`, `caracteristica`) VALUES
('25460', 'E-0190', 'Baliza Torre troncopiramidal verde blanca', '', 'GpD(2)V', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25470', 'E-0190.2', 'Baliza Torre troncopiramidal roja blanca', '', 'GpD(2)R', '7.00', 'L0,5 oc1,5 L0,5 oc4,'),
('25530', 'E-0194', 'Baliza Torre de hormigÃ³n triangular verde', 'Sí  RTU Nº 41', 'DV  5s', '5.00', 'L1 oc4'),
('25545', 'E-0193', 'Baliza Torre de hormigÃ³n triangular', 'RTU Nº 42', 'DR 5s.', '5.00', 'L1 oc4'),
('25552', 'E-0196', 'Baliza Torre cilÃ­ndrica y base troncopiramidal', '', 'Gp D (2) R   7s.', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25554', '', 'Boya de espeque roja/verde MSM', 'NO', '', '14.50', 'L0,5 oc1 L0,5 oc3 L0,5 oc9'),
('25555', 'E-0196.2', 'Baliza Columna cuadrangular verde', '', 'Gp D(2) V  7s.', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25560', 'E-0196.25', 'Baliza Columna cuadrangular', 'NO', 'Gp D(4)R  11s.', '11.00', '(L0,5 oc1,5)3 L0,5 oc4,5'),
('25563', 'E-0196.32', 'Baliza Linterna sobre pilote. ', 'NO', 'Gp D (4 )  V  11s.', '11.00', '(L0,5 oc1,5)3 L0,5 oc4,5'),
('25564', '', 'Baliza Linterna sobre pilote. ', 'SI', 'D Amarillos 3s.', '3.00', ' L0,5 oc 2,5'),
('25565', 'E-0196.3', 'Baliza Torre troncopiramidal verde', '', 'D Verdes. 3s', '3.00', ' L0,5 oc 2,5'),
('25570', 'E-0196.35', 'Baliza Torre tronco piramidal roja', '', 'Gp D(3) R  9s.', '9.00', '(L0,5 oc1,5)2 L0,5 oc4,5'),
('25590', 'E-0197', 'Baliza Torre cilíndrica verde sobre base verde', '', 'GpD(4)V', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('25600', 'E-0197.2', 'Baliza Torre cilíndrica rojae sobre base roja', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('25620', 'E-0197.5', 'Baliza Panel circular blanco, bandas rojas en el tablero del puente', '', 'Iso B', '2.00', 'L2 oc'),
('25640', '', 'Baliza Columna de hierro', '', 'sin apariencia ', '0.00', 'sin periodo'),
('25650', '', 'Faro', 'Si SCADA', '', '20.00', 'L 0.255 Oc 3.745 L 0.255 Oc 3.745 L 0.255 Oc 11.74'),
('25660', 'E-0199', 'Baliza Torreta cuadrangular verde.', '', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,'),
('25665', 'E-0199.2', 'Baliza Espeque rojo con la base blanca.', '', 'GpD(3)R', '1.00', '[(L0,5 oc1,5)x2]+L0,5 oc6,'),
('25667', 'E-0199.6', 'Baliza Poste cuadrangular rojo.', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc5,'),
('25700', '0', 'Faro', 'Si SCADA', 'D', '10.00', 'L 0,8 OC 9,8'),
('25720', 'E-0200.4', 'Baliza CilÃ­ndrica verde base blanca', 'RTU 06', 'DV', '5.00', 'L1 oc4'),
('25721', 'E-0200.5', 'Baliza TPS 3.3', '', 'D V', '5.00', 'L1 oc4'),
('25730', '', 'Boya Castillete negra amarilla negra y marca de tope', 'No lo necesita', 'GRp(3)B', '5.00', '[(L 0.25 oc 0.25)x2] + L 0.25 oc 3.75'),
('25740', '', 'Boya Castillete roja y marca de tope', 'No lo necesita', 'D R', '4.00', 'L0.5 oc3.5'),
('25761', '', 'Boya Castillete amarilla y marca de tope', 'RTU 04', 'GpD (4) A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25765', '', 'Boya Castillete amarilla y marca de tope', 'RTU 02', 'GpD (4) A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25774', 'E-0201.11', 'Baliza CilÃ­ndrica roja, base blanca', 'RTU 10', 'GpD (2)R', '7.00', 'L0.5 oc 1.5 L0.5 oc 4.5'),
('25776', 'E-0201.25', 'Baliza TPS 3.3', '', 'GpD(3)R', '9.00', '[(L0.5 oc1.5)x2]+L0.5 oc 4.'),
('25777', 'E-0201.16', 'Baliza TPS 3.3', '', 'GpD(3)R', '9.00', '[(L 0.5 oc 1.5)x2] L0.5 oc 4.'),
('25800', 'E-0201.2', 'Baliza TPS 3.3', '', 'DR', '3.00', 'L 0.5 oc 2.5'),
('25820', 'E-0201.4', 'Baliza TPS 3.3', '', 'GpD(2)V   ', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('25820.1', '', 'Boya Castillete verde-roja-verde y marca de tope', 'Sí', 'GpD (2)V', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('25830', 'E-0201.5', 'Baliza TPS 4.8', '', 'GpD(2)V', '9.00', '[(L 0.5 oc 1.5)x2]+ L 0.5 oc 4.5'),
('25831', '', 'Baliza Columna cilÃ­ndrica verde con la base blanca.', '', 'GpD (3)V', '9.00', 'L 0,5   oc 1,5   L 0,5   oc 1,5   L 0,5   oc 4,5'),
('25840', 'E-0202', 'Baliza TPS 3.3', 'RTU 44', 'GpD (4)R', '11.00', '[(0.5 oc 1.5)x3] L 0.5 oc 4.5'),
('25841', '', 'Boya Castillete rojo y marca de tope', 'RTU 54', 'GpD (4)R', '11.00', '[( L 0.5 oc 1.5)x3] L 0.5 oc 4.5'),
('25842', 'E-0201.7', 'Baliza TPS 3.3', '', 'GpDV', '3.00', 'L 0.5 oc 2.5'),
('25842.5', '', 'Boya Cilíndrica verde.', 'Si.', 'Ct', '1.00', 'L 0,5 + oc 0,5'),
('25843', 'E-0201.75', 'Boya Castillete', 'Si', 'DR', '3.00', 'L 0.5 oc 2.5'),
('25843.5', '', 'Boya Cilíndrica roja', 'Si', 'Ct', '1.00', 'L 0,5 + oc 0,5'),
('25843.8', '', 'Boya Cilíndrica roja', 'Si', 'Ct. 1s.', '1.00', 'L 0,5 + oc 0,5'),
('25844', '', 'Boya oceanográfica Castillete amarilla y marca de tope', 'RTU 37', 'GpD (4)A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25920', 'E-0204.2', 'Baliza TPS 3.3', 'RTU 13', 'GpD (4) V', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25940', 'E-0204', 'Baliza TPS 3.3', '', 'GpDR', '3.00', 'L 0.5 oc 2.5'),
('26020', 'E-0206.7', 'Baliza Tronco piramidal negro-amarillo con marca de tope.', 'No', 'GpRp (6) B', '10.00', '[(L 0.25 oc 0.25) x6] L 2 oc 5'),
('26021', 'E-0208.6', 'Baliza TPS 3.3', '', 'GpD(2)V', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('26025', 'E-0208.65', 'Baliza TPS 3.3', '', 'GpD(2)R', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('26035', 'E-0208.75', 'Baliza Tronco piramidal metálica', '', 'GpD(3)V', '9.00', '[(L 0.5 oc 1.5)x2]+ L 0.5 oc 4.5'),
('26041', 'E-0208.8', 'Baliza Tronco piramidal metálica', '', 'GpD(3)R', '9.00', '[(L 0.5 oc 1.5)x2]+ L 0.5 oc 4.5'),
('26045', 'E-0208.84', 'Baliza Tronco piramidal metálica', '', 'CtV', '1.00', 'L 0.3 oc 0.7'),
('26046', 'E-0208.86', 'Baliza Tronco piramidal metálica', '', 'CtR', '1.00', 'L 0.3 oc 0.7'),
('26047', '', 'Baliza Torre cilíndrica verde', 'RTU 35', 'GpD(2)V', '7.00', 'L0,5+oc1,5+L0,5+oc4,'),
('26047.1', '', 'Baliza Cilíndrica con base cónica, negra amarilla negra con marca tope', 'Si.', 'GpRp(3)B', '5.00', '[(L0,25 oc0,25)x2]+L0,25 oc3,75'),
('26047.2', '', 'Baliza Poliester reforzado con fibra de vidrio', 'RTU 33', 'RpB', '0.50', 'L 0,25 + oc 0,25'),
('26048', '', 'Baliza Torre cilíndrica con base cónica roja', '', 'GpD(2)R', '7.00', 'L0,5 oc1,5 L0,5 oc4,'),
('26048.1', '', 'Baliza Torre cilíndrica con base cónica roja', '', 'GpD(3)R', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,5'),
('26048.2', '', 'Boya Elastomero (Espuma polietileno cubierta de poliuretano)', 'RTU 31', 'RpB', '0.50', 'L0.25+  oc 0.25'),
('26048.3', '', 'Boya Elastomero (Espuma polietileno cubierta de poliuretano)', 'RTU 32', 'RpB', '0.50', 'L02.5 + oc 0.25'),
('26049', '', 'Boya Fibra de vidrio', 'No', 'CtR', '0.50', 'L0,25 oc 0,25'),
('26050', 'E-0199.9', 'Baliza Acero', 'No', 'CtR', '0.50', 'L0,25 oc 0,25'),
('26052', 'E-0199.91', 'Baliza Acero', 'No', 'CtV', '0.50', 'L0,25 oc 0,25'),
('26052.5', '', ' Cilíndrica', 'Si', 'D A', '5.00', 'Fija'),
('26052.7', '', ' Cilíndrica', 'Si', 'D A', '5.00', 'Fija'),
('26055', 'E-0199.92', 'Baliza Poste rojo con paneles cuadrangulares adosados', '', 'DR', '5.00', 'L0.5 oc4.5'),
('26055.5', 'E-0199.925', 'Baliza Poste rojo, verde, rojo con paneles triangulares adosados', 'No', 'GpD(2+1)R', '14.50', 'L0.5 oc1 L0.5 oc3 L0.5 oc9'),
('26055.6', 'E-0199.926', 'Baliza Poste cilindrico rojo con paneles cuadrangulares adosados.', '', 'GpD(2)R', '7.00', 'L0.5 oc1.5 L0.5 o4.5'),
('26056', 'E-0199.93', 'Baliza Poste verde con paneles triangulares adosados', '', 'DV', '5.00', 'L0.5 oc4.5'),
('26058', 'E-0199.94', 'Baliza Poste verde, rojo, verde con paneles triangulares adosados', 'No', 'GpD(2+1)V', '14.50', 'L0.5 oc1 L0.5 oc3 L0.5 oc9'),
('26058.1', 'E-0199.945', 'Baliza Poste cilindrico amarillo con paneles triangulares adosados', '', 'DA', '5.00', 'L0.5 o4.5'),
('26058.15', '', 'SEMaFORO Panel metalico con el fondo negro.', '', 'Luz fija (tres luces rojas superpuestas)', '1.00', 'Fija'),
('26058.16', '', 'SEMÁFORO Panel metálico con el fondo negro.', '', 'Luz fija (tres luces rojas superpuestas)', '1.00', 'Fija'),
('26058.17', '', 'SEMÁFORO Panel metálico con el fondo negro.', '', 'Luz fija (tres luces rojas superpuestas)', '1.00', 'Fija'),
('26058.2', 'E-0199.96', 'Baliza Poste cilindrico verde.', '', 'GpD(2)V', '7.00', 'L0.5 oc1.5 L0.5 o4.5'),
('26058.4', 'E-0199.97', 'Baliza Poste cilíndrico rojo.', '', 'GpD(3)R', '9.00', '[(L0.5 oc1.5)x2]+ L0.5 o4.5'),
('26058.6', 'E-0199.98', 'Baliza Poste cilíndrico verde.', '', 'GpD(3)V', '9.00', '[(L0.5 oc1.5)x2]+ L0.5 o4.5'),
('26058.8', 'E-0199.99', 'Baliza Poste cilíndrico rojo.', 'No', 'GpD(4)R', '11.00', '[(L0.5 oc1.5)x3]+ L0.5 o4.5'),
('26060', '', 'Boya Castillete amarillo Marca de tope un aspa amarilla', 'Sí', 'GpD(4)A', '1.00', 'borrada por error'),
('26150', 'E-0209.6', 'Baliza Torrete cilíndrica roja blanca', 'SPC88', 'GpD(3)R', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4'),
('26160', 'E-0209.7', 'Baliza Torrete cilíndrica verde blanca', 'SPC88', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4'),
('26190', '', 'Boya Espeque negra roja negra', 'no', 'GpD(2)B 5s', '5.00', 'L0,5 oc1 L0,5 oc3'),
('26200', 'E-0210', 'Baliza Torreta cilíndrica verde sobre caseta de hormigón', '', 'GpD(2)V', '5.00', 'L0,5 oc0,7 L0,5 oc3'),
('26202', 'E-0210.73', 'Baliza Torreta troncocónica verde blanca', '', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4'),
('26205', 'E-0210.74', 'Baliza Columna cilíndrica cardinal E negro.', '', 'GpRp(3)B', '5.00', '[(L0,25 oc0,25)x2]+L0,25 oc3,'),
('26220', 'E-0210.5', 'Baliza Torreta cilíndrica roja sobre caseta de hormigón', '', 'GpD(2)R', '5.00', 'L0,5 oc0,7 L0,5 oc3'),
('26230', 'E-0210.7', 'Baliza Columna cuadrangular roja adosada a muro azul.', '', 'GpD(3)R', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,'),
('26270', '', 'Boya Castillete amarillo ( X )', 'NO', 'GpD(4)A ', '11.00', '[ ( L0,5 oc1,5 ) x 3 ] L0,5 oc4,5'),
('26285', 'E-0210.75', 'Baliza Moncada', 'RTU 38 (5 hilos)', 'DV', '5.00', 'L0,5 oc4,5'),
('26290', 'E-0210.9', 'Baliza TPS 3.3', '', 'GpD(2)V', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('26311', 'E-0210.8', 'Baliza TPS 3.3', 'RTU 19 (5 hilos)', 'GpRp(6)+DLB ', '10.00', '[(L0,25 oc0,25)x 6] L2 oc5'),
('26312', 'E-0211', 'Baliza TPS 3.3', '', 'DR ', '5.00', 'L0,5 oc4,5'),
('26313', '', 'Boya Castillete  amarillo ( X )', 'RTU 28 (5 hilos)', 'GpD(4)A', '11.00', '[ ( L0,5 oc1,5 )x 3 ] L0,5 oc4,5'),
('26314', 'E-0212.1', 'Baliza TPS 3.3', '', 'GpD(2)R', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('26320', '', 'Boya Castillete verde( ^ )', 'No lo necesita', 'GpD(3)V', '9.00', '[ ( L0,5 oc1,5 ) x 2 ]  L0,5 oc4,5'),
('26325', 'E-0212.2', 'Baliza TPS 3.3', 'RTU 11 (5 hilos)', 'GpD(2+1)R', '5.00', 'L0,5 oc1 L0,5 oc3 L0,5 oc9'),
('26326', '', 'Baliza MTP-35', '', 'Ct V', '1.00', 'L 0.5 oc 0.5'),
('26360', '', 'Boya Castillete verde(^ )', 'RTU 08 (3 hilos)', 'GpD(4)V', '11.00', '[ ( L0,5 oc1,5 ) x 3 ] L0,5 oc4,5'),
('26380', 'E-0214', 'Baliza TPS 3.3', 'RTU 40 (5 hilos)', 'GpD(4)R', '11.00', '[ ( L0,5 oc1,5 ) x 3 ] L0,5 oc4,5'),
('26390', 'E-0214.6', 'Baliza TPS 3.3', '', 'DV', '3.00', 'L0,5 oc2,5'),
('26392', 'E-0214.7', 'Baliza TPS 3.3', '', 'DR', '3.00', 'L0,5 oc2,5'),
('26450', 'E-0212.6', 'Baliza Torre cilíndrica ', 'RTU 39 (5 hilos)', 'GpCt(3)B', '10.00', '[(L0,3 oc0,8) x2 ] L0,3 oc7,5'),
('26460', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26460.1', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26460.2', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26460.3', '', 'Boya De castillete amarilla y marca de tope  X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26470', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26471, 26472 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26471', '', 'Boya De castillete amarilla marca de tope  X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26472 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26472', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26471 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26473', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26471 y 26472)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26500', '0', 'Faro', 'Si', 'GpD(2)', '10.00', 'L0,5  oc 0,2  L0,5  oc 7'),
('26504', 'E-0217', 'Baliza Columna verde con la base blanca.', '', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,5'),
('26508', 'E-0217.2', 'Baliza Columna verde con la base blanca.', '', 'GpD(4)V', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26510', 'E-0217.4', 'Baliza Columna roja con la base blanca.', '', 'GpD(3)R', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,5'),
('26512', 'E-0217.5', 'Baliza Columna roja con la base blanca.', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eliminados`
--

CREATE TABLE `eliminados` (
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario` varchar(10) NOT NULL,
  `item` varchar(50) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fila` int(11) DEFAULT NULL,
  `columna` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de elementos de inventario eliminados';

--
-- Volcado de datos para la tabla `eliminados`
--

INSERT INTO `eliminados` (`fecha`, `usuario`, `item`, `cantidad`, `fila`, `columna`, `descripcion`) VALUES
('2019-05-03 23:15:52', 'pepe', '23456769', 8, 6, 1, '346458');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` mediumint(9) NOT NULL,
  `item` varchar(50) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fila` int(11) DEFAULT NULL,
  `columna` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de inventario';

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `item`, `cantidad`, `fila`, `columna`, `descripcion`) VALUES
(1, 'BDL300 G', 3, 6, 4, 'Baliza modelo BDL300 color verde'),
(2, 'BDL300 R', 1, 6, 4, 'Baliza modelo BDL300 color roja'),
(3, 'Optica BDL300', 2, 6, 4, 'Solo la óptica para modelo BDL300'),
(4, 'Optica BDL120', 20, 6, 4, 'Solo la óptica para modelo BDL120'),
(5, 'BDL120 R', 1, 6, 4, 'Baliza modelo BDL120 color Roja'),
(6, 'Optica BDL120 2018', NULL, 6, 4, 'Solo la óptica para modelo BDL120 año 2018'),
(8, 'Panel 20w 36cmx31xm', 1, 5, 2, 'Panel solar de 20w de medidas 36cmx31'),
(9, 'Panel 10w 27cmx48cm', 3, 5, 2, 'Panel solar de 10w de medidas 27cmx48'),
(10, 'BDL 120 HI W', 1, 5, 3, 'Baliza de alta intensidad color blanco'),
(11, 'MCL 120 Y', 1, 5, 3, 'Baliza color amarillo'),
(12, 'MCL 120 W', 1, 5, 3, 'Baliza color blanco'),
(13, 'MBL 160 Y', 2, 5, 3, 'Baliza color amarillo'),
(14, 'BDL 120 G', 1, 5, 4, 'Baliza BDL120 de color verde'),
(15, 'BDL 120 R', 1, 5, 4, 'Baliza BDL120 de color roja'),
(16, 'BDL 120 W', 1, 5, 4, 'Baliza BDL120 de color blanca'),
(17, 'Corona amarilla completa', 1, 5, 4, 'Una corona amarilla entera'),
(18, 'Corona roja completa', 3, 5, 4, 'Una corona roja entera'),
(19, 'Corona verde completa', 3, 5, 4, 'Una corona verde entera'),
(20, 'Piña verde de 50w', 1, 5, 4, 'Una piña verde 50w'),
(21, 'Piña blanca de 50w', 1, 5, 4, 'Una piña blanca 50w'),
(22, 'Discos amarillos', 5, 5, 4, 'Discos amarillos 02827'),
(25, 'Panel 66w 66x78', 6, 4, 2, 'Panel solar de 66w de medidas 66cmx78cm'),
(26, 'Cuandro de Anfer MOSCAD', 1, 4, 2, 'Un cuadro completo de Anfer para telecomunicaciones'),
(27, 'MBL 160 R', 1, 4, 3, 'Baliza MBL160 de color roja'),
(28, 'MCL 140 G', 1, 4, 3, 'Baliza MCL140 de color verde'),
(29, 'BDL 120 Y', 1, 4, 3, 'Baliza BDL120 de color amarilla'),
(30, 'BDL 120 Y', 2, 4, 4, 'Baliza BDL120 de color amarilla'),
(31, 'Panel 95w 66x78', 3, 3, 2, 'Panel solar de 95w de medidas 66cmx78cm'),
(32, 'Antena GPS', 1, 4, 2, 'Antena GPS marca Garmin'),
(33, 'BDL 120 R', 4, 3, 3, 'Baliza BDL120 de color roja'),
(34, 'BDL 120 R old', 1, 3, 3, 'Baliza BDL120 de color roja vieja'),
(35, 'Radial', 1, 3, 4, 'Radial'),
(36, 'Analizador de Baterias', 1, 3, 4, ''),
(37, 'Taladro Metabo', 1, 3, 4, 'Taladro Metabo 18LT'),
(38, 'Taladro Bosch', 1, 3, 4, 'Taladro Bosch GST-60P'),
(39, 'Sistema Alimentacion', 3, 2, 2, 'Sistema alimentacion C20'),
(40, 'Cargador', 9, 2, 2, 'Blue Power Charger ISA'),
(41, 'BKL 120 W', 1, 2, 3, 'Baliza BKL 120 blanca'),
(42, 'BKL 120 Y', 1, 2, 3, 'Baliza BKL 120 amarilla'),
(43, 'BDL 120 G', 3, 2, 3, 'Baliza BDL 120 verde'),
(44, 'DES22', 6, 2, 4, 'Destellador D22'),
(45, 'DES33', 1, 2, 4, 'Destellador D33'),
(46, 'Tarjeta BKL120', 2, 2, 4, 'Tarjeta BKL 120'),
(47, 'Disco LEDs Y', 30, 2, 4, 'Disco LEDs amarillo'),
(48, 'Disco LEDs G', 30, 2, 4, 'Disco LEDs verde'),
(49, 'Disco LEDs W', 3, 2, 4, 'Disco LEDs blanco'),
(50, 'Disco LEDs R', 22, 2, 4, 'Disco LEDs rojo'),
(51, 'Bateria SB6', 6, 1, 1, 'Bateria SB6 de 200Ah medidas 24x19cm'),
(52, 'Grupo monofasico', 1, 1, 1, 'Grupo monofasico Ayerbe de 1,5kw'),
(53, 'Cargador Bateria', 1, 1, 1, 'Cargador bateria Krauser 20A'),
(54, 'Bateria SB12', 7, 1, 2, 'Bateria SB6 de 100Ah medidas 24x19cm'),
(55, 'AS12V', 3, 1, 3, 'Bateria de 10Ah 15x10cm'),
(56, 'AS06V', 3, 1, 3, 'Bateria de 10Ah 15x5cm'),
(57, 'PR2020 STECA', 3, 1, 4, 'Regulador carga fotovoltaica PR2020 STECA'),
(58, 'PRS 2020 STECA', 2, 1, 4, 'Regulador carga fotovoltaica PRS2020 STECA'),
(59, 'PR2020 STECA IP65', 1, 1, 4, 'Regulador carga fotovoltaica PR2020 STECA IP65'),
(60, 'Soldador', 1, 1, 4, 'Soldador portatil Fronius TransPocket 1500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lampara`
--

CREATE TABLE `lampara` (
  `nif` varchar(8) NOT NULL,
  `altura` int(11) DEFAULT NULL,
  `elevacion` int(11) DEFAULT NULL,
  `alcance` int(11) DEFAULT NULL,
  `linterna` varchar(200) DEFAULT NULL,
  `candelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de detalles lampara';

--
-- Volcado de datos para la tabla `lampara`
--

INSERT INTO `lampara` (`nif`, `altura`, `elevacion`, `alcance`, `linterna`, `candelas`) VALUES
('25530', 7, 15, 7, 'DES 33 MaqVal. Bola leds 50 w Ã³ptica300 mm', 0),
('25545', 3, 2, 1, 'Des 33 Maq. Val.Bola de leds de 50 W ÓpticaFresnel 300mm', 0),
('25552', 4, 6, 3, 'DES 22 Maq. Val.  8 coronas de leds  Óptica BDL 120       ', 0),
('25554', 2, 2, 1, 'MCL 160 (MSM)', 0),
('25555', 2, 4, 1, 'DES 22 Maq. Val.  4 coronas de leds  Óptica BDL 120', 0),
('25560', 2, 4, 1, 'DES 22 LMV   4 coronas de leds  Óptica BDL 120', 0),
('25563', 2, 3, 1, 'MBL 160 (MSM)', 0),
('25564', 3, 3, 1, 'MBL 160 (MSM)', 0),
('25565', 3, 5, 1, 'DES 22 LMV     2 discos de leds    Óptica BDL 120', 0),
('25570', 3, 5, 1, 'DES 22 LMV  2 discos de leds  Óptica BDL 120', 0),
('25590', 7, 10, 5, 'BDL 300 LMV Leds 18w. DES 22', 0),
('25600', 7, 10, 3, 'BDL 120 LMV DES 22', 0),
('25640', 0, 0, 0, '', 0),
('25650', 14, 28, 19, '1', 19),
('25665', 5, 7, 4, 'AUTONOMA MCL 140 MSM (3MN)', 0),
('25667', 2, 3, 1, 'Autónoma SL60 SEALITE (1MN)', 0),
('25700', 10, 20, 20, '2', 2),
('25720', 5, 21, 5, 'BDL 300 50w.', 0),
('25721', 4, 6, 1, 'BDL 120 cuatro coronas.', 0),
('25730', 4, 4, 3, 'BDL 120 dos coronas', 1000),
('25740', 4, 4, 5, 'BDL 120 ocho coronas.    ', 0),
('25761', 4, 4, 3, 'BDL 120 una corona HI (DES33).', 0),
('25765', 4, 4, 3, 'BDL 120 una corona HI (DES33).', 0),
('25774', 9, 21, 3, 'BDL 300 50w.', 0),
('25776', 3, 12, 3, 'BDL 120 ocho coronas.', 0),
('25777', 4, 6, 3, 'BDL 120 ocho coronas.', 0),
('25800', 3, 5, 1, 'BDL 120 ocho coronas.', 0),
('25820', 4, 6, 3, 'BDL 120 ocho coronas.', 0),
('25830', 6, 8, 1, 'BDL 120 ocho coronas.', 0),
('25831', 2, 5, 1, 'BDL HI dos coronas.', 0),
('25840', 4, 7, 3, 'BDL 120 ocho coronas.', 0),
('25841', 3, 3, 3, 'BDL 120 (ocho coronas de led)', 0),
('25842', 4, 5, 1, 'MCL 200', 0),
('25842.5', 2, 0, 1, 'MCL 160 12% divergencia', 109),
('25843', 2, 0, 1, 'MCL 200', 0),
('25843.5', 2, 0, 1, 'MCL 140', 0),
('25843.8', 2, 0, 1, 'MCL 140', 0),
('25844', 3, 3, 3, 'BDL 120 dos. coronas.', 0),
('25920', 4, 6, 1, 'BDL 120 ocho coronas.  ', 0),
('25940', 4, 6, 1, 'BDL 120 ocho coronas.', 0),
('26020', 3, 9, 3, 'BDL 120 LC-b/ HI.', 0),
('26021', 4, 9, 3, 'BDL 300 Piña de leds de 25W.', 0),
('26025', 4, 5, 1, 'BDL 300 Piña de leds de 25W.', 0),
('26035', 3, 5, 1, 'BDL 120 ocho coronas. ', 0),
('26041', 3, 5, 1, 'BDL 120 ocho coronas.', 0),
('26045', 4, 8, 1, 'BDL 120 ocho coronas.', 0),
('26046', 4, 5, 1, 'BDL 120 ocho coronas.', 0),
('26047', 5, 17, 5, 'BDL 300', 0),
('26047.1', 4, 16, 3, 'BDL 120 HI', 0),
('26047.2', 4, 16, 3, 'BDL 120 HI', 0),
('26048', 5, 12, 5, 'BDL 300', 0),
('26048.1', 4, 9, 3, 'BDL 120', 0),
('26048.2', 3, 0, 3, 'MBL 160', 0),
('26048.3', 3, 0, 3, 'MBL 160', 0),
('26049', 2, 2, 3, '', 0),
('26050', 3, 9, 5, '', 0),
('26052', 0, 6, 3, '', 0),
('26052.5', 1, 0, 1, 'MCL 100', 0),
('26052.7', 1, 0, 1, 'MCL 100', 0),
('26055', 0, 5, 1, '', 0),
('26055.6', 3, 5, 1, '', 0),
('26056', 3, 5, 1, '', 0),
('26058.1', 3, 5, 1, '', 0),
('26058.15', 3, 5, 1, '', 0),
('26058.16', 3, 5, 1, '', 0),
('26058.17', 3, 5, 1, '', 0),
('26058.2', 3, 5, 1, '', 0),
('26058.4', 3, 5, 1, '', 0),
('26058.6', 3, 5, 1, '', 0),
('26058.8', 3, 5, 1, '', 0),
('26060', 0, 0, 1, '', 0),
('26190', 4, 4, 3, 'No lo necesita. ', 0),
('26270', 2, 2, 3, 'MCL-140  SN 295  (Autoalimentada)', 0),
('26285', 5, 20, 5, ' BDL-300 (50w)/ DES-22', 0),
('26290', 4, 7, 2, 'BDL-120 (3 coronas) / DES-22', 0),
('26311', 4, 17, 3, 'BDL-120 (3 coronas) / DES-22', 0),
('26312', 4, 17, 3, 'BDL-120 (8 coronas) / DES-22', 0),
('26313', 5, 5, 3, 'BDL-120 (5 coronas) / DES-33', 0),
('26314', 4, 12, 3, 'BDL-120 (4 coronas) / DES-22', 0),
('26320', 4, 4, 3, 'BDL-120 (4 coronas) / DES-22', 0),
('26325', 4, 8, 3, 'BDL-120 (8 coronas) / DES-22', 0),
('26326', 5, 7, 1, 'MBL-160', 0),
('26360', 4, 4, 3, 'BDL-120 (8 coronas) / DES-22', 0),
('26380', 4, 6, 3, 'BDL-120 (8 coronas) / DES-22', 0),
('26390', 4, 6, 1, 'BDL-120 HI (2 coronas) / DES-33', 0),
('26392', 4, 6, 1, 'BDL-120 HI (2 coronas) / DES-33', 0),
('26450', 6, 12, 5, 'BDL-300 (Piña Led 50w) / DES-33', 0),
('26460', 0, 0, 3, 'Si', 0),
('26470', 0, 0, 3, 'Si', 0),
('26500', 10, 20, 20, '0', 0),
('26508', 2, 4, 1, 'BDL 120 dos coronas.', 0),
('26512', 2, 4, 1, 'BDA 155 LMV', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `nif` varchar(8) NOT NULL,
  `puerto` varchar(50) DEFAULT NULL,
  `num_local` decimal(5,0) DEFAULT NULL,
  `localizacion` varchar(70) DEFAULT NULL,
  `latitud` varchar(15) DEFAULT NULL,
  `longitud` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de localizacion del balizamiento';

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`nif`, `puerto`, `num_local`, `localizacion`, `latitud`, `longitud`) VALUES
('25460', 'C.N. Oliva', '1', 'Extremo dique de abrigo', '38º59,004\' N', '00º 05,490\' W'),
('25470', 'C.N. Oliva', '2', 'Extremo contradique', '38º55,989\' N', '00º 05,559\' W'),
('25530', 'Puerto de GandÃ­a', '1', 'Extremo dique norte', '38Âº 59.712\' N', '00Âº 8.666\' W'),
('25545', 'Puerto de Gandía', '2', 'Extremo del contradique', '38º 59.661\' N', '00º 8.813\' W'),
('25552', 'Puerto de Gandía', '3', 'Extremo Dique Sur', '38º 59.736\' N', '00º 9.108\' W'),
('25554', 'Puerto de Gandï¿½a', '4', 'Boya bifurcaciï¿½n', '38Âº 59.789\' N', '00Âº 9.173\' W'),
('25555', 'Puerto de Gandia', '5', 'DÃ¡rsena deportiva a estribor.', '38Âº 59.815\' N', '00Âº 9.154\' W'),
('25560', 'Puerto de Gandía', '6', 'Dársena deportiva Extremo contradique.', '38º 59.813\' N', '00º 9.181\' W'),
('25563', 'Puerto de Gandía', '7', 'Pantalan A - extremo - muelle Borgia', '38º 59.720\' N', '00º 9.359\' W'),
('25564', 'Puerto de Gandía', '8', 'Pantalan B - extremo - muelle Borgia', '38º 59.662\' N', '00º 9.527\' W'),
('25565', 'Puerto de Gandía', '9', 'Muelle final encauzamiento', '38º 59.639\' N', '00º 9.560\' W'),
('25570', 'Puerto de Gandía', '10', 'Muelle frutero angulo NE', '38º 59.708\' N', '00º 9.259\' W'),
('25590', 'Desembocadura Júcar Cullera', '1', 'Malecón Norte a 20 m del extremo', '39º09,079\' N', '00º 14,048\' W'),
('25600', 'Desembocadura Júcar Cullera', '2', 'Malecón Sur a 39 m del extremo', '39º09,034\' N', '00º 14,164\' W'),
('25620', 'Desembocadura Júcar Cullera', '3', 'Puente de la Bega, en el mejor lugar de paso', '39º09,450\' N', '00º 15,138\' W'),
('25640', 'Al norte de la desembocadura del Júcar', '4', 'Escollo El Moro', '39º09,605\' N', '00º 13,849\' W'),
('25650', 'Cullera', '1', 'Extremo del cabo de Cullera', '39º 11,188´N', '00º 13,016\' W'),
('25660', 'Gola del Perelló', '1', 'Extremo Dique Norte', '39º16,723\' N', '00º 16,359\' W'),
('25665', 'Gola del Perelló', '2', 'Extremo Dique sur', '39º16,695\' N', '00º 16,374\' W'),
('25667', 'Gola del Perelló', '3', 'Extremo espigón interior.', '39º16,719\' N', '00º 16,406\' W'),
('25700', 'Puerto de Valencia', '1', 'Angulo del dique de la ampliacion norte', '39Âº 27.297\' N', '00Âº 17.161\' W'),
('25720', 'Puerto de Valencia.', '1', 'Extremo dique del Este', '39Âº 26.028\'N', '000Âº18.171\' W'),
('25721', 'Puerto de Valencia.', '3', 'Martillo dique del Este', '39° 26.139\' N', '00° 18.349\' W'),
('25730', 'Puerto de Valencia.', '25', 'Exterior, en alineación contradique RCNV.', '39º 25.219´N', '00º 18.218´ W'),
('25740', 'Puerto de Valencia.', '2', 'Canal de entrada Br.', '39º 25.582´N', '000º 18.187´ W'),
('25761', 'Puerto de Valencia.', '5', 'Canal, ángulo Este del contradique.', '39º 25.898´N', '000º 18.465´ W'),
('25765', 'Puerto de Valencia.', '6', 'Canal, Ã¡ngulo Norte del contradique.', '39Âº 26.143\' N', '00Âº 18.822\' W'),
('25774', 'Puerto de Valencia.', '4', 'Contra dique, Ã¡ngulo Este', '39Âº 25.840\' N', '00Âº18.561\' W'),
('25776', 'Puerto de Valencia.', '7', 'Extremo del contradique.', '39° 26.106\' N', '00° 18.811\' W'),
('25777', 'Puerto de Valencia.', '8', 'Extremo del contradique ángulo interior.', '39º 26.083´N', '00º 18.847´ W'),
('25800', 'Puerto de Valencia.', '9', 'Roja xita.', '39º 26.527´N', '00º 18.635´ W'),
('25820', 'Puerto de Valencia.', '11', 'Verde XitÃ¡.', '39Âº 26.516\' N', '00Âº 18.760\' W'),
('25820.1', 'Puerto de Valencia.', '12', 'Canal de entrada Er. Xitá.', '39º 26.512´N', '00º 18.779´ W'),
('25830', 'Puerto de Valencia.', '20', 'Muelle Transversal Costa.', '39º 26.245´N', '00º 19.181´ W'),
('25831', 'Puerto de Valencia', '21', 'Muelle Transversal Costa en Duque de Alba', '39Âº 26.252\' N', '000Âº 19.145\' W'),
('25840', 'Puerto de Valencia.', '14', 'Muelle Sur.', '39Âº 26.589Âº N', '00Âº 18.984Âº W'),
('25841', 'Puerto de Valencia.', '15', 'Extremo del muelle sur.', '39º 26.590´N', '00º 18.938´ W'),
('25842', 'Puerto de Valencia.', '16', 'Er. Dársena de servicios Náuticos.', '39º 26.475´N', '00º 19.062´ W'),
('25842.5', 'Puerto de Valencia.', '18', 'Boya a Er. Bocana Dársena de Servicios Náuticos.', '39º 26.454´N', '00º 19.056´ W'),
('25843', 'Puerto de Valencia.', '17', '1ª boya a Br. Dársena de Servicios Náuticos.', '39º 26.402´N', '00º 19.076´ W'),
('25843.5', 'Puerto de Valencia.', '19', '2ª boya a Br. Dársena de Servicios Náuticos.', '39º 26.439´N', '00º 19.094´ W'),
('25843.8', 'Puerto de Valencia.', '19', '3ª boya Br. Dársena de Servicios Náuticos', '39º 26,484Ž N', '00º 19,093Ž W'),
('25920', 'Puerto de Valencia.', '22', 'E. Turia Er.', '39º 26.901´N', '00º 19.284´ W'),
('25940', 'Puerto de Valencia.', '23', 'Br E.Turia.', '39º 26.990´N', '00º 19.237´ W'),
('26020', 'Puerto de Valencia.', '26', 'RCNV Contra dique ángulo Sur', '39º 25.242´N', '00º 19.052´ W'),
('26021', 'Puerto de Valencia.', '27', 'Er. Bocana R.C.N.V.', '39º 25.356´N', '00º 19.360´ W'),
('26025', 'Puerto de Valencia.', '28', 'Br.Bocana R.C.N.V.', '39º 25.427´N', '00º 19.411´ W'),
('26035', 'Puerto de Valencia.', '30', 'R.C.N.V. Verde interior', '39º 25,643´ N', '0º 19,773´ W'),
('26041', 'Puerto de Valencia.', '29', 'R.C.N.V. Bocana interior roja', '39º 25,595´ N', '0º 19,776´ W'),
('26045', 'Puerto de Valencia.', '31', 'Verde bocana D.E.M.', '39º 25.530´N', '00º 19.856´ W'),
('26046', 'Puerto de Valencia.', '32', 'Roja bocana D.E.M.', '39º 25.545´N', '00º 19.884´ W'),
('26047', 'Puerto de Valencia.', '33', 'Er.Extremo dique de abrigo de la ampliación N', '39º 26.651´N', '00º 17.500´ W'),
('26047.1', 'Puerto de Valencia.', '36', 'Cambio de alineación del dique de abrigo de ampliación N', '39º 27.300´N', '00º 17.147´ W'),
('26047.2', 'Puerto de Valencia.', '37', 'Quiebro del nuevo dique de abrigo', '39º 27.512´N', '00º 17,748\' W'),
('26048', 'Puerto de Valencia.', '34', '1ª Baliza de babor del nuevo contradique de la amp. N', '39º 26.679´N', '00º 17.930´ W'),
('26048.1', 'Puerto de Valencia.', '35', '2ª baliza de Br, Extremo contradique de la ampliación N', '39º 27.070´N', '00º 17.719´ W'),
('26048.2', 'Puerto de Valencia.', '100', 'Darsena Norte', '39º 27.155´N', '00º 18.042\' W'),
('26048.3', 'Puerto Valencia', '101', 'Darsena Norte', '39º 27.104´N', '00º 17.882\' W'),
('26049', 'Marina Real Juan Carlos I.Valencia', '38', 'Boya a babor Bocana Norte', '39º 27.850´N', '00º 18.509\' W'),
('26050', 'Marina Real Juan Carlos I.Valencia', '39', 'Extremo Dique de abrigo Bocana Norte', '39º 27.767´N', '00º 18.509\' W'),
('26052', 'Marina Real Juan Carlos I.Valencia', '40', 'Extremo Contradique Bocana Norte', '39º 27.665´N', '00º 18.632\' W'),
('26055', 'Marina Real Juan Carlos I.Valencia', '41', 'Espigón de cierre Extremo oeste Darsena Sur', '39º 27.599´N', '00º 18.753\' W'),
('26055.5', 'Marina Real Juan Carlos I', '43', 'Dique - Extremo - Darsena Sur', '39º 27.615´N', '00º 18.833\' W'),
('26055.6', 'Marina Real Juan Carlos I.Valencia.', '45', '1ª Baliza a babor Canal de Acceso', '39º 27.634´N', '00º 19.016\' W'),
('26056', 'Marina Real Juan Carlos I.Valencia', '42', 'Angulo Oeste- Darsena Norte - Explanada', '39º 27.668´N', '00º 18.755\' W'),
('26058', 'Marina Real Juan Carlos I', '44', 'Espigón - Extremo - Darsena Auxiliar', '39º 27.677´N', '00º 19.002\' W'),
('26058.1', 'Marina Real JC I. Valencia', '51', 'Angulo oeste - Darsena auxiliar', '39º 27.683´N', '00º 19.112\' W'),
('26058.15', 'Semaforo a estribor - Puente móvil. Valencia', '102', 'Marina Real Juan Carlos I', '39º 27,683´ N', '000º 19.112´ W'),
('26058.16', 'Semáforo a babor - Puente móvil. Valencia', '103', 'Marina Real Juan Carlos I', '39º 27,638´ N', '000º 19.112´ W'),
('26058.17', 'Semáforo sobre tablero del puente móvil. Valencia', '104', 'Marina Real Juan Carlos I', '39º 27,666´ N', '000º 19.133´ W'),
('26058.2', 'Marina Real Juan Carlos I.Valencia', '46', '1ª Baliza a estribor Canal de Acceso', '39º 27.685´N', '00º 19.328\' W'),
('26058.4', 'Marina Real Juan Carlos I.Valencia.', '47', '2ª Baliza a babor Darsena Auxiliar', '39º 27.642´N', '00º 19.315\' W'),
('26058.6', 'Marina Real Juan Carlos I.Valencia.', '48', '2ª Baliza a estribor Canal de acceso', '39º 27.617´N', '00º 19.505\' W'),
('26058.8', 'Marina Real Juan Carlos I.Valencia.', '49', '3ª Baliza a babor Darsena auxiliar', '39º 27.562´N', '00º 19.466\' W'),
('26060', 'Marina Real Juan Carlos I.Valencia', '50', 'Darsena interior, en el extremo de la rampa de varadero', '39º 27.669´N', '00º 19.560\' W'),
('26150', 'PORT-SAPLAYA', '1', 'Extremo dique Sur', '39º 30,614\' N', '00º 19,111\' W'),
('26160', 'PORT-SAPLAYA', '2', 'Extremo dique Norte', '39º 30,602\' N', '00º 19,065\' W'),
('26190', 'Port saplaya', '3', 'Señaliza pontona hundida', '39º 32,740\' N', '00º 16,940\' W'),
('26200', 'Pobla Farnals', '1', 'Extremo dique de Levante', '39º 33,496\' N', '00º 17,008\' W'),
('26202', 'Pobla Farnals', '2', 'Dique de Levante, angulo interior.', '39º 33,589\' N', '00º 17,026\' W'),
('26205', 'Pobla Farnals', '3', 'Ángulo exterior', '39º 33,767\' N', '00º 16,861\' W'),
('26220', 'Pobla Farnals', '4', 'Extremo espigón de playa.', '39º 33,520\' N', '00º 17,070\' W'),
('26230', 'Pobla Farnals', '5', 'Extremo muelle contradique.', '39º 33,617\' N', '00º 17,046\' W'),
('26270', 'Puerto de Sagunto - UNIÓN FENOSA', '14', 'Emisario submarino', '39º 37.831\' N', '00º 13.528\' W'),
('26285', 'Puerto de Sagunto', '1', 'Extremo Dique de abrigo', '39º 37.830\' N', '00º 12.321\' W'),
('26290', 'Puerto de Sagunto', '2', 'Martillo Dique de abrigo', '39º 38.035\' N', '00º 12.372\' W'),
('26311', 'Puerto de Sagunto', '3', 'Contradique ( Angulo S )', '39º 37.754\' N', '00º 12.935\' W'),
('26312', 'Puerto de Sagunto', '4', 'Contradique ( Angulo E )', '39º 38.001\' N', '00º 12.715\' W'),
('26313', 'Puerto de Sagunto', '5', 'Talud contradique', '39º 38.060\' N', '00º 12.630\' W'),
('26314', 'Puerto de Sagunto', '6', 'Contradique ( Extremo )', '39Âº 38.264\' N', '00Âº 12.684\' W'),
('26320', 'Puerto de Sagunto', '7', '1ª boya Canal Principal', '39º 38.590\' N', '00º 12.570\' W'),
('26325', 'Puerto de Sagunto', '8', 'Muelle noreste,extremo sur.', '39º 38.569\' N', '00º 12.746\' W'),
('26326', 'Puerto de Sagunto', '15', 'Muelle Norte Dos', '39º 38.562 N', '00º 12.805 W'),
('26360', 'Puerto de Sagunto', '9', '2ª boya Canal Principal', '39º 38.920\' N', '00º 12.690\' W'),
('26380', 'Puerto de Sagunto', '10', 'Muelle Sur (Angulo)', '39º 38.858\' N', '00º 12.820\' W'),
('26390', 'Puerto de Sagunto', '11', 'Dársena pesquera (Dique)', '39º 39.134\' N', '00º 12.654\' W'),
('26392', 'Puerto de Sagunto', '12', 'Dársena pesquera (Contradique)', '39º 39.152\' N', '00º 12.622\' W'),
('26450', 'Puerto de Sagunto', '13', 'Pantalán Sierra Menera', '39º 38.803\' N', '00º 11.664\' W'),
('26460', 'Cultivos marinos \"Costa Blanca\"', '1', 'Boya SW', '39º 38,422\' N', '00º 10,296\' W'),
('26460.1', 'Cultivos marinos \"Costa Blanca\"', '2', 'Boya NW', '39º 38,849\' N', '00º 10,445\' W'),
('26460.2', 'Cultivos marinos \"Costa Blanca\"', '3', 'Boya NE', '39º 38,941\' N', '00º 10,001\' W'),
('26460.3', 'Cultivos marinos \"Costa Blanca\"', '4', 'Boya SE', '39º 38,513\' N', '00º 09,853\' W'),
('26470', 'Cultivos marinos \"Acuimed\"', '5', 'Boya S', '39º 38,900\' N', '00º 10,600\' W'),
('26471', 'Cultivos marinos \"Acuimed\"', '6', 'Boya W', '39º 39,100\' N', '00º 10,900\' W'),
('26472', 'Cultivos marinos \"Acuimed\"', '7', 'Boya N', '39º 39,200\' N', '00º 10,800\' W'),
('26473', 'Cultivos marinos \"Acuimed\"', '8', 'Boya E', '39º 39,031\' N', '00º 10,523\' W'),
('26500', 'Puerto de Sagunto', '1', 'Cabo Canet', '39º 40,471´ N', '00º 12,460´ W'),
('26504', 'Canet de Berenguer', '1', 'Extremo dique de Levante', '39º 40,337\' N', '00º 12,063\' W'),
('26508', 'Canet de Berenguer', '2', 'Extremo Martillo', '39º 40,366\' N', '00º 12,073\' W'),
('26510', 'Canet de Berenguer', '3', 'Extremo Sur Contradique', '39º 40,370\' N', '00º 12,105\' W'),
('26512', 'Canet de Berenguer', '4', 'Extremo Norte Contradique', '39º 40,430\' N', '00º 12,093\' W');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario` varchar(10) NOT NULL,
  `accion` varchar(10) NOT NULL,
  `observacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de logs';

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`fecha`, `usuario`) VALUES
('2019-05-03 21:35:11', 'adrian'),
('2019-05-03 21:43:04', 'pepe'),
('2019-05-03 21:44:57', 'pepe'),
('2019-05-03 21:46:02', 'venturas'),
('2019-05-03 23:00:35', 'adrian'),
('2019-05-03 23:02:33', 'pepe'),
('2019-05-10 18:23:55', 'adrian');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `nif` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `mantenimiento` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de mantenimiento del balizamiento';

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`nif`, `fecha`, `mantenimiento`) VALUES
('25530', '2004-06-01', 'Instalación linterna nueva, Batería antigua (08/03/1999)'),
('25530', '2008-06-01', 'Cambio de cargador rectificador (avería)   '),
('25530', '2010-09-25', 'Instalación de Litepipes de leds '),
('25530', '2014-04-14', 'Cambio de batería (Fullmen Gel 110 amp/h del año 2009)'),
('25530', '2016-11-10', 'Cambio de LDR.'),
('25530', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco.'),
('25530', '2017-07-10', 'Se sustituyen las dos LDR y se sanea la instalación.'),
('25545', '2004-06-02', 'Instalación equipo nuevo Batería antigua (17/02/1999)'),
('25545', '2009-04-02', 'Instalación de Litepipes Cambio de baterías (Linterna y Litepipe)'),
('25545', '2012-11-08', 'Sustitución de una LDR, LDR averiada'),
('25545', '2016-08-05', 'Linterna apagada. Se repara en el mismo día.'),
('25545', '2016-09-12', 'Se sustituye LDR y se modifica posición para evitar deslumbramientos.'),
('25545', '2016-11-15', ' Se pinta la torre dejando el tercio inferior de blanco.'),
('25552', '2005-11-21', 'Instalación en edificio caseta de bombas'),
('25552', '2010-05-21', 'Instalación boya proviSíonal por obras   Se anula la baliza'),
('25552', '2011-08-12', 'Instalación torre TPS Maqu. Val. En ángulo nuevo muelle'),
('25552', '2014-10-13', 'Reparación del transceptor de radio Motorola GP 340 (Anfer) '),
('25552', '2014-10-13', 'Restauración del firmvare de la RTU Motorola MOSCAD (Anfer)'),
('25552', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco.'),
('25554', '2003-12-04', 'Instalación boya pequeña BKL 120 Marca la bifurcación del club náutico'),
('25554', '2004-03-04', 'Reparación del anclaje. Boya a la deriva'),
('25554', '2009-04-17', 'Instalación boya grande usada BDL120 Sustit. a la antigua y más pequeña'),
('25554', '2011-10-26', 'ReviSíón general de la boya. Todo correcto'),
('25554', '2013-05-21', 'Revisión general. Flotador oxidado y un panel roto'),
('25554', '2013-07-15', 'Sustitución de la óptica por deterioro'),
('25554', '2013-07-15', 'Sustitución del destellador y la LDR por avería '),
('25554', '2013-10-11', 'Sustitución de la boya en servicio por otra nueva de MSM (mod. EBM 15) y linterna (mod. MCL 160) con batería de 6 volt. Y 12 amp/hora.'),
('25554', '2014-08-21', 'Revisión general y limpieza (todo bien).'),
('25554', '2015-09-07', 'Revisión general (todo bien).'),
('25554', '2016-08-10', 'Revisión general (buen estado).'),
('25554', '2019-04-10', 'Se sacó para revisión. En sustitución se coloca una provisional.'),
('25555', '2005-10-27', 'Instalación BDL 120 LMV'),
('25555', '2007-08-14', 'Cambio de óptica. Rajas longitudinales en toda la superficie'),
('25555', '2011-02-25', 'Cambio de óptica. Rajas longitudinales en toda la superficie'),
('25555', '2012-12-05', 'Cambio de batería. Se instala una batería de gel de 100 amp/h'),
('25555', '2016-02-22', 'Sustitución de la fuente de alimentación por avería.'),
('25555', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco.'),
('25555', '2018-05-31', 'Se retira la linterna para reformar la señal.'),
('25555', '2018-06-06', 'Se termina la reforma y se vuelve a instalar la linterna en su sitio.'),
('25555', '2018-06-19', 'Se apaga por la noche y se da de baja.'),
('25555', '2018-06-20', 'Se sustituye el equipo luminoso por avería del termistor. Se da de alta.'),
('25560', '2005-10-27', 'Instalación BDL 120 LMV'),
('25560', '2007-08-11', 'Cambio de óptica Grietas longitudinales en toda la superficie'),
('25560', '2009-11-17', 'Cambio de óptica Grietas longitudinales en toda la superficie'),
('25560', '2012-03-01', 'Cambio de óptica Grietas longitudinales en toda la superficie'),
('25560', '2013-01-18', 'Cambio de batería (Gel 120 amp/h - año 2009)'),
('25560', '2013-01-18', 'Cambio de destellador DES 22 por fallo'),
('25560', '2013-01-18', 'Cambio de LDR'),
('25560', '2013-09-13', 'Cambio de tarjeta reguladora TR 355 del cargador de baterías.'),
('25560', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco.'),
('25560', '2018-05-31', 'Se retira la linterna para reformar la señal'),
('25560', '2018-06-06', 'Se termina la reforma y se vuelve a instalar la linterna en su sitio.'),
('25563', '2015-08-05', 'Se instala nueva baliza y se comunica a SASEMAR y PPEE'),
('25564', '2015-08-05', 'Se instala nueva baliza y se comunica a SASEMAR y PPEE'),
('25565', '2005-03-30', 'Instalación BKL 120 en poste verde'),
('25565', '2008-06-24', 'Cambio de linterna por avería. Se repara la retirada'),
('25565', '2009-02-03', 'Cambio de destellador  por avería'),
('25565', '2010-02-05', 'Instalación BDL 120 en torre troncopiramidal'),
('25565', '2013-09-18', 'Cambio de LDR'),
('25565', '2015-08-05', 'Cambio de característica.'),
('25565', '2016-09-10', 'Se sustituye disco de leds en la linterna.'),
('25565', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco'),
('25565', '2016-12-30', 'Se sustituye el regulador averiado y la batería descargada por otra usada.'),
('25565', '2913-01-31', 'Cambio del regulador solar por avería'),
('25570', '2007-01-25', 'Instalación BKL 120 en poste rojo'),
('25570', '2010-05-26', 'Cambio de linterna completa'),
('25570', '2011-10-26', 'Instalación BDL 120 en torre troncopiramidal nueva'),
('25570', '2016-11-15', 'Se pinta la torre dejando el tercio inferior de blanco'),
('25570', '2017-05-12', 'Se sustituye la LDR.'),
('25570', '2017-05-12', 'Se sustituye la torre entera por oxidación de la base.'),
('25660', '2020-04-22', '5 Se le pinta el tercio inferior de blanco'),
('25665', '2020-01-30', '5 Un golpe de mar la derriva y queda fuera de servicio.'),
('25665', '2020-02-08', '6 Se retira y queda fuera de servicio por obras en el espigón.'),
('25665', '2020-02-11', '6 Se restituye el sevicio aunque las obras no han finalizado. '),
('25665', '2020-02-23', '5 Se instala un espeque provisional y se da de alta.'),
('25665', '2020-04-22', '5 Se monta el espeque rojo definitivo con el tercio inferior de blanco'),
('25720', '2004-09-16', 'Se instala tele-control de la baliza y dos lite-pipe.'),
('25720', '2007-01-29', 'Avería de la fuente de alimentación montada por ANFER.'),
('25720', '2007-12-04', 'reparar avería en lite-pipe.'),
('25720', '2008-01-15', 'Sustituir y repara fuente de alimentación 220/12v.'),
('25720', '2008-04-14', 'Se pinta baliza Verde-blanco.'),
('25720', '2010-03-24', 'Se sincroniza con la verde del martillo 25.721'),
('25720', '2011-05-04', 'Sustituir fuente de alimentación por avería.'),
('25720', '2012-01-17', 'Fallo de la linterna por tormenta, cambio de fuente de alimentación.'),
('25720', '2013-11-08', 'Instalación de dos puntos de luz.'),
('25720', '2014-11-21', 'Se sincronizan los lite-pipes con la linterna principal.'),
('25720', '2015-03-31', 'Se repinta la baliza.'),
('25720', '2015-04-01', 'Se repara la escotilla hidráulica de acceso a la cofa (taller mécanico).'),
('25720', '2018-10-23', 'Se repinta la torre.'),
('25720', '2018-11-20', 'Se sustituye la batería de la linterna principal por avería (cortocircuitada).'),
('25721', '2007-09-27', 'Se instala baliza con una linterna nuestra (APV) porque Enrique no tenía.'),
('25721', '2008-04-04', 'Se instala la nueva linterna.'),
('25721', '2010-03-24', 'Se sincroniza con la 25.720'),
('25721', '2010-09-22', 'Se descarga la batería por fallo de red 230v'),
('25721', '2013-11-08', 'Sustitución del cuadro de acometida e instalación de punto de luz.'),
('25721', '2015-04-01', ' Se repinta la torre de la baliza dejando el tercio inferior de blanco.'),
('25721', '2016-09-27', ' Sustitución de la LDR nº 2 por avería.'),
('25721', '2018-10-16', 'Se repinta la torre.'),
('25730', '2004-04-16', 'Se instala tele-control y sustituye la linterna de Balizamar por una BDL 120'),
('25730', '2006-12-12', 'Se sustituye por reparación.'),
('25730', '2007-05-14', 'Se fondea otra vez la boya original reparada.'),
('25730', '2008-01-04', 'Sustituir linterna rota.'),
('25730', '2008-05-15', 'Reparar barandilla rota por siniestro.'),
('25730', '2008-12-17', 'Dos paneles rotos por temporal.'),
('25730', '2010-01-26', 'Paneles rotos por temporal.'),
('25730', '2010-02-08', 'Se cambia la característica.'),
('25730', '2010-10-28', 'Se sustituye la boya'),
('25730', '2010-11-22', 'Alarma por fallo de comunicación del GPS (Se reinicializa). Fallos de comunicaciones por exceso de transmisiones. ANFER'),
('25730', '2011-01-03', 'Se repara alarma de GPS (fallo de posicionamiento) ANFER.'),
('25730', '2012-04-03', 'Se sustituye para reparar paneles solares y mantenimiento.'),
('25730', '2012-05-04', 'Se sustituye un panel destruido por la tormenta del Viernes día 28/04/12.'),
('25730', '2012-05-31', 'Se fondea de nuevo pintada con paneles nuevos y tres baterías nuevas.'),
('25730', '2016-06-06', 'Se sustituye la puerta del armario exterior y la fotocélula nº2.'),
('25730', '2016-07-26', 'Avería por batería baja. Se revisa la instalación y se deja operativa.'),
('25730', '2017-01-31', 'Se saca a tierra por mantenimiento (eléctrico ,mecánico y pintura)'),
('25730', '2017-07-05', 'Una vez finalizado su mantenimiento se fondea de nuevo en su ubicación'),
('25730', '2017-07-10', 'Se suelta de su anclaje el PLC dando fallo, se sujeta con bridas. '),
('25740', '2004-04-16', 'Se instala el tele-control y se sustituye la linterna de Balizamar por una BDL 120 de ocho coronas.'),
('25740', '2006-05-12', 'Siniestro de la boya por temporal se recupera en la playa de Pinedo y se fondea una sustituta con las mismas características en su lugar el día 21/06/06.'),
('25740', '2007-06-12', 'Se sustituye la linterna.'),
('25740', '2008-09-23', 'Sustituir tres baterías por avería, dañadas por temporal.'),
('25740', '2008-12-10', 'Sustituir linterna por condensación.'),
('25740', '2009-10-05', 'Sustituir PLC por avería.'),
('25740', '2009-12-14', 'Sustituir boya por mantenimiento. Instalación del telecontrol en boya sustituta.'),
('25740', '2010-01-15', 'Sustituir la marca de tope.'),
('25740', '2010-01-28', 'Emplazar Moscad, que se había soltado y daba fallos.'),
('25740', '2011-04-08', 'Sustituir boya por mantenimiento.'),
('25740', '2012-03-14', 'Repara fallo periódico de comunicaciones con GPS. ANFER.'),
('25740', '2013-07-08', 'Sustituir baterías del año 2005.'),
('25740', '2016-10-24', 'Se saca a tierra por mantenimiento (batería baja)'),
('25740', '2016-12-13', 'Se fondea de nuevo la boya y se retira la provisional.'),
('25740', '2017-03-08', 'Volvemos a sacar la boya para reparar los paneles solares (temporal)'),
('25740', '2017-05-18', 'Se fondea de nuevo una vez reparada y se retira la provisional.'),
('25740', '2019-04-22', 'Varada en playa del Saler debido a fuerte temporal'),
('25740', '2019-04-30', 'Se fondea la boya de sustitución (adjunta en fotos)'),
('25761', '2004-04-16', 'Se instala tele-control y se sustituye linterna de Balizamar  por BDL 120 de ocho coronas.'),
('25761', '2008-11-21', 'Se sustituye la boya por una provisional por labores de mantenimiento.'),
('25761', '2012-10-05', 'Se sustituye la boya por que se detecta en la revisión periódica que no tiene paneles solares, se da de baja.'),
('25761', '2013-02-15', 'Una vez reparada se repone de nuevo y se retira la provisional (baterías nuevas y paneles nuevos)'),
('25761', '2013-03-12', 'Se sincroniza con la boya 25765. (ANFER)'),
('25761', '2014-05-06', 'Sustituida foto-célula por avería.'),
('25761', '2014-08-05', 'Fallo de sincronia con la 25765. Se repara reseteando la RTU.'),
('25761', '2014-09-07', 'Falla una fotocélula dejando encendida la boya'),
('25761', '2014-09-08', 'Se sutituye la fotocelula nº1 y se verifica funcionamiento.'),
('25761', '2014-10-02', 'Se sustituye el PLC (ANFER) por que los problemas de LDR persistian. OK'),
('25761', '2015-11-09', 'Se sustituye la boya metálica por una EMB 2.2 reformada. '),
('25761', '2018-01-30', 'Se sustituye la foto-célula izquierda.'),
('25765', '2004-04-16', 'Se instala tele-control y se sustituye linterna de Balizamar por BDL 120 de ocho coronas.'),
('25765', '2008-06-09', 'Se sustituye por una provisional por labores de mantenimiento.'),
('25765', '2010-10-21', 'Se instalan nuevas baterías por averia.'),
('25765', '2012-02-27', 'Fallos de comunicaciones por exceso de transmisiones. ANFER.'),
('25765', '2012-09-14', 'Se recorta el radio de borneo de la boya acortando la cadena 5m.'),
('25765', '2013-03-12', 'Se sincroniza con la boya 25761. (ANFER)'),
('25765', '2014-09-03', 'Se recupera la marca de tope del fondo marino, rota por la base y se instala de nuevo.'),
('25765', '2014-09-05', 'Fallo de sincronia con la 25761. Se repara reseteando la RTU.'),
('25765', '2015-10-08', 'Se sustituye la boya metálica por una EMB 2.2 reformada.'),
('25774', '2007-01-15', 'El taller repara la puerta de acceso a la torre.'),
('25774', '2007-10-14', 'Avería por fallo de red220v.'),
('25774', '2008-02-21', 'Pintado de la torre Rojo-blanco.'),
('25774', '2009-02-15', 'Instalación de una baliza lineal MLP 3000 (Mesemar).'),
('25774', '2010-09-15', 'Se incorpora al tele-control la baliza lineal.'),
('25774', '2012-11-22', 'Se monta panel para crear un sector de oscuridad  270º  a  325º (55º)'),
('25774', '2013-11-05', 'Se reinstala el cuadro de acometida y se añade punto de luz'),
('25774', '2014-01-16', 'Se repara linterna vertical (MSM) sustituye el destellador y lo saca fuera.'),
('25774', '2014-01-17', 'Se repara y se repinta la torre por Dragados'),
('25774', '2014-11-24', ' Se sincroniza el lite-pipe con la linterna principal.'),
('25774', '2015-09-23', 'Se sustituyen ambas LDR.'),
('25774', '2017-12-13', 'Repintado de la torre manteniendo la base blanca.'),
('25777', '2010-01-20', 'Se instala la nueva torre TPS 3.3 (LMV)'),
('25777', '2011-03-09', 'Se instala telecontrol y se sincroniza con 25776.'),
('25777', '2011-05-31', 'Avería en la fuente de alimentación ANFER.'),
('25777', '2012-01-17', 'Avería por tormenta de la fuente de alimentación ANFER.'),
('25777', '2012-11-18', 'Avería por tormenta de la fuente de alimentación ANFER.'),
('25777', '2012-11-21', 'ANFER sustituye la fuente y conecta la carga directamente a la batería.'),
('25777', '2013-05-14', 'Avería en la fuente, se sustituye y se manda a reparar.'),
('25777', '2013-05-17', 'Avería en la fuente, se retira se manda a repara y se instala un cargador.'),
('25777', '2013-11-20', 'Se reinicia por fallo de comunicación y se restablece el servicio.'),
('25777', '2015-04-08', 'Se repinta la torre de la baliza dejando el tercio inferior de blanco.'),
('25777', '2015-09-24', 'Se sustituyen ambas LDR.'),
('25777', '2017-12-12', 'Se repinta la torre'),
('25777', '2019-04-24', 'Se sustituye la bateria y la fuente de alimentación.'),
('25800', '2004-11-04', 'Se pinta la torre.'),
('25800', '2007-10-22', 'Se instala nueva torre.'),
('25800', '2007-10-24', 'Anfer instala el telecontrol.'),
('25800', '2007-12-13', 'Avería por caída del magneto-térmico de acometida.'),
('25800', '2009-02-27', 'Pintar torre.'),
('25800', '2010-09-27', 'Se pinta la torre. (El carbón de la zona obliga a una mayor atención)'),
('25800', '2012-04-02', ' Se cambia la característ. pasa de CtR a DR. y se comunica oficialmente.'),
('25800', '2012-04-02', 'Se cambia la característica que pasa de Ct. a DV 3 segundos.'),
('25800', '2012-05-11', ' Magneto-térmico de acomet. averiado por filtración de agua, se sustituye.'),
('25800', '2013-11-06', 'Se sustituye cuadro de acometida y se instala pantalla de fluorescentes.'),
('25800', '2015-05-07', 'Se repinta toda la señal, dejando el tercio inferior de blanco.'),
('25800', '2015-11-17', 'Se sustituyen los cierres y el candado.'),
('25800', '2016-02-25', 'Se sustituye la batería por una usada del 2011 (en buenas condiciones)'),
('25800', '2016-04-05', 'Se sustituyen ambas LDR por avería.'),
('25800', '2017-09-05', 'Se pinta toda la señal.'),
('25800', '2017-10-31', 'Se sustituye por rotura, la óptica de la linterna.'),
('25800', '2018-01-11', 'Se sustituye el Moscad para restablecer el Tele-control.'),
('25820', '2004-06-25', 'Se sustituye baliza modelo  Balizamar por BDL 120 ocho coronas.'),
('25820', '2004-11-04', 'Se pinta la torre. '),
('25820', '2007-01-26', 'Apagada y retirada por obras. Se fondea una boya en su lugar.'),
('25820', '2009-05-15', 'Se instala nueva torre TPS 3.3 (LMV)'),
('25820', '2009-09-09', 'Se sincroniza con la boya 25820.1'),
('25820', '2011-03-31', 'Avería, fallo de la linterna y del sincronismo.'),
('25820', '2011-05-16', 'Se instala el Tele-control (ANFER).'),
('25820', '2011-06-13', 'Sincronizar a través del tele-control con la boya 25820.1'),
('25820', '2013-11-07', 'Instalación de un punto de luz.'),
('25820', '2017-09-05', 'Se pinta toda la señal con el tercio inferior blanco.'),
('25820.1', '2007-01-26', 'Se fondea de modo provisional por apagado y retirado de la baliza 25.820'),
('25820.1', '2007-03-15', 'Se desplaza por dragado en la zona.'),
('25820.1', '2009-09-09', 'Se sincroniza con la 25820 LMV.'),
('25820.1', '2010-08-26', 'Se sustituye la boya por una nueva tele-controlada.'),
('25820.1', '2011-06-13', 'Se sincroniza con la baliza 25820 a través del tele- control, ANFER.'),
('25820.1', '2011-07-25', 'Repara fallo de comunicaciones.'),
('25820.1', '2011-11-24', 'Fallo en el destellador.'),
('25820.1', '2013-03-21', 'Sustitución de una fotocélula.'),
('25820.1', '2018-01-15', 'Los topográfos toman nueva posición.'),
('25830', '2004-11-04', 'Se pinta la torre.'),
('25830', '2010-08-26', 'Se retira la boya de obras 25830.1 fondeada durante la ejecución de las obras.'),
('25830', '2010-10-01', 'Se instala nueva torre TPS 4.3 y se monta el telecontrol.'),
('25830', '2011-08-25', 'Se sustituyen las dos LDR.'),
('25830', '2013-11-22', 'Anfer repara radio (Etapa de potencia averiada).'),
('25830', '2015-04-01', 'se sustituye la LDR nº 1'),
('25830', '2016-11-08', 'Se pinta la torre verde con el tercio inferior de blanco.'),
('25830', '2018-05-11', 'Se sustituye una fotocélula por avería.'),
('25831', '2019-01-18', 'Se sustituye el poste acorde a normativa'),
('25840', '2004-06-16', 'Se sustituye linterna Balizamar por BDL 120 de ocho coronas.'),
('25840', '2007-01-31', 'Se apaga y se retira por obras. Se fondea una boya en su lugar.'),
('25840', '2007-03-15', 'Se desplaza la boya provisional por dragado'),
('25840', '2009-04-08', 'Se instala nueva torre TPS 3.3 (LMV).'),
('25840', '2009-10-27', 'Se repinta para adecuarse a la nueva resolución, toda roja y se modifican los destellos a GpD (4) R.'),
('25840', '2010-03-16', 'Se instala el tele-control.'),
('25840', '2011-06-16', 'Se instala sincronismo con la boya 25840.1 (no está fondeada todavía).'),
('25840', '2012-06-08', 'Se sustituyen las LDR.'),
('25840', '2012-12-04', 'Se desmonta la linterna para reparar fallos en coronas de leds.'),
('25840', '2013-11-04', 'Se instala punto de luz.'),
('25840', '2015-06-04', 'Se repinta toda la señal, dejando el tercio inferior de blanco.'),
('25840', '2018-10-01', 'Se repinta toda la torre.'),
('25841', '2013-02-19', 'Se fondea y entra en servicio.'),
('25841', '2014-12-01', 'Se monitoriza, se detectan errores y se informa de ellos.'),
('25841', '2014-12-16', 'Finalizan trabajos de tele-control.'),
('25841', '2015-01-05', 'Se sustituyen las dos baterías.'),
('25841', '2015-10-30', 'Se reponen ánodos de sacrificio, por desgaste.'),
('25841', '2015-12-21', 'Se sustituye la fotocélula nº2 y se secan humedades en la linterna.'),
('25841', '2016-05-16', 'Se vuelve a abrir para secar la humedad de la linterna.'),
('25841', '2017-09-21', 'Se desmonta la linterna para eliminar la humedad.'),
('25841', '2018-01-16', 'Se desplaza a nueva posición.'),
('25841', '2018-03-21', 'Se sustituye por una provisional por mantenimiento.'),
('25841', '2018-04-04', 'Se posiciona de nuevo en su ubicación, sustituida linterna (BDL 120).'),
('25842.5', '2016-04-08', 'La boya se suelta de su fondeo habitual  y hay volver a fondearla.'),
('25842.5', '2017-03-01', 'Se fondea una nueva boya luminosa.'),
('25842.5', '2019-04-15', 'Cambio de linterna'),
('25842.5', '2019-04-15', 'Se sustituye la linterna por una MCL 160 con 5% de divergencia'),
('25843', '2014-01-20', 'Se repinta toda la torre de blanco y rojo.(DRAGADOS)'),
('25843', '2017-03-01', 'Se sustituye la baliza por una boya y se sincroniza con la 25842.'),
('25843', '2017-10-11', 'Se sustituye la boya por una nueva, modelo PBM 18'),
('25843.5', '2017-03-01', 'Se sustituye por una boya luminosa.'),
('25843.8', '2017-03-01', 'Se fondea por primera vez.'),
('25844', '2009-06-05', 'Se fondea boya oceanográfica.'),
('25844', '2009-06-10', 'Se desplaza  para que no moleste a la navegación.'),
('25844', '2009-12-17', 'Se procede a retirar la boya por labores de mantenimiento. '),
('25844', '2010-11-26', 'Se procede a retirar boya por mantenimiento.'),
('25844', '2011-05-09', 'Se sustituye boya por provisional por labores de mantenimiento (fallos en los sensores).'),
('25844', '2011-11-04', 'Baja de la marca por linterna apagada.'),
('25844', '2011-11-11', 'Se sustituye la linterna por una auto-alimentada MCL140, por fallo baterías.'),
('25844', '2013-01-28', 'Sustitución de las dos baterías (Marca Ritar 250 Ah.)'),
('25844', '2013-06-14', 'Se saca del agua por decisión tecnica y se comunica su retirada.'),
('25844', '2013-10-30', 'SUPRIMIDA DEFINITIVAMENTE'),
('25920', '2007-06-17', 'Se instala nueva baliza.'),
('25920', '2008-11-29', 'Sustituyo la batería por una nueva de gel 100 A/h.'),
('25920', '2008-12-03', 'Reparar linterna, numerosos leds fundidos (dos coronas).'),
('25920', '2010-06-24', 'Se instala telecontrol.'),
('25920', '2010-06-30', 'Se sustituyen las foto-células'),
('25920', '2011-12-29', 'Sustituir linterna .'),
('25920', '2012-07-12', 'Sustituir batería.'),
('25920', '2013-11-04', 'Se instala pantalla de fluorescentes.'),
('25920', '2015-06-24', 'Se repinta la baliza y se deja el tercio inferior blanco'),
('25920', '2018-10-23', 'Se repinta la baliza.'),
('25940', '0000-00-00', ' Se repinta la baliza y se deja el tercio inferior blanco.'),
('25940', '2007-10-17', 'Se instala torre nueva.'),
('25940', '2007-10-29', 'Anfer instala telecontrol.'),
('25940', '2008-11-29', 'Sustituyo la batería por una nueva de gel 100 A/h.'),
('25940', '2010-03-01', 'Se instala el tele-control.'),
('25940', '2010-11-19', 'Se repinta la torre.'),
('25940', '2012-07-19', 'Datos de la tensión de baterías erróneos. Anfer repara.'),
('25940', '2013-11-04', 'Se instala pantalla de fluorescentes.'),
('25940', '2014-10-01', 'Se sustituye la batería por una en buen estado (no nueva).'),
('25940', '2016-05-16', 'Una estacha revienta la torre de la baliza. Se encarga una defensa.'),
('25940', '2016-06-09', 'El taller instala una defensa para evitar daños por las estachas.'),
('25940', '2016-09-27', 'Sustitución de la LDR nº 2 por avería.'),
('25940', '2017-12-19', 'Sustitución de las dos LDR.'),
('25940', '2018-10-23', 'Se repinta la baliza.'),
('26020', '2009-10-19', 'Se instala nueva baliza cardinal sur. '),
('26020', '2010-11-12', 'Se sustituyen los discos de leds averiados.'),
('26020', '2010-12-17', 'Se sustituye la linterna por una de bajo consumo (led de alta visibilidad)'),
('26020', '2013-06-11', 'Se modifica la marca de tope y se baja el panel solar.'),
('26020', '2015-06-11', 'Se repinta toda la torre.'),
('26020', '2018-02-12', 'Se rompe el soporte de la marca de tope (aviso al taller mecánico).'),
('26020', '2018-02-16', 'Se instala de nuevo la marca de tope reparada.'),
('26020', '2018-08-29', 'Se apaga la luz y se repara sustituyendo la batería y el regulador.'),
('26020', '2018-10-18', 'Se repinta la torre.'),
('26021', '2006-09-04', 'Se retira la torre cuadrangular por obras de ampliación.'),
('26021', '2006-11-08', 'Se instala baliza de manera provisional.'),
('26021', '2009-06-27', 'Se pinta la torre.'),
('26021', '2009-10-30', 'Se instala nueva torre TPS 3.3.'),
('26021', '2015-06-11', 'Se repinta la torre verde con la base blanca'),
('26025', '2009-01-09', 'Se instala nueva torre TPS 3.3 y se retira la boya que se fondeó por obras.'),
('26025', '2009-03-04', 'Se instala escalera de acero inox. Para mejorar acceso.'),
('26025', '2015-06-11', 'Se repinta la torre roja con la base blanca'),
('26025', '2018-10-18', 'Se repinta la torre.'),
('26035', '2012-10-18', 'Sustituir destellador y reprogramar.'),
('26035', '2016-04-13', 'Se pinta manteniendo el tercio inferior de blanco'),
('26035', '2018-10-18', 'Se repinta la torre.'),
('26041', '2009-06-27', 'Pintado de la torre'),
('26041', '2012-02-02', 'Cambio de óptica por degradación. O.T. 55/242/2012'),
('26041', '2016-04-13', 'Se pinta manteniendo el tercio inferior de blanco'),
('26041', '2018-10-18', 'Se repinta la torre.'),
('26045', '2008-06-25', 'Sustitución de la batería de gel de 100 A/h.'),
('26045', '2010-01-07', 'Sustitución de la batería.'),
('26045', '2013-12-13', 'Sustitución del panel solar por avería.'),
('26045', '2013-12-20', 'Sustitución de las baterías (Usadas).'),
('26045', '2014-01-07', 'Se comienza su repintado y con el tercio inferior de blanco.'),
('26045', '2014-05-21', 'Se sustituye la bateria y se instala una RITAR 140 Ah'),
('26046', '2001-01-07', ' Se comienza su repintado con el tercio inferior de blanco.'),
('26046', '2010-01-25', 'Sustitución de la batería.'),
('26046', '2012-09-13', 'Sustitución de la fotocélula por rotura.'),
('26046', '2014-04-07', 'Se sustituye el panel solar, la batería (RITAR 140 Ah) y el regulador.'),
('26046', '2018-11-28', 'Se sustitulle la fotocélula por avería.'),
('26047', '2014-01-21', 'Dragados repinta y dejan el tercio inferior de Blanco.'),
('26047', '2014-06-17', 'El S. Electrico instala alumbrado interior a 12 v.'),
('26047', '2014-11-05', 'Anfer comienza trabajos de instalación del tele-control.'),
('26047', '2014-12-12', 'Se ponen en paralelo  las dos baterias. '),
('26047', '2014-12-15', 'Se por finalizados los trabajos de telecontrol.'),
('26047', '2015-09-08', 'Se sustituye la fotocélula nº 2'),
('26047', '2017-12-18', 'Se pinta la torre manteniendo el tercio inferior blanco.'),
('26047.1', '2014-06-18', 'El S. Electrico instala alumbrado interior a 12 v.'),
('26047.1', '2015-06-24', 'Se apaga definitivamente por la entrada en servicio del nuevo faro. '),
('26047.2', '2013-09-01', 'sustituimos la linterna BDL 120 por avería de multiples leds.'),
('26047.2', '2014-06-19', 'El S. Electrico instala alumbrado interior a 12 v.'),
('26047.2', '2014-11-04', 'ANFER instala el tele-control.'),
('26047.2', '2014-11-16', 'Se dan por finalizados los trabajos del tele-control.'),
('26047.2', '2014-11-18', 'Comienza a trabajar con el telecontrol.'),
('26047.2', '2017-03-02', 'Se sustituye una foto-célula por avería.'),
('26047.2', '2018-10-16', 'Se limpia y se revisan trampas para roedores.'),
('26047.2', '2018-11-06', 'Se repinta toda la señal.'),
('26048', '2014-04-09', 'Se repara la instalación electrica por fallos de conexión.'),
('26048', '2014-06-23', 'El S. Electrico instala alumbrado interior a 12 v.'),
('26048', '2014-11-10', 'Anfer comienza a instalar el telecontrol.'),
('26048', '2014-11-20', 'Comienza atrabajar con el tele-control.'),
('26048', '2014-12-16', 'Se dan por finalizados los trabajos de telecontrol.'),
('26048', '2016-10-27', 'Se pinta con el tercio inferior blanco.'),
('26048.1', '2013-09-18', 'Se sustituye el Des-33 y la fotocélula por avería por tormenta.'),
('26048.1', '2013-11-12', 'Se sustituye el Des-33 y se pone un Des-22 por tormenta.'),
('26048.1', '2014-06-25', 'El S.E. Instala alumbrado interior a 12 V.'),
('26048.1', '2014-11-11', 'Anfer comienza la instalación del telecontrol.'),
('26048.1', '2014-11-18', 'Comienza a trabajar con el tele control.'),
('26048.1', '2014-12-16', 'e dan por finalizados los trabajos del telecontrol.'),
('26048.1', '2015-06-29', 'La baliza no comunica, posible fallo de la radio, se avisa a Integración de sistemas para que avisen a ANFER.'),
('26048.1', '2015-07-15', 'Se repara la radio GP320 y queda operativa.'),
('26048.1', '2016-10-27', 'Se pinta con el tercio inferior blanco.'),
('26048.1', '2018-01-08', 'Fallo de comunicaciones por tormenta. Se resetea PLC.'),
('26048.2', '2014-11-18', 'Anfer sincroniza la boya con la 26048.3'),
('26048.2', '2016-03-31', 'Se saca del agua para reparar la estructura y mantenimiento general.'),
('26048.2', '2016-06-01', 'Se vuelve a fondear en su ubicación, se le ha instalado un cable en la barandilla, para evitar que se posen pájaros.'),
('26048.2', '2017-09-21', 'Se sustituye una LDR por mal estado del encapsulado.'),
('26048.3', '2014-11-18', 'Anfer sincroniza la boya con la 26048,2'),
('26048.3', '2016-07-19', 'Se saca la boya a tierra por mantenimiento general y pintura. '),
('26048.3', '2016-10-11', 'Anfer sustituye el transceptor y una LDR tras la revisión.'),
('26048.3', '2016-10-19', 'Se sustituyen las dos baterías por unas nuevas.'),
('26048.3', '2016-10-24', 'Se fondea de nuevo en su posición.'),
('26048.3', '2016-12-12', 'Se sustituye una LDR.'),
('26048.3', '2017-06-06', 'La boya se ha apagado. Se repara el regulador y queda en servicio.'),
('26048.3', '2017-06-16', 'Hemos tenido que sustituir el regulador por otro. No permitia la carga de la Bat.'),
('26050', '2014-11-07', 'Se da de baja por falo de suministro (Batería en mal estado).'),
('26050', '2014-11-12', 'Se da de alta.'),
('26060', '2017-09-21', 'Se da de baja, fallo de la linterna, ritmo inadecuado.'),
('26190', '2013-01-09', ' Sustitución LDR en BDL'),
('26190', '2013-10-04', ' Se sustituye boya completa por mantenimiento.'),
('26190', '2015-04-22', ' Averia por vandalismo, luz apagada. Instalación eléctrica arrancada.'),
('26190', '2015-05-08', 'Se sustituye la boya por una nueva de espeque y antivandálica.'),
('26190', '2015-12-05', 'Se sustituye el muerto y se traslada a una nueva posición.'),
('26190', '2019-04-21', 'Varada en playa norte Port Saplaya debido a fuerte temporal'),
('26190', '2019-05-06', 'Se recupera y se traslada a la base para su reparación.'),
('26190', '2019-05-10', 'Se fondea de nuevo en su ubicación (Alta).'),
('26270', '2010-02-11', 'Sustitución de los 4 paneles, la LDR y el destellador.'),
('26270', '2012-09-06', 'Sustitución del grillete y poner varios discos en la cola'),
('26270', '2013-01-09', 'Sustitución LDR en BDL'),
('26270', '2013-11-13', 'Sustitución por Boyarín Provisional, con Linterna Autoalimentada'),
('26270', '2013-12-16', 'Sustitución por Boya, con Linterna Autoalimentada'),
('26270', '2014-02-10', 'Pasa a pertenecer al CCC de Gas Natural-Fenosa.'),
('26285', '2012-01-23', 'Linterna Inferior, falla 1/4 Piña Leds, en alineación Dique.'),
('26285', '2012-08-10', 'Sustitución de la fotocélula y la tarjeta destelladora  del litepipe derecho.'),
('26285', '2013-04-09', 'Sustitución 2 LDRs, Telecontrol Linternas.'),
('26285', '2013-10-15', 'Sustituir baterías de los litepipes, 180 Ah (2 de 12 V) por 200 Ah (6 V + 6V).'),
('26285', '2014-03-06', 'Dejar Fuera de Servicio, Linterna Inferior.'),
('26285', '2014-03-21', 'Retirar Linterna Inferior.'),
('26285', '2014-10-15', 'AIS, el identificador pasa a comenzar por 99, antes 00.'),
('26285', '2014-11-25', 'Lite-Pipes sincronizados con la Linterna. Toda la Baliza se alimenta con 330 Ah (6 V + 6 V).'),
('26285', '2015-09-09', 'Cambiar LDR01.'),
('26285', '2016-12-27', 'Se repinta toda la torre.'),
('26285', '2019-01-11', 'eSTOY CON GORRIZ'),
('26290', '2005-04-12', 'Sustitución destellador'),
('26290', '2005-11-03', 'Sustitución batería'),
('26290', '2007-08-30', 'Sustitución óptica'),
('26290', '2009-11-27', 'Sustitución batería'),
('26290', '2011-10-21', 'Sustitución fotocélula'),
('26290', '2012-08-08', 'Sustitución óptica'),
('26290', '2013-04-10', 'Mejora electrificación'),
('26290', '2014-10-23', 'Sustitución de LDR 01'),
('26290', '2015-09-04', 'Modificación según Resolución'),
('26290', '2015-09-18', 'Pintada'),
('26290', '2016-04-26', 'Sustitución batería'),
('26311', '2009-11-17', 'Sustitución óptica'),
('26311', '2011-08-23', 'Sustitución cargador'),
('26311', '2013-04-11', 'Mejora electrificación'),
('26311', '2015-09-04', 'Modificación según resolución'),
('26311', '2015-09-14', 'Pintada'),
('26311', '2015-10-22', 'Sustituir LDR 01.'),
('26311', '2016-05-04', 'Sustituir batería, por otra usada, pero en mejor estado.'),
('26312', '2006-09-25', 'Sustitución destellador'),
('26312', '2009-11-17', 'Sustitución óptica'),
('26312', '2013-01-29', 'Sustitución óptica'),
('26312', '2013-04-11', 'Mejora electrificación'),
('26312', '2014-01-28', 'Pintura nueva, con franja inferior 1/3 Blanca.'),
('26312', '2016-05-04', 'Sustituir batería de 90 Ah, por otra usada, de 100 Ah. pero en mejor estado.'),
('26312', '2017-05-24', 'Sustituir LDR nº1 averiada.'),
('26313', '2010-01-11', 'Sustitución baterías'),
('26313', '2010-11-03', 'Sustitución óptica'),
('26313', '2012-12-11', 'Sustitución baterías'),
('26313', '2012-12-17', 'Sustitución LDR baliza BDL'),
('26313', '2013-01-09', 'Sustitución LDR Telecontrol'),
('26313', '2014-01-30', 'Cambio de Regulador de Carga, STECA SOLARIX PRS 2020.'),
('26313', '2014-02-05', 'Cambio de Linterna (BDL-120, al 25%, y DES-33)'),
('26313', '2014-09-24', 'Falla LDR 01, pendiente de sustitución (por malas condiciones).'),
('26313', '2014-11-26', 'Sustituir LDR 01.'),
('26313', '2015-06-18', 'Sustituir Boya por Móbilis Amarilla.'),
('26313', '2015-06-23', 'Sustituir 8 PFV de 10 W, por 2 PFV de 95 W.'),
('26313', '2015-08-06', 'Sustituir Móbilis Amarilla por Boya.'),
('26313', '2016-08-09', 'Se sustituye el tren de fondeo, 28 m. cadena galvanizada de 30 mm.'),
('26313', '2017-12-14', 'Se observa que los paneles FV están muy sucios por gaviotas.'),
('26313', '2018-03-08', 'Se sustituye la boya  por Mobilis amarilla para mantenimiento.'),
('26313', '2018-04-12', 'Se repone: antena GPS, fotocélula y óptica. Se pinta y se fondea de nuevo.'),
('26313', '2018-10-04', 'Se desconecta el tele-control para ahorar batería. '),
('26314', '2006-02-07', 'Sustitución batería'),
('26314', '2009-11-17', ' Sustitución óptica'),
('26314', '2012-10-01', 'Linterna provisional por caida de poste.'),
('26314', '2012-12-00', 'Sustitución de la Parte Superior de la Baliza, por caída poste (LMV) '),
('26314', '2013-01-11', 'Mejora Electrificación, Acometida NO INDEPENDIENTE'),
('26314', '2013-05-09', 'F.A. sin Control de Temperatura y un solo módulo (de 200 W)'),
('26314', '2014-01-14', 'Sustitución batería'),
('26314', '2014-01-21', 'Magneto 10 A saltado, anular ventilador F.A.'),
('26314', '2014-01-31', 'Reponer ventilador F.A.'),
('26314', '2014-03-12', 'Nivelar parte inferior Baliza.'),
('26314', '2015-10-22', 'Sustituir LDR 01'),
('26314', '2016-12-27', 'Se repinta la torre con el tercio inferior blanco.'),
('26314', '2018-08-03', 'Se sustituye la LDR nº2 por deterioro de la misma.'),
('26320', '2005-11-05', 'Sustitución panel  roto'),
('26320', '2009-09-10', 'Sustitución panel  roto'),
('26320', '2009-10-15', 'Sustucion baterías'),
('26320', '2013-05-10', 'Entrada de agua en la caja Himel exterior, detector de intrusión corroído y  tapa de baterias en mal estado.'),
('26320', '2013-12-16', 'Resetear por fallo de GPS y anular detector de intrusión.'),
('26320', '2014-01-30', 'Se sustituye por la Móbilis. En la Revisión en tierra se sustituyen, BATs, óptica y Regulador FV.'),
('26320', '2014-03-13', 'Vuelve otra vez, al agua.'),
('26320', '2014-09-24', 'Falla LDR 02, pendiente de sustitución (por malas condiciones).'),
('26320', '2014-11-26', 'Sustituir LDR 02.'),
('26320', '2015-09-04', 'Modificación según Resolución'),
('26320', '2017-09-14', 'Óptica en mal estado pendiente de cambio.'),
('26320', '2019-02-12', 'Se observa la marca de tope doblada y la barandilla con sintomas de haber recibido un impacto.'),
('26325', '2010-01-08', 'Sustitución batería'),
('26325', '2010-02-16', 'Sustitución batería'),
('26325', '2012-04-02', 'Sustitución cierres Baliza'),
('26325', '2015-02-04', 'Sustitución LDR nº 2.'),
('26325', '2015-09-16', 'Pintada'),
('26325', '2016-05-04', 'Sustituir batería, por otra usada, pero en mejor estado.'),
('26325', '2017-04-11', 'Sustituir LDR nº 1.'),
('26325', '2017-07-13', 'Se  repara la acometida electrica por un fallo de conexión.'),
('26326', '2014-02-14', 'Se sustituye el poste, por la Baliza.'),
('26326', '2014-12-16', 'Se dan por finalizados los trabajos del tele-control. (ANFER)'),
('26360', '2012-04-17', 'Sustitución óptica '),
('26360', '2013-01-09', 'Sustitución  baterías'),
('26360', '2013-02-05', 'Anular Telecontrol, alimentación exterior linterna (Baja 04/02 y Alta 05/02)'),
('26360', '2013-03-06', 'Sustitución por la Móbilis, para su revisión en Tierra'),
('26360', '2013-03-21', 'Sustitución regulador BP 20 Amp por STECA 20 Amp'),
('26360', '2013-03-22', 'Según test solicitado, no funciona como autónoma'),
('26360', '2013-05-10', 'Puesta, otra vez, en el agua'),
('26360', '2014-06-19', 'Colisionada por un pesquero.'),
('26360', '2014-06-20', 'Sustituida por la Móbilis. Se repara estructuralmente, se pinta y se sustituye un PFV Atersa A-38 (38 W).'),
('26360', '2014-07-15', 'Vuelve otra vez, al agua.'),
('26360', '2015-09-04', 'Modificación según Resolución'),
('26360', '2016-08-09', 'Se sustituye el tren de fondeo.'),
('26360', '2016-12-01', 'Por la noche ha permanecido apagada, se revisa y se deja en servicio.'),
('26360', '2016-12-05', 'Se ha vuelto a apagar por batería baja, se da de baja.'),
('26360', '2016-12-07', 'Se recupera la batería y se da de alta.'),
('26360', '2016-12-20', 'Se apaga de madrugada y se recupera a las 18h. (baja y alta mismo día) '),
('26360', '2017-09-14', 'Panel foto voltaico averiado pendiente de sustitución.'),
('26360', '2018-08-18', 'Se da de baja por que está apagada.'),
('26360', '2018-08-20', 'Se sustituye el regulador y una batería. Se da de alta.'),
('26360', '2018-09-08', 'Se da de baja porque se vuelve a apagar. Preparamos sustituta.'),
('26360', '2018-09-13', 'Se sustituye la boya por la Mobilis para su reparación y revisión. Alta'),
('26360', '2019-02-12', 'En el Martillo dique Levante. Burriel la pinta.'),
('26360', '2019-02-12', 'Se conecta el telecontrol, bajo observación.'),
('26380', '2006-02-14', 'Sustitución batería'),
('26380', '2008-01-11', 'Sustitución óptica'),
('26380', '2008-11-20', 'Sustitución LDR en BDL'),
('26380', '2012-04-02', 'Sustitución cierres baliza'),
('26380', '2015-09-04', 'Modificación según resolución.'),
('26380', '2015-09-16', 'Pintada'),
('26390', '2007-08-30', 'Sustitución óptica'),
('26390', '2009-11-03', 'Sustitución óptica y LDR'),
('26390', '2011-01-19', 'Sustitución linterna (completa).'),
('26390', '2015-09-04', 'Modificación según Resolución'),
('26390', '2016-12-02', 'Se pinta con el tercio inferior de blanco.'),
('26392', '2008-11-18', 'Sustitución  LDR y óptica'),
('26392', '2011-11-23', 'ustitución  LDR y óptica'),
('26392', '2012-04-06', 'Sustitución F.A.'),
('26392', '2012-05-21', 'Sustitución F.A.'),
('26392', '2013-02-01', 'Sustitución F.A.'),
('26392', '2013-02-07', 'Poner Trafo de Separación Galvánica, dentro caja Himel.'),
('26392', '2013-03-27', 'Sustitución F.A. y desconectar Tierra de la misma'),
('26392', '2014-09-30', 'Fallos de Comunicación, durante varios días seguidos.'),
('26392', '2014-10-10', 'Cambiar Motorola GP340.'),
('26392', '2014-11-20', 'Quitar F.A. averiada y poner Victron provisional.'),
('26392', '2015-02-04', 'Reponer F.A. reparada.'),
('26392', '2015-09-04', 'Modificación según Resolución.'),
('26392', '2016-05-26', 'Modificación de la acometida eléctrica.'),
('26392', '2016-12-02', 'Se pinta con el tercio inferior de blanco.'),
('26450', '2009-02-17', 'Sustitución baterías'),
('26450', '2014-01-27', 'Pintura Nueva.'),
('26450', '2015-09-16', 'Puesto PFV Mesemar de 95 W.'),
('26450', '2017-09-18', 'Sustituir LDR nº 1'),
('26504', '2015-04-20', 'Reformada y pintada. '),
('26504', '2015-06-09', 'Se ajusta el ritmo de destellos (estaba desconfigurado).'),
('26508', '2015-04-20', 'Reformada y pintada. '),
('26510', '2015-04-20', 'Reformada y pintada. '),
('26512', '2020-04-20', '5 Reformada y pintada. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `nif` varchar(8) NOT NULL,
  `observaciones` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de observaciones del balizamiento';

--
-- Volcado de datos para la tabla `observaciones`
--

INSERT INTO `observaciones` (`nif`, `observaciones`) VALUES
('25545', ' SE REPINTARÁ EN 2019'),
('25545', 'Dos LDR para Baliza y para Litepipe'),
('25545', 'Retirar cuadro de telefonica'),
('25552', ' SE REPINTARÁ EN 2019'),
('25552', 'Dos LDR'),
('25554', 'Pendiente de sacar con Wartsila, para revisar'),
('25560', 'Tiene cuatro coronas'),
('25563', ' SE REPINTARÁ EN 2019'),
('25564', ' SE REPINTARÁ EN 2019'),
('25565', ' SE REPINTARÁ EN 2019'),
('25565', 'Limar Marco'),
('25565', 'Tiene 4 coronas LEDs. Añadir coronas.'),
('25570', 'Fijar STECA con tornilla rosca chapa'),
('25570', 'Necesita ser repitanda'),
('25570', 'Tiene 3 coronas + 1 sin óptica'),
('25720', 'sincronizada con 25721'),
('25721', 'Sincronizada con 25720'),
('25740', 'la boya sustituta de la roja de bocana 25740 ya está preparada con su fondeo nuevo + linterna MCL200 en campa Sur auxiliar.'),
('25761', 'Sincronizada con 25765'),
('25765', 'Sincronizada con 25761'),
('25776', 'Sincronizada con 25777'),
('25777', 'Sincronizada con 25776'),
('25820', 'sincronizada con 25820.1'),
('25820.1', 'sincronizada con la baliza 25820'),
('25830', ' SE REPINTARÁ EN 2019'),
('25831', '30/10/2014 Entra en servicio '),
('25831', 'Sincronizada con la nº 20 -  Nif 25830'),
('26045', ' SE REPINTARÁ EN 2019'),
('26046', ' SE REPINTARÁ EN 2019'),
('26047', 'Entra en servicio el 26/06/2013'),
('26047.1', 'Apagada definitivamente'),
('26047.1', 'Dispone de un sector de oscuridad 205º-295º (90º)'),
('26047.1', 'Entra en servicio el 31/05/2013'),
('26047.2', 'Dispone de un sector de oscuridad de 115º - 295º (180º)'),
('26047.2', 'Entra en servicio el 29/05/2013'),
('26048', ' SE REPINTARÁ EN 2019'),
('26048', 'Entra en servicio el 26/06/2013'),
('26048.1', ' SE REPINTARÁ EN 2019'),
('26048.1', 'Entra en servicio el 06/06/2013'),
('26048.2', 'Entra en servicio el jueves 30/05/2013'),
('26048.2', 'Sincronizada con 26048.3'),
('26048.3', 'Entra en sevicio el 31/05/2013'),
('26048.3', 'Sincronizada con  26048.2'),
('26049', 'sincronizada con 26050'),
('26050', 'sincronizada con 26049'),
('26052.5', 'Baliza el limite del talud.'),
('26052.7', 'Baliza el limite del talud.'),
('26058.15', 'El 102 Local hace referencia a 26058.15A y 26058.15B a Estribor entrando '),
('26058.15', 'Se da de alta la señal el 05/04/2016'),
('26058.15', 'Todos los semáforos del puente están sincronizados.'),
('26058.16', 'El 103 Local hace referencia a 26058.16A y 26058.16B a Babor entrando '),
('26058.16', 'Se da de alta la señal el 19/04/2016'),
('26058.16', 'Todos los semáforos del puente están sincronizados.'),
('26058.17', 'El 104 Local hace referencia a 26058.17A - 26058.17B - 26058.17C - 26058.17D'),
('26058.17', 'Se da de alta la señal el 19/04/2016'),
('26058.17', 'sobre el tablero en la parte central '),
('26058.17', 'Todos los semáforos del puente están sincronizados.'),
('26190', 'No tiene reflector de radar pasivo porque la estructura es métalica y 6,3 millas de distancia de reconocimiento en radar.'),
('26202', 'Sector Obscuridad 30º-170º'),
('26205', 'Sector Oscuridad 215º - 305º'),
('26285', ' SE REPINTARÁ EN 2019'),
('26285', 'LDRs a 180º'),
('26290', 'LDRs a 180º'),
('26311', ' SE REPINTARÁ EN 2019'),
('26311', 'LDRs a 180º'),
('26312', 'LDRs a 180º'),
('26313', 'LDRs a 180º'),
('26314', 'LDRs a 180º'),
('26320', 'Habría que cambiar su denominación en el SCADA'),
('26320', 'LDRS a 180º'),
('26320', 'Se ve con la camara &quot;Regasificadora 5&quot;'),
('26325', 'LDRs a 0º'),
('26326', ' SE REPINTARÁ EN 2019'),
('26326', '26/07/13: Entra en servicio.'),
('26326', 'LDRs a 0º'),
('26360', 'LDRs a 180º'),
('26360', 'Trabajando con el telecontrol desconectado, sin problemas.'),
('26380', 'LDRs a 180º'),
('26390', 'LDRs a 0º'),
('26392', 'LDRs a 0º'),
('26450', 'LDRs a 180º'),
('26470', 'Suprimida temporalmente. Agosto 2018'),
('26471', 'Suprimida temporalmente. Agosto 2018'),
('26472', 'Suprimida temporalmente. Agosto 2018'),
('26473', 'Suprimida temporalmente. Agosto 2018'),
('26508', 'Sector Obscuridad 180º-360º');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `contrasena` varchar(15) NOT NULL,
  `privilegio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de usuarios';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`, `privilegio`) VALUES
('adrian', 'adrian', 'admin'),
('marcos', 'bruixo', NULL),
('pepe', 'pepe', NULL),
('prueba', 'prueba', NULL),
('prueba2', 'prueba2', NULL),
('raul', 'raulito', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balizamiento`
--
ALTER TABLE `balizamiento`
  ADD PRIMARY KEY (`nif`);

--
-- Indices de la tabla `eliminados`
--
ALTER TABLE `eliminados`
  ADD PRIMARY KEY (`fecha`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lampara`
--
ALTER TABLE `lampara`
  ADD PRIMARY KEY (`nif`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`nif`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`fecha`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`nif`,`fecha`,`mantenimiento`);

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`nif`,`observaciones`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lampara`
--
ALTER TABLE `lampara`
  ADD CONSTRAINT `lampara_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD CONSTRAINT `localizacion_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `mantenimiento_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `observaciones_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
