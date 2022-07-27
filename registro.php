<?php
session_start();
include './funciones.php';
$db = conectaDb();

//Variables qu e toman valor de lo enviado desde el form 
$usuario = recoge('usuario');
$password = recoge('password');
$password_hashed = password_hash($password, PASSWORD_DEFAULT);
$email = recoge('correo');


$sql = "select usuario from usuarios where usuario = '" . $usuario . "'"; //SEleccionamos la lista completa del campo usuarios  
$consulta = $db->prepare($sql);
$consulta->execute();

if ($consulta->rowCount() >= 1) { //Si ya existe un usuario con ese mail 
    echo ("<center> <h1><font color='red'>El usuario<br><fontcolor='blue'> $usuario<br><font color='red'> ya existe!< br><a href='../index.php'>Inicio</a>");
    header("location: ./index.php"); //redireccionamos a la index 
} else { //Si el  usuario  no existe 
    $sql = "INSERT INTO usuarios (usuario, email, contrasena,privilegio) VALUES( '" . $usuario . "', '" . $email . "', '" . $password_hashed . "','san')";
    $consulta = $db->prepare($sql);
    $consulta->execute();


    if ($consulta) {
        echo ("<center> <h1><font color='red'>El usuario<br><fontcolor='blue'> $usuario<br><font color='red'>ha sido registrado con exito< br><a href='../index.php'>Inicio</a>");
        header("location: ./index.php"); //Si todo es correcto redireccionamos a la index 
    } else {
        echo ("<center> <h1><font color='red'>Ha habido un problema al intentar insertar el usuario<br><fontcolor='blue'> $usuario<br><font color='red'>en la BBDD!< br><a href='../index.php'>Inicio</a>");
    }
    // cerramos la conexión   
    $db = null;
}
