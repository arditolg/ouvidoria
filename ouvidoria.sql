-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2023 às 05:55
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ouvidoria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

CREATE TABLE `acao` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `acao`
--

INSERT INTO `acao` (`id`, `nome`) VALUES
(1, 'Envio de equipe ao Local');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamado`
--

CREATE TABLE `chamado` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `caminho_imagem` varchar(255) DEFAULT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `chamado`
--

INSERT INTO `chamado` (`id`, `nome_usuario`, `id_evento`, `rua`, `bairro`, `numero`, `cep`, `cidade`, `caminho_imagem`, `status`) VALUES
(2, 'ardito', 1, 'Poeta Antonio Bueno Toledo Neto', 'Centro', '91', '12380000', 'Santa Branca', 'imagens/1695247202_1e7f0980-cf1f-422b-98f5-c68d2902b585.jfif', 'Resolvido'),
(3, 'ardito', 1, 'Rua Barão de Jacareí', 'Centro', '50', '12308-001', 'Jacareí', 'imagens/1695322650_347110866_771481501099422_2182782753655996705_n.jpg', 'Time Enviado'),
(4, 'ardito', 1, 'Rua Barão de Jacareí', 'Centro', '50', '12308-001', 'Jacareí', 'imagens/1695690314_phoca_thumb_l_image03_grd.png', 'Resolvido'),
(5, 'luis', 2, 'Rua Barão de Jacareí', 'Centro', '53', '12308-001', 'Jacareí', 'imagens/1695697946_feira-14-scaled.jpg', 'Aberto'),
(6, 'luis', 2, 'Rua Barão de Jacareí', 'Centro', '50', '12308-001', 'Jacareí', 'imagens/1695699317_phoca_thumb_l_image03_grd.png', 'Aberto'),
(7, 'luis', 1, 'Poeta Antonio Bueno Toledo Neto', 'Centro', '126', '12380-000', 'Santa Branca', 'imagens/1695700357_phoca_thumb_l_image03_grd.png', 'Aberto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`id`, `nome`) VALUES
(1, 'Animal Morto'),
(2, 'Bueiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`id`, `nome`) VALUES
(1, 'Resolvido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `perfil` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `usuario`, `nome`, `senha`, `email`, `perfil`) VALUES
(1, 'adm', 'Administrador', 'adm', 'adm@ouvidoria.com', 'administrador'),
(2, 'ardito', 'Luis Gustavo Fernandes Ardito', '$2y$10$Md44/7y6YT1ue4raUnnIOu9CbBh103nUHmdxJhr97qhLoe7EY/HG2', 'luis@gmail.com', 'administrador'),
(3, 'ardito2', 'Ardito', '$2y$10$dLm4xHNd68ja.h0e6T9NBe42o2SN/ATTMPSPr3vUcFcmA60PYhuqG', 'ardito@time.com', 'usuario'),
(4, 'luis', 'Luis', '$2y$10$.UNMR.6jCWznULD4ySJeHuAjLYQ8I5YqPz1W7H3ssJxVv.SUZZC3G', 'luis@gmail.com', 'usuario');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acao`
--
ALTER TABLE `acao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `chamado`
--
ALTER TABLE `chamado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acao`
--
ALTER TABLE `acao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `chamado`
--
ALTER TABLE `chamado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `chamado`
--
ALTER TABLE `chamado`
  ADD CONSTRAINT `chamado_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
