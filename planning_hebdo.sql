-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 29 avr. 2018 à 08:40
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `planning_hebdo`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `HEUREDEBUT` char(5) NOT NULL,
  `NJOUR` char(12) NOT NULL,
  `NSALLE` char(20) NOT NULL,
  `TYPEMATIERE` char(20) NOT NULL,
  `NELEVE` char(30) NOT NULL,
  `TYPE` char(20) NOT NULL,
  PRIMARY KEY (`HEUREDEBUT`,`NJOUR`,`NSALLE`,`TYPEMATIERE`,`NELEVE`,`TYPE`),
  KEY `FK_COURS_NJour_JOUR` (`NJOUR`),
  KEY `FK_COURS_NomSalle_SALLE` (`NSALLE`),
  KEY `FK_COURS_TypeMatiere_MATIERE` (`TYPEMATIERE`),
  KEY `FK_COURS_NomEleve_ELEVE` (`NELEVE`),
  KEY `FK_COURS_Type_TYPE_COURS` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE IF NOT EXISTS `eleve` (
  `NELEVE` char(30) NOT NULL,
  `PRENOMELEVE` char(30) NOT NULL,
  `NGROUPE` char(30) DEFAULT NULL,
  PRIMARY KEY (`NELEVE`),
  KEY `FK_ELEVE_NomGroupe_GROUPE` (`NGROUPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`NELEVE`, `PRENOMELEVE`, `NGROUPE`) VALUES
('ACKER', 'Arnaud', 'F11'),
('ACKERMANN', 'Pierre', 'F31'),
('ALVES', 'Guillaume', 'F22'),
('ANDRIAMIANDRARIVO', 'Hubert Brayan', 'F12'),
('ANDRIOLO', 'Caroline', 'F11'),
('AULEN', 'Lucas', 'F12'),
('AYDIN', 'Kadir', 'F11'),
('BALSON', 'Yann', 'F11'),
('BALTA', 'Cindy', 'F32'),
('BARTHLEN', 'Arthur', 'F22'),
('BAZIN', 'Maxime', 'F21'),
('BITON', 'Jocelyn', 'F11'),
('BORGONDO', 'David', 'F14'),
('BOULAAJOUL', 'Badr', 'F13'),
('BOURGUIGNON', 'Kevin', 'F31'),
('BRIOT', 'Anthony', 'F31'),
('BRIOTTET', 'Antoine', 'F31'),
('BUTTANI', 'Justine', 'F12'),
('CAILLAUD', 'Jean-Baptiste', 'F32'),
('CHEUNG', 'Teva', 'F31'),
('CHOUFFERT', 'Tristan', 'F31'),
('CLAUDE', 'Leo', 'F14'),
('CRAGNOLINI', 'Julien', 'F11'),
('DE CHENERILLES', 'Pablo', 'F14'),
('DENNY', 'Thibaut', 'F22'),
('DEVEZE', 'Killian', 'F12'),
('DIETSCHIN', 'Valentin', 'F12'),
('DOMINGO', 'Alice', 'M1'),
('ELBERTSE', 'Alexy', 'F22'),
('ESCHKE', 'Thomas', 'F11'),
('FACHE', 'Bruno', 'F14'),
('FELLRATH', 'Jonathan', 'F31'),
('FERNANDES', 'Yoann', 'F11'),
('FOUBERT', 'Guillaume', 'F31'),
('FREYMANN', 'Ludwig', 'F11'),
('FUCHS', 'Emilien', 'F13'),
('GALATI', 'Gaetan', 'F13'),
('GAMPER', 'Rebecca', 'M1'),
('GAU', 'Pierre-Alain', 'F14'),
('GAWLIK', 'Alexis', 'F14'),
('GERGES', 'Celine', 'F12'),
('GIOVINAZZO', 'Alexis', 'F21'),
('GOETZ', 'Thibaud', 'F14'),
('GRASSET', 'Jordan', 'M2'),
('GRIMAZ', 'Jeremie', 'F12'),
('GUERRERO', 'Maxime', 'F21'),
('HAAS', 'Mathieu', 'F12'),
('HAEHNEL', 'Valentin', 'M2'),
('HAJNAL', 'Florian', 'F13'),
('HELFER', 'Antoine', 'F14'),
('HERNANDEZ', 'Alexis', 'F22'),
('HERRMANN', 'Florian', 'F21'),
('HOEL', 'Julien', 'F11'),
('HOSSANN', 'Vincent', 'F14'),
('ISS', 'Fiona', 'F13'),
('JEHL', 'Regis', 'M2'),
('JUNG', 'Lucas', 'F31'),
('KAYSER', 'Matthieu', 'F13'),
('KERGROHEN', 'Pierre-Yves', 'F21'),
('KLEINCLAUS', 'Florent', 'F32'),
('KRETZ', 'Teo', 'F31'),
('LAMARRE', 'Benoit', 'F14'),
('LAMOUR', 'Anthony', 'F21'),
('LASKOWSKI', 'Axel', 'F11'),
('LORANGE', 'Pauline', 'F12'),
('MADER', 'Maxime', 'F12'),
('MAGGAY', 'Cedric', 'F13'),
('MARTIN', 'Alexandre', 'F21'),
('MATHIEU', 'Tristan', 'F12'),
('MOCK', 'Romain', 'F12'),
('MONNIER', 'Laetitia', 'F22'),
('MORICONI', 'Lenny', 'F22'),
('MURE', 'Lucas', 'F32'),
('NOIRET-LEMAIRE', 'Lenny', 'F12'),
('NOYON', 'Nathan', 'F11'),
('PIN', 'Killian', 'F22'),
('PROB', 'Bastien', 'F11'),
('QUENET', 'Raphael', 'F14'),
('RENCUREL', 'Pierre', 'F32'),
('RENNER', 'Julien', 'F31'),
('RIETSCH', 'Virgile', 'F32'),
('RINCK', 'Adrien', 'F22'),
('ROCHAS', 'Valentin', 'F13'),
('ROCHE', 'Charles', 'F21'),
('ROUX', 'Anthony', 'F12'),
('SAINT JULIEN', 'Joffrey', 'F12'),
('SCHEER-ALM', 'Benjamin Claude', 'F13'),
('SCHMIDT', 'Arnaud', 'F32'),
('SCHNEE', 'Louis', 'F14'),
('SIMON', 'Pierre-Andre', 'F13'),
('STADELMANN', 'Louis', 'F31'),
('SUTTERLIN', 'Sebastien', 'F32'),
('TAUPENOT', 'Flavien', 'F32'),
('TRICHET', 'Florentin', 'F22'),
('UBRIG', 'Joric', 'F11'),
('UNALAN', 'Gokhan', 'F21'),
('VELTZ', 'Quentin', 'F14'),
('VIE', 'Loic', 'F13'),
('VINDIGNI', 'Fabio', 'F14'),
('VIRION', 'Louis', 'F11'),
('WAHLER', 'Adrian', 'F22'),
('WALLISCH', 'Alexis', 'F13'),
('WEBER', 'Max', 'F32'),
('WEILER', 'William', 'F21'),
('WENDLING', 'Bruno', 'F21'),
('WERLY', 'Tomeline', 'F13'),
('WILHELM', 'Stephane', 'F14'),
('ZIMMER', 'Noe', 'F13');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `NENSEIGNANT` char(20) NOT NULL,
  `PRENOMENSEIGNANT` char(20) DEFAULT NULL,
  PRIMARY KEY (`NENSEIGNANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`NENSEIGNANT`, `PRENOMENSEIGNANT`) VALUES
('Besmond', 'Marine'),
('Dentinger', 'Emelyne'),
('Hatton', 'Jerome'),
('Lehmann', 'Nicolas'),
('Loth', 'Nicolas'),
('Madembo', 'Grâce'),
('Muller', 'Charley');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `NGROUPE` char(10) NOT NULL,
  `NIVEAU` char(10) DEFAULT NULL,
  PRIMARY KEY (`NGROUPE`),
  KEY `FK_GROUPE_Nclasse_NIVEAU` (`NIVEAU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`NGROUPE`, `NIVEAU`) VALUES
('F31', 'Bachelor'),
('F32', 'Bachelor'),
('F11', 'Fondation1'),
('F12', 'Fondation1'),
('F13', 'Fondation1'),
('F14', 'Fondation1'),
('F21', 'Fondation2'),
('F22', 'Fondation2'),
('M1', 'Master1'),
('M2', 'Master2');

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

DROP TABLE IF EXISTS `jour`;
CREATE TABLE IF NOT EXISTS `jour` (
  `NJOUR` char(12) NOT NULL,
  PRIMARY KEY (`NJOUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jour`
--

INSERT INTO `jour` (`NJOUR`) VALUES
('Jeudi'),
('Lundi'),
('Mardi'),
('Mercredi'),
('Vendredi');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `TYPEMATIERE` char(20) NOT NULL,
  `NENSEIGNANT` char(20) DEFAULT NULL,
  PRIMARY KEY (`TYPEMATIERE`),
  KEY `FK_MATIERE_NomEnseignant_ENSEIGNANT` (`NENSEIGNANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`TYPEMATIERE`, `NENSEIGNANT`) VALUES
('Japonais', 'Besmond'),
('Anglais2', 'Dentinger'),
('AlGOTP1bis', 'Lehmann'),
('C', 'Lehmann'),
('C#', 'Lehmann'),
('C++', 'Lehmann'),
('WebTP1bis', 'Lehmann'),
('Game design', 'Loth'),
('ALGOTP1', 'Madembo'),
('APPMOB', 'Madembo'),
('BDD', 'Madembo'),
('WebTP1', 'Madembo'),
('WebTP2', 'Madembo'),
('Anglais1', 'Muller');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `NIVEAU` char(15) NOT NULL,
  PRIMARY KEY (`NIVEAU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`NIVEAU`) VALUES
('Bachelor'),
('Fondation1'),
('Fondation2'),
('Master1'),
('Master2');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `NSALLE` char(20) NOT NULL,
  PRIMARY KEY (`NSALLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`NSALLE`) VALUES
('Kirby'),
('Lara Croft'),
('Link'),
('Master Chief'),
('Pokemon'),
('Sonic');

-- --------------------------------------------------------

--
-- Structure de la table `tranche_horaire`
--

DROP TABLE IF EXISTS `tranche_horaire`;
CREATE TABLE IF NOT EXISTS `tranche_horaire` (
  `HEUREDEBUT` char(5) NOT NULL,
  `HEUREFIN` char(5) DEFAULT NULL,
  PRIMARY KEY (`HEUREDEBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tranche_horaire`
--

INSERT INTO `tranche_horaire` (`HEUREDEBUT`, `HEUREFIN`) VALUES
('09h00', '10h00'),
('10h00', '11h00'),
('12h00', '13h00'),
('14h00', '15h00'),
('15h00', '16h00'),
('16h00', '17h00'),
('17h00', '18h00');

-- --------------------------------------------------------

--
-- Structure de la table `type_cours`
--

DROP TABLE IF EXISTS `type_cours`;
CREATE TABLE IF NOT EXISTS `type_cours` (
  `TYPE` char(20) NOT NULL,
  PRIMARY KEY (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_cours`
--

INSERT INTO `type_cours` (`TYPE`) VALUES
('Cours magistraux'),
('TP'),
('Workshop');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FK_COURS_HeureDebut_TRANCHE_HORAIRE` FOREIGN KEY (`HEUREDEBUT`) REFERENCES `tranche_horaire` (`HEUREDEBUT`),
  ADD CONSTRAINT `FK_COURS_NJour_JOUR` FOREIGN KEY (`NJOUR`) REFERENCES `jour` (`NJOUR`),
  ADD CONSTRAINT `FK_COURS_NomEleve_ELEVE` FOREIGN KEY (`NELEVE`) REFERENCES `eleve` (`NELEVE`),
  ADD CONSTRAINT `FK_COURS_NomSalle_SALLE` FOREIGN KEY (`NSALLE`) REFERENCES `salle` (`NSALLE`),
  ADD CONSTRAINT `FK_COURS_TypeMatiere_MATIERE` FOREIGN KEY (`TYPEMATIERE`) REFERENCES `matiere` (`TYPEMATIERE`),
  ADD CONSTRAINT `FK_COURS_Type_TYPE_COURS` FOREIGN KEY (`TYPE`) REFERENCES `type_cours` (`TYPE`);

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `FK_ELEVE_NomGroupe_GROUPE` FOREIGN KEY (`NGROUPE`) REFERENCES `groupe` (`NGROUPE`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `FK_GROUPE_Nclasse_NIVEAU` FOREIGN KEY (`NIVEAU`) REFERENCES `niveau` (`NIVEAU`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `FK_MATIERE_NomEnseignant_ENSEIGNANT` FOREIGN KEY (`NENSEIGNANT`) REFERENCES `enseignant` (`NENSEIGNANT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
