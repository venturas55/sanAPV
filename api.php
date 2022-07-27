<?php
//ALTER TABLE `cochecito` DROP PRIMARY KEY, ADD PRIMARY KEY(`usuario`, `fecha`, `motivo`);
//include './seguridad.php';
session_start();
include "./funciones.php";
$usuario = strtolower(recogecookie('miusuario'));
$conexion = new ApptivaDB();
$accion = recoge('accion');

switch ($accion) {
    case 'mostrarListado':
        $seleccion = recoge('seleccion');

        if ($seleccion != "") :
            $anyo = substr($seleccion, 0, 5);
            $mes = substr($seleccion, 5);
            $seleccion = $anyo . str_pad($mes, 2, '0', STR_PAD_LEFT);
        endif;
        $condicion = "usuario LIKE '" . $usuario . "' order by YEAR(fecha) DESC, MONTH(fecha) DESC, DAY(fecha) DESC";
        //$condicion = " fecha LIKE '%" . $seleccion . "%' order by YEAR(fecha) DESC, MONTH(fecha) DESC, DAY(fecha) DESC";
        $u = $conexion->buscar("cochecito", $condicion);
        if ($u) :
            $res['accion'] = $accion;
            $res['usuario'] = $usuario;
            $res['respuesta'] = $u;
            $res['consulta'] = $condicion;
            $res['mensaje'] = "exito";
        else :
            $res['mensaje'] = "Sin registros";
            $res['consulta'] = $condicion;
            $res['error'] = true;
        endif;
        echo json_encode($res);
        die();
        break;

    default:
        $res['mensaje'] = "Case default";
        # <code class=""></code>
        break;
    case 'modificacionBBDD':
        $db = conectaDb();
        $consultaBBDD = "ALTER TABLE `cochecito` DROP PRIMARY KEY, ADD PRIMARY KEY(`usuario`, `fecha`, `motivo`)";
        $modBB = $db->prepare($consultaBBDD);
        $modBB->execute();
        if (!$modBB) {
            echo "<p>Error en la consulta.</p>\n";
        } else
            echo "
        <p>Consulta " . $consultaBBDD . "ejecutada con exito.</p>\n
        <p>Consulta ejecutada con exito.</p>\n";
        $db = null;
        break;
}
