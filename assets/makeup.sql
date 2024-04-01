-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2024 at 08:09 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeup`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
CREATE TABLE IF NOT EXISTS `benefits` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `benefit_list` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `benefit_list`, `created_at`, `updated_at`) VALUES
(1, 'Non-flaking and non-caking, 12 hours', '2024-03-28 19:56:15', '2024-03-28 19:56:15'),
(2, 'Lips look visibly fuller, 12 hours', '2024-03-28 19:56:16', '2024-03-28 19:56:16'),
(3, 'Gives your lips a brilliant shine', '2024-03-28 19:56:17', '2024-03-28 19:56:17'),
(4, 'Nourishing, non-sticky formula', '2024-03-28 19:56:18', '2024-03-28 19:56:18'),
(5, 'Lip brush for blending and limitless artistry ', '2024-03-28 19:56:19', '2024-03-28 19:56:19'),
(6, 'Smooth application & all day wear ', '2024-03-28 19:56:20', '2024-03-28 19:56:20'),
(7, 'Long-wearing lip color, soft creamy texture', '2024-03-28 19:56:21', '2024-03-28 19:56:21'),
(8, 'Subtle wash of buildable color', '2024-03-28 19:56:22', '2024-03-28 19:56:22'),
(9, 'Perfect for achieving a variety of trending looks ', '2024-03-28 19:57:15', '2024-03-28 19:57:15'),
(10, 'Hydrating', '2024-03-29 03:28:24', '2024-03-29 03:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `lips`
--

DROP TABLE IF EXISTS `lips`;
CREATE TABLE IF NOT EXISTS `lips` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `brand` varchar(500) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `product_link` varchar(1500) NOT NULL,
  `product_image` varchar(1500) NOT NULL,
  `types_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lips`
--

INSERT INTO `lips` (`id`, `name`, `brand`, `description`, `product_link`, `product_image`, `types_id`, `created_at`, `updated_at`) VALUES
(1, 'M·A·CXIMAL Silky Matte Lipstick', 'MAC', 'A silky matte lipstick that delivers 12 hours of full-coverage color and eight hours of moisture.', 'https://www.maccosmetics.ca/product/13854/123863/products/makeup/lips/lipstick/macximal-silky-matte-lipstick#', 'mac.png', 1, '2024-03-28 18:49:20', '2024-03-28 18:49:20'),
(2, 'Lip Lacquer', 'e.l.f', ' A vitamin-infused lip gloss that slicks lips with a sheer wash of color and all-out shine with a flexible, lip-hugging applicator!', 'https://www.elfcosmetics.com/en_CA/lip-lacquer/21172.html', 'elf.png', 4, '2024-03-28 18:49:22', '2024-03-28 18:49:22'),
(3, 'Dazed & Diffused Blurring Lip Liner', 'NYX PROFESSIONAL MAKEUP', 'Define and perfect your pout effortlessly. Infused with jojoba oil, this dual-ended pencil delivers rich, velvety-matte color for a flawless finish.', 'https://www.nyxcosmetics.ca/en/-dazed-and-diffused-blurring-lip-liner-NYX_795.html?dwvar_NYX__795_color=en_fuego', 'nyx.png', 3, '2024-03-28 18:50:10', '2024-03-28 18:50:10'),
(4, 'Sheer Strength™ Hydrating Lip Tint', 'Thrive Causemetics', 'Powered by  24-Hour Moisture Lock Complex™, our tinted balm deeply hydrates instantly and over time for visibly softer, smoother lips.', 'https://thrivecausemetics.ca/products/sheer-strength-hydrating-lip-tint?variant=42322190368935&utm_source=google_shopping&utm_medium=organic&srsltid=AfmBOortkHSIgkf27vZrzDmk2RfRddlkk1duU6MyKhZYUmc-W2KofHm54ac', 'thrive.png', 4, '2024-03-28 18:51:20', '2024-03-28 18:51:20'),
(5, 'Free People Vegan Lip Gloss ', 'Free People', 'All-in-one oil-infused gloss and lip treatment. Enriched with nourishing ingredients to provide lips with a comfortable, moisturized barrier, and a subtle shimmer for a natural-looking sheen.', 'https://www.freepeople.com/shop/free-people-vegan-lip-gloss/?color=000&size=One%20Size&type=REGULAR&countryCode=ca&currency=USD%3Fa%3Drecrawl&quantity=1', 'free.png', 4, '2024-03-28 18:52:13', '2024-03-28 18:52:13'),
(6, 'Vegan Hydrating Lip Balm ', 'SEPHORA COLLECTION', 'A vegan, hydrating lip balm that glides on easily, provides lips with just a hint of sheer, natural color and glow. Enhances natural lip luster.\r\n\r\n', 'https://www.sephora.com/ca/en/product/sephora-collection-hydrating-lip-balm-P467141?country_switch=ca&lang=en&skuId=2387249&srsltid=AfmBOoqOQwuLRXKmGS5tP4aKi8rzXDKzmzO2owJI9W0x5YRwad4xvBiL_Sg', 'sephora.png', 2, '2024-03-28 18:52:40', '2024-03-28 18:52:40'),
(7, 'Rouge Pur Couture The Slim Velvet Radical', 'Yves Saint Laurent', 'An intensely pigmented semi-matte lipstick formulated with silky oils for ultimate comfort. The innovative square bullet allows for precise application to complete your makeup look.', 'https://www.yslbeauty.ca/en_CA/makeup/lip-makeup/lipstick/rouge-pur-couture-the-slim-velvet-radical/WW-50824YSL.html', 'ysl.png', 1, '2024-03-28 18:55:11', '2024-03-28 18:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `lips_benefits`
--

DROP TABLE IF EXISTS `lips_benefits`;
CREATE TABLE IF NOT EXISTS `lips_benefits` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lips_id` int NOT NULL,
  `benefits_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lips_benefits`
