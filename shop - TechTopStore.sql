-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 03:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(8, 'Desktop Computers', '1'),
(9, 'Laptops/Notebooks', '2'),
(10, 'Small Business', '3'),
(11, 'Workstations', '4'),
(12, 'Servers', '5'),
(13, 'Computer Monitors', '6'),
(14, 'Explore Al PCs', '7'),
(15, 'All Service & Repair', '8');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'pending',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`) VALUES
(1, 'nMAX9PsWar', 'pending', 2),
(2, 'ZWvCNgMxya', 'pending', 2),
(3, '3MDMrQuMyv', 'pending', 2),
(4, 'BSeKV9iWN0', 'pending', 2),
(5, 'ANVrggnm4T', 'pending', 2),
(6, 'YBGlbZxYwS', 'pending', 2),
(7, 'tzpvHt7hZc', 'pending', 2),
(8, 'IEU7w10j3r', 'pending', 2),
(9, 'KN15feHfNQ', 'pending', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(2048) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `view` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `thumbnail`, `price`, `quantity`, `category_id`, `created_at`, `view`) VALUES
(6, 'AMD Ryzen 7 7700X Raphael AM5 4.5GHz 8-Core Boxed Processor', 'Raphael AM5 8-Core Desktop Processor\r\n8MB L2, 32MB L3 Cache\r\n8 Cores, 16 Threads\r\nAMD B650, B650E, X670, X670E Chipsets\r\n128GB DDR5-5200 Memory Supported\r\nHeatsink Not Included', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/674502_643700_01_front_zoom.jpg', 249.99, 999, 8, '2024-11-11 08:21:12', 0),
(7, 'Gigabyte NVIDIA GeForce RTX 4070 Super Windforce', '12GB GDDR6X 192-bit Memory\r\n7680 x 4320 Maximum Resolution\r\nPCIe 4.0\r\nFull Height, Triple Slot\r\nDisplayPort 1.4a, HDMI 2.1a', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/676383_661843_01_front_zoom.jpg', 599.99, 999, 8, '2024-11-11 08:27:48', 0),
(8, 'PowerSpec G447 Gaming PC', 'Intel Core i9 12900K (3.2GHz) Processor\r\n32GB DDR5-6000 RAM\r\nNVIDIA GeForce RTX 4070 Graphics Card\r\n1TB NVMe SSD\r\n2.5GbE LAN, WiFi 6E (802.11ax), Bluetooth 5.3\r\nWindows 11 Pro', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/678479_682518_01_front_zoom.jpg', 1499.99, 999, 8, '2024-11-12 00:03:00', 0),
(9, 'LG 27MQ450-B.AUS 27\" Full HD (1920 x 1080) 75Hz LED Monitor', '75 Hz Refresh Rate, 5 ms Response Time, IPS Panel\r\nAMD FreeSync Technology\r\nVGA; HDMI; DisplayPort\r\n75mm x 75mm (2.9 x 2.9 in.) VESA Mount\r\nHeight; Tilt', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/664856_560870_01_front_zoom.jpg', 99.99, 999, 13, '2024-11-12 00:04:01', 0),
(10, 'HP ProBook 460 G11 16\" Laptop Computer - Pike Silver', 'Intel Core Ultra 7 155U (1.7GHz) Processor\r\n16GB DDR5-5600 RAM\r\nIntel Graphics Integrated Graphics\r\n1TB PCIe NVMe M.2 SSD\r\n16\" WUXGA IPS Anti-Glare Display\r\n2x2 Wireless LAN WiFi 6E (802.11ax), Bluetooth 5.3\r\nWindows 11 Pro', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/682998_729285_01_front_zoom.jpg', 899.99, 999, 9, '2024-11-12 00:05:20', 0),
(11, 'Lenovo ThinkPad P16 Gen 2 - Storm Grey', 'Intel Core i7 13700HX (1.5GHz) Processor\r\n32GB DDR5-5600 RAM\r\nNVIDIA RTX 2000 Ada Graphics Card\r\n1TB PCIe Gen4 x4 NVMe M.2 SSD\r\n16\" WQXGA IPS Anti-Glare Display\r\nGigabit LAN, 2x2 WiFi 6E (802.11ax), Bluetooth 5.3\r\nSecure Digital 7.0 Memory Card Reader\r\nWindows 11 Pro', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/686924_764308_01_front_zoom.jpg', 2499.99, 999, 9, '2024-11-12 00:06:21', 0),
(12, 'ASUS ROG Strix G16 G614JZR-MB96 16\" Gaming Laptop', 'Intel Core i9 14900HX (1.6GHz) Processor\r\n32GB DDR5-5600 RAM\r\nNVIDIA GeForce RTX 4080 Graphics Card\r\n1TB PCIe Gen4 NVMe M.2 SSD\r\n16\" QHD+ IPS Anti-Glare Display\r\n2.5Gb LAN, 2x2 WiFi 6E (802.11ax), Bluetooth 5.3\r\nWindows 11 Home', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/682718_726836_01_front_zoom.jpg', 2499.99, 999, 9, '2024-11-12 00:07:24', 0),
(13, 'ASUS B650-PLUS TUF GAMING WIFI ATX AM5 Motherboard', 'AMD B650\r\nAMD AM5 Ryzen Processors\r\n128GB Dual Channel 4 x 288pin DIMM Support', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/653699_443598_01_front_zoom.jpg', 189.99, 999, 8, '2024-11-12 00:08:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, 'test@gmail.com', '123456', 'user'),
(2, 'bach.ledinh@phuxuan.edu.vn', '123', 'admin'),
(3, 'hanguyen.minecraft@gmail.com', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_items_products1` (`product_id`),
  ADD KEY `fk_order_items_orders1` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_categories` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_items_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
