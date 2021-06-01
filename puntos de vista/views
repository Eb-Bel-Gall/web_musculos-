<?php require_once 'conexion.php'; ?>
<?php require_once 'helpers.php'; ?>

<html>
<head>
<meta charset="UTF-8">
<title> Registrate Gratis</title>
<body background="images/cien.jpg"  width='176' height='230' ></body>
<link href ="css/login.css" rel ="stylesheet" type ="text/css">

</head>
<body>
<section id="Formulario">
<center><h1> Registrate </h1></center>
<br>
<br>	
<div class ="login">
      <!--mostrar errores -->
      <?php if(isset($_SESSION['completado'])): ?>  <!--estrucutra de control para las vistas-->
         <div class="alerta alerta-exito">
               <?=$_SESSION['completado']?>
         </div>
      <?php elseif(isset($_SESSION['error']['general'])):?>
         <div class="alerta alerta-error">
               <?=$_SESSION['error']['general']?>
         </div>         
      <?php endif;?>

         <form action ="registro.php" method= "POST" > 
         <center>    
            <fieldset>       
            <legend>Inserte los Datos</legend>	
            <input  type = "text" name = "nombre" placeholder = "Nombre">
            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'],'nombre') : ''; ?>

            <input  type = "text" name = "apellidos" placeholder = "Apellidos">
            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'],'apellidos') : ''; ?>

            <input  type = "email" name = "email" placeholder = "Email">
            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'],'email') : ''; ?>

            <input  type = "password" name = "password" placeholder = "Contraseña">
            <?php echo isset($_SESSION['errores']) ? mostrarError($_SESSION['errores'],'password') : ''; ?>
            <br>
         <br/>
               <input  type = "submit" name="submit" value = "Registrar">
               <br/>
               <a href ="index_login.php" class = "dos" title="Atras" >Regresar</a> 
            </fieldset>
         </center> 
         </form>	
         <?php borrarErrores();?>

         </section>
</div>
</div>
      
</body>
</html>
