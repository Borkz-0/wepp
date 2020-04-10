<?php
    session_start();
    include '../includes/conecta.php';
    $usuario = $_POST['user'];
    $password = md5($_POST['password'])
    //consulta para ingresar al sistema y determinar la bariable de sesion
    $q = "SELECT * FROM usuarios WHERE Nusuario = '$usuario' and password = '$password'";
    if ($resultado = $mysqli->query($q)) {
      while ($row = $resultado->fetch_array()) {
        $userok = $row['Nusuario'];
        $passwordok = $row['$Password'];
      }
      $resultado->close();
    }
    $mysqli->close();
    if (isset($usuario) && isset($Password)) {
      if ($usuario == $userok && $Password == $passwordok) {
        $_SESSION['login']= TRUE;
        $_SESSION['usuario'] = $usuario;
        header("location:../catalogo.php");
      }
      else {
        header("location:../index.php");
      }
    } else {
      header("location:../index.php")
    }






































 ?>
