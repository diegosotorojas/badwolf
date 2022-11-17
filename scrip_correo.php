<?php

include("database.php");

//cambiar nombres de variables por las del DB Diego del futuro acuerdate

if (isset($_POST['name']) && !empty($_POST['name']) && 
isset($_POST['email']) && isset($_POST['phone']) && !empty($_POST['phone']) && isset($_POST['ciudad']) && !empty($_POST['ciudad']) && 
isset($_POST['notas']) && !empty($_POST['notas']) && isset($_POST['selectform']) && !empty($_POST['selectform'])) {

    $connect=mysqli_connect($host,$user,$pw,$db);
    mysqli_query($connect,("INSERT INTO nombre_de_la_db (nombre, correo, celular, ciudad, notas, selectform) VALUES ('".$_POST["name"]."','".$_POST["email"]."','".$_POST["phone"]."','".$_POST["ciudad"]."','".$_POST["notas"]."','".$_POST["selectform"]."')"));
                        //diego acuerdate de cambiar la ruta del js o esto no funciona xD
            echo'<script type="text/javascript">
        alert("Gracias por registrarte!");
        window.location.href="index.php";
        </script>'; 

}else {

    echo "ERROR AL INSERTAR DATOS EN LA BASE DE DATOS!";    //. mysqli_error($connect);

}

?>