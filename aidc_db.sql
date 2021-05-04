-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Maj 2021, 22:00
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aidc_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accounts`
--

CREATE TABLE `accounts` (
  `AccountId` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `Login` varchar(30) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Rank` int(2) NOT NULL,
  `State` int(2) NOT NULL,
  `InventoryId` int(10) NOT NULL,
  `PersonalUseId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `accounts`
--

INSERT INTO `accounts` (`AccountId`, `Name`, `Surname`, `Login`, `Password`, `Email`, `Rank`, `State`, `InventoryId`, `PersonalUseId`) VALUES
(1, 'Tomasz', 'Karolak', 'TKarolak', 'admin', 'tkarolak@wp.pl', 1, 1, 5, 4),
(2, 'Borys', 'Szyc', 'Bszyc', 'admin', 'bszyc@wp.pl', 2, 1, 7, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `ArticleId` int(10) NOT NULL,
  `LocationId` int(10) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Description` text NOT NULL,
  `AddtionDate` date NOT NULL,
  `ProductionYear` int(4) NOT NULL,
  `State` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`ArticleId`, `LocationId`, `Category`, `Name`, `Description`, `AddtionDate`, `ProductionYear`, `State`) VALUES
(1, 8, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(2, 8, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(3, 8, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(4, 8, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(5, 8, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(6, 8, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(7, 8, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(8, 8, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(9, 8, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(10, 8, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(11, 8, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(12, 8, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(13, 8, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(14, 8, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(15, 8, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(16, 8, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(17, 8, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(18, 8, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(19, 8, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(20, 8, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(21, 8, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(22, 8, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(23, 8, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(24, 8, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(25, 8, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(26, 8, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(27, 8, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(28, 8, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(29, 8, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(30, 8, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(31, 8, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(32, 8, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(33, 8, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(34, 9, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(35, 9, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(36, 9, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(37, 9, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(38, 9, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(39, 9, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(40, 9, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(41, 9, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(42, 9, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(43, 9, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(44, 9, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(45, 9, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(46, 9, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(47, 9, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(48, 9, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(49, 9, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(50, 9, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(51, 9, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(52, 9, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(53, 9, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(54, 9, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(55, 9, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(56, 9, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(57, 9, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(58, 9, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(59, 9, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(60, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(61, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(62, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(63, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(64, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(65, 9, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(66, 9, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(67, 10, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(68, 10, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(69, 10, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(70, 10, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(71, 10, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(72, 10, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(73, 10, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(74, 10, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(75, 10, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(76, 10, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(77, 10, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(78, 10, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(79, 10, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(80, 10, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(81, 10, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(82, 10, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(83, 10, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(84, 10, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(85, 10, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(86, 10, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(87, 10, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(88, 10, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(89, 10, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(90, 10, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(91, 10, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(92, 10, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(93, 10, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(94, 10, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(95, 10, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(96, 10, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(97, 10, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(98, 10, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(99, 10, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(100, 11, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(101, 11, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(102, 11, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(103, 11, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(104, 11, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(105, 11, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(106, 11, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(107, 11, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(108, 11, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(109, 11, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(110, 11, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(111, 11, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(112, 11, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(113, 11, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(114, 11, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(115, 11, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(116, 11, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(117, 11, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(118, 11, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(119, 11, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(120, 11, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(121, 11, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(122, 11, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(123, 11, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(124, 11, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(125, 11, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(126, 11, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(127, 11, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(128, 11, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(129, 11, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(130, 11, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(131, 11, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(132, 11, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(133, 13, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(134, 13, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(135, 13, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(136, 13, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(137, 13, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(138, 13, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(139, 13, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(140, 13, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(141, 13, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(142, 13, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(143, 13, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(144, 13, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(145, 13, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(146, 13, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(147, 13, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(148, 13, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(149, 13, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(150, 13, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(151, 13, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(152, 13, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(153, 13, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(154, 13, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(155, 13, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(156, 13, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(157, 13, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(158, 13, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(159, 13, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(160, 13, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(161, 13, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(162, 13, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(163, 13, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(164, 13, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(165, 13, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(166, 14, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(167, 14, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(168, 14, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(169, 14, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(170, 14, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(171, 14, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(172, 14, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(173, 14, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(174, 14, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(175, 14, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(176, 14, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(177, 14, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(178, 14, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(179, 14, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(180, 14, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(181, 14, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(182, 14, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(183, 14, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(184, 14, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(185, 14, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(186, 14, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(187, 14, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(188, 14, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(189, 14, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(190, 14, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(191, 14, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(192, 14, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(193, 14, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(194, 14, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(195, 14, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(196, 14, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(197, 14, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(198, 14, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(199, 15, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(200, 15, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(201, 15, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(202, 15, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(203, 15, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(204, 15, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(205, 15, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(206, 15, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(207, 15, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(208, 15, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(209, 15, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(210, 15, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(211, 15, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(212, 15, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(213, 15, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(214, 15, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(215, 15, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(216, 15, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(217, 15, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(218, 15, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(219, 15, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(220, 15, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(221, 15, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(222, 15, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(223, 15, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(224, 15, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(225, 15, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(226, 15, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(227, 15, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(228, 15, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(229, 15, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(230, 15, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(231, 15, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(232, 12, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(233, 12, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(234, 12, 'klawiatura', 'Natec Barracuda', '', '2021-04-16', 2015, 1),
(235, 12, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(236, 12, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(237, 12, 'klawiatura', 'Logitech K120', '', '2021-04-16', 2017, 1),
(238, 12, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(239, 12, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(240, 12, 'klawiatura', 'Dell KB216', '', '2021-04-16', 2018, 1),
(241, 12, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(242, 12, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(243, 12, 'klawiatura', 'A4Tech KR-85', '', '2021-04-16', 2015, 1),
(244, 12, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(245, 12, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(246, 12, 'myszka', 'Logitech B100', '', '2021-04-16', 2016, 1),
(247, 12, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(248, 12, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(249, 12, 'myszka', 'Trust Mydo Silent Click', '', '2021-04-16', 2018, 1),
(250, 12, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(251, 12, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(252, 12, 'myszka', 'A4Tech EVO Opto Ecco', '', '2021-04-16', 2019, 1),
(253, 12, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(254, 12, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(255, 12, 'myszka', 'Dell MS116', '', '2021-04-16', 2014, 1),
(256, 12, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(257, 12, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(258, 12, 'monitor', 'Samsung F24T350', '', '2021-04-16', 2014, 1),
(259, 12, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(260, 12, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(261, 12, 'monitor', 'Acer Nitro VG240Ybmiix', '', '2021-04-16', 2020, 1),
(262, 12, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(263, 12, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(264, 12, 'monitor', 'BenQ GW2480E', '', '2021-04-16', 2017, 1),
(265, 12, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(266, 12, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(267, 12, 'monitor', 'Dell SE2416H', '', '2021-04-16', 2016, 1),
(268, 12, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(269, 12, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(270, 12, 'jednostka centralna', 'Acer Veriton VX2665G', '', '2021-04-16', 20, 1),
(271, 12, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(272, 12, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(273, 12, 'jednostka centralna', 'Asus ExpertCenter', '', '2021-04-16', 20, 1),
(274, 12, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(275, 12, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(276, 12, 'jednostka centralna', 'Lenovo IdeaCentre', '', '2021-04-16', 20, 1),
(277, 12, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(278, 12, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(279, 12, 'jednostka centralna', 'HP S01-AF1003nw', '', '2021-04-16', 20, 1),
(280, 12, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1),
(281, 12, 'drukarka', 'Lexmark B2236dw', '', '2021-04-16', 2014, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `history`
--

CREATE TABLE `history` (
  `HistoryId` int(11) NOT NULL,
  `Action` int(3) NOT NULL,
  `Time` datetime NOT NULL,
  `FirstId` int(10) NOT NULL,
  `SecondId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `locations`
--

CREATE TABLE `locations` (
  `LocationId` int(10) NOT NULL,
  `Building` int(10) NOT NULL,
  `Floor` int(5) NOT NULL,
  `Room` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `locations`
--

INSERT INTO `locations` (`LocationId`, `Building`, `Floor`, `Room`) VALUES
(4, -1, 1, 1),
(5, -1, 2, 1),
(6, -1, 1, 2),
(7, -1, 2, 2),
(8, 1, 1, 101),
(9, 1, 1, 102),
(10, 1, 2, 103),
(11, 0, 0, 104),
(12, 2, 1, 201),
(13, 2, 1, 202),
(14, 2, 2, 203),
(15, 2, 2, 204);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`AccountId`),
  ADD KEY `InventoryId` (`InventoryId`),
  ADD KEY `PersonalUseId` (`PersonalUseId`);

--
-- Indeksy dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ArticleId`),
  ADD KEY `LocationId` (`LocationId`);

--
-- Indeksy dla tabeli `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`HistoryId`);

--
-- Indeksy dla tabeli `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LocationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `accounts`
--
ALTER TABLE `accounts`
  MODIFY `AccountId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `ArticleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT dla tabeli `history`
--
ALTER TABLE `history`
  MODIFY `HistoryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `locations`
--
ALTER TABLE `locations`
  MODIFY `LocationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`InventoryId`) REFERENCES `locations` (`LocationId`),
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`PersonalUseId`) REFERENCES `locations` (`LocationId`);

--
-- Ograniczenia dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`LocationId`) REFERENCES `locations` (`LocationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
