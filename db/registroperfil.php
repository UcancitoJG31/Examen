<?php
include('conec.php');

if(isset($_POST['enviar'])){

    $nombre = $_POST ['nombre'];
    $apellidoPaterno =$_POST ['apellido_paterno'];
    $apellidoMaterno = $_POST ['apellido_materno'];
    $telefono = $_POST ['telefono'];
    $correo = $_POST ['correo'];
    $usuario = $_POST ['usuario'];
    $contraseña = $_POST ['contraseña'];
    $insertarperfil = "INSERT INTO perfil (nombre,apellido_paterno,apellido_materno,telefono,correo,usuario,contraseña)
    VALUE ('$nombre','$apellidoPaterno','$apellidoMaterno','$telefono','$correo','$usuario','$contraseña')";
    $resultado = mysqli_query ($conexion,$insertarperfil);

    if(!$resultado){
        echo'<script>alert("Los datos no se insertaron")</script>';
    }
    else{
        echo'<script>alert("Los datos se insertaron")</script>';
    }
}
header('location: perfil.php');
?>