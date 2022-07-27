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
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
<?php $puerto = ucwords($_GET['puerto']);  #Lo pasa a mayusculas la primera
?>

    <!-- CABECERA   -->
    <?php cabecera1() ?>

    <!-- CUERPO -->
    <div class="container-fluid" style="margin-top:90px;margin-bottom:60px;">
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-12" style="padding:20px">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr class="info-color-dark">
                        <th>#</th>
                            <th>NIF</th>
                            <th>Num. Internacional</th>
                            <th>Tipo</th>
                            <th>Apariencia</th>
                            <th>Periodo</th>
                            <th>Caracteristica</th>
                        </tr>

                        <?php
                        $db = conectaDb();
                        if ($puerto != 'Externo') {
                            $consulta = "SELECT * FROM balizamiento b, localizacion l where b.nif=l.nif AND l.puerto like '%$puerto%' order by l.nif";
                        } else {
                            $consulta = "SELECT * FROM balizamiento b, localizacion l where b.nif=l.nif AND l.puerto not like '%valencia%' and l.puerto not like '%sagunto%' and l.puerto not like '%gandia%' order by l.nif";
                        }
                        $result = $db->prepare($consulta);
                        $result->execute();
                        if (!$result || $result->rowCount() == 0) {
                            echo "<p>Error en la consulta o sin resultados</p>\n";
                        } else {
                            $cont=1;
                            foreach ($result as $i) {
                                echo "<tr  class='table-warning seleccion'>  <td> $cont </td> <td> $i[nif] </td> <td>$i[num_internacional]</td>  <td>$i[tipo]</td>   <td>$i[apariencia]</td> <td>$i[periodo]</td> <td>$i[caracteristica]</td>    </tr>\n";
                           $cont++;
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