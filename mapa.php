<!DOCTYPE html>
<html>
<?php
session_start();
include_once 'funciones.php';
$nif = recoge('nif');
$puerto = recoge('puerto');
$latitud = recoge('latitud');
$longitud = recoge('longitud');

$db = conectaDb();
?>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Ubicación del AtoN con NIF: <?php echo $nif ?></title>
  <script src="./js/mapa.js" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="./css/mapa.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<body>

   <input type="text" value="<?php echo $latitud ?>" id="lat" size="9" />
   <input type="text" value="<?php echo $longitud ?>" id="lng" size="9" />

  <div id="map"></div>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbO0Ka8PZk0SPk1vmhjg_4-6sSmgeDhkA&callback=initMap"></script>
</body>

</html>