<?php
include_once 'funciones.php';
//echo "<script type=\"text/javascript\"> alert($obj); </script>";
$tabla = recoge("tabla");
$valor = recoge("valor");

//echo $tabla." ".$valor;
$db = conectaDb();
if ($tabla == 'balizamiento')
    $sql = "Select * from $tabla WHERE nif=$valor";
else if ($tabla == 'localizacion')
    $sql = "Select * from $tabla WHERE localizacion=$valor";

$resultado = $db->prepare($sql);
$resultado->execute();
if ($resultado->rowCount() == 0) {
    //$salida = "<script>alert('No se han encontrado resultados!');</script>";
    echo "0";
} else {
    $salida = $resultado->fetch(PDO::FETCH_OBJ);
    echo (json_encode($salida));
}
$db = NULL;
?>
