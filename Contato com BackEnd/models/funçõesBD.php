<?php
$server = "localhost"; //127.0.0.1
$bd     = "aulas";
$user   = "root";
$senhabd  = "";

//criar objeto de conexão com POD

function conectar($server,$bd,$user,$senha){
try {
    $con = new PDO("mysql:host=$server;dbname=$bd",$user.$senha);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $con;
} catch (PDOException $e) {
    echo "falha ao conectar: ".$e;
    return null;
}
}


//utilizano a função cadastro do usuario
function cadastrarUsuario($nome, $email, $senha,$con2){    
$dtCad = date("Y-m-d");
//preparando e executando dados do formulario
$sql = "INSERT INTO usuario(nomeUser,emailUser,senhaUser,dtCad_User)values(?,?,?,?)";
$consulta = $con2->prepare($sql);
$consulta->bindValue(1,$nome);
$consulta->bindValue(2,$email);
$consulta->bindValue(3,$senha);
$consulta->bindValue(4,$dtCad);
//executar a consulta ao banco de dados
($consulta->execute());
$con = null;
header("location:../views/resultado.php");
}
function mostrarDadosUsuario($con2){
    $sql = "SELECT * FROM usuario";
$consulta = $con2->prepare($sql);
$consulta->Execute();
$dados = $consulta->fetchAll(PDO::FETCH_ASSOC);
return $dados;
}
function consultarUsuario($id,$con2){
    $sql = "SELECT * FROM usuario WHERE idUser = ?";
$consulta = $con2->prepare($sql);
$consulta->bindvalue(1,$id);
$consulta->execute();
$dados = $consulta->fetch(PDO::FETCH_ASSOC);
return $dados;
}
//utilizando a função conectar
$con2 = conectar($server,$bd,$user,$senhabd);


?>