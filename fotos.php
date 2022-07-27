<!DOCTYPE html>
<html lang="es">

<head>
    <title>Proyecto BBDD de SAN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <script src="./js/main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>
    <?php
    session_start();
    include_once 'funciones.php';
    $nif = recoge('nif');
    ?>

    <!-- CABECERA -->
    <?php cabecera2('fotos') ?>

    <!-- id="cuerpo" -->
    <div class="container-fluid">
        <div class="row" style="margin-top:100px">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1>BORRADO DE FOTOS</h1>

                <table class="table">
                    <tr>
                    <th>nombre</th>
                        <th>IMAGEN</th>
                        <th>accion</th>
                    </tr>

                    <?php
                    $contador = 0;
                    $hayfoto = false;
                    $carpeta="./img/".$nif;
                    $directorio = opendir("./img/$nif"); //ruta de las fotos de la baliza
                    while ($archivo = readdir($directorio)) //obtenemos un archivo y luego otro sucesivamente
                    {
                        if ($archivo != "." && $archivo != "..") //verificamos si hay archivo
                        {
                            echo "<tr> <td> <p>" . $archivo  . " </p>  </td>  <td> <a href='./img/".$nif."/".$archivo."' target='_blank'> <img src='./img/$nif/" . $archivo . "'>  </a> </td>  <td> ";
                            if (privilegio() == "admin")
                                echo "<a href='borrado_foto.php?carpeta=".$carpeta."&archivo=".$archivo ."' type='button' class='btn btn-warning btn-sm'> Borrar  </a>";
                            echo "</td> </tr>";
                            $hayfoto = true;
                            $contador++;
                        }
                    }
                    if (!$hayfoto)
                        echo "FOTO N/A";
                    ?>

                </table>
            </div>
        </div>
    </div>

    <?php pie() ?>
</body>

</html>