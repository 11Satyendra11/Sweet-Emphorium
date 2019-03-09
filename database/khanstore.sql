-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for khanstore
DROP DATABASE IF EXISTS `khanstore`;
CREATE DATABASE IF NOT EXISTS `khanstore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `khanstore`;

-- Dumping structure for table khanstore.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.brands: ~4 rows (approximately)
DELETE FROM `brands`;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
	(1, 'Pillsbury'),
	(2, 'superior on Main'),
	(3, 'donutCream'),
	(4, 'amul');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table khanstore.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.cart: ~1 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
	(3, 12, '::1', 3, 1),
	(4, 13, '::1', 3, 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table khanstore.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.categories: ~5 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
	(1, 'Brownies'),
	(2, 'Macaroniee'),
	(3, 'Candy'),
	(4, 'Pastries'),
	(5, 'Chocolate');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table khanstore.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.orders: ~2 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
	(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
	(2, 2, 2, 1, '07M47684BS5725041', 'Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table khanstore.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.products: ~1 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
	(1, 1, 1, 'brownie mix taste test funfetti', 20, 'brownie mix taste test funfetti', 'Brownies/20130207-brownie-mix-taste-test-funfetti.jpg', 'brownie mix taste test funfetti'),
	(2, 1, 1, 'Cream Cheese Brownies.', 20, 'cream,cheese,Brownies', 'Brownies/20130207-brownie-mix-taste-test-funfetti.jpg', 'cream,cheese,Brownies'),
	(3, 1, 2, 'Peanut Butter Cup Crunch Brownie Bars', 20, 'Peanut Butter Cup Crunch Brownie Bars', 'Brownies/0051500602350_CL_version_type_large.jpeg', 'Peanut Butter Cup Crunch Brownie Bars'),
	(4, 1, 3, 'Daisy sour Cream Brownies', 20, 'Daisy sour Cream Brownies', 'Brownies/Daisy sour cream brownies/brownies2770x628_9755.jpg', 'Daisy sour Cream Brownies'),
	(5, 2, 1, 'French Almond Macaroons - French Favorites', 20, 'French Almond Macaroons - French Favorites', 'Macaroons/French Almond Macaroons - French Favorites/909_1_.jpg', 'French Almond Macaroons - French Favorites'),
	(6, 2, 1, 'French Macarons with Raspberry-Rose Buttercream', 20, 'French Macarons with Raspberry-Rose Buttercream', 'Macaroons/French Macarons with Raspberry-Rose Buttercream/362972_french-macaroons_1x1.jpg', 'French Macarons with Raspberry-Rose Buttercream'),
	(7, 2, 2, 'Red, White, and Blue Cherry Cheesecake Macarons', 20, 'Red, White, and Blue Cherry Cheesecake Macarons', 'Macaroons/Red, White, and Blue Cherry Cheesecake Macarons/8947featured.jpg', 'Red, White, and Blue Cherry Cheesecake Macarons'),
	(8, 3, 3, 'analia-baggiano', 20, 'analia-baggiano', 'sweets/analia-baggiano-776861-unsplash.jpg', 'analia-baggiano'),
	(9, 3, 4, 'brooke-lark', 20, 'brooke-lark', 'sweets/brooke-lark-261287-unsplash.jpg', 'brooke-lark'),
	(10, 3, 1, 'joanna-kosinska', 20, 'joanna-kosinska', 'sweets/joanna-kosinska-544543-unsplash.jpg', 'joanna-kosinska'),
	(11, 3, 2, 'vinicius', 20, 'vinicius', 'sweets/vinicius-amano-566532-unsplash.jpg', 'vinicius'),
	(12, 4, 0, 'Bichon au citron, a french pastry', 20, 'Bichon au citron, a french pastry', 'pastries/Bichon au citron, a french pastry/800px-Bichon_au_citron_9.jpg', 'Bichon au citron, a french pastry'),
	(13, 4, 0, 'Bündner Birnbrot', 20, 'Bündner Birnbrot', 'pastries/Bndner Birnbrot/800px-Bndner_Birnbrot.jpg', 'Bündner Birnbrot'),
	(14, 4, 0, 'Bierocks', 20, 'Bierocks', 'pastries/Bierocks/Bierocks.jpg', 'Bierocks'),
	(15, 4, 0, 'A Bossche bol', 20, 'A Bossche bol', 'pastries/A Bossche bol/Bossche_bol_1.jpg', 'A Bossche bol'),
	(16, 4, 0, 'bundevara (pumpkin pie)', 20, 'bundevara (pumpkin pie)', 'pastries/bundevara (pumpkin pie)/Bundevara.jpeg', 'bundevara (pumpkin pie)'),
	(17, 5, 0, 'Swiss milk chocolate', 20, 'Swiss milk chocolate', 'chocolate/Swiss milk chocolate/1280px-Schokolade-braun.jpg', 'Swiss milk chocolate'),
	(18, 5, 0, 'semi sweet chocolate chips', 20, 'semi sweet chocolate chips', 'chocolate/semi sweet chocolate chips/800px-Chocolate_chips.jpg', 'semi sweet chocolate chips'),
	(19, 5, 0, 'Tempered couverture chocolate', 20, 'Tempered couverture chocolate', 'chocolate/Tempered couverture chocolate/Couverture_chocolate_sample,_tempered.jpg', 'Tempered couverture chocolate'),
	(20, 5, 0, 'dark compound chocolate', 20, 'dark compound chocolate', 'chocolate/dark chocolate/Compound_chocolate.jpg', 'dark compound chocolate');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table khanstore.user_info
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table khanstore.user_info: ~1 rows (approximately)
DELETE FROM `user_info`;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
	(1, 'satyendra', 'Chandan', 'csatyendra02@gmail.com', '86a719a0b7a220a4e980140a3e924de1', '7660237072', 'rouen', 'france'),
	(2, 'dug', 'dug', 'dug@gmail.com', '86a719a0b7a220a4e980140a3e924de1', '8343488483', 'rouen', 'rouen');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
