-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 27 2025 г., 01:54
-- Версия сервера: 8.0.41-32
-- Версия PHP: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spokshivan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `subtopics`
--

CREATE TABLE `subtopics` (
  `id` int NOT NULL,
  `topic_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `subtopics`
--

INSERT INTO `subtopics` (`id`, `topic_id`, `name`, `text`) VALUES
(1, 1, 'Подтема 1.1', 'Текст подтемы 1.1 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!'),
(2, 2, 'Подтема 2.1', 'Текст подтемы 2.1 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!'),
(3, 1, 'Подтема 1.2', 'Текст подтемы 1.2 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!'),
(4, 2, 'Подтема 2.2', 'Текст подтемы 2.2 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!'),
(5, 1, 'Подтема 1.3', 'Текст подтемы 1.3 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!'),
(6, 2, 'Подтема 2.3', 'Тeкст подтемы 2.3 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, perspiciatis tempore. Veniam nobis sapiente, modi commodi, fugit, nulla iusto cum ullam laudantium ad atque magnam soluta reiciendis deserunt neque quaerat!');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`) VALUES
(1, 'Первая тема'),
(2, 'Вторая тема');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `subtopics`
--
ALTER TABLE `subtopics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `subtopics`
--
ALTER TABLE `subtopics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `subtopics`
--
ALTER TABLE `subtopics`
  ADD CONSTRAINT `subtopics_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
