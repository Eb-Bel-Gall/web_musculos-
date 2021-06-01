<?php

if(isset($_POST)){
	
	require_once 'conexion.php';
	
	
    $clasificacion = isset($_POST['clasificacion']) ? (int)$_POST['clasificacion'] : false;
    $forma = isset($_POST['forma']) ? (int)$_POST['forma'] : false;
	
	// Validación
	$errores = array();
	
	
	
	if(empty($clasificacion) && !is_numeric($clasificacion)){
		$errores['clasificacion'] = 'La clasificacion no es válida';
	}
	if(empty($forma) && !is_numeric($forma)){
		$errores['forma'] = 'La forma no es válida';
	}
	
	if(count($errores) == 0){
		
	    $sql = "INSERT INTO rel_cla_for VALUES(null, $clasificacion, $forma);";
		
		$guardar = mysqli_query($db, $sql);
		
	}else{
				$_SESSION["errores_entrada"] = $errores;
			}
		}

		header("Location: for.php");