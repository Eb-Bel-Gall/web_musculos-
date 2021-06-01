<?php require_once 'conexion.php'; ?>
<?php require_once 'helpers.php'; ?>
<HTML>
<HEAD>
<meta charset = "UTF-8"> 
<TITLE>Bienvenido a Musculos</TITLE>
<body background="images/cien5.jpg" width='650' height='250'>
<a href ="cerrar.php" class = "dos">Cerrar Sesion...</a>
<LINK REL = "stylesheet" type = "text/css" href = "css/menu.css" > 

</HEAD>
<body>
</body>
<center>
		<p id ="title">Bienvenido a Musculos</p>
						<?php 
							if (isset($_SESSION['usuario'])):?>
							<div id = "persona">
							  <?=  $_SESSION['usuario'] ['nombre']. '  '.$_SESSION['usuario']['apellidos'] ?>
							  <br/>
						      <img  src="images/body.png" width='476px' height='720px'>	 
							</div>
							<?php endif; ?>
		<p id ="title">Que Desea Consultar</p>
</center> 							
<header>

	<div class = "contenedor" id ="uno"> 
			<ul> 
				<li>
						<a href = "1estruc_cla/cla.php">
						<img class = "icon" src="images/consult.png"  >
						<p class = "parrafo">Estructura y Clasificacion</p>
						</a>
				</li>
				<li>
						<a href = "2cla_forma/for.php">
						<img class = "icon"  src = "images/edit.png"  >
						<p class = "parrafo">Clasificacion y Forma</p>
						</a>
				</li>
				<li>
						<a href = "3traduccion/tra.php">
						<img class = "icon" src="images/consult.png"  >
						<p class = "parrafo">Musculos y Traduccion</p>
						</a>
				</li>
			</ul>	
			<div class="clearfix"></div>	
	</div>
    </header>
</body>
</HTML>
         