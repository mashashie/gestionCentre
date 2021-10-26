-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 26 oct. 2021 à 12:20
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `espace_menbre`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_time_publication` datetime NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `date_time_publication`, `photo`) VALUES
(1, 'e.bg', 'salut tout le monde\r\n', '2021-06-26 17:55:32', ''),
(2, 'original', 'pressse toi t\'es trop lent je voudrais é,erger jé', '2021-06-26 21:00:53', ''),
(3, 'original', 'pressse toi t\'es trop lent je voudrais é,erger jé', '2021-06-26 21:12:51', ''),
(4, 'monde phantaisie', 'le fleau c\'est moi', '2021-06-27 17:53:31', ''),
(5, 'module 2', 'le serveur web', '2021-06-27 17:58:37', ''),
(6, 'fantasy inspiration', 'monstre des tenebres ravageant tout sur son passage', '2021-07-05 22:53:36', ''),
(7, 'fantasy inspiration', 'monstre des tenebres ravageant tout sur son passage', '2021-07-05 23:24:59', ''),
(8, 'ali', 'philipe price', '2021-07-05 23:33:58', ''),
(9, 'yuri', 'bienvevu', '2021-07-06 09:51:39', ''),
(10, 'original', 'contenu', '2021-07-07 01:54:55', ''),
(11, '', '', '0000-00-00 00:00:00', ''),
(12, '', '', '0000-00-00 00:00:00', ''),
(13, '', '', '0000-00-00 00:00:00', ''),
(14, '', '', '0000-00-00 00:00:00', ''),
(15, 'e.bg', 'contenu', '2021-07-07 01:59:09', '40 citations de philo à connaître pour le bac.docx'),
(16, 'e.bg', 'contenu', '2021-07-07 02:00:01', '40 citations de philo à connaître pour le bac.docx'),
(17, 'monde phantaisie', 'mode connue sois la domination', '2021-08-14 15:51:21', 'Lunacy, illustratrice_concept artiste.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

DROP TABLE IF EXISTS `authentification`;
CREATE TABLE IF NOT EXISTS `authentification` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `user_password` text,
  `user_registerDate` datetime DEFAULT NULL,
  `user_admin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auto`
--

DROP TABLE IF EXISTS `auto`;
CREATE TABLE IF NOT EXISTS `auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `naissance` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `sexe` varchar(2) NOT NULL,
  `session` varchar(255) NOT NULL,
  `date_enreg` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auto`
--

INSERT INTO `auto` (`id`, `first`, `last`, `age`, `naissance`, `lieu`, `sexe`, `session`, `date_enreg`) VALUES
(5, 'koa essama', 'paulin  brice', 23, '2001-05-06', 'yaounde', 'M', 'JANVIER', '2021-09-28 09:47:06');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `autre` text NOT NULL,
  `date_en` datetime NOT NULL,
  `unique_id` smallint(6) NOT NULL,
  `diplome` varchar(255) NOT NULL,
  `sexe` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `naissance` varchar(30) NOT NULL,
  `lieu` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `pass` text NOT NULL,
  `status` varchar(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `pseudo`, `first`, `last`, `email`, `filiere`, `autre`, `date_en`, `unique_id`, `diplome`, `sexe`, `age`, `naissance`, `lieu`, `ville`, `pass`, `status`, `session`) VALUES
(7, 'paolo', 'feder', 'lyse', 'qwe@yahoo.com', 'web master(BAC MIN)', '', '2021-09-24 09:01:35', 71, 'bts professionnel', 'M', 5, '1955-04-09', 'ekie', '', '$2y$11$dtWSHzK2pNnIpbQpC9dlNu/rc6mxng4aBNcsfTfbPl14D0ZQPt62W', '0', 'SEPTEMBRE'),
(8, 'father', 'ederlyse', 'lyse', 'eden@yahoo.com', 'Infographie (BAC min.)', 'ssskj', '2021-09-24 23:16:41', 9, 'BTS PRO', 'F', 33, '2002-07-06', 'yaounde', 'ekoumdoum', '$2y$11$JxN4FgrQIYY7H14rgEKEAeN3YlV4qC6L29v0TnfdKn91LiUeJ5.2K', '', 'SEPTEMBRE');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`code`, `nom`, `email`, `photo`) VALUES
(17, 'victor', 'dollarressam@gmail.com', 'golem _Destroer_, Maria Trepalina.png'),
(18, 'vuitu', 'mvemvearnoldjunior@gmail.com', 'Gallery ‘Épouvantables Fantômes’ _ Élian Black\'Mor __ Road Book.jfif'),
(19, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(20, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(21, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(22, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(23, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(24, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(25, 'paul', 'mashashie@yahoo.com', 'Digital Art by Eve Ventrue _ Cuded.jfif'),
(26, 'paul', 'mashashie@yahoo.com', 'rain.png');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matiere` varchar(255) NOT NULL,
  `scolarite` int(11) NOT NULL,
  `temps` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `matiere`, `scolarite`, `temps`) VALUES
