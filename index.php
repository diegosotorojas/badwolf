
<?php


$pagina = isset($_GET['p']) ? $_GET['p'] : 'home';


#cargar header
require_once 'views/header.php';

#cargar contenido
require_once 'views/' . $pagina . '.php';


#cargar footer
require_once 'views/footer.php';



?>


