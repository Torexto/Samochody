-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Paź 2023, 18:13
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
-- Baza danych: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `nadwozie` varchar(10) NOT NULL,
  `silnik` varchar(10) NOT NULL,
  `wyp` varchar(50) NOT NULL,
  `choinka` varchar(10) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `haslo` varchar(30) NOT NULL,
  `kluczyk` int(5) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `dzien` varchar(10) NOT NULL,
  `czas` varchar(10) NOT NULL,
  `komentarz` text NOT NULL,
  `kolor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `nadwozie`, `silnik`, `wyp`, `choinka`, `imie`, `haslo`, `kluczyk`, `adres`, `telefon`, `dzien`, `czas`, `komentarz`, `kolor`) VALUES
(15, 'Kabriolet', 'wysokopręż', '3, 5, 8, 10, 11, 12', 'k, b', 'test', 'test', 4, 'test@test', '53253245', '', '', 'ffwfwffwfwfwf', '#475bb8');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
