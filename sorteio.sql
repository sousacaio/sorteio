-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Maio-2019 às 07:34
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sorteio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorteios`
--

CREATE TABLE `sorteios` (
  `id` int(11) NOT NULL,
  `ganhador` varchar(50) NOT NULL,
  `objeto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sorteios`
--

INSERT INTO `sorteios` (`id`, `ganhador`, `objeto`) VALUES
(1, 'Renato Ruiz', 'Air Fryer'),
(2, 'Ricardo Silva', 'Xbox 360'),
(3, 'Marlon', 'Snapchat Premium'),
(4, 'Arthur Esvael', 'Cuecas de luxo'),
(5, 'Joana D\'Arc', 'Diploma de harvard'),
(6, 'Bel Pesce', 'Curso de empreendedorismo de palco'),
(13, 'putz bicho', 'Objeto kkk'),
(15, 'novo', 'novo'),
(16, 'Joao', 'calcinha da tigresa'),
(17, 'Cleber', 'Cuspe do Michael Jackson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sorteios`
--
ALTER TABLE `sorteios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sorteios`
--
ALTER TABLE `sorteios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
