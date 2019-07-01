-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jul-2019 às 16:05
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garrafa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartas`
--

CREATE TABLE `cartas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `distancia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cartas`
--

INSERT INTO `cartas` (`id`, `nome`, `distancia`) VALUES
(7, 'carta', 26144.110116598),
(8, 'carta', 47046.879077499),
(9, 'carta', 4124.2823458247),
(10, 'carta', 0),
(11, 'carta', 4474.2936834874),
(12, 'carta', 39664.55331925),
(13, 'carta', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `selos`
--

CREATE TABLE `selos` (
  `id` int(11) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `cor` varchar(25) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `id_carta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `selos`
--

INSERT INTO `selos` (`id`, `cidade`, `pais`, `data`, `cor`, `latitude`, `longitude`, `id_carta`) VALUES
(18, 'São Paulo', 'Brazil', '2019-06-24', 'blue', '-23.6815314', '-46.875499', 7),
(23, 'Liverpool', 'Reino Unido', '2019-06-24', 'red', '53.408371', '-2.991572', 8),
(24, 'Salvador', 'Brazil', '2019-06-24', 'green', '-12.9016148', '-38.4898477', 8),
(31, 'Buenos Aires', 'Argentina', '2019-06-27', 'blue', '-34.60368', '-58.38155', 8),
(32, 'Bogotá', 'Colombia', '2019-06-27', 'green', '4.5981', '-74.0758 ', 12),
(33, 'Ibagué', 'Colombia', '2019-06-27', 'green', '4.4446759', '-75.24243', 9),
(36, 'Caracas', 'Venezuela', '2019-06-27', 'red', '10.480593', '-66.90360', 11),
(37, 'Rio Verde', 'Brazil', '2019-06-27', 'blue', '-17.79275', '-50.91963', 12),
(38, 'Tokyo', 'Japão', '2019-06-27', 'green', '35.680399', '139.76901', 12),
(39, 'Washington', 'EUA', '2019-06-27', 'red', '38.907192', '-77.03687', 7),
(40, 'Cairo', 'Egypt', '2019-06-27', 'red', '30.044419', '31.235711', 8),
(41, 'Venda Nova do Imigrante', 'Brazil', '2019-06-27', 'blue', '-20.32750', '-41.13593', 11),
(42, 'São José dos Campos', 'Brazil', '2019-06-27', 'red', '-23.22370', '-45.90090', 11),
(43, 'Pedra Menina', 'Brazil', '2019-06-27', 'red', '-18.11562', '-43.11292', 11),
(44, 'Sertãozinho', 'Brazil', '2019-06-27', 'green', '-21.13799', '-47.99013', 9),
(45, 'Nova Delhi', 'India', '2019-06-27', 'green', '28.613939', '77.209021', 8),
(46, 'Pequim', 'China', '2019-06-27', 'red', '39.904199', '116.40739', 7),
(47, 'Seul', 'Coreia do Sul', '2019-06-27', 'red', '37.566535', '126.97796', 7),
(55, 'Ituiutaba', 'Brazil', '2019-06-27', 'red', '-19.01847933365584', '-49.478408607286255', 8),
(56, 'UberlÃƒÂ¢ndia', 'Brazil', '2019-07-01', 'blue', '-18.99321', '-49.443535', 13),
(57, 'UberlÃƒÂ¢ndia', 'Brazil', '2019-07-01', 'red', '-18.99321', '-49.443535', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selos`
--
ALTER TABLE `selos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_carta_1` (`id_carta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartas`
--
ALTER TABLE `cartas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `selos`
--
ALTER TABLE `selos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `selos`
--
ALTER TABLE `selos`
  ADD CONSTRAINT `fk_id_carta_1` FOREIGN KEY (`id_carta`) REFERENCES `cartas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
