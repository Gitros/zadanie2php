-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Sty 2023, 16:54
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kwiaciarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwiaciarnie`
--

CREATE TABLE `kwiaciarnie` (
  `id_kwiaciarni` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `ulica` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `kwiaciarnie`
--

INSERT INTO `kwiaciarnie` (`id_kwiaciarni`, `nazwa`, `miasto`, `ulica`) VALUES
(1, 'Astra', 'Warszawa', 'Sobieskiego'),
(2, 'Melisa', 'Malbork', 'Konopnickiej');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zam` int(11) NOT NULL,
  `id_kwiaciarni` varchar(50) NOT NULL,
  `data` varchar(50) NOT NULL,
  `kwiaty` varchar(50) NOT NULL,
  `cena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zam`, `id_kwiaciarni`, `data`, `kwiaty`, `cena`) VALUES
(1, '1', '16.01.2017', 'róża', '250'),
(2, '1', '10.01.2017', 'gerbera', '120'),
(3, '2', '06.01.2017', 'róża', '200'),
(4, '2', '09.01.2017', 'goździk', '170'),
(5, '1', '07.01.2017', 'róża', '125'),
(6, '1', '11.01.2017', 'róża', '75');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kwiaciarnie`
--
ALTER TABLE `kwiaciarnie`
  ADD PRIMARY KEY (`id_kwiaciarni`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kwiaciarnie`
--
ALTER TABLE `kwiaciarnie`
  MODIFY `id_kwiaciarni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
