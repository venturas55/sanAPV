<?php
session_start();
include './funciones.php';
include './seguridad.php';
$accion = recoge('accion');
$nif = recoge('nif');
$fecha = recoge('fecha');
$mantenimiento = recoge('mantenimiento');
$mantenimiento = preg_replace('@\x{FFFD}@u', '_', $mantenimiento); //Se sustituyen los 'replacement characters por '_', que ademas sirve como comodin en las consultas mysql
$puerto = recoge('puerto');
$usuario = recogecookie('miusuario');
$privilegio = recogecookie('miprivilegio');

if (privilegio() == 'admin' || privilegio() == 'san') {

    $db = conectaDb();
    switch ($accion) {
        case 'add':
            
            $consulta = "insert into mantenimiento values('$nif','$fecha','$mantenimiento')";
            #se ejecuta la consulta
            if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiento añadido',\"$consultalog\")";
                //echo $sql2;
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
                echo "<script type=\"text/javascript\"> alert(\"Mantenimiento añadido con exito\"); </script>";
            } else {
                echo "<script type=\"text/javascript\"> alert(\"Error al añadir operación\"); </script>";
            }
            $db = null; # se cierra la conexión.

            #A LA CONSOLA!
            echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
            break;
        case 'del':
            $consulta = "delete from mantenimiento where nif='$nif' AND fecha='$fecha' AND mantenimiento LIKE '%$mantenimiento%'";

            #A LA CONSOLA!
            echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

            if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiendo borrado',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
                echo "<script type=\"text/javascript\"> alert(\"Mantenimiento Borrado con exito\"); </script>";
            } else {
                echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar la operacion de mantenimiento\"); </script>";
            }
               #A LA CONSOLA!
               echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
            break;
        case 'mod':
            //print_r($_REQUEST);
            $fechaout = recoge('fechaout');
            $mantenimientoout = recoge('mantenimientoout');
            $mantenimientoout = preg_replace('@\x{FFFD}@u', '_', $mantenimientoout); //reemplazar todos los caracteres desconocidos por barra baja
            //imprime($fechaout);
           // imprime($mantenimientoout);
            $consulta = "update mantenimiento set fecha='$fechaout', mantenimiento='$mantenimientoout' where nif='$nif' AND fecha='$fecha' AND mantenimiento LIKE '%$mantenimiento%'";
            imprime($consulta);
            if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiento modificado en balida NIF=$nif,\"$consultalog\")";
                //echo $sql2;
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
                echo "<script type=\"text/javascript\"> alert(\"Mantenimiento modificado con exito\"); </script>";
            } else {
                echo "<script type=\"text/javascript\"> alert(\"Error al modificadar mantenimiento\"); </script>";
            }
            $db = null; # se cierra la conexión.

            #A LA CONSOLA!
            echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
            break;
        default:
            echo "No contemplado";
    }
} else {
    echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
}
echo "<script>window.history.go(-1);</script>";

