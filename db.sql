-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 13 mars 2024 à 09:42
-- Version du serveur : 10.11.7-MariaDB-cll-lve
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u877916646_groupApp`
--

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenoms` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`id`, `nom`, `prenoms`, `createdAt`, `updatedAt`) VALUES
(1, 'nom agent', 'agent', '2024-03-10 13:51:55', '2024-03-10 13:51:55');

-- --------------------------------------------------------

--
-- Structure de la table `avoirvulnerabilite`
--

CREATE TABLE `avoirvulnerabilite` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idvulnerabilite` int(11) NOT NULL,
  `idPer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avoirvulnerabilite`
--

INSERT INTO `avoirvulnerabilite` (`id`, `createdAt`, `updatedAt`, `idvulnerabilite`, `idPer`) VALUES
(3, '2024-03-11 15:43:44', '2024-03-11 15:43:44', 1, 8),
(4, '2024-03-11 18:45:39', '2024-03-11 18:45:39', 1, 9),
(5, '2024-03-12 11:49:08', '2024-03-12 11:49:08', 3, 10),
(6, '2024-03-12 11:49:08', '2024-03-12 11:49:08', 1, 10),
(7, '2024-03-12 17:39:59', '2024-03-12 17:39:59', 3, 11),
(8, '2024-03-12 17:39:59', '2024-03-12 17:39:59', 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `libelle` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `code`, `libelle`, `createdAt`, `updatedAt`) VALUES
(1, 'code 1', 'Abong-Mbang', '2024-03-08 12:01:34', '2024-03-08 12:01:34'),
(2, 'code 2', 'Afanloum', '2024-03-08 12:01:35', '2024-03-08 12:01:35'),
(3, 'code 3', 'Ako', '2024-03-08 12:01:35', '2024-03-08 12:01:35'),
(5, 'code 5', 'Akom II', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(6, 'code 6', 'Akono', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(7, 'code 7', 'Akonolinga', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(8, 'code 8', 'Akwaya', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(10, 'code 10', 'Ambam', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(11, 'code 11', 'Andek', '2024-03-08 12:01:36', '2024-03-08 12:01:36'),
(12, 'code 12', 'Angossas', '2024-03-08 12:01:37', '2024-03-08 12:01:37'),
(13, 'code 13', 'Atok', '2024-03-08 12:01:37', '2024-03-08 12:01:37'),
(14, 'code 14', 'Awaé', '2024-03-08 12:01:37', '2024-03-08 12:01:37'),
(15, 'code 15', 'Ayos', '2024-03-08 12:01:37', '2024-03-08 12:01:37'),
(16, 'code 16', 'Babadjou', '2024-03-08 12:01:37', '2024-03-08 12:01:37'),
(17, 'code 17', 'Babessi', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(18, 'code 18', 'Babouantou', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(19, 'code 19', 'Bafang', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(20, 'code 20', 'Bafia', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(21, 'code 21', 'Bafou', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(22, 'code 22', 'Bafoussam', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(23, 'code 23', 'Bafut', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(24, 'code 24', 'Baham', '2024-03-08 12:01:38', '2024-03-08 12:01:38'),
(25, 'code 25', 'Bali', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(26, 'code 26', 'Balikumbat', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(27, 'code 27', 'Bamenda', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(28, 'code 28', 'Bamendjou', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(29, 'code 29', 'Bamuso', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(30, 'code 30', 'Bana', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(31, 'code 31', 'Bandja', '2024-03-08 12:01:39', '2024-03-08 12:01:39'),
(32, 'code 32', 'Bandjoun', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(33, 'code 33', 'Bangangté', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(34, 'code 34', 'Bangem', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(35, 'code 35', 'Banka', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(36, 'code 36', 'Bangou', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(37, 'code 37', 'Bangourain', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(38, 'code 38', 'Bankim', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(39, 'code 39', 'Banyo', '2024-03-08 12:01:40', '2024-03-08 12:01:40'),
(40, 'code 40', 'Baré', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(41, 'code 41', 'Bashéo', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(42, 'code 42', 'Bassamba', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(43, 'code 43', 'Batcham', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(44, 'code 44', 'Batchenga', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(45, 'code 45', 'Batibo', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(46, 'code 46', 'Batié', '2024-03-08 12:01:41', '2024-03-08 12:01:41'),
(47, 'code 47', 'Batoufam', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(48, 'code 48', 'Batouri', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(49, 'code 49', 'Bayangam', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(50, 'code 50', 'Bazou', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(51, 'code 51', 'Beka', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(52, 'code 52', 'Bélabo', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(53, 'code 53', 'Belel', '2024-03-08 12:01:42', '2024-03-08 12:01:42'),
(54, 'code 54', 'Belo', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(55, 'code 55', 'Benakuma', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(56, 'code 56', 'Bengbis', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(57, 'code 57', 'Bertoua', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(58, 'code 58', 'Bétaré-Oya', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(59, 'code 59', 'Bibemi', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(60, 'code 60', 'Bibey', '2024-03-08 12:01:43', '2024-03-08 12:01:43'),
(61, 'code 61', 'Bikok', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(62, 'code 62', 'Bipindi', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(63, 'code 63', 'Biwong-Bane', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(64, 'code 64', 'Biwong-Bulu', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(65, 'code 65', 'Biyouha', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(66, 'code 66', 'Blangoua', '2024-03-08 12:01:44', '2024-03-08 12:01:44'),
(67, 'code 67', 'Bokito', '2024-03-08 12:01:45', '2024-03-08 12:01:45'),
(68, 'code 68', 'Bonaléa', '2024-03-08 12:01:45', '2024-03-08 12:01:45'),
(69, 'code 69', 'Bondjock', '2024-03-08 12:01:45', '2024-03-08 12:01:45'),
(70, 'code 70', 'Bot-Makak', '2024-03-08 12:01:45', '2024-03-08 12:01:45'),
(71, 'code 71', 'Bourrha', '2024-03-08 12:01:45', '2024-03-08 12:01:45'),
(72, 'code 72', 'Buéa', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(73, 'code 73', 'Campo', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(74, 'code 74', 'Dargala', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(75, 'code 75', 'Darak', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(76, 'code 76', 'Datcheka', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(77, 'code 77', 'Dembo', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(78, 'code 78', 'Demding', '2024-03-08 12:01:46', '2024-03-08 12:01:46'),
(79, 'code 79', 'Deuk', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(80, 'code 80', 'Diang', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(81, 'code 81', 'Dibamba', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(82, 'code 82', 'Dibang', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(83, 'code 83', 'Dibombari', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(84, 'code 84', 'Dikome-Balue', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(85, 'code 85', 'Dimako', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(86, 'code 86', 'Dir', '2024-03-08 12:01:47', '2024-03-08 12:01:47'),
(87, 'code 87', 'Dizangué', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(88, 'code 88', 'Djohong', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(89, 'code 89', 'Djoum', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(90, 'code 90', 'Douala', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(91, 'code 91', 'Doumaintang', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(92, 'code 92', 'Doumé', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(93, 'code 93', 'Dschang', '2024-03-08 12:01:48', '2024-03-08 12:01:48'),
(94, 'code 94', 'Dzeng', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(95, 'code 95', 'Dziguilao', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(96, 'code 96', 'Ebebda', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(97, 'code 97', 'Ebolowa', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(98, 'code 98', 'Ebone', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(99, 'code 99', 'Édéa', '2024-03-08 12:01:49', '2024-03-08 12:01:49'),
(100, 'code 100', 'Edzendouan', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(101, 'code 101', 'Efoulan', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(102, 'code 102', 'Ekondo-Titi', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(103, 'code 103', 'Elak-Oku', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(104, 'code 104', 'Elig-Mfomo', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(105, 'code 105', 'Endom', '2024-03-08 12:01:50', '2024-03-08 12:01:50'),
(106, 'code 106', 'Éséka', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(107, 'code 107', 'Esse', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(108, 'code 108', 'Evodoula', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(109, 'code 109', 'Eyumodjock', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(110, 'code 110', 'Figuil', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(111, 'code 111', 'Fokoué', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(112, 'code 112', 'Fonfuka', '2024-03-08 12:01:51', '2024-03-08 12:01:51'),
(113, 'code 113', 'Fongo-Tongo', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(114, 'code 114', 'Fotokol', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(115, 'code 115', 'Foumban', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(116, 'code 116', 'Foumbot', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(117, 'code 117', 'Fundong', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(118, 'code 118', 'Furu-Awa', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(119, 'code 119', 'Galim', '2024-03-08 12:01:52', '2024-03-08 12:01:52'),
(120, 'code 120', 'Galim-Tignère', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(121, 'code 121', 'Gari-Gombo', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(122, 'code 122', 'Garoua', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(123, 'code 123', 'Garoua-Boulaï', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(124, 'code 124', 'Gashiga', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(125, 'code 125', 'Gawaza', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(126, 'code 126', 'Gobo', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(127, 'code 127', 'Goulfey', '2024-03-08 12:01:53', '2024-03-08 12:01:53'),
(128, 'code 128', 'Gueme', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(129, 'code 129', 'Guere', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(130, 'code 130', 'Guider', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(131, 'code 131', 'Guider', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(132, 'code 132', 'Guidiguis', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(133, 'code 133', 'Hile-Alifa', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(134, 'code 134', 'Hina', '2024-03-08 12:01:54', '2024-03-08 12:01:54'),
(135, 'code 135', 'Idabato', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(136, 'code 136', 'Idenau', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(137, 'code 137', 'Isanguele', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(138, 'code 138', 'Jakiri', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(139, 'code 139', 'Kaélé', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(140, 'code 140', 'Kai-Kai', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(141, 'code 141', 'Kalfou', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(142, 'code 142', 'Kay-Hay', '2024-03-08 12:01:55', '2024-03-08 12:01:55'),
(143, 'code 143', 'Kékem', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(144, 'code 144', 'Kentzou', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(145, 'code 145', 'Kette', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(146, 'code 146', 'Kiiki', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(147, 'code 147', 'Kobdombo', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(148, 'code 148', 'Kolofata', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(149, 'code 149', 'Kombo-Abedimo', '2024-03-08 12:01:56', '2024-03-08 12:01:56'),
(150, 'code 150', 'Kombo-Idinti', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(151, 'code 151', 'Kon-Yambetta', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(152, 'code 152', 'Kongso-Bamougoum', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(153, 'code 153', 'Kontcha', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(154, 'code 154', 'Konye', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(155, 'code 155', 'Kouoptamo', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(156, 'code 156', 'Kousséri', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(157, 'code 157', 'Koutaba', '2024-03-08 12:01:57', '2024-03-08 12:01:57'),
(158, 'code 158', 'Koza', '2024-03-08 12:01:58', '2024-03-08 12:01:58'),
(159, 'code 159', 'Kribi', '2024-03-08 12:01:58', '2024-03-08 12:01:58'),
(160, 'code 160', 'Kumba', '2024-03-08 12:01:58', '2024-03-08 12:01:58'),
(161, 'code 161', 'Kumbo', '2024-03-08 12:01:58', '2024-03-08 12:01:58'),
(162, 'code 162', 'Lafé-Baleng', '2024-03-08 12:01:58', '2024-03-08 12:01:58'),
(163, 'code 163', 'Lagdo', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(164, 'code 164', 'Lembe-Yezoum', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(165, 'code 165', 'Limbé', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(166, 'code 166', 'Lobo', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(167, 'code 167', 'Logone-Birni', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(168, 'code 168', 'Lokoundje', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(169, 'code 169', 'Lolodorf', '2024-03-08 12:01:59', '2024-03-08 12:01:59'),
(170, 'code 170', 'Lomié', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(171, 'code 171', 'Loum', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(172, 'code 172', 'Ma\'an', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(173, 'code 173', 'Mabanga', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(174, 'code 174', 'Maga', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(175, 'code 175', 'Magba', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(176, 'code 176', 'Maikari', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(177, 'code 177', 'Makak', '2024-03-08 12:02:00', '2024-03-08 12:02:00'),
(178, 'code 178', 'Makénéné', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(179, 'code 179', 'Malentouen', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(180, 'code 180', 'Mamfé', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(181, 'code 181', 'Mandingring', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(182, 'code 182', 'Mandjou', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(183, 'code 183', 'Manjo', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(184, 'code 184', 'Manoka', '2024-03-08 12:02:01', '2024-03-08 12:02:01'),
(185, 'code 185', 'Maroua', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(186, 'code 186', 'Massangam', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(187, 'code 187', 'Massock', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(188, 'code 188', 'Matomb', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(189, 'code 189', 'Mayo-Baléo', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(190, 'code 190', 'Mayo-Darlé', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(191, 'code 191', 'Mayo-Hourna', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(192, 'code 192', 'Mayo-Oulo', '2024-03-08 12:02:02', '2024-03-08 12:02:02'),
(193, 'code 193', 'Mbalmayo', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(194, 'code 194', 'Mbandjock', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(195, 'code 195', 'Mbang', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(196, 'code 196', 'Mbanga', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(197, 'code 197', 'Mbangassina', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(198, 'code 198', 'Mbankomo', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(199, 'code 199', 'Mbe', '2024-03-08 12:02:03', '2024-03-08 12:02:03'),
(200, 'code 200', 'Mbengwi', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(201, 'code 201', 'Mbiame', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(202, 'code 202', 'Mboma', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(203, 'code 203', 'Mbonge', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(204, 'code 204', 'Mbouda', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(205, 'code 205', 'Meiganga', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(206, 'code 206', 'Melong', '2024-03-08 12:02:04', '2024-03-08 12:02:04'),
(207, 'code 207', 'Mengang', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(208, 'code 208', 'Mengong', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(209, 'code 209', 'Mengueme', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(210, 'code 210', 'Menji', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(211, 'code 211', 'Meri', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(212, 'code 212', 'Messamena', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(213, 'code 213', 'Messok', '2024-03-08 12:02:05', '2024-03-08 12:02:05'),
(214, 'code 214', 'Messondo', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(215, 'code 215', 'Meyomessala', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(216, 'code 216', 'Meyomessi', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(217, 'code 217', 'Mfou', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(218, 'code 218', 'Mindif', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(219, 'code 219', 'Mindourou', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(220, 'code 220', 'Minta', '2024-03-08 12:02:06', '2024-03-08 12:02:06'),
(221, 'code 221', 'Mintom', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(222, 'code 222', 'Misaje', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(223, 'code 223', 'Modzogo', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(224, 'code 224', 'Mogode', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(225, 'code 225', 'Mokolo', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(226, 'code 226', 'Moloundou', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(227, 'code 227', 'Mombo', '2024-03-08 12:02:07', '2024-03-08 12:02:07'),
(228, 'code 228', 'Monatélé', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(229, 'code 229', 'Mora', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(230, 'code 230', 'Mouanko', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(231, 'code 231', 'Moulvoudaye', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(232, 'code 232', 'Moutourwa', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(233, 'code 233', 'Mudemba', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(234, 'code 234', 'Muyuka', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(235, 'code 235', 'Mvangane', '2024-03-08 12:02:08', '2024-03-08 12:02:08'),
(236, 'code 236', 'Mvengue', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(237, 'code 237', 'Nanga-Eboko', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(238, 'code 238', 'Ndelele', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(239, 'code 239', 'Ndikiniméki', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(240, 'code 240', 'Ndobian', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(241, 'code 241', 'Ndom', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(242, 'code 242', 'Ndop', '2024-03-08 12:02:09', '2024-03-08 12:02:09'),
(243, 'code 243', 'Ndoukoula', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(244, 'code 244', 'Ndu', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(245, 'code 245', 'Nganha', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(246, 'code 246', 'Ngambé', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(247, 'code 247', 'Ngambè-Tikar', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(248, 'code 248', 'Ngaoui', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(249, 'code 249', 'Ngaoundal', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(250, 'code 250', 'Ngaoundéré', '2024-03-08 12:02:10', '2024-03-08 12:02:10'),
(251, 'code 251', 'Ngog-Mapubi', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(252, 'code 252', 'Ngomedzap', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(253, 'code 253', 'Ngong', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(254, 'code 254', 'Ngoro', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(255, 'code 255', 'Ngoulemakong', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(256, 'code 256', 'Ngoumou', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(257, 'code 257', 'Ngoura', '2024-03-08 12:02:11', '2024-03-08 12:02:11'),
(258, 'code 258', 'Ngoyla', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(259, 'code 259', 'Nguelebok', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(260, 'code 260', 'Nguelemendouka', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(261, 'code 261', 'Ngui-Bassal', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(262, 'code 262', 'Ngwei', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(263, 'code 263', 'Niete', '2024-03-08 12:02:12', '2024-03-08 12:02:12'),
(264, 'code 264', 'Nitoukou', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(265, 'code 265', 'Njikwa', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(266, 'code 266', 'Njimom', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(267, 'code 267', 'Njinikom', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(268, 'code 268', 'Njombé', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(269, 'code 269', 'Nkambé', '2024-03-08 12:02:13', '2024-03-08 12:02:13'),
(270, 'code 270', 'Nkolafamba', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(271, 'code 271', 'Nkolmetet', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(272, 'code 272', 'Nkondjock', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(273, 'code 273', 'Nkongsamba', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(274, 'code 274', 'Nkongsamba', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(275, 'code 275', 'Nkong-Zem', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(276, 'code 276', 'Nkor', '2024-03-08 12:02:14', '2024-03-08 12:02:14'),
(277, 'code 277', 'Nkoteng', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(278, 'code 278', 'Nkum', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(279, 'code 279', 'Nsem', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(280, 'code 280', 'Ntui', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(281, 'code 281', 'Nwa', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(282, 'code 282', 'Nyambaka', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(283, 'code 283', 'Nyanon', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(284, 'code 284', 'Obala', '2024-03-08 12:02:15', '2024-03-08 12:02:15'),
(285, 'code 285', 'Okola', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(286, 'code 286', 'Olamze', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(287, 'code 287', 'Olanguina', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(288, 'code 288', 'Ombessa', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(289, 'code 289', 'Ouli', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(290, 'code 290', 'Oveng', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(291, 'code 291', 'Penja', '2024-03-08 12:02:16', '2024-03-08 12:02:16'),
(292, 'code 292', 'Penka-Michel', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(293, 'code 293', 'Petté', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(294, 'code 294', 'Pitoa', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(295, 'code 295', 'Poli', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(296, 'code 296', 'Pouma', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(297, 'code 297', 'Roua', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(298, 'code 298', 'Sa\'a', '2024-03-08 12:02:17', '2024-03-08 12:02:17'),
(299, 'code 299', 'Salapoumbé', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(300, 'code 300', 'Sangmélima', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(301, 'code 301', 'Santa', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(302, 'code 302', 'Santchou', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(303, 'code 303', 'Soa', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(304, 'code 304', 'Somalomo', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(305, 'code 305', 'Tchati-Bali', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(306, 'code 306', 'Tcholliré', '2024-03-08 12:02:18', '2024-03-08 12:02:18'),
(307, 'code 307', 'Tibati', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(308, 'code 308', 'Tignère', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(309, 'code 309', 'Tiko', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(310, 'code 310', 'Tinto', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(311, 'code 311', 'Toko', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(312, 'code 312', 'Tokombéré', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(313, 'code 313', 'Tombel', '2024-03-08 12:02:19', '2024-03-08 12:02:19'),
(314, 'code 314', 'Tonga', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(315, 'code 315', 'Touboro', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(316, 'code 316', 'Touloum', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(317, 'code 317', 'Touroua', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(318, 'code 318', 'Tubah', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(319, 'code 319', 'Wabane', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(320, 'code 320', 'Wasa', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(321, 'code 321', 'Widikum-Boffe', '2024-03-08 12:02:20', '2024-03-08 12:02:20'),
(322, 'code 322', 'Wina', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(323, 'code 323', 'Wum', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(324, 'code 324', 'Yabassi', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(325, 'code 325', 'Yagoua', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(326, 'code 326', 'Yaoundé', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(327, 'code 327', 'Yingui', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(328, 'code 328', 'Yokadouma', '2024-03-08 12:02:21', '2024-03-08 12:02:21'),
(329, 'code 329', 'Yoko', '2024-03-08 12:02:22', '2024-03-08 12:02:22'),
(330, 'code 330', 'Zhoa', '2024-03-08 12:02:22', '2024-03-08 12:02:22'),
(331, 'code 331', 'Zina', '2024-03-08 12:02:22', '2024-03-08 12:02:22'),
(332, 'code 332', 'Zoétélé', '2024-03-08 12:02:22', '2024-03-08 12:02:22');

-- --------------------------------------------------------

--
-- Structure de la table `ong`
--

CREATE TABLE `ong` (
  `id` int(11) NOT NULL,
  `raisonSociale` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `date_naissance` datetime NOT NULL,
  `statut` text NOT NULL,
  `region` text NOT NULL,
  `sexe` text NOT NULL,
  `is_cni` tinyint(1) NOT NULL,
  `is_actenaissance` tinyint(1) NOT NULL,
  `is_autochtone` tinyint(1) NOT NULL,
  `is_handicape` tinyint(1) NOT NULL,
  `is_chef_menage` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idresidence` int(11) NOT NULL,
  `Per_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `PersonnesModel`
--

CREATE TABLE `PersonnesModel` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `date_naissance` datetime NOT NULL,
  `statut` text NOT NULL,
  `region` text NOT NULL,
  `sexe` text NOT NULL,
  `is_cni` tinyint(1) DEFAULT 0,
  `is_actenaissance` tinyint(1) DEFAULT 0,
  `is_autochtone` tinyint(1) DEFAULT 0,
  `is_handicape` tinyint(1) DEFAULT 0,
  `is_chef_menage` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idresidence` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `PersonnesModel`
