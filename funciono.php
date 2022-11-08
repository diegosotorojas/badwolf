<?php
require_once 'composer/vendor/autoload.php';
require_once 'config.php';

$client = new Google_Client();
$client->setClientId($clientID);
$client->setClientSecret($clientSecret);
$client->setRedirectUri($redirectUri);
$client->addScope("email");
$client->addScope("profile");

if (isset($_GET['code'])) {
  $token = $client->fetchAccessTokenWithAuthCode($_GET['code']);
  $client->setAccessToken($token['access_token']);

  // get profile info
  $google_oauth = new Google_Service_Oauth2($client);
  $google_account_info = $google_oauth->userinfo->get();
  $name =  $google_account_info->name;
  $lastname = $google_account_info->family_name;
  $email =  $google_account_info->email;

  // Estos datos son los que obtenemos....	
  echo $name;
  echo $lastname;
  echo $email;




  
} 
function insertar($name,$lastname,$email){
    $conexion = mysqli_connect("localhost","root","","prueba");
    $sql = "INSERT INTO usuarios (nombre,apellido,correo) VALUES ('$name','$lastname','$email')";
    $resultado = mysqli_query($conexion,$sql);
    mysqli_close($conexion);
    return $resultado;
}
insertar($name,$lastname,$email);


function verificarUsuario($email){
    $conexion = mysqli_connect("localhost","root","","prueba");
    $sql = "SELECT * FROM usuarios WHERE correo = '$email'";
    $resultado = mysqli_query($conexion,$sql);
    $filas = mysqli_num_rows($resultado);
    mysqli_close($conexion);
    return $filas;
}
if(verificarUsuario($email) > 0){
    echo "El usuario ya existe";
}else{
    insertar($name,$lastname,$email);
    echo "El usuario se ha registrado correctamente";
}


?>
