<?php
$mensaje ="";
$servidor = "localhost";
$usuario = "root";
$password = "";
$bd = "webapp";
$mysqli = mysqli_connect($servidor, $usuario, $password, $bd);
if ($mysqli->connect_error)
{
  die('error al conecta a la base de datos webapp'.$mysqli->connect_error);
}
else {
  $mensaje.="<div class='alert-success alert-dismissible fade show' role='alert'>
          <strong>genial!</strong> la conexion a la BD de datos de la webapp es correcta.
           <span aria-hidden='true'>&times;</span>
          </button>
  </div>";
}
 ?>
