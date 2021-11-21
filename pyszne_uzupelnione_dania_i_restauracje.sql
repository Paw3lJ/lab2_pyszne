-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Lis 2021, 10:47
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pyszne`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `Id_dan` int(11) NOT NULL,
  `Nazwa` varchar(200) DEFAULT NULL,
  `Opis` varchar(200) DEFAULT NULL,
  `Cena` varchar(200) DEFAULT NULL,
  `Kategoria` varchar(200) DEFAULT NULL,
  `Id_res` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dania`
--

INSERT INTO `dania` (`Id_dan`, `Nazwa`, `Opis`, `Cena`, `Kategoria`, `Id_res`) VALUES
(1, 'Kubełek 15 Hot Wings', '15 Hot Wings (pikantne skrzydełka), 2 x frytki 80g\r\n', '34,95 zł', 'Kubełki', 1),
(2, 'Mega Pocket Menu', 'Mega Pocket, Duże frytki 115g, Colesław', '28,95 zł', 'Zestawy', 1),
(3, 'Grander', 'Świeży, ręcznie panierowany kawałek kurczaka w dużej bułce sezamowej, bekon, żółty ser Cheddar, smakowita czerwona cebulka, świeża zielona sałatka oraz aż dwa sosy: ostry BBQ i łagodny majonezowy.', '21,95 zł', 'Burgery', 1),
(4, 'Zestaw KOKU 1 (24 szt.)', 'hosomaki z surimi, hosomaki z ogórkiem, hosomaki z wędzonym łososiem', '36,00 zł', 'Zestawy Koku Sushi', 2),
(5, 'Futomaki łosoś wędzony', 'omlet tamago, awokado, ogórek, serek, majonez paprykowy, sezam', '28,50 zł', 'Futomaki', 2),
(6, 'Nigiri Omlet Tamago', 'Do wyboru: Coca-Cola 0,5l, Lech Free 0,33l, ryż 150g, dodatkowe warzywka (ogórek, rzodkiew, imbir, wasabi) 120g, dodatkowe wasabi', '11,50 zł', 'Nigiri', 2),
(7, 'Pizza Margherita', 'z podstawowymi składnikami', '16,40 zł', 'Pizza', 3),
(8, 'Pizza Pescatore', 'z tuńczykiem, papryką, cebulą i pieczarkami', '23,90 zł', 'Pizza', 3),
(9, 'Pizza Capriciosa', 'z szynką i pieczarkami', '22,90 zł', 'Pizza', 3),
(10, 'Kurczak w 5-ciu smakach', 'Zawiera zboża i produkty zawierające gluten ', '18,00 zł', 'Dania z Kurczaka', 4),
(11, 'Chiński mixed', 'danie z różnych mięs: z wieprzowiny, wołowiny i kurczaka, z duszonymi warzywami, pieczarki, cebula, papryka i grzyby mun', '22,00 zł', 'Różności mięsne', 4),
(12, 'Kotlet drobiowy z pieczarkami i serem', 'z serem żółtym, frytkami i surówką', '20,00 zł', 'Dania Polskie', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `restauracje`
--

CREATE TABLE `restauracje` (
  `Id_res` int(11) NOT NULL,
  `Nazwa` char(30) DEFAULT NULL,
  `Opis` varchar(200) DEFAULT NULL,
  `Miasto` char(30) DEFAULT NULL,
  `Ulica` char(50) DEFAULT NULL,
  `Kod_pocztowy` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `restauracje`
--

INSERT INTO `restauracje` (`Id_res`, `Nazwa`, `Opis`, `Miasto`, `Ulica`, `Kod_pocztowy`) VALUES
(1, 'KFC', 'Restauracja fast food', 'Legnica', 'Najświętszej Marri Panny 9', '59-220'),
(2, 'Koku Sushi', 'Restauracja azjatycka podająca sushi', 'Legnica', 'Świętego Piotra 9', '59-220'),
(3, 'Pizzeria Caruzo', 'Pyszna pizza w lokalu przy ulicy Hutników', 'Legnica', 'Hutników 18', '59-220'),
(4, 'Ha Noi', 'Kuchnie: Chińska, Tajska, Wietnamska, Polska', 'Legnica', 'Nowodworska 30', '59-220');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `Imie_klienta` varchar(40) DEFAULT NULL,
  `Id_zamow` int(11) NOT NULL,
  `Cena` varchar(200) DEFAULT NULL,
  `Danie` varchar(200) DEFAULT NULL,
  `Data_zamowienia` datetime DEFAULT NULL,
  `Adres_klienta` varchar(200) DEFAULT NULL,
  `Email_klienta` varchar(100) DEFAULT NULL,
  `Tel_klienta` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`Id_dan`),
  ADD KEY `IX_Relationship1` (`Id_res`);

--
-- Indeksy dla tabeli `restauracje`
--
ALTER TABLE `restauracje`
  ADD PRIMARY KEY (`Id_res`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`Id_zamow`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dania`
--
ALTER TABLE `dania`
  MODIFY `Id_dan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `restauracje`
--
ALTER TABLE `restauracje`
  MODIFY `Id_res` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `Id_zamow` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD CONSTRAINT `dania_restauracje` FOREIGN KEY (`Id_res`) REFERENCES `restauracje` (`Id_res`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
