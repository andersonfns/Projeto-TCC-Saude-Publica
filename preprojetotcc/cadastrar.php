<?php  
    include('conexao.php');

    $nome = $_POST['nome'];
    $nome = $_POST['email'];
    $nome = $_POST['senha'];
    $nome = $_POST['opina'];

    $cad_usuario = "INSERT INTO usuario (nome, email, senha, opina) VALUES('$nome', '$email', '$senha', '$opina')";   
    
    if(mysqli_query($conn, $cad_usuario)){
        echo "<h1> Novo cadastro realizado com sucesso </h1>";
    }else{
        echo "erro: " . $cad_usuario . "</br>" . 
        mysqli_error($conn);
    }
    mysqli_close($conn);
?>