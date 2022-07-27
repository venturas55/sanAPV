-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Servidor: adriandecradmin.mysql.db
-- Tiempo de generación: 24-02-2021 a las 08:38:38
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
-- Estructura de tabla para la tabla `observaciones`
--

CREATE TABLE `observaciones` (
  `nif` varchar(8) NOT NULL,
  `observaciones` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de observaciones del balizamiento';

--
-- Volcado de datos para la tabla `observaciones`
--

INSERT INTO `observaciones` (`nif`, `observaciones`) VALUES
('25460', 'Esteuctura de poliester.'),
('25460', 'yyy'),
('25470', 'Corona formada a base de (led con optica)'),
('25470', 'Recomendable pintar se cara a la proxima inspeccion'),
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
('26460', 'Sincronizada con el resto de boyas'),
('26470', 'Suprimida temporalmente. Agosto 2018'),
('26471', 'Suprimida temporalmente. Agosto 2018'),
('26472', 'Suprimida temporalmente. Agosto 2018'),
('26473', 'Suprimida temporalmente. Agosto 2018'),
('26508', 'Sector Obscuridad 180º-360º');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD PRIMARY KEY (`nif`,`observaciones`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `observaciones`
--
ALTER TABLE `observaciones`
  ADD CONSTRAINT `observaciones_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);
COMMIT;



ALTER TABLE `observaciones` DROP FOREIGN KEY `observaciones_FK`; 
ALTER TABLE `observaciones` ADD CONSTRAINT `observaciones_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento`(`nif`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
