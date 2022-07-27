-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Servidor: adriandecradmin.mysql.db
-- Tiempo de generación: 24-02-2021 a las 08:30:02
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de balizas';

--
-- Volcado de datos para la tabla `balizamiento`
--

INSERT INTO `balizamiento` (`nif`, `num_internacional`, `tipo`, `telecontrol`, `apariencia`, `periodo`, `caracteristica`) VALUES
('25460', 'E-0190', 'Baliza Torre troncopiramidal verde blanca', '', 'GpD(2)V', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25470', 'E-0190.2', 'Baliza Torre troncopiramidal roja blanca', '', 'GpD(2)R', '7.00', 'L0,5 oc1,5 L0,5 oc4,'),
('25530', 'E-0194', 'Baliza Torre de hormigÃ³n triangular verde', 'Sí  RTU Nº 41', 'DV  5s', '5.00', 'L1 oc4'),
('25545', 'E-0193', 'Baliza Torre de hormigon triangular', 'RTU Nº 42', 'DR 5s.', '5.00', 'L1 oc4'),
('25552', 'E-0196', 'Baliza Torre cilíndrica y base troncopiramidal', '', 'Gp D (2) R   7s.', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25554', '', 'Boya de espeque roja/verde MSM', 'NO', '', '14.50', 'L0,5 oc1 L0,5 oc3 L0,5 oc9'),
('25555', 'E-0196.2', 'Baliza Columna cuadrangular verde', '', 'Gp D(2) V  7s.', '7.00', 'L0,5 oc1,5 L0,5 oc4,5'),
('25560', 'E-0196.25', 'Baliza Columna cuadrangular', 'NO', 'Gp D(4)R  11s.', '11.00', '(L0,5 oc1,5)3 L0,5 oc4,5'),
('25563', 'E-0196.32', 'Baliza Linterna sobre pilote. ', 'NO', 'Gp D (4 )  V  11s.', '11.00', '(L0,5 oc1,5)3 L0,5 oc4,5'),
('25564', '', 'Baliza Linterna sobre pilote. ', 'SI', 'D Amarillos 3s.', '3.00', ' L0,5 oc 2,5'),
('25565', 'E-0196.3', 'Baliza Torre troncopiramidal verde', '', 'D Verdes. 3s', '3.00', ' L0,5 oc 2,5'),
('25570', 'E-0196.35', 'Baliza Torre tronco piramidal roja', '', 'Gp D(3) R  9s.', '9.00', '(L0,5 oc1,5)2 L0,5 oc4,5'),
('25590', 'E-0197', 'Baliza Torre cilÃ­ndrica verde sobre base verde', '', 'GpD(4)V', '1.00', '[(L0,5 oc1,5)x3] L0,5 oc4,5'),
('25600', 'E-0197.2', 'Baliza Torre cilíndrica rojae sobre base roja', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('25620', 'E-0197.5', 'Baliza Panel circular blanco, bandas rojas en el tablero del puente', '', 'Iso B', '2.00', 'L2 oc'),
('25640', '', 'Baliza Columna de hierro', '', 'sin apariencia ', '0.00', 'sin periodo'),
('25650', 'E-0198', 'Faro', 'Si SCADA', 'GpD(3)', '20.00', 'L 0.255 Oc 3.745 L 0.255 Oc 3.745 L 0.255 Oc 11.74'),
('25660', 'E-0199', 'Baliza Torreta cuadrangular verde.', '', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,'),
('25665', 'E-0199.2', 'Baliza Espeque rojo con la base blanca.', '', 'GpD(3)R', '1.00', '[(L0,5 oc1,5)x2]+L0,5 oc6,'),
('25667', 'E-0199.6', 'Baliza Poste cuadrangular rojo.', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc5,'),
('25700', 'FValencia', 'Faro', '0', 'D', '10.00', 'L 0,8 OC 9,8'),
('25720', 'E-0200.4', 'Baliza CilÃ­ndrica verde base blanca', 'RTU 06', 'DV', '5.00', 'L1 oc4'),
('25721', 'E-0200.5', 'Baliza TPS 3.3', '', 'D V', '5.00', 'L1 oc4'),
('25730', '', 'Boya Castillete negra amarilla negra y marca de tope', 'No lo necesita', 'GRp(3)B', '5.00', '[(L 0.25 oc 0.25)x2] + L 0.25 oc 3.75'),
('25740', '', 'Boya Castillete roja y marca de tope', 'No lo necesita', 'D R', '4.00', 'L0.5 oc3.5'),
('25761', '', 'Boya Castillete amarilla y marca de tope', 'RTU 04', 'GpD (4) A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25765', '', 'Boya Castillete amarilla y marca de tope', 'RTU 02', 'GpD (4) A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25768', '', 'Boya Castillete verde-roja-verde y marca de tope', 'No', 'GpD(2+1) V', '14.50', 'L0.5 oc1 L0.5 oc3 L0.5 oc9'),
('25774', 'E-0201.11', 'Baliza Cilíndrica roja, base blanca', 'RTU 10', 'GpD (2)R', '7.00', 'L0.5 oc 1.5 L0.5 oc 4.5'),
('25776', 'E-0201.25', 'Baliza TPS 3.3', '', 'GpD(3)R', '9.00', '[(L0.5 oc1.5)x2]+L0.5 oc 4.'),
('25777', 'E-0201.16', 'Baliza TPS 3.3', '', 'GpD(3)R', '9.00', '[(L 0.5 oc 1.5)x2] L0.5 oc 4.'),
('25800', 'E-0201.2', 'Baliza TPS 3.3', '', 'DR', '3.00', 'L 0.5 oc 2.5'),
('25820', 'E-0201.4', 'Baliza TPS 3.3', '', 'GpD(2)V   ', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('25820.1', '', 'Boya Castillete verde-roja-verde y marca de tope', 'Sí', 'GpD (2)V', '7.00', 'L 0.5 oc 1.5 L 0.5 oc 4.5'),
('25830', 'E-0201.5', 'Baliza TPS 4.8', '', 'GpD(2)V', '9.00', '[(L 0.5 oc 1.5)x2]+ L 0.5 oc 4.5'),
('25831', '', 'Baliza Columna cilíndrica verde con la base blanca.', '', 'GpD (3)V', '9.00', 'L 0,5 + oc 1,5 + L 0,5 + oc 1,5 + L 0,5 + oc 4,5'),
('25840', 'E-0202', 'Baliza TPS 3.3', 'RTU 44', 'GpD (4)R', '11.00', '[(0.5 oc 1.5)x3] L 0.5 oc 4.5'),
('25841', '', 'Boya Castillete rojo y marca de tope', 'RTU 54', 'GpD (4)R', '11.00', '[( L 0.5 oc 1.5)x3] L 0.5 oc 4.5'),
('25842', 'E-0201.7', 'Baliza TPS 3.3', '', 'GpDV', '3.00', 'L 0.5 oc 2.5'),
('25842.5', '', 'Boya Cilíndrica verde.', 'Si.', 'Ct', '1.00', 'L 0,5 + oc 0,5'),
('25843', 'E-0201.75', 'Boya Castillete', 'Si', 'DR', '3.00', 'L 0.5 oc 2.5'),
('25843.5', '', 'Boya Cilíndrica roja', 'Si', 'Ct', '1.00', 'L 0,5 + oc 0,5'),
('25843.8', '', 'Boya Cilíndrica roja', 'Si', 'Ct. 1s.', '1.00', 'L 0,5 + oc 0,5'),
('25844', '', 'Boya oceanográfica Castillete amarilla y marca de tope', 'RTU 37', 'GpD (4)A', '11.00', '[(L 0.5 oc 1.5) x3] L 0.5 oc 4.5'),
('25850', '0', '0', '0', '0', '0.00', '0'),
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
('26460', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA', '6.00', 'L0,7 oc1,8 = 2,5 s'),
('26460.1', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26460.2', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26460.3', '', 'Boya De castillete amarilla y marca de tope  X amarilla', '', 'DA ', '6.00', 'L0,7 oc1,8 = 2,5 s (Sincronizada con el resto de '),
('26470', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26471, 26472 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26471', '', 'Boya De castillete amarilla marca de tope  X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26472 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26472', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26471 y 26473)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26473', '', 'Boya De castillete amarilla y marca de tope X amarilla', '', 'GpD(4)A  (Sincronizada con 26470, 26471 y 26472)', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26500', 'FCanet', 'Faro', 'Si', 'GpD(2)', '10.00', 'L0,5  oc 2  L0,5  oc 7'),
('26504', 'E-0217', 'Baliza Columna verde con la base blanca.', '', 'GpD(3)V', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,5'),
('26508', 'E-0217.2', 'Baliza Columna verde con la base blanca.', '', 'GpD(4)V', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('26510', 'E-0217.4', 'Baliza Columna roja con la base blanca.', '', 'GpD(3)R', '9.00', '[(L0,5 oc1,5)x2]+L0,5 oc4,5'),
('26512', 'E-0217.5', 'Baliza Columna roja con la base blanca.', '', 'GpD(4)R', '1.00', '[(L0,5 oc1,5)x3]+L0,5 oc4,5'),
('prueba', '0', '0', '0', '0', '0.00', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balizamiento`
--
ALTER TABLE `balizamiento`
  ADD PRIMARY KEY (`nif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
