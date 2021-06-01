<HTML>
<head>
<title></title>
</head>
<body>
<table>
<td><td>
<a href=""> <img width=8% HEIGHT=36 src="images/inicio.png"></a>
</tr></td></table>
</body>
</html>


     function showHeader(){
     		$output="<!DOCTYPE HTML>" ;  	
			$output.="<html>";
			$output.=	"<head>";
			$output.=		"<title>Traduccion de los  Musculos</title>";
			<link rel='stylesheet' href='css/style2.css' type='text/css' />
			
			$output.=	"</head>";
			$output.=	"<body bgcolor='red'>";
			return $output;
     }


     function showFormInsertar($resultEst,$resultAsig,$resultAsig2){
     		$output=	"<br>";
			$output.=		"<div>";
			$output.=        	"<div id='contenedor'>";
			$output.=			"<h1><font color='black'><center>Traduccion y Idiomas de la estructura de  Musculos</h1>";
			$output.=			"<br>";
			$output.=				"<FORM METHOD='POST' ACTION='index.php'>";

			$output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione la estructura</h2>";
			$output.=				"<select name='Ide'>";
									foreach ($resultEst as $accion) 
									{
									  $output.="<option value='".$accion->Ide."'>".$accion->ne."</option>";
									}



			$output.=				"</select><br>";	
		
			$output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione la Traduccion</h2>";
			$output.=				"<select name='Idt'>";
									foreach ($resultAsig as $accion) 
									{
									  $output.="<option value='".$accion->Idt."'>".$accion->nt."</option>";
									}



			$output.=				"</select><br>";		
			
		    $output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione el idioma</h2>";
			$output.=				"<select name='ididio'>";
									foreach ($resultAsig2 as $accion) 
									{
									  $output.="<option value='".$accion->Ididio."'>".$accion->nidio."</option>";
									}



			$output.=				"</select><br>";		
            $output.=				"<br><INPUT TYPE='SUBMIT' value='insertar' name='insertar' id='boton'>";

			$output.=				"</FORM>";
			$output.=           "</div>";
			$output.="	</div>";
			$output.="</body>";
			$output.="</html>";

			return $output;
     }

    

    function showFormUpDate($result,$resultEst,$resultAsig,$resultAsig2){
     		$output=	"<br>";
     		$output.=$this->showHeader();
			$output.=		"<div>";
			$output.=        	"<div id='contenedor'>";
			$output.=			"<h1>Actualizar  Registro</h1>";
			$output.=			"<br>";
			$output.=				"<FORM METHOD='POST' ACTION='index.php'>";

			


			$output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione la estructura</h2>";
			$output.=				"<select name='Ide'>";
									foreach ($resultEst as $accion) 
									{
									  $output.="<option value='".$accion->Ide."'>".$accion->ne."</option>";
									}



			$output.=				"</select><br>";	
		
			$output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione la Traduccion</h2>";
			$output.=				"<select name='Idt'>";
									foreach ($resultAsig as $accion) 
									{
									  $output.="<option value='".$accion->Idt."'>".$accion->nt."</option>";
									}



			$output.=				"</select><br>";		
			
		    $output.=						"</select><br>";	
		    $output.=					"<h2>Seleccione el idioma</h2>";
			$output.=				"<select name='Ididio'>";
									foreach ($resultAsig2 as $accion) 
									{
									  $output.="<option value='".$accion->Ididio."'>".$accion->nidio."</option>";
									}



			$output.=				"</select><br>";

			$output.=				"<br><INPUT TYPE='SUBMIT' value='Actualizar' name='actualizar' id='boton'>&nbsp&nbsp";
			$output.=               "<INPUT TYPE='SUBMIT' value='Regresar' name='regresar' id='boton'>";
			$output.=				"</FORM>";
			$output.=           "</div>";
			$output.="	</div>";
			$output.="</body>";
			$output.="</html>";
			echo $output;

     }

     function showGrid($result){
		  $output="<div>";
		  $output.="<div id='contenedor2'>";
		  $output.="<div id='tableWrapper'  style='width: 100%;' >";
		  $output.="<table id='vsTable'>";
		  $output.="<tbody> <center>";
		  $output.="<tr>";
	
		  $output.="<td class='title' style='width: 33%;'><div class='tableTitle'>Estructura</div></td>&nbsp&nbsp&nbsp&nbsp";
  		  $output.="<td class='title' style='width: 33%;'><div class='tableTitle'>Traduccion</div></td>&nbsp&nbsp&nbsp&nbsp";
  		  $output.="<td class='title' style='width: 33%; '><div class='tableTitle'>Idiomas</div></td>&nbsp&nbsp";
  		  
		  $output.="<td class='title' style='width: 33%; '><div class='tableTitle'>Opciones</div></td>";
		  $output.="</tr>";
		  foreach ($result as $accion) 
			{
				
                $output.="<td>".$accion->ne."</td>";
				$output.="<td>".$accion->nt."</td>";
				$output.="<td>".$accion->nidio."</td><td><a href='index.php?variable1=$accion->id'><input type='Button' name='editar' value='Editar' ></a>
				<a href='index.php?variable2=$accion->id'><input type='Button' name='eliminar' value='Eliminar' ></a></td></tr>";
			}
		$output.="</tbody>";
		$output.="</table>";
		$output.="</div>";
		$output.="</div></div>";
		echo $output; 


     }

  }

?>



