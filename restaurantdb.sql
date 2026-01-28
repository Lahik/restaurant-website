SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS restaurantdb;
USE restaurantdb;

-- --------------------------------------------------------
-- ADMIN
-- --------------------------------------------------------
CREATE TABLE `admin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '$2y$12$Hq4wElyLWe5l0JjvhhEOmOQDoUwjOGxsEOf4iH1ZcXcCETQLTeGY6');

-- --------------------------------------------------------
-- USERS
-- --------------------------------------------------------
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL UNIQUE,
  `number` VARCHAR(11) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `reg_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- PRODUCTS
-- --------------------------------------------------------
CREATE TABLE `products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cuisine` VARCHAR(50) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `price` INT NOT NULL,
  `image` VARCHAR(50) NOT NULL,
  `hero_slider` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `products` (`id`, `cuisine`, `category`, `name`, `price`, `image`, `hero_slider`) VALUES
(1,'french','fast food','burger',800,'fast_food_1.png',0),
(2,'italian','fast food','zinger burger',1200,'fast_food_2.png',0),
(3,'drinks','drinks','strawberry milkshake',400,'drinks_1.png',0),
(4,'desserts','desserts','brownie',250,'desserts_1.png',0),
(5,'drinks','drinks','chocolate milkshake',450,'drinks_2.png',0),
(6,'desserts','desserts','cupcake',250,'desserts_2.png',0),
(7,'desserts','desserts','strawberry icecream',500,'desserts_3.png',0),
(8,'desserts','desserts','pudding',200,'desserts_4.png',0),
(9,'italian','main dish','noodles',800,'main_dish_1.png',0),
(10,'italian','main dish','pasta',500,'main_dish_2.png',0),
(11,'sri lankan','fast food','kothu',800,'fast_food_3.png',0),
(12,'western','main dish','beef steak',1500,'main_dish_3.png',0),
(13,'drinks','drinks','lemon drink',250,'drinks_3.png',0),
(14,'drinks','drinks','ice coffee',500,'drinks_4.png',0),
(15,'drinks','drinks','mojito',350,'drinks_5.png',1),
(16,'drinks','drinks','watermelon drink',300,'drinks_6.png',0),
(17,'drinks','drinks','strawberry mojito',600,'drinks_7.png',0),
(18,'italian','fast food','pepperoni pizza',2200,'fast_food_4.png',0),
(19,'italian','fast food','vegetable pizza',1700,'fast_food_5.png',0),
(20,'italian','fast food','sausage pizza',2000,'fast_food_6.png',0),
(21,'italian','fast food','cheese pizza',2800,'fast_food_7.png',0),
(22,'italian','fast food','mushroom pizza',2100,'fast_food_8.png',1),
(23,'western','fast food','double decker burger',1800,'fast_food_10.png',1),
(24,'western','main dish','whole chicken',2200,'main_dish_4.png',1);

-- --------------------------------------------------------
-- ORDERS
-- --------------------------------------------------------
CREATE TABLE `orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `order_date_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` VARCHAR(50) NOT NULL,
  `number` VARCHAR(15) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `orders` VARCHAR(255) NOT NULL,
  `total` INT NOT NULL,
  `payment_method` VARCHAR(50) NOT NULL,
  `payment_status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- RESERVATION
-- --------------------------------------------------------
CREATE TABLE `reservation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `date_time` DATETIME NOT NULL,
  `adults` INT NOT NULL,
  `children` INT NOT NULL,
  `comments` VARCHAR(255),
  `name` VARCHAR(50) NOT NULL,
  `number` VARCHAR(15) NOT NULL,
  `status` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- NEWSLETTER
-- --------------------------------------------------------
CREATE TABLE `newsletter` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- STAFF
-- --------------------------------------------------------
CREATE TABLE `staff` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- WISHLIST
-- --------------------------------------------------------
CREATE TABLE `wishlist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `food_id` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- MESSAGES 
-- --------------------------------------------------------
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;
