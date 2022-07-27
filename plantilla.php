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
</head>

<body>
    <?php
    session_start();
    include 'funciones.php';
    $nif = recoge('nif');
    $puerto = recoge('puerto');  #Lo pasa a mayusculas la primera

    $db = conectaDb();
    ?>

    <!-- CABECERA -->
    <?php cabecera2('caracteristicas') ?>

    <!-- id="cuerpo" -->
    <div class="container-fluid">
    
        <!-- PRIMER DIV LA FOTO -->
        <div class="row" style="margin-top:100px">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <h1> Apariencia   </h1>
            <div id="luz"></div>
                <!-- id="divfoto" -->
                <div id="miCarrusel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ul class="carousel-indicators">

                        <?php
                        $contador = 0;
                        $directorio = opendir("./img/$nif"); //ruta de las fotos de la baliza
                        while ($archivo = readdir($directorio)) //obtenemos un archivo y luego otro sucesivamente
                        {
                            if ($archivo != "." && $archivo != "..") //verificamos si hay archivo
                            {
                                if ($contador == 0)
                                    echo "<li data-target='#miCarrusel' data-slide-to='$contador' class='active'></li>";
                                else
                                    echo "<li data-target='#miCarrusel' data-slide-to='$contador' ></li>";
                                $contador++;
                            } else {
                                //de ser un directorio lo envolvemos entre corchetes
                            }
                        }
                        ?>

                    </ul>
                    <div class="carousel-inner">
                        <?php
                        $contadorb = 0;
                        $hayfoto = false;
                        if (is_dir("./img/$nif")) {
                            $directorio = opendir("./img/$nif"); //ruta de las fotos de la baliza
                            while ($archivo = readdir($directorio)) //obtenemos un archivo y luego otro sucesivamente
                            {
                                if ($archivo != "." && $archivo != "..") //verificamos si hay archivo
                                {
                                    if ($contadorb == 0) {
                                        echo "<div class='carousel-item active'> <a href=\"./fotos.php?nif=" . $nif . "\"><img src=\"./img/$nif/" . $archivo . "\"> </a>";
                                        echo "<div class='carousel-caption'>" . $archivo . " </div> </div>";
                                        $hayfoto = true;
                                    } else {
                                        echo "<div class='carousel-item'>  <a href=\"./fotos.php?nif=" . $nif . "\"><img src=\"./img/$nif/" . $archivo . "\"> </a>";
                                        echo "<div class='carousel-caption'>" . $archivo . " </div> </div>";
                                    }
                                    $contadorb++;
                                }
                            }
                            if (!$hayfoto)
                                echo "FOTO N/A";
                        }
                        ?>

                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#miCarrusel" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#miCarrusel" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
                <form action="modBBDDfoto.php" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="nif" value="<?php echo $nif; ?>">
                    <input type="file" name="foto">
                    <input type="submit" value="Subir foto" class="btn btn-primary btn-xs btn-block" />
                </form>


            </div>


            <!-- SEGUNDO DIVS LA CARACTERISTICAS -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <h1> Caracteristicas </h1>
                <table class="table table-hover">
                    <?php
                    $consultabalizamiento = "SELECT * FROM balizamiento  where nif='$nif'";
                    $consultaobservaciones = "SELECT * FROM observaciones  where nif='$nif'";

                    $balizamiento = $db->prepare($consultabalizamiento);
                    $observaciones = $db->prepare($consultaobservaciones);
                    $balizamiento->execute();
                    $observaciones->execute();

                    if (!$balizamiento || !$observaciones) {
                        echo "<tr> <th>NIF</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th># Int</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Tipo</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Apariencia</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Periodo</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Caracteristica</th><td class='table-warning'> </td> </tr>";
                        echo "</table>";
                    } else {

                        foreach ($balizamiento as $i) {
                            $tipo = $i['tipo'];
                            echo "<tr> <th>NIF</th>     <td class='table-warning'>$i[nif]</td> </tr>";
                            echo "<tr> <th># Int</th>     <td class='table-warning'>$i[num_internacional]</td> </tr>";
                            echo "<tr> <th>Tipo</th>     <td class='table-warning'>$i[tipo]</td> </tr>";
                            echo "<tr> <th>Apariencia</th>     <td class='table-warning' id='aparienciaID'>$i[apariencia]</td> </tr>";
                            echo "<tr> <th>Periodo (s)</th>     <td class='table-warning'>$i[periodo]</td> </tr>";
                            echo "<tr> <th>Caracteristica</th>     <td class='table-warning' id='caracteristicaID'>$i[caracteristica]</td> </tr>";
                            echo "</table>";
                            echo "<a class=\"btn btn-primary btn-xs btn-block\" href=\"actualizarCaracteristicas.php?nif=" . $i['nif'] .
                                "&num_internacional=" . $i['num_internacional'] .
                                "&tipo=" . $i['tipo'] .
                                "&apariencia=" . $i['apariencia'] .
                                "&periodo=" . $i['periodo'] .
                                "&caracteristica=" . $i['caracteristica'] .
                                "&puerto=" . $puerto .
                                "\"" .
                                " class=\"btn btn-primary btn-lg btn-block\">ACTUALIZAR CARACTERISTICAS</a>";
                        }
                    }
                    ?>
            </div>

            <!-- TERCER DIV LA LOCALIZACION -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <!-- id="divlocalizacion" -->
                <h1> Localizacion </h1>
                <table class="table table-hover">
                    <?php
                    $consultalocalizacion = "SELECT * FROM localizacion  where nif='$nif'";
                    $localizacion = $db->prepare($consultalocalizacion);
                    $localizacion->execute();
                    if ($localizacion->rowCount() == 0) {
                        echo "<tr> <th>NIF</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Puerto</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th># Local</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Localizacion</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Latitud</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Longitud</th><td class='table-warning'> </td> </tr>";
                        echo "</table>";
                    } else {
                        foreach ($localizacion as $i) {
                            echo "<tr> <th>NIF</th>     <td class='table-warning'>$i[nif]</td> </tr>";
                            echo "<tr> <th>Puerto</th>     <td class='table-warning'>$i[puerto]</td> </tr>";
                            echo "<tr> <th># Local</th>     <td class='table-warning'>$i[num_local]</td> </tr>";
                            echo "<tr> <th>Localizacion</th>     <td class='table-warning'>$i[localizacion]</td> </tr>";
                            echo "<tr> <th>Latitud</th>     <td class='table-warning'>$i[latitud]</td> </tr>";
                            echo "<tr> <th>Longitud</th>     <td class='table-warning'>$i[longitud]</td> </tr>";
                            echo "</table>";
                            echo "<a class=\"btn btn-primary btn-xs btn-block\" href=\"actualizarLocalizacion.php?nif=" . $i['nif'] .
                                "&num_local=" . $i['num_local'] .
                                "&localizacion=" . $i['localizacion'] .
                                "&latitud=" . $i['latitud'] .
                                "&longitud=" . $i['longitud'] .
                                "&tipo=" . $tipo .
                                "&puerto=" . $i['puerto'] .
                                "\"" .
                                " class=\"btn btn-primary btn-lg btn-block\">ACTUALIZAR LOCALIZACION </a>";
                            echo "<a class=\"btn btn-primary btn-xs btn-block\" target=\"_blank\" onclick=\"window.open(this.href, this.target, 'width=600,height=600,top=200,left=200'); return false;\"  href=\"mapa.php?nif=" . $i['nif'] .
                                "&puerto=" . $i['puerto'] .
                                "&latitud=" . $i['latitud'] .
                                "&longitud=" . $i['longitud'] .
                                "\"" .
                                " class=\"btn btn-primary btn-lg btn-block\">VER UBICACION </a>";
                        }
                    }
                    ?>
            </div>

            <!-- CUARTO DIV LA LAMPARA -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <!-- id="divlocalizacion" -->
                <h1> Baliza </h1>
                <table class="table table-hover">
                    <?php
                    $consultalampara = "SELECT * FROM lampara where nif='$nif'";
                    $lampara = $db->prepare($consultalampara);
                    $lampara->execute();
                    if ($lampara->rowCount() == 0) {
                        echo "<tr> <th>Altura</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Elevacion</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Linterna</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Alcance Nominal</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Alcance Luminoso</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Candelas Calculadas</th><td class='table-warning'> </td> </tr>";
                        echo "<tr> <th>Candelas Instaladas</th><td class='table-warning'> </td> </tr>";
                        echo "</table>";
                        echo "<a class=\"btn btn-primary btn-xs btn-block\" href=\"actualizarLampara.php?nif=" . $nif .
                            "\" class=\"btn btn-primary btn-lg btn-block\">ACTUALIZAR LAMPARA </a>";
                    } else {
                        foreach ($lampara as $i) {
                            echo "<tr> <th>Altura(m)</th>     <td class='table-warning'>$i[altura]</td> </tr>";
                            echo "<tr> <th>Elevacion (m)</th>     <td class='table-warning'>$i[elevacion]</td> </tr>";
                            echo "<tr> <th>Linterna</th>     <td class='table-warning'>$i[linterna]</td> </tr>";
                            echo "<tr> <th>Alcance Nominal (MN)</th>     <td class='table-warning'>$i[alcanceNom]</td> </tr>";
                            echo "<tr> <th>Alcance Luminoso (MN)</th>     <td class='table-warning'>$i[alcanceLum]</td> </tr>";
                            echo "<tr> <th>Intensidad estacionaria (Cd)</th>     <td class='table-warning'>$i[candelasCalc]</td> </tr>";
                            echo "<tr> <th>Intensidad instalada (Cd)</th>     <td class='table-warning'>$i[candelasInst]</td> </tr>";
                            echo "</table>";
                            echo "<a class=\"btn btn-primary btn-xs btn-block\" href=\"actualizarLampara.php?nif=" . $i['nif'] .
                                "&altura=" . $i['altura'] .
                                "&elevacion=" . $i['elevacion'] .
                                "&linterna=" . $i['linterna'] .
                                "&alcancenom=" . $i['alcanceNom'] .
                                "&alcancelum=" . $i['alcanceLum'] .
                                "&candelascalc=" . $i['candelasCalc'] .
                                "&candelasinst=" . $i['candelasInst'] .
                                "&puerto=" . $puerto .
                                "\"" .
                                " class=\"btn btn-primary btn-lg btn-block\">ACTUALIZAR LAMPARA </a>";
                        }
                    }
                    ?>
            </div>
        </div>

        <div class="row" style="margin:60px">
            <!-- CUARTO DIV EL OBSERVACIONES -->
            <div class="col-sm-12">
                <h1> Observaciones </h1>

                <table class="table">
                    <tr>
                        <th>Observaciones</th>
                        <th>Borrar</th>
                    </tr>
                    <?php
                    $consultaobservaciones = "SELECT * FROM observaciones  where nif='$nif'";
                    $observaciones = $db->prepare($consultaobservaciones);
                    $observaciones->execute();
                    if (!$observaciones) {
                        echo "<p>Error en la consulta.</p>\n";
                    } else {
                        foreach ($observaciones as $i) {
                            echo "<tr class='table-warning'> <td>$i[observaciones]</td> <td> <a href=\"./borrarObservacion.php?nif=$i[nif]&observaciones=$i[observaciones]\" class=\"btn btn-primary btn-xs disabled btn-block\"> borrar </a> </td>  </tr>\n";;
                        }
                    }
                    #$db= NULL;
                    ?>
                    <form action="./modBBDDobservacion.php" method="post">
                        <input type="hidden" name="nif" value="<?php echo  $nif; ?>">
                        <input type="hidden" name="puerto" value="<?php echo  $puerto; ?>">
                        <tr class='table-warning'>
                            <td><input type="text" name="observacion" style="width: 100%;" /></td>
                            <td> <input type="submit" value="añadir" class="btn btn-primary btn-xs btn-block" /></td>
                        </tr>
                    </form>
                </table>
                <!-- <a href="./actualizarMantenimiento.php?nif= <?php echo $nif ?> "  class="boton1">AÑADIR MANTENIMIENTO </a> -->
            </div>
        </div>

        <div class="row" style="margin:60px">
            <!-- QUINTO DIV EL MANTENIMIENTO -->
            <div class="col-sm-12">
                <!-- id="divmantenimiento" -->
                <h1> Mantenimiento </h1>

                <table class="table">
                    <tr>

                        <th>Fecha</th>
                        <th>Descripcion</th>
                        <th>Borrar</th>
                    </tr>
                    <?php
                    $consultamantenimiento = "SELECT * FROM mantenimiento  where nif='$nif' order by fecha DESC";
                    $mantenimiento = $db->prepare($consultamantenimiento);
                    $mantenimiento->execute();
                    if (!$mantenimiento) {
                        echo "<p>Error en la consulta.</p>\n";
                    } else {
                        $cont = 0;
                        foreach ($mantenimiento as $i) {
                            echo "<tr class='table-warning seleccion2' id='mostrar" . $cont . "'> <td>$i[fecha]</td> <td>$i[mantenimiento]</td> <td> <a href=\"./modBBDDmantenimiento.php?nif=$i[nif]&fecha=$i[fecha]&mantenimiento=$i[mantenimiento]&accion=del\" class=\"btn btn-primary btn-xs disabled btn-block\"> borrar </a> </td>  </tr>\n";
                            //echo "<tr class='table-warning seleccion2' id='mostrar" . $cont . "'> <td>$i[fecha]</td> <td>$i[mantenimiento]</td> <td> <a @click=\"mostrar\" class=\"btn btn-primary btn-xs disabled btn-block\"> borrar </a> </td>  </tr>\n";
                            echo "<form action=\"./modBBDDmantenimiento.php\" method=\"post\">
                            <input type=\"hidden\" name=\"nif\" value=\"$nif\">
                            <input type=\"hidden\" name=\"accion\" value=\"mod\">
                            <input type=\"hidden\" name=\"fecha\" value=\"$i[fecha]\">
                            <input type=\"hidden\" name=\"mantenimiento\" value=\"$i[mantenimiento]\">";
                            echo "<tr class='modificarnomostrar' id='filamodificar" . $cont . "' >  
                                    <td><input type='date' name='fechaout' id='fechaout" . $cont . "' value=\"$i[fecha]\"/> </td>
                                    <td><input type='text' name='mantenimientoout' id='mantenimientoout" . $cont . "' style='width: 100%;' value=\"$i[mantenimiento]\"/></td>
                                    <td> 
                                        <input type=\"submit\" value=\"modificar\" class=\"btn btn-warning btn-lg btn-block disabled\"/>
                                    </td> 
                                 </tr>\n";
                            echo "</form>";
                            $cont++;
                        }
                    }
                    $db = null;
                    ?>
                    <form action="./modBBDDmantenimiento.php" method="post">
                        <input type="hidden" name="accion" value="add">
                        <input type="hidden" name="nif" value="<?php echo  $nif; ?>">
                        <input type="hidden" name="puerto" value="<?php imprime($puerto); ?>">
                        <tr class='table-warning'>
                            <td><input type="date" name="fecha" /></td>
                            <td><input type="text" name="mantenimiento" style="width: 100%;" /></td>
                            <td> <input type="submit" value="añadir" class="btn btn-primary btn-xs btn-block" /></td>
                        </tr>
                    </form>
                </table>
                <!-- <a href="./actualizarMantenimiento.php?nif= <?php echo $nif ?> "  class="boton1">AÑADIR MANTENIMIENTO </a> -->
            </div>
        </div>
        <br>

        <div class="row" style="margin:0px auto 70px 40%">
            <div class="col-sm-12">
                <?php
                if (isset($_SESSION['miprivilegio']))
                    if ($_SESSION['miprivilegio'] == "admin")
                        echo " <div class=\"row\">
                            <div id=\"divmenubotones\">
                                    <form action=\"./borrarBalizamiento.php\" method=\"post\">
                                        <input type=\"hidden\" name=\"nif\" value=\"" . $nif . "\">
                                        <input type=\"submit\" value=\"Eliminar Balizamiento\" class=\"btn btn-danger btn-lg btn-block disabled\"/>
                                    </form>
                            </div>
                        
                    </div>";
                ?>


            </div>
        </div>

    </div>

    <?php pie() ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="./js/main.js"></script>
    <script src="./js/parpadeo.js"></script>
</body>

</html>