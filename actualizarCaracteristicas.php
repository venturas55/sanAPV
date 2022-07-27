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
    <script src="./js/main.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>

    <?php
    include_once("funciones.php");
    $nif = recoge('nif');
    $puerto = recoge('puerto');
    $db = conectaDb();
    ?>

    <!-- CABECERA -->
    <?php cabecera2('caracteristicas') ?>

    <!-- CUERPO -->
    <div id="cuerpo">
        <div id="info" class="container-fluid" style="margin-top:100px">
            <form action="./modBBDDcaracteristicas.php" method="post">
                <input type="hidden" name="nif" value="<?php echo $nif; ?>">
                <input type="hidden" name="puerto" value="<?php echo $puerto; ?>">
                <table>
                     <tr>
                        <th>NIF</th>
                        <td><input type="text" name="nifnuevo" value="<?php echo recoge('nif') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Num.Internacional</th>
                        <td><input type="text" name="num_internacional" value="<?php echo recoge('num_internacional') ?>" /></td>
                    </tr>
                    <tr>
                        <th>tipo</th>
                        <td><input type="text" size="100" name="tipo" value="<?php echo recoge('tipo') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Apariencia</th>
                        <td><input type="text" name="apariencia" value="<?php echo recoge('apariencia') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Periodo</th>
                        <td><input type="text" name="periodo" value="<?php echo recoge('periodo') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Caracteristica</th>
                        <td><input type="text" name="caracteristica" value="<?php echo recoge('caracteristica') ?>" /></td>
                    </tr>
                </table>
                <input type="submit" value="Modificar" />
            </form>
        </div>
    </div>
    <?php pie() ?>
</body>

</html>