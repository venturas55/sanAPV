<?php
    session_start();
    include './funciones.php';
    include './seguridad.php';
    $nombre = recogecookie('miusuario');
    $nif = recoge('nif');

$db = conectaDb();

$consulta = "delete from lampara where nif='$nif'";
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
#Se borra de la tabla lampara
if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Lampara borrada',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
    echo "<script type=\"text/javascript\"> alert(\"Borrado con exito de la tabla Lampara\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar en la tabla Lampara\"); </script>";
}


$consulta = "delete from observaciones where nif='$nif'";
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
#Se borra de la tabla observaciones
if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Observacion borrada',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
    echo "<script type=\"text/javascript\"> alert(\"Borrado con exito de la tabla Observaciones\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar en la tabla Observaciones\"); </script>";
}


$consulta = "delete from mantenimiento where nif='$nif'";
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
#Se borra de la tabla mantenimiento
if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','mantenimiento borrado',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
    echo "<script type=\"text/javascript\"> alert(\"Borrado con exito de la tabla mantenimiento\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar en la tabla mantenimiento\"); </script>";
}


$consulta = "delete from localizacion where nif='$nif'";
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
#Se borra de la tabla localizacion
if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Localizacion borrada',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
    echo "<script type=\"text/javascript\"> alert(\"Borrado con exito de la tabla localizacion\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar en la tabla localizacion\"); </script>";
}


$consulta = "delete from balizamiento where nif='$nif'";
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
#Se borra de la tabla balizamiento
if ($db->query($consulta)) {
                //logeamos la accion en logs y en la ta tabla eliminados
                $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Balizamiento borrado',\"$consulta\")";
                $consulta2 =  $db->prepare($sql2);
                $consulta2->execute();
    echo "<script type=\"text/javascript\"> alert(\"Borrado con exito de la tabla balizamiento\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar en la tabla balizamiento\"); </script>";
}

            //logeamos la accion en logs y en la ta tabla eliminados
$sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Balizamiento borrado','Las cinco tablas borradas: lampara, observaciones,mantenimiento, localizacion y balizamiento')";
$consulta2 =  $db->prepare($sql2);
$consulta2->execute();

$db = null;


$directorio="./img/".$nif;
borrarDirectorio($directorio);

header("location: ./san.php");
 