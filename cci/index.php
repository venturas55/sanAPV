<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <script src="./js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <script src="./js/npm.js"></script>
    <title>Proyecto BBDD de SAN</title>
</head>

<body>
    <?php 

    include 'funciones.php';
     ?>

    <!-- CABECERA   -->
    <nav class="navbar fixed-top navbar-dark bg-primary navbar-expand-lg navbar-template">
        <a class="navbar-brand" target="_blank" href="https://www.valenciaport.com/"><img src="./img/images/logo-valenciaport-home.svg" /></a>
        <h1>Pruebas</h1>
        <div class="d-flex flex-row order-2 order-lg-3">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse order-3 order-lg-2" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                              <li class="nav-item"><a class="nav-link" href="./index.php" class="btn btn-success btn-sm">
                        <button type="button" class="btn btn-success btn-sm"> CAMBIAR DE PUERTO</button>
                    </a></li>
                <li class="nav-item"><a class="nav-link" href="./altaBalizamiento.php" class="btn btn-success btn-sm">
                        <button type="button" class="btn btn-success btn-sm"> ALTA NUEVA</button>
                    </a></li>
            </ul>
        </div>
    </nav>

    <!-- CUERPO -->
    <div class="container-fluid" style="margin-top:100px">
        <!-- id="cuerpo" -->
        <div class="row">
            <div class="col-12" style="margin:60px">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr class="info-color-dark">
                            <th>ID</th>
                            <th>PR NOMBRE</th>
            
                        </tr>

                        <?php
                        $db = conectaDb();
                        $consulta = "SELECT * FROM PR_PUERTOS";
                        $result = $db->prepare($consulta);
                        $result->execute();
                        if (!$result || $result->rowCount() == 0) {
                            echo "<p>Error en la consulta o sin resultados</p>\n";
                        } else {
                            foreach ($result as $i) {
                                echo "<tr  class='table-warning seleccion'>  <td> $i[PR_IDPUERTO] </td> <td>$i[PR_NOMBRE]</td>     </tr>\n";
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
    <nav class="navbar fixed-bottom navbar-light bg-primary footer" style="margin-top:60px">
        <div>
            <p>Autoridad Portuaria de Valencia. Adrian de Haro © 2018 · Todos los derechos reservados</p>
        </div>
    </nav>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</body>

</html> 