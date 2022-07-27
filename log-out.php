<?php 
session_start();
include_once './funciones.php';

$nombre=$_SESSION['miusuario'];

$db = conectaDb();
$sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','logout','')";
$consulta2 =  $db->prepare($sql2);
$consulta2->execute();

$_SESSION['miusuario'] = "";
$_SESSION['micontrasena'] = "";
$_SESSION['miprivilegio'] = "";

session_destroy();
header("location: ./index.php");
?>
