<?php
class ApptivaDB
{
     /* private $host = "localhost";
    private $usuario = "root";
    private $clave = "";
    private $dbname = "adriandecradmin"; */ 

   private $host = "adriandecradmin.mysql.db";
    private $usuario = "adriandecradmin";
    private $clave = "Administrador1";
    private $dbname = "adriandecradmin";

    public $conexion;
    public function __construct()
    {
        $this->conexion = new mysqli($this->host, $this->usuario, $this->clave, $this->dbname)
            or die(mysql_error());
        $this->conexion->set_charset("utf8");
    }


    //BUSCAR
    public function buscar($tabla, $condicion)
    {
        $consulta = $this->conexion->query("select * from $tabla where $condicion") or die($this->conexion->error);
        if ($consulta)
            return $consulta->fetch_all(MYSQLI_ASSOC);
        return false;
    }

    //INSERTAR
    public function insertar($tabla, $datos)
    {
        $consulta = $this->conexion->query("insert into $tabla VALUES $datos") or die($this->conexion->error);
        if ($consulta)
            return true;
        return false;
    }

    //BORRAR
    public function borrar($tabla, $condicion)
    {
        $consulta = $this->conexion->query("delete from $tabla where $condicion")  or die($this->conexion->error);
        if ($consulta)
            return true;
        return false;
    }

    //ACTUALIZAR
    public function actualizar($tabla, $campos, $condicion)
    {
        $consulta = $this->conexion->query("update $tabla set $campos where $condicion") or die($this->conexion->error);
        if ($consulta)
            return true;
        return false;
    }
}
