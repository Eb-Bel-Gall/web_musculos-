<?php require_once 'conexion.php'; ?>
<?php require_once 'helpers.php'; ?>
<html>
<head>
<meta charset="UTF-8">
<title> Login </title>
<body background="images/pt.png" ></body>
<link href ="css/login.css" rel ="stylesheet" type ="text/css">

</head>
<body>
                <section id="Formulario">
						<?php 
							if (isset($_SESSION['usuario'])):?>
                            <?php header('location:menu.php'); ?>
                        <!-- <div2 id = "persona2" style="position: fixed;  left: 63%;">
                       
                        <img class ="icon" src="images/body.png">	 
                        </div2>
                        <div>
                          <a href="menu.php" class = "uno" title="Consultar" style="position: fixed; bottom: 1px; left: 60%;">Consultar los Musculos</a>
                           <br>
                           <br/>
                           <a href ="cerrar.php" class = "dos" title="Cerrar" style="position: fixed; bottom: 1px; left: 70%;">Cerrar Sesion</a>
                              </div>-->
							<?php endif; ?>
		

<div class ="login">
<form action ="login.php" method= "POST" > 
<center>    
    <fieldset>       
                    <?php if(isset($_SESSION['error_login'])): ?>
                        <div class="alerta alerta-error">
                            <?=$_SESSION['error_login'];?>
                        </div>
                    <?php endif; ?>
                    
        <legend>Iniciar Sesión</legend>	
		<p>
        <input title = "se necesita el Email" type = "text" name = "email" placeholder = "Email">
        </p> 

        <p>
        <input  title = "se necesita la contraseña" type = "password" name = "password" placeholder = "Contraseña">
        </p> 

        <p>
        <input  type = "submit" value = "Entrar"> 
        <input  type = "reset" value = "Limpiar"> 
        </p>    
        <p>
            <a href="views.php" >
                <img src="images/btreg.png" title="Regresar" height="40" width="80" alt="Botón" >
            </a>
        </p>
        <a href="index.html"><img src="images/inicio2.png" title="Regresar" height="80" width="120" alt="Botón" ></a>
    </fieldset>
</center> 
</form>	
<?php borrarErrores();?>
</div>

</section>
</body>
</html>
