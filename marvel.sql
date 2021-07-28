-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 27 juil. 2021 à 14:15
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `IDactors` int(11) NOT NULL AUTO_INCREMENT,
  `Last_Name` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Age` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDactors`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`IDactors`, `Last_Name`, `First_Name`, `Age`, `created_at`, `updated_at`) VALUES
(1, 'Downey Jr.', 'Robert', '1965-04-04', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(2, 'Paltrow', 'Gwyneth', '1972-09-27', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(3, 'Howard', 'Terrence', '1969-03-11', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(4, 'Bridges', 'Jeff ', '1949-12-04', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(5, 'Norton', 'Edward', '1969-08-18', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(6, 'Tyler', 'Liv', '1977-07-01', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(7, 'Roth', 'Tim', '1961-05-14', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(8, 'Hurt', 'William', '1950-03-20', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(9, 'Rourke', 'Mickey', '1952-09-16', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(10, 'Cheadle', 'Don', '1964-11-29', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(11, 'Johansson', 'Scarlett', '1984-11-22', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(12, 'Rockwell', 'Sam', '1968-11-05', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(13, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(14, 'Portman', 'Natalie', '1981-06-09', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(15, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(16, 'Hopkins', 'Anthony', '1937-12-31', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(17, 'Evans', 'Chris', '1981-06-13', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(18, 'Atwell', 'Hayley', '1982-04-05', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(19, 'Weaving', 'Hugo', '1960-04-04', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(20, 'Stan', 'Sebastian', '1982-08-13', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(21, 'Lee Jones', 'Tommy', '1946-09-15', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(22, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(23, 'Kingsley', 'Ben', '1943-12-31', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(24, 'Pearce', 'Guy', '1967-10-05', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(25, 'Elba', 'Idris', '1972-09-06', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(26, 'L.Jackson', 'Samuel', '1948-12-21', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(27, 'Redford', 'Robert', '1936-08-18', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(28, 'Pratt', 'Chris', '1979-06-21', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(29, 'Saldana', 'Zoe', '1978-06-19', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(30, 'Bautista', 'David', '1969-01-18', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(31, 'Diesel', 'Vin', '1967-07-18', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(32, 'Cooper', 'Bradley', '1975-01-05', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(33, 'Renner', 'Jeremy', '1971-01-07', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(34, 'Rudd', 'Paul', '1969-04-06', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(35, 'Lilly', 'Evangeline', '1979-08-03', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(36, 'Douglas', 'Michael', '1944-09-25', '2021-07-26 11:55:55', '2021-07-26 13:55:55'),
(37, 'Stoll', 'Corey', '1976-03-14', '2021-07-26 11:55:55', '2021-07-26 13:55:55');

-- --------------------------------------------------------

--
-- Structure de la table `join_movies_actors`
--

DROP TABLE IF EXISTS `join_movies_actors`;
CREATE TABLE IF NOT EXISTS `join_movies_actors` (
  `IDmovies` int(11) NOT NULL,
  `IDactors` int(11) NOT NULL,
  KEY `id-movies` (`IDmovies`) USING BTREE,
  KEY `id-actors` (`IDactors`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `join_movies_actors`
--

INSERT INTO `join_movies_actors` (`IDmovies`, `IDactors`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 9),
(3, 2),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20),
(5, 21),
(6, 1),
(6, 17),
(6, 22),
(6, 13),
(6, 11),
(6, 15),
(7, 1),
(7, 2),
(7, 10),
(7, 23),
(7, 24),
(8, 13),
(8, 14),
(8, 15),
(8, 16),
(8, 25),
(9, 17),
(9, 11),
(9, 20),
(9, 26),
(9, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(11, 1),
(11, 17),
(11, 22),
(11, 13),
(11, 11),
(11, 33),
(12, 34),
(12, 35),
(12, 36),
(12, 37);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `IDmovies` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `release_date` year(4) NOT NULL,
  `duration` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDmovies`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`IDmovies`, `title`, `director`, `release_date`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Iron Man', 'Jon Favreau', 2008, 126, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(2, 'L\'Incroyable Hulk', 'Louis Leterrier', 2008, 112, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(3, 'Iron Man 2', 'Jon Favreau', 2010, 125, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(4, 'Thor', 'Kenneth Branagh	', 2011, 114, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(5, 'Captain America: First Avenger', 'Joe Johnston', 2011, 124, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(6, 'Avengers', 'Joss Whedon', 2012, 143, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(7, 'Iron Man 3', 'Shane Black', 2013, 130, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(8, 'Thor : Le Monde des ténèbres', 'Alan Taylor', 2013, 112, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(9, 'Captain America : Le Soldat de l\'hiver', 'Anthony et Joe Russo', 2014, 136, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(10, 'Les Gardiens de la Galaxie', 'James Gunn', 2014, 121, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(11, 'Avengers : L\'Ère d\'Ultron', 'Joss Whedon', 2015, 142, '2021-07-26 11:55:02', '2021-07-26 13:55:02'),
(12, 'Ant-Man', 'Peyton Reed', 2015, 117, '2021-07-26 11:55:02', '2021-07-26 13:55:02');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `join_movies_actors`
--
ALTER TABLE `join_movies_actors`
  ADD CONSTRAINT `id-acteurs` FOREIGN KEY (`IDactors`) REFERENCES `actors` (`IDactors`),
  ADD CONSTRAINT `id-films` FOREIGN KEY (`IDmovies`) REFERENCES `movies` (`IDmovies`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
