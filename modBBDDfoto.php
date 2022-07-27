<?php
            include './seguridad.php';
            include './funciones.php';
            echo '<pre>';
            print_r($_FILES);
            $sistema=strtoupper(substr(PHP_OS, 0, 3));
            #En la consulta no se puede usar $_REQUEST , no funciona...
            $nif=recoge('nif');
            
            # Si no existe la carpeta la creamos.
            $carpeta= "./img/".$nif;
            if(!file_exists($carpeta))
                    mkdir($carpeta,0777,TRUE);
            
            #PREPARAMOS LAS VARIABLES PARA LAS RUTAS...
            $foto=$_FILES['foto']['name'];
            $partes=explode(".",$foto);
            $nombrearchivo=$nif.".".$partes[1];
            echo "NIF: ".$nif;
            echo "Nombre completo foto: ".$foto."\n";
            echo "extension: ".$partes[1]."\n";
            echo "Nombre fichero: ".$nombrearchivo."\n";
            echo "Nombre temporal files: ".$_FILES['foto']['tmp_name']."\n";


            #   HACEMOS EL INSERT DE LA FOTO (Parece que si que sobreescribe)
            
            if (move_uploaded_file($_FILES['foto']['tmp_name'], "./img/".$nif."/".$foto)) {
                echo "<script type=\"text/javascript\"> alert(\"El fichero es válido y se subió con exito\"); </script>";
            } else {
                echo "<script type=\"text/javascript\"> alert(\"¡Posible ataque de subida de ficheros!\"); </script>";
            }
            echo "<script>window.history.go(-1);</script>";
            echo '</pre>';
            #echo 'Más información de depuración:';
            #print_r($_FILES);
?>
<html>
<head> </head>
<body>

<p>volver <a href="./plantilla.php?nif=<?php echo $nif ?>"> atras </a> </p>
</body>
</html>
