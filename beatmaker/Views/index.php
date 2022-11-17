<?php

session_start();

if(!isset($_SESSION['ID_TIPO_USUARIO'])){
    header('location: login.php');
}else{
    if($_SESSION['ID_TIPO_USUARIO'] != 2){
        header('location: login.php');
    }
}
?>



#BEATMAKER

<?php
$pagina = isset($_GET['b']) ? $_GET['b'] : 'homeBeatmaker';

require 'slidebarBeatmaker.php';

require_once '../Views/' . $pagina . '.php';

require 'footerBeatmaker.php';



?>


