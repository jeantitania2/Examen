-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Aug 2024 um 18:30
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `examen`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `respuestas_correctas`
--

CREATE TABLE `respuestas_correctas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta_correcta` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `respuestas_correctas`
--

INSERT INTO `respuestas_correctas` (`id`, `pregunta`, `respuesta_correcta`) VALUES
(1, 'pregunta1', 'C'),
(2, 'pregunta2', 'C'),
(3, 'pregunta3', 'A'),
(4, 'pregunta4', 'A'),
(5, 'pregunta5', 'B');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta_usuario` varchar(1) NOT NULL,
  `respuesta_correcta` varchar(1) NOT NULL,
  `resultado` varchar(10) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `resultados`
--

INSERT INTO `resultados` (`id`, `nombre`, `pregunta`, `respuesta_usuario`, `respuesta_correcta`, `resultado`, `fecha`) VALUES
(1, '', 'pregunta1', 'B', 'C', 'Incorrecto', '2024-08-07 17:00:18'),
(2, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-07 17:00:18'),
(3, '', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-07 17:00:18'),
(4, '', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-07 17:00:18'),
(5, '', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-07 17:00:18'),
(6, '', 'pregunta1', 'C', 'C', 'Correcto', '2024-08-07 17:01:56'),
(7, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-07 17:01:56'),
(8, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-07 17:01:56'),
(9, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-07 17:01:56'),
(10, '', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-07 17:01:56'),
(11, '', 'pregunta1', 'C', 'C', 'Correcto', '2024-08-07 18:38:31'),
(12, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-07 18:38:31'),
(13, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-07 18:38:31'),
(14, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-07 18:38:31'),
(15, '', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-07 18:38:31'),
(16, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-08 16:31:46'),
(17, '', 'pregunta2', 'A', 'C', 'Incorrecto', '2024-08-08 16:31:47'),
(18, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-08 16:31:47'),
(19, '', 'pregunta4', 'B', 'A', 'Incorrecto', '2024-08-08 16:31:47'),
(20, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-08 16:31:47'),
(21, '', 'pregunta1', 'B', 'C', 'Incorrecto', '2024-08-09 14:12:27'),
(22, '', 'pregunta2', 'B', 'C', 'Incorrecto', '2024-08-09 14:12:27'),
(23, '', 'pregunta3', 'B', 'A', 'Incorrecto', '2024-08-09 14:12:27'),
(24, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 14:12:27'),
(25, '', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-09 14:12:27'),
(26, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 14:22:51'),
(27, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 14:22:51'),
(28, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 14:22:51'),
(29, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 14:22:51'),
(30, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 14:22:52'),
(31, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 14:24:02'),
(32, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 14:24:02'),
(33, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 14:24:02'),
(34, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 14:24:02'),
(35, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 14:24:02'),
(36, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 14:39:34'),
(37, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 14:39:34'),
(38, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 14:39:34'),
(39, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 14:39:34'),
(40, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 14:39:34'),
(41, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 14:40:49'),
(42, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 14:40:49'),
(43, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 14:40:49'),
(44, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 14:40:49'),
(45, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 14:40:49'),
(46, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:02:54'),
(47, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:02:54'),
(48, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:02:54'),
(49, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:02:54'),
(50, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:02:54'),
(51, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:03:21'),
(52, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:03:21'),
(53, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:03:22'),
(54, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:03:22'),
(55, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:03:22'),
(56, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:04:03'),
(57, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:04:03'),
(58, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:04:03'),
(59, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:04:04'),
(60, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:04:04'),
(61, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:07:58'),
(62, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:07:58'),
(63, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:07:58'),
(64, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:07:58'),
(65, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:07:58'),
(66, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:10:45'),
(67, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:10:45'),
(68, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:10:45'),
(69, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:10:45'),
(70, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:10:45'),
(71, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:12:58'),
(72, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:12:59'),
(73, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:12:59'),
(74, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:12:59'),
(75, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:12:59'),
(76, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:13:19'),
(77, '', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 15:13:19'),
(78, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:13:19'),
(79, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:13:19'),
(80, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:13:19'),
(81, '', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 15:13:48'),
(82, '', 'pregunta2', 'A', 'C', 'Incorrecto', '2024-08-09 15:13:48'),
(83, '', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 15:13:48'),
(84, '', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 15:13:48'),
(85, '', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 15:13:48'),
(86, 'Juan Pablo ', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 16:14:39'),
(87, 'Juan Pablo ', 'pregunta2', 'B', 'C', 'Incorrecto', '2024-08-09 16:14:39'),
(88, 'Juan Pablo ', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-09 16:14:39'),
(89, 'Juan Pablo ', 'pregunta4', 'D', 'A', 'Incorrecto', '2024-08-09 16:14:39'),
(90, 'Juan Pablo ', 'pregunta5', 'A', 'B', 'Incorrecto', '2024-08-09 16:14:39'),
(91, 'Carlos Urrutia', 'pregunta1', 'C', 'C', 'Correcto', '2024-08-09 16:31:57'),
(92, 'Carlos Urrutia', 'pregunta2', 'A', 'C', 'Incorrecto', '2024-08-09 16:31:57'),
(93, 'Carlos Urrutia', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-09 16:31:57'),
(94, 'Carlos Urrutia', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-09 16:31:57'),
(95, 'Carlos Urrutia', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-09 16:31:57'),
(96, 'Jose', 'pregunta1', 'B', 'C', 'Incorrecto', '2024-08-09 16:39:26'),
(97, 'Jose', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-09 16:39:27'),
(98, 'Jose', 'pregunta3', 'B', 'A', 'Incorrecto', '2024-08-09 16:39:27'),
(99, 'Jose', 'pregunta4', 'B', 'A', 'Incorrecto', '2024-08-09 16:39:27'),
(100, 'Jose', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-09 16:39:27'),
(101, 'jorge', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-09 16:41:51'),
(102, 'jorge', 'pregunta2', 'D', 'C', 'Incorrecto', '2024-08-09 16:41:51'),
(103, 'jorge', 'pregunta3', 'B', 'A', 'Incorrecto', '2024-08-09 16:41:51'),
(104, 'jorge', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-09 16:41:51'),
(105, 'jorge', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-09 16:41:51'),
(106, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 14:34:02'),
(107, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 14:34:02'),
(108, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 14:34:02'),
(109, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 14:34:02'),
(110, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 14:34:02'),
(111, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 14:38:08'),
(112, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 14:38:08'),
(113, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 14:38:08'),
(114, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 14:38:08'),
(115, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 14:38:08'),
(116, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 14:43:51'),
(117, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 14:43:51'),
(118, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 14:43:51'),
(119, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 14:43:51'),
(120, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 14:43:51'),
(121, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 15:17:10'),
(122, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 15:17:10'),
(123, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 15:17:10'),
(124, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 15:17:10'),
(125, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 15:17:10'),
(126, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 15:23:07'),
(127, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 15:23:07'),
(128, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 15:23:07'),
(129, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 15:23:07'),
(130, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 15:23:07'),
(131, 'Carlos', 'pregunta1', 'A', 'C', 'Incorrecto', '2024-08-13 15:23:13'),
(132, 'Carlos', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 15:23:13'),
(133, 'Carlos', 'pregunta3', 'C', 'A', 'Incorrecto', '2024-08-13 15:23:13'),
(134, 'Carlos', 'pregunta4', 'C', 'A', 'Incorrecto', '2024-08-13 15:23:13'),
(135, 'Carlos', 'pregunta5', 'C', 'B', 'Incorrecto', '2024-08-13 15:23:13'),
(136, 'Luis Beltran', 'pregunta1', 'C', 'C', 'Correcto', '2024-08-13 15:29:37'),
(137, 'Luis Beltran', 'pregunta2', 'B', 'C', 'Incorrecto', '2024-08-13 15:29:37'),
(138, 'Luis Beltran', 'pregunta3', 'B', 'A', 'Incorrecto', '2024-08-13 15:29:37'),
(139, 'Luis Beltran', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-13 15:29:37'),
(140, 'Luis Beltran', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-13 15:29:37'),
(141, 'Juan Pablo Camacho', 'pregunta1', 'C', 'C', 'Correcto', '2024-08-13 16:19:56'),
(142, 'Juan Pablo Camacho', 'pregunta2', 'C', 'C', 'Correcto', '2024-08-13 16:19:56'),
(143, 'Juan Pablo Camacho', 'pregunta3', 'A', 'A', 'Correcto', '2024-08-13 16:19:56'),
(144, 'Juan Pablo Camacho', 'pregunta4', 'A', 'A', 'Correcto', '2024-08-13 16:19:56'),
(145, 'Juan Pablo Camacho', 'pregunta5', 'B', 'B', 'Correcto', '2024-08-13 16:19:56');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `respuestas_correctas`
--
ALTER TABLE `respuestas_correctas`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `respuestas_correctas`
--
ALTER TABLE `respuestas_correctas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
