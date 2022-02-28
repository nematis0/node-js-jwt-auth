-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 28. 12:46
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zarodolgozat`
--
CREATE DATABASE IF NOT EXISTS `zarodolgozat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `zarodolgozat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime`
--

CREATE TABLE `anime` (
  `anime_id` int(11) NOT NULL,
  `anime_cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_kep` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_leiras` varchar(555) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_link` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anime`
--

INSERT INTO `anime` (`anime_id`, `anime_cim`, `anime_tipus`, `anime_kep`, `anime_leiras`, `anime_link`) VALUES
(1, 'Shingeki no Kyojin', 'Action, Drama, Fantasy, Mystery', '1.jpg', 'A Singeki no kjodzsin japán mangasorozat, amelyet Isayam Hajime ír és illusztrál. A sorozat 2009. szeptember 9-én jelent meg először a Kodansha Besszacu Sónen Magazine-jában és 2013. december 9-én jelent meg a tizenkettedik tankóbon kötete.', 'https://www.youtube.com/embed/cvTipU9gN5g'),
(2, 'Fullmetal Alchemist: Brotherhood', 'Action, Adventure, Comedy, Drama, Fantasy', '2.jpg', 'A Fullmetal Alchemist: Testvériség animesorozat, Arakava Hiromu Fullmetal Alchemist című mangájának adaptációja. A sorozatot a Bones animálta, Irie Jaszuhiro rendezte, míg forgatókönyvét Ónogi Hirosi írta.', 'https://www.youtube.com/embed/g_pR8e-SCnE'),
(3, 'Sword Art Online', 'Action, Adventure, Fantasy, Romance', '3.jpg', 'A Sword Art Online egy japán könnyűregény-sorozat, amelyet Reki Kawahara írt és abec illusztrált. A sorozat a közeljövőben játszódik, és Kazuto \"Kirito\" Kirigaya és Asuna Yuuki főszereplőire összpontosít, miközben különböző virtuális valóság MMORPG világokon játszanak.', 'https://www.youtube.com/embed/C27bHIDFU9Q'),
(4, 'Hunter x Hunter', 'Action, Adventure, Fantasy', '4.jpg', 'A Hunter × Hunter japán mangasorozat, amelyet Togasi Josihiro írt és illusztrált. A mangát 1998. március 3-án kezdte el kiadni a Weekly Sónen Jump magazin, habár 2006-tól kezdve gyakran szünetelt a kiadás. 2017 januárjáig 360 fejezetet 34 tankóbon kötetbe rendezve jelent meg a Shueisha gondozásában.', 'https://www.youtube.com/embed/2hAWy3qKuTg'),
(5, 'Naruto', 'Action, Adventure, Comedy', '5.jpg', 'A Naruto japán mangasorozat, amelynek írója és rajzolója Kisimoto Maszasi. A mangából első fejezetének megjelenése után néhány évvel animesorozat is készült.', 'https://www.youtube.com/embed/G9BqkgZXRA'),
(6, 'Tokyo Ghoul', 'Action, Drama, Horror, Mystery, Supernatural', '6.jpg', 'A Tokyo Ghoul egy dark fantasy/akció manga, amit Sui Ishida írt, és illusztrált. Az első könyv, ami 14 kötetből áll 2011 szeptember 8. - 2014 szeptember 28. futott. Később 2014 október 16. - 2018 július 5. futott a folytatása a Tokyo Ghoul:re, ami 16 kötetes.', 'https://www.youtube.com/embed/vGuQeQsoRgU'),
(7, 'Boku no Hero Academia', 'Action, Comedy', '7.jpg', 'Boku no Hero Academia egy japán manga, melyet Kōhei Horikosi írt és rajzolt. A szuperhősmanga első fejezete 2014. július 7-én jelent meg a Weekly Shōnen Jump című magazinban, és 2016. április 3-án anime adaptációt kapott. Jelenleg a manga 21 kiadott köteten és 200 fejezeten van túl, az anime 4 sikeres évaddal rendelkezik, a 4. évadot pedig 2019 októberében kezdték sugározni Japánban. Magyarországon a Viasat 6 mutatta be 2019. október 9-én, a szinkront a Sony Pictures megbízásából a Balog Mix Stúdió készítette.', 'https://www.youtube.com/embed/EPVkcwyLQQ8'),
(8, 'Kimetsu no Yaiba', 'Action, Supernatural', '8.jpg', 'A Kimetsu no Yaiba japán mangasorozat amit Koyoharu Gotōge írt és illusztrált. A történet Tanjiro Kamado nevű fiúról szól, aki démon vadász lesz miután a családját lemészárolta egy démon a húga Nezuko kivételével, aki démonná változott a támadás alatt.', 'https://www.youtube.com/embed/VQGCKyvzIM4'),
(9, 'Mirai Nikki', 'Action, Mystery, Supernatural, Suspense', '9.jpg', 'A Deus Yukiteru telefonját Jövőnaplóvá alakítja, amely akár kilencven napig képes megjósolni a jövőt. Yukiteru rájön, hogy ő és tizenegy másik személy egy Deus által rendezett túlélési játék részese. Ennek a játéknak az a célja, hogy eltüntesd a többi naplótulajdonost, a győztes, aki Deust istenként követi, és megakadályozza az Apokalipszist. Yukiterut Yuno Gasai, egy bájos, de pszichopata osztálytárs védi meg, aki megszállottan üldözi őt, miután egy évvel korábban megígérték, hogy együtt mennek csillagnézni.', 'https://www.youtube.com/embed/KfznTm8mJA4'),
(10, 'Noragami', 'Action, Adventure, Comedy, Supernatural', '10.jpg', 'A Noragami japán mangasorozat, amelyet Adachitoka alkotott meg. A képregény a Kodansha kiadó Monthly Shounen Magazine-jában jelenik meg folyamatosan 2010 óta. 2015 novemberéig 17 kötet jelent meg. A Bones stúdió által készített anime adaptáció 2014-ben jelent meg a képernyőkön 12 epizóddal.', 'https://www.youtube.com/embed/9TRwivx7B9I'),
(11, 'One Piece', 'Action, Adventure, Comedy, Drama, Fantasy', '11.jpg', 'A One Piece 1997 óta futó, nemzetközileg sikeres mangasorozat. A sorozat kezdetétől a Súkan Sónen Jump magazinban, már 1000 fejezet jelent meg. A történet egy fiatal kalózbandáról szól, egy kitalált világban a legendás kincset, a „One Piece”-t keresik. A főszereplő Monkey D. Luffy, akinek álma, hogy a kalózok királya lehessen. One Piece manga bekerült a Guinness Rekordok Könyvébe, méghozzá „a mostanáig legnagyobb példányszámban kiadott képregény sorozat” címén.', 'https://www.youtube.com/embed/S8_YwFLCh4U'),
(15, 'Akame ga Kill!', 'Action, Adventure, Drama, Fantasy', 'akame.jpg', 'Az Akame ga Kill! japán sónen mangasorozat, amelyet Takahiro írt és Tasiro Tecuja illusztrált. 2010 márciusától fut a Square Enix Gekkan Gangan Joker magazinjában. A Square Enix 15 tankóbon kötetbe gyűjtve adja ki a sorozatot, az utolsó kötet 2016 telén jelent meg.', 'https://www.youtube.com/embed/sCGWxQuSoDU'),
(16, 'Cowboy Bebop', 'Action, Adventure, Comedy, Drama, Sci-Fi', 'cowboy.jpg', 'A Cowboy Bebop japán anime, amit Vatanabe Sinicsiró rendezett, zenéjét Kanno Jóko szerezte. 2071-ben, a Bebop űrhajón négy balszerencsés fejvadász néhol vicces, néhol drámai kalandjait követhetjük nyomon.', 'https://www.youtube.com/embed/AJKEXDKBVdk');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazat`
--

CREATE TABLE `szavazat` (
  `anime_id` int(11) NOT NULL,
  `anime_ertekeles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tipus`
--

CREATE TABLE `tipus` (
  `tipus_id` int(11) NOT NULL,
  `tipus_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tipus`
--

INSERT INTO `tipus` (`tipus_id`, `tipus_nev`) VALUES
(1, 'Akció'),
(2, 'Fantasy');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzenet`
--

CREATE TABLE `uzenet` (
  `uzenet_id` int(11) NOT NULL,
  `uzenet_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_szoveg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `uzenet_datum` date NOT NULL,
  `uzenet_tipus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uzenet`
--

INSERT INTO `uzenet` (`uzenet_id`, `uzenet_nev`, `uzenet_szoveg`, `uzenet_datum`, `uzenet_tipus_id`) VALUES
(1, 'David', 'Mindenkinek csak ajánlani tudom! ;)', '2022-01-02', 1),
(2, 'Pistiiii', 'Nem bántam meg, hogy elfogadtam mások tanácsát és a HxH-val kezdtem. Best of', '2022-01-01', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`anime_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazat`
--
ALTER TABLE `szavazat`
  ADD PRIMARY KEY (`anime_id`);

--
-- A tábla indexei `tipus`
--
ALTER TABLE `tipus`
  ADD PRIMARY KEY (`tipus_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A tábla indexei `uzenet`
--
ALTER TABLE `uzenet`
  ADD PRIMARY KEY (`uzenet_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anime`
--
ALTER TABLE `anime`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `szavazat`
--
ALTER TABLE `szavazat`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tipus`
--
ALTER TABLE `tipus`
  MODIFY `tipus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `uzenet`
--
ALTER TABLE `uzenet`
  MODIFY `uzenet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
