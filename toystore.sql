-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2024 at 12:10 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarmenti_toystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custnum` int(9) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custnum`, `username`, `password`, `cname`, `email`) VALUES
(1, 'beth', '$2y$10$aaK.jTCj1AGImh9/yp.EPeyMoQh3rOeKC8/wFF6cpHSRdMF6C3QBu', 'Beth Sanders', 'beth@gmail.com'),
(2, 'ldipippo', '$2y$10$p8/uNyW/VpfF4qjXAkoc1OTBgLz2QjwmvMmEccvHASIYornKvH3Li', 'Lisa DiPippo', 'dipippo@yahoo.com'),
(3, 'maizy', '$2y$10$IVjbRXfuO4.p2d8Q3oOM.eqoFM9NUgUTGeG5UfHQHZ/0ykuJ49zLG', 'Maizy Merlot', 'maizy@mzy.com'),
(4, 'dufus', '$2y$10$ec8hPkTb6U.gogYBvXphaO.Q.UeAY.pJ6cJaq0G2ML4Mmo2wB/xbi', 'Dufus Duzane', 'dufus@hotmail.com'),
(5, 'dove', '$2y$10$HZEgXv7qrul/NyggARfcquzvbGdn0CSgY1QyCqPV6e3uM8oLRVYda', 'Dave Walker', 'walker@dave.com'),
(6, 'alice', '$2y$10$yxfS5MnYwvmLF5Gq5vFKAub1uiYxGK1/RZj1CaYn9JMP4vKXqiF5q', 'Alice Jones', 'jones@alice.com'),
(25, 'abcdefghij', '$2y$10$1BcnB3MI9kcRubCG0Joyr.d4KKEfGJ3nAzix4hvsIbBYrT8lMogVm', 'Al Phabet', 'al.aol.com');

-- --------------------------------------------------------

--
-- Table structure for table `manuf`
--

