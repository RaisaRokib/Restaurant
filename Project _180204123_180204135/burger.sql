-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 10:30 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burger`
--

-- --------------------------------------------------------

--
-- Table structure for table `biriyani`
--

CREATE TABLE `biriyani` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biriyani`
--

INSERT INTO `biriyani` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'kacchi', 'basmati rice, mutton, prune, potatoes, kewra water', 'Best-Mutton-Biryani-Recipe.jpg', 440),
(2, 'chicken dum biriyani', 'A delicious savory rice dish that is loaded with spicy marinated chicken, caramelized onions, and flavorful saffron rice. Simplifying the order of operations, while retaining the traditional layered approach to assembling it.', 'chickendum.jpg', 180.8),
(3, 'Tehari', 'Fluffy, fragrant basmati rice and a delicious saucy beef (or your choice of protein) curry or masala', 'Special-Mutton-Tehari.jpg', 140),
(4, 'vegetable tehari', 'A perfect meal for a quick weeknight dinner ', '1x1-vegetable-tahiri-recipe-one-pot-veg-tehri.jpg', 125.5),
(5, 'sindhi biriyani', 'A special meat and rice biriyani dish originating from the Sindh province of Pakistan', 'sindhi-biryani.jpg', 300.5),
(6, 'lucknowi biriyani', 'made with mild aromatic spices, meat, and long grain basmati rice. It has subtle flavors and a sweet aroma', 'LUCKNOWI_MURG_BIRYANI__AWADHI_CHICKEN_BIRYANI.jpg', 290);

-- --------------------------------------------------------

--
-- Table structure for table `burger`
--

CREATE TABLE `burger` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `burger`
--

