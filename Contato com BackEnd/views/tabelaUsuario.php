<?php include '../models/funçõesBD.php';
$dados = mostrarDadosUsuario($con2);
//var_dump($teste);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>tabela de dados<</title>
    <style>
        table{
            font-family: arial,helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%
        }
        table td, table th{
            border: 1px solid #ddd;
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
        <th>Nome</th>
        <th>E-mail</th>
        <th colspan="3">Opçôes</th>
    </tr>

    <?php foreach ($dados as $i) {?>
    <tr>
        <td><?php echo $i['nomeUser']?></td>
        <td><?php echo $i['emailUser']?></td>
        <td><a href="mostrarUsuario.php?id=<?=$i['idUser']?>">Mostrar</a></td>
        <td><a href="#">Editar</a></td>
        <td><a href="#">Excluir</a></td>
    </tr>
    <?php }?>
</table>
    
</body>
</html>