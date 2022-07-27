<?php
session_start();
include 'funciones.php';
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="icon" type="image/ico" href="../favicon.ico" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/main.js" type='text/javascript'></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
    <!-- CABECERA -->
    <?php cabecera1() ?>
    <div class="container-fluid" style="margin:80px 10px 60px">
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <img src="./img/images/puertovalencia.png" usemap="#mapa_zonas" class="imagenespecial">

                <map name="mapa_zonas">
                    <!-- Coords - Se trata de una lista de números separados por comas que representan las coordenadas del área. 
                        Rectangular = X1,Y1,X2,Y2 (coordenadas X e Y del vértice superior izquierdo y coordenadas X e Y del vértice inferior derecho). 
                        Circular = X1,Y1,R (coordenadas X e Y del centro y radio del círculo). 
                        Poligonal = X1,Y1,X2,Y2,...,XnYn (coordenadas de los vértices del polígono.
                         Si las últimas coordenadas no son iguales que las primeras, se cierra automáticamente el polígono uniendo ambos vértices) -->
                    <area shape="rect" coords="104,171,175,151" href="./plantilla.php?nif=26047.2">
                    <area shape="rect" coords="3,392,72,414" href="./plantilla.php?nif=26049">
                    <area shape="rect" coords="46,498,118,516" href="./plantilla.php?nif=26056">
                    <area shape="rect" coords="43,579,114,599" href="./plantilla.php?nif=26058">
                    <area shape="rect" coords="46,634,113,615" href="./plantilla.php?nif=26058.1">
                    <area shape="rect" coords="42,708,107,690" href="./plantilla.php?nif=26058.2">
                    <area shape="rect" coords="1019,269,1084,253" href="./plantilla.php?nif=25740">
                    <area shape="rect" coords="898,385,965,367" href="./plantilla.php?nif=25761">
                    <area shape="rect" coords="944,408,1008,392" href="./plantilla.php?nif=25774">
                    <area shape="rect" coords="1121,316,1190,300" href="./plantilla.php?nif=25730">
                    <area shape="rect" coords="851,285,920,267" href="./plantilla.php?nif=25720">
                    <area shape="rect" coords="798,357,867,339" href="./plantilla.php?nif=25721">
                    <area shape="rect" coords="104,171,175,151" href="./plantilla.php?nif=26285">
                </map>
            </div>
        </div>
    </div>
    <?php pie() ?>
</body>

</html>