CREATE TABLE `manuf` (
  `manid` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Street` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `State` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ZipCode` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manuf`
--

INSERT INTO `manuf` (`manid`, `name`, `Street`, `City`, `State`, `ZipCode`, `phone`, `contact`) VALUES
('0001', 'Matell', '246 Main St', 'Lollipop', 'NY', '11551', '843-999-9999', 'Joe Cherry    '),
('0002', 'First Years', '123 Oak Blvd', 'Liquorice', 'PA', '14554', '999-333-4030', 'Joe Tangerine  '),
('0003', 'Playschool', '332 Green Way', 'Chocolate', 'NY', '11552', '003-949-3942', 'Joe Lava'),
('0004', 'Alexanders', '9 Fifth Ave', 'New York', 'NY', '10001', '932-028-3758', 'Joe Purple  '),
('0005', 'Schwartz Toys', '56 Lightning Circle', 'Fenway City', 'MA', '02111', '832-392-3942', 'Joe Stoe '),
('0006', 'Phillips Plays', '83 West Elm St', 'Candyland', 'NM', '45548', '323-496-8263', 'Joe Foe  ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordernum` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `custnum` int(11) DEFAULT NULL,
  `toynum` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_ordered` date DEFAULT NULL,
  `deliv_addr` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deliv` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordernum`, `custnum`, `toynum`, `quantity`, `date_ordered`, `deliv_addr`, `date_deliv`) VALUES
('0001', 1, '0001', 1, '2014-01-01', 'Home', '0000-00-00'),
('0002', 1, '0002', 1, '2013-11-01', 'Home', '2013-12-01'),
('0003', 2, '0003', 1, '2013-11-21', 'Home', '2013-12-11'),
('0004', 3, '0003', 1, '2013-08-31', 'Home', '2013-09-11'),
('0005', 4, '0006', 1, '2013-10-31', 'Home', '2013-11-11'),
('0006', 5, '0002', 1, '2013-05-15', 'Home', '2013-06-01'),
('0007', 3, '0001', 1, '2014-01-10', 'Home', '0000-00-00'),
('0008', 4, '0009', 1, '2013-09-10', 'Home', '2013-10-10'),
('0009', 2, '0001', 1, '2013-09-05', 'Home', '2013-10-10'),
('0010', 6, '0008', 1, '2014-02-05', 'Home', '0000-00-00'),
('0011', 1, '0003', 1, '2013-01-15', 'Home', '0000-00-00'),
('0012', 1, '0003', 1, '2013-01-15', 'Home', '2014-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `toy`
--

CREATE TABLE `toy` (
  `toynum` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manid` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `agerange` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soldytd` int(11) DEFAULT NULL,
  `numinstock` int(11) DEFAULT NULL,
  `imgSrc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toy`
--

INSERT INTO `toy` (`toynum`, `name`, `manid`, `price`, `agerange`, `soldytd`, `numinstock`, `imgSrc`, `description`) VALUES
('0001', 'Farm', '0001', 50, '2-6', 100, 300, 'https://m.media-amazon.com/images/I/71otpMmWakL._AC_UF894,1000_QL80_.jpg', 'Welcome to the bustling world of the farmyard! This playset features adorable farm animals, a barn, and fields for endless pretend play adventures.'),
('0002', 'Dollhouse', '0002', 30, '5-9', 100, 300, 'https://m.media-amazon.com/images/I/81nWvpYZZYL.jpg', 'Step into the world of make-believe with this beautifully crafted dollhouse. Furnished with miniature furniture, it\'s perfect for imaginative storytelling and role-playing.'),
('0003', 'AntFarm', '0004', 35, '6-10', 100, 300, 'https://cdn.shoplightspeed.com/shops/666253/files/54729772/1652x1652x2/ant-farm-classic-uncle-milton.jpg', 'Discover the fascinating world of ants with this interactive ant farm. Watch as your tiny inhabitants build tunnels, gather food, and create their own miniature society.'),
('0004', 'Crane', '0003', 15, '3-10', 100, 300, 'https://i5.walmartimages.com/seo/Crane-Toy-Construction-Truck-Diecast-Vehicles-Kids-Sandbox-Car-Boy-Birthday-Gift-Age-3-Up-Children-Toddler-Present_0211fd8d-439e-45fb-99f6-b7ca7d05441c.9fd8cc516fd98896def15fdaf9117ee3.jpeg', 'Construct, deconstruct, and reconstruct with this sturdy toy crane. Perfect for aspiring builders and engineers, it encourages creativity and hands-on problem-solving.'),
('0005', 'Bugs', '0002', 20, '5-10', 100, 300, 'https://m.media-amazon.com/images/I/A14qLs2OSwL.jpg', 'Get ready for a bug-tastic adventure with these lifelike insect figures. Explore the wonders of the insect world and learn about different species while having fun.'),
('0006', 'TeddyBear', '0005', 10, '1-100', 100, 300, 'https://m.media-amazon.com/images/I/81tkpZqGgjL._AC_UF894,1000_QL80_.jpg', 'Meet your new cuddly companion! This soft and huggable teddy bear is always ready for hugs, tea parties, and bedtime snuggles.'),
('0007', 'MonsterBed', '0005', 15, '5-10', 100, 300, 'https://i5.walmartimages.com/seo/Monster-High-Toys-Clawdeen-Wolf-Bedroom-Playset_78a98dc3-2d9e-4c69-bc57-fc5376f372c4.4344199142c8812a4c221a8aa4eefbd3.jpeg', 'Transform bedtime into a magical adventure with this whimsical monster bed. With its playful design and cozy comfort, it\'s sure to inspire sweet dreams.'),
('0008', 'HairSalon', '0003', 25, '3-12', 100, 300, 'https://assets.wfcdn.com/im/27922868/compr-r85/1597/159700163/doll-hair-salon-set.jpg', 'Unleash your inner stylist with this toy hair salon. Get creative with hair styling, makeup, and fashion, and become the ultimate glam squad!'),
('0009', 'AppleTree', '0001', 6, '4-12', 100, 200, 'https://static.wixstatic.com/media/7dfa47_b7691168eaab4775853860de46b7402e~mv2.jpg/v1/fill/w_480,h_404,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/7dfa47_b7691168eaab4775853860de46b7402e~mv2.jpg', 'A charming playset that lets children cultivate their imagination. Grow imaginary apples, pick them, and sell them at your make-believe market!'),
('0010', 'Monkey', '0004', 100, '2-25', 100, 300, 'https://i.pinimg.com/originals/2f/d8/66/2fd866e430e8ecfad4c2ce860fe5d1d2.png', 'Swing into fun and excitement with this adorable plush monkey. With its playful antics and infectious energy, it\'s the perfect companion for imaginative playtime.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custnum`);

--
-- Indexes for table `manuf`
--
ALTER TABLE `manuf`
  ADD PRIMARY KEY (`manid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordernum`);

--
-- Indexes for table `toy`
--
ALTER TABLE `toy`
  ADD PRIMARY KEY (`toynum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custnum` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
