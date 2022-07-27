<?php                
    function conectaDb()
        {
            $usuario="root";
            $contrasena="administrador";
            //uso de las excepciones en php try y catch
            try {
                    $db = new PDO("mysql:host=localhost;dbname=san", $usuario, $contrasena);
                    $db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, TRUE);
                    return($db);
                } catch (PDOExcepton $e) {
                    //cabecera("Error grave");
                    print "<p>Error: No puede conectarse con la base de datos.</p>\n";
                    //
                    print "<p>Error: " . $e->getMessage() . "</p>\n";
                    //pie();
                    exit();
                }
        }

?>