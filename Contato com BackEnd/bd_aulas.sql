-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Maio-2023 às 17:37
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
  `dtCadUser` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nomeUser`, `emailUser`, `senhaUser`, `dtCadUser`) VALUES
(1, 'Teste01', 'teste1@gmail.com', '123456', '2023-05-29'),
(2, 'Teste02', 'teste2@gmail.com', '123456', '2023-05-29'),
(3, 'Teste03', 'teste2@gmail.com', '123456', '2023-05-29'),
(4, 'Eu', 'eu@gmail.com', '123456', '2023-05-29'),
(5, 'Eu02', 'eu222@gmail.com', '147852', '2023-05-29'),
(6, 'Teste003', 'teste333@gmail.com', 'asdasdsadd', '2023-05-29'),
(7, 'Teste004', 'teste44@gmail.com', '1478252', '2023-05-29'),
(8, 'Meu nome', 'eu@gmail.com', '1564654', '2023-05-29'),
(9, 'teste09', 'eu999@gmail.com', '1234564', '2023-05-29'),
(10, '<h1>euuu</h1>', 'eu@gmail.com', '189484984', '2023-05-29'),
(11, 'Eu02', '', 'qsaDSA', '2023-05-29'),
(12, 'Eu02', '', 'sdadsda', '2023-05-29'),
(13, 'Eu02', '', 'assaasa', '2023-05-29'),
(14, 'Eu02', '', '454554', '2023-05-29'),
(15, 'Eu', '', 'sddaswads', '2023-05-29'),
(16, 'Eu', '', 'sddaswads', '2023-05-29'),
(17, 'Eu20000', 'eu2222@gmail.com', '41564874', '2023-05-29'),
(18, 'Tatiana ', 'tatiana@gmail.com', '132456465', '2023-05-29'),
(19, 'Tatiana Alves', 'alves@gmail.com', '124564', '2023-05-29'),
(20, 'Teste008', 'eu222@gmail.com', '4564564', '2023-05-29'),
(22, 'Rafael Santos', 'rafael@gmail.com', '12356465', '2023-05-29'),
(23, 'Eu008098', 'eu@gmail.com', '574987897', '2023-05-29'),
(24, 'Teste00458454', 'eu@gmail.com', '478454', '2023-05-29'),
(25, 'Teste00458454', 'eu@gmail.com', '478454', '2023-05-29'),
(26, 'Teste00458454', 'eu@gmail.com', '478454', '2023-05-29'),
(27, 'Teste00458454', 'eu@gmail.com', '478454', '2023-05-29');

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
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
