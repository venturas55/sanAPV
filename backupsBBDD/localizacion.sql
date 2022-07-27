-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Servidor: adriandecradmin.mysql.db
-- Tiempo de generación: 24-02-2021 a las 08:39:30
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
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `nif` varchar(8) NOT NULL,
  `puerto` varchar(50) DEFAULT NULL,
  `num_local` decimal(5,0) DEFAULT NULL,
  `localizacion` varchar(70) DEFAULT NULL,
  `latitud` varchar(15) DEFAULT NULL,
  `longitud` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de localizacion del balizamiento';

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`nif`, `puerto`, `num_local`, `localizacion`, `latitud`, `longitud`) VALUES
('25460', 'C.N. Oliva', '1', 'Extremo dique de abrigo', '38 º59.004\' N', '00º 05.490\' W'),
('25470', 'C.N. Oliva', '2', 'Extremo contradique', '38º55,989\' N', '00º 05,559\' W'),
('25530', 'Puerto de GandÃ­a', '1', 'Extremo dique norte', '38ï¿½ 59.712\' N', '00ï¿½ 8.666\' W'),
('25545', 'Puerto de Gandia', '2', 'Extremo del contradique', '38Âº 59.661\' N', '00Âº 8.813\' W'),
('25552', 'Puerto de Gandia', '3', 'Extremo Dique Sur', '38ï¿½ 59.736\' N', '00ï¿½ 9.108\' W'),
('25554', 'Puerto de Gandía', '4', 'Boya bifurcación', '38º 59.789\' N', '00º 9.173\' W'),
('25555', 'Puerto de Gandía', '5', 'Dársena deportiva a estribor.', '38º 59.815\' N', '00º 9.154\' W'),
('25560', 'Puerto de Gandía', '6', 'Dársena deportiva Extremo contradique.', '38º 59.813\' N', '00º 9.181\' W'),
('25563', 'Puerto de Gandía', '7', 'Pantalan A - extremo - muelle Borgia', '38º 59.720\' N', '00º 9.359\' W'),
('25564', 'Puerto de Gandía', '8', 'Pantalan B - extremo - muelle Borgia', '38º 59.662\' N', '00º 9.527\' W'),
('25565', 'Puerto de Gandía', '9', 'Muelle final encauzamiento', '38º 59.639\' N', '00º 9.560\' W'),
('25570', 'Puerto de Gandía', '10', 'Muelle frutero angulo NE', '38º 59.708\' N', '00º 9.259\' W'),
('25590', 'Desembocadura JÃºcar Cullera', '1', 'MalecÃ³n Norte a 20 m del extremo', '39Âº 09.079\' N', '00Âº 14.048\' W'),
('25600', 'Desembocadura Júcar Cullera', '2', 'Malecón Sur a 39 m del extremo', '39º09,034\' N', '00º 14,164\' W'),
('25620', 'Desembocadura Júcar Cullera', '3', 'Puente de la Bega, en el mejor lugar de paso', '39º 09.450\' N', '00º 15.138\' W'),
('25640', 'Al norte de la desembocadura del Júcar', '4', 'Escollo El Moro', '39º 09.605\' N', '00º 13.849\' W'),
('25650', 'Gandia', '0', 'Extremo del cabo de Cullera', '39Âº 11.188\' N', '00Âº 13.016\' W'),
('25660', 'Gola del Perelló', '1', 'Extremo Dique Norte', '39º16,723\' N', '00º 16,359\' W'),
('25665', 'Gola del Perelló', '2', 'Extremo Dique sur', '39º16,695\' N', '00º 16,374\' W'),
('25667', 'Gola del Perelló', '3', 'Extremo espigón interior.', '39º16,719\' N', '00º 16,406\' W'),
('25700', 'Puerto de Valencia', '1', 'Angulo del dique de la ampliacion norte', '39Âº 27,297Â´ N', '000Âº 17,161Â´ '),
('25720', 'Puerto de Valencia.', '1', 'Extremo dique del Este', '39Âº 26.028\'N', '000Âº 18.171\' W'),
('25721', 'Puerto de Valencia.', '3', 'Martillo dique del Este', '39° 26.139\' N', '00° 18.349\' W'),
('25730', 'Puerto de Valencia.', '25', 'Exterior, en alineación contradique RCNV.', '39º 25.219´N', '00º 18.218´ W'),
('25740', 'Puerto de Valencia.', '2', 'Canal de entrada Br.', '39º 25.582´N', '000º 18.187´ W'),
('25761', 'Puerto de Valencia.', '5', 'Canal, ángulo Este del contradique.', '39º 25.898´N', '000º 18.465´ W'),
('25765', 'Puerto de Valencia.', '6', 'Canal, ángulo Norte del contradique.', '39º 26.143´N', '00º 18.822´ W'),
('25768', 'Puerto de Valencia.', '10', 'Canal de entrada Er. frente Xitá.', '39º 26.401\' N', '00º 18.684\' W'),
('25774', 'Puerto de Valencia.', '4', 'Contra dique, ángulo Este', '39º 25.840´N', '00º18.561´ W'),
('25776', 'Puerto de Valencia.', '7', 'Extremo del contradique.', '39° 26.106\' N', '00° 18.811\' W'),
('25777', 'Puerto de Valencia.', '8', 'Extremo del contradique ángulo interior.', '39º 26.083´N', '00º 18.847´ W'),
('25800', 'Puerto de Valencia.', '9', 'Roja xita.', '39º 26.527´N', '00º 18.635´ W'),
('25820', 'Puerto de Valencia.', '11', 'Verde Xitá.', '39º 26.516´N', '00º 18.760´ W'),
('25820.1', 'Puerto de Valencia.', '12', 'Canal de entrada Er. Xitá.', '39º 26.512´N', '00º 18.779´ W'),
('25830', 'Puerto de Valencia.', '20', 'Muelle Transversal Costa.', '39º 26.245´N', '00º 19.181´ W'),
('25831', 'Puerto de Valencia', '21', 'Muelle Transversal Costa en Duque de Alba', '39º 26,252´N', '000º 19,145´ W'),
('25840', 'Puerto de Valencia.', '14', 'Muelle Sur.', '39º 26.589´N', '00º 18.984´ W'),
('25841', 'Puerto de Valencia.', '15', 'Extremo del muelle sur.', '39º 26.590´N', '00º 18.938´ W'),
('25842', 'Puerto de Valencia.', '16', 'Er. Dársena de servicios Náuticos.', '39º 26.475´N', '00º 19.062´ W'),
('25842.5', 'Puerto de Valencia.', '18', 'Boya a Er. Bocana Dársena de Servicios Náuticos.', '39º 26.454´N', '00º 19.056´ W'),
('25843', 'Puerto de Valencia.', '17', '1ª boya a Br. Dársena de Servicios Náuticos.', '39º 26.402´N', '00º 19.076´ W'),
('25843.5', 'Puerto de Valencia.', '19', '2ª boya a Br. Dársena de Servicios Náuticos.', '39º 26.439´N', '00º 19.094´ W'),
('25843.8', 'Puerto de Valencia.', '19', '3ª boya Br. Dársena de Servicios Náuticos', '39º 26,484Ž N', '00º 19,093Ž W'),
('25850', 'Puerto de Valencia', '0', '0', '0', '0'),
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
('26190', 'Port saplaya', '3', 'Señaliza pontona hundida', '39º 32.740\' N', '00º 16.940\' W'),
('26200', 'Pobla Farnals', '1', 'Extremo dique de Levante', '39º 33,496\' N', '00º 17,008\' W'),
('26202', 'Pobla Farnals', '2', 'Dique de Levante, angulo interior.', '39º 33,589\' N', '00º 17,026\' W'),
('26205', 'Pobla Farnals', '3', 'Ángulo exterior', '39º 33,767\' N', '00º 16,861\' W'),
('26220', 'Pobla Farnals', '4', 'Extremo espigón de playa.', '39º 33,520\' N', '00º 17,070\' W'),
('26230', 'Pobla Farnals', '5', 'Extremo muelle contradique.', '39º 33.617\' N', '00º 17.046\' W'),
('26270', 'Puerto de Sagunto - UNIÓN FENOSA', '14', 'Emisario submarino', '39º 37.831\' N', '00º 13.528\' W'),
('26285', 'Puerto de Sagunto', '1', 'Extremo Dique de abrigo', '39º 37.830\' N', '00º 12.321\' W'),
('26290', 'Puerto de Sagunto', '2', 'Martillo Dique de abrigo', '39º 38.035\' N', '00º 12.372\' W'),
('26311', 'Puerto de Sagunto', '3', 'Contradique ( Angulo S )', '39º 37.754\' N', '00º 12.935\' W'),
('26312', 'Puerto de Sagunto', '4', 'Contradique ( Angulo E )', '39º 38.001\' N', '00º 12.715\' W'),
('26313', 'Puerto de Sagunto', '5', 'Talud contradique', '39º 38.060\' N', '00º 12.630\' W'),
('26314', 'Puerto de Sagunto', '6', 'Contradique ( Extremo )', '39º 38.264\' N', '00º 12.684\' W'),
('26320', 'Puerto de Sagunto', '7', '1ª boya Canal Principal', '39º 38.590\' N', '00º 12.570\' W'),
('26325', 'Puerto de Sagunto', '8', 'Muelle noreste,extremo sur.', '39º 38.569\' N', '00º 12.746\' W'),
('26326', 'Puerto de Sagunto', '15', 'Muelle Norte Dos', '39º 38.562 N', '00º 12.805 W'),
('26360', 'Puerto de Sagunto', '9', '2ª boya Canal Principal', '39º 38.920\' N', '00º 12.690\' W'),
('26380', 'Puerto de Sagunto', '10', 'Muelle Sur (Angulo)', '39º 38.858\' N', '00º 12.820\' W'),
('26390', 'Puerto de Sagunto', '11', 'Dársena pesquera (Dique)', '39º 39.134\' N', '00º 12.654\' W'),
('26392', 'Puerto de Sagunto', '12', 'Dársena pesquera (Contradique)', '39º 39.152\' N', '00º 12.622\' W'),
('26450', 'Puerto de Sagunto', '13', 'PantalÃ¡n Sierra Menera', '39Âº 38.803\' N', '00Âº 11.664\' W'),
('26460', 'Cultivos marinos &quot;Costa Blanca&quot;', '1', 'Boya SW', '39º 38.422\' N', '00º 10.296\' W'),
('26460.1', 'Cultivos marinos &quot;Costa Blanca&quot;', '2', 'Boya NW', '39º 38.849\' N', '00º 10.445\' W'),
('26460.2', 'Cultivos marinos &quot;Costa Blanca&quot;', '3', 'Boya NE', '39º 38.941\' N', '00º 10.001\' W'),
('26460.3', 'Cultivos marinos &quot;Costa Blanca&quot;', '4', 'Boya SE', '39º 38.513\' N', '00º 09.853\' W'),
('26470', 'Cultivos marinos &quot;Acuimed&quot;', '5', 'Boya S', '39º 38.900\' N', '00º 10.600\' W'),
('26471', 'Cultivos marinos &quot;Acuimed&quot;', '6', 'Boya W', '39º 39.100\' N', '00º 10.900\' W'),
('26472', 'Cultivos marinos &quot;Acuimed&quot;', '7', 'Boya N', '39º 39.200\' N', '00º 10.800\' W'),
('26473', 'Cultivos marinos', '8', 'Boya E', '39º 39.031\' N', '00º 10.523\' W'),
('26500', 'Faro de Sagunto', '1', 'Cabo Canet', '39Âº 40.471\' N', '00Âº 12.460\' W'),
('26504', 'Canet de Berenguer', '1', 'Extremo dique de Levante', '39º 40.337\' N', '00º 12.063\' W'),
('26508', 'Canet de Berenguer', '2', 'Extremo Martillo', '39º 40.366\' N', '00º 12.073\' W'),
('26510', 'Canet de Berenguer', '3', 'Extremo Sur Contradique', '39º 40,370\' N', '00º 12,105\' W'),
('26512', 'Canet de Berenguer', '4', 'Extremo Norte Contradique', '39º 40.430\' N', '00º 12.093\' W'),
('prueba', '0', '0', '0', '0', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`nif`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD CONSTRAINT `localizacion_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento` (`nif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


ALTER TABLE `localizacion` DROP FOREIGN KEY `localizacion_FK`; 
ALTER TABLE `localizacion` ADD CONSTRAINT `localizacion_FK` FOREIGN KEY (`nif`) REFERENCES `balizamiento`(`nif`) ON UPDATE CASCADE;