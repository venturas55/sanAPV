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
    <link type="text/css" href="./css/style.css" rel="stylesheet" media="screen" />
    <script src="./js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.js"></script>
    <title>CALCULOS ALCANCE </title>
</head>

<body class="opaco">
    <!-- CABECERA   -->
    <?php cabecera2('calculos') ?>

    <!-- CUERPO -->
    <div class="container-fluid">
        <div class="row" style="margin:80px 0px">

            <div class="col-5 calculos" id="coordenadas">
                <h1> I. COORDENADAS</h1>

                <div class="uno">
                    <h3>DECIMAL A WGS-84</h3>
                    <p>Coordenada en decimal <input type="text" v-model="decimal1" placeholder="GG.mmmmmmm"></p>
                    <p class="resultado">{{resultado1}}</p>
                    <p>{{error1}}</p>
                    <p v-if="bul==true">Errorcito bul</p>
                </div>

                <div class="dos">
                    <h3>WGS-84 A DECIMAL</h3>
                    <p>Coordenada en wgs-84 <input type="text" v-model="wgs2" placeholder="GGº MM.mmm'"></p>
                    <p class="resultado">{{resultado2}}</p>
                    <p>{{error2}}</p>
                </div>

                <div class="tres">
                    <h3>UTM A WGS-84</h3>
                    <p>Coordenada en UTM <input type="text" v-model="wgs3" placeholder="GG° MM' SS.sss&quot; N"></p>
                    <p class="resultado">{{resultado3}}</p>
                    <p>{{error3}}</p>
                </div>
                <br>
            </div>


            <div class="col-6 calculos" id="alcances">
                <h1> II. ALCANCES
                    <!-- <button id="btncuatro" class="btn btn-warning" v-on:click="calcularAlcance">Calcular</button> -->
                </h1>


                <div class="uno">
                    <p> ALCANCE LUMINOSO MINIMO: <input type="number" placeholder="millas nauticas" v-model="alcance" size="2"> Millas Nauticas </p>
                </div>

                <div class="dos">
                    <p> ZONA DE ESTUDIO <select name="visibilidad" v-model="visibilidad">
                            <option value="8.172">Mediterraneo-Baleares</option>
                            <option value="6.246">Cantabrico-Galia</option>
                            <option value="7.469">Huelva-Cadiz</option>
                            <option value="6.839">Sevilla</option>
                            <option value="5.76">Ceuta</option>
                            <option value="11.699">Canarias</option>
                        </select>
                        Visibilidad= <span>{{visibilidad}}</span>
                    </p>

                    <p> FUENTE AZUL: <select name="azul" v-model="azul">
                            <option value="si">Si</option>
                            <option value="no">No</option>
                        </select> </p>

                    <p> TIPO DE SEÑAL: <select name="tipo" v-model="tipo">
                            <option value="Nocturna">Nocturna</option>
                            <option value="Diurna">Diurna</option>
                            <option value="Enfilacion">Enfilacion</option>
                        </select> a=<span id="a"> {{a}} </span> </p>
                    <p> LUMINANCIA DE FONDO: <select name="fondo" v-model="fondo">
                            <option value="Ninguna">Ninguna</option>
                            <option value="Poca">Poca</option>
                            <option value="Considerable">Considerable</option>
                        </select> Umbral= <span> {{umbral}}</span> </p>
                    <p> DURACION DEL MENOR DESTELLO: <input type="number" v-model="destello" value="0.5" size="4"> </p>
                </div>

                <div class="tres">
                    <p> FACTOR DE SERVICIO: <input type="text" v-model="coef1" size="1"></p>
                    <p> FACTOR DE ACRISTALAMIENTO: <input type="text" v-model="coef2" size="1"></p>
                    <p> FACTOR DE LUMINANCIA DE FONDO: <input type="text" v-model="coef3" size="1"></p>
                </div>

                <div class="cuatro">
                    <p> INTENSIDAD DE CALCULO: <span class="resultado"> {{Icalculo}} </span> Cd </p>
                    <p> INTENSIDAD DE EFICAZ:<span class="resultado">{{Ieficaz}}</span> Cd</p>
                    <p> INTENSIDAD DE ESTACIONARIA:<span class="resultado"> {{Iestacionaria}}</span> Cd</p>
                </div>
                <br><br><br>
                <i> Calculos basados en la recomendacion E-200 series IALA</i>
            </div>

        </div>
    </div>
    <?php pie() ?>

    <script>
        var app = new Vue({
            el: "#alcances",
            data: {
                alcance: 5,
                visibilidad: 8.172,
                tipo: "Nocturna",
                fondo: "Ninguna",
                umbral1: null,
                destello: "0.5",
                coef1: "0.7",
                coef2: "1",
                coef3: "1",
                azul: "no",



            },
            mounted: function() {
                this.calcularAlcance();
            },
            filters: {
                redondeo2: function(value) {
                    if (value != null)
                        return value.toFixed(2);
                },
                redondeo6: function(value) {
                    if (value != null)
                        return value.toFixed(6);
                }

            },
            methods: {
                calcularAlcance: function() {
                    this.coef1 = parseFloat(this.coef1);
                    this.coef2 = parseFloat(this.coef2);
                    this.coef3 = parseFloat(this.coef3);
                    this.visibilidad = parseFloat(this.visibilidad);
                    if (this.tipo == 3)
                        a = 0.2;
                    else
                        a = 0.1;


                    if (isNaN(this.alcance))
                        alert("calcularAlcance no es un numero");
                    else
                        this.alcance = parseFloat(this.alcance);

                    if (isNaN(this.destello))
                        alert("introduzca como destello un numero");
                    else
                        this.destello = parseFloat(this.destello);

                    switch (this.tipo) {
                        case "Nocturna":
                            switch (this.fondo) {
                                case "Ninguna":
                                    this.umbral1 = 0.0000002;
                                    break;
                                case "Poca":
                                    this.umbral1 = 0.000002;
                                    break;
                                case "Considerable":
                                    this.umbral1 = 0.00002;
                                    break;
                            }
                            break;

                        case "Diurna":
                            this.umbral1 = 0.001;
                            break;

                        case "Enfilacion":
                            switch (this.visibilidad) {
                                case 6.246:
                                    this.visibilidad = 3.888;
                                    break;
                                case 7.469:
                                    this.visibilidad = 5.22;
                                    break;
                                case 6.839:
                                    this.visibilidad = 4.68;
                                    break;
                                case 5.76:
                                    this.visibilidad = 3.78;
                                    break;
                                case 8.172:
                                    this.visibilidad = 5.775;
                                    break;
                                case 11.699:
                                    this.visibilidad = 8.549;
                                    break;
                                    /*     <!-- 
                                        para ENFILACIONES
                                                            <option value="3.888">Cantabrico-Galia</option>
                                                            <option value="5.22">Huelva-Cadiz</option>
                                                            <option value="4.68">Sevilla</option>
                                                            <option value="3.78">Ceuta</option>
                                                            <option value="5.775">Mediterraneo-Baleares</option>
                                                            <option value="8.549">Canarias</option>
                                        --> */
                            }

                            switch (this.fondo) {
                                case "Ninguna":
                                    this.umbral1 = 0.000001;

                                    break;
                                case "Poca":
                                    this.umbral1 = 0.00001;
                                    break;
                                case "Considerable":
                                    this.umbral1 = 0.0001;
                                    break;
                            }
                            break;
                    }

                },
            },
            computed: {
                umbral: function() {
                    switch (this.tipo) {
                        case "Nocturna":
                            switch (this.fondo) {
                                case "Ninguna":
                                    return 0.0000002;
                                    break;
                                case "Poca":
                                    return 0.000002;
                                    break;
                                case "Considerable":
                                    return 0.00002;
                                    break;
                            }
                            break;

                        case "Diurna":
                            return 0.001;
                            break;

                        case "Enfilacion":
                            switch (this.fondo) {
                                case "Ninguna":
                                    return 0.000001;

                                    break;
                                case "Poca":
                                    return 0.00001;
                                    break;
                                case "Considerable":
                                    return 0.0001;
                                    break;
                            }
                            break;
                    }
                },
                a: function() {
                    if (this.azul == "si" && this.tipo == "Enfilacion")
                        return 0.2;
                    else
                        return 0.1;
                },
                Icalculo: function() {
                    return (3430000 * this.alcance * this.alcance * this.umbral * Math.pow(0.05, ((-1) * this.alcance / this.visibilidad))).toFixed(1);
                },
                Ieficaz: function() {
                    return (this.Icalculo / this.coef1 / this.coef2 / this.coef3).toFixed(1);
                },
                Iestacionaria: function() {
                    return (this.Ieficaz * (parseFloat(this.destello) + this.a) / this.destello).toFixed(1);
                },
            }


        });


        var app2 = new Vue({
            el: "#coordenadas",
            data: {

                decimal1: "39.65525",
                wgs2: "39º 55.345", //GGº MM.mmm'
                wgs3: "39º 52' 25\" N", //GG° MM' SS.sss&quot; N"
                decimal11: null,
                error1: "no error",
                error2: null,
                error3: null,
                bul: false,
                caracteristica: "",
                destellos: "",
                destellosAcum: "",

            },

            filters: {
                redondeo2: function(value) {
                    if (value != null)
                        return value.toFixed(2);
                },
                redondeo6: function(value) {
                    if (value != null)
                        return value.toFixed(6);
                }

            },
            methods: {
                dormir: function(milliseconds) {
                    var start = new Date().getTime();
                    for (var i = 0; i < 1e7; i++) {
                        if ((new Date().getTime() - start) > milliseconds) {
                            break;
                        }
                    }
                },
            },
            computed: {

                resultado1: function() {
                    this.bul = "false";
                    this.error1 = "";
                    this.decimal11 = parseFloat(this.decimal1);
                    if (isNaN(this.decimal1)) {
                        this.error1 = "Introduzca grados en formato decimal GG.gggg";
                        this.bul = "true";
                    } else {
                        var decarray = this.decimal1.split(".");
                        if (decarray.length == 2)
                            var decimales = parseFloat("0." + decarray[1]) * 60;
                        else
                            this.error1 = "Introduzca gradosen formato decimal GG.gggg";
                    }
                    return decarray[0] + "º " + decimales.toFixed(3) + "'";
                },
                resultado2: function() {
                    this.error2 = "";
                    var utmarray = this.wgs2.split(" ");

                    var gradosar = utmarray[0].split("º");
                    var minsar = utmarray[1].split(".");
                    var milar = minsar[1].split("'");
                    if (isNaN(gradosar[0]) || isNaN(minsar[0]) || isNaN(milar[0]))
                        this.error2 = "Introduzca grados y minutos GGº MM.mmm";
                    else {
                        var grad = parseFloat(gradosar[0]);
                        var min = parseFloat(minsar[0]);
                        var mil = parseFloat(milar[0]);
                    }

                    var decimal = grad + (min + mil / 1000) / 60;

                    return decimal.toFixed(6);
                },
                resultado3: function() {
                    this.error3 = "";
                    var utm = this.wgs3;
                    var utmarray = utm.split(/\º|\'|\"|\°/g);

                    if (isNaN(utmarray[0]) || isNaN(utmarray[1]) || isNaN(utmarray[2]))
                        this.error3 = "Introduzca grados minutos y segundos GGº MM' ss\"";
                    else {
                        var grados = parseFloat(utmarray[0]);
                        var min = parseFloat(utmarray[1]);
                        var seg = parseFloat(utmarray[2]);
                    }
                    var minf = min + seg / 60;
                    minf = minf.toFixed(3);
                    var decimal = grados + "º " + minf + "'";

                    return decimal;
                },
            },
            mounted: function() {
            },

        });
    </script>

    <style lang=css>
        @media only screen and (max-width: 600px) {}
    </style>
</body>

</html>