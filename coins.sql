-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 12:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coins`
--

-- --------------------------------------------------------

--
-- Table structure for table `coin_data`
--

CREATE TABLE `coin_data` (
  `idCoin` int(11) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `denomination` varchar(100) NOT NULL,
  `year` varchar(4) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `currency` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coin_data`
--

INSERT INTO `coin_data` (`idCoin`, `countryName`, `denomination`, `year`, `subject`, `currency`, `price`) VALUES
(1, 'Italy', '5 lire', '1927', '', 'Italian lira', 15.10),
(2, 'Italy', '20 lire', '1882', '', 'Italian lira', 302.94),
(3, 'Italy', '5 centesimi', '1862', '', 'Italian lira', 1.53),
(4, 'Italy', '10 centesimi', '1867', '', 'Italian lira', 1.40),
(5, 'Italy', '2 centesimi', '1867', '', 'Italian lira', 2.27),
(6, 'Italy', '1 centesimo', '1916', '', 'Italian lira', 4.21),
(7, 'Italy', '2 centesimi', '1909', '', 'Italian lira', 6.00),
(8, 'Italy', '10 centesimi', '1862', '', 'Italian lira', 1.50),
(9, 'Italy', '10 centesimi', '1893', '', 'Italian lira', 3.49),
(10, 'Italy', '2 lire', '1940', '', 'Italian lira', 1.86),
(11, 'Italy', '2 lire', '1939', '', 'Italian lira', 1.75),
(12, 'Italy', '2 lire', '1897', '', 'Italian lira', 27.41),
(13, 'Italy', '500 lire', '1960', 'Silver', 'Italian lira', 8.00),
(14, 'Italy', '20 centesimi', '1909', '', 'Italian lira', 0.54),
(15, 'Italy', '1 lira', '1949', '', 'Italian lira', 1.65),
(16, 'Italy', '100 lire', '1995', 'Food and Agricultural Organization of the United Nations', 'Italian lira', 0.64),
(17, 'Italy', '1 lira', '1940', '', 'Italian lira', 1.02),
(18, 'Italy', '200 lire', '1990', '100th Anniversary - State Council', 'Italian lira', 0.62),
(19, 'Italy', '200 lire', '1996', '100th Anniversary - Customs Service Academy', 'Italian lira', 0.63),
(20, 'Italy', '500 lire', '1959', 'Silver', 'Italian lira', 7.50),
(21, 'Italy', '5 centesimi', '1923', '', 'Italian lira', 0.80),
(22, 'Italy', '50 centesimi', '1939', '', 'Italian lira', 1.75),
(23, 'Italy', '1 lira', '1942', '', 'Italian lira', 0.90),
(24, 'Italy', '1000 lire', '1997', '', 'Italian lira', 1.29),
(25, 'Italy', '1000 lire', '1998', '', 'Italian lira', 1.69),
(26, 'Italy', '20 centesimi', '1919', '', 'Italian lira', 0.98),
(27, 'Italy', '200 lire', '1993', '70th Anniversary - Military Aviation', 'Italian lira', 0.48),
(28, 'Italy', '5 lire', '1950', '', 'Italian lira', 1.00),
(29, 'Italy', '1 lira', '1906', '', 'Italian lira', 16.90),
(30, 'Italy', '500 lire', '1999', '20th Anniversary - European Parliamentary Elections', 'Italian lira', 3.79),
(31, 'Italy', '500 lire', '1958', 'Silver', 'Italian lira', 7.00),
(32, 'Italy', '1 centesimo', '1900', '', 'Italian lira', 5.90),
(33, 'Italy', '20 centesimi', '1914', '', 'Italian lira', 1.02),
(34, 'Italy', '50 centesimi', '1941', '', 'Italian lira', 0.53),
(35, 'Italy', '500 lire', '1966', 'Silver', 'Italian lira', 8.00),
(36, 'Italy', '2 lire', '1941', '', 'Italian lira', 4.51),
(37, 'Italy', '500 lire', '1961', 'Silver', 'Italian lira', 5.10),
(38, 'Italy', '20 centesimi', '1918', '', 'Italian lira', 1.04),
(39, 'Italy', '10 lire', '1949', '', 'Italian lira', 2.24),
(40, 'Italy', '1 lira', '1956', '', 'Italian lira', 2.66),
(41, 'Italy', '500 lire', '1965', 'Silver', 'Italian lira', 6.00),
(42, 'Italy', '10 lire', '1993', '', 'Italian lira', 1.14),
(43, 'Italy', '10 lire', '1950', '', 'Italian lira', 2.15),
(44, 'Italy', '2 lire', '1957', '', 'Italian lira', 0.72),
(45, 'Italy', '2 lire', '1953', '', 'Italian lira', 1.39),
(46, 'Italy', '2 lire', '1956', '', 'Italian lira', 1.57),
(47, 'Italy', '2 lire', '1948', '', 'Italian lira', 2.41),
(48, 'Italy', '5 lire', '1949', '', 'Italian lira', 1.28),
(49, 'Italy', '1 lira', '1951', '', 'Italian lira', 0.92),
(50, 'Italy', '1 lira', '1948', '', 'Italian lira', 2.09),
(51, 'Italy', '2 lire', '1950', '', 'Italian lira', 5.40),
(52, 'Italy', '1 lira', '1957', '', 'Italian lira', 0.59),
(53, 'Italy', '2 lire', '1954', '', 'Italian lira', 0.46),
(54, 'Italy', '500 lire', '1964', 'Silver', 'Italian lira', 5.98),
(55, 'Italy', '500 lire', '1967', 'Silver', 'Italian lira', 7.80),
(56, 'Italy', '1000 lire', '1970', '100th Anniversary - Rome as Italian capital', 'Italian lira', 9.55),
(57, 'Italy', '5 lire', '1948', '', 'Italian lira', 1.92),
(58, 'Italy', '1 lira', '1952', '', 'Italian lira', 2.54),
(59, 'Italy', '1 lira', '1959', '', 'Italian lira', 2.34),
(60, 'Italy', '500 lire', '1970', 'Silver', 'Italian lira', 8.00),
(61, 'Italy', '10 lire', '1948', '', 'Italian lira', 9.40),
(62, 'Italy', '1 lira', '1950', '', 'Italian lira', 5.49),
(63, 'Italy', '1 lira', '1953', '', 'Italian lira', 1.15),
(64, 'Italy', '2 lire', '1959', '', 'Italian lira', 2.12),
(65, 'Italy', '2 lire', '1970', '', 'Italian lira', 1.22),
(66, 'Italy', '10 centesimi', '1927', '', 'Italian lira', 0.91),
(67, 'Italy', '1 lira', '1958', '', 'Italian lira', 1.35),
(68, 'Italy', '500 lire', '1961', '100th Anniversary - Italian Unification', 'Italian lira', 7.05),
(69, 'Italy', '200 lire', '1989', '100th Anniversary - Military Naval Base at Taranto', 'Italian lira', 0.78),
(70, 'Italy', '20 centesimi', '1942', '', 'Italian lira', 0.64),
(71, 'Italy', '500 lire', '1998', '20th Anniversary - IFAD', 'Italian lira', 1.30),
(72, 'Italy', '5 lire', '1966', '', 'Italian lira', 1.35),
(73, 'Italy', '5 centesimi', '1929', '', 'Italian lira', 1.03),
(74, 'Italy', '10 centesimi', '1932', '', 'Italian lira', 6.35),
(75, 'Italy', '2 lire', '1955', '', 'Italian lira', 1.73),
(76, 'Italy', '50 lire', '1958', '', 'Italian lira', 26.06),
(77, 'Italy', '50 lire', '1960', '', 'Italian lira', 1.76),
(78, 'Italy', '10 lire', '1965', '', 'Italian lira', 6.64),
(79, 'Italy', '500 lire', '1965', '700th Anniversary - Birth of Dante Alighieri', 'Italian lira', 9.00),
(80, 'Italy', '10 centesimi', '1929', '', 'Italian lira', 0.66),
(81, 'Italy', '10 centesimi', '1934', '', 'Italian lira', 3.23),
(82, 'Italy', '500 lire', '1997', '50th Anniversary - National Police Code', 'Italian lira', 1.17),
(83, 'Italy', '2 lire', '1949', '', 'Italian lira', 19.24),
(84, 'Italy', '100 lire', '1981', '100th Anniversary - Livorno Naval Academy', 'Italian lira', 0.75),
(85, 'Italy', '500 lire', '1996', '70th Anniversary - National Institute of Statistics', 'Italian lira', 0.89),
(86, 'Italy', '500 lire', '1994', '500th Anniversary - Birth of Luca Pacioli', 'Italian lira', 1.47),
(87, 'Italy', '5 lire', '1929', '', 'Italian lira', 8.17),
(88, 'Italy', '10 centesimi', '1924', '', 'Italian lira', 1.02),
(89, 'Italy', '50 centesimi', '1925', '', 'Italian lira', 6.91),
(90, 'Italy', '50 centesimi', '1920', '', 'Italian lira', 2.96),
(91, 'Italy', '20 centesimi', '1918', '', 'Italian lira', 1.01),
(92, 'Australia', '50 cents', '1975', '', 'Australian dollar', 1.28),
(93, 'Australia', '6 pence', '1951', '', 'Australian pound', 2.50),
(94, 'Argentina', '2 centavos', '1891', '', 'Argentine peso', 2.04),
(95, 'Australia', '50 cents', '1969', '', 'Australian dollar', 2.65),
(96, 'Australia', '1 shilling', '1957', '', 'Australian pound', 3.36),
(97, 'United Kingdom', '1 pound', '1993', '', 'Pound sterling', 1.39),
(98, 'Bolivia', '5 pesos', '1980', '', 'Bolivian peso', 1.11),
(99, 'Canada', '10 cents', '1966', '', 'Canadian dollar', 1.80),
(100, 'United Kingdom', '1 pound', '1988', '', 'Pound sterling', 4.10),
(101, 'USSR', '2 kopeks', '1966', '', 'Soviet ruble', 2.45),
(102, 'USSR', '1 ruble', '1985', '40th Anniversary of World War II', 'Soviet ruble', 1.36),
(103, 'Vatican City', '5 lire', '1951', '', 'Vatican lira', 1.80),
(104, 'Vatican City', '100 lire', '1958', '', 'Vatican lira', 2.63),
(105, 'Germany', '1 mark', '1970', '', 'German mark', 1.39),
(106, 'Israel', '5 lirot', '1979', '', 'Israeli lira', 0.89),
(107, 'Vatican City', '10 lire', '1953', '', 'Vatican lira', 1.22),
(108, 'France', '10 francs', '1857', 'Diameter 19mm', 'French franc', 137.29),
(109, 'Germany - Third Reich', '10 reichspfennig', '1941', '', 'German reichsmark', 1.12),
(110, 'Vatican City', '100 lire', '1960', '', 'Vatican lira', 2.22),
(111, 'Vatican City', '100 lire', '1965', '', 'Vatican lira', 2.25),
(112, 'Cuba', '25 centavos', '1988', '', 'Cuban peso', 0.95),
(113, 'France', '20 francs', '1897', '', 'French franc', 320.20),
(114, 'Greece', '5 drachmas', '1973', '', 'Greek drachma', 1.01),
(115, 'USSR', '1 ruble', '1987', '70th Anniversary of Revolution', 'Soviet ruble', 1.49),
(116, 'Vatican City', '100 lire', '1959', '', 'Vatican lira', 2.90),
(117, 'Vatican City', '10 lire', '1951', '', 'Vatican lira', 1.67),
(118, 'Ireland', '6 pence', '1963', '', 'Irish pound (pre-decimal)', 1.43),
(119, 'Vatican City', '20 centesimi', '1940', '', 'Vatican lira', 5.62),
(120, 'Vatican City', '50 lire', '1976', '', 'Vatican lira', 2.30),
(121, 'Vatican City', '10 lire', '1957', '', 'Vatican lira', 3.00),
(122, 'Vatican City', '100 lire', '1957', '', 'Vatican lira', 2.16),
(123, 'France', '1 franc', '1994', '', 'French franc', 4.26),
(124, 'France', '5 francs', '1994', '300th Anniversary - Birth of Voltaire', 'French franc', 1.55),
(125, 'France', '2 francs', '1933', '', 'French franc', 1.54),
(126, 'Israel', '10 agorot', '1975', '', 'Israeli lira', 0.45),
(127, 'Papua New Guinea', '1 toea', '1995', '', 'Papua New Guinean kina', 1.72),
(128, 'New Zealand', '1 shilling', '1950', '', 'New Zealand pound', 4.12),
(129, 'Papua New Guinea', '20 toea', '1975', '', 'Papua New Guinean kina', 2.08),
(130, 'Poland', '2 zlote', '1995', '', 'Polish złoty', 0.53),
(131, 'United Kingdom', '½ crown', '1949', '', 'Pound sterling (pre-decimal)', 1.42),
(132, 'Germany', '5 mark', '1975', '', 'German mark', 1.61),
(133, 'Israel', '½ lira', '1978', '', 'Israeli lira', 0.94),
(134, 'Germany', '2 mark', '1991', 'Franz Joseph Strauss. 40th Anniversary - Federal Republic (1949 - 1989)', 'German mark', 2.16),
(135, 'Greece', '10 drachmas', '1959', '', 'Greek drachma', 0.98),
(136, 'Indonesia', '2 rupiah', '1970', '', 'Indonesian rupiah', 1.33),
(137, 'Libya', '10 milliemes', '1965', '', 'Libyan pound', 1.06),
(138, 'Libya', '20 milliemes', '1965', '', 'Libyan pound', 1.27),
(139, 'Libya', '50 milliemes', '1965', '', 'Libyan pound', 1.97),
(140, 'Malta', '10 cents', '1972', '', 'Maltese lira', 0.45),
(141, 'San Marino', '500 lire', '1991', '', 'Sammarinese lira', 2.17),
(142, 'San Marino', '500 lire', '1994', '', 'Sammarinese lira', 1.79),
(143, 'Morocco', '50 francs', '1952', '', 'Moroccan franc', 1.30),
(144, 'Papua New Guinea', '1 kina', '1975', '', 'Papua New Guinean kina', 3.40),
(145, 'Poland', '5 zlotych', '1994', '', 'Polish złoty', 1.19),
(146, 'Mexico', '50 centavos', '1956', '', 'Mexican peso', 2.78),
(147, 'Mexico', '20 centavos', '1966', '', 'Mexican peso', 0.97),
(148, 'Papua New Guinea', '50 toea', '1991', 'South Pacific Games', 'Papua New Guinean kina', 3.82),
(149, 'San Marino', '200 lire', '1995', '', 'Sammarinese lira', 1.44),
(150, 'San Marino', '10 lire', '1974', '', 'Sammarinese lira', 1.03),
(151, 'San Marino', '20 lire', '1974', '', 'Sammarinese lira', 1.06),
(152, 'San Marino', '500 lire', '1990', 'Sixteen Centuries of History', 'Sammarinese lira', 1.98),
(153, 'San Marino', '500 lire', '1996', '', 'Sammarinese lira', 1.94),
(154, 'Portugal', '50 centavos', '1929', '', 'Portuguese escudo', 1.00),
(155, 'San Marino', '500 lire', '1992', '500th Anniversary - Discovery of America', 'Sammarinese lira', 1.93),
(156, 'San Marino', '10 centesimi', '1935', '', 'Sammarinese lira', 5.00),
(157, 'San Marino', '500 lire', '1995', '', 'Sammarinese lira', 1.97),
(158, 'Romania', '25 bani', '1955', '', 'Romanian leu', 0.99),
(159, 'United Kingdom', '1 shilling', '1953', 'English arms', ' three lions on crowned shield', 0.00),
(160, 'San Marino', '500 lire', '1988', 'Strengthening of San Marino', 'Sammarinese lira', 2.10),
(161, 'San Marino', '100 lire', '1976', 'Respublica', 'Sammarinese lira', 1.16),
(162, 'San Marino', '2 lire', '1974', '', 'Sammarinese lira', 1.01),
(163, 'San Marino', '5 lire', '1974', '', 'Sammarinese lira', 1.00),
(164, 'San Marino', '500 lire', '1986', 'Evolution of Technology', 'Sammarinese lira', 1.86),
(165, 'San Marino', '500 lire', '1984', 'Scientists', 'Sammarinese lira', 1.64),
(166, 'San Marino', '1 lira', '1974', '', 'Sammarinese lira', 1.00),
(167, 'San Marino', '500 lire', '1993', '', 'Sammarinese lira', 1.88),
(168, 'San Marino', '1000 lire', '1998', '', 'Sammarinese lira', 3.74),
(169, 'San Marino', '200 lire', '1994', '', 'Sammarinese lira', 1.49),
(170, 'San Marino', '1000 lire', '1997', '', 'Sammarinese lira', 3.69),
(171, 'San Marino', '1000 lire', '1999', '', 'Sammarinese lira', 3.97),
(172, 'San Marino', '100 lire', '1979', 'Institutional Organs of the State', 'Sammarinese lira', 1.27),
(173, 'San Marino', '200 lire', '1997', '', 'Sammarinese lira', 1.44),
(174, 'San Marino', '5 centesimi', '1935', '', 'Sammarinese lira', 5.19),
(175, 'San Marino', '500 lire', '1985', 'Fight Against Drugs', 'Sammarinese lira', 1.99),
(176, 'San Marino', '200 lire', '1996', '', 'Sammarinese lira', 1.75),
(177, 'San Marino', '500 lire', '1998', '', 'Sammarinese lira', 1.95),
(178, 'San Marino', '200 lire', '1981', 'Peace', 'Sammarinese lira', 1.30),
(179, 'San Marino', '200 lire', '1989', 'Sixteen Centuries of History', 'Sammarinese lira', 1.70),
(180, 'Switzerland', '1 franc', '1968', '', 'Swiss franc', 1.10),
(181, 'Spain', '100 pesetas', '1985', '', 'Spanish peseta', 2.89),
(182, 'Switzerland', '2 francs', '1969', '', 'Swiss franc', 2.18),
(183, 'Switzerland', '20 rappen', '1951', '', 'Swiss franc', 1.16),
(184, 'Switzerland', '1 franc', '1979', '', 'Swiss franc', 1.10),
(185, 'Switzerland', '20 rappen', '1955', '', 'Swiss franc', 0.91),
(186, 'Sweden', '1 krona', '1968', '', 'Swedish krona', 2.35),
(187, 'Spain', '100 pesetas', '1989', '', 'Spanish peseta', 1.66),
(188, 'Spain', '500 pesetas', '1987', '', 'Spanish peseta', 6.00),
(189, 'Spain', '500 pesetas', '1988', '', 'Spanish peseta', 2.10),
(190, 'Switzerland', '½ franc', '1957', '', 'Swiss franc', 2.50),
(191, 'Switzerland', '1 franc', '1964', '', 'Swiss franc', 3.16),
(192, 'Spain', '200 pesetas', '1995', 'Murillo and El Greco Paintings', 'Spanish peseta', 5.00),
(193, 'Spain', '100 pesetas', '1986', '', 'Spanish peseta', 1.12),
(194, 'Spain', '100 pesetas', '1995', 'FAO', 'Spanish peseta', 1.13),
(195, 'Sweden', '50 öre', '1944', '', 'Swedish krona', 2.18),
(196, 'Switzerland', '1 franc', '1992', '', 'Swiss franc', 1.11),
(197, 'Switzerland', '5 francs', '1984', '', 'Swiss franc', 5.42),
(198, 'Switzerland', '20 rappen', '1932', '', 'Swiss franc', 1.06),
(199, 'Switzerland', '10 rappen', '1949', '', 'Swiss franc', 1.05),
(200, 'Switzerland', '1 franc', '1971', '', 'Swiss franc', 1.10),
(201, 'Tunisia', '1 dinar', '1997', '', 'Tunisian dinar', 0.57),
(202, 'Switzerland', '2 francs', '1968', '', 'Swiss franc', 2.21),
(203, 'Switzerland', '5 francs', '1969', '', 'Swiss franc', 11.88),
(204, 'USA', '½ dollar', '1964', 'Kennedy Half Dollar', 'United States dollar', 8.04),
(205, 'Italy', '200 lire', '1981', 'FAO - World Food Day', 'Italian lira', 0.95),
(206, 'Italy', '100 lire', '1974', '100th Anniversary - Birth of Guglielmo Marconi', 'Italian lira', 0.85),
(207, 'Italy', '1 lira', '1954', '', 'Italian lira', 0.35),
(208, 'Italy', '100 lire', '1979', 'Food and Agricultural Organization of the United Nations', 'Italian lira', 0.99),
(209, 'Chile', '10 centavos', '1975', '', 'Chilean peso', 0.40),
(210, 'China', '1 jiao', '1998', '', 'Chinese yuan', 0.22),
(211, 'Brazil', '1000 reis', '1905', '400th Anniversary - Discovery of Brazil', 'Brazilian reis', 226.39),
(212, 'China', '2 jiao', '1981', '', 'Chinese yuan', 24.39),
(213, 'India', '2 paise', '1964', '', 'Indian rupee', 0.37),
(214, 'Brunei', '50 sen', '1988', '', 'Brunei dollar', 3.09),
(215, 'Saudi Arabia', '5 halalas', '1977', '', 'Saudi riyal', 0.54),
(216, 'Greenland', '1 krone', '1926', '', 'Danish krone', 20.01),
(217, 'Iceland', '50 aurar', '1981', '', 'Icelandic króna', 0.55),
(218, 'Madagascar', '5 francs', '1980', '', 'Malagasy ariary', 1.21),
(219, 'Afghanistan', '1 pul', '1930', '', 'Afghan afghani', 42.45),
(220, 'Armenia', '5 dram', '1994', '', 'Armenian dram', 0.43);

-- --------------------------------------------------------

--
-- Table structure for table `coin_user`
--

CREATE TABLE `coin_user` (
  `idUser` int(11) NOT NULL,
  `idCoin` int(11) NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `surname`) VALUES
('Davide', 'Colombi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coin_data`
--
ALTER TABLE `coin_data`
  ADD PRIMARY KEY (`idCoin`);

--
-- Indexes for table `coin_user`
--
ALTER TABLE `coin_user`
  ADD KEY `fk1_coinUser` (`idCoin`),
  ADD KEY `fk2_coinUser` (`idUser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coin_data`
--
ALTER TABLE `coin_data`
  MODIFY `idCoin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coin_user`
--
ALTER TABLE `coin_user`
  ADD CONSTRAINT `fk1_coinUser` FOREIGN KEY (`idCoin`) REFERENCES `coin_data` (`idCoin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2_coinUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- select coin_data.*, coin_user.quantity from coin_data inner join coin_user on coin_data.idCoin = coin_user.idCoin where coin_user.idUser = 1;