-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 07:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cuser_name` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_num` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuser_name`, `name`, `email`, `phone_num`, `password`) VALUES
('christian1', 'christian', 'christian1qq.com', 1232222145, '123'),
('Jeremy1', 'Jeremy', 'Jeremy@ucalgary.ca', 5643621236, '456'),
('mike1', 'mike', 'mike@qq.com', 123213221, '123'),
('sophia1', 'sophia', 'sophia@gmail.com', 26634324, '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(10) NOT NULL,
  `Order_state` varchar(20) NOT NULL,
  `order_Place_Time` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `start_time` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `cancellability` char(10) NOT NULL,
  `cust_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `Order_state`, `order_Place_Time`, `start_time`, `cancellability`, `cust_name`) VALUES
(1, 'Finished', '2018-04-11 05:00:00.000000', '2018-04-11 11:00:00.000000', 'YES', 'Jeremy1'),
(2, 'processing', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'yes', 'Jeremy1'),
(3, 'not_placed', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'yes', 'Jeremy1');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `type` varchar(20) NOT NULL,
  `food_id` int(20) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `name` char(20) NOT NULL,
  `availability` char(5) NOT NULL,
  `price` int(10) NOT NULL,
  `food_ingredient` varchar(300) NOT NULL,
  `food_allergy` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`type`, `food_id`, `picture`, `name`, `availability`, `price`, `food_ingredient`, `food_allergy`) VALUES
('Spicy', 1024, '/restaurant/spicy_chicken.png', 'Rice Chicken', 'yes', 13, 'rice patato chicken', '');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `food_restriction` varchar(300) NOT NULL,
  `din_in_or_take_away` char(5) NOT NULL,
  `cost` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`food_restriction`, `din_in_or_take_away`, `cost`, `order_id`) VALUES
('', '', 123123, 2);

-- --------------------------------------------------------

--
-- Table structure for table `general_staff`
--

