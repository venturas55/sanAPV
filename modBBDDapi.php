<?php
session_start();
include './funciones.php';
include './seguridad.php';

$accion = recoge('accion');

switch ($accion) {

    case 'modBBDD':
        modificarBBDD();
        break;
    case 'contrasena':
        contrasena();
        break;
    case 'obtenerBackup':
        obtenerBackup();
        break;
    case 'caracteristicas':
        caracteristicas();
        break;
    case 'foto':
        foto();
        break;
    case 'lampara':
        lampara();
        break;
    case 'localizacion':
        localizacion();
        break;
    case 'mantenimiento':
        mantenimiento();
        break;
    case 'observacion':
        observacion();
        break;
    case 'mantenimiento':
        mantenimiento();
        break;
}



function caracteristicas()
{

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
}

function foto()
{
    //    print_r($_FILES);
    $sistema = strtoupper(substr(PHP_OS, 0, 3));
    #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
    # Si no existe la carpeta la creamos.
    $carpeta = "./img/" . $nif;
    if (!file_exists($carpeta))
        mkdir($carpeta, 0777, TRUE);

    #PREPARAMOS LAS VARIABLES PARA LAS RUTAS...
    $foto = $_FILES['foto']['name'];
    $partes = explode(".", $foto);
    $nombrearchivo = $nif . "." . $partes[1];
    echo "NIF: " . $nif;
    echo "Nombre completo foto: " . $foto . "\n";
    echo "extension: " . $partes[1] . "\n";
    echo "Nombre fichero: " . $nombrearchivo . "\n";
    echo "Nombre temporal files: " . $_FILES['foto']['tmp_name'] . "\n";


    #   HACEMOS EL INSERT DE LA FOTO (Parece que si que sobreescribe)

    if (move_uploaded_file($_FILES['foto']['tmp_name'], "./img/" . $nif . "/" . $foto)) {
        echo "<script type=\"text/javascript\"> alert(\"El fichero es válido y se subió con exito\"); </script>";
    } else {
        echo "<script type=\"text/javascript\"> alert(\"¡Posible ataque de subida de ficheros!\"); </script>";
    }
    echo "<script>window.history.go(-1);</script>";
    #print_r($_FILES);
}

function lampara()
{
    #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
    $usuario = recogecookie('miusuario');
    $puerto = recoge('puerto');
    $altura = recoge('altura');
    $elevacion = recoge('elevacion');
    $alcancenom = recoge('alcancenom');
    $alcancelum = recoge('alcancelum');
    $linterna = recoge('linterna');
    $candelascalc = recoge('candelascalc');
    $candelasinst = recoge('candelasinst');


    if (privilegio() == 'admin' || privilegio() == 'san') {
        $db = conectaDb();
        $sql = "UPDATE lampara set altura=$altura, elevacion=$elevacion,alcanceNom=$alcancenom,alcanceLum=$alcancelum,linterna=\"$linterna\",candelasCalc=$candelascalc, candelasInst=$candelasinst where nif=\"$nif\"";
        #A LA CONSOLA!
        $consulta =  $db->prepare($sql);
        $todoBien = $consulta->execute();

        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

        if ($todoBien && $consulta->rowCount() > 0) {
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Modificacion lampara',\"$consultalog\")";
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Actualizacion exitosa\"); </script>";
        } else {
            $sql3 = "insert into lampara values('$nif',0,0,0,'0',0,0,0)";
            $consulta3 =  $db->prepare($sql3);
            $consulta3->execute();
            echo $sql3 . "<br>";
        }
        $db = NULL;
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    }
    echo "<script>window.history.go(-2);</script>";
}

function localizacion()
{
    $usuario = recogecookie('miusuario');
    #En la consulta no se puede usar $_REQUEST , no funciona...
    $puerto = recoge('puerto');
    $num_local = recoge('num_local');
    $nif = recoge('nif');
    $localizacion = recoge('localizacion');
    $longitud = recoge('longitud');
    $latitud = recoge('latitud');

    if (privilegio() == 'admin' || privilegio() == 'san') {

        $db = conectaDb();
        $consulta = "UPDATE localizacion set puerto=\"$puerto\", num_local=$num_local,localizacion=\"$localizacion\",latitud=\"$latitud\",longitud=\"$longitud\" where nif=\"$nif\"";
        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

        if ($db->query($consulta)) {
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Modificacion Localizacion',\"$consultalog\")";
            //echo $sql2;
            $consulta2 =  $db->prepare($sql2);
            if ($consulta2->execute())
                echo "Insertado en log exitoso";
            else
                echo "No se ha insertado en log";
            echo "<script type=\"text/javascript\"> alert(\"Actualizacion exitosa\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al actualizar\"); </script>";
        }
        $db = NULL;
        echo "<script>window.history.go(-2);</script>";
        //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
        echo "<script>window.history.go(-2);</script>";
    }
}

