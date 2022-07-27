<?php
session_start();
include 'funciones.php';
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="./css/style.css" rel="stylesheet" media="screen" />
    <script src="./js/main.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
    <!-- CABECERA  . -->
    <?php cabecera1() ?>

    <div class="container-fluid" style="margin-top:80px">
        <!-- id="cuerpo" -->
        <!-- CUERPO -->
        <div class="row">
            <div class="col-sm-12 col-md-4 imgpuertos">
                <a href="./san.php?puerto=gandia">
                    <p>Gandia</p><img src="./img/images/1gandia.jpg" alt="">
                </a>
            </div>
            <div class="col-sm-12 col-md-4 imgpuertos">
                <a href="./san.php?puerto=valencia">
                    <p>Valencia</p><img src="./img/images/1valenciacuadrada.jpg" alt="">
                </a>
            </div>
            <div class="col-sm-12 col-md-4 imgpuertos">
                <a href="./san.php?puerto=sagunto">
                    <p>Sagunto</p><img src="./img/images/3sagunto.jpg" alt="">
                </a>
            </div>
        </div>


        <div class="row" style="margin-left:30%">
            <h4 style="padding:10px">Busqueda por NIF</h4> <input type="text" id="buscado1" />
            <button id="buscar1">Buscar </button>
            <p id="texto"> </p>
        </div>


        <div class="row" style="margin-left:30%; margin-bottom:50px">
            <h4 style="padding:10px">Busqueda ubicacion</h4>
            <br>
            <input type="text" id="buscado2" />
            <button id="buscar2">Buscar </button>
            <p id="texto2"> </p>
        </div>


        <div class="row" style="margin:100px">
            <!--        <div class="col-sm-12 col-md-4 imgpuertos">
                <a href="./experimental.php">
                    <p style="opacity:0.5">Experimental</p>
                </a>
            </div> -->

            <div class="col-12 imgpuertos">
                <a href="./san.php?puerto=externo">
                    <p style="opacity:0.5">Consultar Balizamiento Externo</p>
                </a>
            </div>
        </div>
    </div>

    <?php pie() ?>
</body>

</html>