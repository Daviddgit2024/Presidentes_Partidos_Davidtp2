
<?php
require_once "app/view/view.php";
// La View es una sola porque nos concentramos en el backin No sé si está bien dicho 😅


class PresidentesView extends View
{


  function Error($msj = null)
  {

    $this->smarty->assign("msj", $msj);
    $this->smarty->display('error.tpl');
  }

  function login($msj = null)
  {


    $this->smarty->display('NavigationBar.tpl');
    $this->smarty->assign("msj", $msj);
    $this->smarty->display('login.tpl');
  }

  function Home()
  {



    $this->smarty->display('NavigationBar.tpl');
    $this->smarty->display('Home.tpl');
  }
  function tabla_de_Presidentes($Presidente)
  {

    $this->smarty->assign('cantidad', count($Presidente));
    $this->smarty->assign('Presidente', $Presidente);
    $this->smarty->display('Presidentetabla.tpl');
  }

  function tabla_de_Partidos($Partidos_Politicos)
  {


    $this->smarty->assign('cantidad', count($Partidos_Politicos));
    $this->smarty->assign('partidos', $Partidos_Politicos);
    $this->smarty->display('partidosTables.tpl');
  }
  function Editar_tabla_de_Partidos($Partidos,$Presidente)
  {


    $this->smarty->assign('cantidad', count($Partidos));
    $this->smarty->assign('partidos', $Partidos);
    $this->smarty->assign('presidente', $Presidente);
    $this->smarty->display('Presidentetabla.tpl');
  }
}


?>
  
