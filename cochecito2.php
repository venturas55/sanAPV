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


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <?php
    session_start();
    include 'funciones.php';
    $usuario = recogecookie('miusuario');
    ?>

    <!-- CABECERA   -->
    <?php cabecera2('cochecito') ?>

    <!-- CUERPO -->

    <div class="container-fluid" id="app">
        <!--  APP FICHAS -->
        <div>
            Select Kind: <select id="seleccion" v-model="seleccion">
                <option value="" selected="selected">Todo</option>


                <?php

                $db = conectaDb();


                //$consulta = "SET lc_time_names = 'es_ES'";
                $result = $db->prepare($consulta);
                $result->execute();


                $consulta = "SELECT distinct MONTHNAME(fecha) AS mesnombre, MONTH(fecha) as mes, YEAR(fecha) AS anyo FROM cochecito order by fecha desc";
                $result = $db->prepare($consulta);
                $result->execute();
                $tipos = $result->fetchAll();
                foreach ($tipos as $i)
                    echo '<option value="' .  $i['anyo'] . "-" . $i['mes'] . '">' . $i['mesnombre'] . " " . $i['anyo']   . '</option>';
                ?>

            </select>
            <button @click="mostrarListado()" class="btn btn-warning">Filtrar</button>
        </div>
        <div class="row">
            <div class="col-12">

                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr class="info-color-dark">
                            <th>Fecha</th>
                            <th>Hora Recogida </th>
                            <th>Motivo</th>
                            <th>Hora devolucion</th>
                            <th>Accion</th>
                        </tr>
                        <tr class='table-warning seleccion2' id='mostrar".$cont."' v-for="(item, index) in listado" @click="mostarModificar(item,index)">
                            <td> {{ item.fecha}} </td>
                            <td> {{ item.horaE}} </td>
                            <td> {{ item.motivo}} </td>
                            <td> {{ item.horaS}} </td>
                            <td> {{index}} </td>
                        </tr>
                    </table>
                    <form action="./modBBDDcochecito.php" method="post">
                        <table class="table table-hover">
                            <input type="hidden" name="usuario" value="<?php echo  $usuario; ?>">
                            <input type="hidden" name="accion" value="add">
                            <tr class='table-warning'>
                                <td><input type="date" name="fecha" id="fecha"/></td>
                                <td><input type="time" name="horaE" id="horaE"/></td>
                                <td><input type="text" name="motivo" id="motivo"/></td>
                                <td><input type="time" name="horaS" id="horaS"/></td>
                                <td colspan="2"><input type="submit" value="añadir" class="btn btn-primary btn-xs btn-block" /></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <?php pie() ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>

    <script>
        var app = new Vue({
            el: "#app",
            data: {
                nuevoItem: false,
                verEliminarItem: false,
                verModificarItem: false,
                verBorrar: false,
                idiomas: "",
                seleccion: "",
                ficha: "",
                listado: [],
                imagen: "",
            },
            mounted: function() {
                this.mostrarListado()
            },
            methods: {
                mostrarListado: function() {
                    let formdata = new FormData();
                    seleccion = this.seleccion;
                    formdata.append("seleccion", seleccion);
                    axios.post("./api.php?accion=mostrarListado", formdata)
                        .then(function(response) {
                            app.listado = response.data.respuesta
                            console.log(response)
                        })

                },
                insertarTienda: function() {
                    let formdata = new FormData();
                    formdata.append("nombre", document.getElementById("nombre").value)
                    formdata.append("ubicacion", document.getElementById("ubicacion").value)
                    formdata.append("observacion", document.getElementById("observacion").value)
                    axios.post("./api.php?accion=insertarTienda", formdata)
                        .then(function(response) {
                            console.log(response)
                        })
                    window.location.reload(true); //The parameter set to 'true' reloads a fresh copy from the server. Leaving it out will serve the page from cache.
                },
                mostarModificar: function(item,index){
                   // alert(item.fecha);
                    alert(index);
                    $("#filamodificar"+index).toggle();
                    
                }
            }
        })
    </script>

</body>

</html>