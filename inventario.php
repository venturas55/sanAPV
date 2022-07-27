<?php
session_start();
include_once 'funciones.php';
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
    <!-- CABECERA   -->
    <?php cabecera2('inventario') ?>

    <!-- CUERPO -->
    <div class="container-fluid" style="margin-top:100px">
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table id="tablainventario" class="table table-sm table-dark">
                        <tr class="info-color-dark">
                            <th>BALDA</th>
                            <th>ARMARIO 1</th>
                            <th>ARMARIO 2</th>
                            <th>ARMARIO 3</th>
                            <th>ARMARIO 4</th>
                        </tr>
                        <tr>
                            <th>SUPERIOR #6 </th>
                            <td id="f6c1">
                                <?php
                                $db = conectaDb();
                                $sql = "select * from inventario where fila=6 AND columna=1";
                                $consulta = $db->prepare($sql);
                                $consulta->execute();
                                foreach ($consulta as $i) {
                                    echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                }
                                ?>

                            </td>
                            <td id="f6c2">
                                <?php
                                $sql = "select * from inventario where fila=6 AND columna=2";
                                $consulta = $db->prepare($sql);
                                $consulta->execute();
                                foreach ($consulta as $i) {
                                    echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                }
                                ?> </td>
                            <td id="f6c3">
                                <?php
                                $sql = "select * from inventario where fila=6 AND columna=3";
                                $consulta = $db->prepare($sql);
                                $consulta->execute();
                                foreach ($consulta as $i) {
                                    echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                }
                                ?>
                            </td>
                            <td id="f6c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=6 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>



                            </td>
                        </tr>
                        <tr>
                            <th> #5 </th>
                            <td id="f5c1">
                                <?php
                                $sql = "select * from inventario where fila=5 AND columna=1";
                                $consulta = $db->prepare($sql);
                                $consulta->execute();
                                foreach ($consulta as $i) {
                                    echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                }
                                ?> </td>
                            <td id="f5c2">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=5 AND columna=2";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f5c3">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=5 AND columna=3";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f5c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=5 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>


                        </tr>
                        <tr>
                            <th> #4 </th>
                            <td id="f4c1">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=4 AND columna=1";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f4c2">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=4 AND columna=2";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f4c3">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=4 AND columna=3";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f4c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=4 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                        </tr>


                        <tr>
                            <th> #3 </th>
                            <td id="f3c1">
                                <ul> <?php
                                        $sql = "select * from inventario where fila=3 AND columna=1";
                                        $consulta = $db->prepare($sql);
                                        $consulta->execute();
                                        foreach ($consulta as $i) {
                                            echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                        }
                                        ?> </ul>
                            </td>
                            <td id="f3c2">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=3 AND columna=2";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f3c3">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=3 AND columna=3";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f3c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=3 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th> #2 </th>
                            <td id="f2c1">
                                <ul>

                                    <?php
                                    $sql = "select * from inventario where fila=2 AND columna=1";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>

                                </ul>
                            </td>
                            <td id="f2c2">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=2 AND columna=2";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f2c3">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=2 AND columna=3";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f2c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=2 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th>INFERIOR #1 </th>
                            <td id="f1c1">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=1 AND columna=1";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f1c2">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=1 AND columna=2";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f1c3">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=1 AND columna=3";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                            <td id="f1c4">
                                <ul>
                                    <?php
                                    $sql = "select * from inventario where fila=1 AND columna=4";
                                    $consulta = $db->prepare($sql);
                                    $consulta->execute();
                                    foreach ($consulta as $i) {
                                        echo "<li>" . $i['cantidad'] . " x " . $i['item'] . "</li>";
                                    }
                                    ?>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <?php pie() ?>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</body>

</html>