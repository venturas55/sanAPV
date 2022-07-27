<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <script src="./js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <script src="./js/npm.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
    <?php 
    session_start();
    include './funciones.php';
    include './seguridadAdmin.php';
    ?>

    <!-- CABECERA   -->
    <?php cabecera1() ?>

    <!-- CUERPO -->
    <div class="container-fluid" style="margin-top:90px;margin-bottom:60px;">

    <a href="./api.php?accion=modificacionBBDD" class="btn btn-primary btn-xs btn-block"> ModBBDD </a>
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-12" style="padding:20px">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr class="info-color-dark">
                            <th>Fecha</th>
                            <th> Usuario</th>
                            <th>Accion</th>
                            <th>Observacion</th>
                        </tr>

                        <?php
                        $db = conectaDb();
                        $consulta = "SELECT * FROM logs order by fecha desc limit 100";
                        $result = $db->prepare($consulta);
                        $result->execute();
                        if (!$result || $result->rowCount() == 0) {
                            echo "<p>Error en la consulta o sin resultados</p>\n";
                        } else {
                            foreach ($result as $i) {
                                echo "<tr class='table-warning'>  <td> $i[fecha] </td> <td>$i[usuario]</td>  <td>$i[accion]</td>   <td>$i[observacion]</td> </tr>\n";
                            }
                        }
                        $db = null;
                        ?>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <!-- FOOTER -->
    <?php pie() ?>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</body>

</html> 