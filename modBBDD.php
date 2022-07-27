<?php
session_start();
include './funciones.php';
include './seguridad.php';
$usuario = recogecookie('miusuario');
$accion = recoge('accion');

switch ($accion) {

    case 'modBBDD':
        modificarBBDD();
        break;
    case 'modificacion2':
        modificacion2();
        break;
    case 'obtenerBackup':
        obtenerBackup();
        break;
}
