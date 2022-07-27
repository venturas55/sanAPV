<?php
    session_start();
    include './funciones.php';
    include './seguridad.php';
    $nombre = recogecookie('miusuario');
    #En la consulta no se puede usar $_REQUEST , no funciona...
    $puerto=recoge('puerto');
    $num_local=recoge('num_local');
    $nif= recoge('nif');
    $localizacion=recoge('localizacion');
    $longitud= recoge('longitud');
    $latitud= recoge('latitud');

if(privilegio()=='admin' || privilegio()=='san'){

    $db = conectaDb();
    $consulta = "UPDATE localizacion set puerto=\"$puerto\", num_local=$num_local,localizacion=\"$localizacion\",latitud=\"$latitud\",longitud=\"$longitud\" where nif=\"$nif\"";
             #A LA CONSOLA!
            echo "<script type=\"text/javascript\"> console.log(".json_encode($consulta).")</script>";
    
    if ($db->query($consulta)) {
        $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
        $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Modificacion Localizacion',\"$consultalog\")";
        //echo $sql2;
        $consulta2 =  $db->prepare($sql2);
        if($consulta2->execute())
            echo "Insertado en log exitoso";
        else
            echo "No se ha insertado en log";
        echo "<script type=\"text/javascript\"> alert(\"Actualizacion exitosa\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al actualizar\"); </script>";
    }
    $db = NULL;
    echo "<script>window.history.go(-2);</script>";
    //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
}
else{
    echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    echo "<script>window.history.go(-2);</script>";
}
