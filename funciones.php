<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

//LOCALHOST
$dbname = "san";
$dbhost="localhost";
$dbuser="root";
$dbpass="administrador";

//APV
$dbname = "san";
$dbhost="localhost";
$dbuser="san_user";
$dbpass="ezLOeKhK@FUU";

//DEHAROORTEGA.COM
$dbname = "deharoorlzbbdd";
$dbhost="deharoorlzbbdd.mysql.db";
$dbuser="deharoorlzbbdd";
$dbpass="Valen6cia";

function recoge($campo)
{
    if (isset($_REQUEST[$campo])) {
        $valor = htmlspecialchars(trim(strip_tags($_REQUEST[$campo])));
    } else {
        $valor = "";
    };
    return $valor;
}

function recogecookie($campo)
{
    if (isset($_SESSION[$campo])) {
        $valor = htmlspecialchars(trim(strip_tags($_SESSION[$campo])));
    } else {
        $valor = "";
    };
    return $valor;
}

function imprime($campo)
{
    if (isset($campo))
        echo $campo;
}

function conectaDb()
{
    global $dbhost;
    global $dbname;
    global $dbuser;
    global $dbpass;
    //uso de las excepciones en php try y catch
    try {
        $db = new PDO("mysql:host=".$dbhost.";dbname=".$dbname, $dbuser, $dbpass);
        $db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, TRUE);
        return ($db);
    } catch (PDOExcepton $e) {
        print "<p>Error: No puede conectarse con la base de datos.</p>\n";
        print "<p>Error: " . $e->getMessage() . "</p>\n";
        exit();
    }
}

function privilegio()  //Devuelve admin, san o none, en funcion del privilegio
{
    if (recogecookie('miprivilegio') == 'admin')
        return 'admin';
    else if (recogecookie('miprivilegio') == 'san')
        return 'san';
    else
        return 'none';
}



function cabecera1()
{
    global $puerto;
    echo '<nav class="navbar fixed-top navbar-dark bg-primary navbar-expand-lg navbar-template header">
    <a class="navbar-brand" target="_blank" href="https://www.valenciaport.com/"><img src="./img/images/logo-valenciaport-home.svg" /></a>';

    if (isset($puerto))
        echo "<h2>Balizamiento de <span id='puerto'>" . $puerto . "</span></h2>";
    else
        echo "<h2> Elija un puerto </h2>";

    echo '<div class="d-flex flex-row order-2 order-lg-3">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="collapse navbar-collapse order-3 order-lg-2" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">

            ';
    if (isset($_SESSION['miusuario']))
        echo "<p style='margin:10px'> Bienvenid@, " . $_SESSION['miusuario'] . "</p>";





    echo '<div class="dropdown">
        <button class="btn btn-default btn-warning dropdown-toggle" type="button" data-toggle="dropdown">PANEL ADM<span class="caret"></span></button>
        <ul class="dropdown-menu dropdown-menu-right">';
    if (isset($_SESSION['miusuario']))
        echo "<li class=\"nav-item\"><a class=\"nav-link\" href=\"./log-out.php\" class=\"btn btn-success btn-sm\">
                                <button type=\"button\" class=\"btn btn-warning btn-sm\"> LOGOUT </button> </a></li>";
    else
        echo "<li class=\"nav-item\"><a class=\"nav-link\" href=\"./log-in.php\" class=\"btn btn-success btn-sm\">
                            <button type=\"button\" class=\"btn btn-warning btn-sm\"> LOGIN </button> </a></li>";


    if (privilegio() == "admin") {

        echo '<li class="nav-item">
                <a class="nav-link" href="./admin.php" class="btn btn-success btn-sm" > 
                        <button type="button" class="btn btn-warning btn-sm"> LOGS </button>
                </a></li>';

        echo '<li class="nav-item">
                <a class="nav-link" href="./cochecito.php" class="btn btn-success btn-sm" > 
                    <button type="button" class="btn btn-warning btn-sm"> COCHECITO </button>
                </a></li>';

        echo '<li class="nav-item">
                <a class="nav-link" href="./altaBalizamiento.php" class="btn btn-success btn-sm" > 
                    <button type="button" class="btn btn-warning btn-sm"> ALTA NUEVA </button>
                </a></li>';
        echo '<li class="nav-item">
                <a class="nav-link" href="./modBBDD.php?accion=modBBDD" class="btn btn-success btn-sm" > 
                    <button type="button" class="btn btn-warning btn-sm"> MOD BBDD (on Update) </button>
                </a></li>';
        echo '<li class="nav-item">
            <a class="nav-link" href="./actualizarPassword.php" class="btn btn-success btn-sm" > 
                <button type="button" class="btn btn-warning btn-sm">CAMBIAR CONTRASEÑA</button>
            </a></li>';
        echo '<li class="nav-item">
            <a class="nav-link" href="./modBBDD.php?accion=obtenerBackup" class="btn btn-success btn-sm" > 
                <button type="button" class="btn btn-warning btn-sm"> BACKUP BBDD </button>
            </a></li>';
    }

    echo '</ul>
        </div>';

    echo '<li class="nav-item"><a class="nav-link" href="./calculos.php" class="btn btn-success btn-sm">
                    <button type="button" class="btn btn-success btn-sm"> CALCULOS</button>
                </a></li>

            <li class="nav-item"><a class="nav-link" href="./plan.html" class="btn btn-success btn-sm">
                    <button type="button" class="btn btn-success btn-sm"> PLAN
                        INSPECCION</button>
                </a></li>
            <li class="nav-item"><a class="nav-link" href="./inventario.php" class="btn btn-success btn-sm">
                    <button type="button" class="btn btn-success btn-sm"> INVENTARIO
                    </button>
                </a></li>
            <li class="nav-item"><a class="nav-link" href="./index.php" class="btn btn-success btn-sm">
                <button type="button" class="btn btn-success btn-sm"> INICIO </button>
            </a></li>
            <li class="nav-item">
            <a class="nav-link" href="./modBBDD.php?accion=modificacion2" class="btn btn-success btn-sm" > 
                <button type="button" class="btn btn-warning btn-sm">.</button>
            </a></li>
        </ul>
    </div>
</nav>';
}


