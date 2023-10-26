<?php
include 'conexion.php';

$nombre_completo = $_POST['nombre_completo'];  
$email = $_POST['email'];
$contrasena = $_POST['contrasena'];

$query = "INSERT INTO registros(nombre_completo, email, contrasena) 
          VALUES('$nombre_completo', '$email', '$contrasena')";

//Verificar que el correo nose repita en la base de datos
$verificar_correo = mysqli_query($conexion, "SELECT * FROM registros WHERE email='$email' ");

if(mysqli_num_rows($verificar_correo) > 0){
  echo '
    <script>
      alert("Este correo ya está registrado, intenta con otro diferente");
      window.location =  "../index.html";
    </script>
  ';
  exit();
};

$ejecutar = mysqli_query($conexion, $query);

if($ejecutar){
  echo '
    <script>
      alert("Usuario almacenado exitosamente");
      window.location = "../index.html";
    </script>
  ';
}else{
  echo '
    <script>
      alert("Intentalo de nuevo, usuario no almacenado");
      window.location = "../index.html";
    </script>
  ';
}

mysqli_close($conexion);
?>
