<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bad Wolf Beats | Inicio </title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/44f9788861.js" crossorigin="anonymous"></script>

</head>





<body>
    
<!--------------------------------------------------------NAV--------------------------------------------------------------------->

    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fa-solid fa-bars"></i>        
        </label>
        <a href="#" class="enlace">
            <img class="logo" src="https://static.wixstatic.com/media/3dc022_d2f520bef45c4d6d8ed6ce18159a8e61~mv2.png/v1/fill/w_81,h_80,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/isotipo.png" alt="BadWolfRecords" >
        </a>
        <ul>
            <li><a href="#">INICIO</a></li>
            <li><a href="#">SERVICIOS</a>
                <ul>
                    <li><a href="#">GRABACIÓN</a></li>
                    <li><a href="#">MASTER & MASTERING</a></li>
                    <li><a href="#">DISTRIBUCIÓN</a></li>
                </ul>
            </li>
                
            <li><a href="#">MEDIA</a>
                <ul>
                    <li><a href="#">MÚSICA</a></li>
                    <li><a href="#">VIDEOS</a></li>
                </ul>
            </li>
                
            <li><a href="#">BEATS</a>
                <ul>
                    <li><a href="#">INICIO</a></li>
                    <li><a href="#">EXPLORAR</a></li>
                    <li><a href="#">CONDICIONES DE USO</a></li>
                </ul>
            </li>
                
            <li><a href="">¿QUIENES SOMOS?</a></li>
            <li><a href="">CONTACTO</a></li>
            <li><a href="">DISTRIBIYE CON NOSOTROS</a></li> 
            <li><a href="login.html">INICIAR SESIÓN</a></li>

        </ul>

    </nav>
<!--------------------------------------------------------NAV--------------------------------------------------------------------->





<!------------------------------------------------------CONTENT--------------------------------------------------------------------->

<div class="contenido">

    <div class="l-form">
        <form action="" class="form">
            <h1 class="form__title">INICIAR SESIÓN</h1>

            <div class="form__div">
                <input type="text" class="form__input" placeholder=" ">
                <label for="" class="form__label">CORREO</label>
            </div>

            <div class="form__div">
                <input type="password" class="form__input" placeholder=" ">
                <label for="" class="form__label">CONTRASEÑA</label>
            </div>

            <input type="submit" class="form__button" value="Iniciar Sesión">
            
            <div class="form__div">
                <a href="#" class="form__link">¿Olvidaste tu contraseña?</a>
            </div>

            <!--DIEGO AQUI VA EL BOTON DE GOOGLE-->
            <?php
            //importamos archivo de configuracion
            require_once 'composer/vendor/autoload.php';
            require_once 'config.php';
            //creamos el objeto de google client
            $client = new Google_Client();
            $client->setClientId($clientID);
            $client->setClientSecret($clientSecret);
            $client->setRedirectUri($redirectUri);
            $client->addScope("email");
            $client->addScope("profile");
            //creamos el boton de google
            ?>
            <input type="button" class="form__button" value="Iniciar Sesión con Google" onclick="window.location = '<?php echo $client->createAuthUrl(); ?>'">
            
           
        
        </form>
       
    </div>

</div>




<!------------------------------------------------------CONTENT--------------------------------------------------------------------->



</body>


<!-------------------------------------------------------FOOTER--------------------------------------------------------------------->
<footer>
<div class="grupo-footer">
  <div class="grupo-footer-1">
    <p>© & ® 2020 Bad Wolf Records SpA. 77.202.744-3
      Estudio de Grabación y Sello Discográfico
      Dirección Comercial: Veintiocho Sur #381 Talca, 3460000 Chile
      Contacto: +569 8203 3433 badwolfrecords@outlook.com</p>
  </div>
  <div class="grupo-footer-2">

      <!--RRSS facebook-->
  <a target="_blank" href="https://www.facebook.com/BADWOLFCL/">
    <img class="foterf" src="https://static.wixstatic.com/media/23fd2a2be53141ed810f4d3dcdcd01fa.png/v1/fill/w_30,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/23fd2a2be53141ed810f4d3dcdcd01fa.png" alt=""></a>
    
    <!--RRSS insta-->
    <a target="_blank" href="https://www.instagram.com/badwolfrecords/">
    <img class="foterb" src="https://static.wixstatic.com/media/81af6121f84c41a5b4391d7d37fce12a.png/v1/fill/w_30,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/81af6121f84c41a5b4391d7d37fce12a.png" alt="instagram"></a>
    
    <!--RRSS youtube-->
    <a target="_blank" href="https://www.youtube.com/c/BadWolfRecords">
    <img class="foterb" src="https://static.wixstatic.com/media/203dcdc2ac8b48de89313f90d2a4cda1.png/v1/fill/w_30,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/203dcdc2ac8b48de89313f90d2a4cda1.png" alt=""></a>
    
    <!--RRSS soundcloud-->
    <a target="_blank" href="https://soundcloud.com/badwolfrecords">
    <img class="foterb" src="https://static.wixstatic.com/media/e3496b0865884e4ca74ea5377ed41068.png/v1/fill/w_30,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e3496b0865884e4ca74ea5377ed41068.png" alt=""></a>
    
    <!--RRSSS bandcamp-->
    <a target="_blank" href="https://badwolf.bandcamp.com/">
    <img class="foterb" src="https://static.wixstatic.com/media/905f0e3ba15f43588d5ce6a2350bf284.png/v1/fill/w_30,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/905f0e3ba15f43588d5ce6a2350bf284.png" alt=""></a>
    
  </div>
</div>

</footer>
<!-------------------------------------------------------FOOTER--------------------------------------------------------------------->


<script src="script/script.js"></script>

</html>