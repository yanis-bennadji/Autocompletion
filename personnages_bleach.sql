-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 01:35 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autocompletion`
--

-- --------------------------------------------------------

--
-- Table structure for table `personnages_bleach`
--

CREATE TABLE `personnages_bleach` (
  `id` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `pouvoir_nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `personnages_bleach`
--

INSERT INTO `personnages_bleach` (`id`, `nom`, `prenom`, `categorie`, `pouvoir_nom`, `description`, `image_url`) VALUES
(1, 'Kurosaki', 'Ichigo', 'Shinigami/Hollow/Quincy', 'Zangetsu', 'Un humain devenu Shinigami remplaçant, il est au centre de l\'histoire avec une combinaison unique de pouvoirs.', 'https://static.wikia.nocookie.net/bleach/images/1/12/Ichigo_Kurosaki.png'),
(2, 'Kuchiki', 'Rukia', 'Shinigami', 'Sode no Shirayuki', 'Une Shinigami élégante et déterminée qui a introduit Ichigo dans le monde des Shinigamis.', 'https://static.wikia.nocookie.net/bleach/images/9/9a/Rukia_Kuchiki.png'),
(3, 'Abarai', 'Renji', 'Shinigami', 'Zabimaru', 'Un lieutenant fougueux de la division 6, loyal à son capitaine Byakuya.', 'https://static.wikia.nocookie.net/bleach/images/a/a8/Renji_Abarai.png'),
(4, 'Kuchiki', 'Byakuya', 'Shinigami', 'Senbonzakura', 'Le noble capitaine de la division 6, connu pour sa maîtrise et son calme.', 'https://static.wikia.nocookie.net/bleach/images/f/f3/Byakuya_Kuchiki.png'),
(5, 'Ishida', 'Uryu', 'Quincy', 'Ginrei Kojaku', 'Un Quincy talentueux et rival d\'Ichigo avec une personnalité sérieuse.', 'https://static.wikia.nocookie.net/bleach/images/4/4c/Uryu_Ishida.png'),
(6, 'Inoue', 'Orihime', 'Humaine', 'Shun Shun Rikka', 'Une humaine avec des pouvoirs uniques de rejet de la réalité, liés à ses émotions.', 'https://static.wikia.nocookie.net/bleach/images/5/50/Orihime_Inoue.png'),
(7, 'Sado', 'Yasutora', 'Humaine', 'Brazo Derecha de Gigante', 'Un humain avec une force surhumaine et un pouvoir spirituel lié à ses bras.', 'https://static.wikia.nocookie.net/bleach/images/0/0b/Yasutora_Sado.png'),
(8, 'Zaraki', 'Kenpachi', 'Shinigami', 'Nozarashi', 'Un capitaine de la division 11, célèbre pour sa soif de combat et sa puissance brute.', 'https://static.wikia.nocookie.net/bleach/images/4/4b/Kenpachi_Zaraki.png'),
(9, 'Hitsugaya', 'Toshiro', 'Shinigami', 'Hyorinmaru', 'Le jeune capitaine prodige de la division 10, contrôlant la glace.', 'https://static.wikia.nocookie.net/bleach/images/6/6d/Toshiro_Hitsugaya.png'),
(10, 'Urahara', 'Kisuke', 'Shinigami', 'Benihime', 'Un ancien capitaine et inventeur brillant, aidant Ichigo dans l\'ombre.', 'https://static.wikia.nocookie.net/bleach/images/c/cd/Kisuke_Urahara.png'),
(11, 'Aizen', 'Sosuke', 'Shinigami/Hollow', 'Kyoka Suigetsu', 'L\'antagoniste principal, ancien capitaine de la division 5, avec un pouvoir d\'hypnose absolue.', 'https://static.wikia.nocookie.net/bleach/images/3/3c/Sosuke_Aizen.png'),
(12, 'Grimmjow', 'Jaegerjaquez', 'Arrancar', 'Pantera', 'Un Arrancar féroce, rival d\'Ichigo avec un style de combat sauvage.', NULL),
(13, 'Ulquiorra', 'Cifer', 'Arrancar', 'Murcielago', 'Un Arrancar calme et analytique, fidèle à Aizen.', NULL),
(14, 'Neliel', 'Tu Odelschwanck', 'Arrancar', 'Gamuza', 'Une ancienne Espada au cœur pur et alliée inattendue d\'Ichigo.', NULL),
(15, 'Kyoraku', 'Shunsui', 'Shinigami', 'Katen Kyokotsu', 'Le capitaine de la division 8, connu pour sa personnalité décontractée et sa puissance.', 'https://static.wikia.nocookie.net/bleach/images/e/ea/Shunsui_Kyoraku.png'),
(16, 'Ichimaru', 'Gin', 'Shinigami', 'Shinso', 'Un ancien capitaine de la division 3, mystérieux et calculateur.', 'https://static.wikia.nocookie.net/bleach/images/a/a5/Gin_Ichimaru.png'),
(17, 'Yamamoto', 'Genryusai', 'Shinigami', 'Ryujin Jakka', 'Le capitaine-commandant, le Shinigami le plus puissant de la Soul Society.', 'https://static.wikia.nocookie.net/bleach/images/3/31/Genryusai_Yamamoto.png'),
(18, 'Hollow', 'Grand Fisher', 'Hollow', 'Aucune', 'Un Hollow qui a tué la mère d\'Ichigo et joue un rôle clé dans son passé.', NULL),
(19, 'Kurotsuchi', 'Mayuri', 'Shinigami', 'Ashisogi Jizo', 'Le capitaine de la division 12, un scientifique excentrique et cruel.', 'https://static.wikia.nocookie.net/bleach/images/c/c5/Mayuri_Kurotsuchi.png'),
(20, 'Unohana', 'Retsu', 'Shinigami', 'Minazuki', 'La capitaine de la division 4, mystérieuse et puissante dans l\'art du combat.', 'https://static.wikia.nocookie.net/bleach/images/e/ea/Retsu_Unohana.png'),
(21, 'Shiba', 'Kaien', 'Shinigami', 'Nejibana', 'Un ancien lieutenant de la division 13, connu pour sa loyauté et son esprit courageux.', NULL),
(22, 'Kira', 'Izuru', 'Shinigami', 'Wabisuke', 'Le lieutenant de la division 3, dont le Zanpakuto peut doubler le poids de ses cibles.', NULL),
(23, 'Hinamori', 'Momo', 'Shinigami', 'Tobiume', 'La lieutenante de la division 5, fidèle à Aizen avant de découvrir sa trahison.', NULL),
(24, 'Yamada', 'Hanataro', 'Shinigami', 'Aucune', 'Un Shinigami timide de la division 4, souvent sous-estimé mais courageux.', NULL),
(25, 'Shihouin', 'Yoruichi', 'Shinigami', 'Aucune', 'Une experte en combat rapproché, ancienne capitaine de la division 2.', 'https://static.wikia.nocookie.net/bleach/images/6/62/Ep246YoruichiShih%C5%8Din.png/revision/latest/scale-to-width-down/1000?cb=20231105202606&path-prefix=en'),
(26, 'Komamura', 'Sajin', 'Shinigami', 'Tenken', 'Le capitaine de la division 7, avec une apparence et une force impressionnantes.', NULL),
(27, 'Iba', 'Tetsuzaemon', 'Shinigami', 'Aucune', 'Le lieutenant de la division 7, un combattant loyal et pragmatique.', NULL),
(28, 'Matsumoto', 'Rangiku', 'Shinigami', 'Haineko', 'La lieutenante de la division 10, connue pour sa personnalité charismatique.', NULL),
(29, 'Hisagi', 'Shuhei', 'Shinigami', 'Kazeshini', 'Le lieutenant de la division 9, avec un Zanpakuto symbolisant la mort.', NULL),
(30, 'Ukitake', 'Jushiro', 'Shinigami', 'Sogyo no Kotowari', 'Le capitaine de la division 13, respecté pour sa sagesse et son altruisme.', NULL),
(31, 'Starrk', 'Coyote', 'Arrancar', 'Los Lobos', 'Le premier Espada, un Arrancar puissant et solitaire.', NULL),
(32, 'Barragan', 'Luisenbarn', 'Arrancar', 'Arrogante', 'Le deuxième Espada, capable de contrôler le vieillissement et la décomposition.', NULL),
(33, 'Harribel', 'Tier', 'Arrancar', 'Tiburon', 'La troisième Espada, avec un pouvoir basé sur l\'eau.', NULL),
(34, 'Zommari', 'Rureaux', 'Arrancar', 'Brujeria', 'Le septième Espada, capable de contrôler les corps avec ses yeux.', NULL),
(35, 'Szayelaporro', 'Granz', 'Arrancar', 'Fornicaras', 'Le huitième Espada, un scientifique cruel et manipulateur.', NULL),
(36, 'Nnoitra', 'Gilga', 'Arrancar', 'Santa Teresa', 'Le cinquième Espada, un combattant brutal avec une résistance immense.', NULL),
(37, 'Yammy', 'Llargo', 'Arrancar', 'Ira', 'Le dixième Espada, dont la puissance augmente avec sa colère.', NULL),
(38, 'As Nodt', 'None', 'Quincy', 'Fear', 'Un membre du Sternritter, capable d\'induir la peur chez ses adversaires.', NULL),
(39, 'Jugram', 'Haschwalth', 'Quincy', 'Balance', 'Le bras droit de Yhwach et un combattant extrêmement loyal.', NULL),
(40, 'Liltotto', 'Lamperd', 'Quincy', 'The Glutton', 'Une Quincy vorace et stratégique dans ses attaques.', NULL),
(41, 'Bambietta', 'Basterbine', 'Quincy', 'The Explode', 'Une Quincy destructrice, capable de transformer tout en bombe.', NULL),
(42, 'Gremmy', 'Thoumeaux', 'Quincy', 'The Visionary', 'Un Quincy capable de rendre réels ses propres pensées.', NULL),
(43, 'Pesche', 'Guatiche', 'Hollow', 'Infinite Slick', 'Un allié comique et inattendu d\'Ichigo, souvent avec Nel.', NULL),
(44, 'Dondochakka', 'Bilstin', 'Hollow', 'Aucune', 'Un Hollow comique avec une personnalité amicale mais effrayante.', NULL),
(45, 'Tesla', 'Lindocruz', 'Arrancar', 'Aucune', 'Un Arrancar loyal au service de Nnoitra.', NULL),
(46, 'Apache', 'Mila Rose', 'Arrancar', 'Aucune', 'Une des Fracciones de Harribel, avec une forte personnalité.', NULL),
(47, 'Sun-Sun', 'Cyan', 'Arrancar', 'Aucune', 'Une des Fracciones de Harribel, connue pour son attitude calme.', NULL),
(48, 'Yhwach', 'None', 'Quincy', 'The Almighty', 'Le roi des Quincy, capable de voir et manipuler l\'avenir.', NULL),
(49, 'Riruka', 'Dokugamine', 'Fullbringer', 'Dollhouse', 'Une Fullbringer capable de manipuler des objets en les réduisant.', NULL),
(50, 'Ginjo', 'Kugo', 'Fullbringer', 'Cross of Scaffold', 'Un Fullbringer charismatique et leader des Xcution.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personnages_bleach`
--
ALTER TABLE `personnages_bleach`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personnages_bleach`
--
ALTER TABLE `personnages_bleach`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
