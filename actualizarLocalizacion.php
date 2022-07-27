<?php
session_start();
include './funciones.php';
?>

<!DOCTYPE html>
<html>

<head>
    <title>Proyecto BBDD de SAN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <!-- <script src="./js/bootstrap.min.js"></script> -->
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>

    <?php
    include_once("funciones.php");
    $nif = recoge('nif');
    $puerto = recoge('puerto');
    
    ?>


    <!-- CABECERA -->
    <?php cabecera2('caracteristicas') ?>

    <!-- CUERPO -->
    <div id="cuerpo">
        <div id="info" class="container-fluid" style="margin-top:100px">
            <form action="./modBBDDlocalizacion.php" method="post">
                <table>
                    <tr>
                        <th>NIF</th>
                        <td><input type="text" name="nif" value="<?php echo recoge('nif'); ?>" /></td>
                    </tr>
                    <tr>
                        <th>Puerto</th>
                        <td><input type="text" name="puerto" value="<?php echo recoge('puerto'); ?>" /></td>
                    </tr>
                    <tr>
                        <th>Numero Local</th>
                        <td><input type="text" name="num_local" value="<?php echo recoge('num_local'); ?>" /></td>
                    </tr>
                    <tr>
                        <th>Localizacion</th>
                        <td><input type="text" size="100" name="localizacion" value="<?php echo recoge('localizacion'); ?>" /></td>
                    </tr>
                    <tr>
                        <th>Latitud</th>
                        <td><input type="text" name="latitud" value="<?php echo recoge('latitud'); ?>" /></td>
                    </tr>
                    <tr>
                        <th>Longitud</th>
                        <td><input type="text" name="longitud" value="<?php echo recoge('longitud'); ?>" /></td>
                    </tr>
                </table>
                <input type="submit" value="Modificar" />
            </form>

        </div>
    </div>
    <?php pie() ?>
</body>

</html>