function mantenimiento()
{
    $accion2 = recoge('accion2');
    $nif = recoge('nif');
    $fecha = recoge('fecha');
    $mantenimiento = recoge('mantenimiento');
    $mantenimiento = preg_replace('@\x{FFFD}@u', '_', $mantenimiento); //Se sustituyen los 'replacement characters por '_', que ademas sirve como comodin en las consultas mysql
    $puerto = recoge('puerto');
    $usuario = recogecookie('miusuario');
    $privilegio = recogecookie('miprivilegio');

    if (privilegio() == 'admin' || privilegio() == 'san') {

        $db = conectaDb();
        switch ($accion2) {
            case 'add':

                $consulta = "insert into mantenimiento values('$nif','$fecha','$mantenimiento')";
                #se ejecuta la consulta
                if ($db->query($consulta)) {
                    //logeamos la accion2 en logs y en la ta tabla eliminados
                    $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
                    $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiento añadido',\"$consultalog\")";
                    //echo $sql2;
                    $consulta2 =  $db->prepare($sql2);
                    $consulta2->execute();
                    echo "<script type=\"text/javascript\"> alert(\"Mantenimiento añadido con exito\"); </script>";
                } else {
                    echo "<script type=\"text/javascript\"> alert(\"Error al añadir operación\"); </script>";
                }
                $db = null; # se cierra la conexión.

                #A LA CONSOLA!
                echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
                break;
            case 'del':
                $consulta = "delete from mantenimiento where nif='$nif' AND fecha='$fecha' AND mantenimiento LIKE '%$mantenimiento%'";

                #A LA CONSOLA!
                echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

                if ($db->query($consulta)) {
                    //logeamos la accion2 en logs y en la ta tabla eliminados
                    $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiendo borrado',\"$consulta\")";
                    $consulta2 =  $db->prepare($sql2);
                    $consulta2->execute();
                    echo "<script type=\"text/javascript\"> alert(\"Mantenimiento Borrado con exito\"); </script>";
                } else {
                    echo "<script type=\"text/javascript\"> alert(\"Error al intentar borrar la operacion de mantenimiento\"); </script>";
                }
                #A LA CONSOLA!
                echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
                break;
            case 'mod':
                //print_r($_REQUEST);
                $fechaout = recoge('fechaout');
                $mantenimientoout = recoge('mantenimientoout');
                $mantenimientoout = preg_replace('@\x{FFFD}@u', '_', $mantenimientoout); //reemplazar todos los caracteres desconocidos por barra baja
                //imprime($fechaout);
                // imprime($mantenimientoout);
                $consulta = "update mantenimiento set fecha='$fechaout', mantenimiento='$mantenimientoout' where nif='$nif' AND fecha='$fecha' AND mantenimiento LIKE '%$mantenimiento%'";
                imprime($consulta);
                if ($db->query($consulta)) {
                    //logeamos la accion2 en logs y en la ta tabla eliminados
                    $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
                    $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Mantenimiento modificado en balida NIF=$nif,\"$consultalog\")";
                    //echo $sql2;
                    $consulta2 =  $db->prepare($sql2);
                    $consulta2->execute();
                    echo "<script type=\"text/javascript\"> alert(\"Mantenimiento modificado con exito\"); </script>";
                } else {
                    echo "<script type=\"text/javascript\"> alert(\"Error al modificadar mantenimiento\"); </script>";
                }
                $db = null; # se cierra la conexión.

                #A LA CONSOLA!
                echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";
                break;
            default:
                echo "No contemplado";
        }
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    }
    echo "<script>window.history.go(-1);</script>";
}

function observacion()
{
    $nif = recoge('nif');
    $observacion = recoge('observacion');
    $puerto = recoge('puerto');
    $nombre = recogecookie('miusuario');


    if (privilegio() == 'admin' || privilegio() == 'san') {
        $db = conectaDb();
        $consulta = "insert into observaciones values('$nif','$observacion')";

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

        #se ejecuta la consulta
        if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$nombre','Observacion añadida',\"$consultalog\")";
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Observacion añadida con exito\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al añadir observacion\"); </script>";
        }

        $db = null; # se cierra la conexión.

        // echo "<script>window.history.go(-2);</script>";
        //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    }
    echo "<script>window.history.go(-1);</script>";
}

function contrasena()
{
    $usuario = recogecookie('miusuario');
    $passviejo = recoge('contrasena0');
    $passnuevo = recoge('contrasena1');
    $passviejo_hashed = password_hash($passviejo, PASSWORD_DEFAULT);
    $passnuevo_hashed = password_hash($passnuevo, PASSWORD_DEFAULT);


    if (privilegio() == 'admin' || privilegio() == 'san') {
        $db = conectaDb();
        $consulta = "update usuarios set contrasena= '$passnuevo_hashed' where usuario='$usuario' and contrasena= '$passviejo_hashed'";

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> console.log(" . json_encode($consulta) . ")</script>";

        #se ejecuta la consulta
        if ($db->query($consulta)) {
            //logeamos la accion en logs y en la ta tabla eliminados
            $consultalog = htmlspecialchars(trim(strip_tags($consulta)));
            $sql2 = "insert into logs values(CURRENT_TIMESTAMP(),'$usuario','Contraseña actualizada',\"$consultalog\")";
            $consulta2 =  $db->prepare($sql2);
            $consulta2->execute();
            echo "<script type=\"text/javascript\"> alert(\"Contraseña actualizada con exito\"); </script>";
        } else {
            echo "<script type=\"text/javascript\"> alert(\"Error al actualizar contraseña\"); </script>";
        }

        $db = null; # se cierra la conexión.

        // echo "<script>window.history.go(-2);</script>";
        //header("location: plantilla.php?nif=".$nif."&puerto=".$puerto);
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    }
    echo "<script>window.history.go(-1);</script>";
}