--

INSERT INTO `lips_benefits` (`id`, `lips_id`, `benefits_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2024-03-28 20:01:20', '2024-03-28 20:01:20'),
(2, 2, 4, '2024-03-28 20:01:24', '2024-03-28 20:01:24'),
(3, 2, 8, '2024-03-28 20:01:25', '2024-03-28 20:01:25'),
(4, 3, 6, '2024-03-28 20:01:30', '2024-03-28 20:01:30'),
(5, 3, 5, '2024-03-28 20:03:30', '2024-03-28 20:03:30'),
(6, 3, 9, '2024-03-28 20:03:35', '2024-03-28 20:03:35'),
(7, 5, 4, '2024-03-28 20:03:36', '2024-03-28 20:03:36'),
(8, 1, 1, '2024-03-28 20:04:10', '2024-03-28 20:04:10'),
(9, 1, 2, '2024-03-28 20:04:15', '2024-03-28 20:04:15'),
(10, 4, 6, '2024-03-28 20:04:22', '2024-03-28 20:04:22'),
(11, 4, 3, '2024-03-28 20:04:23', '2024-03-28 20:04:23'),
(12, 6, 6, '2024-03-28 20:04:27', '2024-03-28 20:04:27'),
(13, 6, 7, '2024-03-28 20:05:10', '2024-03-28 20:05:10'),
(14, 7, 7, '2024-03-28 20:05:11', '2024-03-28 20:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Matte Lipstick', '2024-03-29 01:29:23', '2024-03-29 01:29:23'),
(2, 'Lip Balm ', '2024-03-29 01:29:25', '2024-03-29 01:29:25'),
(3, 'Lip Liner', '2024-03-29 01:29:26', '2024-03-29 01:29:26'),
(4, 'Lip Gloss', '2024-03-29 01:29:27', '2024-03-29 01:29:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
