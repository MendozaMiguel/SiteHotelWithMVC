-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2017 at 11:16 AM
-- Server version: 5.7.19-0ubuntu0.17.04.1
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `category` int(11) NOT NULL,
  `nb_chambres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`category`, `nb_chambres`) VALUES
(1, 10),
(2, 47),
(3, 2),
(4, 3),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chambre`
--

CREATE TABLE `chambre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chambre`
--

INSERT INTO `chambre` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(48, 'Single', 'Au total, 10 Chambres, dont : - 4 chambres avec vue sur basilique - 6 sans option', 55, 'Single.jpg', 1),
(49, 'Chambre Twin', 'Au total, 47 Chambres, dont : - 4 chambres avec balcon et vue sur basilique - 4 chambres avec vue sur basilique et climatisation - 12 chambres avec vue sur basilique', 55, 'Twin_2_lits.jpeg', 2),
(50, 'Chambre Familial Triple 2 lits', 'Au total, 2 Chambres, dont : - 2 sans option', 68, 'Single.jpg', 3),
(52, 'Chambre Familial Quadruple', 'Au total, 2 Chambres, dont : - 2 chambres avec vue sur basilique', 70, 'Familial_Triple_3_lits.jpg', 5),
(61, 'cvccv', 'cvcvccvv', 22, 'Chat_local.png', 1),
(62, 'test3', 'test3', 22, 'UMLv3.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `civilite` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `societe` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `cp` int(5) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`civilite`, `nom`, `prenom`, `email`, `societe`, `adresse`, `cp`, `ville`, `tel`, `message`) VALUES
('M', 'Mendoza Ibanez', 'Miguel Angel', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 93800, 'EPINAY SUR SEINE', '636043604', 'qsdsdsqdqsdqd'),
('M', 'Mendoza', 'Ibanez', 'Mendozamiguel@outlook.fr', '', '16 Rue Dumas', 93800, 'Épinay-sur-Seine', '618539746', 'Djdjdj'),
('Mme', 'Mendoza Ibanez', 'Miguel Angel', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 93500, 'EPINAY SUR SEINE', '0636043604', 'qsdsdsqdqsdqd'),
('Mlle', 'Mendoza Ibanez', 'Miguel Angel', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 23333, 'EPINAY SUR SEINE', '0636043604', 'qsdsdsqdqsdqd'),
('M', 'Mendoza Ibanez', 'Miguel Angel', 'sqdqsd@qsdqsdsq.com', 'Simplon', 'azezeaze', 93500, 'EPINAY SUR SEINE', '0636043604', 'qsdsdsqdqsdqd'),
('M', '<b>dzdzzdzdzdzdzzdzd</b>', 'qsdsdqsdqs', 'sdqsds@sdqsdsd.com', 'Simplon', '5 rue paris', 93500, 'EPINAY SUR SEINE', '+33636043604', 'qsdsdsqdqsdqd'),
('Mlle', 'ta', 'mere', 'dqdqsd@sdqsd.fr', 'qsdqsd', 'sdqsd', 93500, 'pantin', '0617181818', '<script>window.alert(« test »)</script>'),
('Mlle', 'sdqsddd', 'qsdsdqsd', 'qsdsdqsdq@sqdqsdqsd.com', 'sqdsqd', 'qsdqsdsqdq', 98765, 'dsqdqsdsqdsqd', '0612345678', '<script>alert(‘Hack’)</script>'),
('Mlle', 'tetete', 'etetetet', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 93800, 'EPINAY SUR SEINE', '0636043604', 'qsdsdsqdqsdqd'),
('M', 'test3', 'test3', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 12344, 'EPINAY SUR SEINE', '+33123456789', 'qsdsdsqdqsdqd'),
('M', 'test4', 'test4', 'mendozamiguel@outlook.fr', 'Simplon', '5 rue paris', 33333, 'EPINAY SUR SEINE', '0636043604', 'qsdsdsqdqsdqd');

-- --------------------------------------------------------

--
-- Table structure for table `Facturation`
--

CREATE TABLE `Facturation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Facturation`
--

INSERT INTO `Facturation` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `datechoisi` datetime NOT NULL,
  `nb_nuit` int(2) NOT NULL,
  `nb_personnes` int(2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `comp_adresse` varchar(255) NOT NULL,
  `cp` int(5) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `single` int(2) NOT NULL,
  `twin` int(2) NOT NULL,
  `familial_triple_2_lits` int(2) NOT NULL,
  `familial_triple_3_lits` int(2) NOT NULL,
  `familial_quadruple` int(2) NOT NULL,
  `options_supplementaires` int(2) NOT NULL,
  `balcon` varchar(255) NOT NULL,
  `vue` varchar(255) NOT NULL,
  `climatisation` varchar(255) NOT NULL,
  `msgcomplementaire` varchar(255) NOT NULL,
  `id_facturation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `datechoisi`, `nb_nuit`, `nb_personnes`, `type`, `nom`, `prenom`, `tel`, `adresse`, `comp_adresse`, `cp`, `ville`, `pays`, `single`, `twin`, `familial_triple_2_lits`, `familial_triple_3_lits`, `familial_quadruple`, `options_supplementaires`, `balcon`, `vue`, `climatisation`, `msgcomplementaire`, `id_facturation`) VALUES
(12, '2017-06-15 04:00:40', 1, 1, 'Chambre seule', 'Mendoza Ibanez', 'Miguel Angel', '0636043604', '5 rue paris', 'azezezae', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'qsdqsdqsd', 1),
(13, '2017-08-31 12:00:00', 1, 1, 'Chambre seule', 'a', 'a', '0612345678', '5 rue paris', 'dsdsd', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'sdd', 2),
(14, '2017-08-30 12:00:00', 1, 1, 'Chambre seule', 'ssdqssdqsd', 'qsdqsdqsdsqd', '0636043604', 'sdqsdsq', 'qsdqsdqsd', 93500, 'sqsdqdqs', 'qsdqsdqsd', 6, 4, 4, 10, 2, 1, 'Oui', 'Sans importance', 'Oui', 'sqdqsdsqdqd', 3),
(15, '2017-08-09 12:00:00', 5, 4, 'Demi-pension', 'azezaea', 'sdsdq', '0636043604', '5 rue paris', 'sdqsdqs', 88888, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'qsdqsqsd', 0),
(16, '2017-08-24 12:16:28', 6, 5, 'Demi-pension', 'Mendoza Ibanez', 'miguel2', '0636043604', '16rue dumas', 'dddd', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'zdsqdsd', 0),
(17, '2017-08-30 12:00:00', 1, 1, 'Chambre seule', 'testttt', 'testttt', '0636043604', '5 rue paris', 'azezezae', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'dsdsds', 1),
(18, '2017-08-25 12:00:00', 1, 1, 'Chambre seule', 'testttt', 'testttt', '0636043604', '5 rue paris', 'azezezae', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'dsdsds', 1),
(19, '2017-08-23 12:00:00', 1, 1, 'Chambre seule', 'testttt', 'testttt', '0636043604', '5 rue paris', 'azezezae', 93800, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'dsdsds', 0),
(20, '2017-08-24 12:00:00', 1, 1, 'Chambre seule', 'test3', 'test3', '0636043604', '5 rue paris', 'azezezae', 88888, 'EPINAY SUR SEINE', 'France', 1, 1, 1, 1, 1, 1, 'Sans importance', 'Sans importance', 'Sans importance', 'dffqsdfqsds', 1),
(21, '2017-08-24 12:00:00', 1, 1, 'Chambre seule', 'test4', 'test4', '0636043604', '5 rue paris', 'azezezae', 93800, 'EPINAY SUR SEINE', 'France', 1, 4, 4, 2, 1, 3, 'Sans importance', 'Sans importance', 'Sans importance', 'qsqds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `prenom`, `motdepasse`) VALUES
(1, 'admin', '$2a$10$aka3/UMiJQa4qKGMtdBb7ug2noUcr67.wU5rxsqVuI9ZAdlZ7p3IS'),
(79, 'miguel2', '$2a$10$/7WfyDM6iQcZLbDdwRZWl.sZVaYv8c6BflCvTLM6Yv/3GYTolUTF6'),
(81, 'miguel', '$2a$10$jcfGTkPNWOKCkBvvhZkcxuLDEJc3SvtYKxhnkJYrIlvaWPmFruhby'),
(82, 'test3', '$2a$10$eQIRltpkzTijSkwNoVqsEO6gWRLB5lfK7.NBFspA/cIJYk5IMK.3S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`category`);

--
-- Indexes for table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `Facturation`
--
ALTER TABLE `Facturation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_facturation` (`id_facturation`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `Facturation`
--
ALTER TABLE `Facturation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chambre`
--
ALTER TABLE `chambre`
  ADD CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categorie` (`category`);

--
-- Constraints for table `Facturation`
--
ALTER TABLE `Facturation`
  ADD CONSTRAINT `Facturation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservation` (`id_facturation`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
