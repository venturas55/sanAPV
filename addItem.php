<?php

    session_start();

    include 'funciones.php';

    include './seguridad.php';

    #En la consulta no se puede usar $_REQUEST , no funciona...

    $fila=recoge('fila');

    $columna=recoge('columna');

    $item= recoge('item');

    $cantidad=recoge('cantidad') ;

    $descripcion= recoge('descripcion');

    $nombre=recogecookie('miusuario');





if(privilegio()=='admin' || privilegio()=='san'){

    $db = conectaDb();

    $sql = "insert into inventario values(NULL,'$item',$cantidad,$fila,$columna,'$descripcion')";

    echo $sql;

    $consulta =  $db->prepare($sql);

    $consulta->execute();

    #A LA CONSOLA!

    echo "<script type=\"text/javascript\"> console.log(" . json_encode($sql) . ")</script>";

    

    #se ejecuta la consulta

    if ($consulta) {





                //logeamos la accion en logs y en la ta tabla eliminados

        $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Item añadido',\"$sql\")";

        //echo $sql2;

        $consulta2 =  $db->prepare($sql2);

        $consulta2->execute();

        echo "<script type=\"text/javascript\"> alert(\"Observacion añadida con exito\"); </script>";

    } else {

        echo "<script type=\"text/javascript\"> alert(\"Error al añadir observacion\"); </script>";

    }

    

    $db = null; # se cierra la conexión.

    //print_r($_REQUEST);

    echo "<script>window.history.back();</script>";

    //header("location: ./plantillaI.php?fila=$fila&columna=$columna");

}

else{

    echo "<script type=\"text/javascript\"> alert(\"No tienes priviledios\"); </script>";

    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";

    echo "<script>window.history.go(-1);</script>";

}

?>