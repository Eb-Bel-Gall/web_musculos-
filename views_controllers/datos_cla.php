<?php

if(isset($_POST)){
	
	require_once 'conexion.php';
	
	$estructura = isset($_POST['estructura']) ? (int)$_POST['estructura'] : false;
	$clasificacion = isset($_POST['clasificacion']) ? (int)$_POST['clasificacion'] : false;
	
	// Validación
	$errores = array();
	
	
	if(empty($estructura) && !is_numeric($estructura)){
		$errores['estructura'] = 'La estructura no es válida';
	}
	if(empty($clasificacion) && !is_numeric($clasificacion)){
		$errores['clasificacion'] = 'La clasificacion no es válida';
	}
	
	
	if(count($errores) == 0){
		
	    $sql = "INSERT INTO rel_est_cl VALUES(null, $estructura,  $clasificacion);";
		
		$guardar = mysqli_query($db, $sql);
		
	}else{
				$_SESSION["errores_entrada"] = $errores;
			}
		}

		header("Location: cla.php");
	/*}else{

		$_SESSION["errores_entrada"] = $errores;
		
		if(isset($_GET['editar'])){
			header("Location: editar-entrada.php?id=".$_GET['editar']);
		}else{
			header("Location: crear-entradas.php");
		}
	} */


