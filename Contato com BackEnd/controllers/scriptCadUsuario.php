<?php
include "../models/funçõesBD.php";
//recebendo e validando dados do formulario
$nome = filter_input(INPUT_POST,'nome',FILTER_SANITIZE_STRING);
$email =filter_input(INPUT_POST,'email',FILTER_VALIDATE_EMAIL);
$senha =filter_input(INPUT_POST,'senha',FILTER_SANITIZE_STRING);
$dtCad = date("Y-m-d");

if ($email==false) {
    echo "email invalido";
    exit();

}
//utilizando a função de castrado de usuario
cadastrarUsuario($nome, $email, $senha, $con2);

?>