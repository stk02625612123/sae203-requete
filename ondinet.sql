-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 03 nov. 2024 à 09:35
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ondinet`
--

-- --------------------------------------------------------

--
-- Structure de la table `photographie`
--

DROP TABLE IF EXISTS `photographie`;
CREATE TABLE IF NOT EXISTS `photographie` (
  `id_Photographie` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Slug` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_Photographie`),
  UNIQUE KEY `id_Photographie_UNIQUE` (`id_Photographie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `photographie`
--

INSERT INTO `photographie` (`id_Photographie`, `Nom`, `Img`, `Date`, `Slug`) VALUES
(1, '', 'mer.jpeg', NULL, NULL),
(2, '', 'classe2.jpeg', NULL, NULL),
(3, '', 'fleur.jpeg', NULL, NULL),
(5, '', 'coupains.jpeg', NULL, NULL),
(6, NULL, 'sunset.jpg', NULL, NULL),
(7, NULL, 'star.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `productions`
--

DROP TABLE IF EXISTS `productions`;
CREATE TABLE IF NOT EXISTS `productions` (
  `id_Productions` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Date` date DEFAULT NULL,
  `Slug` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_Productions`),
  UNIQUE KEY `id_Productions_UNIQUE` (`id_Productions`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `productions`
--

INSERT INTO `productions` (`id_Productions`, `Nom`, `Img`, `Description`, `Date`, `Slug`) VALUES
(1, NULL, 'Moodboard.jpeg', NULL, NULL, NULL),
(2, NULL, 'logotype.jpeg', NULL, NULL, NULL),
(3, NULL, '2.jpeg', NULL, NULL, NULL),
(4, NULL, '3.jpeg', NULL, NULL, NULL),
(5, NULL, '4.jpeg', NULL, NULL, NULL),
(6, NULL, '5.jpeg', NULL, NULL, NULL),
(7, NULL, 'affiche.jpeg', NULL, NULL, NULL),
(8, NULL, 'billboard.jpeg', NULL, NULL, NULL),
(9, NULL, 'sky.PNG', NULL, NULL, NULL),
(10, NULL, 'sky1.PNG', NULL, NULL, NULL),
(11, NULL, 'dream.jpeg', NULL, NULL, NULL),
(12, NULL, 'dream2.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE IF NOT EXISTS `serie` (
  `id_serie` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Date` date DEFAULT NULL,
  `Auteur` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Slug` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_serie`),
  UNIQUE KEY `id_serie_UNIQUE` (`id_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`id_serie`, `Nom`, `Img`, `Description`, `Date`, `Auteur`, `Slug`) VALUES
(1, 'Outer Banks', 'obanks.jpg', 'Outer Banks suit un groupe d\'adolescents dans une petite île de Caroline du Nord, divisée entre les riches Kooks et les modestes Pogues. John B, le leader des Pogues, découvre une carte menant à un trésor légendaire, lié à la mystérieuse disparition de son père. Avec ses amis Kiara, JJ, et Pope, il se lance dans une aventure périlleuse, affrontant les dangers, les rivalités, et les secrets de l\'île. Tandis qu’ils se rapprochent du trésor, des ennemis puissants surgissent, mettant leur loyauté et leur amitié à rude épreuve', '2020-04-15', 'Shannon Burke, Josh Pate and Jonas Pate', NULL),
(2, 'J\'irai te voir dans ma prochaine vie', 'kdrama.jpg', 'Ban Ji Eum est une femme qui a la capacité surnaturelle de se souvenir de toutes ses vies passées et de répéter sa vie par la réincarnation depuis près de mille ans. Après que sa dix-huitième vie a été interrompue à cause d\'un tragique accident, elle décide de renouer avec les gens de sa vie passée dans sa dix-neuvième. Elle va faire la rencontre de Moon Seo Ha qui est l\'héritier d\'une famille riche qui souffre d\'un traumatisme après un accident de voiture.', '2023-06-17', 'Lee Hye', NULL),
(3, 'The Originals', 'original.jpg', 'Le vampire originel Klaus fait son retour au Vieux Carré, un quartier français de la Nouvelle Orléans. Dans cette ville qu’il a aidé à construire quelques siècles plus tôt, il y retrouve son ancien protégé, le diabolique et charismatique Marcel. Dans l’espoir d’aider son jeune frère à trouver la rédemption, Elijah est contraint de s’allier avec des ennemis de Marcel...', '2013-04-25', 'Julie Plec', NULL),
(4, 'Naruto shippuden', 'anime.jpg', 'Naruto est de retour !! Après deux ans et demi d\'entraînement avec Jiraya, il retrouve ses camarades de l\'Académie des ninja ainsi que ses professeurs de Konoha. Tous ont évolué, y compris les ninjas du village de Suna. Seul Kakashi, semble être resté fidèle à lui-même ! Hélas, les retrouvailles sont de courte durée. Gaara, devenu depuis peu Kazekage de son village, est menacé. Tout porte à croire que l\'Akatsuki soit à l\'origine de l\'attaque.', '2007-02-15', 'Masashi Kishimoto', NULL),
(5, 'Teen Wolf', 'teenwolf.jpg', 'Scott McCall est un adolescent tout ce qu\'il y a de plus ordinaire. Il n\'est pas le plus populaire de son lycée, il n\'en est pas la risée non plus... Un soir, son meilleur ami Stiles le convainc de suivre en cachette les recherches de la police pour retrouver un corps dans les bois alentours. Au cours de cette expédition, il se retrouve nez à nez avec une bête étrange et particulièrement féroce. Il échappe de peu à cette attaque et, chanceux, avec une seule blessure: une vilaine morsure. Le lendemain, Scott se sent bizarre. Sans qu\'il ne le sache encore, sa vie vient de changer. Il est devenu un loup-garou...', '2011-10-03', 'Jeff Davis', NULL),
(6, 'Crash landing on you', 'kdrama2.jpg', 'Yoon Se-ri est une riche héritière sud-coréenne. Lors d\'une balade en parapente, elle se retrouve prise dans une tornade, qui dévie sa trajectoire et l\'envoie en Corée du Nord. Loin des siens et incapable de contacter son pays, Yoo Se-ri est livrée à elle-même. Sa rencontre avec Ri Jeong-hyeok, un officier de l\'armée nord-coréenne, va bouleverser sa vie. Alors qu\'il tente de l\'aider en secret à retourner en Corée du Sud et que tout les oppose, Se-ri et Jeong-hyeok vont tomber amoureux.', '2020-02-16', 'Lee Jeong-hyo and Park Ji-eun', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `volleyball`
--

DROP TABLE IF EXISTS `volleyball`;
CREATE TABLE IF NOT EXISTS `volleyball` (
  `id_volleyball` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Slug` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_volleyball`),
  UNIQUE KEY `id_volleyball_UNIQUE` (`id_volleyball`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `volleyball`
--

INSERT INTO `volleyball` (`id_volleyball`, `Nom`, `Img`, `Description`, `Slug`) VALUES
(1, 'Ma Vie en Mode Volley-ball', 'hai.jpg', 'Le volley-ball est bien plus qu\'un simple sport pour moi, c\'est une véritable passion qui m\'a appris la discipline, l\'esprit d\'équipe et la persévérance. J\'ai commencé à jouer dès mon enfance, à l\'école primaire, avec mes amis ou même avec les plus grands qui s\'entraînaient ou jouaient pour le plaisir dans mon village à Futuna. Depuis, ce sport est devenu un élément essentiel de ma vie.', NULL),
(2, 'Quand le Volley s’invite dans les Anime : Haikyuu!!', NULL, 'En plus de jouer, j’aime bien regarder des séries et des contenus autour du volley-ball. J’ai commencé l’anime Haikyuu!!, qui raconte l’histoire de lycéens passionnés de ce sport. Même si je n’ai pas encore vu tous les épisodes, j’apprécie vraiment la manière dont il montre l’esprit d’équipe, la détermination et la passion pour le volley, des valeurs qui me parlent beaucoup.', NULL),
(3, 'Le Volley-ball aux JO de Paris 2024 ', NULL, 'Les Jeux Olympiques de Paris 2024 ont été marqués par des moments forts pour les fans de volley-ball, avec des victoires historiques pour les équipes féminine et masculine. Chez les femmes, l’Italie a remporté son tout premier titre olympique en battant les États-Unis en trois sets (25-18, 25-20, 25-17). L\'équipe a brillé tout au long du tournoi, dominant ses adversaires sans perdre un seul set après le match initial.\r\n\r\nCôté masculin, la France a créé l’exploit en défendant son titre olympique en battant la Pologne, l’équipe numéro un mondiale, en trois sets (25-19, 25-20, 25-23). Les Français deviennent ainsi la première équipe masculine à réussir cet exploit depuis 1988. Les États-Unis complètent le podium en remportant le bronze face à l\'Italie, clôturant un tournoi mémorable pour le volley-ball​\r\n', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
