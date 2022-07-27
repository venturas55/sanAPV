<?php
class Conexion{
        public function get_conexion(){
            $user = "deharoorlzbbdd";
            $pass ="Valen6cia";
            $host = "deharoorlzbbdd.mysql.db";
            $db="deharoorlzbbdd";
            $conexion = new PDO("mysql:host=$host;dbname=$db;",$user,$pass);
            return $conexion;
        }
}
?>