<html>



<head> </head>



<body>

    <?php
     include 'funciones.php';
   #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
    $num_internacional = recoge('num_internacional');
    $tipo = recoge('tipo');
    $telecontrol = recoge('telecontrol');
    $apariencia = recoge('apariencia');
    $periodo = recoge('periodo');
    $caracteristica = recoge('caracteristica');
    $puerto = recoge('puerto');
    $num_local = recoge('num_local');
    $localizacion = recoge('localizacion');
    $latitud = recoge('latitud');
    $longitud = recoge('longitud');
    $foto = $_FILES['foto']['name'];
    $altura = recoge('altura');
    $elevacion = recoge('elevacion');
    $alcanceNom = recoge('alcanceNom');
    $linterna = recoge('linterna');
    $candelasCalc = recoge('candelasCalc');
    $alcanceLum = recoge('alcanceLum');
    $candelasInst = recoge('candelasInst');

    $partes = explode(".", $foto);
    $nombrearchivo = $nif . "." . $partes[1];


    
    #   HACEMOS EL INSERT EN LA TABLA BALIZAMIENTO
    $db = conectaDb();
    $consulta = "insert into balizamiento values('$nif','$num_internacional','$tipo','$telecontrol','$apariencia',$periodo,'$caracteristica')";
    if ($db->query($consulta)) {
        echo "<script type=\"text/javascript\"> alert(\"Datos del alta nueva realizada con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al insertar los datos del nuevo Balizamiento\"); </script>";
    }


    #   HACEMOS EL INSERT EN LA TABLA LOCALIZACION
    $consulta = "insert into localizacion values('$nif','$puerto',$num_local,'$localizacion','$latitud','$longitud')";
    if ($db->query($consulta)) {
        echo "<script type=\"text/javascript\"> alert(\"Localizacion del alta nueva realizada con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al insertar la localizacion del nuevo Balizamiento\"); </script>";
    }


    #   HACEMOS EL INSERT EN LA TABLA LAMPARA
    $consulta = "insert into lampara values('$nif',$altura,$elevacion,$alcanceNom,'$linterna',$candelasCalc,$alcanceLum,$candelasInst)";
    if ($db->query($consulta)) {
        echo "<script type=\"text/javascript\"> alert(\"Caracteristicas de la lampara del alta nueva realizada con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"Error al insertar las caracteristicas de la lampara del nuevo Balizamiento\"); </script>";
    }


    $db = null;

    #   HACEMOS EL INSERT DE LA FOTO
    # Si no existe la carpeta la creamos.
    $carpeta = "./img/" . $nif;
    if (!file_exists($carpeta))
        mkdir($carpeta, 0777, true);

    $dir_subida = $carpeta . "/";
    $rutacompleta = $dir_subida . $nombrearchivo;
    echo "ruta completa " . $rutacompleta;

    echo "<pre>";
    if (move_uploaded_file($_FILES['foto']['tmp_name'], $rutacompleta)) {
        echo "El fichero es válido y se subió con éxito.\n";
    } else {
        echo "¡Posible ataque de subida de ficheros!\n";
    }

    #echo 'Más información de depuración:';
    #print_r($_FILES);

    print "</pre>";



    ?>
    <a href=./san.php>Volver </a> </body> </html> 