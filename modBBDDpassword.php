<?php
 session_start();
include './funciones.php';
include './seguridad.php';
$usuario = recogecookie('miusuario');
$usuario = recogecookie('miusuario');
$passviejo = recoge('contrasena0');
$passnuevo = recoge('contrasena1');
$passviejo_hashed = password_hash($passviejo, PASSWORD_DEFAULT);
$passnuevo_hashed = password_hash($passnuevo, PASSWORD_DEFAULT);


if (privilegio() == 'admin' || privilegio() == 'san') {
    $db = conectaDb();
    $consulta = "update usuarios set contrasena= '$passnuevo_hashed' where usuario='$usuario' and contrasena= '$passviejo_hashed'";

    #A LA CONSOLA!
    echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

    #se ejecuta la consulta
    if ($db->query($consulta)) {
        //logeamos la accion en logs y en la ta tabla eliminados
        $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
        $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Contraseña actualizada',\"$consultalog\")";
        $consulta2 =  $db->prepare($sql2);
        $consulta2->execute();
        echo "<script type=\"text/javascript\"> alert(\"Contraseña actualizada con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al actualizar contraseña\"); </script>";
    }

    $db = null; # se cierra la conexión.

    // echo "<script>window.history.go(-2);</script>";
    //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
} else {
    echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
    echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
}
echo "<script>window.history.go(-1);</script>";