INSERT INTO `burger` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'BBQ Chicken Burger', 'Our BBQ chicken is often seasoned or coated in a spice rub, barbecue sauce, or both. Marinades are also used to tenderize the meat and add flavor.', 'bbqburger.png', 180),
(2, 'Cheese Burger', 'the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.', 'cheeseburger.jpg', 175.5),
(3, 'Crispy Burger', 'Our crispy fried chicken fillet slathered with a special burger sauce, topped with a slice of Cheddar cheese, finished off with Romaine lettuce and put inside a soft bun.', 'crispyburger.jpg', 150),
(4, 'Creamy Mushroom Burger', 'Perfectly seasoned and cooked burgers with a luscious creamy mushroom sauce with melty swiss cheese.', 'mushroomburger.jpg', 220),
(5, 'Tandoori Burger', 'a dish of roasted chicken marinated in yogurt and generously spiced, giving the meat its trademark red color', 'tandooriburger.jpg', 250),
(6, 'Beef Burger', 'A huge single or triple burger with all the fixings, cheese, lettuce, tomato, onions and special sauce or mayonnaise', 'beefburger.jpg', 200);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `name`, `picture`, `price`) VALUES
(74, 'BBQ Chicken Burger', 'bbqburger.png', 171),
(75, 'chicken dum biriyani', 'chickendum.jpg', 171.76),
(76, 'Chinese Vegetables', 'chinesevegetables.jpg', 104.5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`, `picture`) VALUES
(1, 'burger', 'burger.jpg'),
(2, 'biriyani', 'biriyani.jpg'),
(3, 'chinese', 'chinese.jpg'),
(4, 'pasta', 'pasta.jpg'),
(5, 'pizza', 'pizza.jpg'),
(8, 'dessert', 'dessert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chinese`
--

CREATE TABLE `chinese` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chinese`
--

INSERT INTO `chinese` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'Fried Rice', 'A dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat', 'friedrice.jpg', 120),
(2, 'Fried Chicken', 'A dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried. The breading adds a crisp coating or crust to the exterior of the chicken while retaining juices in the meat', 'friedchicken.jpg', 145.5),
(3, 'Chinese Vegetables', 'Stir-frying is a fast and fresh way to cook. Simply toss and turn bite-sized pieces of food in a little hot oil in a wok over high heat, and in five minutes or less, the work is done. Vegetables emerge crisp and bright', 'chinesevegetables.jpg', 110),
(4, 'Beef sizzling', 'Tender steak cooked in a sweet sauce - tastes just like you get in the local Chinese restaurant', 'sizzling-beef.jpg', 280.8),
(5, 'Prawn chilli', 'Indo chinese style chilli prawns that can be served as a starter or a side with fried rice or Chinese', 'prawn.jpg', 350),
(6, 'Thai soup', 'Served piping hot and the forward flavors are sour and spicy, thanks to generous squeezes of lime and strips of fiery Thai chillis', 'thaisoup.jpg', 190);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gmail` varchar(60) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `gmail`, `phone`, `message`) VALUES
(1, 'aewawe ', 'sda@gmail.com', '13123 ', 'ad as asd as das '),
(2, 'asdasd as', 'we@gmail.com', '123123 21', ' f sdaf sad f'),
(3, 'asdas d', 'asdsa@gmail.com', '123123 123 12', 'asd asd asd asd '),
(4, 'dfgrgd', 'dkfh@jfd.com', '16592895', 'hello'),
(5, 'zuthi123', 'fsfsjbf@jkdckj', '16592895', 'ffsdc'),
(6, 'raisa', 'a@gmail.com', '659946', 'fdfdv'),
(8, 'zuthi', 'a@gmail.com', '659946', 'hello. your food is good!');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'Chocolate Cake', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 85.5),
(2, 'Vanilla Cake', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 80),
(3, 'Black Forest', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 90),
(4, 'Red Velvet', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 100),
(5, 'Cheesecake', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 110),
(6, 'Blueberry', 'We offer a variety of cakes and tarts to suit everyone\'s taste! From classics like rich Red Velvet to specialties like our popular Whisper Cake, you\'ll find that each one adds an elegant touch to any occasion', 'dessert2.jpg', 95);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `username`, `password`, `gmail`) VALUES
(1, 'raisa', '81dc9bdb52d04dc20036dbd8313ed055', 'raisa@gmail.com'),
(3, 'zuthi', '81dc9bdb52d04dc20036dbd8313ed055', 'zuthi@gmail.com'),
(9, '2323', '149815eb972b3c370dee3b89d645ae14', '2323@gmail.com'),
(11, '1221', '1d72310edc006dadf2190caad5802983', '12@gmail.com'),
(12, '1212', '02b1be0d48924c327124732726097157', '12222@gmail.com'),
(13, 'abcd', 'e2fc714c4727ee9395f324cd2e7f331f', 'abcd@gmail.com'),
(14, 'zuthi123', '81dc9bdb52d04dc20036dbd8313ed055', 'zuthi123@gmail.com'),
(16, 'fjbdfk', '34483f5242af48c8c945ccfdf8565e22', 'fkdjfhi123@gmail.com'),
(17, 'dkjvxdv', '81dc9bdb52d04dc20036dbd8313ed055', 'dgdvb@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pasta`
--

CREATE TABLE `pasta` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasta`
--

INSERT INTO `pasta` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'Pasta Basta', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 335.5),
(2, 'Pasta BBQ', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 335),
(3, 'Pasta Alfresco', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 340),
(4, 'Pasta Italiano', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 320.5),
(5, 'Pasta Zeletti', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 345.8),
(6, 'Pasta Mellow', 'A chewy texture that has a bounce to it when chewed. These are qualities that you cannot determine until the pasta has been cooked but if the pasta wants to stick in a clump after being cooked or has too soft a texture when chewed, you will want to try a different brand of pasta in the future', 'pastabasta.jpg', 370.8);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `itemid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`itemid`, `name`, `description`, `picture`, `price`) VALUES
(1, 'BBQ Temptation', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 620),
(2, 'Chicken Classic', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 710.5),
(3, 'Beef Lovers', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 620.55),
(4, 'Red n Hot', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 710.8),
(5, 'Beef Supremo', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 770.75),
(6, 'Beef Pepperoni', 'Dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', 'pizza2.jpg', 760.6);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `picture`) VALUES
(1, 'Raisa Rokib', 'raisa.jpg'),
(2, 'Jarin Anjum Zuthi', 'zuthi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biriyani`
--
ALTER TABLE `biriyani`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `burger`
--
ALTER TABLE `burger`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `chinese`
--
ALTER TABLE `chinese`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `pasta`
--
ALTER TABLE `pasta`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biriyani`
--
ALTER TABLE `biriyani`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `burger`
--
ALTER TABLE `burger`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chinese`
--
ALTER TABLE `chinese`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dessert`
--
ALTER TABLE `dessert`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pasta`
--
ALTER TABLE `pasta`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
