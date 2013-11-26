-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 26 nov 2013 om 09:58
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `am1a-fotosjaak`
--
CREATE DATABASE IF NOT EXISTS `am1a-fotosjaak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1a-fotosjaak`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_english` text NOT NULL,
  `question_dutch` text NOT NULL,
  `answer_english` text NOT NULL,
  `answer_dutch` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `faq`
--

INSERT INTO `faq` (`id`, `question_english`, `question_dutch`, `answer_english`, `answer_dutch`) VALUES
(1, 'Is this game hard to play?', 'Is dit een moeilijk spel om te spelen?', 'Yes, this game is very hard to crack.', 'Ja, dit spel is erg moeilijk'),
(2, 'When is this game completed?', 'wanneer heb je dit spel uitgespeeld?', 'The game is a never ending experience.\r\nFull of joy and pleasure.', 'De game komt nooit ten einde. Het maakt je tot een beter en gelukkiger mens.'),
(3, 'What are the difficultys?', 'Wat zijn de moeilijkheden?', 'The difficultys are: Easy\r\n                     Medium\r\n                     Hard\r\n', 'De moeilijkheden zijn: Easy\r\n                       Medium\r\n                       Hard'),
(4, 'Will defeating this game give me super powers?', 'Als ik dit spel uitspeel, krijg ik dan superkrachten?', 'Only if you beat it on Hard.', 'Alleen als je het op hard uitspeelt.'),
(5, 'Is the background music nice to listen to?', 'Is de achtergrond music mooi om aan te horen?', 'Nope.', 'Nee.'),
(6, 'Are there any cheats to this game?', 'Can je met dit spel vals spelen?', 'Nope, dont even try.', 'Nee, probeer het niet eens.'),
(7, 'Can i download this awesome game for free?', 'Kan ik dit geweldige spel gratis downloaden?', 'Yes, you can download this awesome game completely for free.', 'Ja, je kan dit geweldige spel helemaal gratis downloaden.'),
(8, 'This is so unbelieveble fun!', 'Dit is ongeloofelijk leuk!', 'This is not a question, however i do agree.', 'Dit is geen vraag, maar ik ben het met je eens.'),
(9, 'Has this game received the nobel price for fun?', 'Heeft dit spel de nobel prijs voor plezier ontvangen?', 'No, not yet.', 'Nee, nog niet.'),
(10, 'I have defeated this game, what do i do now?', 'Ik heb het spel uitgespeeld, wat doe ik nu?', 'Play it aggain!', 'Speel het nog een keer!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userrole` enum('customer','root','administrator','photographer') NOT NULL DEFAULT 'customer',
  `activated` enum('yes','no','','') NOT NULL DEFAULT 'no',
  `activationdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `addressnumber` varchar(10) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `country` varchar(200) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `mobilephonenumber` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `housenumber` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `marital_state` enum('married','single') NOT NULL,
  `favo_genre` enum('not_selected','rpg','adventure','horror','shooter','mmorpg','casual','educational','sport','simulation') NOT NULL DEFAULT 'not_selected',
  `favouritegame` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userrole` enum('admin','root','customer','') NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `street`, `housenumber`, `address`, `zipcode`, `birthday`, `sex`, `marital_state`, `favo_genre`, `favouritegame`, `email`, `password`, `userrole`) VALUES
(1, 'Swag', 'a', 'a', 'asdasdasd', 43567, '', '', '1999-06-03', 'female', 'single', 'not_selected', '', 'asdad@yolo.swag', 'swag', 'customer'),
(2, 'a', 'a', 'a', 'a', 14, 'a', 'a', '2013-10-03', 'male', 'married', 'adventure', 'a', 'swag@swag', 'swag', 'customer'),
(3, 'admin', 'de', 'admin', 'adminstraat', 12, 'admintown', '1901CB', '1999-01-01', 'male', 'single', 'educational', 'pokemon', 'admin@gmail', 'geheim', 'admin'),
(4, 'root', 'de', 'root', 'roostraat', 12, 'roottown', '1901CB', '1999-12-12', 'male', 'married', 'sport', 'asd', 'root@gmail', 'geheim', 'root'),
(5, 'nieuw', 'de', 'nieuwe', 'nieuwstraat', 3, 'nieuwtown', '1234qw', '2013-09-19', 'male', 'married', 'casual', 'nieuwq', 'nieuw@nieuw', 'nieuw', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
