<?php
include "../models/funçõesBD.php";
$id = $_GET["id"];
$dados = consultarUsuario($id,$con2);
//var_dump($dados);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mostrar</title>
    <style>
        table{
            font-family: arial, helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        table td, table tr{
            border: 1px;
            padding: 8px;
        }
        table tr:nth-child(even){background-color: #f2f2f2;
        }
        table tr:hover {background-color: #ddd;
        }
        table th{
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA5D;
            color:white;            
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td>ID</td>
            <td><?php echo $dados['idUser']?></td>
        </tr>
        
        <tr>
            <td>Nome</td>
            <td><?php echo $dados['nomeUser']?></td>
            
        </tr>
        <tr>
            <td>E-mail</td>
            <td><?php echo $dados['emailUser']?></td>
        </tr>
        <tr>
            <td>Cadastro</td>
            <td><?php echo $dados['dtCad_User']?></td>
        </tr>
        <tr>
            <td>Senha</td>
            <td><?php echo $dados['senhaUser']?></td>
        </tr>

    </table>
</body>
</html>