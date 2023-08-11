-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2023 às 17:39
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aulas`
--
CREATE DATABASE IF NOT EXISTS `aulas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aulas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(11) NOT NULL,
  `nomeUser` varchar(100) NOT NULL,
  `emailUser` varchar(100) NOT NULL,
  `senhaUser` varchar(40) NOT NULL,
  `dtCad_User` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nomeUser`, `emailUser`, `senhaUser`, `dtCad_User`) VALUES
(1, 'teste02', 'teste1@gmail.com', '123456', '2023-05-29'),
(2, 'teste01', 'teste1@gmail.com', '123456', '2023-05-29'),
(3, 'lucas almeida', 'lucasalmeida@gmail.com', '123456', '2023-05-29'),
(4, 'lucas pantoja', 'lucaspantoja@gmail.com', '232425', '2023-05-29'),
(5, 'mateus lira', 'mateuslira@gmail.com', '6565676', '2023-05-29'),
(8, 'mateus leiros', 'mateusleiros@gmail.com', '123456', '2023-05-29'),
(11, 'luiz gustavo cruz freire', 'luisgustavo.papairos@gmail.com', '5252426', '2023-05-29'),
(12, 'happhappycat', 'happyhappy@gmail.com', '14524673', '2023-05-29');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
