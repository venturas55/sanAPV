<?php
    session_start();
    include './funciones.php';
    include './seguridad.php';

    #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
    $nifnuevo = recoge('nifnuevo');
    $puerto = recoge('puerto');
    $num_internacional = recoge('num_internacional');
    $tipo = recoge('tipo');
    $apariencia = recoge('apariencia');
    $periodo = recoge('periodo');
    $caracteristica = recoge('caracteristica');
    $nombre = recogecookie('miusuario');

    if (privilegio() == 'admin' || privilegio() == 'san') {

        $db = conectaDb();

        if ($nifnuevo != $nif) {
            $sql = "UPDATE balizamiento set nif=\"$nifnuevo\",num_internacional=\"$num_internacional\", tipo=\"$tipo\",apariencia=\"$apariencia\",periodo=$periodo,caracteristica=\"$caracteristica\" where nif=\"$nif\"";
            $cambiar = true;
        } else {
            $sql = "UPDATE balizamiento set num_internacional=\"$num_internacional\", tipo=\"$tipo\",apariencia=\"$apariencia\",periodo=$periodo,caracteristica=\"$caracteristica\" where nif=\"$nif\"";
            $cambiar = false;
        }

        $consulta =  $db->prepare($sql);

        if ($consulta->execute()) {
            //Si la consulta ha ido bien, ya cambiamos nombre carpeta de fotos si hace falta
            if ($cambiar) {
                //RENOMBRAMOS LA CARPETA DONDE ESTÁN LAS FOTOS
                $carpetavieja = "./img/" . $nif;
                $carpetanueva = "./img/" . $nifnuevo;
                echo $carpetavieja . " => " . $carpetanueva;
                if (is_dir($carpetavieja))
                    rename($carpetavieja, $carpetanueva);
            }
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Modificacion Caracteristicas',\"$consultalog\")";
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Actualizacion exitosa. " . $sql . "\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al actualizar" . $sql . "\"); </script>";
        }
        $db = NULL;

        //echo "<script>window.history.go(-2);</script>";
        header("location: plantilla.php?nif=" . $nifnuevo . "&puerto=" . $puerto);
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
        echo "<script>window.history.go(-2);</script>";
    }