(12, 'web master(BAC MIN)', 150000, '0000-00-00 00:00:00'),
(14, 'Biochimie=&gt;(BAC MIN)', 20000, '0000-00-00 00:00:00'),
(18, 'informatique (BAC MIN)', 150000, '0000-00-00 00:00:00'),
(20, 'bios (BAC MIN)', 50000, '2021-09-01 10:19:31'),
(22, 'webmaster(BAC MIN)', 150000, '2021-09-02 18:39:28'),
(23, 'Infographie (BAC min.)', 50000, '2021-09-10 12:32:16');

-- --------------------------------------------------------

--
-- Structure de la table `menbre`
--

DROP TABLE IF EXISTS `menbre`;
CREATE TABLE IF NOT EXISTS `menbre` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `niveau` varchar(250) NOT NULL,
  `specialite` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `naissance` date NOT NULL,
  `lieu` varchar(30) NOT NULL,
  `sexe` char(1) NOT NULL,
  `password` text NOT NULL,
  `confirm` int(1) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `date_enreg` datetime NOT NULL,
  `session` varchar(30) NOT NULL,
  `confirmkey` varchar(255) NOT NULL,
  `residence` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `unique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `menbre`
--

INSERT INTO `menbre` (`id`, `first`, `last`, `photo`, `email`, `pseudo`, `niveau`, `specialite`, `age`, `naissance`, `lieu`, `sexe`, `password`, `confirm`, `matricule`, `date_enreg`, `session`, `confirmkey`, `residence`, `status`, `unique_id`) VALUES
(1, 'nem', 'alexis peter parker', '107089.jpg', 'netrick@gmail.com', 'netrick', 'PROBATOIRE', 'web master(BAC MIN)', 23, '2020-11-04', 'yaounde', 'M', 'beb9e66d9c1fb92a840039aae465b2d1f68975db', 1, '21ktncier0341', '2021-10-19 10:22:27', 'SEPTEMBRE', '0la r liepuo8oerplu ali 6ior  elplau3u apll eoir4olulr eaip 5liela orup 8 eual lorpi2 laoiu repl6u earlp lio6o plueail r6upl lraieo 3 ilpa ulore', '', 'hors ligne', 1206467590),
(2, 'qwer banamne', 'barnabe junior', 'img-4.jpg', 'qwe@yahoo.com', 'qwer', 'BAC SCI', 'web master(BAC MIN)', 23, '2001-04-03', 'yaounde', 'M', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '21wqre0274', '2021-10-19 10:37:20', 'SEPTEMBRE', '4 alupl oier6aieup rl ol6 reulo laip6iopeaul  lr7ep all orui0uo larp iel8ro uallie p8olarip lue 8pal uoreli 0uoll rpea i9puleoa ilr 6uiealo l pr', '', 'hors ligne', 809223537),
(3, 'koa essama', 'PAUL', '960021.jpg', 'paul@yahoo.com', 'paul', 'BAC SCI', 'web master(BAC MIN)', 23, '2001-07-09', 'yaounde', 'M', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '21palu2727', '2021-10-23 09:46:00', 'SEPTEMBRE', '9ulp ae ilro6ioaprlel u 0la le proui5pureoill  a5ula pei lor3u lie aolrp5 elr loapui6uopl ilrea 6e lpou liar2 llreoiua p2r ulaeopi l4 roli aulpe', '', 'hors ligne', 961068439);

-- --------------------------------------------------------

--
-- Structure de la table `menbres`
--

DROP TABLE IF EXISTS `menbres`;
CREATE TABLE IF NOT EXISTS `menbres` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `menbres`
--

INSERT INTO `menbres` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'paul', 'tini@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'jerimia', 'jeremia@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(3, 'jeremia valesca', 'jerem@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(4, 'zaz', 'zaz@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(5, 'edward', 'ed@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `outcoming_id` int(11) NOT NULL,
  `temps` datetime NOT NULL,
  `message` text NOT NULL,
  `first` varchar(255) NOT NULL,
  `grade` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

DROP TABLE IF EXISTS `messagerie`;
CREATE TABLE IF NOT EXISTS `messagerie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_expediteur` int(11) NOT NULL,
  `id_destinataire` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `messagerie`
--

INSERT INTO `messagerie` (`id`, `id_expediteur`, `id_destinataire`, `message`) VALUES
(1, 4, 4, 'bonjour zaz j\'aurais besoin d\'un tireur d\'elite pour tuer paul'),
(2, 4, 2, 'bonjour zaz j\'aurais besoin d\'un tireur d\'elite pour tuer paul'),
(3, 2, 2, 'salut'),
(4, 1, 2, 'bonjour le roi\r\n'),
(5, 1, 2, 'bonjour le roi'),
(6, 2, 1, 'mdrrr gros t\'es un ouf haha'),
(7, 2, 1, 'salut a tous '),
(8, 1, 4, 'victor mdrr tu delire c\'est trop ptn '),
(9, 1, 2, 'bonjour le roi comment allez-vous aujourdh\'ui\r\n'),
(10, 5, 6, 'eh paul!!'),
(11, 6, 5, 'hi felisa cv?'),
(12, 2, 1, 'oppopoppoppooo'),
(13, 2, 18, 'bonjour le nouveau c\'est  le roi'),
(14, 18, 2, 'ballec fdp'),
(15, 1, 18, 'bonjour toi cava?'),
(16, 2, 11, 'sasas'),
(17, 19, 17, 'bonjour janis'),
(18, 19, 16, 'sghdjkls;\'d'),
(19, 19, 16, 'sgfhjkl;\'lkjhgfdsfghjkl;kjhgfdsfghjkl;kjhgfds'),
(20, 19, 17, 'hjkl;lmn'),
(21, 24, 20, 'salut kureo suis un grand fan'),
(22, 20, 24, 'hmm'),
(23, 25, 20, 'salut frr'),
(24, 20, 25, 'salut jeremia'),
(25, 25, 20, 'j\'essaie de te joindre depuis mdrr mais t\'es ou encule?'),
(26, 44, 44, 'eh salut comment tu vas?\r\n'),
(27, 6, 67, './'),
(28, 76, 10, 'ehh\r\n\r\n'),
(29, 76, 6, 'n j lj jhbbjhb '),
(30, 76, 10, 'hjgjhjhhvjhfkjhfu'),
(31, 53, 6, 'yo\r\n'),
(32, 1, 2, 'yo\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `incoming_id` int(11) NOT NULL,
  `outcoming_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `tem` datetime NOT NULL,
  `lu` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `temps` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `module`, `unique_id`, `specialite`, `temps`) VALUES
