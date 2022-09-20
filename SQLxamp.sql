-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 août 2022 à 16:30
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `luom`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `id_privilege` int(11) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `email`, `mdp`, `id_privilege`, `del`) VALUES
(1, 'SuperAdminette', 'luom@admin.fr', '7', 1, 0),
(2, 'Jackouille', 'lafripouille@medieval.fr', 'OK', 3, 0),
(7, 'ASCENZIO DE ESTEVE', 'ascenziodeestevelucie@gmail.com', '777', 1, 0),
(8, 'BOUCHNAYAF', 'bouch@nayaf.fr', '123', 1, 0),
(9, 'trymod', 'try@catch.fr', '123', 4, 0),
(11, 'Ad', 'main@admain.fr', '777', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `adr_livraison`
--

CREATE TABLE `adr_livraison` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `adresse` varchar(300) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `pays` varchar(30) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adr_livraison`
--

INSERT INTO `adr_livraison` (`id`, `id_user`, `adresse`, `cp`, `ville`, `pays`, `del`) VALUES
(1, 1, 'La street', '75014', 'Lyon', 'France', 0),
(2, 4, 'Ma maison : 19 Avenue de la porte de Vanves ', '75014', 'Paris', 'France', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cat`
--

INSERT INTO `cat` (`id`, `titre`, `del`) VALUES
(1, 'Femme', 0),
(2, 'Homme', 0),
(3, 'Enfant', 0),
(4, 'Fun', 1),
(5, 'Meuble', 1),
(6, 'Fantomas', 1),
(9, 'Masquée', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cmd`
--

CREATE TABLE `cmd` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_adresse` int(11) NOT NULL DEFAULT 1,
  `datec` date NOT NULL,
  `total` double NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cmd`
--

INSERT INTO `cmd` (`id`, `id_user`, `id_adresse`, `datec`, `total`, `etat`, `del`) VALUES
(6, 4, 1, '2022-07-19', 75.5, 1, 0),
(7, 4, 1, '2022-07-19', 75.5, 1, 0),
(8, 4, 1, '2022-07-19', 75.5, 1, 0),
(10, 4, 1, '2022-07-19', 500000, 1, 0),
(11, 4, 1, '2022-07-19', 55.2, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `contenu` varchar(300) NOT NULL,
  `note` int(11) NOT NULL,
  `day` date NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_produit`, `id_user`, `contenu`, `note`, `day`, `del`) VALUES
(1, 1, 4, 'Super GENIAL', 5, '2022-07-19', 0),
(3, 1, 1, 'TIP TOP', 5, '2022-07-13', 0),
(4, 1, 5, 'Bien mais trop cher', 4, '2022-07-13', 0),
(5, 2, 4, 'Il manquait un zircon', 3, '2022-07-19', 0),
(6, 15, 4, 'MIMS TT PLEIN', 5, '2022-07-26', 0),
(7, 6, 4, 'Trop mims pour les gosses', 5, '2022-07-30', 0),
(8, 6, 1, 'Ma fille se prend pour une marquise avec', 4, '2022-07-30', 0),
(9, 9, 1, 'Jolie', 4, '2022-07-30', 0),
(10, 9, 4, 'Je l\'adore', 5, '2022-07-30', 0),
(11, 9, 5, 'nl,cjksfhdfihzeiqpsbfdhe oieru hoisuehfoiuceqhqoud heqcfhca\"oyfz_hàe _znqectr hacn\"z\'eorffhca\"à_zEPYTRHNFC?ZOEIQFCH GYUNOZNERCHNOGYU3ZNHGEFIUAZHYE?R9U93AN?9HP4TYC 7ELKJNGKRZPMNZHGPZAEIHGNZVNBMEPAGYMV', 3, '2022-07-30', 0),
(12, 9, 1, 'magnifique', 4, '2022-07-30', 0),
(13, 18, 4, 'Trop chou\r\n', 5, '2022-08-01', 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `id_user`, `sujet`, `msg`, `email`, `etat`, `del`) VALUES
(3, 1, 'je try ', 'hebfobhodu', 'ascenziodeestevelucie@gmail.com', 1, 1),
(6, 1, 'maman', 'c\'est joli', 'luciemertens@outlook.com', 1, 0),
(7, 1, 'lzeahdiz', 'neiqhri', 'jkfdnkjnefk@zehfz.fr', 1, 0),
(8, 1, 'kjhkelqhr', 'jkniuqhsph', 'hfbeqrz@jkhzrbsdfho.fr', 1, 0),
(9, 4, 'REMBOURSEZ MOI', 'PRODUIT DEFECTUEUX', 'luciemertens@outlook.com', 1, 0),
(10, 1, 'Essai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu orci congue nunc aliquam volutpat sit amet et orci. Fusce eleifend est eu consequat tincidunt. Aliquam faucibus, leo ac tempor condimentum, augue risus egestas quam, sit amet fringilla nibh tellus in ligula. Cras eu consectetur magna. Quisque convallis gravida mi, quis vulputate lacus posuere nec. Quisque porta sem ac pellentesque faucibus. In posuere dui vel purus porta, sit amet tincidunt leo tincidunt. Maecenas velit est, sagittis a mi vitae, feugiat elementum odio.\r\n\r\nMorbi quis interdum tortor, quis aliquet enim. Suspendisse sed sollicitudin massa. Proin efficitur porttitor sagittis. Donec placerat, dui a eleifend imperdiet, felis velit dictum orci, sed mollis odio nisi a augue. Ut pharetra eros quis orci rhoncus, et imperdiet sapien finibus. Etiam libero ipsum, finibus at finibus pulvinar, pulvinar vel turpis. Sed tincidunt sodales quam.\r\n\r\nProin tempus vehicula lobortis. Duis accumsan, velit nec sodales hendrerit, dui urna euismod ex, et suscipit arcu felis convallis odio. Mauris ut nisl in lacus posuere commodo quis blandit sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ut auctor magna. Nam mollis ex nisi, vitae convallis nibh elementum eget. Pellentesque pellentesque, mauris quis suscipit faucibus, nulla diam pulvinar velit, a cursus lectus ipsum ut velit. In hac habitasse platea dictumst. Vestibulum semper vestibulum nunc, id pretium leo bibendum in. Nulla viverra justo vitae ante tempor mattis.\r\n\r\nMorbi viverra feugiat dolor, sit amet fermentum nibh porttitor nec. Phasellus eu elementum mi, porta posuere turpis. Maecenas justo sem, sodales eu lobortis eu, facilisis quis tortor. Nulla quis ipsum lectus. Nulla facilisi. Praesent eget ipsum commodo velit ornare tincidunt. Vestibulum vel quam maximus, convallis magna et, aliquet turpis. Nunc ac porta orci.\r\n\r\nCras ut nunc vitae nisl dictum luctus ut eu tellus. Morbi a cursus libero. Integer sed tempor felis. Aliquam sem elit, vehicula non vestibulum et, scelerisque sit amet lorem. Duis auctor ipsum sit amet ante bibendum, vitae accumsan nulla consequat. Vivamus laoreet sagittis augue, at tincidunt quam convallis vel. Nullam blandit gravida felis, ac interdum diam accumsan in. Sed porta magna nec nisl ornare, vitae porttitor metus pretium. Sed sed congue arcu. Phasellus porttitor erat pharetra consequat lobortis. Donec venenatis elementum mattis.\r\n\r\nAliquam ex felis, convallis vel porta pretium, viverra et erat. Vestibulum a dolor egestas, lacinia metus quis, elementum nibh. In dignissim auctor arcu ac placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas mi sapien, aliquam sed eros ac, fermentum rutrum velit. Proin efficitur erat orci, a dignissim nibh molestie et. Pellentesque posuere tempus erat, et pretium dui congue rutrum. Nullam a euismod libero, laoreet hendrerit neque. Nulla sit amet nulla ac justo interdum mollis. Praesent suscipit fermentum quam, non vestibulum orci tincidunt ut. Aliquam hendrerit enim justo. Maecenas rhoncus dui a cursus pellentesque. Etiam id augue rhoncus orci iaculis dapibus consequat sit amet arcu.\r\n\r\nProin aliquam sodales dui, eget aliquet urna mattis auctor. Curabitur eu rhoncus velit. Sed eu metus id urna cursus gravida. Morbi sodales bibendum magna, at viverra enim. Suspendisse pellentesque ullamcorper molestie. Mauris pulvinar enim at sagittis vehicula. Sed cursus varius quam quis facilisis. In vel iaculis mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur scelerisque feugiat ex, quis sodales tellus vestibulum et. In hac habitasse platea dictumst. In aliquam augue non consectetur facilisis. Suspendisse potenti. Mauris posuere commodo gravida. Morbi vulputate pulvinar ante, sit amet laoreet turpis fringilla eget.', 'luciemertens@outlook.com', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `coordonnees`
--

CREATE TABLE `coordonnees` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(150) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `coordonnees`
--

INSERT INTO `coordonnees` (`id`, `nom`, `adresse`, `tel`, `email`, `logo`, `del`) VALUES
(1, 'LuomIndustries', '2 rue en face de la tour eiffel', '0123456781', 'luom@admin.fr', 'assets\\img\\logo\\logo.png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `detail_cmd`
--

CREATE TABLE `detail_cmd` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_cmd` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` double NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `detail_cmd`
--

INSERT INTO `detail_cmd` (`id`, `id_produit`, `id_cmd`, `qte`, `prix`, `del`) VALUES
(8, 1, 6, 1, 75.5, 0),
(9, 1, 7, 1, 75.5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ees`
--

CREATE TABLE `ees` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `datee` date NOT NULL,
  `qte` int(11) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ees`
--

INSERT INTO `ees` (`id`, `id_produit`, `id_fournisseur`, `datee`, `qte`, `del`) VALUES
(1, 1, 3, '2022-07-26', 100, 2),
(2, 5, 3, '2022-07-28', 10, 2),
(3, 5, 3, '2022-07-28', 100, 2),
(4, 10, 3, '2022-07-28', 72, 2),
(5, 3, 3, '2022-07-28', 100, 2),
(6, 1, 4, '2022-07-29', 10, 2),
(7, 1, 4, '2022-07-29', 72, 2),
(8, 1, 3, '2022-07-29', 14, 2),
(9, 1, 3, '2022-07-29', 14, 2),
(10, 18, 3, '2022-08-01', 14, 0),
(11, 1, 3, '2022-08-01', 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fav` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id`, `id_produit`, `id_user`, `fav`) VALUES
(1, 1, 4, 0),
(2, 3, 4, 0),
(3, 1, 5, 0),
(4, 1, 5, 0),
(5, 1, 5, 0),
(6, 8, 5, 0),
(7, 15, 5, 0),
(8, 1, 4, 0),
(9, 7, 4, 0),
(10, 1, 4, 0),
(11, 15, 4, 0),
(12, 8, 4, 0),
(13, 7, 4, 0),
(14, 1, 4, 0),
(15, 1, 4, 0),
(16, 1, 4, 0),
(17, 1, 4, 0),
(18, 9, 4, 0),
(19, 10, 4, 0),
(20, 13, 4, 0),
(21, 4, 4, 0),
(22, 8, 4, 0),
(23, 10, 4, 0),
(24, 13, 4, 0),
(25, 14, 4, 0),
(26, 15, 4, 0),
(27, 9, 4, 0),
(28, 10, 4, 0),
(29, 13, 4, 0),
(30, 14, 4, 0),
(31, 4, 4, 0),
(32, 2, 4, 0),
(33, 25, 4, 0),
(34, 24, 4, 1),
(35, 8, 4, 0),
(36, 7, 4, 0),
(37, 7, 4, 1),
(38, 8, 4, 0),
(39, 8, 4, 0),
(40, 10, 4, 0),
(41, 9, 4, 0),
(42, 9, 4, 0),
(43, 9, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`, `del`) VALUES
(1, 'Fantomas', 1),
(3, 'Adelaide', 0),
(4, 'Lulu', 0),
(5, 'Concepteur Développeur d\'Application', 1);

-- --------------------------------------------------------

--
-- Structure de la table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `lien` varchar(300) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `img`
--

INSERT INTO `img` (`id`, `id_produit`, `lien`, `del`) VALUES
(1, 1, 'https://www.cartier.com/variants/images/25458910981760397/img2/w1242_tpadding12.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `id_s_cat` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `presentation` text NOT NULL,
  `img` varchar(300) NOT NULL,
  `prix` double NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimum` int(11) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `id_s_cat`, `titre`, `presentation`, `img`, `prix`, `stock`, `stock_minimum`, `del`) VALUES
(1, 9, 'BAGUE PANTHÈRE DE LA STREET', 'Bague Panthère de Cartier, or gris 750/1000, sertie de 545 diamants taille brillant pour 1,47 carat, émeraudes, onyx. Largeur motif 26,94 à 31,16 mm suivant les métriques (pour taille 52).\r\n\r\nVeuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/25458910981760397/img1/w528_tpadding12.jpg', 75.8, 1505, 10, 0),
(2, 6, 'BAGUE PANTHÈRE DE LA CITE', 'Bague Panthère de Cartier, or gris 750/1000, sertie de 81 diamants taille brillant pour 0,75 carat, émeraudes, onyx. Largeur motif 10,7 mm (pour taille 52).\r\n\r\nVeuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/25458910981759741/img1/w528_tpadding12.jpg', 22, 99, 10, 0),
(3, 9, 'BAGUE PANTHÈRE 1 REIN EN MOINS', 'Bague Panthère de Cartier, platine 950/1000, sertie de 2 yeux émeraude, 70 taches onyx, 1 truffe onyx, 1 diamant brillant de 0,71 carat et 520 diamants taille brillant pour 2,52 carats (pour taille 52). Veuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/25458910981760155/img1/w528_tpadding12.jpg', 500000, 106, 10, 0),
(4, 6, 'BAGUE PANTHÈRE DE LA MICHTO', 'Bague Panthère de Cartier, platine 950/1000, sertie de 2 yeux émeraude, 47 taches saphir, 1 truffe onyx et 461 diamants taille brillant pour 4,90 carats (pour taille 52).\r\n\r\nVeuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/25372685655533063/img1/w528_tpadding12.jpg', 147000, 99, 10, 0),
(5, 10, 'Boucles D\'oreilles Pendantes Disney Acier Doré Oxy', 'Boucles D\'oreilles Pendantes Disney Acier Doré Motif Tête De Mickey Pavage Cristaux Et Oxydes De Zirconium Hse-21707g-1', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dw02e6620a/images/MIOFJZW037-master.jpg?sw=1024&sh=1024', 55.2, 111, 10, 0),
(6, 10, 'Boucles D\'oreilles Puces Aviel Chat Or Jaune', 'Boucles D\'oreilles Or Jaune 375/1000 Puces Chats Manga', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dwc3d58806/images/B3OEJWD504-master.jpg?sw=1024&sh=1024', 65, 100, 10, 0),
(7, 2, 'CHAÎNE BLACK PANTERE', '- Chaîne avec tête de félin au design Black Pantere de THOMAS SABO\r\n- Ornements sophistiqués et travaillés à la main avec pierres en pavé\r\n- Motif tridimensionnel\r\n\r\nPendentif félin à l\'aura mystique : avec ses magnifiques yeux verts, le prédateur Black Pantere nous guide en toute sécurité dans les dédales de la jungle de la vie. La chaîne maille forçat de ce set de bijoux mesure 42 cm de long, sa longueur est ajustable à 38 cm et 40 cm grâce à des anneaux supplémentaires. Le pendentif est amovible.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dwdc6255ca/product/K/KE/KE1973/KE1973-845-11.jpg?sfrm=png', 198, 100, 10, 0),
(8, 2, 'THE WORLD', '- Chaîne avec globe terrestre ouvragé à la main au rendu bicolore\r\n- Élément de design mobile\r\n- Bijou d\'inspiration vintage\r\n\r\nAvec sa surface amatie et sophistiquée, le globe plaqué or et encerclé d\'oxydes de zirconium scintillants qu\'il est possible de faire pivoter est le détail fantaisiste qui attire tous les regards. La chaîne maille forçat de ce set de bijoux mesure 42 cm de long, sa longueur est ajustable à 38 cm et 40 cm grâce à des anneaux supplémentaires. Le pendentif est amovible.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dwd4e18883/product/K/KE/KE1965/KE1965-849-39.jpg?sfrm=png', 149, 100, 10, 0),
(9, 1, 'LIBEL', 'Moments heureux : ce fin collier à pendentif libellule est orné de gemmes scintillantes dans des tons pastel. Porté seul ou accompagné d\'autres chaînes ou colliers pour un layering tendance, il attire tous les regards, quel que soit le look.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dw1ae73404/product/K/KE/KE2096/KE2096-321-7.jpg?sfrm=png', 149, 100, 10, 0),
(10, 1, 'E.COLI', '- Chaîne avec colibri richement détaillé à dorure or jaune\r\n- Décor polychrome fait main, émaillé à froid et sublimé de pierres incrustées\r\n- Messager du monde tropical\r\n\r\nUn tout petit oiseau qui fait grande impression : avec ses plumes aux couleurs somptueuses, le pendentif en forme de colibri a tout d\'un joyau volant. La chaîne maille forçat de ce set de bijoux mesure 42 cm de long, sa longueur est ajustable à 38 cm et 40 cm grâce à des anneaux supplémentaires. Le pendentif est amovible.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dw8fa3222d/product/K/KE/KE1969/KE1969-471-7.jpg?sfrm=png', 219, 172, 10, 0),
(11, 3, 'Collier Hallie Ange Et Coeur Or Jaune', 'Collier Or Jaune 375/1000 Motif Ange 38cm', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dw925737e0/images/B3CEJW0582-master.jpg?sw=1024&sh=1024', 109, 100, 10, 0),
(12, 3, 'Collier Mae Ourson Or Jaune', 'Collier Or Jaune 375/1000 Ourson Blanc 40cm', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dwc441b031/images/B3CEJWW007-master.jpg?sw=1024&sh=1024', 89, 100, 10, 0),
(13, 4, 'Bijoux D\'oreilles Sakira Argent Blanc Oxyde De Zir', 'Bijoux D\'oreilles Argent Rhodie 925/1000 Motifs Feuilles Oxyde', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dw54d87527/images/FAOFBZW15R-master.jpg?sw=1024&sh=1024', 69, 100, 10, 0),
(14, 4, 'Boucles D\'oreilles Pendantes Fee Or Jaune', 'Boucles D\'oreilles Crochet Or Jaune 375/1000', 'https://www.histoiredor.com/dw/image/v2/BCQS_PRD/on/demandware.static/-/Sites-THOM_CATALOG/default/dw0f94c667/images/B3OFJW0872-master.jpg?sw=1024&sh=1024', 99, 100, 10, 0),
(15, 7, 'Clous Black Pantere', '- Clous d\'oreilles Black Pantere avec pavé d\'oxydes de zirconium\r\n- Langage stylistique iconique de THOMAS SABO\r\n- Détails ouvragés à la main\r\n\r\nÀ la fois rebelles et élégants : les clous d\'oreilles arborent un motif Black Pantere au charme mystique et minutieusement travaillé à la main. Le félin entièrement agrémenté d\'un pavé d\'oxydes de zirconium est d\'une beauté fascinante avec ses yeux en vitro-céramique vert lumineux. Les fins motifs mayas finissent de sublimer la création jusque dans ses moindres détails.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dw3d4cb7b1/product/H/H/H2110/H2110-845-11.jpg?sfrm=png', 129, 100, 10, 0),
(16, 7, 'SQUELETOR', '• Clous d’oreilles pour hommes en argent sterling 925 ennobli d’une dorure 18 carats\r\n• Têtes de mort tridimensionnelles\r\n• Idéal pour un look d’oreille individuel\r\n\r\nL’appel de l’or : prenez-vous pour une reine légendaire, même dans la vie de tous les jours, avec ces clous d’oreille étincelants à l’aura magique envoûtante. Les têtes de mort travaillées sont chacune ornées d’une couronne filigrane soulignant avec élégance le côté royal et mystique des clous d’oreille ennoblis d’une dorure 18 carats. Portés seuls ou combinés à d’autres bijoux THOMAS SABO, rendez hommage à la tendance de l’or avec ces bijoux d’oreilles.', 'https://www.thomassabo.com/dw/image/v2/AAQY_PRD/on/demandware.static/-/Sites-ts-master-catalog/default/dwecfc8a58/product/H/H/H2163/H2163-413-39.jpg?sfrm=png', 79, 100, 10, 0),
(17, 12, 'Charm Pendant Star Wars R2-D2', 'Dévoilez votre côté espiègle avec le Charm Star Wars R2-D2. Ce charm a été fini main en argent 925/1000e et est orné de touches de résine façon émail bleu, rouge et noir appliquée à la main. Sa bélière est ornée d\'étoiles et d\'oxydes de zirconium cubiques bleus au centre. Même sans parler, R2-D2 est l\'un des personnages de Star Wars les plus adorés et les plus amusants. Ce charm lui donne vie avec une tête et des bras articulés et des détails mécaniques gravés. Imprégnez-vous du courage et de la créativité de R2-D2 à chaque fois que vous porterez ce charm.', 'https://cdn-fsly.yottaa.net/60a2795ad93140a5dc7453d7/fr.pandora.net/v~4b.c/dw/image/v2/BFCR_PRD/on/demandware.static/-/Sites-pandora-master-catalog/default/dw31581217/images/productimages/main/799248C01_RGB.jpg?sw=900&sh=900&sm=fit&sfrm=png&bgcolor=F5F5F5&yocs=8_d_', 34.5, 100, 10, 0),
(18, 12, 'Charm Star Wars Grogu™ & Berceau', 'Affichez fièrement votre statut de fan avec le Charm Star Wars™ Grogu™ & Berceau. Ce charm en argent 925/1000e représente Grogu™, personnage adoré de la série Star Wars: Le personnage Grogu™ de The Mandalorian à l\'intérieur d\'un berceau flottant. Ce bijou représente Grogu™ avec ses grandes oreilles emblématiques et ses yeux noirs en résine façon émail appliquée à la main en train de faire un signe de la main. Adoptez ce charm afin d\'emporter partout avec vous un symbole de l\'univers Star Wars et des incroyables pouvoirs de Grogu™.', 'https://cdn-fsly.yottaa.net/60a2795ad93140a5dc7453d7/fr.pandora.net/v~4b.c/dw/image/v2/BFCR_PRD/on/demandware.static/-/Sites-pandora-master-catalog/default/dwf359b25a/images/productimages/main/799511C01_RGB.jpg?sw=900&sh=900&sm=fit&sfrm=png&bgcolor=F5F5F5&yocs=8_d_', 49, 19, 10, 0),
(20, 11, 'Bracelet Teddy', 'Rose, Placage de ton or rosé', 'https://asset.swarovski.com/images/$size_1450/t_swa103/b_rgb:ffffff,c_scale,dpr_auto,f_auto,w_auto/5642978_png/bracelet-teddy--rose--placage-de-ton-or-ros%C3%A9-swarovski-5642978.png', 125, 100, 10, 0),
(21, 11, 'Bracelet Teddy', 'Vert, Placage de ton or', 'https://asset.swarovski.com/images/$size_1450/t_swa103/b_rgb:ffffff,c_scale,dpr_auto,f_auto,w_auto/5642977_png/bracelet-teddy--vert--placage-de-ton-or-swarovski-5642977.png', 125, 100, 10, 0),
(22, 8, 'Bracelet viking dragon', 'Superbe bracelet viking avec un dragon dans un style très masculin. On le sait ce peuple nordique est réputé pour son goût pour les batailles et pour sa soif de sang et de guerre. Cette sensation est très bien transcrite sur le bracelet au look très viril.\r\n\r\nUne fois mi au poignet, le dragon se mord alors la queue comme le symbole de l’Ouroboros qui désigne la continuité de toutes les choses de notre monde: le temps, l’évolution,…', 'https://www.bijou-homme.com/wp-content/uploads/2020/10/bracelet-viking-dragon-couleur-dore.jpg', 399.9, 100, 10, 0),
(23, 8, 'Bracelet celtique homme', 'Un magnifique bracelet celtique pour homme en cuir de vache véritable, matière noble par excellence. De 3,6 cm de largeur, c’est un bracelet très masculin qui occupe une bonne partie du poignet.\r\n\r\nCe dernier se ferme à la manière d’un bracelet de montre pour une tenue sans faille. De 26 cm de long, il s’adapte à tous les poignets. Pour un style celte, antique et guerrier jusqu’au bout du bras !', 'https://www.bijou-homme.com/wp-content/uploads/2020/06/bracelet-celtique-homme.jpg', 2190.9, 100, 10, 0),
(24, 5, 'BRACELET CACTUS DE QUARTIER', 'Bracelet Cactus de Cartier, or jaune 750/1000, serti de 46 émeraudes, 10 rubis et 2 diamants taille brillant pour 0,15 carat.\r\n\r\nVeuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/1647597283726201/img1/w528_tpadding12.jpg', 120000, 100, 10, 0),
(25, 5, 'BRACELET CACTUS DE QUARTIER BIS', 'Bracelet Cactus de Cartier, or jaune 750/1000, serti de 47 diamants taille baguette pour 3,93 carats, tourmalines (pour taille 17).\r\n\r\nVeuillez noter que le poids en carats, le nombre de pierres et les dimensions du produit peuvent varier en fonction de la taille de la création commandée. Veuillez nous contacter pour plus d’informations.', 'https://www.cartier.com/variants/images/1647597277468662/img1/w528_tpadding12.jpg', 163000, 100, 10, 0),
(26, 6, 'Concepteur Développeur d\'Application', 'Réussite', 'https://leclaireur.fnac.com/wp-content/uploads/2022/05/weeklyshonenjump5-436x436.jpg', 7, 100, 10, 0),
(29, 1, 'Test', 'Test', 'https://avatarfiles.alphacoders.com/968/thumb-96848.png', 7.77, 72, 10, 0),
(30, 1, 'Hisoka', 'Hisoka', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Iu8ge088lM1MFAAtEElEE1U_Cams8KWeVQ&usqp=CAU', 10.96, 100, 15, 0);

-- --------------------------------------------------------

--
-- Structure de la table `recherche`
--

CREATE TABLE `recherche` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mot` varchar(50) NOT NULL,
  `rech` date NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recherche`
--

INSERT INTO `recherche` (`id`, `id_user`, `mot`, `rech`, `del`) VALUES
(1, 1, 'b', '2022-07-18', 0),
(2, 1, 'b', '2022-07-18', 0),
(3, 1, 'b', '2022-07-18', 0),
(4, 1, 'chat', '2022-07-18', 0),
(5, 1, 'chat', '2022-07-18', 0),
(6, 1, 'pantere', '2022-07-18', 0),
(7, 1, 'pantere', '2022-07-18', 0),
(8, 1, 'r', '2022-07-18', 0),
(9, 1, 'ess', '2022-07-18', 0),
(10, 1, 'je', '2022-07-18', 0),
(11, 1, 'tu', '2022-07-18', 0),
(12, 1, 'pantere', '2022-07-18', 0),
(13, 1, 'pantere', '2022-07-18', 0),
(14, 1, 'chat', '2022-07-18', 0),
(15, 1, 'try', '2022-07-18', 0),
(16, 1, 'pantere', '2022-07-18', 0),
(17, 4, 'pantere', '2022-07-19', 0),
(18, 1, 'chat', '2022-07-21', 0);

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `img` varchar(300) NOT NULL,
  `lien` varchar(300) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `slides`
--

INSERT INTO `slides` (`id`, `titre`, `img`, `lien`, `del`) VALUES
(1, 'Material Girl', 'assets/img/banner/mano.jpg', 'http://localhost:8080/Luom/SeeCat?id=1&titre=Femme', 0),
(2, 'Cher', 'assets/img/banner/wed.jpg', 'http://localhost:8080/Luom/SeeProduit?id=3', 0),
(3, 'Enfants', 'assets/img/banner/child.jpg', 'http://localhost:8080/Luom/SeeCat?id=3&titre=Enfant', 0),
(4, 'Concepteur Développeur d\'Application', 'https://preview.redd.it/eefem101ue031.png?width=1920&format=png&auto=webp&s=c2165e335b5c0f21270e69580abce02f11db7710', 'http://localhost:8080/Luom/SeeProduit?id=26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `s_cat`
--

CREATE TABLE `s_cat` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `s_cat`
--

INSERT INTO `s_cat` (`id`, `id_cat`, `titre`, `del`) VALUES
(1, 1, 'Colliers ♀', 0),
(2, 2, 'Colliers ♂', 0),
(3, 3, 'Colliers ☺', 0),
(4, 1, 'Boucles d\'oreilles ♀', 0),
(5, 1, 'Bracelet ♀', 0),
(6, 1, 'Bague ', 0),
(7, 2, 'Boucles d\'oreilles ♂', 0),
(8, 2, 'Bracelet ♂', 0),
(9, 2, 'Chevalière', 0),
(10, 3, 'Boucles d\'oreilles ☺', 0),
(11, 3, 'Gourmette', 0),
(12, 3, 'Pendentif', 0),
(13, 6, 'Bébé Fantomas', 1),
(29, 9, 'Masquée', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `inscription` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `inscription`, `email`, `mdp`, `del`) VALUES
(1, 'Unknown', '', '0001-01-01', '', '', 0),
(4, 'lucie', 'lulu', '2022-07-06', 'lucie@gmail.com', '1234', 0),
(5, 'ASCENZIO', 'Lucie', '2022-07-13', 'lulu@gmail.com', '7', 0);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `datev` date NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `id_produit`, `id_user`, `datev`, `del`) VALUES
(1, 1, 1, '2022-07-19', 0),
(2, 1, 4, '2022-07-19', 0),
(3, 1, 4, '2022-07-19', 0),
(4, 1, 4, '2022-07-19', 0),
(5, 1, 1, '2022-07-19', 0),
(6, 3, 1, '2022-07-19', 0),
(7, 2, 1, '2022-07-19', 0),
(8, 3, 1, '2022-07-19', 0),
(9, 2, 4, '2022-07-19', 0),
(10, 2, 4, '2022-07-19', 0),
(11, 2, 4, '2022-07-19', 0),
(12, 2, 4, '2022-07-19', 0),
(13, 2, 4, '2022-07-19', 0),
(14, 2, 4, '2022-07-19', 0),
(15, 2, 4, '2022-07-19', 0),
(16, 1, 1, '2022-07-19', 0),
(17, 1, 4, '2022-07-19', 0),
(18, 1, 4, '2022-07-19', 0),
(19, 1, 4, '2022-07-19', 0),
(20, 1, 4, '2022-07-19', 0),
(21, 1, 4, '2022-07-19', 0),
(22, 1, 4, '2022-07-19', 0),
(23, 1, 1, '2022-07-19', 0),
(24, 1, 1, '2022-07-19', 0),
(25, 8, 1, '2022-07-19', 0),
(26, 8, 1, '2022-07-19', 0),
(27, 9, 1, '2022-07-19', 0),
(28, 26, 1, '2022-07-25', 0),
(29, 3, 1, '2022-07-25', 0),
(30, 26, 1, '2022-07-25', 0),
(31, 1, 1, '2022-07-25', 0),
(32, 5, 1, '2022-07-25', 0),
(33, 1, 1, '2022-07-26', 0),
(34, 15, 4, '2022-07-26', 0),
(35, 15, 4, '2022-07-26', 0),
(36, 15, 4, '2022-07-26', 0),
(37, 1, 4, '2022-07-26', 0),
(38, 1, 4, '2022-07-26', 0),
(39, 1, 4, '2022-07-26', 0),
(40, 1, 1, '2022-07-26', 0),
(41, 1, 1, '2022-07-26', 0),
(42, 1, 1, '2022-07-26', 0),
(43, 1, 1, '2022-07-26', 0),
(44, 1, 1, '2022-07-26', 0),
(45, 1, 1, '2022-07-26', 0),
(46, 1, 1, '2022-07-27', 0),
(47, 1, 1, '2022-07-27', 0),
(48, 1, 1, '2022-07-27', 0),
(49, 16, 1, '2022-07-27', 0),
(50, 1, 1, '2022-07-27', 0),
(51, 1, 1, '2022-07-27', 0),
(52, 1, 1, '2022-07-27', 0),
(53, 1, 1, '2022-07-27', 0),
(54, 1, 1, '2022-07-27', 0),
(55, 1, 1, '2022-07-27', 0),
(56, 1, 1, '2022-07-27', 0),
(57, 1, 1, '2022-07-27', 0),
(58, 1, 4, '2022-07-27', 0),
(59, 1, 4, '2022-07-27', 0),
(60, 1, 4, '2022-07-27', 0),
(61, 1, 4, '2022-07-27', 0),
(62, 1, 4, '2022-07-27', 0),
(63, 1, 4, '2022-07-27', 0),
(64, 1, 4, '2022-07-27', 0),
(65, 12, 1, '2022-07-28', 0),
(66, 2, 4, '2022-07-29', 0),
(68, 1, 1, '2022-07-29', 0),
(69, 1, 1, '2022-07-29', 0),
(70, 30, 1, '2022-07-29', 0),
(71, 30, 1, '2022-07-29', 0),
(72, 30, 1, '2022-07-30', 0),
(73, 29, 1, '2022-07-30', 0),
(74, 29, 1, '2022-07-30', 0),
(75, 29, 1, '2022-07-30', 0),
(76, 29, 1, '2022-07-30', 0),
(77, 29, 1, '2022-07-30', 0),
(78, 29, 1, '2022-07-30', 0),
(79, 29, 1, '2022-07-30', 0),
(80, 29, 1, '2022-07-30', 0),
(81, 29, 1, '2022-07-30', 0),
(82, 13, 1, '2022-07-30', 0),
(83, 13, 1, '2022-07-30', 0),
(84, 7, 1, '2022-07-30', 0),
(85, 9, 1, '2022-07-30', 0),
(86, 8, 1, '2022-07-30', 0),
(87, 10, 4, '2022-07-30', 0),
(88, 10, 4, '2022-07-30', 0),
(89, 10, 4, '2022-07-30', 0),
(90, 10, 4, '2022-07-30', 0),
(91, 29, 4, '2022-07-30', 0),
(92, 29, 4, '2022-07-30', 0),
(93, 29, 4, '2022-07-30', 0),
(94, 29, 4, '2022-07-30', 0),
(95, 29, 4, '2022-07-30', 0),
(96, 29, 4, '2022-07-30', 0),
(97, 29, 4, '2022-07-30', 0),
(98, 29, 4, '2022-07-30', 0),
(99, 29, 4, '2022-07-30', 0),
(100, 29, 4, '2022-07-30', 0),
(101, 29, 4, '2022-07-30', 0),
(102, 29, 4, '2022-07-30', 0),
(103, 29, 4, '2022-07-30', 0),
(104, 29, 4, '2022-07-30', 0),
(105, 29, 4, '2022-07-30', 0),
(106, 1, 4, '2022-07-30', 0),
(107, 1, 4, '2022-07-30', 0),
(108, 1, 4, '2022-07-30', 0),
(109, 1, 4, '2022-07-30', 0),
(110, 1, 4, '2022-07-30', 0),
(111, 1, 4, '2022-07-30', 0),
(112, 1, 4, '2022-07-30', 0),
(113, 1, 4, '2022-07-30', 0),
(114, 1, 4, '2022-07-30', 0),
(115, 1, 4, '2022-07-30', 0),
(116, 1, 4, '2022-07-30', 0),
(121, 6, 4, '2022-07-30', 0),
(122, 6, 4, '2022-07-30', 0),
(123, 6, 4, '2022-07-30', 0),
(124, 6, 4, '2022-07-30', 0),
(125, 6, 4, '2022-07-30', 0),
(126, 6, 4, '2022-07-30', 0),
(127, 6, 4, '2022-07-30', 0),
(128, 6, 4, '2022-07-30', 0),
(129, 6, 4, '2022-07-30', 0),
(130, 6, 4, '2022-07-30', 0),
(131, 6, 4, '2022-07-30', 0),
(132, 6, 4, '2022-07-30', 0),
(133, 6, 4, '2022-07-30', 0),
(134, 6, 4, '2022-07-30', 0),
(135, 6, 4, '2022-07-30', 0),
(136, 6, 4, '2022-07-30', 0),
(137, 6, 4, '2022-07-30', 0),
(138, 6, 4, '2022-07-30', 0),
(139, 6, 4, '2022-07-30', 0),
(140, 6, 4, '2022-07-30', 0),
(141, 6, 4, '2022-07-30', 0),
(142, 6, 4, '2022-07-30', 0),
(143, 6, 4, '2022-07-30', 0),
(144, 6, 4, '2022-07-30', 0),
(145, 6, 4, '2022-07-30', 0),
(147, 6, 1, '2022-07-30', 0),
(148, 6, 1, '2022-07-30', 0),
(149, 6, 1, '2022-07-30', 0),
(150, 6, 1, '2022-07-30', 0),
(151, 6, 1, '2022-07-30', 0),
(152, 6, 1, '2022-07-30', 0),
(153, 6, 1, '2022-07-30', 0),
(154, 6, 1, '2022-07-30', 0),
(155, 6, 1, '2022-07-30', 0),
(156, 6, 1, '2022-07-30', 0),
(157, 6, 1, '2022-07-30', 0),
(158, 6, 1, '2022-07-30', 0),
(159, 6, 1, '2022-07-30', 0),
(160, 6, 1, '2022-07-30', 0),
(161, 6, 1, '2022-07-30', 0),
(162, 6, 1, '2022-07-30', 0),
(163, 6, 1, '2022-07-30', 0),
(164, 6, 1, '2022-07-30', 0),
(165, 6, 1, '2022-07-30', 0),
(166, 6, 1, '2022-07-30', 0),
(167, 6, 1, '2022-07-30', 0),
(168, 6, 1, '2022-07-30', 0),
(169, 6, 1, '2022-07-30', 0),
(170, 6, 1, '2022-07-30', 0),
(171, 6, 1, '2022-07-30', 0),
(172, 6, 1, '2022-07-30', 0),
(173, 6, 1, '2022-07-30', 0),
(174, 6, 1, '2022-07-30', 0),
(175, 1, 1, '2022-07-30', 0),
(176, 1, 1, '2022-07-30', 0),
(177, 1, 1, '2022-07-30', 0),
(178, 1, 1, '2022-07-30', 0),
(179, 1, 1, '2022-07-30', 0),
(180, 1, 1, '2022-07-30', 0),
(181, 9, 1, '2022-07-30', 0),
(182, 9, 1, '2022-07-30', 0),
(183, 9, 1, '2022-07-30', 0),
(185, 9, 4, '2022-07-30', 0),
(186, 9, 4, '2022-07-30', 0),
(187, 9, 4, '2022-07-30', 0),
(188, 9, 4, '2022-07-30', 0),
(195, 9, 5, '2022-07-30', 0),
(196, 9, 5, '2022-07-30', 0),
(197, 9, 5, '2022-07-30', 0),
(198, 9, 5, '2022-07-30', 0),
(199, 9, 5, '2022-07-30', 0),
(200, 9, 5, '2022-07-30', 0),
(201, 9, 5, '2022-07-30', 0),
(202, 9, 5, '2022-07-30', 0),
(203, 9, 5, '2022-07-30', 0),
(204, 9, 5, '2022-07-30', 0),
(205, 9, 5, '2022-07-30', 0),
(206, 9, 5, '2022-07-30', 0),
(213, 9, 1, '2022-07-30', 0),
(214, 9, 1, '2022-07-30', 0),
(215, 9, 1, '2022-07-30', 0),
(216, 9, 1, '2022-07-30', 0),
(217, 9, 1, '2022-07-30', 0),
(218, 9, 1, '2022-07-30', 0),
(219, 9, 1, '2022-07-30', 0),
(220, 9, 1, '2022-07-30', 0),
(221, 9, 1, '2022-07-30', 0),
(222, 9, 1, '2022-07-30', 0),
(223, 9, 1, '2022-07-30', 0),
(224, 9, 1, '2022-07-30', 0),
(225, 29, 1, '2022-07-30', 0),
(226, 13, 1, '2022-07-30', 0),
(227, 13, 1, '2022-07-30', 0),
(228, 13, 1, '2022-07-30', 0),
(229, 13, 1, '2022-07-30', 0),
(230, 13, 1, '2022-07-30', 0),
(231, 30, 1, '2022-07-30', 0),
(232, 10, 1, '2022-07-30', 0),
(233, 10, 1, '2022-07-30', 0),
(234, 10, 1, '2022-07-30', 0),
(235, 10, 1, '2022-07-30', 0),
(236, 30, 1, '2022-07-30', 0),
(237, 30, 1, '2022-07-30', 0),
(238, 30, 1, '2022-07-30', 0),
(239, 30, 1, '2022-07-30', 0),
(240, 30, 1, '2022-07-30', 0),
(241, 30, 1, '2022-07-30', 0),
(242, 30, 1, '2022-07-30', 0),
(243, 30, 1, '2022-07-30', 0),
(244, 30, 1, '2022-07-30', 0),
(245, 30, 1, '2022-07-30', 0),
(246, 30, 1, '2022-07-30', 0),
(247, 30, 1, '2022-07-30', 0),
(248, 30, 1, '2022-07-30', 0),
(249, 10, 1, '2022-07-30', 0),
(250, 10, 1, '2022-07-30', 0),
(251, 30, 1, '2022-07-30', 0),
(252, 10, 1, '2022-07-30', 0),
(253, 10, 1, '2022-07-30', 0),
(254, 30, 1, '2022-07-30', 0),
(255, 1, 1, '2022-07-30', 0),
(256, 9, 1, '2022-07-30', 0),
(257, 9, 1, '2022-07-31', 0),
(258, 1, 1, '2022-08-01', 0),
(259, 1, 1, '2022-08-01', 0),
(260, 1, 1, '2022-08-01', 0),
(261, 1, 1, '2022-08-01', 0),
(262, 1, 1, '2022-08-01', 0),
(263, 7, 4, '2022-08-01', 0),
(264, 7, 4, '2022-08-01', 0),
(265, 7, 4, '2022-08-01', 0),
(266, 7, 4, '2022-08-01', 0),
(267, 7, 1, '2022-08-01', 0),
(268, 18, 4, '2022-08-01', 0),
(269, 18, 4, '2022-08-01', 0),
(270, 18, 4, '2022-08-01', 0),
(271, 18, 4, '2022-08-01', 0),
(272, 18, 4, '2022-08-01', 0),
(273, 18, 4, '2022-08-01', 0),
(274, 18, 4, '2022-08-01', 0),
(275, 18, 4, '2022-08-01', 0),
(276, 18, 4, '2022-08-01', 0),
(277, 18, 1, '2022-08-01', 0),
(278, 18, 1, '2022-08-01', 0),
(279, 18, 1, '2022-08-01', 0),
(280, 18, 4, '2022-08-01', 0),
(281, 18, 4, '2022-08-01', 0),
(282, 18, 4, '2022-08-01', 0),
(283, 18, 4, '2022-08-01', 0),
(284, 18, 4, '2022-08-01', 0),
(285, 18, 1, '2022-08-01', 0),
(286, 18, 4, '2022-08-01', 0),
(287, 18, 4, '2022-08-01', 0),
(288, 18, 4, '2022-08-01', 0),
(289, 18, 1, '2022-08-01', 0),
(290, 18, 4, '2022-08-01', 0),
(291, 18, 4, '2022-08-01', 0),
(292, 18, 4, '2022-08-01', 0),
(293, 18, 4, '2022-08-01', 0),
(294, 18, 4, '2022-08-01', 0),
(295, 18, 4, '2022-08-01', 0),
(296, 18, 4, '2022-08-01', 0),
(297, 18, 4, '2022-08-01', 0),
(298, 18, 4, '2022-08-01', 0),
(299, 18, 4, '2022-08-01', 0),
(300, 18, 4, '2022-08-01', 0),
(301, 18, 1, '2022-08-01', 0),
(302, 18, 4, '2022-08-01', 0),
(303, 18, 4, '2022-08-01', 0),
(304, 18, 4, '2022-08-01', 0),
(305, 17, 4, '2022-08-01', 0),
(306, 17, 4, '2022-08-01', 0),
(307, 17, 4, '2022-08-01', 0),
(308, 17, 4, '2022-08-01', 0),
(309, 17, 4, '2022-08-01', 0),
(310, 17, 4, '2022-08-01', 0),
(311, 17, 4, '2022-08-01', 0),
(312, 17, 4, '2022-08-01', 0),
(313, 17, 4, '2022-08-01', 0),
(314, 17, 4, '2022-08-01', 0),
(315, 17, 4, '2022-08-01', 0),
(316, 17, 4, '2022-08-01', 0),
(317, 17, 4, '2022-08-01', 0),
(318, 17, 4, '2022-08-01', 0),
(319, 17, 4, '2022-08-01', 0),
(320, 17, 4, '2022-08-01', 0),
(321, 17, 4, '2022-08-01', 0),
(322, 17, 4, '2022-08-01', 0),
(323, 17, 4, '2022-08-01', 0),
(324, 17, 4, '2022-08-01', 0),
(325, 17, 4, '2022-08-01', 0),
(326, 17, 4, '2022-08-01', 0),
(327, 17, 4, '2022-08-01', 0),
(328, 17, 4, '2022-08-01', 0),
(329, 17, 4, '2022-08-01', 0),
(330, 17, 4, '2022-08-01', 0),
(331, 17, 4, '2022-08-01', 0),
(332, 17, 4, '2022-08-01', 0),
(333, 17, 4, '2022-08-01', 0),
(334, 17, 4, '2022-08-01', 0),
(335, 17, 4, '2022-08-01', 0),
(336, 17, 4, '2022-08-01', 0),
(337, 17, 4, '2022-08-01', 0),
(338, 17, 4, '2022-08-01', 0),
(339, 17, 4, '2022-08-01', 0),
(340, 17, 4, '2022-08-01', 0),
(341, 17, 4, '2022-08-01', 0),
(342, 17, 4, '2022-08-01', 0),
(343, 17, 4, '2022-08-01', 0),
(344, 17, 4, '2022-08-01', 0),
(345, 17, 4, '2022-08-01', 0),
(346, 17, 4, '2022-08-01', 0),
(347, 17, 4, '2022-08-01', 0),
(348, 17, 4, '2022-08-01', 0),
(349, 17, 4, '2022-08-01', 0),
(350, 17, 4, '2022-08-01', 0),
(351, 17, 4, '2022-08-01', 0),
(352, 17, 4, '2022-08-01', 0),
(353, 17, 4, '2022-08-01', 0),
(354, 17, 4, '2022-08-01', 0),
(355, 17, 4, '2022-08-01', 0),
(356, 17, 4, '2022-08-01', 0),
(357, 17, 4, '2022-08-01', 0),
(358, 17, 4, '2022-08-01', 0),
(359, 17, 4, '2022-08-01', 0),
(360, 17, 4, '2022-08-01', 0),
(361, 17, 4, '2022-08-01', 0),
(362, 17, 4, '2022-08-01', 0),
(363, 17, 4, '2022-08-01', 0),
(364, 17, 4, '2022-08-01', 0),
(365, 17, 4, '2022-08-01', 0),
(366, 17, 4, '2022-08-01', 0),
(367, 17, 4, '2022-08-01', 0),
(368, 17, 4, '2022-08-01', 0),
(369, 17, 4, '2022-08-01', 0),
(370, 17, 4, '2022-08-01', 0),
(371, 17, 4, '2022-08-01', 0),
(372, 17, 4, '2022-08-01', 0),
(373, 17, 4, '2022-08-01', 0),
(374, 17, 4, '2022-08-01', 0),
(375, 17, 4, '2022-08-01', 0),
(376, 17, 4, '2022-08-01', 0),
(377, 17, 4, '2022-08-01', 0),
(378, 17, 4, '2022-08-01', 0),
(379, 17, 4, '2022-08-01', 0),
(380, 17, 4, '2022-08-01', 0),
(381, 17, 4, '2022-08-01', 0),
(382, 17, 4, '2022-08-01', 0),
(383, 17, 4, '2022-08-01', 0),
(384, 17, 4, '2022-08-01', 0),
(385, 18, 4, '2022-08-01', 0),
(386, 18, 1, '2022-08-01', 0),
(387, 18, 1, '2022-08-01', 0),
(388, 18, 1, '2022-08-01', 0),
(389, 18, 1, '2022-08-01', 0),
(390, 18, 1, '2022-08-01', 0),
(391, 18, 1, '2022-08-01', 0),
(392, 18, 1, '2022-08-01', 0),
(393, 18, 1, '2022-08-01', 0),
(394, 18, 1, '2022-08-01', 0),
(395, 18, 1, '2022-08-01', 0),
(396, 18, 1, '2022-08-01', 0),
(397, 18, 1, '2022-08-01', 0),
(398, 18, 1, '2022-08-01', 0),
(399, 18, 1, '2022-08-01', 0),
(400, 18, 1, '2022-08-01', 0),
(401, 18, 1, '2022-08-01', 0),
(402, 18, 1, '2022-08-01', 0),
(403, 29, 1, '2022-08-01', 0),
(404, 10, 1, '2022-08-01', 0),
(405, 1, 1, '2022-08-01', 0),
(406, 1, 1, '2022-08-01', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adr_livraison`
--
ALTER TABLE `adr_livraison`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adr_livraison_user_FK` (`id_user`);

--
-- Index pour la table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cmd`
--
ALTER TABLE `cmd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmd_user_FK` (`id_user`),
  ADD KEY `cmd_adresse_FK` (`id_adresse`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaire_produit_FK` (`id_produit`),
  ADD KEY `commentaire_user_FK` (`id_user`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_user_FK` (`id_user`);

--
-- Index pour la table `coordonnees`
--
ALTER TABLE `coordonnees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `detail_cmd`
--
ALTER TABLE `detail_cmd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_cmd_produit_FK` (`id_produit`),
  ADD KEY `detail_cmd_cmd_FK` (`id_cmd`);

--
-- Index pour la table `ees`
--
ALTER TABLE `ees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ees_produit_FK` (`id_produit`),
  ADD KEY `ees_fournisseur_FK` (`id_fournisseur`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favoris_produit_FK` (`id_produit`),
  ADD KEY `favoris_user_FK` (`id_user`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_produit_FK` (`id_produit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_s_cat_FK` (`id_s_cat`);

--
-- Index pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recherche_user_FK` (`id_user`);

--
-- Index pour la table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_cat`
--
ALTER TABLE `s_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_cat_cat_FK` (`id_cat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visite_produit_FK` (`id_produit`),
  ADD KEY `visite_user_FK` (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `adr_livraison`
--
ALTER TABLE `adr_livraison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `cmd`
--
ALTER TABLE `cmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `coordonnees`
--
ALTER TABLE `coordonnees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `detail_cmd`
--
ALTER TABLE `detail_cmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ees`
--
ALTER TABLE `ees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `s_cat`
--
ALTER TABLE `s_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adr_livraison`
--
ALTER TABLE `adr_livraison`
  ADD CONSTRAINT `adr_livraison_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cmd`
--
ALTER TABLE `cmd`
  ADD CONSTRAINT `cmd_adresse_FK` FOREIGN KEY (`id_adresse`) REFERENCES `adr_livraison` (`id`),
  ADD CONSTRAINT `cmd_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `commentaire_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `detail_cmd`
--
ALTER TABLE `detail_cmd`
  ADD CONSTRAINT `detail_cmd_cmd_FK` FOREIGN KEY (`id_cmd`) REFERENCES `cmd` (`id`),
  ADD CONSTRAINT `detail_cmd_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `ees`
--
ALTER TABLE `ees`
  ADD CONSTRAINT `ees_fournisseur_FK` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `ees_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `favoris_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_s_cat_FK` FOREIGN KEY (`id_s_cat`) REFERENCES `s_cat` (`id`);

--
-- Contraintes pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD CONSTRAINT `recherche_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `s_cat`
--
ALTER TABLE `s_cat`
  ADD CONSTRAINT `s_cat_cat_FK` FOREIGN KEY (`id_cat`) REFERENCES `cat` (`id`);

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `visite_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `visite_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
