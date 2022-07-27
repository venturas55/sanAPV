<?php
session_start();
include './funciones.php';
$db = conectaDb();
$contador = 0;
// username and password sent from form  
$nombre = recoge('username');
$contrasena = recoge('password');
//$contrasena=password_verify($contrasena,PASSWORD_DEFAULT);
//$contrasena=password_hash($contrasena,PASSWORD_DEFAULT, array("cost"=>12));
$sql = "SELECT * FROM usuarios WHERE usuario ='$nombre'";
$consulta = $db->prepare($sql);
$consulta->execute();

while ($result = $consulta->fetch(PDO::FETCH_ASSOC)) {
    if (password_verify($contrasena, $result['contrasena'])) {
        $contador++;

        $_SESSION['miusuario'] = $result['usuario'];
        //$_SESSION['micontrasena'] = $result['contrasena'];
        $_SESSION['miprivilegio'] = $result['privilegio'];
    }
}
if ($contador > 0) {
    //añado el login en el log de acciones
    $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','login','')";
    $consulta2 =  $db->prepare($sql2);
    $consulta2->execute();
    header("location: ./index.php");
} else {

    echo "<h1>Error, usuario o contrase&ntilde;a  incorrectos <br>    <a href='./index.php'>Inicio</a> </h1>";
    echo $nombre . " " . $contrasena;
}



$db = null;
