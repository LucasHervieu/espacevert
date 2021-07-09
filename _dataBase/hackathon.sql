-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 juin 2021 à 12:32
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hackathon`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `id_act` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom_act` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix_act` int(5) NOT NULL,
  `planning_act` datetime NOT NULL,
  PRIMARY KEY (`id_act`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id_commentaire` int(25) NOT NULL AUTO_INCREMENT,
  `text_commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `id_parc` int(25) NOT NULL,
  PRIMARY KEY (`id_commentaire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parc`
--

DROP TABLE IF EXISTS `parc`;
CREATE TABLE IF NOT EXISTS `parc` (
  `id_par` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom_parc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_parc` text COLLATE utf8_unicode_ci NOT NULL,
  `adresse_parc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parc_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parc_planning` text COLLATE utf8_unicode_ci NOT NULL,
  `parc_map` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_par`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `parc`
--

INSERT INTO `parc` (`id_par`, `nom_parc`, `description_parc`, `adresse_parc`, `parc_photo`, `parc_planning`, `parc_map`) VALUES
(1, 'Jardin des Tuileries', 'Le Jardin des Tuileries tient son nom des fabriques de tuiles qui se tenaient à l’endroit où la reine Catherine de Médicis a fait édifier le palais des Tuileries en 1564, aujourd’hui disparu. Le célèbre jardinier du roi, André Le Nôtre, lui donne à partir de 1664 son aspect actuel de jardin à la française. Le jardin, qui sépare le musée du Louvre de la place de la Concorde, est un lieu de promenade et de culture pour parisiens et touristes où les statues de Maillol côtoient celles de Rodin ou de Giacometti. Les deux bassins sont propices à la détente.', 'Place de la Concorde - 75001 Paris', 'jardin_des_tuileries.jpg', 'Du dernier dimanche de septembre au dernier samedi de mars : tous les jours, 7h30-19h30. Du dernier dimanche de mars au dernier samedi de septembre : tous les jours, 7h-21h. Juin, juillet et août : tous les jours, 7h-23h. L\'évacuation du public débute 30 min avant l\'heure de fermeture.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.7230362494533!2d2.3253056155878657!3d48.863491579287995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2c30000001%3A0xc219db09e1bfefc7!2sJardin%20des%20Tuileries!5e0!3m2!1sfr!2sfr!4v1623931880050!5m2!1sfr!2sfr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(2, 'Jardin du Luxembourg', 'Les Jardins du Luxembourg, inspirés des jardins Boboli de Florence, sont un superbe espace vert en plein centre-ville et le parc préféré des Parisiens. En vous y promenant, profitez des jardins français et anglais, de l’Orangerie, du grand bassin octogonal, des statues ainsi que des serres, des ruches, et du verger.', 'Rue de Médicis Rue de Vaugirard, 75006 Paris France', 'jardin_du_luxembourg.jpg', 'Ouverture entre 7h30 et 8h15 et fermeture entre 16h30 et 21h30, selon la saison.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.6286465647086!2d2.334971815587211!3d48.84622167928624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671db36de687b%3A0x791dd61b089f98b!2sLe%20Jardin%20du%20Luxembourg!5e0!3m2!1sfr!2sfr!4v1623931947409!5m2!1sfr!2sfr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(3, 'Parc des Buttes-Chaumont', 'Le parc des Buttes Chaumont, situé dans le nord-est de Paris, est l’un des plus grands espaces verts de Paris (25 hectares) et l’un des plus originaux. Sa construction sur des carrières explique son escarpement et son dénivelé impressionnant. Très vallonné, il réserve de belles perspectives sur la capitale, notamment sur le quartier de Montmartre. Son aménagement, avec ses grottes et cascades, son pont suspendu et sa folie juchée sur un belvédère lui apporte un charme particulier. Il est agrémenté d’arbres exotiques et indigènes et les nombreux oiseaux (mouettes, poules d’eau, canards colverts) se partagent le territoire et profitent du lac artificiel. Le parc propose des animations pour les enfants et dispose de points de restauration pour les gourmands.', '1 Rue Botzaris, 75019 Paris France', 'parc_des_buttes_chaumont.jpg', 'Ouvert tous les jours, horaires variables.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2623.8073198523193!2d2.3805722155885167!3d48.880949579289656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66dc6143ed387%3A0xf26bed6076959491!2sParc%20des%20Buttes-Chaumont!5e0!3m2!1sfr!2sfr!4v1623931979639!5m2!1sfr!2sfr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>');

-- --------------------------------------------------------

--
-- Structure de la table `trouver_activite`
--

DROP TABLE IF EXISTS `trouver_activite`;
CREATE TABLE IF NOT EXISTS `trouver_activite` (
  `id_par` smallint(5) UNSIGNED NOT NULL,
  `id_act` smallint(5) UNSIGNED NOT NULL,
  KEY `fk_parc` (`id_par`),
  KEY `fk_activite` (`id_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
