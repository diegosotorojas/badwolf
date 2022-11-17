<?php
 session_start();

 if(!isset($_SESSION['ID_TIPO_USUARIO'])){
     header('location: login.php');
 }else{
     if($_SESSION['ID_TIPO_USUARIO'] != 3){
         header('location: login.php');
     }
 }
#CLIENTE

$pagina = isset($_GET['c']) ? $_GET['c'] : 'perfilCliente';

require 'headerCliente.php';

require_once '../Views/' . $pagina . '.php';

require 'footerCliente.php';

?>