function cabecera2($tipo)
{
    global $nif;
    echo '<nav class="navbar fixed-top navbar-dark bg-primary navbar-expand-lg navbar-template header">
    <a class="navbar-brand" target="_blank" href="https://www.valenciaport.com/"><img src="./img/images/logo-valenciaport-home.svg" /></a>';


    if ($tipo == 'inventario')
        echo '<h2> Inventario</h2>';
    else if ($tipo == 'calculos')
        echo '<h2> Calculos</h2>';
    else if ($tipo == 'alta')
        echo '<h2> Alta Nueva</h2>';
    else if ($tipo == 'cochecito')
        echo '<h2>Ficha uso vehículo</h2>';
    else if ($tipo == 'fotos')
        echo '<h2>Fotos del balizamiento NIF: ' . $nif . ' </h2>';
    else if ($tipo == 'caracteristicas')
        if (isset($nif))
            echo '<h2> Caracteristicas NIF: ' . $nif . '</h2>';

    echo '<div class="d-flex flex-row order-2 order-lg-3">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="collapse navbar-collapse order-3 order-lg-2" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">
        ';
    if (isset($_SESSION['miusuario']))
        echo "<p style='margin:10px'> Bienvenid@, " . $_SESSION['miusuario'] . "</p>";

    echo '<div class="dropdown">
        <button class="btn btn-default btn-warning dropdown-toggle" type="button" data-toggle="dropdown">PANEL ADM<span class="caret"></span></button>
        <ul class="dropdown-menu dropdown-menu-right">';
    if (isset($_SESSION['miusuario']))
        echo '<li class="nav-item"><a class="nav-link" href="./log-out.php" class="btn btn-success btn-sm">
                                            <button type="button" class="btn btn-warning btn-sm"> LOGOUT </button> </a></li>';
    else
        echo '<li class="nav-item"><a class="nav-link" href="./log-in.php" class="btn btn-success btn-sm">
                                        <button type="button" class="btn btn-warning btn-sm"> LOGIN </button> </a></li>';

    if (privilegio() == "admin" || privilegio() == "san")
        echo '<li class="nav-item">
                                                    <a class="nav-link" class="btn btn-success btn-sm"> 
                                                        <button type="button" class="btn btn-warning btn-sm" id="activarborrado"> MODIFICAR </button>
                                                </a></li>';

    if (privilegio() == "admin")
        echo '<li class="nav-item">
                                                            <a class="nav-link" href="./admin.php" class="btn btn-success btn-sm" > 
                                                                <button type="button" class="btn btn-warning btn-sm"> LOGS </button>
                                                            </a></li>';
    echo '</ul>
        </div>';

    echo '<li class="nav-item"><a class="nav-link" href="./calculos.php" class="btn btn-success btn-sm">
                    <button type="button" class="btn btn-success btn-sm"> CALCULOS</button>
                </a></li>
            <li class="nav-item"><a class="nav-link" href="javascript:history.back()" class="btn btn-success btn-sm">
                <button type="button" class="btn btn-success btn-sm"> ATRAS</button>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="./index.php" class="btn btn-success btn-sm">
                <button type="button" class="btn btn-success btn-sm"> INICIO </button>
            </a></li>
        </ul>
    </div>
</nav>';
}

