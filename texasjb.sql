-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 09:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `texasjb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Alkahfi Sabaa', 'Alkahfi', '123123', '081111111', 'alkahfisabaa@gmail.com', 'Depok');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Pancong'),
(2, 'Takoyaki'),
(13, 'Okonomiyaki');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(1, 1, 'Pancong Coklat', 20000, 'Pancong dengan coklat yang menggugah hasrat', 'Pancok.jpg', 1, '2021-11-30 17:00:00'),
(2, 1, 'Pancong Coklat Keju', 20000, 'Pancong dengan coklat dan keju', 'pancoke.jpg', 1, '2021-12-27 14:28:05'),
(3, 1, 'Pancong Greentea', 20000, 'Pancong dengan lumuran greentea nikmat!', 'pangt.jpg', 1, '0000-00-00 00:00:00'),
(11, 2, 'Takoyaki Shrimp', 15000, '<p>Takoyaki dari jepang yang mempunyai isian udang.</p>\r\n', 'tkyk.png', 1, '0000-00-00 00:00:00'),
(22, 2, 'Takoyaki Octopus', 17000, '<p>Takoyaki original jepang yang sangat enak dengan isian gurita asli.</p>\r\n', 'produk1641283420.png', 1, '2022-01-04 08:03:40'),
(23, 2, 'Takoyaki Smoked Beef', 15000, '<p>Takoyaki dengan isian smoked beef yang nikmat.</p>\r\n', 'produk1641283621.png', 1, '2022-01-04 08:07:01'),
(24, 2, 'Takoyaki Keju/Mozarella', 15000, '<p>Takoyaki Keju/Mozarella yang sangat terasa kejunya.</p>\r\n', 'produk1641283671.png', 1, '2022-01-04 08:07:51'),
(25, 2, 'Takoyaki Sosis', 15000, '<p>Takoyaki dengan isi sosis yang nikmat!</p>\r\n', 'produk1641283727.png', 1, '2022-01-04 08:08:47'),
(26, 2, 'Takoyaki Crab', 15000, '<p>Takoyaki dengan isian kepiting</p>\r\n', 'produk1641283758.png', 1, '2022-01-04 08:09:18'),
(27, 13, 'Okonomiyaki Octopus', 20000, '<p>Okonomiyaki yang nikmat dengan sayuran dan gurita didalamnya!</p>\r\n', 'produk1641284251.png', 1, '2022-01-04 08:17:31'),
(28, 13, 'Okonomiyaki Shrimp', 20000, '<p>Okonomiyaki yang nikmat dengan sayuran dan udang didalamnya!</p>\r\n', 'produk1641284291.png', 1, '2022-01-04 08:18:11'),
(29, 13, 'Okonomiyaki Crab', 20000, '<p>Okonomiyaki yang nikmat dengan sayuran dan Kepiting didalamnya!</p>\r\n', 'produk1641284327.png', 1, '2022-01-04 08:18:47'),
(30, 13, 'Okonomiyaki sosis', 20000, '<p>Okonomiyaki yang nikmat dengan sayuran dan sosis didalamnya!</p>\r\n', 'produk1641284487.png', 1, '2022-01-04 08:21:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
