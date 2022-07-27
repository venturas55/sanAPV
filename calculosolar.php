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
    <title>PLAN DE INSPECCIÓN DE LAS AYUDAS A LA NAVEGACIÓN </title>
</head>

<body class="opaco">
    <!-- CABECERA   -->
    <?php cabecera2('calculos') ?>

    <!-- CUERPO -->
    <div class="container-fluid">
        <div class="row" style="margin-top:60px" id="solar">
            <div class="col-md-5 calculos">
               
            </div>


            <div class="col-md-6 calculos">
              
            </div>

        </div>
    </div>
    <?php pie() ?>

    <script>
		var app = new Vue({
			el: "#solar",
			data: {
				valor: 47400,
				porcentaje: 80,
				interes: 2.2,
				anyos: 30,
				c_cuota: null,
				c_interesestotales: null,
				c_int: null,
				c_anyos: null,
				comparados: [],
				objeto: {
					hipoteca: null,
					interes: null,
					anyos: null,
					cuota: null,
					interesestotales: null,
				}

			},
			mounted: function() {

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
				guardar: function() {
					this.objeto = {
						hipoteca: this.hipoteca,
						interes: this.interes,
						anyos: this.anyos,
						cuota: this.cuota,
						interesestotales: this.interesestotales,
					};

					this.comparados.push(this.objeto);

					this.c_cuota = this.cuota;
					this.c_interesestotales = this.interesestotales;
					this.c_int = this.interes;
					this.c_anyos = this.anyos;

				}

			},
			computed: {
				hipoteca: function() {
					return this.valor * this.porcentaje / 100;
				},
				meses: function() {
					return this.anyos * 12;
				},
				interesmensual: function() {
					return (this.interes / 1200);
				},
				cuota: function() {
					return (this.interesmensual * this.hipoteca / (1 - Math.pow((1 + this.interesmensual), -(this.meses))));
				},
				interesestotales: function() {
					return this.cuota * this.meses - this.hipoteca;
				}
			}


		})
	</script>
	<style lang=css>
		@import "assets/css/main.css";



		@media only screen and (max-width: 600px) {


		}
	</style>
</body>

</html>