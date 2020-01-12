-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Ağu 2019, 23:52:06
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje_ee`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `crid` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `csurname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cphone` varchar(12) COLLATE utf8_turkish_ci NOT NULL,
  `cmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `cnotes` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cart`
--

INSERT INTO `cart` (`crid`, `cname`, `csurname`, `cphone`, `cmail`, `cid`, `cnotes`) VALUES
(3, 'Mesut', 'ahmet', '1111111111', 'recy@gmail.com', 2, 'iyii'),
(4, 'Murat', 'Celik', '5558786968', 'pr@gmail.com', 4, 'good boys'),
(5, 'Jeryy', 'Lee', '3456783553', 'lee@hotmail.com', 4, 'very bad');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `ctitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`cid`, `ctitle`) VALUES
(1, 'Family'),
(2, 'Job'),
(3, 'Friends'),
(4, 'School');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `uname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `usurname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `umail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `upassword` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`uid`, `uname`, `usurname`, `umail`, `upassword`) VALUES
(1, 'Jonathan', 'cage', 'cage@gmail.com', '123456'),
(2, 'John', 'smith', 'john@gmail.com', '123456'),
(3, 'mark', 'custo', 'ma@gmail.com', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`crid`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `crid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
