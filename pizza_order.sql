SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newpizza`
--
CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', '');
-- --------------------------------------------------------
----Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@');



CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `time_placed` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `time_placed`, `name`, `contact_number`) VALUES
(1, '20190109141844', 'Aaron Basco', '09177472013'),
(2, '20190109192130', 'This is it', '09076709908'),
(3, '20190414130449', 'Bruno Mars', '7850002100'),
(4, '20190414132503', 'Christine', '450110002'),
(5, '20190414132808', 'Demo', '4580000002');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `isPizza` int(11) NOT NULL COMMENT '1=Pizza, 0=Toppings',
  `qty` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `item_id`, `isPizza`, `qty`, `size`) VALUES
(1, 1, 1, 1, 10),
(1, 2, 1, 1, 18),
(1, 3, 1, 2, 14),
(1, 6, 1, 2, 18),
(1, 9, 1, 1, 14),
(1, 1, 0, 1, 14),
(1, 2, 0, 1, 10),
(1, 3, 0, 1, 18),
(1, 4, 0, 1, 10),
(1, 5, 0, 1, 18),
(1, 7, 0, 1, 10),
(1, 8, 0, 1, 14),
(1, 10, 0, 1, 18),
(2, 1, 1, 1, 10),
(2, 2, 1, 1, 18),
(2, 3, 1, 2, 14),
(2, 6, 1, 2, 18),
(2, 9, 1, 1, 14),
(2, 1, 0, 1, 14),
(2, 2, 0, 1, 10),
(2, 3, 0, 1, 18),
(2, 4, 0, 1, 10),
(2, 5, 0, 1, 18),
(2, 7, 0, 1, 10),
(2, 8, 0, 1, 14),
(2, 10, 0, 1, 18),
(3, 1, 1, 1, 14),
(3, 3, 1, 3, 18),
(3, 10, 1, 1, 10),
(3, 1, 0, 1, 10),
(4, 1, 0, 1, 10),
(4, 8, 1, 2, 14),
(5, 1, 0, 1, 10),
(5, 8, 1, 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE IF NOT EXISTS `pizza` (
`id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id`, `category`, `name`, `description`) VALUES
(1, 'CLASSIC PIZZA', 'CHEESE', 'double layer of mozarella'),
(2, 'CLASSIC PIZZA', 'NY CLASSIC', 'pepperoni\r\n'),
(3, 'CLASSIC PIZZA', 'PEPPERONI & MUSHROOM', 'pepperoni & button mushroom'),
(4, 'CLASSIC PIZZA', 'MANHATTAN MEATLOVERS', 'ham, pepperoni, Italian sausage, ground beef, salami & bacon'),
(5, 'CLASSIC PIZZA', 'GARDEN SPECIAL', 'fresh tomatoes, black olives, mushrooms, onions, red & green bell peppers'),
(6, 'CLASSIC PIZZA', 'HAWAIIAN', 'ham, pineapple & bacon'),
(7, 'CLASSIC PIZZA', 'NEW YORK''S FINEST', 'Italian sausage, ham, pepperoni, bacon, ground beef, black olives, mushroom, onions, red & green bell peppers'),
(8, 'SPECIALTY PIZZA', 'TRIBECA MUSHROOM', 'shiltake, button & oyster mushroom'),
(9, 'SPECIALTY PIZZA', 'ANCHOVY LOVERS', 'black olives, anchovies, capers, roasted garlic, mushrooms & onions'),
(10, 'SPECIALTY PIZZA', '#4 CHEESE', 'cheese heaven!, mozzarella, cheddar, fontina & feta'),
(11, 'SPECIALTY PIZZA', 'CORONA CHICKEN SALSA', 'tangy strips of chicken with Southwestern  salsa'),
(12, 'SPECIALTY PIZZA', 'GOURMET GARDEN', 'zucchini, grilled eggplant, fresh tomatoes, black olives, capers, mushrooms, onions, red & green bell peppers'),
(13, 'SPECIALTY PIZZA', 'ROASTED GARLIC & SHRIMP', 'shrimp, onions, roasted garlic in wine-butter sauce'),
(14, 'SPECIALTY PIZZA', 'FOUR SEASONS', 'gourmet sampler, NY Classic, #4 Cheese, Anchovy lovers, Roasted Garlic & Shrimp');

-- --------------------------------------------------------

--
-- Table structure for table `pizza_size`
--

CREATE TABLE IF NOT EXISTS `pizza_size` (
`id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `size` int(3) NOT NULL COMMENT 'in inch',
  `price` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza_size`
--

INSERT INTO `pizza_size` (`id`, `pizza_id`, `size`, `price`) VALUES
(1, 1, 10, 175),
(2, 1, 14, 285),
(3, 1, 18, 440),
(4, 2, 10, 210),
(5, 2, 14, 340),
(6, 2, 18, 530),
(7, 3, 10, 220),
(8, 3, 14, 250),
(9, 3, 18, 540),
(10, 4, 10, 250),
(11, 4, 14, 295),
(12, 4, 18, 565),
(13, 5, 10, 210),
(14, 5, 14, 340),
(15, 5, 18, 530),
(16, 6, 10, 210),
(17, 6, 14, 340),
(18, 6, 18, 530),
(19, 7, 10, 260),
(20, 7, 14, 420),
(21, 7, 18, 575),
(22, 8, 10, 245),
(23, 8, 14, 390),
(24, 8, 18, 560),
(25, 9, 10, 275),
(26, 9, 14, 450),
(27, 9, 18, 595),
(28, 10, 10, 250),
(29, 10, 14, 400),
(30, 10, 18, 560),
(31, 11, 10, 250),
(32, 11, 14, 420),
(33, 11, 18, 575),
(34, 12, 10, 250),
(35, 12, 14, 410),
(36, 12, 18, 585),
(37, 13, 10, 240),
(38, 13, 14, 405),
(39, 13, 18, 505),
(40, 14, 10, 275),
(41, 14, 14, 430),
(42, 14, 18, 590);

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE IF NOT EXISTS `toppings` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`id`, `name`) VALUES
(1, 'Cheese'),
(2, 'Bacon'),
(3, 'Ground Bacon'),
(4, 'Ham'),
(5, 'Italian Sausage'),
(6, 'Pepperoni'),
(7, 'Salami'),
(8, 'Capers'),
(9, 'Roasted Garlic'),
(10, 'Bell Pepper'),
(11, 'Mushrooms');

-- --------------------------------------------------------

--
-- Table structure for table `toppings_size`
--

CREATE TABLE IF NOT EXISTS `toppings_size` (
`id` int(11) NOT NULL,
  `toppings_id` int(11) NOT NULL,
  `size` int(3) NOT NULL COMMENT 'in inch',
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toppings_size`
--

