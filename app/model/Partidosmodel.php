<?php
require_once "app/model/Model.php";

class Administrador_tabla_de_Partidos extends Model
{ //extension del model 

    function datos_de_tabla_de_Partidos($id)
    { // tabla general de todos los vuelos 

        $db = $this->createConexion();


        $sentencia = $db->prepare("SELECT * FROM partidospoliticos p, presidentesargentina a WHERE a.ID = p.ID_Foranea and a.ID = ?;");
        $sentencia->execute([$id]);
        $Partidos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $Partidos;
    }


    function insert_Partidos($Partidos, $ID_Foraneo)
    {
        //abrimos la conexion;
        $db = $this->createConexion();

        //Enviar la consulta
        $resultado = $db->prepare("INSERT INTO partidos politicos ($Partidos,$ID_Foranea ) VALUES (?,?)");
        $resultado->execute([$Partidos, $ID_Foranea]); // ejecuta
    }

    function eliminar_Partidos($id)
    {
        $db = $this->createConexion();
        $eliminado = $db->prepare("DELETE FROM partidos politicos WHERE ID = ?");
        $eliminado->execute([$id]); // ejecuta
    }


    function tabla_de_Partidos()
    { // tabla general de todos los vuelos 

        $db = $this->createConexion();


        $sentencia =$db->prepare("SELECT * FROM partidospoliticos");
        $sentencia->execute();
        $Partidos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $Partidos;
    }


}
