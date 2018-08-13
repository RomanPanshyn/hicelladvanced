-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 13 2018 г., 14:58
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hicelladvanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1533986078),
('m130524_201442_init', 1533986099),
('m180317_182650_add_user_email_confirm_token', 1533986099);

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `mobilephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `email`, `firstname`, `lastname`, `skype`, `mobilephone`) VALUES
(3, 'romanpanshyntest@gmail.com', 'Roman', 'Panshyn', 'panshyn89', '+380638930570'),
(4, 'romanpanshyn@gmail.com', 'Roman', 'Panshyn', 'panshyn89', '+380638930570'),
(9, 'ignatevich.v@gmail.com', 'Vitaly', 'Matkovsky', 'ignatevich.v', '+380984863298'),
(11, 'romanpantw@gmail.com', 'Roman', 'Panshyn', 'panshyn89', '+380638930570');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_confirm_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_referral` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'romanpanshyntest@gmail.com',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `auth_key`, `email`, `email_confirm_token`, `email_referral`, `password_hash`, `password_reset_token`, `user_type`, `status`, `created_at`, `updated_at`) VALUES
(12, '9n2Ga-B5MmtN8fOSJp2MoEJleCdaxR5x', 'romanpanshyntest@gmail.com', NULL, 'romanpanshyntest@gmail.com', '$2y$13$Fj1jF6Mib6MpCuu5XBkvduqTrQ5aecnpz.ve9yXJBl4s6nH4MUlBK', NULL, 'administrator', 10, 1534100794, 1534100887),
(13, 'G4qiFlmkAeSAfcRcY3gRHp1qYTE4tjmu', 'romanpanshyn@gmail.com', NULL, 'romanpanshyntest@gmail.com', '$2y$13$2JMzlvBsD8Zu3NiXBIUb2.pmPv8SAVBJ51nXfb5uUzQjneNVOi2y6', NULL, 'client', 10, 1534101435, 1534160806),
(18, '0kW1zdWCUOgrcqTcxZL2hka_lHydk241', 'ignatevich.v@gmail.com', NULL, 'romanpanshyn@gmail.com', '$2y$13$YMTtW5tYL6uxA3h0We.GiOCGgYz2wm8.0XvL9yOqC4braEIMK6AcS', NULL, 'manager', 10, 1534164012, 1534164853),
(20, '1Un7bFgca2fFtp4YaIgCNjI_-g-GIdtD', 'romanpantw@gmail.com', NULL, 'ignatevich.v@gmail.com', '$2y$13$yb3MJuyeqvVIz5CzRriswO6rayHylaannNdG/wFhSU3JIrZ//SJMC', NULL, 'client', 10, 1534164494, 1534164504);

-- --------------------------------------------------------

--
-- Структура таблицы `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usertype`
--

INSERT INTO `usertype` (`id`, `user_type`) VALUES
(1, 'client'),
(2, 'manager'),
(3, 'administrator');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD UNIQUE KEY `email_confirm_token` (`email_confirm_token`);

--
-- Индексы таблицы `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
