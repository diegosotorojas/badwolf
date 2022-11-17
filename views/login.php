<?php
    include_once 'database.php';
    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset(); 

        // destroy the session 
        
    }
    
    if(isset($_SESSION['ID_TIPO_USUARIO'])){
        switch($_SESSION['ID_TIPO_USUARIO']){
            case 1:
            header('location: ../badwolfrecords/Admin/Views/index.php');
            main ('location:../badwolfrecords/Admin/Views/homeCliente.php ');
            break;

            case 2:
            header('location: ../badwolfrecords/beatmaker/Views/index.php');
            main ('location:../badwolfrecords/Admin/Views/homeBeatmaker.php ');
            break;
            
            case 3:
            header('location: ../badwolfrecords/cliente/Views/index.php');
            main ('location:../badwolfrecords/Admin/Views/homeCliente.php ');

            default:
        }
    }
  
    if(isset($_POST['username']) && isset($_POST['password'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $db = new Database();
        $query = $db->connect()->prepare('SELECT * FROM usuario WHERE NOMBRE_USUARIO = :username AND CLAVE_USUARIO = :password');
        $query->execute(['username' => $username, 'password' => $password]);

        $row = $query->fetch(PDO::FETCH_NUM);
        
        if($row == true){
            $rol = $row[9];
            
            $_SESSION['ID_TIPO_USUARIO'] = $rol;
            switch($rol){
                case 1:
                    header('location: ../badwolfrecords/Admin/Views/');
                    
                break;

                case 2:
                header('location: ../badwolfrecords/beatmaker/Views/index.php');
                break;

                case 3:
                header('location: ../badwolfrecords/cliente/Views/index.php');

                default:
            }
        }else{
            // no existe el usuario
            echo "Nombre de usuario o contraseña incorrecto";
        }
        

    }

?>


<div class="contenido">

    <div class="l-form">
        
        <form name="formulario_login" action="#" class="form" method="POST">

            <h1 class="form__title">INICIAR SESIÓN</h1>

            <div class="form__div">
                <input id="login_correo" type="text" class="form__input" placeholder=" " name="username">
                <label  for="" class="form__label">CORREO</label>
            </div>

            <div class="form__div">
                <input id="login_password" type="password" class="form__input" placeholder=" " name="password">
                <label for="" class="form__label">CONTRASEÑA</label>
            </div>

            <div class="form__div">
                <input type="submit" value="INICIAR SESIÓN" class="form__button" onclick="validarFormularioLogin()">

            </div>
            <!--div contenedor de boton de google-->
            <div class="form__div">
                <a href="?p=forget" class="form__link">¿Olvidaste tu contraseña?</a><br>
                <a href="?p=register" class="form__link">¿No tienes cuenta? Registrate</a>
            </div>

            

            
            


        </form>
        
        


    </div>

</div>

</body>
