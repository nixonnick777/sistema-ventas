<?php

include 'conexion.php';

$email =  $_POST['email'];
$contrasena = $_POST['contrasena'];

$validar_login = mysqli_query($conexion, "SELECT * FROM registros WHERE email='$email' and contrasena='$contrasena'");

if(mysqli_num_rows($validar_login)){
  header("location: ../web-page/client.html");
  exit;
}else{
  echo '
    <script>
      alert("Usuario no existe, por favor verifique los datos introducidos");
      window.location = "../index.html";
    </script>
  ';
  exit;
}  

?>