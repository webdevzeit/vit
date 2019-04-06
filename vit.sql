-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 06 2019 г., 21:09
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Самара', '8', '2019-04-06 07:46:01', '2019-04-06 07:46:01'),
(2, 'Астрахань', '9', '2019-04-06 07:47:02', '2019-04-06 07:47:02'),
(3, 'Санкт-Петербург', '3', '2019-04-06 08:03:00', '2019-04-06 08:03:00'),
(4, 'Уфа', '7', '2019-04-06 08:03:18', '2019-04-06 08:03:18'),
(5, 'Нижний Новгород', '5', '2019-04-06 08:03:30', '2019-04-06 08:03:30'),
(6, 'Владимир', '4', '2019-04-06 08:03:41', '2019-04-06 08:03:41'),
(7, 'Кострома', '4', '2019-04-06 08:03:48', '2019-04-06 08:03:48'),
(8, 'Екатеринбург', '7', '2019-04-06 08:03:56', '2019-04-06 08:03:56'),
(9, 'Ковров', '5', '2019-04-06 08:04:04', '2019-04-06 08:04:04'),
(10, 'Воронеж', '5', '2019-04-06 08:04:11', '2019-04-06 08:04:11');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_05_153535_trips_table', 1),
(4, '2019_04_05_153619_countries_table', 1),
(5, '2019_04_05_153703_couriers_table', 1),
(7, '2019_04_06_101722_personal', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personals`
--

CREATE TABLE `personals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personals`
--

INSERT INTO `personals` (`id`, `fio`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Котов Алексей Васильевич', 'Свободен', '2019-04-06 06:42:26', '2019-04-06 06:42:26'),
(2, 'Васильев Игнат Петрович', 'Свободен', '2019-04-06 07:58:21', '2019-04-06 07:58:21'),
(3, 'Пушкин Евгений Александрович', 'Свободен', '2019-04-06 07:59:18', '2019-04-06 07:59:18'),
(4, 'Безруков Леонид Васильевич', 'Свободен', '2019-04-06 07:59:39', '2019-04-06 07:59:39'),
(5, 'Евгеньев Алексей Сергеевич', 'Свободен', '2019-04-06 08:00:02', '2019-04-06 08:00:02'),
(6, 'Агутин Сергей Викторович', 'Свободен', '2019-04-06 08:00:23', '2019-04-06 08:00:23'),
(7, 'Данилов Алексей Эдуардович', 'Свободен', '2019-04-06 08:00:59', '2019-04-06 08:00:59'),
(8, 'Лесных Илья Викторович', 'Свободен', '2019-04-06 08:01:11', '2019-04-06 08:01:11'),
(9, 'Петров Роман Игнатьевич', 'Свободен', '2019-04-06 08:01:30', '2019-04-06 08:01:30'),
(10, 'Жгутов Эдуард Романович', 'Свободен', '2019-04-06 08:02:04', '2019-04-06 08:02:04');

-- --------------------------------------------------------

--
-- Структура таблицы `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trips`
--

INSERT INTO `trips` (`id`, `country`, `personal`, `date_out`, `date_in`, `created_at`, `updated_at`) VALUES
(1, 'Самара', 'Котов Алексей Васильевич', '2018-03-06', '2018-03-14', '2019-04-06 10:04:15', '2019-04-06 10:04:15'),
(2, 'Самара', 'Котов Алексей Васильевич', '2018-04-09', '2018-04-17', '2019-04-06 10:13:19', '2019-04-06 10:13:19'),
(3, 'Астрахань', 'Котов Алексей Васильевич', '2018-05-09', '2018-05-18', '2019-04-06 10:13:46', '2019-04-06 10:13:46'),
(4, 'Самара', 'Котов Алексей Васильевич', '2018-06-13', '2018-06-21', '2019-04-06 10:14:09', '2019-04-06 10:14:09'),
(5, 'Самара', 'Котов Алексей Васильевич', '2018-08-02', '2018-08-10', '2019-04-06 10:14:40', '2019-04-06 10:14:40'),
(6, 'Уфа', 'Котов Алексей Васильевич', '2018-09-12', '2018-09-19', '2019-04-06 10:15:12', '2019-04-06 10:15:12'),
(7, 'Самара', 'Котов Алексей Васильевич', '2018-10-06', '2018-10-14', '2019-04-06 10:16:36', '2019-04-06 10:16:36'),
(8, 'Астрахань', 'Котов Алексей Васильевич', '2018-11-16', '2018-11-25', '2019-04-06 10:17:04', '2019-04-06 10:17:04'),
(9, 'Самара', 'Котов Алексей Васильевич', '2018-12-15', '2018-12-23', '2019-04-06 10:17:30', '2019-04-06 10:17:30'),
(10, 'Астрахань', 'Котов Алексей Васильевич', '2019-01-04', '2019-01-13', '2019-04-06 10:17:57', '2019-04-06 10:17:57'),
(11, 'Самара', 'Котов Алексей Васильевич', '2019-02-15', '2019-02-23', '2019-04-06 10:18:16', '2019-04-06 10:18:16'),
(12, 'Астрахань', 'Котов Алексей Васильевич', '2019-04-12', '2019-04-21', '2019-04-06 10:18:46', '2019-04-06 10:18:46'),
(13, 'Астрахань', 'Васильев Игнат Петрович', '2019-04-08', '2019-04-17', '2019-04-06 13:04:15', '2019-04-06 13:04:15'),
(14, 'Санкт-Петербург', 'Васильев Игнат Петрович', '2019-04-30', '2019-05-03', '2019-04-06 13:04:31', '2019-04-06 13:04:31'),
(15, 'Уфа', 'Пушкин Евгений Александрович', '2019-04-11', '2019-04-18', '2019-04-06 13:06:09', '2019-04-06 13:06:09'),
(16, 'Нижний Новгород', 'Пушкин Евгений Александрович', '2019-04-28', '2019-05-03', '2019-04-06 13:06:22', '2019-04-06 13:06:22'),
(17, 'Екатеринбург', 'Безруков Леонид Васильевич', '2019-04-16', '2019-04-23', '2019-04-06 13:06:39', '2019-04-06 13:06:39'),
(18, 'Кострома', 'Безруков Леонид Васильевич', '2019-04-28', '2019-05-02', '2019-04-06 13:06:51', '2019-04-06 13:06:51'),
(19, 'Ковров', 'Евгеньев Алексей Сергеевич', '2019-04-08', '2019-04-13', '2019-04-06 13:07:06', '2019-04-06 13:07:06'),
(20, 'Воронеж', 'Евгеньев Алексей Сергеевич', '2019-04-19', '2019-04-24', '2019-04-06 13:07:20', '2019-04-06 13:07:20'),
(21, 'Нижний Новгород', 'Агутин Сергей Викторович', '2019-04-03', '2019-04-08', '2019-04-06 13:07:34', '2019-04-06 13:07:34'),
(22, 'Кострома', 'Агутин Сергей Викторович', '2019-04-25', '2019-04-29', '2019-04-06 13:07:44', '2019-04-06 13:07:44'),
(23, 'Владимир', 'Данилов Алексей Эдуардович', '2019-04-08', '2019-04-12', '2019-04-06 13:07:54', '2019-04-06 13:07:54'),
(24, 'Екатеринбург', 'Данилов Алексей Эдуардович', '2019-04-30', '2019-05-07', '2019-04-06 13:08:10', '2019-04-06 13:08:10'),
(25, 'Кострома', 'Васильев Игнат Петрович', '2018-05-15', '2018-05-19', '2019-04-06 13:10:08', '2019-04-06 13:10:08'),
(26, 'Екатеринбург', 'Васильев Игнат Петрович', '2018-05-25', '2018-06-01', '2019-04-06 13:12:21', '2019-04-06 13:12:21'),
(27, 'Санкт-Петербург', 'Васильев Игнат Петрович', '2018-06-15', '2018-06-18', '2019-04-06 13:12:42', '2019-04-06 13:12:42'),
(28, 'Владимир', 'Васильев Игнат Петрович', '2019-07-18', '2019-07-22', '2019-04-06 13:13:04', '2019-04-06 13:13:04'),
(29, 'Уфа', 'Васильев Игнат Петрович', '2018-09-22', '2018-09-29', '2019-04-06 13:13:23', '2019-04-06 13:13:23'),
(30, 'Ковров', 'Васильев Игнат Петрович', '2018-10-21', '2018-10-26', '2019-04-06 13:13:55', '2019-04-06 13:13:55');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personals`
--
ALTER TABLE `personals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
