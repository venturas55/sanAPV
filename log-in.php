<?php
session_start();
include 'funciones.php';
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="./css/style.css" rel="stylesheet" media="screen" />
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
    <!-- CABECERA   -->
    <nav class="navbar fixed-top navbar-dark bg-primary navbar-expand-lg navbar-template">
        <a class="navbar-brand" target="_blank" href="https://www.valenciaport.com/"><img src="./img/images/logo-valenciaport-home.svg" /></a>
        <h1>AUTORIDAD PORTUARIA DE VALENCIA </h1>
        <div class="d-flex flex-row order-2 order-lg-3">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse order-3 order-lg-2" id="navbarNavDropdown">

            <ul class="navbar-nav ml-auto">
                <li class="nav-item"> <a href='reg-form.php' class="nav-link"> <button type="button" class="btn btn-warning btn-s"> Registrate</button> </a> </li>
                <li class="nav-item"> <img class="logoimage" src="./img/images/logo-valenciaport-home.svg" width="120" height="60"> </li>
                <li class="nav-item"><a class="nav-link" href="./index.php"> <button type="button" class="btn btn-success btn-sm"> INICIO</button> </a> </li>
            </ul>
        </div>
    </nav>


    <div class="container-fluid" style="margin-top:120px">
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-3"> </div>
            <div class="col-6">

                <div id="formulario_registro">
                    <form method="post" class="signin" action="check_login.php">
                        <fieldset class="textbox">
                            <label class="username">
                                <span>usuario</span>
                                <input id="username" name="username" value="" type="text" autocomplete="on" placeholder="Usuario" required>
                            </label>
                            <label class="password">
                                <span>Contrase&ntilde;a</span>
                                <input id="password" name="password" value="" type="password" placeholder="Contrase&ntilde;a" required>
                            </label>
                            <button class="btn btn-success btn-sm" type="submit" id="go" value="Ingresar"> Ingresar </button>
                            <button class="btn btn-danger btn-sm" type="button" id="cancel" value="Cancelar" onClick="window.location.href='./index.php'">Cancelar </button>
                        </fieldset>
                    </form>
                </div>
                <div>Si no tiene una cuenta registrese <a href="reg-form.php">aqui</a> </div>
            </div>
        </div>
    </div>
    <?php pie() ?>
</body>

</html>