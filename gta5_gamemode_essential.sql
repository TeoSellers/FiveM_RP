-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 21 Juin 2017 à 17:23
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gta5_gamemode_essential`
--

-- --------------------------------------------------------

--
-- Structure de la table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `banned` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `banner` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `reason` varchar(150) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `expires` datetime NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `coordinates`
--

CREATE TABLE `coordinates` (
  `identifier` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `items`
--

INSERT INTO `items` (`id`, `libelle`, `value`, `type`) VALUES
(1, 'Bouteille d\'eau', 20, 1),
(2, 'Sandwich', 20, 2),
(3, 'Filet Mignon', 20, 2),
(4, 'Cannabis', 0, 0),
(5, 'Cannabis roulé', 0, 0),
(6, 'Feuille Coka', 0, 0),
(7, 'Coka', 0, 0),
(8, 'Coka', 0, 0),
(9, 'Ephedrine ', 0, 0),
(10, 'Matière illégale', 0, 0),
(11, 'Matière illégale', 0, 0),
(12, 'Meth', 0, 0),
(13, 'Cuivre', 0, 0),
(14, 'Fer', 0, 0),
(15, 'Diamants', 0, 0),
(16, 'Cuivre traité', 0, 0),
(17, 'Fer traité', 0, 0),
(18, 'Diamants traité', 0, 0),
(19, 'Roche', 0, 0),
(20, 'Roche traitée', 0, 0),
(21, 'Poisson', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_name` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `salary` int(11) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_name`, `salary`) VALUES
(1, 'Sans Emploi', 0),
(2, 'Éboueur', 0),
(3, 'Mineur', 0),
(4, 'Chauffeur de taxi', 500),
(5, 'Livreur de bois', 0),
(6, 'Livreur de citerne', 0),
(7, 'Livreur de conteneur', 0),
(8, 'Livreur de médicament', 0),
(9, 'Policier', 0),
(10, 'Ambulancier', 500);

-- --------------------------------------------------------

--
-- Structure de la table `outfits`
--

CREATE TABLE `outfits` (
  `identifier` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `skin` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'mp_m_freemode_01',
  `face` int(11) NOT NULL DEFAULT '0',
  `face_text` int(11) NOT NULL DEFAULT '0',
  `hair` int(11) NOT NULL DEFAULT '0',
  `hair_text` int(11) NOT NULL DEFAULT '0',
  `pants` int(11) NOT NULL DEFAULT '0',
  `pants_text` int(11) NOT NULL DEFAULT '0',
  `shoes` int(11) NOT NULL DEFAULT '0',
  `shoes_text` int(11) NOT NULL DEFAULT '0',
  `torso` int(11) NOT NULL DEFAULT '0',
  `torso_text` int(11) NOT NULL DEFAULT '0',
  `shirt` int(11) NOT NULL DEFAULT '0',
  `shirt_text` int(11) NOT NULL DEFAULT '0',
  `three` int(11) NOT NULL DEFAULT '0',
  `three_text` int(11) NOT NULL DEFAULT '0',
  `seven` int(11) NOT NULL DEFAULT '0',
  `seven_text` int(11) NOT NULL DEFAULT '0',
  `haircolor` int(11) NOT NULL DEFAULT '0',
  `haircolor_text` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `pidentifier` varchar(30) CHARACTER SET utf8mb4 DEFAULT '',
  `phonenumber` varchar(30) CHARACTER SET utf8mb4 DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `police`
--

CREATE TABLE `police` (
  `police_id` int(11) NOT NULL,
  `police_name` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `salary` int(11) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `police`
--

INSERT INTO `police` (`police_id`, `police_name`, `salary`) VALUES
(1, 'Cadet', 500),
(2, 'Brigadier', 500),
(3, 'Sergent', 500),
(4, 'Lieutenant', 500),
(5, 'Capitaine', 500),
(6, 'Commandant', 500),
(7, 'Colonel', 500),
(8, 'Rien', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `identifier` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `group` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `permission_level` int(11) NOT NULL DEFAULT '0',
  `money` double NOT NULL DEFAULT '0',
  `bankbalance` int(32) DEFAULT '0',
  `job` int(11) DEFAULT '1',
  `police` int(11) DEFAULT '0',
  `enService` int(11) DEFAULT '0',
  `dirtymoney` double(11,0) NOT NULL DEFAULT '0',
  `isFirstConnection` int(11) DEFAULT '1',
  `nom` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `prenom` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `telephone` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `user_id` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `item_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_vehicle`
--

CREATE TABLE `user_vehicle` (
  `ID` int(10) NOT NULL,
  `identifier` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `vehicle_name` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_model` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_price` int(60) DEFAULT NULL,
  `vehicle_plate` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_state` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_colorprimary` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_colorsecondary` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `vehicle_pearlescentcolor` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `vehicle_wheelcolor` varchar(60) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_weapons`
--

CREATE TABLE `user_weapons` (
  `ID` int(10) NOT NULL,
  `identifier` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `weapon_model` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `withdraw_cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coordinates`
--
ALTER TABLE `coordinates`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Index pour la table `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`police_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `user_weapons`
--
ALTER TABLE `user_weapons`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `police`
--
ALTER TABLE `police`
  MODIFY `police_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user_vehicle`
--
ALTER TABLE `user_vehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user_weapons`
--
ALTER TABLE `user_weapons`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD CONSTRAINT `user_inventory_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
