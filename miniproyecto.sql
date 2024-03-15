-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2024 a las 08:28:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `dni` int(50) DEFAULT NULL,
  `edad` int(100) DEFAULT NULL,
  `fecha_creacion` varchar(100) DEFAULT NULL,
  `telefono` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `direccion`, `correo`, `dni`, `edad`, `fecha_creacion`, `telefono`) VALUES
(1, 'Ozzie', 'Wilbore', '84017 Reindahl Hill', 'owilbore0@blogspot.com', 71943900, 48, '19.01.2021', 965675442),
(2, 'Irving', 'Mordey', '46 Sage Crossing', 'imordey1@i2i.jp', 75923258, 68, '28.08.2021', 961099770),
(3, 'Anthea', 'Housam', '16 Nancy Park', 'ahousam2@google.com', 72546352, 74, '16.12.2023', 930304567),
(4, 'Jeana', 'Aggio', '76423 Luster Pass', 'jaggio3@mtv.com', 74555330, 75, '01.08.2023', 969484431),
(5, 'Jervis', 'Pagett', '08542 Ilene Way', 'jpagett4@washingtonpost.com', 74095787, 64, '17.12.2023', 947989715),
(6, 'Ardyth', 'Andrassy', '04 Dixon Point', 'aandrassy5@narod.ru', 72054376, 49, '17.01.2023', 924890358),
(7, 'Brnaby', 'Scolland', '539 Di Loreto Junction', 'bscolland6@newsvine.com', 77648276, 68, '11.04.2023', 916316093),
(8, 'Consalve', 'Mapes', '30445 Basil Trail', 'cmapes7@cyberchimps.com', 74946379, 23, '28.08.2023', 923728340),
(9, 'Roderigo', 'Burdett', '4074 Glendale Court', 'rburdett8@gizmodo.com', 75073783, 43, '29.11.2021', 927118214),
(10, 'Correna', 'Amiranda', '1 Superior Parkway', 'camiranda9@google.pl', 73925804, 61, '31.07.2022', 971793486),
(11, 'Isobel', 'Climson', '5 Calypso Junction', 'iclimsona@moonfruit.com', 78356091, 55, '04.12.2023', 945911747),
(12, 'Angil', 'Lars', '1256 Westerfield Trail', 'alarsb@cbsnews.com', 76018979, 70, '21.08.2021', 948123382),
(13, 'Danella', 'Eveling', '617 Meadow Valley Center', 'develingc@ihg.com', 72670748, 57, '29.01.2021', 955211966),
(14, 'Joby', 'Feedham', '9855 Delladonna Alley', 'jfeedhamd@flavors.me', 71534870, 42, '05.02.2023', 976824295),
(15, 'Nada', 'Mulgrew', '1701 David Junction', 'nmulgrewe@lulu.com', 72381435, 20, '20.09.2021', 925086566),
(16, 'Lesley', 'Muir', '456 Anniversary Parkway', 'lmuirf@ihg.com', 73953483, 68, '21.04.2023', 929997828),
(17, 'Martainn', 'Bromley', '42 Rowland Trail', 'mbromleyg@google.com.br', 73115463, 46, '16.04.2023', 983591514),
(18, 'Kristoforo', 'Pinkard', '9 Hoepker Park', 'kpinkardh@sohu.com', 73833871, 65, '12.06.2023', 954855876),
(19, 'Neda', 'Bunson', '68601 Monterey Trail', 'nbunsoni@squidoo.com', 78983841, 50, '21.05.2023', 980053917),
(20, 'Byron', 'Goodred', '2255 Jay Terrace', 'bgoodredj@tinyurl.com', 77956284, 34, '10.02.2023', 974961911),
(21, 'Florrie', 'Westcot', '524 Holmberg Park', 'fwestcotk@ezinearticles.com', 72462787, 46, '29.09.2023', 948903114),
(22, 'Silas', 'Brockington', '21620 Petterle Drive', 'sbrockingtonl@godaddy.com', 73020186, 30, '30.03.2022', 959692218),
(23, 'Palmer', 'Ludgate', '2775 Kenwood Plaza', 'pludgatem@harvard.edu', 75097920, 66, '25.01.2024', 929933821),
(24, 'Audre', 'Bezants', '0 Southridge Alley', 'abezantsn@oracle.com', 73249040, 47, '19.03.2021', 936632388),
(25, 'Tori', 'Huchot', '7 Dapin Avenue', 'thuchoto@umn.edu', 75912141, 61, '02.06.2023', 916127651),
(26, 'Alisun', 'Jachimiak', '573 Manitowish Street', 'ajachimiakp@fda.gov', 73598685, 37, '28.08.2021', 969631989),
(27, 'Malissia', 'Laurens', '9 Bluestem Center', 'mlaurensq@umich.edu', 74811390, 42, '30.06.2022', 977054939),
(28, 'Corenda', 'Ponnsett', '497 New Castle Road', 'cponnsettr@example.com', 76621895, 36, '19.01.2021', 927090140),
(29, 'Roseline', 'Fayter', '3 Granby Terrace', 'rfayters@accuweather.com', 78657505, 56, '05.09.2023', 922565865),
(30, 'Arleen', 'Maultby', '156 Eagan Lane', 'amaultbyt@i2i.jp', 73792525, 36, '07.01.2021', 973045463),
(31, 'Debi', 'Shulver', '97432 Miller Avenue', 'dshulveru@oaic.gov.au', 75266647, 45, '03.02.2023', 965394976),
(32, 'Christiano', 'Cobbledick', '90 Kensington Crossing', 'ccobbledickv@sourceforge.net', 73166154, 51, '16.03.2023', 914089491),
(33, 'Magda', 'Cowhig', '7170 Schurz Court', 'mcowhigw@jigsy.com', 75302893, 32, '09.11.2023', 968432327),
(34, 'Romain', 'Bortolotti', '33842 South Hill', 'rbortolottix@taobao.com', 72428717, 41, '28.03.2023', 965923157),
(35, 'Pernell', 'Bovis', '95132 Marquette Lane', 'pbovisy@prweb.com', 78020727, 74, '29.06.2021', 970464870),
(36, 'Corette', 'Gilphillan', '3886 Surrey Way', 'cgilphillanz@sogou.com', 72696226, 51, '06.03.2022', 940325823),
(37, 'Aggie', 'Masdon', '4400 Montana Terrace', 'amasdon10@freewebs.com', 76703446, 68, '13.10.2022', 919333988),
(38, 'Petronella', 'Akam', '3648 Corry Lane', 'pakam11@wordpress.com', 72792348, 35, '10.03.2024', 935188672),
(39, 'Marcie', 'Grassi', '53120 Ruskin Hill', 'mgrassi12@fc2.com', 78683084, 66, '29.12.2023', 948595579),
(40, 'Fields', 'Doppler', '4516 Lakewood Gardens Court', 'fdoppler13@merriam-webster.com', 75573491, 44, '19.04.2022', 928793742),
(41, 'Wilfrid', 'Magor', '7425 Jackson Parkway', 'wmagor14@linkedin.com', 75360353, 46, '19.12.2021', 915258784),
(42, 'Normand', 'Alvares', '7956 Amoth Junction', 'nalvares15@time.com', 79150226, 40, '22.10.2021', 954198065),
(43, 'Darren', 'Heaker', '2294 Fordem Terrace', 'dheaker16@gov.uk', 74814753, 65, '09.07.2022', 927109559),
(44, 'Jordana', 'O\'Dreain', '44067 Parkside Pass', 'jodreain17@studiopress.com', 71803894, 34, '06.09.2023', 936757280),
(45, 'Melissa', 'Eliassen', '76 Division Parkway', 'meliassen18@nationalgeographic.com', 75113094, 30, '01.02.2022', 936620096),
(46, 'Mireille', 'Francello', '0 Mayfield Circle', 'mfrancello19@usda.gov', 76646029, 58, '10.12.2022', 967679630),
(47, 'Stanleigh', 'Pol', '1 Namekagon Hill', 'spol1a@deliciousdays.com', 74696908, 64, '06.03.2022', 947880630),
(48, 'Romain', 'Steeden', '9236 Sherman Park', 'rsteeden1b@phoca.cz', 74765926, 27, '25.02.2024', 966847992),
(49, 'Esdras', 'Cloutt', '643 Shasta Way', 'ecloutt1c@de.vu', 77987103, 49, '05.10.2023', 973069054),
(50, 'Kippie', 'Richemond', '34446 Bashford Lane', 'krichemond1d@ustream.tv', 75393390, 57, '08.01.2021', 931413440),
(51, 'Elyssa', 'Petlyura', '423 Nova Court', 'epetlyura1e@w3.org', 74391472, 35, '30.01.2023', 969718822),
(52, 'Milzie', 'McCauley', '5 Mandrake Drive', 'mmccauley1f@bluehost.com', 72559591, 23, '04.03.2024', 950821828),
(53, 'Cacilia', 'Newling', '5 Garrison Court', 'cnewling1g@friendfeed.com', 74832202, 73, '09.11.2021', 977531047);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
