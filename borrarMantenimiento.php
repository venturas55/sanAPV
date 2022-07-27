<?php
    session_start();
    include './funciones.php';
    include './seguridad.php';
   #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif=recoge('nif');
    $fecha=recoge('fecha');
    $mantenimiento=recoge('mantenimiento');
    $nombre = recogecookie('miusuario');


    $db = conectaDb();

    $consulta = "delete from mantenimiento where nif='$nif' AND fecha='$fecha' AND mantenimiento='$mantenimiento'";

         #A LA CONSOLA!
         echo "<script type=\"text/javascript\"> console.log(".json_encode($consulta).")</script>";
    
    if ($db->query($consulta)) {
    //logeamos la accion en logs y en la ta tabla eliminados
        $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Mantenimiendo borrado',\"$consulta\")";
        $consulta2 =  $db->prepare($sql2);
        $consulta2->execute();
        echo "<script type=\"text/javascript\"> alert(\"Mantenimiento Borrado con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar la operacion de mantenimiento\"); </script>";
    }

    $db = NULL;
    #print_r($_REQUEST);
    echo "<script>window.history.go(-1);</script>";
    #header("location: href=./san.php");
?>