(1, 'web', 713, 'web master(BAC MIN)', '2021-10-19 09:49:02');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(30) NOT NULL,
  `note` int(11) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `temps` timestamp NOT NULL,
  `module` varchar(255) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `matricule`, `note`, `specialite`, `session`, `pseudo`, `temps`, `module`, `first`, `last`) VALUES
(1, '21ktncier0341', 16, 'web master(BAC MIN)', 'SEPTEMBRE', 'netrick', '2021-10-19 09:50:43', 'web', 'nem', 'christian');

-- --------------------------------------------------------

--
-- Structure de la table `note_decision`
--

DROP TABLE IF EXISTS `note_decision`;
CREATE TABLE IF NOT EXISTS `note_decision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `note1` int(11) NOT NULL,
  `note2` int(11) NOT NULL,
  `decision` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_expe` int(11) NOT NULL,
  `id_rec` int(11) NOT NULL,
  `message` text NOT NULL,
  `date_en` datetime NOT NULL,
  `titre` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `date_note` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`id`, `id_expe`, `id_rec`, `message`, `date_en`, `titre`, `tag`, `categorie`, `date_note`) VALUES
(1, 0, 0, 'veuillez payer votre scolarite au plus tard demain merci', '0000-00-00 00:00:00', 'scolarite', 'nem', '', '2021-10-19 23:33:11'),
(2, 0, 0, 'notre personnel vous souhaite a tous la bienvenue dans notre centre', '0000-00-00 00:00:00', 'joyeux !!', '', 'Etudiant', '2021-10-19 23:57:00'),
(3, 1206467590, 809223537, '', '2021-10-20 00:09:03', '', '', '', '0000-00-00 00:00:00'),
(4, 1206467590, 809223537, '', '2021-10-20 00:10:56', '', '', '', '0000-00-00 00:00:00'),
(5, 809223537, 1206467590, '', '2021-10-20 00:14:43', '', '', '', '0000-00-00 00:00:00'),
(6, 0, 0, 'veuillez venir justifier vos heures d\'absences demain ', '0000-00-00 00:00:00', 'absence', 'qwer banamne', '', '2021-10-20 11:10:51'),
(7, 1206467590, 809223537, '', '2021-10-20 11:57:44', '', '', '', '0000-00-00 00:00:00'),
(8, 1206467590, 809223537, '', '2021-10-20 11:57:58', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `notif_en`
--

DROP TABLE IF EXISTS `notif_en`;
CREATE TABLE IF NOT EXISTS `notif_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(30) NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `tag` varchar(30) NOT NULL,
  `date_note` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pension`
--

DROP TABLE IF EXISTS `pension`;
CREATE TABLE IF NOT EXISTS `pension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `solde` double NOT NULL,
  `reste` int(11) NOT NULL,
  `temps` timestamp NOT NULL,
  `tranche1` varchar(20) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pension`
--

INSERT INTO `pension` (`id`, `matricule`, `pseudo`, `session`, `filiere`, `solde`, `reste`, `temps`, `tranche1`, `complete`) VALUES
(1, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 50000, 0, '2021-10-20 12:09:06', 'TRANCHE 1', 0),
(2, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 100000, 0, '2021-10-20 12:09:47', 'TRANCHE 2', 0),
(3, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 1000, 0, '2021-10-20 12:11:08', 'TRANCHE 2', 1),
(4, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 2000, 0, '2021-10-20 12:15:17', 'TRANCHE 2', 1),
(5, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 1200, 0, '2021-10-20 12:19:42', 'TRANCHE 1', 1),
(6, '21wqre0274', 'qwer', 'SEPTEMBRE', 'web master(BAC MIN)', 12333, 0, '2021-10-20 12:20:02', 'TRANCHE 2', 1);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `reponse` text NOT NULL,
  `id_menbre` int(11) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `mv1` varchar(30) NOT NULL,
  `mv2` varchar(30) NOT NULL,
  `mv3` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sanction`
--

DROP TABLE IF EXISTS `sanction`;
CREATE TABLE IF NOT EXISTS `sanction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `absence` int(11) NOT NULL,
  `sanction` varchar(30) NOT NULL,
  `pseudo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `temps` timestamp NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `jour` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_users`
--

DROP TABLE IF EXISTS `site_users`;
CREATE TABLE IF NOT EXISTS `site_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_last` varchar(255) NOT NULL,
  `user_password` text NOT NULL,
  `user_admin` tinyint(4) NOT NULL,
  `naissance` date NOT NULL,
  `pays` varchar(30) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `apropos` text NOT NULL,
  `grade` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `site_users`
--

INSERT INTO `site_users` (`id`, `user_name`, `user_last`, `user_password`, `user_admin`, `naissance`, `pays`, `occupation`, `email`, `mobile`, `apropos`, `grade`, `pseudo`, `unique_id`, `status`) VALUES
(1, 'paul', 'eden', '$2y$11$Ah5lljwwn/EbvaA55ifc6uAGKrTm5xQl07iqTB2C79e2JIM08hgo6', 1, '0000-00-00', '', 'directeur generale', 'eden@yahoo.com', '+237 690  345 211', '', 'root', 'paul', 0, ''),
(2, 'eden ', 'floyd', '$2y$11$qMPtGvE5MJ3ipbaW6t2cbelafgHA7c8Ruu60R0qWqMnPlcP8KDov6', 1, '2001-05-04', 'cameroun', 'ingenieur enseignant ', 'eden@yahoo.com', '+237  692 904  094', 'salut je suis admin bienvenu dans notre centre', 'user', 'eden 203', 0, ''),
(3, 'eden', 'floyd', '$2y$11$wz4tPBNtGMlLBLOyLA8mrO0f8mYSf6pU2F4RWqz4g5lrUdS.TjPHW', 1, '2001-05-04', 'cameroun', 'ingenieur enseignant ', 'qwe@yahoo.com', '+237692904094', 'salut je suis admin ', 'user', 'eden 2033', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

DROP TABLE IF EXISTS `stagiaire`;
CREATE TABLE IF NOT EXISTS `stagiaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(20) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `addresse` varchar(30) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `heures` int(11) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `date_debut` datetime NOT NULL,
  `password` text NOT NULL,
  `confirm` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `stagiaire`
--

INSERT INTO `stagiaire` (`id`, `matricule`, `first`, `last`, `email`, `addresse`, `sexe`, `heures`, `specialite`, `date_debut`, `password`, `confirm`) VALUES
(2, '21STA2670', 'bienvenue charlie', 'viviane', 'eden@yahoo.com', 'aespe', 'M', 0, 'web master(BAC MIN)', '2021-08-08 18:28:49', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(3, '21STA8267', 'leo', 'ansu', 'leo@yahoo.com', 'odza', 'F', 0, 'web master(BAC MIN)', '2021-08-08 19:17:08', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(7, '21STA6562', 'ilove', 'you', 'you@yahoo.com', 'ekoumdoum', 'F', 0, 'web master(BAC MIN)', '2021-08-10 07:17:16', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(8, '21STA3161', 'antoine', 'griezman', 'pelise@yahoo.com', 'ekounou', 'F', 0, 'web master(BAC MIN)', '2021-08-10 07:18:22', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1),
(11, '21STA2128', 'ederlyse', 'lyse', 'qsqs@ssds.com', '70--8776', 'M', 0, 'Biochimie=&gt;(BAC MIN)', '2021-08-30 21:51:50', '3e06306a698fa852172813a2fab35ffa1534b89e', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
