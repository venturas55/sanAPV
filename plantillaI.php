<!DOCTYPE html>
<html lang="es">

<head>
    <title>Proyecto BBDD de SAN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <!-- <script src="./js/bootstrap.min.js"></script> -->
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <script src="./js/npm.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>

<body>
    <?php
    session_start();
    include_once 'funciones.php';
    $fila = recoge('fila');
    $columna = recoge('columna');  #Lo pasa a mayusculas la primera

    $db = conectaDb();
    ?>

    <!-- CABECERA -->
    <?php cabecera2('inventario') ?>

    <!-- id="cuerpo" -->
    <div class="container-fluid" style="margin-top:80px">
        <div class="row">
            <div class="col-12">
                <h1> Inventario en Fila <?php imprime($fila) ?> y Columna <?php imprime($columna) ?> </h1>
                <table class="table table-hover">
                    <tr class="info-color-dark">
                        <th>Id</th>
                        <th>Item</th>
                        <th>Cantidad</th>
                        <th>Descripcion</th>
                        <th>Borrar</th>
                    </tr>


                    <?php
                    $sql = "SELECT * FROM inventario  where fila=$fila AND columna=$columna";
                    $result = $db->prepare($sql);
                    $result->execute();
                    if ($result->rowCount() == 0) { } else {
                        foreach ($result as $i) {
                            echo "<tr  class='table-warning'><td> $i[id] </td>  <td> $i[item] </td> <td>$i[cantidad]</td>  <td>$i[descripcion]</td>";
                    
                            echo "<td> <a href=\"./borrarItem.php?id=$i[id]&fila=$i[fila]&columna=$i[columna]\" class=\"btn btn-primary btn-xs disabled btn-block\"> borrar </a> </td>       </tr>\n";
                        }
                    }

                    ?>

                    <form action="./addItem.php" method="post">
                        <input type="hidden" name="fila" value="<?php imprime($fila) ?>">
                        <input type="hidden" name="columna" value="<?php imprime($columna) ?>">
                        <tr class='table-warning'>
                            <td>#</td>
                            <td><input type="text" name="item" /></td>
                            <td><input type="text" name="cantidad" /></td>
                            <td><input type="text" name="descripcion" /></td>
                            <td colspan="2"> <input type="submit" value="añadir" class="btn btn-primary btn-xs btn-block" /></td>
                        </tr>
                    </form>


                </table>
            </div>
        </div>
    </div>

    <?php pie() ?>

</body>

</html>