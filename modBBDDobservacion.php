<?php
 session_start();
include './funciones.php';
include './seguridad.php';
$nif = recoge('nif');
$observacion = recoge('observacion');
$puerto=recoge('puerto');
$nombre = recogecookie('miusuario');


if(privilegio()=='admin' || privilegio()=='san'){
    $db = conectaDb();
    $consulta = "insert into observaciones values('$nif','$observacion')";

    #A LA CONSOLA!
    echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

    #se ejecuta la consulta
    if ($db->query($consulta)) {
        //logeamos la accion en logs y en la ta tabla eliminados
        $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
        $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Observacion añadida',\"$consultalog\")";
        $consulta2 =  $db->prepare($sql2);
        $consulta2->execute();
        echo "<script type=\"text/javascript\"> alert(\"Observacion añadida con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al añadir observacion\"); </script>";
    }

    $db = null; # se cierra la conexión.
  
   // echo "<script>window.history.go(-2);</script>";
    //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
}
else{
    echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
}
echo "<script>window.history.go(-1);</script>";

 ?>