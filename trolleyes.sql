-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-01-2020 a las 23:58:16
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trolleyes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `cantidad`, `factura_id`, `producto_id`) VALUES
(1, 26, 24, 15),
(2, 5, 8, 6),
(3, 46, 16, 1),
(4, 27, 1, 20),
(5, 48, 13, 10),
(6, 16, 7, 22),
(7, 27, 1, 18),
(8, 16, 9, 9),
(9, 47, 10, 20),
(10, 49, 13, 9),
(11, 13, 5, 12),
(12, 9, 18, 16),
(13, 15, 25, 13),
(14, 41, 5, 3),
(15, 1, 2, 5),
(16, 7, 23, 8),
(17, 29, 13, 21),
(18, 2, 6, 16),
(19, 14, 12, 12),
(20, 12, 20, 23),
(21, 9, 24, 17),
(22, 27, 3, 15),
(23, 47, 12, 22),
(24, 35, 12, 5),
(25, 4, 22, 19),
(26, 44, 19, 21),
(27, 14, 18, 25),
(28, 32, 23, 5),
(29, 20, 18, 25),
(30, 25, 4, 21),
(31, 18, 13, 13),
(32, 25, 21, 25),
(33, 23, 21, 9),
(34, 31, 8, 18),
(35, 18, 17, 14),
(36, 41, 12, 9),
(37, 25, 8, 4),
(38, 7, 7, 19),
(39, 31, 14, 2),
(40, 49, 4, 24),
(41, 46, 15, 10),
(42, 33, 8, 8),
(43, 39, 9, 18),
(44, 11, 25, 4),
(45, 48, 19, 25),
(46, 29, 6, 9),
(47, 24, 22, 3),
(48, 38, 10, 13),
(49, 32, 23, 18),
(50, 40, 3, 10),
(51, 22, 17, 7),
(52, 6, 14, 25),
(53, 34, 19, 23),
(54, 31, 16, 12),
(55, 23, 14, 17),
(56, 7, 19, 10),
(57, 24, 4, 9),
(58, 22, 24, 9),
(59, 14, 13, 8),
(60, 20, 1, 4),
(61, 16, 5, 18),
(62, 23, 12, 17),
(63, 38, 23, 25),
(64, 28, 14, 22),
(65, 38, 13, 23),
(66, 17, 16, 3),
(67, 5, 19, 18),
(68, 27, 12, 6),
(69, 30, 17, 15),
(70, 11, 12, 9),
(71, 10, 3, 11),
(72, 20, 11, 6),
(73, 34, 9, 18),
(74, 12, 7, 8),
(75, 37, 2, 16),
(76, 16, 20, 7),
(77, 46, 25, 16),
(78, 49, 12, 25),
(79, 37, 5, 9),
(80, 43, 19, 19),
(81, 37, 1, 21),
(82, 15, 6, 25),
(83, 23, 21, 4),
(84, 42, 4, 12),
(85, 36, 18, 3),
(86, 25, 17, 10),
(87, 44, 23, 19),
(88, 20, 2, 23),
(89, 24, 7, 14),
(90, 17, 6, 11),
(91, 10, 14, 21),
(92, 6, 5, 15),
(93, 25, 7, 15),
(94, 40, 8, 6),
(95, 5, 8, 15),
(96, 21, 14, 2),
(97, 17, 20, 19),
(98, 1, 19, 8),
(99, 10, 5, 15),
(100, 46, 4, 9),
(101, 24, 10, 25),
(102, 34, 7, 17),
(103, 20, 15, 4),
(104, 23, 23, 22),
(105, 20, 1, 2),
(106, 30, 18, 16),
(107, 38, 18, 17),
(108, 49, 16, 4),
(109, 14, 22, 21),
(110, 38, 15, 15),
(111, 25, 1, 7),
(112, 17, 17, 20),
(113, 21, 5, 3),
(114, 10, 25, 16),
(115, 28, 18, 9),
(116, 37, 5, 24),
(117, 2, 20, 24),
(118, 10, 25, 4),
(119, 44, 16, 15),
(120, 14, 19, 16),
(121, 14, 13, 2),
(122, 3, 18, 6),
(123, 17, 15, 20),
(124, 31, 19, 16),
(125, 48, 12, 13),
(126, 32, 18, 15),
(127, 16, 2, 20),
(128, 34, 19, 11),
(129, 37, 23, 25),
(130, 39, 7, 14),
(131, 11, 22, 25),
(132, 34, 20, 7),
(133, 6, 20, 2),
(134, 44, 12, 1),
(135, 22, 5, 13),
(136, 38, 3, 10),
(137, 25, 15, 7),
(138, 22, 23, 23),
(139, 2, 3, 20),
(140, 3, 23, 7),
(141, 49, 6, 25),
(142, 13, 3, 17),
(143, 38, 17, 6),
(144, 9, 15, 1),
(145, 20, 18, 2),
(146, 37, 2, 16),
(147, 3, 7, 15),
(148, 41, 16, 24),
(149, 11, 13, 11),
(150, 39, 9, 15),
(151, 27, 1, 2),
(152, 22, 4, 1),
(153, 25, 4, 17),
(154, 2, 22, 7),
(155, 10, 18, 20),
(156, 41, 6, 12),
(157, 20, 11, 22),
(158, 30, 21, 19),
(159, 16, 25, 15),
(160, 41, 13, 21),
(161, 36, 24, 7),
(162, 29, 7, 12),
(163, 38, 25, 25),
(164, 29, 1, 2),
(165, 43, 10, 24),
(166, 9, 11, 4),
(167, 43, 17, 19),
(168, 44, 5, 4),
(169, 31, 21, 13),
(170, 23, 7, 11),
(171, 6, 24, 6),
(172, 48, 9, 16),
(173, 2, 8, 14),
(174, 18, 4, 2),
(175, 20, 11, 15),
(176, 44, 23, 19),
(177, 49, 5, 20),
(178, 2, 21, 15),
(179, 30, 11, 16),
(180, 17, 1, 12),
(181, 16, 25, 1),
(182, 15, 23, 20),
(183, 31, 3, 18),
(184, 37, 23, 3),
(185, 11, 11, 2),
(186, 40, 3, 25),
(187, 15, 22, 12),
(188, 43, 18, 19),
(189, 15, 15, 18),
(190, 29, 8, 1),
(191, 16, 8, 16),
(192, 23, 15, 18),
(193, 22, 15, 21),
(194, 10, 17, 14),
(195, 34, 25, 13),
(196, 27, 15, 25),
(197, 7, 25, 6),
(198, 24, 18, 3),
(199, 26, 5, 13),
(200, 37, 22, 10),
(210, 1, 110, 1),
(211, 1, 110, 4),
(212, 1, 110, 8),
(213, 1, 110, 9),
(214, 1, 111, 4),
(215, 1, 111, 8),
(216, 1, 111, 9),
(217, 1, 111, 10),
(218, 1, 111, 12),
(219, 1, 111, 6),
(220, 2, 111, 5),
(221, 4, 112, 93),
(222, 6, 112, 86),
(223, 4, 112, 90),
(224, 4, 112, 96),
(225, 2, 113, 97),
(226, 2, 113, 94),
(227, 1, 113, 93),
(228, 1, 113, 95),
(229, 1, 113, 96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `iva` int(3) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `fecha`, `iva`, `usuario_id`) VALUES
(1, '2019-01-15', 21, 18),
(2, '2019-04-02', 21, 21),
(3, '2019-05-01', 21, 22),
(4, '2017-07-18', 21, 17),
(5, '2016-07-03', 21, 4),
(6, '2017-10-02', 21, 9),
(7, '2015-04-21', 21, 13),
(8, '2016-08-04', 21, 7),
(9, '2017-07-03', 21, 9),
(10, '2017-02-08', 21, 17),
(11, '2019-10-28', 21, 14),
(12, '2015-07-06', 21, 17),
(13, '2019-06-20', 21, 17),
(14, '2016-02-01', 21, 19),
(15, '2018-03-04', 21, 9),
(16, '2017-01-01', 21, 25),
(17, '2016-04-21', 21, 15),
(18, '2018-07-31', 21, 24),
(19, '2016-10-12', 21, 19),
(20, '2018-08-19', 21, 7),
(21, '2019-01-09', 21, 16),
(22, '2015-04-20', 21, 17),
(23, '2015-07-01', 21, 16),
(24, '2018-09-19', 21, 7),
(25, '2018-04-11', 21, 18),
(26, '2017-10-02', 21, 16),
(27, '2019-01-06', 21, 4),
(28, '2016-05-15', 21, 11),
(29, '2018-06-25', 21, 12),
(30, '2019-07-04', 21, 13),
(31, '2019-01-28', 21, 15),
(32, '2016-12-27', 21, 14),
(33, '2014-07-05', 21, 22),
(34, '2016-08-29', 21, 11),
(35, '2014-10-09', 21, 8),
(36, '2016-06-19', 21, 23),
(37, '2017-06-11', 21, 25),
(38, '2019-09-01', 21, 18),
(39, '2016-08-27', 21, 3),
(40, '2019-01-05', 21, 8),
(41, '2018-04-07', 21, 20),
(42, '2015-06-27', 21, 7),
(43, '2016-11-02', 21, 19),
(44, '2014-07-19', 21, 10),
(45, '2019-09-06', 21, 16),
(46, '2016-01-14', 21, 23),
(47, '2014-04-10', 21, 3),
(48, '2015-09-01', 21, 8),
(49, '2018-04-05', 21, 26),
(50, '2014-04-30', 21, 11),
(51, '2018-07-22', 21, 21),
(52, '2019-10-06', 21, 2),
(53, '2017-05-26', 21, 12),
(54, '2018-11-21', 21, 3),
(55, '2016-01-31', 21, 5),
(56, '2014-09-21', 21, 15),
(57, '2014-12-13', 21, 18),
(58, '2016-11-19', 21, 14),
(59, '2019-03-09', 21, 23),
(60, '2015-12-30', 21, 14),
(61, '2016-06-13', 21, 4),
(62, '2014-07-07', 21, 23),
(63, '2016-05-16', 21, 22),
(64, '2014-02-24', 21, 6),
(65, '2019-11-11', 21, 15),
(66, '2017-01-24', 21, 10),
(67, '2017-01-03', 21, 10),
(68, '2019-04-15', 21, 14),
(69, '2017-01-27', 21, 6),
(70, '2018-04-18', 21, 4),
(71, '2014-01-31', 21, 5),
(72, '2018-06-12', 21, 12),
(73, '2018-04-11', 21, 12),
(74, '2018-03-19', 21, 12),
(75, '2014-05-16', 21, 9),
(76, '2017-02-23', 21, 10),
(77, '2016-10-15', 21, 13),
(78, '2014-09-08', 21, 25),
(79, '2017-10-19', 21, 7),
(80, '2019-08-06', 21, 9),
(81, '2019-10-16', 21, 6),
(82, '2014-04-16', 21, 2),
(83, '2019-01-04', 21, 24),
(84, '2019-11-23', 21, 14),
(85, '2017-12-21', 21, 22),
(86, '2016-02-27', 21, 13),
(87, '2017-05-17', 21, 23),
(88, '2018-12-08', 21, 5),
(89, '2018-11-28', 21, 22),
(90, '2018-10-20', 21, 4),
(91, '2014-09-26', 21, 12),
(92, '2014-05-03', 21, 11),
(93, '2014-01-15', 21, 6),
(94, '2017-02-25', 21, 12),
(95, '2019-01-17', 21, 3),
(96, '2016-11-17', 21, 5),
(97, '2018-11-01', 21, 5),
(98, '2019-12-26', 21, 3),
(99, '2018-06-11', 21, 6),
(100, '2014-10-06', 21, 25),
(110, '2019-12-17', 21, 2),
(111, '2019-12-17', 21, 153),
(112, '2019-12-27', 21, 153),
(113, '2020-01-07', 21, 176);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `existencias` int(10) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipo_producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `existencias`, `precio`, `imagen`, `descripcion`, `tipo_producto_id`) VALUES
(1, '356677', 243, '2.33', '51zEzMWs2ML._AC_UL200_SR200,200_.jpg', 'Bebida de manzana. ', 6),
(4, '996033', 725, '9.04', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Móvil de dientes. ', 5),
(5, '150184', 946, '9.52', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Bebida de dientes. ', 11),
(6, '994719', 758, '3.48', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Interruptor para atascar.', 5),
(8, '761684', 468, '6.78', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Libro de manzana. ', 2),
(9, '254864', 481, '2.57', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Interruptor para manzana. ', 4),
(10, '881463', 908, '2.77', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Bebida de reciclaje.', 2),
(12, '185193', 109, '57.00', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Maquina de manzana. ', 12),
(13, '359363', 251, '2.29', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Maquina de manzana. ', 1),
(15, '988402', 124, '2.78', '61GEYy8+oZL._AC_UL200_SR200,200_.jpg', 'Aparato para dientes. ', 6),
(17, '553908', 145, '7.85', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Cámara para ciencia.', 10),
(18, '333942', 576, '4.52', '61fzPgcBEJL._AC_UL200_SR200,200_.jpg', 'Interruptor para dientes. ', 8),
(19, '681465', 521, '4.26', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Móvil de manzana. ', 11),
(20, '742453', 497, '4.38', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Maquina de manzana. ', 11),
(21, '826733', 601, '8.19', '91fXXkecNIL._AC_UL200_SR200,200_.jpg', 'Maquina de emparejar. ', 10),
(22, '325130', 231, '9.43', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Aparato para montar tubos. ', 4),
(23, '375614', 355, '1.32', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Bebida de reciclaje.', 11),
(24, '223699', 649, '84.00', '71JItuXbFxL._AC_UL200_SR200,200_.jpg', 'Libro de emparejar. ', 10),
(25, '406263', 924, '5.37', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Libro de atascar.', 7),
(26, '937548', 29, '8.77', '91fXXkecNIL._AC_UL200_SR200,200_.jpg', 'Bebida de manzana. ', 6),
(27, '491709', 803, '6.65', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Cámara para emparejar. ', 6),
(28, '909356', 911, '4.54', '71Ytf3okj+L._AC_UL200_SR200,200_.jpg', 'Cámara para reciclaje.', 11),
(29, '932715', 936, '8.36', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Interruptor para atascar.', 2),
(30, '651690', 558, '65.00', '51zEzMWs2ML._AC_UL200_SR200,200_.jpg', 'Libro de reciclaje.', 10),
(31, '905492', 167, '1.92', '61fzPgcBEJL._AC_UL200_SR200,200_.jpg', 'Cámara para ciencia.', 10),
(32, '286153', 869, '6.69', '91fXXkecNIL._AC_UL200_SR200,200_.jpg', 'Móvil de ciencia.', 10),
(33, '313796', 191, '3.16', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Aparato para atascar.', 12),
(34, '689146', 74, '6.64', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Libro de dientes. ', 12),
(36, '335568', 144, '7.78', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Móvil de reciclaje.', 11),
(37, '568255', 816, '1.96', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Libro de reciclaje.', 12),
(38, '398967', 699, '6.08', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Móvil de emparejar. ', 5),
(39, '747440', 113, '2.68', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Aparato para montar tubos. ', 6),
(41, '788369', 813, '2.24', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Móvil de emparejar. ', 11),
(42, '624582', 937, '4.12', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Libro de montar tubos. ', 4),
(43, '147256', 293, '2.96', '61GEYy8+oZL._AC_UL200_SR200,200_.jpg', 'Maquina de dientes. ', 2),
(44, '927938', 915, '5.98', '71JItuXbFxL._AC_UL200_SR200,200_.jpg', 'Libro de montar tubos. ', 2),
(45, '857719', 12, '4.24', '71JItuXbFxL._AC_UL200_SR200,200_.jpg', 'Aparato para ciencia.', 6),
(46, '184830', 290, '9.84', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Móvil de ciencia.', 9),
(47, '413322', 431, '4.76', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Bebida de dientes. ', 11),
(48, '985561', 816, '9.45', '81SQ2uQm8lL._AC_UL200_SR200,200_.jpg', 'Aparato para montar tubos. ', 2),
(49, '244194', 190, '3.81', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Bebida de ciencia.', 11),
(50, '140037', 281, '2.36', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Bebida de manzana. ', 8),
(51, '851664', 21, '1.12', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Interruptor para manzana. ', 8),
(52, '237153', 15, '32.00', '81SQ2uQm8lL._AC_UL200_SR200,200_.jpg', 'Aparato para emparejar. ', 8),
(53, '149716', 862, '5.93', '61fzPgcBEJL._AC_UL200_SR200,200_.jpg', 'Aparato para dientes. ', 2),
(54, '904632', 282, '2.44', '61w7p56ZZwL._AC_UL200_SR200,200_.jpg', 'Móvil de reciclaje.', 6),
(55, '492557', 426, '5.98', '81SQ2uQm8lL._AC_UL200_SR200,200_.jpg', 'Bebida de emparejar. ', 7),
(56, '653182', 702, '6.07', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Cámara para reciclaje.', 3),
(57, '337982', 32, '3.46', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Bebida de manzana. ', 4),
(58, '111429', 82, '4.76', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Bebida de ciencia.', 11),
(59, '627535', 441, '58.00', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Interruptor para dientes. ', 7),
(60, '926113', 229, '4.61', '51zEzMWs2ML._AC_UL200_SR200,200_.jpg', 'Interruptor para ciencia.', 1),
(62, '629465', 319, '90.00', '71Ytf3okj+L._AC_UL200_SR200,200_.jpg', 'Interruptor para atascar.', 1),
(63, '586880', 152, '3.57', '71JItuXbFxL._AC_UL200_SR200,200_.jpg', 'Bebida de reciclaje.', 10),
(64, '890600', 484, '8.37', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Bebida de montar tubos. ', 10),
(65, '647914', 189, '1.63', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Libro de dientes. ', 9),
(66, '287240', 506, '6.33', '61fzPgcBEJL._AC_UL200_SR200,200_.jpg', 'Aparato para emparejar. ', 12),
(67, '488779', 681, '8.55', '81SQ2uQm8lL._AC_UL200_SR200,200_.jpg', 'Aparato para montar tubos. ', 2),
(68, '239194', 637, '2.42', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Bebida de ciencia.', 3),
(69, '680340', 287, '5.68', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Cámara para ciencia.', 5),
(70, '756153', 582, '5.56', '71Ytf3okj+L._AC_UL200_SR200,200_.jpg', 'Cámara para montar tubos. ', 8),
(71, '517003', 498, '8.81', '91fXXkecNIL._AC_UL200_SR200,200_.jpg', 'Cámara para manzana. ', 6),
(72, '103565', 24, '5.92', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Móvil de manzana. ', 8),
(73, '357429', 549, '7.49', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Bebida de atascar.', 5),
(74, '605164', 661, '8.13', '71JItuXbFxL._AC_UL200_SR200,200_.jpg', 'Libro de manzana. ', 8),
(75, '837779', 468, '65.00', '51kIRBGmYpL._AC_UL200_SR200,200_.jpg', 'Móvil de dientes. ', 8),
(76, '566508', 585, '9.00', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Interruptor para atascar.', 10),
(77, '600818', 801, '73.00', '61w7p56ZZwL._AC_UL200_SR200,200_.jpg', 'Cámara para atascar.', 4),
(78, '346909', 849, '4.77', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Libro de atascar.', 5),
(79, '148477', 523, '3.50', '51kIRBGmYpL._AC_UL200_SR200,200_.jpg', 'Bebida de emparejar. ', 7),
(80, '268283', 879, '2.28', '61fzPgcBEJL._AC_UL200_SR200,200_.jpg', 'Bebida de atascar.', 4),
(81, '984862', 794, '48.00', '51kIRBGmYpL._AC_UL200_SR200,200_.jpg', 'Libro de ciencia.', 3),
(82, '557974', 844, '7.11', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Bebida de reciclaje.', 5),
(83, '960746', 827, '7.43', '51kIRBGmYpL._AC_UL200_SR200,200_.jpg', 'Libro de montar tubos. ', 10),
(84, '972335', 402, '5.66', '71Ytf3okj+L._AC_UL200_SR200,200_.jpg', 'Bebida de montar tubos. ', 1),
(85, '350806', 1, '2.69', '91fXXkecNIL._AC_UL200_SR200,200_.jpg', 'Bebida de atascar.', 2),
(86, '571502', 280, '6.77', '31cOADT0vlL._AC_UL200_SR200,200_.jpg', 'Interruptor para reciclaje.', 11),
(87, '258990', 636, '5.69', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Maquina de dientes. ', 9),
(88, '260046', 589, '5.80', '71Sowz0FgwL._AC_UL200_SR200,200_.jpg', 'Bebida de montar tubos. ', 7),
(90, '408985', 673, '9.17', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Aparato para ciencia.', 4),
(91, '241284', 579, '3.24', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Maquina de ciencia.', 5),
(92, '431834', 682, '68.00', '61TfDYcozuL._AC_UL200_SR200,200_.jpg', 'Aparato para ciencia.', 10),
(93, '985408', 997, '2.31', '71Ytf3okj+L._AC_UL200_SR200,200_.jpg', 'Móvil de reciclaje.', 7),
(94, '439871', 174, '5.41', '61aPU9DBjJL._AC_UL200_SR200,200_.jpg', 'Aparato para ciencia.', 11),
(95, '344385', 968, '9.98', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Interruptor para ciencia.', 2),
(96, '202822', 337, '8.71', '51kIRBGmYpL._AC_UL200_SR200,200_.jpg', 'Cámara para manzana. ', 4),
(97, '343161', 221, '2.74', '81SQ2uQm8lL._AC_UL200_SR200,200_.jpg', 'Interruptor para reciclaje.', 6),
(98, '632516', 227, '1.02', '61BdJrjHYUL._AC_UL200_SR200,200_.jpg', 'Libro de dientes. ', 7),
(99, '476924', 865, '98.00', '71bcYhnBDDL._AC_UL200_SR200,200_.jpg', 'Móvil de reciclaje.', 7),
(100, '995194', 691, '9.72', '61u48FEs0rL._AC_UL200_SR200,200_.jpg', 'Libro de atascar.', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`id`, `descripcion`) VALUES
(1, 'Higiene de la empresa. '),
(2, 'Juguetes para centros educativos. '),
(3, 'Juguetes de la empresa. '),
(4, 'Juguetes del hogar. '),
(5, 'Alimentación para centros educativos. '),
(6, 'Alimentación sanitaria. '),
(7, 'Alimentación de la empresa. '),
(8, 'Electronica sanitaria. '),
(9, 'Higiene de la empresa. '),
(10, 'Alimentación del hogar. '),
(11, 'Higiene para centros educativos. '),
(12, 'Electronica del hogar. '),
(13, 'Electronica de la empresa. '),
(14, 'Higiene de la empresa. '),
(15, 'Alimentación sanitaria. '),
(16, 'Juguetes del hogar. '),
(17, 'Alimentación para centros educativos. '),
(18, 'Alimentación sanitaria. '),
(19, 'Juguetes de la empresa. '),
(20, 'Electronica sanitaria. '),
(21, 'Electronica sanitaria. '),
(22, 'Electronica de la empresa. '),
(23, 'Higiene sanitaria. '),
(24, 'Juguetes del hogar. '),
(25, 'Electronica sanitaria. '),
(26, 'Alimentación para centros educativos. '),
(27, 'Juguetes de la empresa. '),
(28, 'Higiene del hogar. '),
(29, 'Juguetes sanitaria. '),
(30, 'Electronica para centros educativos. '),
(31, 'Higiene del hogar. '),
(32, 'Electronica para centros educativos. '),
(33, 'Electronica para centros educativos. '),
(34, 'Alimentación del hogar. '),
(35, 'Electronica de la empresa. '),
(36, 'Higiene sanitaria. '),
(37, 'Electronica de la empresa. '),
(38, 'Alimentación sanitaria. '),
(39, 'Alimentación del hogar. '),
(40, 'Alimentación de la empresa. '),
(41, 'Higiene para centros educativos. '),
(42, 'Electronica para centros educativos. '),
(43, 'Higiene del hogar. '),
(44, 'Electronica del hogar. '),
(45, 'Alimentación del hogar. '),
(46, 'Electronica sanitaria. '),
(47, 'Alimentación para centros educativos. '),
(48, 'Alimentación sanitaria. '),
(49, 'Juguetes del hogar. '),
(50, 'Alimentación para centros educativos. '),
(51, 'Alimentación sanitaria. '),
(52, 'Higiene de la empresa. '),
(53, 'Electronica del hogar. '),
(54, 'Higiene del hogar. '),
(55, 'Electronica de la empresa. '),
(56, 'Juguetes para centros educativos. '),
(57, 'Electronica de la empresa. '),
(58, 'Electronica del hogar. '),
(59, 'Electronica sanitaria. '),
(60, 'Higiene del hogar. '),
(61, 'Higiene sanitaria. '),
(62, 'Juguetes del hogar. '),
(63, 'Electronica de la empresa. '),
(64, 'Juguetes de la empresa. '),
(65, 'Juguetes de la empresa. '),
(66, 'Juguetes para centros educativos. '),
(67, 'Alimentación de la empresa. '),
(68, 'Juguetes sanitaria. '),
(69, 'Higiene sanitaria. '),
(70, 'Juguetes sanitaria. '),
(71, 'Electronica sanitaria. '),
(72, 'Alimentación de la empresa. '),
(73, 'Higiene sanitaria. '),
(74, 'Juguetes para centros educativos. '),
(75, 'Electronica de la empresa. '),
(76, 'Juguetes sanitaria. '),
(77, 'Alimentación sanitaria. '),
(78, 'Juguetes del hogar. '),
(79, 'Juguetes de la empresa. '),
(80, 'Higiene de la empresa. '),
(81, 'Alimentación para centros educativos. '),
(82, 'Electronica para centros educativos. '),
(83, 'Higiene para centros educativos. '),
(84, 'Juguetes del hogar. '),
(85, 'Alimentación de la empresa. '),
(86, 'Juguetes sanitaria. '),
(87, 'Electronica de la empresa. '),
(88, 'Alimentación para centros educativos. '),
(89, 'Electronica sanitaria. '),
(90, 'Electronica sanitaria. '),
(91, 'Juguetes sanitaria. '),
(92, 'Alimentación sanitaria. '),
(93, 'Alimentación para centros educativos. '),
(94, 'Electronica del hogar. '),
(95, 'Electronica del hogar. '),
(96, 'Juguetes para centros educativos. '),
(97, 'Alimentación de la empresa. '),
(98, 'Juguetes sanitaria. '),
(99, 'Higiene de la empresa. '),
(100, 'Electronica para centros educativos. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `dni` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apellido1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apellido2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipo_usuario_id` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `dni`, `nombre`, `apellido1`, `apellido2`, `login`, `password`, `email`, `tipo_usuario_id`, `token`, `active`) VALUES
(1, '12345678A', 'Troll', 'Eyes', 'Daw', 'trolleyes', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'troll@eyes.com', 1, '', 1),
(2, '30380657O', 'Marcel·li', 'de les', 'Palla', 'madepa5597', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madepa5597@trolleyes.com', 2, '', 1),
(3, '74207971O', 'Marcel·li', 'de la', 'Llobarros', 'madell4582', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madell4582@trolleyes.com', 2, '', 1),
(4, '33315126O', 'Maurici', 'dels', 'Murallot', 'mademu8479', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mademu8479@trolleyes.com', 2, '', 0),
(5, '42548227O', 'Cirili', 'Ca la', 'Palla', 'cicapa9140', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cicapa9140@trolleyes.com', 2, '', 0),
(6, '30420869O', 'Pepet', 'dels', 'Clapés', 'pedecl9073', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedecl9073@trolleyes.com', 2, '', 0),
(7, '59725402O', 'Josepa', 'de Cal', 'Murallot', 'jodemu6421', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jodemu6421@trolleyes.com', 2, '', 0),
(8, '76459525O', 'Pepet', 'de la', 'Cigrons', 'pedeci7586', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedeci7586@trolleyes.com', 2, '', 0),
(9, '24376494O', 'Pompeu', 'Pacoco', 'Palla', 'popapa5989', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'popapa5989@trolleyes.com', 2, '', 0),
(10, '34535786O', 'Maurici', 'de les', 'Pacoco', 'madepa2921', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madepa2921@trolleyes.com', 2, '', 0),
(11, '11176664O', 'Eudald', 'de Cal', 'Cebes', 'eudece5161', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudece5161@trolleyes.com', 2, '', 0),
(12, '71510920O', 'Marcel·li', 'Ca la', 'Palla', 'macapa4348', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'macapa4348@trolleyes.com', 2, '', 0),
(13, '77369616O', 'Marcel·li', 'de Can', 'Trencapins', 'madetr3520', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madetr3520@trolleyes.com', 2, '', 0),
(14, '53149178O', 'Vidal', 'de les', 'Cigrons', 'videci7492', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videci7492@trolleyes.com', 2, '', 0),
(15, '62531407O', 'Marcel·li', 'de Can', 'Faves', 'madefa4924', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madefa4924@trolleyes.com', 2, '', 0),
(16, '66385893O', 'Maurici', 'de Can', 'Palla', 'madepa8109', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madepa8109@trolleyes.com', 2, '', 0),
(17, '93599057O', 'Pompeu', 'de la', 'Trencapins', 'podetr4688', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podetr4688@trolleyes.com', 2, '', 0),
(18, '31279111O', 'Miqueleta', 'de Can', 'Murallot', 'midemu9127', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midemu9127@trolleyes.com', 2, '', 0),
(19, '52165377O', 'Cirili', 'de les', 'Murallot', 'cidemu7887', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidemu7887@trolleyes.com', 2, '', 0),
(20, '35029836O', 'Jaumet', 'dels', 'Murallot', 'jademu4189', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jademu4189@trolleyes.com', 2, '', 0),
(21, '79660819O', 'Pepet', 'de Can', 'Palla', 'pedepa9099', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedepa9099@trolleyes.com', 2, '', 0),
(22, '79294744O', 'Jaumet', 'de la', 'Freda', 'jadefr3182', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadefr3182@trolleyes.com', 2, '', 0),
(23, '51348820O', 'Domènec', 'dels', 'Trencapins', 'dodetr7706', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodetr7706@trolleyes.com', 2, '', 0),
(24, '50953490O', 'Jaumet', 'de Cal', 'Metge', 'jademe1777', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jademe1777@trolleyes.com', 2, '', 0),
(25, '85559217O', 'Vidal', 'de Can', 'Faves', 'videfa6818', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videfa6818@trolleyes.com', 2, '', 0),
(26, '50833168O', 'Marcel·li', 'de la', 'Llobarro', 'madell1523', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madell1523@trolleyes.com', 2, '', 0),
(27, '91749104O', 'Domènec', 'el de', 'Murallot', 'doelmu8256', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'doelmu8256@trolleyes.com', 2, '', 0),
(28, '41656754O', 'Cirili', 'el de', 'Palla', 'cielpa8060', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cielpa8060@trolleyes.com', 2, '', 0),
(29, '36755685O', 'Maurici', 'de la', 'Cargols', 'madeca7795', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madeca7795@trolleyes.com', 2, '', 0),
(30, '71910358O', 'Pepet', 'de Cal', 'Porrons', 'pedepo7314', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedepo7314@trolleyes.com', 2, '', 0),
(31, '72903037O', 'Maurici', 'Ca la', 'Cargols', 'macaca6133', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'macaca6133@trolleyes.com', 2, '', 0),
(32, '29375286O', 'Jaumet', 'de les', 'Llobarro', 'jadell3132', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadell3132@trolleyes.com', 2, '', 0),
(33, '74825449O', 'Maurici', 'de les', 'Pacoco', 'madepa4315', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madepa4315@trolleyes.com', 2, '', 0),
(34, '13922528O', 'Miqueleta', 'el de', 'Cargols', 'mielca5676', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mielca5676@trolleyes.com', 2, '', 0),
(35, '42323360O', 'Cirili', 'dels', 'Murallot', 'cidemu3248', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidemu3248@trolleyes.com', 2, '', 0),
(36, '12716205O', 'Eudald', 'de les', 'Cargols', 'eudeca1591', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudeca1591@trolleyes.com', 2, '', 0),
(37, '58092589O', 'Vidal', 'de Cal', 'Metge', 'videme4623', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videme4623@trolleyes.com', 2, '', 0),
(38, '40333672O', 'Marcel·li', 'Ca la', 'Pacoco', 'macapa2552', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'macapa2552@trolleyes.com', 2, '', 0),
(39, '58550440O', 'Bernat', 'el de', 'Murallot', 'beelmu8331', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'beelmu8331@trolleyes.com', 2, '', 0),
(40, '96317634O', 'Cirili', 'de Cal', 'Faves', 'cidefa6483', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidefa6483@trolleyes.com', 2, '', 0),
(41, '80479290O', 'Marcel·li', 'dels', 'Metge', 'mademe6846', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mademe6846@trolleyes.com', 2, '', 0),
(42, '42382270O', 'Bernat', 'de Cal', 'Cigrons', 'bedeci2595', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedeci2595@trolleyes.com', 2, '', 0),
(43, '11044053O', 'Pompeu', 'de Cal', 'Cebes', 'podece3240', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podece3240@trolleyes.com', 2, '', 0),
(44, '11672627O', 'Pompeu', 'de la', 'Porrons', 'podepo7311', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podepo7311@trolleyes.com', 2, '', 0),
(45, '84607772O', 'Eudald', 'dels', 'Cigrons', 'eudeci2285', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudeci2285@trolleyes.com', 2, '', 0),
(46, '23114704O', 'Cirili', 'Pacoco', 'Pacoco', 'cipapa9259', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cipapa9259@trolleyes.com', 2, '', 0),
(47, '20331748O', 'Jaumet', 'el de', 'Palla', 'jaelpa9623', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jaelpa9623@trolleyes.com', 2, '', 0),
(48, '81701399O', 'Jaumet', 'el de', 'Murallot', 'jaelmu3209', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jaelmu3209@trolleyes.com', 2, '', 0),
(49, '93933671O', 'Paco', 'dels', 'Cigrons', 'padeci5265', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padeci5265@trolleyes.com', 2, '', 0),
(50, '91465056O', 'Cirili', 'Ca la', 'Metge', 'cicame8520', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cicame8520@trolleyes.com', 2, '', 0),
(51, '27289219O', 'Vidal', 'de les', 'Trencapins', 'videtr9792', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videtr9792@trolleyes.com', 2, '', 0),
(52, '94536665O', 'Paco', 'dels', 'Clapés', 'padecl2213', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padecl2213@trolleyes.com', 2, '', 0),
(53, '38367331O', 'Jaumet', 'de Cal', 'Llobarro', 'jadell8926', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadell8926@trolleyes.com', 2, '', 0),
(54, '18950548O', 'Pompeu', 'de les', 'Faves', 'podefa1648', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podefa1648@trolleyes.com', 2, '', 0),
(55, '11824549O', 'Marcel·li', 'de Cal', 'Faves', 'madefa1452', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madefa1452@trolleyes.com', 2, '', 0),
(56, '68305208O', 'Jaumet', 'el de', 'Palla', 'jaelpa3569', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jaelpa3569@trolleyes.com', 2, '', 0),
(57, '38454736O', 'Maurici', 'Ca la', 'Trencapins', 'macatr4580', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'macatr4580@trolleyes.com', 2, '', 0),
(58, '60839022O', 'Miqueleta', 'de Can', 'Faves', 'midefa5415', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midefa5415@trolleyes.com', 2, '', 0),
(59, '58572293O', 'Eudald', 'dels', 'Clapés', 'eudecl9464', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudecl9464@trolleyes.com', 2, '', 0),
(60, '58444683O', 'Josepa', 'de Can', 'Cigrons', 'jodeci4540', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jodeci4540@trolleyes.com', 2, '', 0),
(61, '64742535O', 'Cirili', 'dels', 'Murallot', 'cidemu2684', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidemu2684@trolleyes.com', 2, '', 0),
(62, '21369463O', 'Cirili', 'dels', 'Palla', 'cidepa7815', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidepa7815@trolleyes.com', 2, '', 0),
(63, '40474717O', 'Maurici', 'dels', 'Porrons', 'madepo4810', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madepo4810@trolleyes.com', 2, '', 0),
(64, '92288022O', 'Domènec', 'de les', 'Cargols', 'dodeca4918', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodeca4918@trolleyes.com', 2, '', 0),
(65, '21441833O', 'Miqueleta', 'de la', 'Cigrons', 'mideci3911', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mideci3911@trolleyes.com', 2, '', 0),
(66, '78768627O', 'Domènec', 'de Can', 'Pacoco', 'dodepa9973', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodepa9973@trolleyes.com', 2, '', 0),
(67, '40336597O', 'Paco', 'el de', 'Trencapins', 'paeltr4573', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'paeltr4573@trolleyes.com', 2, '', 0),
(68, '82278669O', 'Jaumet', 'de la', 'Porrons', 'jadepo9583', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadepo9583@trolleyes.com', 2, '', 0),
(69, '46933174O', 'Pepet', 'de Can', 'Palla', 'pedepa8368', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedepa8368@trolleyes.com', 2, '', 0),
(70, '20406548O', 'Pepet', 'de la', 'Cebes', 'pedece5368', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedece5368@trolleyes.com', 2, '', 0),
(71, '95586406O', 'Domènec', 'Ca la', 'Cigrons', 'docaci4006', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'docaci4006@trolleyes.com', 2, '', 0),
(72, '99248194O', 'Jaumet', 'Pacoco', 'Murallot', 'japamu7959', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'japamu7959@trolleyes.com', 2, '', 0),
(73, '48020380O', 'Miqueleta', 'de Cal', 'Llobarro', 'midell5681', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midell5681@trolleyes.com', 2, '', 0),
(74, '91470682O', 'Pompeu', 'de Can', 'Cebes', 'podece8722', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podece8722@trolleyes.com', 2, '', 0),
(75, '72560744O', 'Jaumet', 'dels', 'Cigrons', 'jadeci9575', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadeci9575@trolleyes.com', 2, '', 0),
(76, '80693759O', 'Domènec', 'de les', 'Pacoco', 'dodepa9982', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodepa9982@trolleyes.com', 2, '', 0),
(77, '70143611O', 'Maurici', 'Pacoco', 'Metge', 'mapame7394', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mapame7394@trolleyes.com', 2, '', 0),
(78, '82013176O', 'Paco', 'de Cal', 'Trencapins', 'padetr5086', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padetr5086@trolleyes.com', 2, '', 0),
(79, '73650292O', 'Maurici', 'de Can', 'Cargols', 'madeca5263', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madeca5263@trolleyes.com', 2, '', 0),
(80, '35936223O', 'Pepet', 'de Cal', 'Murallot', 'pedemu9415', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedemu9415@trolleyes.com', 2, '', 0),
(81, '52002288O', 'Cirili', 'de la', 'Porrons', 'cidepo7996', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidepo7996@trolleyes.com', 2, '', 0),
(82, '27137752O', 'Paco', 'Ca la', 'Cigrons', 'pacaci6543', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pacaci6543@trolleyes.com', 2, '', 0),
(83, '13604647O', 'Josepa', 'dels', 'Clapés', 'jodecl2480', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jodecl2480@trolleyes.com', 2, '', 0),
(84, '70420524O', 'Vidal', 'dels', 'Pacoco', 'videpa9804', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videpa9804@trolleyes.com', 2, '', 0),
(85, '70216233O', 'Pompeu', 'el de', 'Murallot', 'poelmu2806', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'poelmu2806@trolleyes.com', 2, '', 0),
(86, '53442394O', 'Jaumet', 'Ca la', 'Metge', 'jacame1819', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jacame1819@trolleyes.com', 2, '', 0),
(87, '80189763O', 'Pepet', 'el de', 'Cebes', 'peelce1484', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'peelce1484@trolleyes.com', 2, '', 0),
(88, '25238387O', 'Vidal', 'Pacoco', 'Palla', 'vipapa5260', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'vipapa5260@trolleyes.com', 2, '', 0),
(89, '87768609O', 'Cirili', 'de les', 'Faves', 'cidefa3974', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidefa3974@trolleyes.com', 2, '', 0),
(90, '71621081O', 'Bernat', 'dels', 'Faves', 'bedefa1686', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedefa1686@trolleyes.com', 2, '', 0),
(91, '19225818O', 'Cirili', 'de la', 'Trencapins', 'cidetr7465', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cidetr7465@trolleyes.com', 2, '', 0),
(92, '45209218O', 'Paco', 'de Cal', 'Porrons', 'padepo2404', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padepo2404@trolleyes.com', 2, '', 0),
(93, '29026990O', 'Vidal', 'Pacoco', 'Porrons', 'vipapo1016', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'vipapo1016@trolleyes.com', 2, '', 0),
(94, '40352436O', 'Marcel·li', 'de Cal', 'Murallot', 'mademu9569', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mademu9569@trolleyes.com', 2, '', 0),
(95, '34804738O', 'Bernat', 'de Can', 'Freda', 'bedefr9201', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedefr9201@trolleyes.com', 2, '', 0),
(96, '99548414O', 'Domènec', 'dels', 'Cargols', 'dodeca9397', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodeca9397@trolleyes.com', 2, '', 0),
(97, '54129128O', 'Domènec', 'dels', 'Faves', 'dodefa9469', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodefa9469@trolleyes.com', 2, '', 0),
(98, '30265267O', 'Paco', 'dels', 'Pacoco', 'padepa4093', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padepa4093@trolleyes.com', 2, '', 0),
(99, '42195625O', 'Paco', 'dels', 'Porrons', 'padepo5614', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padepo5614@trolleyes.com', 2, '', 0),
(100, '83283202O', 'Maurici', 'de la', 'Metge', 'mademe5824', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mademe5824@trolleyes.com', 2, '', 0),
(101, '76447700O', 'Bernat', 'el de', 'Murallot', 'beelmu2597', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'beelmu2597@trolleyes.com', 2, '', 0),
(102, '78870592O', 'Jaumet', 'dels', 'Cebes', 'jadece8460', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadece8460@trolleyes.com', 2, '', 0),
(103, '93592810O', 'Domènec', 'Pacoco', 'Murallot', 'dopamu8517', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dopamu8517@trolleyes.com', 2, '', 0),
(104, '25144437O', 'Vidal', 'el de', 'Cebes', 'vielce9424', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'vielce9424@trolleyes.com', 2, '', 0),
(105, '98713566O', 'Jaumet', 'de les', 'Cargols', 'jadeca3469', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadeca3469@trolleyes.com', 2, '', 0),
(106, '57886850O', 'Bernat', 'de Cal', 'Cigrons', 'bedeci4627', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedeci4627@trolleyes.com', 2, '', 0),
(107, '65445241O', 'Domènec', 'de les', 'Cigrons', 'dodeci7441', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodeci7441@trolleyes.com', 2, '', 0),
(108, '38668700O', 'Eudald', 'de la', 'Murallot', 'eudemu4269', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudemu4269@trolleyes.com', 2, '', 0),
(109, '16179820O', 'Jaumet', 'de Cal', 'Pacoco', 'jadepa2245', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadepa2245@trolleyes.com', 2, '', 0),
(110, '13359575O', 'Pompeu', 'dels', 'Metge', 'podeme7042', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podeme7042@trolleyes.com', 2, '', 0),
(111, '50627400O', 'Miqueleta', 'de les', 'Murallot', 'midemu1571', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midemu1571@trolleyes.com', 2, '', 0),
(112, '87688349O', 'Pompeu', 'de Cal', 'Pacoco', 'podepa3859', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'podepa3859@trolleyes.com', 2, '', 0),
(113, '38949087O', 'Josepa', 'de les', 'Pacoco', 'jodepa5083', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jodepa5083@trolleyes.com', 2, '', 0),
(114, '66389007O', 'Bernat', 'el de', 'Pacoco', 'beelpa7497', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'beelpa7497@trolleyes.com', 2, '', 0),
(115, '29170918O', 'Miqueleta', 'Pacoco', 'Trencapins', 'mipatr6623', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mipatr6623@trolleyes.com', 2, '', 0),
(116, '35268072O', 'Domènec', 'el de', 'Trencapins', 'doeltr1880', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'doeltr1880@trolleyes.com', 2, '', 0),
(117, '20264362O', 'Jaumet', 'de Can', 'Llobarro', 'jadell4762', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadell4762@trolleyes.com', 2, '', 0),
(118, '28128589O', 'Paco', 'de Can', 'Faves', 'padefa7119', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padefa7119@trolleyes.com', 2, '', 0),
(119, '87672580O', 'Maurici', 'dels', 'Cigrons', 'madeci6823', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madeci6823@trolleyes.com', 2, '', 0),
(120, '86464809O', 'Miqueleta', 'de les', 'Freda', 'midefr1981', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midefr1981@trolleyes.com', 2, '', 0),
(121, '73178790O', 'Bernat', 'de les', 'Cebes', 'bedece4921', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedece4921@trolleyes.com', 2, '', 0),
(122, '47004553O', 'Josepa', 'de Can', 'Cebes', 'jodece1989', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jodece1989@trolleyes.com', 2, '', 0),
(123, '99828309O', 'Paco', 'Pacoco', 'Metge', 'papame9107', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'papame9107@trolleyes.com', 2, '', 0),
(124, '80043833O', 'Pepet', 'de la', 'Murallot', 'pedemu5848', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedemu5848@trolleyes.com', 2, '', 0),
(125, '74572646O', 'Miqueleta', 'Pacoco', 'Freda', 'mipafr7667', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mipafr7667@trolleyes.com', 2, '', 0),
(126, '98831298O', 'Maurici', 'de Can', 'Cigrons', 'madeci7076', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madeci7076@trolleyes.com', 2, '', 0),
(127, '88814320O', 'Cirili', 'el de', 'Trencapins', 'cieltr2218', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cieltr2218@trolleyes.com', 2, '', 0),
(128, '62477052O', 'Pepet', 'de les', 'Cargols', 'pedeca9160', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pedeca9160@trolleyes.com', 2, '', 0),
(129, '82975897O', 'Maurici', 'de Can', 'Cargols', 'madeca6280', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'madeca6280@trolleyes.com', 2, '', 0),
(130, '11659420O', 'Paco', 'Ca la', 'Metge', 'pacame8295', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pacame8295@trolleyes.com', 2, '', 0),
(131, '16445521O', 'Josepa', 'Ca la', 'Freda', 'jocafr5508', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jocafr5508@trolleyes.com', 2, '', 0),
(132, '59180556O', 'Domènec', 'de Can', 'Cebes', 'dodece5630', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodece5630@trolleyes.com', 2, '', 0),
(133, '55082570O', 'Paco', 'Ca la', 'Murallot', 'pacamu6792', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'pacamu6792@trolleyes.com', 2, '', 0),
(134, '26792866O', 'Paco', 'de les', 'Freda', 'padefr6372', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'padefr6372@trolleyes.com', 2, '', 0),
(135, '24187765O', 'Bernat', 'Ca la', 'Porrons', 'becapo7983', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'becapo7983@trolleyes.com', 2, '', 0),
(136, '53016688O', 'Domènec', 'el de', 'Faves', 'doelfa9322', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'doelfa9322@trolleyes.com', 2, '', 0),
(137, '25208282O', 'Vidal', 'de Cal', 'Clapés', 'videcl6414', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'videcl6414@trolleyes.com', 2, '', 0),
(138, '35448788O', 'Miqueleta', 'de Cal', 'Pacoco', 'midepa6045', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midepa6045@trolleyes.com', 2, '', 0),
(139, '97184566O', 'Jaumet', 'de les', 'Cargols', 'jadeca4466', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadeca4466@trolleyes.com', 2, '', 0),
(140, '98591870O', 'Jaumet', 'dels', 'Trencapins', 'jadetr3750', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'jadetr3750@trolleyes.com', 2, '', 0),
(141, '42245098O', 'Domènec', 'dels', 'Trencapins', 'dodetr6960', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodetr6960@trolleyes.com', 2, '', 0),
(142, '77008254O', 'Pompeu', 'Pacoco', 'Cebes', 'popace7672', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'popace7672@trolleyes.com', 2, '', 0),
(143, '14480292O', 'Cirili', 'Ca la', 'Murallot', 'cicamu2652', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'cicamu2652@trolleyes.com', 2, '', 0),
(144, '12824702O', 'Domènec', 'Ca la', 'Clapés', 'docacl7916', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'docacl7916@trolleyes.com', 2, '', 0),
(145, '19908080O', 'Domènec', 'de la', 'Pacoco', 'dodepa6847', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dodepa6847@trolleyes.com', 2, '', 0),
(146, '49718119O', 'Miqueleta', 'de Cal', 'Clapés', 'midecl1838', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'midecl1838@trolleyes.com', 2, '', 0),
(147, '76580937O', 'Miqueleta', 'de les', 'Cargols', 'mideca8388', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mideca8388@trolleyes.com', 2, '', 0),
(148, '77639751O', 'Domènec', 'Pacoco', 'Faves', 'dopafa7478', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'dopafa7478@trolleyes.com', 2, '', 0),
(149, '98245637O', 'Marcel·li', 'Pacoco', 'Palla', 'mapapa8613', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'mapapa8613@trolleyes.com', 2, '', 0),
(150, '58053984O', 'Eudald', 'de les', 'Faves', 'eudefa1808', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'eudefa1808@trolleyes.com', 2, '', 0),
(151, '15389997O', 'Bernat', 'de les', 'Metge', 'bedeme2561', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'bedeme2561@trolleyes.com', 2, '', 0),
(176, '3357031H', 'Rubén', 'Solano', 'Jiménez', 'rsolano', NULL, 'rsolano@dekalabs.com', 2, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`,`factura_id`,`producto_id`),
  ADD KEY `fk_compra_factura_idx` (`factura_id`),
  ADD KEY `fk_compra_producto_idx` (`producto_id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`,`usuario_id`),
  ADD KEY `fk_factura_usuario_idx` (`usuario_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`,`tipo_producto_id`),
  ADD KEY `fk_producto_tipo_producto_idx` (`tipo_producto_id`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`,`tipo_usuario_id`),
  ADD KEY `fk_usuario_tipo_usuario_idx` (`tipo_usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipo_usuario` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
