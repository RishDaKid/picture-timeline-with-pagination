-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 05 aug 2018 om 23:17
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
-- Tabelstructuur voor tabel `alphabet`
--

CREATE TABLE `alphabet` (
  `id` int(11) NOT NULL,
  `alphabet` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `alphabet`
--

INSERT INTO `alphabet` (`id`, `alphabet`) VALUES
(1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e'),
(6, 'f'),
(8, 'g'),
(9, 'h'),
(11, 'i'),
(12, 'j'),
(13, 'k'),
(14, 'l'),
(15, 'm'),
(16, 'n'),
(17, 'o'),
(18, 'p'),
(19, 'q'),
(20, 'r'),
(21, 's'),
(22, 't'),
(23, 'u'),
(24, 'v'),
(25, 'w'),
(26, 'x'),
(27, 'y'),
(28, 'z');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(7, 'ezgif.com-webp-to-jpg.jpg'),
(8, 'facebook.jpg'),
(9, '04_web-design.jpg'),
(10, 'webdesign_portfolio.jpg'),
(11, 'slider1.jpg'),
(12, 'Web-design-in-Whitefield.jpg'),
(13, 'Web-Trends-2016-.jpg'),
(14, 'disco.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `alphabet`
--
ALTER TABLE `alphabet`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `alphabet`
--
ALTER TABLE `alphabet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
