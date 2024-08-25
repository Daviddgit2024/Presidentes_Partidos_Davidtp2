<?php

require_once "app/view/PresidentesView.php";

require_once "app/model/Presidentemodel.php";
class Controlador_Presidente
{

    private $modelPresidente;
    private $view;


    public function __construct()
    {

        $this->view = new PresidentesView();
        $this->modelPresidente = new Administrador_tabla_de_Presidentes();
    }

    function tabla_de_Presidentes()
    { // 

        $Presidente = $this->modelPresidente->tabla_de_Presidentes();

        $this->view->tabla_de_Presidentes($Presidente); //guarda en esa variante para pasarsela a la view   

        // header("Location:" . BASE_URL . "login");
    }


  function eliminarPresidente($id)
    {
        $this->modelPresidente->eliminarPresidente($id);
        header("Location:" . BASE_URL . "Tabla_de_Presidentes");
    }

    function insert_Presidente()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (
                !empty($_POST['Presidente']) && !empty($_POST['IniciodelPeriodo']) && !empty($_POST['FindelPeriodo'])
            ) {

                $Presidente = $_POST['Presidente'];
                $IniciodelPeriodo = $_POST['IniciodelPeriodo'];
                $FindelPeriodo = $_POST['FindelPeriodo'];
                $this->modelPresidente->insert_Presidente($Presidente, $IniciodelPeriodo, $FindelPeriodo);
                 header("Location:" . BASE_URL . "Tabla_de_Presidentes");// adonde reedirijo el dato 
            } else {
                $this->view->Error("Faltan datos");
            }
        }
    }
}
