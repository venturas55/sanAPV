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


    <!-- CABECERA -->
    <?php cabecera2('alta') ?>



    <div class="container">
        <div class="row" style="margin-top: 100px;">
            <div class="col-lg-12">
                <form action="./altaNueva.php" method="post" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <th>NIF</th>
                            <td><input type="text" name="nif" /></td>
                        </tr>
                        <tr>
                            <th>Num.Internacional</th>
                            <td><input type="text" name="num_internacional" /></td>
                        </tr>
                        <tr>
                            <th>Tipo</th>
                            <td><input type="text" name="tipo" /></td>
                        </tr>
                        <tr>
                            <th>Telecontrol</th>
                            <td><input type="text" name="telecontrol" /></td>
                        </tr>
                        <tr>
                            <th>Apariencia</th>
                            <td><input type="text" name="apariencia" /></td>
                        </tr>
                        <tr>
                            <th>Periodo</th>
                            <td><input type="text" name="periodo" /></td>
                        </tr>
                        <tr>
                            <th>Caracteristica</th>
                            <td><input type="text" name="caracteristica" /></td>
                        </tr>
                    </table>
                    <br>
                    <table>
                        <tr>
                            <th>Puerto</th>
                            <td><input type="text" name="puerto" /></td>
                        </tr>
                        <tr>
                            <th>Numero Local</th>
                            <td><input type="text" name="num_local" /></td>
                        </tr>
                        <tr>
                            <th>Localizacion</th>
                            <td><input type="text" name="localizacion" /></td>
                        </tr>
                        <tr>
                            <th>Latitud</th>
                            <td><input type="text" name="latitud" /></td>
                        </tr>
                        <tr>
                            <th>Longitud</th>
                            <td><input type="text" name="longitud" /></td>
                        </tr>
                    </table>
                    <br>
                    <table>
                        <tr>
                            <th>Altura</th>
                            <td><input type="text" name="altura" /></td>
                        </tr>
                        <tr>
                            <th>Elevacion</th>
                            <td><input type="text" name="elevacion" /></td>
                        </tr>
                        <tr>
                            <th>Alcance</th>
                            <td><input type="text" name="alcanceNom" /></td>
                        </tr>
                        <tr>
                            <th>Linterna</th>
                            <td><input type="text" name="linterna" /></td>
                        </tr>
                        <tr>
                            <th>Candelas</th>
                            <td><input type="text" name="candelasCalc" /></td>
                        </tr>
                        <tr>
                            <th>Alcance Luminoso</th>
                            <td><input type="text" name="alcanceLum" /></td>
                        </tr>
                        <tr>
                            <th>Candelas Instaladas</th>
                            <td><input type="text" name="candelasInst" /></td>
                        </tr>
                    </table>
                    <br>
                    <table>
                        <tr>
                            <th>Insertar foto...</th>
                            <td><input name="foto" type="file" /></td>
                        </tr>
                    </table>
                    <input type="submit" value="ENVIAR ALTA" class="btn btn-success btn-sm" />
                </form>
            </div>
        </div>
    </div>
</body>

</html> 