-- phpMyAdmin SQL Dump
-- version 4.0.10.11
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 19 2016 г., 15:51
-- Версия сервера: 5.5.46
-- Версия PHP: 5.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `coctail`
--

CREATE TABLE IF NOT EXISTS `coctail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Recipe` int(11) NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Recipe` (`Recipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `coctail`
--

INSERT INTO `coctail` (`ID`, `Name`, `Recipe`, `Cost`) VALUES
(1, 'Мохито', 1, 50),
(2, 'Отвертка', 2, 25),
(3, 'Кровавая Мэри', 3, 38),
(4, 'Глинтвейн', 4, 65);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Cost` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `Name`, `Cost`, `Quantity`) VALUES
(1, 'Сок(в ассортименте)', 10, 150),
(2, 'Вода', 5, 200),
(3, 'Водка', 40, 50),
(4, 'Вино(красное\\белое)', 50, 200),
(5, 'Вермут', 35, 90),
(6, 'Апельсин', 5.5, 20),
(7, 'Лимон', 8.75, 15),
(8, 'Мята (свежая)', 3.25, 75);

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Complication` text NOT NULL,
  `Recipe` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`ID`, `Name`, `Complication`, `Recipe`) VALUES
(1, 'Мохито', 'слаб.', 'Смешать вермут и спрайт 1:2, добавить листья свежей мяты и кусочек лайма'),
(2, 'Отвертка', 'слаб', 'Смешать водку с соком 1:3'),
(3, 'Кровавая Мэри', 'Сред.', 'Смешать томатный сок, сок лимона, водку 10:1:3, добавить специи'),
(4, 'Глинтвейн', 'сложн.', 'Поставить на огонь вино, добавить специи, "варить" 20 минут, налить в стакан, добавить мед, кусочек апельсина');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Salary` double(10,0) NOT NULL,
  `Position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `Name`, `Salary`, `Position`) VALUES
(1, 'Дмитрий Воронцов', 2838, 'Бармен'),
(2, 'Алексей Дмитриев', 2436, 'Бармен');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coctail`
--
ALTER TABLE `coctail`
  ADD CONSTRAINT `coctail_ibfk_1` FOREIGN KEY (`Recipe`) REFERENCES `recipe` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
