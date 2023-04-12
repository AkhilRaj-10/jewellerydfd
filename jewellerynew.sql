-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 10:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellerynew`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AdrID` int(100) NOT NULL,
  `UserId` int(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `Pincode` int(30) NOT NULL,
  `Area` varchar(500) NOT NULL,
  `Landmark` varchar(1000) NOT NULL,
  `Town` varchar(1000) NOT NULL,
  `state` varchar(200) NOT NULL,
  `Mob` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AdrID`, `UserId`, `fullName`, `Pincode`, `Area`, `Landmark`, `Town`, `state`, `Mob`) VALUES
(2, 4, 'Akhil raj', 68903, 'asdfasdfsdfasdfasd', 'near a bar', 'ernakulam', 'Kerala', 9400895067),
(3, 4, 'ammu', 234566, '62, Old No 31, South Boag Road', ' T Nagar', 'Chennai', 'Tamil Nadu', 5929302822),
(4, 4, 'd', 234566, '62, Old No 31, South Boag Road', ' T Nagar', 'Chennai', 'Tamil Nadu', 1234567899);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(100) NOT NULL,
  `UserId` int(100) NOT NULL,
  `ProFrk` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `UserId`, `ProFrk`) VALUES
(2, 4, 8),
(3, 1, 5),
(4, 5, 5),
(5, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `choose_jewellery`
--

CREATE TABLE `choose_jewellery` (
  `Id` int(110) NOT NULL,
  `productName` varchar(500) NOT NULL,
  `productDesp` varchar(500) NOT NULL,
  `type_product` varchar(100) NOT NULL,
  `productCount` int(100) NOT NULL,
  `current_price` int(100) NOT NULL,
  `offerprice` int(100) NOT NULL,
  `offer` int(100) NOT NULL,
  `MainImg` varchar(1000) NOT NULL,
  `Img1` varchar(1000) NOT NULL,
  `Img2` varchar(1000) NOT NULL,
  `Img3` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choose_jewellery`
--

INSERT INTO `choose_jewellery` (`Id`, `productName`, `productDesp`, `type_product`, `productCount`, `current_price`, `offerprice`, `offer`, `MainImg`, `Img1`, `Img2`, `Img3`) VALUES
(4, 'Carlton London', 'Gold-Plated layer Necklace', 'necklace', 44, 2000, 1100, 45, 'ServerImg/CarltonLondonGold-PlatedLayeredNecklace4_63d57396aae4e2.58456022.jpg', 'ServerImg/CarltonLondonGold-PlatedLayeredNecklace2_63d57396aa06c1.89948123.png', 'ServerImg/CarltonLondonGold-PlatedLayeredNecklace3_63d57396a95548.36088097.png', 'ServerImg/LondonLayeredNecklace1_63d57396a8a341.72112973.png'),
(5, 'Vembley', 'Set Of 8 Gold-Plated & CZ Stone- Studded Finger Rings', 'rings', 12, 1699, 1104, 35, 'ServerImg/VembleyGoldStuddedFingerRings4_63d576acab5c88.30528584.png', 'ServerImg/63d577_StuddedFingerRings3.png', 'ServerImg/CZStone-StuddedFingerRings2_63d576aca65f38.46921741.jpg', 'ServerImg/OxidisedGold-PlatedCZStone-StuddedFingerRings1_63d576aca58378.79051629.png'),
(6, ' MINUTIAE', 'Gold-Plated Brass Solitaire Layered Necklace', 'necklace', 45, 1999, 880, 56, 'ServerImg/63d601_MINUTIAEWomenGold1.png', 'ServerImg/MINUTIAEWomenGold4_63d600dcf09582.93281456.png', 'ServerImg/MINUTIAEWomenGold2_63d600dcefce70.10285429.png', 'ServerImg/63d601_MINUTIAEWomenGold7.png'),
(7, 'Carlton London', 'Rose Gold-Plated Layered Lariat Necklace', 'necklace', 45, 1295, 544, 58, 'ServerImg/CarltonLondonRoseGold-PlatedLayeredLariatNecklace3_63d602770f3d60.83944564.png', 'ServerImg/CarltonLondonRoseGold-PlatedLayeredLariatNecklace4_63d602770f0c37.52465984.png', 'ServerImg/CarltonLondonRoseGold-PlatedLayeredLariatNecklace2_63d602770ed435.27140665.png', 'ServerImg/CarltonLondonRoseGold-PlatedLayeredLariatNecklace1_63d602770e6289.59268223.png'),
(8, 'TOKYO TALKIES X rubans FASHION ACCESSORIES', 'Silver Plated Contemporary Drop Earrings', 'Earrings', 45, 2000, 1320, 34, 'ServerImg/63d603_TokyoTalkiesXRubans3.png', 'ServerImg/TokyoTalkiesXLayered1_63d603d71d4867.55933641.png', 'ServerImg/TokyoTalkiesXRubans3_63d603d71c7d99.15819763.png', 'ServerImg/CarltonLondonRoseGold-PlatedLayeredLariatNecklace3_63d603d71b8643.16945128.png'),
(9, 'OOMPH', 'Pink  Kundan & Pearl Floral Ethnic Drop Jhumka ', 'Earrings', 45, 1599, 879, 45, 'ServerImg/OOMPH-Jhumka7_63d60561c6cad4.33127833.png', 'ServerImg/PinkContemporaryJhumkasEarrings2_63d60561c64087.96455831.png', 'ServerImg/PinkContemporaryJhumkasEarrings1_63d60561c59134.84037519.png', 'ServerImg/Pink-Meenakari-Kundan-Drop-Jhumka-6_63d60561c4ef67.41696314.jpg'),
(10, 'EL REGALO', 'Women Gold-Toned White Oval Shaped Bangle Bracelet', 'Bracelets', 45, 2029, 1116, 45, 'ServerImg/ELREGALOWomenGoldBracelet4_63d60ced7ae462.54411144.png', 'ServerImg/ELREGALOWomenGoldBracelet3_63d60ced7a1484.85415806.png', 'ServerImg/ELREGALOWomenGoldBracelet2_63d60ced792db6.28715563.jpg', 'ServerImg/ELREGALOWomenGoldBracelet1_63d60ced785fa0.66924581.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Username`, `Email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin'),
(4, 'akhilraj', 'akhilraj25.com@gmail.com', 'akhilraj'),
(5, 'ramu', 'ramu@gmail.com', 'ramu1');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(100) NOT NULL,
  `UserFrk` int(122) NOT NULL,
  `ProFrk` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Id`, `Username`, `Email`, `Password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin'),
(4, 'akhilraj', 'akhilraj25.com@gmail.com', 'akhilraj'),
(5, 'ramu', 'ramu@gmail.com', 'ramu1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AdrID`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ProFrk` (`ProFrk`);

--
-- Indexes for table `choose_jewellery`
--
ALTER TABLE `choose_jewellery`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `UserFrk` (`UserFrk`),
  ADD KEY `ProFrk` (`ProFrk`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AdrID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `choose_jewellery`
--
ALTER TABLE `choose_jewellery`
  MODIFY `Id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`ProFrk`) REFERENCES `choose_jewellery` (`Id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ProFrk`) REFERENCES `choose_jewellery` (`Id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`UserFrk`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
