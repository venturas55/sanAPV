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

    $db = conectaDb();
    ?>

    <!-- CABECERA -->
    <?php cabecera2('caracteristicas') ?>

    <!-- CUERPO -->
    <div id="cuerpo">
        <div id="info" class="container-fluid" style="margin-top:100px">
            <form action="./modBBDDlampara.php" method="post">
                <input type="hidden" name="nif" value="<?php echo $nif; ?>">
                <input type="hidden" name="puerto" value="<?php echo $puerto; ?>">
                <table>
                    <tr>
                        <th>Altura</th>
                        <td><input type="text" name="altura" value="<?php echo recoge('altura') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Elevacion</th>
                        <td><input type="text" name="elevacion" value="<?php echo recoge('elevacion') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Linterna</th>
                        <td><input type="text" size="100" name="linterna" value="<?php echo recoge('linterna') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Alcance Nominal (MN)</th>
                        <td><input type="text" name="alcancenom" value="<?php echo recoge('alcancenom') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Alcance Luminoso (MN)</th>
                        <td><input type="text" name="alcancelum" value="<?php echo recoge('alcancelum') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Intensidad estacionaria (Cd</th>
                        <td><input type="text" name="candelascalc" value="<?php echo recoge('candelascalc') ?>" /></td>
                    </tr>
                    <tr>
                        <th>Intensidad instalada (Cd)</th>
                        <td><input type="text" name="candelasinst" value="<?php echo recoge('candelasinst') ?>" /></td>
                    </tr>
                </table>
                <input type="submit" value="Modificar" />
            </form>
        </div>
    </div>
    <?php pie() ?>
</body>

</html>