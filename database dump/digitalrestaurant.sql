-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 07:59 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `pizza_inn`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE IF NOT EXISTS `billing_details` (
  `billing_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(15) NOT NULL,
  `Street_Address` varchar(100) NOT NULL,
  `P_O_Box_No` varchar(15) NOT NULL,
  `City` text NOT NULL,
  `Mobile_No` varchar(15) NOT NULL,
  `Landline_No` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`billing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`billing_id`, `member_id`, `Street_Address`, `P_O_Box_No`, `City`, `Mobile_No`, `Landline_No`) VALUES
(8, 15, 'hnbhb', 'mbmb', 'mnbm', '78789632145', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE IF NOT EXISTS `cart_details` (
  `cart_id` int(15) NOT NULL AUTO_INCREMENT,
  `member_id` int(15) NOT NULL,
  `food_id` int(15) NOT NULL,
  `quantity_id` int(15) NOT NULL,
  `total` float NOT NULL,
  `flag` int(1) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`cart_id`, `member_id`, `food_id`, `quantity_id`, `total`, `flag`) VALUES
(15, 15, 27, 34, 200, 0),
(16, 15, 24, 33, 99, 1),
(17, 15, 24, 36, 396, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(15) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(16, 'ITALIAN'),
(17, 'SOUTH INDIAN'),
(18, 'CHINESE'),
(19, 'PUNJABI'),
(20, 'DESERT');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `currency_id` int(5) NOT NULL AUTO_INCREMENT,
  `currency_symbol` varchar(15) NOT NULL,
  `flag` int(1) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currency_id`, `currency_symbol`, `flag`) VALUES
(8, 'Rs/-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE IF NOT EXISTS `food_details` (
  `food_id` int(15) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(45) NOT NULL,
  `food_description` text NOT NULL,
  `food_price` float NOT NULL,
  `food_photo` varchar(45) NOT NULL,
  `food_category` int(15) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`food_id`, `food_name`, `food_description`, `food_price`, `food_photo`, `food_category`) VALUES
(24, 'Burger', 'A burger made with vegetables, textured vegetable protein, and legumes with cheese, mayonaise,etc', 99, 'burger1.jpg', 16),
(25, 'Pizza', 'A flat bread  bake long time layered with juicy tomato sauce and topped with fresh veggies as pizza toppings and shredded mozzarella cheese.', 199, 'Pizza.jpg', 16),
(26, 'Pasta', 'A fully cooked pasta that is still a bit firm, which gives it an appealing texture. Alfredo. A white sauce made with cream, butter, parmesan cheese, and black pepper is used to make it.', 100, 'Pasta.jpg', 16),
(27, 'Idli Sambhar', 'Idli are a type of savoury rice cake, popular as breakfast foods and served with Indian special Sambhar and Coconut chutney', 100, 'Idli.jpg', 17),
(28, 'Dosa', 'Dosa is a type of pancake from the Indian subcontinent, made from a fermented batter. It is somewhat similar to a crepe in appearance. Its main ingredients are rice and black gram.It is also served with Sambhar and Chutney', 100, 'dosa.jpg', 17),
(29, 'Uttapam', 'Uttapam is a thick pancake, with toppings like onion, tomato, capsicum etc', 80, 'Uttapam.jpg', 17),
(30, 'Mendu Vada', 'It is an Indian fritter made from Vigna mungo (black lentil or urad dal). It is usually made in doughnut-shape, with a crispy exterior and soft interior served with Sambhar and Chutney.', 90, 'meduvada.jpg', 17),
(31, 'Manchurian', 'Manchurian is an Indian Chinese fried cauliflower food item.In the second stage, the deep fried florets are sautéed with chopped onion, capsicum, garlic, etc., in soy and chilli sauce.It is available in dry and gravy forms.', 60, 'manchuria.jpg', 18),
(32, 'Noodles', 'It is cooked in boiled water and later fried with toppings like onion, capsicum, garlic with soya and chilli sauces.', 60, 'noodles.jpg', 18),
(33, 'Chinese rice', 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as various sauces, vegetables,garlic etc', 80, 'friedrice.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `question_id` int(5) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `login`, `passwd`, `question_id`, `answer`) VALUES
(15, 'shivam', 'singh', 'ssiva@gmail.com', '202cb962ac59075b964b07152d234b70', 0, 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(15) NOT NULL AUTO_INCREMENT,
  `message_from` varchar(25) NOT NULL,
  `message_date` date NOT NULL,
  `message_time` time NOT NULL,
  `message_subject` text NOT NULL,
  `message_text` text NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE IF NOT EXISTS `orders_details` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `billing_id` int(10) NOT NULL,
  `cart_id` int(15) NOT NULL,
  `delivery_date` date NOT NULL,
  `StaffID` int(15) NOT NULL,
  `flag` int(1) NOT NULL,
  `time_stamp` time NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`order_id`, `member_id`, `billing_id`, `cart_id`, `delivery_date`, `StaffID`, `flag`, `time_stamp`) VALUES
(16, 15, 8, 16, '2018-04-18', 0, 0, '07:53:46'),
(17, 15, 8, 17, '2018-04-18', 0, 0, '07:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `partyhalls`
--

CREATE TABLE IF NOT EXISTS `partyhalls` (
  `partyhall_id` int(5) NOT NULL AUTO_INCREMENT,
  `partyhall_name` varchar(45) NOT NULL,
  PRIMARY KEY (`partyhall_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `partyhalls`
--


-- --------------------------------------------------------

--
-- Table structure for table `pizza_admin`
--

CREATE TABLE IF NOT EXISTS `pizza_admin` (
  `Admin_ID` int(45) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pizza_admin`
--

INSERT INTO `pizza_admin` (`Admin_ID`, `Username`, `Password`) VALUES
(12, 'shivam', '123');

-- --------------------------------------------------------

--
-- Table structure for table `polls_details`
--

CREATE TABLE IF NOT EXISTS `polls_details` (
  `poll_id` int(15) NOT NULL AUTO_INCREMENT,
  `member_id` int(15) NOT NULL,
  `food_id` int(15) NOT NULL,
  `rate_id` int(5) NOT NULL,
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `polls_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE IF NOT EXISTS `quantities` (
  `quantity_id` int(5) NOT NULL AUTO_INCREMENT,
  `quantity_value` int(5) NOT NULL,
  PRIMARY KEY (`quantity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`quantity_id`, `quantity_value`) VALUES
(33, 1),
(34, 2),
(35, 3),
(36, 4),
(37, 5),
(38, 6);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` int(5) NOT NULL AUTO_INCREMENT,
  `question_text` text NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `questions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `rate_id` int(5) NOT NULL AUTO_INCREMENT,
  `rate_name` varchar(15) NOT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rate_id`, `rate_name`) VALUES
(8, '1'),
(9, '2'),
(10, '3'),
(11, '4'),
(12, '5');

-- --------------------------------------------------------

--
-- Table structure for table `reservations_details`
--

CREATE TABLE IF NOT EXISTS `reservations_details` (
  `ReservationID` int(15) NOT NULL AUTO_INCREMENT,
  `member_id` int(15) NOT NULL,
  `table_id` int(5) NOT NULL,
  `partyhall_id` int(5) NOT NULL,
  `Reserve_Date` date NOT NULL,
  `Reserve_Time` time NOT NULL,
  `StaffID` int(15) NOT NULL,
  `flag` int(1) NOT NULL,
  `table_flag` int(1) NOT NULL,
  `partyhall_flag` int(1) NOT NULL,
  PRIMARY KEY (`ReservationID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `reservations_details`
--

INSERT INTO `reservations_details` (`ReservationID`, `member_id`, `table_id`, `partyhall_id`, `Reserve_Date`, `Reserve_Time`, `StaffID`, `flag`, `table_flag`, `partyhall_flag`) VALUES
(7, 15, 21, 0, '2018-04-26', '00:30:00', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE IF NOT EXISTS `specials` (
  `special_id` int(15) NOT NULL AUTO_INCREMENT,
  `special_name` varchar(25) NOT NULL,
  `special_description` text NOT NULL,
  `special_price` float NOT NULL,
  `special_start_date` date NOT NULL,
  `special_end_date` date NOT NULL,
  `special_photo` varchar(45) NOT NULL,
  PRIMARY KEY (`special_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `specials`
--


-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `StaffID` int(15) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `Street_Address` text NOT NULL,
  `Mobile_Tel` varchar(20) NOT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `staff`
--


-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
  `table_id` int(5) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(45) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`, `table_name`) VALUES
(14, '1'),
(15, '2'),
(16, '3'),
(17, '4'),
(18, '5'),
(19, '6'),
(20, '7'),
(21, '8'),
(22, '9'),
(23, '10');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE IF NOT EXISTS `timezones` (
  `timezone_id` int(5) NOT NULL AUTO_INCREMENT,
  `timezone_reference` varchar(45) NOT NULL,
  `flag` int(1) NOT NULL,
  PRIMARY KEY (`timezone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `timezones`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'shivam', '123', 'sshivam478@gmail.com');
