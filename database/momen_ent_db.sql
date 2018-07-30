-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2018 at 08:22 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `momen_ent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_num` varchar(200) NOT NULL,
  `admin_type` varchar(5) NOT NULL,
  `image` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `phone_num`, `admin_type`, `image`, `password`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '01731909035', 'a', 'libs/upload_pic/admin_image/19560799545b52e3c974f96.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'arup', 'arup_admin', 'arupkumerbose@gmail.com', '01731909035', 'd', 'libs/upload_pic/admin_image/5565868935b52c4c77cb20.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'bose5', 'sm18888', 'charulatachaity@gmail.com', '01731909035', 'a', 'libs/upload_pic/admin_image/5257322145b52c4eea7fb9.jpg', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'id',
  `a_title` varchar(250) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `a_title`, `image_path`) VALUES
(1, 'Men’s Clothing', 'libs/upload_pic/ads_image/10603228775b5c4b5d30329.jpg'),
(2, 'TRENDING DESIGNS', 'libs/upload_pic/ads_image/19571318235b5da38c20f2f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(20) NOT NULL,
  `b_title` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `c_title` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_title`, `status`) VALUES
(1, 'Apple', NULL),
(2, 'Applesdfgsdf', NULL),
(3, 'rrrrttt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallerys`
--

CREATE TABLE `gallerys` (
  `id` int(20) NOT NULL,
  `g_title` varchar(200) DEFAULT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallerys`
--

INSERT INTO `gallerys` (`id`, `g_title`, `image`) VALUES
(2, 'Gallery Image', 'libs/upload_pic/gallery_image/3114601845b5da90dbae68.jpg'),
(3, 'Gallery Image', 'libs/upload_pic/gallery_image/1897350965b5da9135e829.jpg'),
(4, 'Gallery Image', 'libs/upload_pic/gallery_image/13606546375b5da91874b37.jpg'),
(5, 'Gallery Image', 'libs/upload_pic/gallery_image/16456020945b5da91de0222.jpg'),
(6, 'Gallery Image', 'libs/upload_pic/gallery_image/6194073135b5da92288a89.jpg'),
(7, 'Gallery Image', 'libs/upload_pic/gallery_image/3132242875b5da92726067.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) UNSIGNED NOT NULL,
  `shipping_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `qty` smallint(10) NOT NULL,
  `price` int(20) NOT NULL,
  `sub_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(20) UNSIGNED DEFAULT NULL,
  `cat_id` int(20) UNSIGNED NOT NULL,
  `quentity` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED DEFAULT NULL,
  `prv_price` int(10) UNSIGNED DEFAULT NULL,
  `top_sell` tinyint(1) DEFAULT NULL,
  `sale` tinyint(1) DEFAULT NULL,
  `up_comming` tinyint(1) DEFAULT NULL,
  `feature` tinyint(1) DEFAULT NULL,
  `overview` text,
  `status` tinyint(1) NOT NULL,
  `details` text NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `product_name`, `brand_id`, `cat_id`, `quentity`, `price`, `discount`, `prv_price`, `top_sell`, `sale`, `up_comming`, `feature`, `overview`, `status`, `details`, `created_at`) VALUES
(1, 'p-001', 'Sed ut perspiciatid', NULL, 1, NULL, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</span>', '2018-07-30'),
(2, 'p-002', 'Sed ut perspiciatid 2', NULL, 2, NULL, 2345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(3, 'p-003', 'Sed ut perspiciatid', NULL, 2, NULL, 3456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(4, 'p-004', 'Sed ut perspiciatid 4', NULL, 2, NULL, 4546, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(5, 'p-005', 'Sed ut perspiciatid', NULL, 2, NULL, 67766, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(6, 'p-005', 'Sed ut perspiciatid5', NULL, 2, NULL, 456454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(7, 'p-006', 'Sed ut perspiciatid', NULL, 1, NULL, 43534534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(8, 'p-007', 'Sed ut perspiciatid 7', NULL, 3, NULL, 7886655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30'),
(9, 'p-008', 'Sed ut perspiciatid 8', NULL, 2, NULL, 4546333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><span style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', '2018-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(20) UNSIGNED NOT NULL,
  `product_id` int(20) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`) VALUES
(1, 1, 'libs/upload_pic/product_image/5715029495b5e870ae2b01.jpg'),
(2, 1, 'libs/upload_pic/product_image/8985764415b5e870b1b4e3.jpg'),
(3, 1, 'libs/upload_pic/product_image/15085884835b5e870b46fa4.jpg'),
(4, 2, 'libs/upload_pic/product_image/15755728825b5e872f38352.jpg'),
(5, 2, 'libs/upload_pic/product_image/11741904285b5e872f5abd1.jpg'),
(6, 2, 'libs/upload_pic/product_image/12721320785b5e872f79383.jpg'),
(7, 3, 'libs/upload_pic/product_image/14043911895b5e874a19815.jpg'),
(8, 3, 'libs/upload_pic/product_image/11120750895b5e874a42c74.jpg'),
(9, 3, 'libs/upload_pic/product_image/15170358945b5e874a6416b.jpg'),
(10, 4, 'libs/upload_pic/product_image/17142390755b5e87636009c.jpg'),
(11, 4, 'libs/upload_pic/product_image/6511559575b5e876387530.jpg'),
(12, 4, 'libs/upload_pic/product_image/19558400695b5e8763a129f.jpg'),
(13, 4, 'libs/upload_pic/product_image/4308318405b5e8763bba01.jpg'),
(14, 5, 'libs/upload_pic/product_image/20073310175b5e87ab2ce93.jpg'),
(15, 5, 'libs/upload_pic/product_image/6702101295b5e87ab51bf6.jpg'),
(16, 5, 'libs/upload_pic/product_image/20325036285b5e87ab6be91.jpg'),
(17, 5, 'libs/upload_pic/product_image/21312439235b5e87ab93389.jpg'),
(18, 5, 'libs/upload_pic/product_image/19120387065b5e87abb1184.jpg'),
(19, 6, 'libs/upload_pic/product_image/19295112865b5e882b179a7.jpg'),
(20, 6, 'libs/upload_pic/product_image/3393773945b5e882b30290.jpg'),
(21, 6, 'libs/upload_pic/product_image/8381633995b5e882b4aba5.jpg'),
(22, 6, 'libs/upload_pic/product_image/18193489185b5e882b6512a.jpg'),
(23, 7, 'libs/upload_pic/product_image/19111136325b5e88570512a.jpg'),
(24, 7, 'libs/upload_pic/product_image/7610090255b5e885723de3.jpg'),
(25, 7, 'libs/upload_pic/product_image/4737333155b5e88573c00b.jpg'),
(26, 7, 'libs/upload_pic/product_image/14962276885b5e88576717e.jpg'),
(27, 8, 'libs/upload_pic/product_image/10175657955b5e8889d1ad6.jpg'),
(28, 8, 'libs/upload_pic/product_image/16157413635b5e8889ed09b.jpg'),
(29, 8, 'libs/upload_pic/product_image/20782267075b5e888a13583.jpg'),
(30, 9, 'libs/upload_pic/product_image/14630253325b5e88a489461.jpg'),
(31, 9, 'libs/upload_pic/product_image/14934123135b5e88a4a35e5.jpg'),
(32, 9, 'libs/upload_pic/product_image/10452356935b5e88a4c9a8d.jpg'),
(33, 9, 'libs/upload_pic/product_image/17879489675b5e88a4e68ac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_num` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `total_qty` int(20) UNSIGNED DEFAULT NULL,
  `total_amount` int(20) UNSIGNED DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(20) UNSIGNED NOT NULL,
  `s_title` varchar(200) DEFAULT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `s_title`, `image`) VALUES
(5, 'Slider Image', 'libs/upload_pic/slider_image/11228639695b5da05c2058c.jpg'),
(6, 'Slider Image', 'libs/upload_pic/slider_image/8860863345b5da06159a2f.jpg'),
(7, 'Slider Image', 'libs/upload_pic/slider_image/15311684975b5da0672c2cd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(20) UNSIGNED NOT NULL,
  `field_name` varchar(250) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `field_name`, `value`) VALUES
(1, 'address', 'adsfsdaf'),
(2, 'phone', '12345678910'),
(3, 'email', 'arupkumerbose@gmail.com'),
(4, 'about_us', '<h1 style=\"margin-top: 18px; margin-bottom: 0px; color: rgb(114, 114, 114); font-size: 14px; line-height: 1.6;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</span></h1><p style=\"margin-top: 18px; margin-bottom: 0px; color: rgb(114, 114, 114); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">velit esse cillum dolore eu fugiat nulla pariatur<span style=\"font-weight: bold;\">. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i</span>d est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem <span style=\"text-decoration-line: underline;\">quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur</span>, adip<span style=\"font-style: italic; font-weight: bold;\">isci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.</span></p>'),
(5, 'wellcome_note', '<p class=\"mb-2\" style=\"margin-top: 18px; margin-bottom: 0px; color: rgb(114, 114, 114); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate<br></p>\r\n\r\n<p style=\"margin-top: 18px; margin-bottom: 0px; color: rgb(114, 114, 114); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>'),
(6, 'md_name', 'Arup'),
(7, 'md_desig', 'md'),
(8, 'md_image', 'libs/upload_pic/md_image/7654836785b5d6343bbb20.jpg'),
(9, 'md_message', 'fdgdfgdsfgdfgfdg'),
(16, 'logo', 'libs/upload_pic/logo_image/4536651655b5d8f22ea301.png'),
(17, 'our_service', '<p class=\"mb-2\" style=\"color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px; margin-bottom: 0.5rem !important;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</p><p style=\"margin-bottom: 0px; color: rgb(114, 114, 114); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_num` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(20) UNSIGNED NOT NULL,
  `v_type` varchar(10) DEFAULT 'y',
  `video_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `v_type`, `video_link`) VALUES
(1, 'y', 'fgdfgdfgdfg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerys`
--
ALTER TABLE `gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallerys`
--
ALTER TABLE `gallerys`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
