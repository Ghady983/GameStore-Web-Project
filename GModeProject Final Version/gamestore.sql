-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 10:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Wallet` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Is_Admin` tinyint(1) NOT NULL DEFAULT 0,
  `Account_Pfp` varchar(255) NOT NULL DEFAULT 'base_pfp.jpg',
  `Token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `First_Name`, `Last_Name`, `Email`, `Username`, `Wallet`, `Password`, `Is_Admin`, `Account_Pfp`, `Token`) VALUES
(4, 'Ghady', 'Saba', 'ghady@saba.com', 'ghadysaba', 1, '202cb962ac59075b964b07152d234b70', 0, '12.jpg', 'ecd195e76369eab9c306f660f149df93ded2667e'),
(5, 'Christian', 'Hajal', 'christian@hajal.com', 'christhajal', 8, '81dc9bdb52d04dc20036dbd8313ed055', 0, '12.jpg', ''),
(6, 'Jowey', 'Moussa', 'jowey@moussa.com', 'joweymoussa', 12, 'c20ad4d76fe97759aa27a0c99bff6710', 0, '12.jpg', ''),
(21, 'The Admin', 'Yes', '1@1.com', 'theadmin', 2147483369, '9bf31c7ff062936a96d3c8bd1f8f2ff3', 1, 'Untitled.jpg', 'e72b4a84ee9ee2739456ef37b41f90c165e1b96b'),
(23, 'New', 'Account', 'new@acc.com', 'newacc', 0, '7694f4a66316e53c8cdd9d9954bd611d', 0, 'f30ed6622beb87cee5f64f4e04e08fdb95479409.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(1, 'Action'),
(2, 'Simulation'),
(3, 'Adventure'),
(4, 'OpenWorld');

-- --------------------------------------------------------

--
-- Table structure for table `category-game`
--

CREATE TABLE `category-game` (
  `Game_cg_ID` int(11) NOT NULL,
  `Category_cg_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category-game`
--

INSERT INTO `category-game` (`Game_cg_ID`, `Category_cg_ID`) VALUES
(0, 1),
(5, 1),
(5, 3),
(5, 4),
(7, 1),
(10, 1),
(10, 2),
(11, 2),
(11, 4),
(12, 1),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(17, 1),
(17, 4),
(18, 2),
(20, 1),
(20, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 3),
(26, 4),
(27, 1),
(27, 2),
(27, 4),
(41, 1),
(41, 4),
(43, 1),
(43, 3),
(44, 1),
(44, 2),
(46, 1),
(46, 2),
(46, 3),
(46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `Game_ID` int(11) NOT NULL,
  `Game_Title` varchar(255) NOT NULL,
  `Game_Price` int(11) NOT NULL,
  `Game_Poster` varchar(255) NOT NULL DEFAULT 'base.jpg',
  `Rating` tinyint(4) NOT NULL DEFAULT 0,
  `Game_wallpaper` varchar(255) NOT NULL DEFAULT 'base_wall.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`Game_ID`, `Game_Title`, `Game_Price`, `Game_Poster`, `Rating`, `Game_wallpaper`) VALUES
(5, 'The Last Of Us', 13, 'thelastofusp.jpg', 50, 'theLastOfUs.jpg'),
(7, 'Call Of Duty Black Ops ', 10, 'codp.jpg', 45, 'callOfDuty.jpg'),
(8, 'Gta V ', 17, 'gtavp.jpg', 40, 'gtaV.jpg'),
(9, 'Need For Speed', 14, 'nfsp.jpg', 40, 'needForSpeed.jpg'),
(10, 'Battlefield', 16, 'battlefieldp.jpg', 70, 'battlefield.jpg'),
(11, 'Gran Turismo', 12, 'granturismop.jpg', 80, 'granTurismo.jpg'),
(12, 'Uncharted', 17, 'unchartedp.jpg', 90, 'uncharted.jpg'),
(13, 'The Amazing Spiderman', 15, 'spidermanp.jpg', 80, 'theAmazingSpiderman.jpg'),
(14, 'Age of Empires II: The Conquerors', 3, 'aoep.jpg', 0, 'ageOfEmpire.jpg'),
(17, 'Amnesia: A Machine for Pigs', 4, 'amnesiap.jpg', 0, 'amnesia.jpg'),
(18, 'Asphalt 8: Airborne', 3, 'asphalt8p.jpg', 0, 'asphalt8.jpg'),
(20, 'Apex Legends', 4, 'apexlegendsp.jpg', 0, 'apexLegends.jpg'),
(22, 'The Maze', 1, 'base.jpg', 0, 'theMaze.jpg'),
(26, 'ARK : Survival Evolved', 5, 'ark.jpg', 0, 'ark.jpg'),
(27, 'BloodBorne', 10, 'bloodborne.jpg', 0, 'bloodborne.jpg'),
(28, 'Bloons Td 6', 2, 'bloonstd.jpg', 0, 'bloonstd.jpg'),
(29, 'Darks Souls', 15, 'darksouls.jpg', 0, 'darksouls.jpg'),
(30, 'Fallout', 20, 'fallout.jpg', 0, 'fallout.jpg'),
(31, 'Harry Potter: Hogwarts Legacy', 13, 'hogwarts.jpg', 0, 'hogwarts.jpg'),
(32, 'Hollow Knight', 3, 'hollowknight.jpg', 0, 'hollowknight.jpg'),
(33, 'Minecraft', 10, 'minecraft.jpg', 0, 'minecraft.jpg'),
(34, 'Need For Speed: Unbound', 12, 'nfsunbond.jpg', 0, 'nfsunbond.jpg'),
(35, 'Raft', 7, 'raft.jpg', 0, 'raft.jpg'),
(36, 'Red Dead Redemption 2', 23, 'rdr.jpg', 0, 'rdr.jpg'),
(37, 'Resident Evil', 10, 'residentevil.jpg', 0, 'residentevil.jpg'),
(38, 'Sekiro', 25, 'sekiro.jpg', 0, 'sekiro.jpg'),
(39, 'The Elder Scrolls V: Skyrim', 25, 'skyrim.jpg', 0, 'skyrim.jpg'),
(40, 'SpeedRunners', 2, 'speedrunners.jpg', 0, 'speedrunners.jpg'),
(41, 'Spiderman : Miles Morales', 20, 'spidermanmilesmorales.jpg', 0, 'spidermanmilesmorales.jpg'),
(42, 'Splatoon', 13, 'splatoon.jpg', 0, 'splatoon.jpg'),
(43, 'Team Fortress 2', 8, 'tf2.jpg', 0, 'tf2.jpg'),
(44, 'War Thunder', 13, 'warthunder.jpg', 0, 'warthunder.jpg'),
(45, 'World Of Tanks', 1, 'worldoftanks.jpg', 0, 'worldoftanks.jpg'),
(46, 'Yu Gi Oh', 7, 'yugioh.jpg', 0, 'yugioh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `Game_lib_id` int(11) NOT NULL,
  `Account_lib_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`Game_lib_id`, `Account_lib_id`) VALUES
(5, 4),
(5, 21),
(7, 21),
(8, 21),
(9, 21),
(10, 21),
(11, 21),
(12, 21),
(13, 4),
(13, 21),
(14, 21),
(17, 21),
(18, 5),
(18, 21),
(20, 5),
(20, 21),
(22, 4),
(22, 21),
(26, 21),
(27, 21),
(28, 21),
(29, 21),
(34, 21),
(36, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `category-game`
--
ALTER TABLE `category-game`
  ADD PRIMARY KEY (`Game_cg_ID`,`Category_cg_ID`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`Game_ID`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`Game_lib_id`,`Account_lib_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `Game_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