--

INSERT INTO `PersonnesModel` (`id`, `nom`, `date_naissance`, `statut`, `region`, `sexe`, `is_cni`, `is_actenaissance`, `is_autochtone`, `is_handicape`, `is_chef_menage`, `createdAt`, `updatedAt`, `idresidence`, `parentId`) VALUES
(3, 'Mindah Nkemeni Franck Julius', '2024-03-10 23:00:00', 'En vie', 'Ouest', 'MASCULIN', 0, 0, 0, 0, 1, '2024-03-10 23:02:27', '2024-03-10 23:02:27', 1, NULL),
(4, 'Mindah Nkemeni ', '2024-03-10 23:00:00', 'En vie', 'Nord', 'MASCULIN', 0, 1, 0, 1, 0, '2024-03-10 23:02:58', '2024-03-10 23:02:58', 1, NULL),
(5, 'Julius', '2024-03-10 23:00:00', 'En vie', 'Centre', 'MASCULIN', 0, 0, 0, 0, 0, '2024-03-10 23:06:01', '2024-03-10 23:06:01', 1, 3),
(6, 'test', '2024-01-10 00:00:00', 'En vie', 'Nord', 'masculin', 0, 0, 0, 0, 0, '2024-03-11 15:39:32', '2024-03-11 15:39:32', NULL, NULL),
(7, 'test', '2024-01-10 00:00:00', 'En vie', 'Nord', 'masculin', 0, 0, 0, 0, 0, '2024-03-11 15:42:08', '2024-03-11 15:42:08', NULL, NULL),
(8, 'test', '2024-01-10 00:00:00', 'En vie', 'Nord', 'masculin', 0, 0, 0, 0, 0, '2024-03-11 15:43:44', '2024-03-11 15:43:44', NULL, NULL),
(9, 'Mindah Nkemeni  kingg', '2024-03-10 23:00:00', 'En vie', 'Ouest', 'MASCULIN', 0, 0, 0, 0, 0, '2024-03-11 18:45:39', '2024-03-11 18:45:39', 1, 3),
(10, 'franck', '2024-03-11 23:00:00', 'En vie', 'Centre', 'MASCULIN', 0, 1, 0, 0, 0, '2024-03-12 11:49:08', '2024-03-12 11:49:08', 1, 3),
(11, 'test user', '2024-03-11 23:00:00', 'En vie', 'Ouest', 'MASCULIN', 0, 1, 0, 0, 0, '2024-03-12 17:39:59', '2024-03-12 17:39:59', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `quartiers`
--

CREATE TABLE `quartiers` (
  `id` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `idCommunes` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `libelle`, `idCommunes`, `createdAt`, `updatedAt`) VALUES
(1, 'kwat', 6, '2024-03-08 12:03:11', '2024-03-12 16:47:08'),
(2, 'Damas', 2, '2024-03-09 13:22:22', '2024-03-09 13:22:22'),
(8, 'Cradat', 19, '2024-03-12 17:43:29', '2024-03-12 17:43:29');

-- --------------------------------------------------------

--
-- Structure de la table `residence`
--

CREATE TABLE `residence` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idquartier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `residence`
--

INSERT INTO `residence` (`id`, `description`, `createdAt`, `updatedAt`, `idquartier`) VALUES
(1, 'franck house', '2024-03-10 23:01:57', '2024-03-10 23:01:57', 2),
(2, 'residence A', '2024-03-12 17:41:15', '2024-03-12 17:41:15', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `libelle`, `createdAt`, `updatedAt`) VALUES
(2, 'administrateur', '2024-03-09 13:01:26', '2024-03-09 13:01:26'),
(3, 'Manoeuvre', '2024-03-10 13:50:05', '2024-03-10 13:50:05');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idrole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `password`, `createdAt`, `updatedAt`, `idrole`) VALUES
(5, 'admin', '$2b$05$SPz5pESuqWt/RqhlcHw9t.AwsZlHx1L3nyr8CwycxY8Y.IIlOpB76', '2024-03-09 13:09:30', '2024-03-09 13:09:30', 2);

