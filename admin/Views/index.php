<?php
 session_start();

 if(!isset($_SESSION['ID_TIPO_USUARIO'])){
     header('location: login.php');
 }else{
     if($_SESSION['ID_TIPO_USUARIO'] != 1){
         header('location: login.php');
     }
 }

#ADMIN
$pagina = isset($_GET['a']) ? $_GET['a'] : 'homeAdmin';

require 'slidebarAdmin.php';

require_once '../Views/' . $pagina . '.php';

require 'footerAdmin.php';



   

?>



