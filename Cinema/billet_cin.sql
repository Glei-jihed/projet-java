-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 14 déc. 2022 à 21:48
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `billet_cin`
--

-- --------------------------------------------------------

--
-- Structure de la table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
CREATE TABLE IF NOT EXISTS `credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `card_number` varchar(200) NOT NULL,
  `expire` varchar(200) NOT NULL,
  `secret_number` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `user_id`, `fullname`, `card_number`, `expire`, `secret_number`) VALUES
(1, 3, 'RAYANE JERBI', '1234-5678-9099-8765', '11/24', 678),
(2, 3, 'Rayane Jerbi', '1234-5678-9098-7654', '12/25', 232),
(3, 2, 'Jihed Glei', '1234-5678-9098-7654', '12/23', 123);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filmName` varchar(20) NOT NULL,
  `note` int(10) NOT NULL,
  `descrip` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `filmName`, `note`, `descrip`, `price`) VALUES
(1, 'Matrix', 10, 'a scientific film', 15),
(2, 'one piece', 9, 'animy film', 10),
(3, 'the lost symbol', 10, 'a historique film', 19),
(4, 'titanic', 10, 'a romantic film', 9);

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

DROP TABLE IF EXISTS `payement`;
CREATE TABLE IF NOT EXISTS `payement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nbr_ticket` int(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_film` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `reduction` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `payement`
--

INSERT INTO `payement` (`id`, `nbr_ticket`, `date`, `id_film`, `id_user`, `reduction`) VALUES
(1, 2, '2022-12-14 15:41:32', 2, 1, 20),
(2, 3, '2022-12-14 15:54:58', 1, 3, 0),
(3, 6, '2022-12-14 16:21:15', 1, 3, 0),
(4, 3, '2022-12-14 17:53:36', 1, 3, 20),
(5, 5, '2022-12-14 21:24:00', 1, 3, 20),
(6, 5, '2022-12-14 21:34:46', 1, 3, 20),
(7, 4, '2022-12-14 21:37:45', 1, 3, 20),
(8, 7, '2022-12-14 21:44:04', 1, 2, 20);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `userName`, `email`, `password`) VALUES
(2, 'jihed', 'jihed@gmail.com', 'jihedjihed'),
(3, 'rayane', 'rayane@gmail.com', 'rayray'),
(4, 'glei', 'glei@gmail.com', 'gleiglei'),
(5, 'mathili', 'mathili@gmail.com', 'matmat'),
(6, 'titou', 'titou@gmail.com', 'titou');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
