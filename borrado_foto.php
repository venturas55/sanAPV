<?php

include_once './funciones.php';
include './seguridad.php';
$carpeta = recoge("carpeta");
$archivo = recoge("archivo");

if (!unlink($carpeta."/".$archivo))
    echo "<script type=\"text/javascript\"> alert(\"No se pudo borrar\"); </script>";
else
    echo "<script type=\"text/javascript\"> alert(\"Archivo borrado con exito\"); </script>";

echo "<script>window.history.go(-1);</script>";

?>

