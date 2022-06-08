<?php

$servidor = "sql106.epizy.com";
$usuario  = "epiz_31552630";
$senha    = "yFMhLM98jZRUaDw";
$dbname   = "epiz_31552630_BDCaduser";

//string de conexão
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

if(!$conn){
    die("Conexão falhou: " . mysqli_connect_error());
} else{
   echo "<h1> Conexão bem sucedida </h1>";
}

?>