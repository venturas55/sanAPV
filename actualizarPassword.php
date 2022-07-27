<?php
session_start();
include './funciones.php';
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
    <script src="./js/validacionContrasena.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>

    <?php
    include_once("funciones.php");
    $db = conectaDb();
    ?>

    <!-- CABECERA -->
    <?php cabecera2('Password') ?>

    <!-- CUERPO -->
    <div id="cuerpo">
        <div id="info" class="container-fluid" style="margin-top:100px">
            <!-- <form action="./modBBDDpassword.php" method="post"> -->
            <table>
                <tr>
                    <th>PASSWORD ACTUAL</th>
                    <td><input type="text" id="contrasenavieja" name="contrasena0" value="" /></td>
                </tr>
                <tr>
                    <th>NUEVO PASSWORD</th>
                    <td><input type="text" id="contrasenanueva1" name="contrasena1" value="" /></td>
                </tr>
                <tr>
                    <th>CONFIRMA NUEVO PASSWORD</th>
                    <td><input type="text" id="contrasenanueva2" name="contrasena2" value="" /></td>
                </tr>

            </table>
            <!--   <input type="submit" value="Modificar" id="boton"/> -->
            <button onclick="validacion"> Modificar</button>
            </form>
        </div>
    </div>
    <?php pie() ?>
</body>

</html>