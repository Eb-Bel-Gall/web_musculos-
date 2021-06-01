<?php
if (isset($_POST)){

//conexcion ala base de datos
require_once 'conexion.php';

//iniciar session
if(!isset($_SESSION)){
    session_start();
}


    $nombre=isset($_POST['nombre']) ? $_POST['nombre'] : false;
    $apellidos=isset($_POST['apellidos']) ? $_POST['apellidos'] : false;
    $email=isset($_POST['email']) ? trim($_POST['email']) : false;
    $password=isset($_POST['password']) ? $_POST['password'] : false;
    
    //Array de errores
     $errores = array();
    

    //Validar nombres
    if(!empty($nombre)&& !is_numeric($nombre) /*&& !preg_match("/[0/9]/", $nombre)*/){
        $nombre_validado = true;
    }else{
        $nombre_validado = false;
        $errores['nombre']="El nombre no es Valido";
    }
    //validar apellidos
    if(!empty($apellidos)&& !is_numeric($apellidos) /*&& !preg_match("/[0/9]/", $apellidos)*/){
        $apellidos_validado = true;
    }else{
        $apellidos_validado = false;
        $errores['apellidos']="Los apellidos no son Validos";
    }
    //Validar email
    if(!empty($email)&& filter_var($email, FILTER_VALIDATE_EMAIL)){
        $email_validado = true;
    }else{
        $email_validado = false;
        $errores['email']="El email no es Valido";
    }
    //validar password
    if(!empty($password)){ 
        $password_validado = true;
    }else{
        $password_validado = false;
        $errores['password']="la contraseña esta vacia";
    }

    
    $guardar_usuario= false;
    if(count($errores) == 0){
        $guardar_usuario = true;
        //insertar usuarios en la tabla correspondiente

        //cifrar contraseña
        $password_segura= password_hash($password, PASSWORD_BCRYPT, ['cost'=>4]);

        $sql="INSERT INTO usuarios VALUES(null, '$nombre', '$apellidos', '$email', '$password_segura', CURDATE());";
        $guardar=mysqli_query($db, $sql);


        //var_dump(mysqli_error($db));
		//die();

        if ($guardar){
            $_SESSION['completado'] ="El registro se ha completado con exito";   
        }else{
            $_SESSION['errores']['general']="Fallo al guardar usuario!!";
        }



    }else{
        $_SESSION['errores']=$errores;
    }
    header('location: views.php');
}
?>