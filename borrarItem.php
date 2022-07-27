<?php
session_start();
include './funciones.php';
include './seguridad.php';
#Dentro de la consulta no se puede usar $_REQUEST , no funciona...
$id = recoge('id');
$fila = recoge('fila');
$columna = recoge('columna');
$nombre = recogecookie('miusuario');

$db = conectaDb();


//logeamos la accion en logs y en la ta tabla eliminados
$sql="select * from inventario where id=$id";
$consultaitem =  $db->prepare($sql);
$consultaitem->execute();

if ($consultaitem->rowCount() == 0) { } else {
    foreach ($consultaitem as $i) {
        $item = "delete ".$i[item]." ".$i[cantidad]." ".$i[fila]." ".$i[columna]." ".$i[descripcion];
    }
}


$sql = "delete from inventario where id=$id";

$sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Item eliminado','$item')";
$consulta2 =  $db->prepare($sql2);
$consulta2->execute();
#A LA CONSOLA!
echo "<script type=\"text/javascript\"> console.log(" . json_encode($sql) . ")</script>";

$result = $db->prepare($sql);
$result->execute();
if ($result) {
    echo "<script type=\"text/javascript\"> console.log(\"Borrado con exito del inventario\"); </script>";
} else {
    echo "<script type=\"text/javascript\"> console.log(\"Error al intentar borrar del inventario\"); </script>";
}

$db = null;

header("location: ./plantillaI.php?fila=$fila&columna=$columna");
?>