<?php
 session_start();
include './funciones.php';
include './seguridad.php';
#En la consulta no se puede usar $_REQUEST , no funciona...
$usuario = recoge('usuario');
$fecha = recoge('fecha');
$motivo = recoge('motivo');
$horaE = recoge('horaE');
$horaS = recoge('horaS');
$accion = recoge('accion');
$privilegio = recogecookie('miprivilegio');

if(privilegio()=='admin' || privilegio()=='san'){
    $db = conectaDb();

switch($accion){
    case 'add':
        $consulta = "insert into cochecito values('$usuario','$fecha','$horaE','$horaS','$motivo')";
        //echo $consulta;
        #se ejecuta la consulta
        if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Uso coche añadido',\"$consultalog\")";
            //echo $sql2;
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Uso del coche añadido con exito\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al añadir uso del coche\"); </script>";
        }
        $db = null; # se cierra la conexión.

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
        echo "<script>window.history.go(-1);</script>";
        break;
    
    case 'del':
        $consulta = "delete from cochecito where usuario='$usuario' AND fecha='$fecha'";
        #se ejecuta la consulta
        if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Uso coche borrado',\"$consultalog\")";
            //echo $sql2;
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Uso del coche borrado con exito\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al borrar uso del coche\"); </script>";
        }
        $db = null; # se cierra la conexión.

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
        echo "<script>window.history.go(-1);</script>";
        break;
    case 'mod':
        //print_r($_REQUEST);
        $fechaout = recoge('fechaout');
        $horaEout = recoge('horaEout');
        $horaSout = recoge('horaSout');
        $motivoout = recoge('motivoout');
        $usuario = recoge('usuario');
        $fecha = recoge('fecha');
        
        $consulta = "update cochecito set fecha='$fechaout', horaE='$horaEout',horaS='$horaSout',motivo='$motivoout' where usuario='$usuario' AND fecha='$fecha'";
        //echo $consulta;
        if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Uso coche modificado',\"$consultalog\")";
            //echo $sql2;
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Uso del coche modificado con exito\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al modificadar uso del coche\"); </script>";
        }
        $db = null; # se cierra la conexión.

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
        echo "<script>window.history.go(-1);</script>";
        break;
    default:
        echo "No contemplado";
    
}
   
}
else{
    echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    echo "<script>window.history.go(-1);</script>";
}

?>

 