-- --------------------------------------------------------

--
-- Structure de la table `vulnerabilite`
--

CREATE TABLE `vulnerabilite` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vulnerabilite`
--

INSERT INTO `vulnerabilite` (`id`, `nom`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Orphelins', 'personne ayant perdu au moins un parent', '2024-03-09 15:42:40', '2024-03-09 15:42:40'),
(3, 'vulnerabilite', 'description', '2024-03-12 07:18:17', '2024-03-12 07:18:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avoirvulnerabilite`
--
ALTER TABLE `avoirvulnerabilite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idvulnerabilite` (`idvulnerabilite`),
  ADD KEY `idPer` (`idPer`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`) USING HASH;

--
-- Index pour la table `ong`
--
ALTER TABLE `ong`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idresidence` (`idresidence`),
  ADD KEY `Per_id` (`Per_id`);

--
-- Index pour la table `PersonnesModel`
--
ALTER TABLE `PersonnesModel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idresidence` (`idresidence`),
  ADD KEY `parentId` (`parentId`);

--
-- Index pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCommunes` (`idCommunes`);

--
-- Index pour la table `residence`
--
ALTER TABLE `residence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idquartier` (`idquartier`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idrole` (`idrole`);

--
-- Index pour la table `vulnerabilite`
--
ALTER TABLE `vulnerabilite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `avoirvulnerabilite`
--
ALTER TABLE `avoirvulnerabilite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT pour la table `ong`
--
ALTER TABLE `ong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `PersonnesModel`
--
ALTER TABLE `PersonnesModel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `quartiers`
--
ALTER TABLE `quartiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `residence`
--
ALTER TABLE `residence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `vulnerabilite`
--
ALTER TABLE `vulnerabilite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoirvulnerabilite`
--
ALTER TABLE `avoirvulnerabilite`
  ADD CONSTRAINT `avoirvulnerabilite_ibfk_1` FOREIGN KEY (`idvulnerabilite`) REFERENCES `vulnerabilite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avoirvulnerabilite_ibfk_2` FOREIGN KEY (`idPer`) REFERENCES `PersonnesModel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD CONSTRAINT `personnes_ibfk_1` FOREIGN KEY (`idresidence`) REFERENCES `residence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personnes_ibfk_2` FOREIGN KEY (`Per_id`) REFERENCES `personnes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `PersonnesModel`
--
ALTER TABLE `PersonnesModel`
  ADD CONSTRAINT `PersonnesModel_ibfk_1` FOREIGN KEY (`idresidence`) REFERENCES `residence` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `PersonnesModel_ibfk_2` FOREIGN KEY (`parentId`) REFERENCES `PersonnesModel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD CONSTRAINT `quartiers_ibfk_1` FOREIGN KEY (`idCommunes`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `residence`
--
ALTER TABLE `residence`
  ADD CONSTRAINT `residence_ibfk_1` FOREIGN KEY (`idquartier`) REFERENCES `quartiers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`idrole`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
