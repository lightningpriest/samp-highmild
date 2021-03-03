-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 02:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `highmild`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`ID`, `Username`, `Password`, `RegisterDate`, `LoginDate`, `IP`) VALUES
(5, 'Alys', '1A5D749DE194CEC364775569EB142F62DEC653951BBDF89826D0C6183FC1FDB35C8E971A0DB3FC92A15F5F61C2D8C1930CC819EB6FCE51262CC4764BE0BF78A9', '11/02/2021, 21:38', '13/02/2021, 16:52', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `arrestID` int(11) NOT NULL,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backpackitems`
--

CREATE TABLE `backpackitems` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backpacks`
--

CREATE TABLE `backpacks` (
  `backpackID` int(12) NOT NULL,
  `backpackPlayer` int(12) DEFAULT 0,
  `backpackX` float DEFAULT 0,
  `backpackY` float DEFAULT 0,
  `backpackZ` float DEFAULT 0,
  `backpackInterior` int(12) DEFAULT 0,
  `backpackWorld` int(12) DEFAULT 0,
  `backpackHouse` int(12) DEFAULT 0,
  `backpackVehicle` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billboards`
--

CREATE TABLE `billboards` (
  `bbID` int(12) NOT NULL,
  `bbExists` int(12) DEFAULT 0,
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT 0,
  `bbPrice` int(12) NOT NULL DEFAULT 0,
  `bbRange` int(12) DEFAULT 10,
  `bbPosX` float DEFAULT 0,
  `bbPosY` float DEFAULT 0,
  `bbPosZ` float DEFAULT 0,
  `bbMessage` varchar(230) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billboards`
--

INSERT INTO `billboards` (`bbID`, `bbExists`, `bbName`, `bbOwner`, `bbPrice`, `bbRange`, `bbPosX`, `bbPosY`, `bbPosZ`, `bbMessage`) VALUES
(1, 0, 'Decker Billboard', 7, -1, 10, 997.031, 488.31, 20.2343, '');

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `bizID` int(12) NOT NULL,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT 0,
  `bizType` int(12) DEFAULT 0,
  `bizPrice` int(12) DEFAULT 0,
  `bizPosX` float DEFAULT 0,
  `bizPosY` float DEFAULT 0,
  `bizPosZ` float DEFAULT 0,
  `bizPosA` float DEFAULT 0,
  `bizIntX` float DEFAULT 0,
  `bizIntY` float DEFAULT 0,
  `bizIntZ` float DEFAULT 0,
  `bizIntA` float DEFAULT 0,
  `bizInterior` int(12) DEFAULT 0,
  `bizExterior` int(12) DEFAULT 0,
  `bizExteriorVW` int(12) DEFAULT 0,
  `bizLocked` int(4) DEFAULT 0,
  `bizVault` int(12) DEFAULT 0,
  `bizProducts` int(12) DEFAULT 0,
  `bizPrice1` int(12) DEFAULT 0,
  `bizPrice2` int(12) DEFAULT 0,
  `bizPrice3` int(12) DEFAULT 0,
  `bizPrice4` int(12) DEFAULT 0,
  `bizPrice5` int(12) DEFAULT 0,
  `bizPrice6` int(12) DEFAULT 0,
  `bizPrice7` int(12) DEFAULT 0,
  `bizPrice8` int(12) DEFAULT 0,
  `bizPrice9` int(12) DEFAULT 0,
  `bizPrice10` int(12) DEFAULT 0,
  `bizSpawnX` float DEFAULT 0,
  `bizSpawnY` float DEFAULT 0,
  `bizSpawnZ` float DEFAULT 0,
  `bizSpawnA` float DEFAULT 0,
  `bizDeliverX` float DEFAULT 0,
  `bizDeliverY` float DEFAULT 0,
  `bizDeliverZ` float DEFAULT 0,
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT 0,
  `bizPrice12` int(12) DEFAULT 0,
  `bizPrice13` int(12) DEFAULT 0,
  `bizPrice14` int(12) DEFAULT 0,
  `bizPrice15` int(12) DEFAULT 0,
  `bizPrice16` int(12) DEFAULT 0,
  `bizPrice17` int(12) DEFAULT 0,
  `bizPrice18` int(12) DEFAULT 0,
  `bizPrice19` int(12) DEFAULT 0,
  `bizPrice20` int(12) DEFAULT 0,
  `bizShipment` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `carID` int(12) NOT NULL,
  `carModel` int(12) DEFAULT 0,
  `carOwner` int(12) DEFAULT 0,
  `carPosX` float DEFAULT 0,
  `carPosY` float DEFAULT 0,
  `carPosZ` float DEFAULT 0,
  `carPosR` float DEFAULT 0,
  `carColor1` int(12) DEFAULT 0,
  `carColor2` int(12) DEFAULT 0,
  `carPaintjob` int(12) DEFAULT -1,
  `carLocked` int(4) DEFAULT 0,
  `carMod1` int(12) DEFAULT 0,
  `carMod2` int(12) DEFAULT 0,
  `carMod3` int(12) DEFAULT 0,
  `carMod4` int(12) DEFAULT 0,
  `carMod5` int(12) DEFAULT 0,
  `carMod6` int(12) DEFAULT 0,
  `carMod7` int(12) DEFAULT 0,
  `carMod8` int(12) DEFAULT 0,
  `carMod9` int(12) DEFAULT 0,
  `carMod10` int(12) DEFAULT 0,
  `carMod11` int(12) DEFAULT 0,
  `carMod12` int(12) DEFAULT 0,
  `carMod13` int(12) DEFAULT 0,
  `carMod14` int(12) DEFAULT 0,
  `carImpounded` int(12) DEFAULT 0,
  `carWeapon1` int(12) DEFAULT 0,
  `carAmmo1` int(12) DEFAULT 0,
  `carWeapon2` int(12) DEFAULT 0,
  `carAmmo2` int(12) DEFAULT 0,
  `carWeapon3` int(12) DEFAULT 0,
  `carAmmo3` int(12) DEFAULT 0,
  `carWeapon4` int(12) DEFAULT 0,
  `carAmmo4` int(12) DEFAULT 0,
  `carWeapon5` int(12) DEFAULT 0,
  `carAmmo5` int(12) DEFAULT 0,
  `carImpoundPrice` int(12) DEFAULT 0,
  `carFaction` int(12) DEFAULT 0,
  `carSiren` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carstorage`
--

CREATE TABLE `carstorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Created` int(4) DEFAULT 0,
  `Gender` int(4) DEFAULT 0,
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int(12) DEFAULT 0,
  `Glasses` int(12) DEFAULT 0,
  `Hat` int(12) DEFAULT 0,
  `Bandana` int(12) DEFAULT 0,
  `Vest` int(12) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `Interior` int(12) DEFAULT 0,
  `World` int(12) DEFAULT 0,
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Hospital` int(12) DEFAULT -1,
  `HospitalInt` int(12) DEFAULT 0,
  `Money` int(12) DEFAULT 0,
  `BankMoney` int(12) DEFAULT 0,
  `OwnsBillboard` int(12) DEFAULT -1,
  `Savings` int(12) DEFAULT 0,
  `Admin` int(12) DEFAULT 0,
  `JailTime` int(12) DEFAULT 0,
  `Muted` int(4) DEFAULT 0,
  `CreateDate` int(12) DEFAULT 0,
  `LastLogin` int(12) DEFAULT 0,
  `Helper` int(4) DEFAULT 0,
  `Gun1` int(12) DEFAULT 0,
  `Gun2` int(12) DEFAULT 0,
  `Gun3` int(12) DEFAULT 0,
  `Gun4` int(12) DEFAULT 0,
  `Gun5` int(12) DEFAULT 0,
  `Gun6` int(12) DEFAULT 0,
  `Gun7` int(12) DEFAULT 0,
  `Gun8` int(12) DEFAULT 0,
  `Gun9` int(12) DEFAULT 0,
  `Gun10` int(12) DEFAULT 0,
  `Gun11` int(12) DEFAULT 0,
  `Gun12` int(12) DEFAULT 0,
  `Gun13` int(12) DEFAULT 0,
  `Ammo1` int(12) DEFAULT 0,
  `Ammo2` int(12) DEFAULT 0,
  `Ammo3` int(12) DEFAULT 0,
  `Ammo4` int(12) DEFAULT 0,
  `Ammo5` int(12) DEFAULT 0,
  `Ammo6` int(12) DEFAULT 0,
  `Ammo7` int(12) DEFAULT 0,
  `Ammo8` int(12) DEFAULT 0,
  `Ammo9` int(12) DEFAULT 0,
  `Ammo10` int(12) DEFAULT 0,
  `Ammo11` int(12) DEFAULT 0,
  `Ammo12` int(12) DEFAULT 0,
  `Ammo13` int(12) DEFAULT 0,
  `House` int(12) DEFAULT -1,
  `Business` int(12) DEFAULT -1,
  `Phone` int(12) DEFAULT 0,
  `Lottery` int(12) DEFAULT 0,
  `Hunger` int(12) DEFAULT 100,
  `Thirst` int(12) DEFAULT 100,
  `PlayingHours` int(12) DEFAULT 0,
  `Minutes` int(12) DEFAULT 0,
  `ArmorStatus` float DEFAULT 0,
  `Entrance` int(12) DEFAULT 0,
  `Job` int(12) DEFAULT 0,
  `Faction` int(12) DEFAULT -1,
  `FactionRank` int(12) DEFAULT 0,
  `FactionDivision` int(12) DEFAULT 0,
  `Prisoned` int(4) DEFAULT 0,
  `Warrants` int(12) DEFAULT 0,
  `Injured` int(4) DEFAULT 0,
  `Health` float DEFAULT 0,
  `Channel` int(12) DEFAULT 0,
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT 0,
  `Warnings` int(12) DEFAULT 0,
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `ForumName` varchar(30) DEFAULT NULL,
  `Donator` int(12) DEFAULT 0,
  `FightStyle` int(11) NOT NULL DEFAULT 4,
  `MaskID` int(12) DEFAULT 0,
  `FactionMod` int(12) DEFAULT 0,
  `SwatMember` int(12) DEFAULT 0,
  `Capacity` int(12) DEFAULT 35,
  `Channel2` int(12) DEFAULT 0,
  `Channel3` int(12) DEFAULT 0,
  `Channel4` int(12) DEFAULT 0,
  `AdminHide` int(4) DEFAULT 0,
  `LotteryB` int(11) DEFAULT NULL,
  `SpawnPoint` int(11) NOT NULL DEFAULT 2,
  `Clothes1` int(12) DEFAULT 0,
  `Clothes2` int(12) DEFAULT 0,
  `Clothes3` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `Username`, `Character`, `Created`, `Gender`, `Birthdate`, `Origin`, `Skin`, `Glasses`, `Hat`, `Bandana`, `Vest`, `PosX`, `PosY`, `PosZ`, `PosA`, `Interior`, `World`, `GlassesPos`, `HatPos`, `BandanaPos`, `Hospital`, `HospitalInt`, `Money`, `BankMoney`, `OwnsBillboard`, `Savings`, `Admin`, `JailTime`, `Muted`, `CreateDate`, `LastLogin`, `Helper`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `House`, `Business`, `Phone`, `Lottery`, `Hunger`, `Thirst`, `PlayingHours`, `Minutes`, `ArmorStatus`, `Entrance`, `Job`, `Faction`, `FactionRank`, `FactionDivision`, `Prisoned`, `Warrants`, `Injured`, `Health`, `Channel`, `Accent`, `Bleeding`, `Warnings`, `Warn1`, `Warn2`, `ForumName`, `Donator`, `FightStyle`, `MaskID`, `FactionMod`, `SwatMember`, `Capacity`, `Channel2`, `Channel3`, `Channel4`, `AdminHide`, `LotteryB`, `SpawnPoint`, `Clothes1`, `Clothes2`, `Clothes3`) VALUES
(7, 'Alys', 'Decker_Westwood', 1, 1, '12/12/1992', 'Samoan', 2, 0, 0, 0, 0, 997.496, 488.849, 20.2343, 166.224, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, -1, 500, 750, -1, 0, 6, 0, 0, 1613054323, 1613209944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 100, 0, 3, 0, -1, 2, -1, 0, 0, 0, 0, 0, 100, 0, NULL, 0, 0, '', '', '', 0, 4, 64202, 0, 0, 35, 0, 0, 0, 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `crateID` int(12) NOT NULL,
  `crateType` int(12) DEFAULT 0,
  `crateX` float DEFAULT 0,
  `crateY` float DEFAULT 0,
  `crateZ` float DEFAULT 0,
  `crateA` float DEFAULT 0,
  `crateInterior` int(12) DEFAULT 0,
  `crateWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealervehicles`
--

CREATE TABLE `dealervehicles` (
  `ID` int(12) DEFAULT 0,
  `vehID` int(12) NOT NULL,
  `vehModel` int(12) DEFAULT 0,
  `vehPrice` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detectors`
--

CREATE TABLE `detectors` (
  `detectorID` int(12) NOT NULL,
  `detectorX` float DEFAULT 0,
  `detectorY` float DEFAULT 0,
  `detectorZ` float DEFAULT 0,
  `detectorAngle` float DEFAULT 0,
  `detectorInterior` int(12) DEFAULT 0,
  `detectorWorld` int(12) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(12) DEFAULT 0,
  `itemWorld` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  `itemAmmo` int(12) DEFAULT 0,
  `itemWeapon` int(12) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `entranceID` int(12) NOT NULL,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT 0,
  `entrancePosX` float DEFAULT 0,
  `entrancePosY` float DEFAULT 0,
  `entrancePosZ` float DEFAULT 0,
  `entrancePosA` float DEFAULT 0,
  `entranceIntX` float DEFAULT 0,
  `entranceIntY` float DEFAULT 0,
  `entranceIntZ` float DEFAULT 0,
  `entranceIntA` float DEFAULT 0,
  `entranceInterior` int(12) DEFAULT 0,
  `entranceExterior` int(12) DEFAULT 0,
  `entranceExteriorVW` int(12) DEFAULT 0,
  `entranceType` int(12) DEFAULT 0,
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT 0,
  `entranceCustom` int(4) DEFAULT 0,
  `entranceWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`entranceID`, `entranceName`, `entranceIcon`, `entrancePosX`, `entrancePosY`, `entrancePosZ`, `entrancePosA`, `entranceIntX`, `entranceIntY`, `entranceIntZ`, `entranceIntA`, `entranceInterior`, `entranceExterior`, `entranceExteriorVW`, `entranceType`, `entrancePass`, `entranceLocked`, `entranceCustom`, `entranceWorld`) VALUES
(63, 'Palomino Bank', 0, 2303.83, -16.1098, 26.4843, 265.686, 1447.93, 1394.89, 14.2061, 292.415, 0, 0, 0, 2, '', 0, 0, 0),
(66, 'Montgomery Hospital', 0, 1241.38, 325.882, 19.7555, 157.295, 1265.9, -1291.48, 1061.1, 88.1144, 0, 0, 0, 0, '', 0, 0, 7066),
(67, 'Montgomery Police Station', 30, 1273.2, 238.575, 19.8507, 68.9772, 1273.2, 238.575, 10019.9, 0, 0, 0, 0, 0, '', 0, 0, 7067),
(68, 'Fishing Store', 0, 2154.39, -105.104, 2.9028, 209.481, 1329.01, 1573.02, 3001.09, 267.448, 0, 0, 0, 0, '', 0, 0, 7068);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` int(12) DEFAULT 0,
  `factionType` int(12) DEFAULT 0,
  `factionRanks` int(12) DEFAULT 0,
  `factionDivisions` int(12) DEFAULT 0,
  `factionLockerX` float DEFAULT 0,
  `factionLockerY` float DEFAULT 0,
  `factionLockerZ` float DEFAULT 0,
  `factionLockerInt` int(12) DEFAULT 0,
  `factionLockerWorld` int(12) DEFAULT 0,
  `factionWeapon1` int(12) DEFAULT 0,
  `factionAmmo1` int(12) DEFAULT 0,
  `factionWeapon2` int(12) DEFAULT 0,
  `factionAmmo2` int(12) DEFAULT 0,
  `factionWeapon3` int(12) DEFAULT 0,
  `factionAmmo3` int(12) DEFAULT 0,
  `factionWeapon4` int(12) DEFAULT 0,
  `factionAmmo4` int(12) DEFAULT 0,
  `factionWeapon5` int(12) DEFAULT 0,
  `factionAmmo5` int(12) DEFAULT 0,
  `factionWeapon6` int(12) DEFAULT 0,
  `factionAmmo6` int(12) DEFAULT 0,
  `factionWeapon7` int(12) DEFAULT 0,
  `factionAmmo7` int(12) DEFAULT 0,
  `factionWeapon8` int(12) DEFAULT 0,
  `factionAmmo8` int(12) DEFAULT 0,
  `factionWeapon9` int(12) DEFAULT 0,
  `factionAmmo9` int(12) DEFAULT 0,
  `factionWeapon10` int(12) DEFAULT 0,
  `factionAmmo10` int(12) DEFAULT 0,
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionDivision1` varchar(32) DEFAULT NULL,
  `factionDivision2` varchar(32) DEFAULT NULL,
  `factionDivision3` varchar(32) DEFAULT NULL,
  `factionDivision4` varchar(32) DEFAULT NULL,
  `factionDivision5` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT 0,
  `factionSkin2` int(12) DEFAULT 0,
  `factionSkin3` int(12) DEFAULT 0,
  `factionSkin4` int(12) DEFAULT 0,
  `factionSkin5` int(12) DEFAULT 0,
  `factionSkin6` int(12) DEFAULT 0,
  `factionSkin7` int(12) DEFAULT 0,
  `factionSkin8` int(12) DEFAULT 0,
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT 0,
  `furnitureID` int(12) NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT 0,
  `furnitureX` float DEFAULT 0,
  `furnitureY` float DEFAULT 0,
  `furnitureZ` float DEFAULT 0,
  `furnitureRX` float DEFAULT 0,
  `furnitureRY` float DEFAULT 0,
  `furnitureRZ` float DEFAULT 0,
  `furnitureType` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL,
  `garbageModel` int(12) DEFAULT 1236,
  `garbageCapacity` int(12) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageA` float DEFAULT 0,
  `garbageInterior` int(12) DEFAULT 0,
  `garbageWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 0,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `ID` int(12) DEFAULT 0,
  `locationID` int(12) NOT NULL,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT 0,
  `locationY` float DEFAULT 0,
  `locationZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL,
  `houseOwner` int(12) DEFAULT 0,
  `housePrice` int(12) DEFAULT 0,
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT 0,
  `housePosY` float DEFAULT 0,
  `housePosZ` float DEFAULT 0,
  `housePosA` float DEFAULT 0,
  `houseIntX` float DEFAULT 0,
  `houseIntY` float DEFAULT 0,
  `houseIntZ` float DEFAULT 0,
  `houseIntA` float DEFAULT 0,
  `houseInterior` int(12) DEFAULT 0,
  `houseExterior` int(12) DEFAULT 0,
  `houseExteriorVW` int(12) DEFAULT 0,
  `houseLocked` int(4) DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0,
  `houseMoney` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `impoundlots`
--

CREATE TABLE `impoundlots` (
  `impoundID` int(12) NOT NULL,
  `impoundLotX` float DEFAULT 0,
  `impoundLotY` float DEFAULT 0,
  `impoundLotZ` float DEFAULT 0,
  `impoundReleaseX` float DEFAULT 0,
  `impoundReleaseY` float DEFAULT 0,
  `impoundReleaseZ` float DEFAULT 0,
  `impoundReleaseInt` int(12) DEFAULT 0,
  `impoundReleaseWorld` int(12) DEFAULT 0,
  `impoundReleaseA` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT 0,
  `invID` int(12) NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT 0,
  `invQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(3, 228, 'GPS System', 18875, 1),
(3, 229, 'Cocaine Seeds', 10, 61),
(3, 230, 'Marijuana Seeds', 10, 151),
(3, 231, 'Heroin Seeds', 10, 21),
(3, 232, 'Portable Radio', 18868, 1),
(3, 233, 'Water Bottle', 2958, 1),
(3, 237, 'Component', 100, 1705),
(3, 238, 'Fishing Bait', 1575, 44),
(3, 239, 'Fishing Rod', 1575, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(12) NOT NULL,
  `jobPosX` float DEFAULT 0,
  `jobPosY` float DEFAULT 0,
  `jobPosZ` float DEFAULT 0,
  `jobPointX` float DEFAULT 0,
  `jobPointY` float DEFAULT 0,
  `jobPointZ` float DEFAULT 0,
  `jobDeliverX` float DEFAULT 0,
  `jobDeliverY` float DEFAULT 0,
  `jobDeliverZ` float DEFAULT 0,
  `jobInterior` int(12) DEFAULT 0,
  `jobWorld` int(12) DEFAULT 0,
  `jobType` int(12) DEFAULT 0,
  `jobPointInt` int(12) DEFAULT 0,
  `jobPointWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namechanges`
--

CREATE TABLE `namechanges` (
  `ID` int(12) NOT NULL,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plantID` int(12) NOT NULL,
  `plantType` int(12) DEFAULT 0,
  `plantDrugs` int(12) DEFAULT 0,
  `plantX` float DEFAULT 0,
  `plantY` float DEFAULT 0,
  `plantZ` float DEFAULT 0,
  `plantA` float DEFAULT 0,
  `plantInterior` int(12) DEFAULT 0,
  `plantWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pumps`
--

CREATE TABLE `pumps` (
  `ID` int(12) DEFAULT 0,
  `pumpID` int(12) NOT NULL,
  `pumpPosX` float DEFAULT 0,
  `pumpPosY` float DEFAULT 0,
  `pumpPosZ` float DEFAULT 0,
  `pumpPosA` float DEFAULT 0,
  `pumpFuel` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT 0,
  `ticketID` int(12) NOT NULL,
  `ticketFee` int(12) DEFAULT 0,
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorType` int(12) DEFAULT 0,
  `vendorX` float DEFAULT 0,
  `vendorY` float DEFAULT 0,
  `vendorZ` float DEFAULT 0,
  `vendorA` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warrants`
--

CREATE TABLE `warrants` (
  `ID` int(12) NOT NULL,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`arrestID`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- Indexes for table `backpackitems`
--
ALTER TABLE `backpackitems`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`backpackID`);

--
-- Indexes for table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`bbID`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`bizID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carID`);

--
-- Indexes for table `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`crateID`);

--
-- Indexes for table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  ADD PRIMARY KEY (`vehID`);

--
-- Indexes for table `detectors`
--
ALTER TABLE `detectors`
  ADD PRIMARY KEY (`detectorID`);

--
-- Indexes for table `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`entranceID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Indexes for table `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Indexes for table `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Indexes for table `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD PRIMARY KEY (`impoundID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- Indexes for table `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `arrestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `backpackitems`
--
ALTER TABLE `backpackitems`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backpacks`
--
ALTER TABLE `backpacks`
  MODIFY `backpackID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `bbID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `bizID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `carID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `crateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  MODIFY `vehID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `detectors`
--
ALTER TABLE `detectors`
  MODIFY `detectorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `entranceID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `locationID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `impoundID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warrants`
--
ALTER TABLE `warrants`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