INSERT INTO `toppings_size` (`id`, `toppings_id`, `size`, `price`) VALUES
(1, 1, 10, 35),
(2, 1, 14, 45),
(3, 1, 18, 60),
(4, 2, 10, 35),
(5, 2, 14, 45),
(6, 2, 18, 60),
(7, 3, 10, 35),
(8, 3, 14, 45),
(9, 3, 18, 60),
(10, 4, 10, 35),
(11, 4, 14, 45),
(12, 4, 18, 60),
(13, 5, 10, 35),
(14, 5, 14, 45),
(15, 5, 18, 60),
(16, 6, 10, 35),
(17, 6, 14, 45),
(18, 6, 18, 60),
(19, 7, 10, 35),
(20, 7, 14, 45),
(21, 7, 18, 60),
(22, 8, 10, 35),
(23, 8, 14, 45),
(24, 8, 18, 60),
(25, 9, 10, 35),
(26, 9, 14, 45),
(27, 9, 18, 60),
(28, 10, 10, 35),
(29, 10, 14, 45),
(30, 10, 18, 60),
(31, 11, 10, 35),
(32, 11, 14, 45),
(33, 11, 18, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza_size`
--
ALTER TABLE `pizza_size`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppings_size`
--
ALTER TABLE `toppings_size`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
----
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);


--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pizza_size`
--
ALTER TABLE `pizza_size`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `toppings_size`
--
ALTER TABLE `toppings_size`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
