-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 29 2018 г., 17:32
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ps-db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-28 18:00:00', '2018-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `incidents`
--

CREATE TABLE `incidents` (
  `id` int(10) UNSIGNED NOT NULL,
  `operator_id` int(11) NOT NULL,
  `police_id` int(11) NOT NULL,
  `degree_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `incident_degrees`
--

CREATE TABLE `incident_degrees` (
  `id` int(10) UNSIGNED NOT NULL,
  `degree` int(11) NOT NULL,
  `degree_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `incident_degrees`
--

INSERT INTO `incident_degrees` (`id`, `degree`, `degree_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'First degree incident', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(2, 2, 'Second degree incident', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(3, 3, 'Third degree incident', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(4, 4, 'Fourth degree incident', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(5, 5, 'Fifth degree incident', '2018-10-28 18:00:00', '2018-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_10_28_153917_create_users_type_table', 1),
(6, '2018_10_29_153658_create_police_users_table', 2),
(7, '2018_10_29_153758_create_operator_users_table', 2),
(8, '2018_10_29_153813_create_admin_users_table', 2),
(9, '2018_10_29_153849_create_incidents_table', 2),
(10, '2018_10_29_155232_create_statuses_table', 2),
(11, '2018_10_29_155246_create_incident_degrees_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `operator_users`
--

CREATE TABLE `operator_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `operator_users`
--

INSERT INTO `operator_users` (`id`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2018-10-28 18:00:00', '2018-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `police_users`
--

CREATE TABLE `police_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `police_users`
--

INSERT INTO `police_users` (`id`, `user_id`, `status_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'none', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(2, 4, 1, 'none', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(3, 5, 1, 'none', '2018-10-28 18:00:00', '2018-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Offline', '2018-10-28 18:00:00', '2018-10-28 18:00:00'),
(2, 'Online', '2018-10-28 18:00:00', '2018-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `type_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin Adminov', 'admin@pcs.kz', '$2y$10$uk9HIPhppXdE9LVYB88ZB.pv0F0QUOh0ZYBJdeF7K3VvX9Jxpcv6i', '8E463IfPvHVI7Ns4NmIphug4dLMwjr8FMuAwXFQnxwoUc7bKBIzenTguX16A', '2018-10-28 11:12:40', '2018-10-28 11:12:40'),
(2, 2, 'Operator Operatorova', 'operator@pcs.kz', '$2y$10$XPe8VwmQxtJHWktidp1MveE4SLx.SoBs0jsvPWjldfmTY34jLbKPq', 'ewFPpAM1ONJuF5NG9R3yPzha0NX7hILMrpEfph2OkMATph83oeXP8KNyYs1J', '2018-10-29 10:15:19', '2018-10-29 10:15:19'),
(3, 3, 'Aituar Atabekov', 'police1@pcs.kz', '$2y$10$K/3x0jnNsaD/xSJl7NQ9KuyilGorqcX0uoErP4vnptvj3I0gTZAJy', 'XOa6f5BpDuW06cj3kB2hj43H05BRfcbBLqcC07xakT5CDY1jIYkfUTV6hlKQ', '2018-10-29 10:16:01', '2018-10-29 10:16:01'),
(4, 3, 'Dinara Yergazy', 'police2@pcs.kz', '$2y$10$ZR8qTyxP86sCYi.W6ZF1vOwyuOpafLwxmXjsz0b9gohc.KiMi3P7q', '4LM1825HjKH1ZeCXsdFEAq51b4u6r87HrQrcoYOGZosmenYitLREfaOsMXQF', '2018-10-29 10:17:11', '2018-10-29 10:17:11'),
(5, 3, 'Batyrkhan Shakenov', 'police3@pcs.kz', '$2y$10$zD8VESIqsHCkcyCuUMCrtusaqJSWz8ErvN9qrtFRiM/5H8lvmjevK', 'r7NPkZ8c8snXEp0CjcoQC9k74xQrXNcnvHr3WBQCY4KHBvfppxNMtq3x1bR4', '2018-10-29 10:19:00', '2018-10-29 10:19:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users_type`
--

CREATE TABLE `users_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_type`
--

INSERT INTO `users_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-27 18:00:00', '2018-10-27 18:00:00'),
(2, 'operator', '2018-10-27 18:00:00', '2018-10-27 18:00:00'),
(3, 'police', '2018-10-27 18:00:00', '2018-10-27 18:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `incident_degrees`
--
ALTER TABLE `incident_degrees`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operator_users`
--
ALTER TABLE `operator_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `police_users`
--
ALTER TABLE `police_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `incidents`
--
ALTER TABLE `incidents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `incident_degrees`
--
ALTER TABLE `incident_degrees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `operator_users`
--
ALTER TABLE `operator_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `police_users`
--
ALTER TABLE `police_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