function pie()
{
    echo '<nav class="navbar fixed-bottom navbar-light bg-primary footer">
            <div>
                <p>Autoridad Portuaria de Valencia.  2018 · 
               <span> <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" src="./img/images/ccby.png" /></a>Autor: <a target="_blank" href="https://adriandeharo.es">Adrian de Haro </a> <span class="copyleft"> &copy; </span> bajo licencia <a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons</a>. </span>
               </p>
            </div>
            <div class="actualizacion"> Actualizado: 14/03/2022</div>
        </nav>';
}

function borrarDirectorio($dir)
{
    if (!$dh = @opendir($dir)) return;
    while (false !== ($current = readdir($dh))) {
        if ($current != '.' && $current != '..') {
            echo 'Se ha borrado el archivo ' . $dir . '/' . $current . '<br/>';
            if (!@unlink($dir . '/' . $current))
                deleteDirectory($dir . '/' . $current);
        }
    }
    closedir($dh);
    echo 'Se ha borrado el directorio ' . $dir . '<br/>';
    @rmdir($dir);
}

function modificarBBDD()
{

    if (privilegio() == 'admin') {
        $db = conectaDb();
        $db->beginTransaction();
        try {
            $consulta =  "ALTER TABLE `cochecito` DROP FOREIGN KEY `cochecito_FK`";
            $stmt = $db->prepare($consulta)->execute();
            $consulta = "ALTER TABLE `cochecito` ADD CONSTRAINT `cochecito_FK` FOREIGN KEY (`usuario`) REFERENCES `usuarios`(`usuario`) ON UPDATE CASCADE";
            $stmt = $db->prepare($consulta)->execute();
            $consulta = "ALTER TABLE `usuarios` ADD `email` VARCHAR(100) AFTER  `usuario`";
            $stmt = $db->prepare($consulta)->execute();
            $consulta = "ALTER TABLE `usuarios` MODIFY `usuario` VARCHAR(50) NOT NULL";
            $stmt = $db->prepare($consulta)->execute();
            $consulta = "ALTER TABLE `usuarios` MODIFY `contrasena` VARCHAR(250) NOT NULL";
            $stmt = $db->prepare($consulta)->execute();
        } catch (Throwable $e) {
            $db->rollBack();
            throw $e;
        }
        $db->commit();

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> alert(\"Cambios ejecutados con éxito.\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Cambios ejecutados con éxito.\")</script>";
        $db = NULL;
    } else {
        echo "<script type=\"text/javascript\"> alert(\"No tienes privilegios\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Sin privilegios\")</script>";
    }
    echo "<script>window.history.go(-1);</script>";
}

function modificacion2()
{
   
        $db = conectaDb();
        $db->beginTransaction();
        try {
            $password_hashed = password_hash("adrian", PASSWORD_DEFAULT);
            $consulta = "UPDATE usuarios SET contrasena = \"$password_hashed\" where usuario='adrian'";
            $stmt = $db->prepare($consulta)->execute();

            $password_hashed = password_hash("bruixo", PASSWORD_DEFAULT);
            $consulta = "UPDATE usuarios SET contrasena = \"$password_hashed\" where usuario='marco'";
            $stmt = $db->prepare($consulta)->execute();

            $password_hashed = password_hash("guillermo", PASSWORD_DEFAULT);
            $consulta = "UPDATE usuarios SET contrasena = \"$password_hashed\" where usuario='guillermo'";
            $stmt = $db->prepare($consulta)->execute();

            $password_hashed = password_hash("raulito", PASSWORD_DEFAULT);
            $consulta = "UPDATE usuarios SET contrasena = \"$password_hashed\" where usuario='raul'";
            $stmt = $db->prepare($consulta)->execute();
        } catch (Throwable $e) {
            $db->rollBack();
            throw $e;
        }
        $db->commit();

        #A LA CONSOLA!
        echo "<script type=\"text/javascript\"> alert(\"Cambios ejecutados con éxito.\"); </script>";
        echo "<script type=\"text/javascript\"> console.log(\"Cambios ejecutados con éxito.\")</script>";
        $db = NULL;
     echo "<script>window.history.go(-1);</script>";
}

function obtenerBackup()
{
    global $dbhost;
    global $dbname;
    global $dbuser;
    global $dbpass;

    include_once(dirname(__FILE__) . '/src/Ifsnop/Mysqldump/Mysqldump.php');
    $dump = new Ifsnop\Mysqldump\Mysqldump("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
    $backup_file = "backupSQL" . date("Y-m-d-H-i-s") . '.sql';
    $dump->start("$backup_file");


/* 
    $backup_file = $dbname . date("Y-m-d-H-i-s") . '.sql';
    $command = "mysqldump --opt -h $dbhost -u $dbuser -p $dbpass $dbname > $backup_file";
    $command = "mysqldump --all-databases > respaldo_full.sql ";
    echo $backup_file;
    echo $command;
    system($command); */
}
