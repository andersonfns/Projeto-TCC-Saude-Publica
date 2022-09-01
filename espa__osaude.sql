-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2022 às 18:55
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `espaçosaude`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `id_denuncia` int(11) NOT NULL,
  `id_usuario` varchar(60) NOT NULL,
  `id_ubs` varchar(60) NOT NULL,
  `date_denuncia` date NOT NULL,
  `texto_denuncia` varchar(100) NOT NULL,
  `titulo_denuncia` varchar(30) NOT NULL,
  `resposta_denuncia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `denuncia`
--

INSERT INTO `denuncia` (`id_denuncia`, `id_usuario`, `id_ubs`, `date_denuncia`, `texto_denuncia`, `titulo_denuncia`, `resposta_denuncia`) VALUES
(1, '1', '1', '2022-08-01', 'Muito tempo aguardando para ser atendido.', 'Tempo de Espera', 'Nesse dia tivemos problema de sistema relacionado a fila de espera.'),
(2, '2', '2', '2022-08-02', 'Não conseguiam achar minha veia, sai de la toda furada.', 'Mal atendimento', 'Em alguns pacientes, se torna mais difícil por conta da desidratação que ele se encontra.'),
(3, '3', '3', '2022-08-03', 'Não pude tomar vacina pois se rejeitaram a puxar no sistema minha ficha de vacinação, estão obrigand', 'Falta de acesso a vacinação', 'O sistema muitas vezes não carrega os dados de vacinação, estamos verificando melhorias.'),
(4, '4', '4', '2022-08-04', 'Faltou medicamento e eu não pude fazer meu tratamento pois também não tenho condições de comprar.', 'Falta de medicamento', 'Dependemos da verba do governo, vamos repassar pra frente.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informativo`
--

CREATE TABLE `informativo` (
  `id_informativo` int(11) NOT NULL,
  `titulo_informativo` varchar(45) NOT NULL,
  `texto_informativo` varchar(100) NOT NULL,
  `imagem_informativo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ubs`
--

CREATE TABLE `ubs` (
  `id_ubs` int(11) NOT NULL,
  `endereço_ubs` varchar(100) NOT NULL,
  `cep_ubs` varchar(10) NOT NULL,
  `email_ubs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(60) NOT NULL,
  `email_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(10) NOT NULL,
  `telefone_usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