CREATE TABLE `general_staff` (
  `general_staff_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_staff`
--

INSERT INTO `general_staff` (`general_staff_id`, `user_name`) VALUES
(1, 'tony1'),
(2, 'xiwang1');

-- --------------------------------------------------------

--
-- Table structure for table `include`
--

CREATE TABLE `include` (
  `Num_of_food` int(20) NOT NULL,
  `food_id` int(20) NOT NULL,
  `order_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `user_name`) VALUES
(1, 'huahuimo1');

-- --------------------------------------------------------

--
-- Table structure for table `m_modify_f`
--

CREATE TABLE `m_modify_f` (
  `Manager_id` int(20) NOT NULL,
  `Food_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_modify_t`
--

CREATE TABLE `m_modify_t` (
  `manager_id` int(20) NOT NULL,
  `table_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_staff`
--

CREATE TABLE `restaurant_staff` (
  `user_name` varchar(20) NOT NULL COMMENT 'User name of the Restaurant staff',
  `name` char(20) NOT NULL COMMENT 'Name of the Restaurant staff',
  `phone_num` bigint(10) NOT NULL COMMENT 'Phone number of the Restaurant staff',
  `email` varchar(50) NOT NULL COMMENT 'Email of the Restaurant staff',
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_staff`
--

INSERT INTO `restaurant_staff` (`user_name`, `name`, `phone_num`, `email`, `password`) VALUES
('huahuimo1', 'huahui.mo', 2112312, 'huahuimo@qq.com', '123'),
('tony1', 'tony', 12312312, 'tony@qq.com', '123'),
('xiwang1', 'xi.wang', 12312312, 'xi.wang@ucalgary.ca', '123');

-- --------------------------------------------------------

--
-- Table structure for table `s_modify_o`
--

CREATE TABLE `s_modify_o` (
  `Staff_user_id` int(20) NOT NULL,
  `Order_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_information`
--

CREATE TABLE `table_information` (
  `availability` varchar(10) NOT NULL,
  `table_id` int(10) NOT NULL,
  `capacity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_information`
--

INSERT INTO `table_information` (`availability`, `table_id`, `capacity`) VALUES
('YES', 1, 12),
('YES', 2, 5),
('YES', 3, 5),
('YES', 4, 7),
('YES', 5, 10),
('YES', 6, 12),
('YES', 7, 16),
('YES', 8, 10),
('YES', 9, 13),
('YES', 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE `table_order` (
  `num_of_person` int(20) NOT NULL,
  `order_id` int(10) NOT NULL,
  `table_id` int(3) NOT NULL,
  `table_start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_time_slot`
--

CREATE TABLE `table_time_slot` (
  `table_id` int(10) NOT NULL,
  `table_start_time` time NOT NULL,
  `table_end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_time_slot`
--

INSERT INTO `table_time_slot` (`table_id`, `table_start_time`, `table_end_time`) VALUES
(1, '07:30:00', '09:00:00'),
(1, '09:00:00', '10:30:00'),
(1, '10:30:00', '12:00:00'),
(1, '12:00:00', '13:30:00'),
(1, '13:30:00', '15:00:00'),
(1, '15:00:00', '16:30:00'),
(1, '16:30:00', '18:00:00'),
(1, '18:00:00', '19:30:00'),
(1, '19:30:00', '21:00:00'),
(1, '21:00:00', '22:30:00'),
(2, '10:00:00', '13:00:00'),
(3, '11:00:00', '15:00:00'),
(4, '13:00:00', '14:00:00'),
(5, '00:00:00', '00:00:00'),
(5, '10:00:00', '12:00:00'),
(6, '10:00:00', '12:00:00'),
(7, '13:00:00', '18:00:00'),
(8, '04:00:00', '05:00:00'),
(8, '16:00:00', '12:00:00'),
(9, '06:00:00', '08:00:00'),
(10, '10:00:00', '12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cuser_name`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cust_name` (`cust_name`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `general_staff`
--
ALTER TABLE `general_staff`
  ADD PRIMARY KEY (`general_staff_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `include`
--
ALTER TABLE `include`
  ADD PRIMARY KEY (`food_id`,`order_id`),
  ADD KEY `food_id` (`food_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `m_modify_f`
--
ALTER TABLE `m_modify_f`
  ADD PRIMARY KEY (`Manager_id`,`Food_id`),
  ADD KEY `Manager_id` (`Manager_id`,`Food_id`),
  ADD KEY `Food_id` (`Food_id`);

--
-- Indexes for table `m_modify_t`
--
ALTER TABLE `m_modify_t`
  ADD PRIMARY KEY (`manager_id`,`table_id`),
  ADD KEY `Table_id` (`table_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `restaurant_staff`
--
ALTER TABLE `restaurant_staff`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `s_modify_o`
--
ALTER TABLE `s_modify_o`
  ADD PRIMARY KEY (`Staff_user_id`,`Order_id`),
  ADD KEY `Staff_user_name` (`Staff_user_id`,`Order_id`);

--
-- Indexes for table `table_information`
--
ALTER TABLE `table_information`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `table_time_slot`
--
ALTER TABLE `table_time_slot`
  ADD PRIMARY KEY (`table_id`,`table_start_time`),
  ADD KEY `table_id` (`table_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`cust_name`) REFERENCES `customer` (`cuser_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `general_staff`
--
ALTER TABLE `general_staff`
  ADD CONSTRAINT `general_staff_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `restaurant_staff` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `include`
--
ALTER TABLE `include`
  ADD CONSTRAINT `include_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `include_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `restaurant_staff` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_modify_f`
--
ALTER TABLE `m_modify_f`
  ADD CONSTRAINT `m_modify_f_ibfk_1` FOREIGN KEY (`Manager_id`) REFERENCES `manager` (`manager_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_modify_f_ibfk_2` FOREIGN KEY (`Food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_modify_t`
--
ALTER TABLE `m_modify_t`
  ADD CONSTRAINT `m_modify_t_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `table_information` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_modify_t_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_modify_o`
--
ALTER TABLE `s_modify_o`
  ADD CONSTRAINT `s_modify_o_ibfk_1` FOREIGN KEY (`Staff_user_id`) REFERENCES `general_staff` (`general_staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table_order`
--
ALTER TABLE `table_order`
  ADD CONSTRAINT `table_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_order_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `table_information` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table_time_slot`
--
ALTER TABLE `table_time_slot`
  ADD CONSTRAINT `table_time_slot_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `table_information` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
