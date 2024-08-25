<?php

require_once "app/view/PresidentesView.php";
require_once "app/model/Partidosmodel.php";
require_once "app/model/Presidentemodel.php";

class Controlador_Partidos
{

    private $modelPartidos;
    private $view;
    private $modelPresidente;


    public function __construct()
    {
        $this->modelPartidos = new Administrador_tabla_de_Partidos();
        $this->view = new PresidentesView();
        $this->modelPresidente = new Administrador_tabla_de_Presidentes();
    }



    function tabla_de_Partidos($id)
    {

        $Partidos = $this->modelPartidos->datos_de_tabla_de_Partidos($id);

        $this->view->tabla_de_Partidos($Partidos);
    }
    function eliminarPartidos($id)
    {
        $this->modelPartidos->eliminar_Partidos($id);
        header("Location:" . BASE_URL . "tabla_de_Partidos");
    }
    function insert_Partidos()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (
                !empty($_POST['Partidos_Politicos']) && !empty($_POST['ID_Foranea'])
                
            ) {

                $Partidos_Politicos = $_POST['Partidos_Politicos'];
                $ID_Foranea = $_POST['ID_Foreanea'];
                
                $this->modelPartidos->insert_Partidos($Partidos_Politicos, $ID_Foranea); 
                header("Location:" . BASE_URL . "tabla_de_Partidos" );
            } else {
                $this->view->Error("Faltan datos");
            }
        }
    }
   function Editar_tabla_de_Partidos(){
    $Presidente = $this->modelPresidente->tabla_de_Presidentes();
    $Partidos = $this->modelPartidos->tabla_de_Partidos();
    $this->view->Editar_tabla_de_Partidos($Partidos,$Presidente);
   }
}
