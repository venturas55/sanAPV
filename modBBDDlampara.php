<?php
    session_start();
    include './funciones.php';
    include './seguridad.php';
    $usuario = recogecookie('miusuario');
    #En la consulta no se puede usar $_REQUEST , no funciona...
    $nif = recoge('nif');
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
