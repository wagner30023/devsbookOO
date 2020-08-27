-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27-Ago-2020 às 13:14
-- Versão do servidor: 8.0.21-0ubuntu0.20.04.4
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devsbook`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `postcomments`
--

CREATE TABLE `postcomments` (
  `id` int NOT NULL,
  `id_post` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postlikes`
--

CREATE TABLE `postlikes` (
  `id` int NOT NULL,
  `id_post` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `create_at` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userrelations`
--

CREATE TABLE `userrelations` (
  `id` int NOT NULL,
  `user_from` int NOT NULL,
  `user_to` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `work` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `birthdate`, `city`, `work`, `avatar`, `cover`, `token`) VALUES
(1, 'suporte@b7web.com', '1234', 'Bonieky Lacerda', '2020-03-08', '', '', '', '', ''),
(3, 'wagner@gmail.com', '$2y$10$iOxWmziUwMNeQ0ufxQGm.u4i.w7LLbVWPRl/pU2d/tS1Pi9M1avE2', 'Pedro Alvares', '0101-01-01', NULL, NULL, NULL, NULL, '5be55f04017663d3e3b424848a700864'),
(4, 'teste@gmail.com', '$2y$10$HKDOEmAl147fkIDp/sm/Yu.d9WlBzhoICbc7E2jkRxRrqAD0uW01.', 'Pedro Alvares', '1992-03-08', NULL, NULL, NULL, NULL, '6ecbecfd38e4bafc59723bb615fc46cd'),
(5, 'ninja@hotmail.com', '$2y$10$PnJQZejJLxtX1lBaRIJU.ei2tfDu3rmTCB4yk6AbEpga/7a7jjCgK', 'ninja', '1982-09-20', NULL, NULL, NULL, NULL, 'e7a70de3e14fffaa3ed53f4d14afc957'),
(9, 'globo@globo.com', '$2y$10$r/NbbLnJJwYJ8zEYwJvKQ.AiEkZKM0xVS/rYdZbhLKedoT9WS0STK', 'globo', '1945-05-15', NULL, NULL, NULL, NULL, '924d9322bc95aed5373b0712f7b0765e'),
(10, 'ney@gmail.com', '$2y$10$SzzvXv0kSXrg5y37mLsvg./2bFq3b2.2aTcGZVp9nbsi/om2CT8C2', 'neymar', '1992-03-08', NULL, NULL, NULL, NULL, 'b5368a1502d150e3662ebee4f182b3dc'),
(11, 'li@gmail.com', '$2y$10$FmMeoI6o5rkp.g8OFqQid.Fsbg3WL0UNV./RvLLRq98LQc/GvRx4O', 'lica', '2011-01-12', NULL, NULL, NULL, NULL, '8d9c6a99296d671adbfe6b17c0e04825'),
(12, 'ps3@gmail.com', '$2y$10$iPC7SWKCRi8bDfNUzERpiucalNc6dRMDk0RyO83LxbVEQeHlbp/jm', 'ps3', '0101-01-01', NULL, NULL, NULL, NULL, '78f70ad3aac0c78c48c8220181eef2d1'),
(13, 'bk@gmail.com', '$2y$10$P6HF3CZAqHXaPeGpmK/qg.mubYoceNSNjSTrebS/.xJBQaavdCwS2', 'BksEdu', '2013-09-20', NULL, NULL, NULL, NULL, 'd154715afcbb4ef54f18fbda603c1cdc');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `postcomments`
--
ALTER TABLE `postcomments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `postlikes`
--
ALTER TABLE `postlikes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userrelations`
--
ALTER TABLE `userrelations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postcomments`
--
ALTER TABLE `postcomments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `postlikes`
--
ALTER TABLE `postlikes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userrelations`
--
ALTER TABLE `userrelations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
