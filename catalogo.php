 <?php
 session_start();
 include 'includes/conecta.php';
 $usuario = $_SESSION['usuario'];
 if (! isset($usuario)) {
   header("location:index.php");
 }
 $mysqli->close();
//consulta para extraer los datos de producos
 $query = "SELECT * FROM productos ORDER  BY Id_Producto";
 // aqui se ejecuta la consulta
 $ejecuta = $mysqli->query($query);
 $numero = $ejecuta->num_rows;
 //cesar la BD
 $mysqli->close();
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
 <html>
  <head>
    <meta charset="utf-8">
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="/css/fontello.css">
     <title>barra de navegacion </title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark lighten-1">
      <a class="navbar-brand" href="#">BORKZ</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-laber="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="callapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link "href="#"><span class="icon-home"> Inicio</span></a>
            <span class="sr-only">(current)</span>
          </li>
          <li class="nav-item active">
            <a class="nav link "href="#"><span class="icon-doc-text-inv"> Acerca de</span></a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
              <span class="icon-sitemap"> Productos</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Bebidas</a>
              <a class="dropdown-item" href="#">Frituras</a>
              <div class="dropdown-divider"></div>
               <a class="dropdown-item" href="#">Mas Productos</a>
            </div>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto nav flex-icons">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="icon-user-1"><?php echo $_SESSION['usuario'] ?></span>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">perfil</a>
              <a class="dropdown-item" href="#">configuracion</a>
              <div class="dropdown-divider"></div>
               <a class="dropdown-item" href="#">cerrasr secion</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- inicia el contenido de la navegacion-->
    <!--termina el contenido de navegacion -->
    <div class="modal fade" id="modalCenter" tabindex="-1" role="dialog" aria-labelledby="modalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalCenterTitle">CERRAR SECION </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="close">
              <span arial-hidden="true">&times;</span>
            </button>
          </div>
           <div class="modal-body">deseas cerrar tu secion actual?</div>
         <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">cancelar</button>
          <button type="button" class="btn btn-danger">cerrar secion </button>
        </div>
      </div>
    </div>
    </div>
    <!-- termina ventana modal -->
    <section>
      <!-- inicia card de productos -->
      <div class="container">
        <div class="row">
          <?php while ($row = $ejecuta->fetch_assoc()) {?>
          <div class="col-sm">
            <div class="card mb-3" style="max-widht: 580px">
              <div class="row- no-gutters">
                <div class="col-md-4">
                  <!-- contiene una de las tres imagenes -->
                    <img src="img/<?php echo $row['Imagen'];?>" class="card-jpg" alt="producto1">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <!-- titulo de la tarjeta-->
                    <h5 class="card title"><?php echo $row['Nombre'];?></h5>
                    <!-- descripcion de la targeta-->
                    <p class="card-text"> <?php echo $row['Descripcion'];?></p>
                    <!-- el precio para que no se vea tan marcado-->
                    <p class="card-text"><small class="tex-muetd"><?php echo $row['Precio'];?></small> </p>
                    <!-- boton para primario con una clase de link-->
                    <button type="button" name="btn-compra" class="btn btn-success nav-link">agregar al carrito</button>
                    </div>
                  </div>
                </div>
                <div class="card-footer tex-muted">
                  <?php echo $row['Id_Categoria'];?>

                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <!-- termina card de productos -->
    </section>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>































5
