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
    <?php 
    session_start();
    include 'funciones.php';
    $usuario=recogecookie('miusuario');
    ?>

    <!-- CABECERA   -->
    <?php cabecera2('cochecito') ?>

    <!-- CUERPO -->
    <div class="container-fluid" style="margin-top:90px;margin-bottom:60px;">
        <!-- id="cuerpo" -->
        
        <div class="row">
            <div class="col-12" style="padding:20px">
            
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr class="info-color-dark">
                            <th>Fecha</th>
                            <th>Hora Recogida </th>
                            <th>Motivo</th>
                            <th>Hora devolucion</th>
                            <th>Accion</th>
                        </tr>
                        

                        <?php
                        $db = conectaDb();
                        $consulta = "SELECT * FROM cochecito order by fecha desc";
                        $result = $db->prepare($consulta);
                        $result->execute();
                        if (!$result || $result->rowCount() == 0) {
                            echo "<p>Error en la consulta o sin resultados</p>\n";
                        } else {
                            
                            $cont=0;
                            foreach ($result as $i) {
                                echo "<tr class='table-warning seleccion2' id='mostrar".$cont."'>  
                                    <td id='fechain".$cont."'>$i[fecha]</td>
                                    <td id='horaEin".$cont."'>$i[horaE]</td>  
                                    <td id='motivoin".$cont."'>$i[motivo]</td>  
                                    <td id='horaSin".$cont."'>$i[horaS]</td>
                                    <td> <a href=\"./modBBDDcochecito.php?usuario=$i[usuario]&fecha=$i[fecha]&motivo=$i[motivo]&horaE=$i[horaE]&horaS=$i[horaS]&accion=del\" class=\"btn btn-primary btn-xs disabled btn-block\"> borrar </a> </td>
                                </tr>\n";

                                echo "<form action=\"./modBBDDcochecito.php\" method=\"post\">
                                            <input type=\"hidden\" name=\"accion\" value=\"mod\">
                                            <input type=\"hidden\" name=\"fecha\" value=\"$i[fecha]\">
                                            <input type=\"hidden\" name=\"usuario\" value=\"$usuario\">";
                                echo "<tr class='modificarnomostrar' id='filamodificar".$cont."' >  
                                    <td><input type='date' name='fechaout' id='fechaout".$cont."' value=\"$i[fecha]\"/> </td>
                                    <td><input type='time' name='horaEout' id='horaEout".$cont."' value=\"$i[horaE]\"/></td>
                                    <td><input type='text' name='motivoout' id='motivoout".$cont."' style='width: 100%;' value=\"$i[motivo]\"/></td>
                                    <td><input type='time' name='horaSout' id='horaSout".$cont." value=\"$i[horaS]\"'/></td>
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
                        
                        <form action="./modBBDDcochecito.php" method="post">
                        <input type="hidden" name="usuario" value="<?php echo  $usuario; ?>">
                        <input type="hidden" name="accion" value="add">
                        <tr class='table-warning'>
                            <td><input type="date" name="fecha" /></td>
                            <td><input type="time" name="horaE" /></td>
                            <td><input type="text" name="motivo" style="width: 100%;" /></td>
                            <td><input type="time" name="horaS" /></td>
                            <td colspan="2"><input type="submit" value="añadir" class="btn btn-primary btn-xs btn-block" /></td>
                        </tr>
                    </form>
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