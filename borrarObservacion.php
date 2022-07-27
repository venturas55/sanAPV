<?php

    session_start();
    include './funciones.php';
    include './seguridad.php';

   #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
    $observaciones = recoge('observaciones');
    $nombre = recogecookie('miusuario');

    $db = conectaDb();
    $consulta = "delete from observaciones where nif='$nif' AND observaciones='$observaciones'";

    #A LA CONSOLA!
    echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

    #se ejecuta la consulta
    if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Observacion borrada',\"$consulta\")";
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
        echo "<script type=\"text/javascript\"> alert(\"Observacion Borrada con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar la observacion\"); </script>";
    }

    $db = null;
    #print_r($_REQUEST);
    echo "<script>window.history.go(-1);</script>";
    #header("location: href=./san.php");
?>

 