<?php
require_once "app/controller/ControladorPresidente.php";
require_once "app/controller/ControladorPartidos.php";
require_once "app/controller/LoginController.php";



// definimos la base url de forma dinamica
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');


if (empty($_GET['action'])) {
    $_GET['action'] = 'login';
}

$action = $_GET['action'];
$parametro = explode('/', $action);

$controller_Presidente = new Controlador_Presidente();
$controller_Partidos = new Controlador_Partidos();
$controller_login = new login();

//  print_r($parametro);

switch ($parametro[0]) {
    
    case 'logout':

        $controller_login->logout();
        break;
        
       
    case 'login':

        $controller_login->login();
        break;

    case 'home':

        $controller_login->Home();
        break;

    case 'Tabla_de_Presidentes':
        $controller_Presidente->tabla_de_Presidentes();
        break;
        case 'Editar_tabla_de_Partidos':
            $controller_Partidos->Editar_tabla_de_Partidos();
            break;   

    case 'insert_Presidente':
        $controller_Presidente->insert_Presidente();
        break;
    case 'insert_Partidos':
        $controller_Partidos->insert_Partidos();
        break;


    case 'Verdatos':
        $controller_Partidos->tabla_de_Partidos($parametro[1]);
        break;
        
    case 'Verify_login':
        $controller_login->Verify_login();
        break;

    case 'EliminarPresidente':
        $controller_Presidente->eliminarPresidente($parametro[1]);
        break;

    case 'EliminarPartidos':
        $controller_Partidos->eliminarPartidos($parametro[1]);
        break;



    default:
        echo "404 not found";
}
