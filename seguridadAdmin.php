<?php
//Reanudamos la sesión 
@session_start(); 
//Validamos si existe realmente una sesión admin activa o no 
if($_SESSION["miprivilegio"] != "admin")
{ 
  //Si no hay sesión activa, lo direccionamos al index.php (inicio de sesión) 
  header("Location: index.php");
  exit(); 
} 
?>