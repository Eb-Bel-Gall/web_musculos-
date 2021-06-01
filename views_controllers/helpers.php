<?php

function mostrarError($errores, $campo){
	$alerta = '';
	if(isset($errores[$campo]) && !empty($campo)){
		$alerta = "<div class='alerta alerta-error'>".$errores[$campo].'</div>';
	}
	
	return $alerta;
}

function borrarErrores(){
	$borrado = false;
	
	if(isset($_SESSION['errores'])){
		$_SESSION['errores'] = null;
		$borrado = true;
	}
	
	
	
	if(isset($_SESSION['completado'])){
		$_SESSION['completado'] = null;
		$borrado = true;
	}
	
	return $borrado;
}


/*function mostrarUsuario($conexion){
	$sql = "SELECT * FROM usuarios ";
	$usuarios = mysqli_query($conexion, $sql);

	$result= array();
	if ($usuarios && mysqli_num_rows($usuarios) ){
		$result = $usuarios;
	} 
	
	return $result;
}
*/
function mostrarUsuario($conexion){
	$sql = "SELECT * FROM usuarios";
	$usuarios = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($usuarios && mysqli_num_rows($usuarios) >= 1){
		$resultado = $usuarios;
	}
	
	return $resultado;
}
////////////////////////////////////////////////////////////////////////////////
function mostrarEst($conexion){
			$sql="SELECT * FROM estructura Order By Ide ASC;";
			$est = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($est && mysqli_num_rows($est) >= 1){
		$resultado = $est;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////////
function mostrarFor($conexion){
			$sql="SELECT * FROM forma Order By Idf ASC;";
			$for = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($for && mysqli_num_rows($for) >= 1){
		$resultado = $for;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////
function mostrarCla($conexion){
			$sql="SELECT * FROM clasificacion Order By Idcl ASC;";
			$cla = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($cla && mysqli_num_rows($cla) >= 1){
		$resultado = $cla;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////
function mostrarTra2($conexion){
			$sql="SELECT * FROM traduccion Order By Idt ASC;";
			$cla = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($cla && mysqli_num_rows($cla) >= 1){
		$resultado = $cla;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////////
function mostrarTra($conexion){
			$sql= "SELECT  e.ne, i.nidio, t.nt  FROM estructura AS e 
			                           JOIN traduccion AS t 
									   ON t.ide=e.Ide
									   JOIN idiomas AS i
									   ON t.ididio=i.Ididio";

		/*	$sql="SELECT   i.nidio, tra.id, t.nt, tra.Ididio, tra.Idt, FROM idiomas AS i
                           JOIN traduccion AS t ON tra.Idt=t.Idt
				        AND  tra.id=id ";*/

			$tra = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($tra && mysqli_num_rows($tra) >= 1){
		$resultado = $tra;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////

function mostrarIdio($conexion){
			$sql="SELECT * FROM idiomas Order By Ididio ASC;";
			$idi = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($idi && mysqli_num_rows($idi) >= 1){
		$resultado = $idi;
	}
	
	return $resultado;
}
/////////////////////////////////////////////////////////////////



////////////////resultado de tablas de estructura y clasificacion con la tabla rel_estru_clasificacion
function result($conexion){
			$sql="SELECT   e.ne, rel.id, c.ncl, rel.Ide, rel.Idcl FROM estructura as e
                   JOIN rel_est_cl as rel ON e.Ide=rel.Ide
				   JOIN clasificacion as c ON rel.Idcl=c.Idcl and rel.id=id ";
								
			$est_y_cla = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($est_y_cla && mysqli_num_rows($est_y_cla) >= 1){
		$resultado = $est_y_cla;
	}
	
	return $resultado;
}

////////////////////////////////////////////////////////
function result2($conexion){
			$sql="SELECT   f.nf, rel.id, c.ncl, rel.Idf, rel.Idcl FROM forma as f
                   JOIN rel_cla_for as rel ON f.Idf=rel.Idf
				   JOIN clasificacion as c ON rel.Idcl=c.Idcl and rel.id=id ";
								
			$for_y_cla = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($for_y_cla && mysqli_num_rows($for_y_cla) >= 1){
		$resultado = $for_y_cla;
	}
	
	return $resultado;
}
////////////////////////////////////////////////////////
function result3($conexion){
			$sql="SELECT  i.nidio, tra.id, t.nt, e.ne, tra.Ididio, tra.Idt, tra.Ide FROM idiomas AS i
                   JOIN rel_est_tra_idio AS tra ON i.Ididio=tra.Ididio
				   JOIN traduccion AS t ON tra.Idt=t.Idt
				   JOIN estructura AS e ON tra.Ide=e.Ide
				   AND  tra.id=id ";
								
			$tra_es_idi = mysqli_query($conexion, $sql);
	
	$resultado = array();
	if($tra_es_idi && mysqli_num_rows($tra_es_idi) >= 1){
		$resultado = $tra_es_idi;
	}
	
	return $resultado;
}



	///////////////////////////////////////////////////////		
function consultaEdit($db,$editar){
			$sql="SELECT c.ne, m.id,a.ncl,m.Ide,m.Idcl FROM estructura as c
                                JOIN rel_est_cl as m ON c.Ide=m.Ide
                                JOIN clasificacion as a ON m.Idcl=a.Idcl and m.id='$editar' ";
			$edit = mysqli_query($db, $sql);
	
	$resultado = array();
	if($edit && mysqli_num_rows($edit) >= 1){
		$resultado = $edit;
	}
	
	return $resultado;
}
?>