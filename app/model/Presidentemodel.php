<?php
require_once "app/model/Model.php";

class Administrador_tabla_de_Presidentes extends Model
{ //extension del model 

    function tabla_de_Presidentes()
    { // tabla general de todos los vuelos 

        $db = $this->createConexion();


        $sentencia = $db->prepare("SELECT * FROM presidentesargentina");
        $sentencia->execute();
        $Presidentes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $Presidentes;
    }
    
    
        
    function insert_Presidente($Presidente, $IniciodelPeriodo, $FindelPeriodo)
    {
        //abrimos la conexion;
        $db = $this->createConexion();

        //Enviar la consulta
        $resultado = $db->prepare("INSERT INTO presidentesargentina (Presidente,IniciodelPeriodo,FindelPeriodo) VALUES (?,?,?)");
        $resultado->execute([$Presidente, $IniciodelPeriodo, $FindelPeriodo]); // ejecuta
    }
        
        
    


    function eliminarPresidente($id)
    {
        $db = $this->createConexion();
        $eliminado = $db->prepare("DELETE  FROM presidentesargentina WHERE ID= ?");
        $eliminado->execute([$id]); // ejecuta
    }



    function datos_de_un_Presidente($id)
    {
        //abrimos la conexion;
        $db = $this->createConexion();

        //Enviar la consulta
        $sentencia = $db->prepare("SELECT * FROM presidentesargentina WHERE ID = ?");
        $sentencia->execute([$id]);
        $Presidente = $sentencia->fetch(PDO::FETCH_OBJ);
        return $Presidente;
    }
}
