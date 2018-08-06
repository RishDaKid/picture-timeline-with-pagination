-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 06 aug 2018 om 21:38
-- Serverversie: 10.1.32-MariaDB
-- PHP-versie: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_text` text NOT NULL,
  `image_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `images`
--

INSERT INTO `images` (`id`, `image`, `image_text`, `image_description`) VALUES
(18, 'hm5dhybzmae11.jpg', 'Nothin gets past Houseâœ‹ðŸ½ðŸš«', ''),
(19, 'xsfm2r6q1ae11.jpg', 'Make America Lactate Again', ''),
(20, 'facebook.jpg', 'FaceBook\r\n', ''),
(21, 'ezgif.com-webp-to-jpg.jpg', 'Blue', ''),
(22, 'how-to-brief-a-web-designer-388161091.jpg', 'work', ''),
(23, 'Web-Design-Blog-Image.jpg', 'team', ''),
(24, 'slider-fullscreen-slide-2-1.jpg', 'fun', ''),
(26, 'images.jpg', 'Banner', 'Hello my name is Rishi'),
(28, '27336811_1496471190465905_2449576570894616534_n.jpg', 'Test', 'hallo ik ben rishi en ik ben 20  jaar');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
