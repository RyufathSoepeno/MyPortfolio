-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 06:14 PM
-- Server version: 8.0.38
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bebeknusantara`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `ID` int NOT NULL,
  `username` varchar(99) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(99) NOT NULL,
  `type` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `review_banned` tinyint(1) DEFAULT NULL,
  `preferred_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`ID`, `username`, `email`, `password`, `type`, `country`, `review_banned`, `preferred_keywords`) VALUES
(1, 'myroot', '', '$2y$10$eyamD9i.ktZwQz.AtSN2QuN3K56j6zWwdypUnGpPlcymwsU3GXBv6', 'User', '', NULL, ''),
(2, 'mr', 'ryufathsoepeno@gmail.com', '$2y$10$z9E5r/jQO.InJG4Yn.viVOa76LOem05QcSw1ouJOjsbLi3gyXsJVa', 'Admin', '', 0, ''),
(3, 'Me', 'r.soepeno@kharismabangsa.sch.id', '$2y$10$D4QzVpYTFaS9Zenqy6lNmOB7KI6Becp2YSm6q3zhXzhevOjFzsVwu', 'User', 'Indonesia', 0, NULL),
(4, 'Gallihorn', 'r@mail.com', '$2y$10$5/9Ld2rR5EBIpr69Vw.4SuuyLL.SppIZnNSKHayLlhlPydH/UEfh.', 'User', 'Indonesia', 1, NULL),
(5, 'myroob', 'a@mail.com', '$2y$10$Q5L5vyaY8xWgsBbRw6AtjefLn/66R88yrrk.aCrVNNv3Wy1K7/.0K', 'User', 'Indonesia', NULL, NULL),
(6, 'boss', 'b@mail.com', '$2y$10$BIRcbZpAyykg1dOh5YaXQu8Z6JHVuam0Y58NkpwnDVeG8ErjKrhey', 'Admin', 'Indonesia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `sent_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `is_read`, `sent_at`) VALUES
(1, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:44:59'),
(2, 3, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:49:20'),
(3, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:51:04'),
(4, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:52:23'),
(5, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:53:16'),
(6, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:53:25'),
(7, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:54:08'),
(8, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:54:22'),
(9, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:54:31'),
(10, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:54:50'),
(11, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:57:37'),
(12, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:57:57'),
(13, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:58:07'),
(14, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 21:58:36'),
(15, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:01:26'),
(16, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:02:41'),
(17, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:02:54'),
(18, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:03:27'),
(19, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:03:39'),
(20, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:03:47'),
(21, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:03:54'),
(22, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:04:04'),
(23, 1, 2, 'I hope you enjoy our bebeks', NULL, '2025-05-09 22:04:12'),
(27, 1, 1, 'I like your ducks', NULL, '2025-05-12 20:38:49'),
(28, 6, 5, 'Test', NULL, '2025-05-14 13:31:21'),
(29, 6, 1, 'Thank you I like this', NULL, '2025-05-14 13:31:57'),
(30, 6, 5, 'Test', NULL, '2025-05-14 13:32:01'),
(31, 6, 3, 'I am delighted to serve you', NULL, '2025-05-14 13:44:13'),
(32, 6, 3, 'I am delighted to serve you', NULL, '2025-05-14 13:58:00'),
(33, 6, 3, 'Hiya', NULL, '2025-05-14 13:58:20'),
(34, 1, 3, 'Hi I hope you enjoy this!', NULL, '2025-05-14 14:05:47'),
(35, 1, 4, 'Enjoy your meal!', NULL, '2025-05-14 16:56:52'),
(36, 1, 2, 'Good', NULL, '2025-05-14 16:59:08'),
(37, 1, 3, 'Goodie', NULL, '2025-05-14 16:59:21'),
(38, 6, 1, 'We are thankful you enjoyed your meal', NULL, '2025-05-14 19:50:22'),
(39, 6, 1, 'Thank you i like this food', NULL, '2025-05-14 20:33:28'),
(40, 6, 1, 'Thank you I like this', NULL, '2025-05-14 21:07:52'),
(41, 6, 1, 'You will love it', NULL, '2025-05-14 21:42:53'),
(42, 6, 3, 'This is great', NULL, '2025-05-14 22:16:02'),
(43, 6, 5, 'I hope you enjoy it', NULL, '2025-05-14 22:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `buyer_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `status` enum('Pending','Fulfilled','Cancelled') NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `buyer_id`, `product_id`, `status`, `quantity`, `created_at`) VALUES
(1, 2, 1, 'Pending', 1, '2025-05-09 16:30:35'),
(2, 1, 15, 'Pending', 3, '2025-05-12 20:21:00'),
(3, 1, 12, 'Pending', 3, '2025-05-12 20:21:00'),
(4, 1, 13, 'Pending', 13, '2025-05-12 20:21:00'),
(5, 1, 14, 'Pending', 1, '2025-05-12 20:21:00'),
(6, 1, 15, 'Pending', 3, '2025-05-12 20:21:48'),
(7, 1, 12, 'Pending', 3, '2025-05-12 20:21:48'),
(8, 1, 13, 'Pending', 13, '2025-05-12 20:21:48'),
(9, 1, 14, 'Pending', 1, '2025-05-12 20:21:48'),
(10, 1, 15, 'Pending', 3, '2025-05-12 20:28:33'),
(11, 1, 12, 'Pending', 3, '2025-05-12 20:28:33'),
(12, 1, 13, 'Pending', 13, '2025-05-12 20:28:33'),
(13, 1, 14, 'Pending', 1, '2025-05-12 20:28:33'),
(14, 1, 15, 'Pending', 3, '2025-05-12 20:31:38'),
(15, 1, 12, 'Pending', 3, '2025-05-12 20:31:38'),
(16, 1, 13, 'Pending', 13, '2025-05-12 20:31:38'),
(17, 1, 14, 'Pending', 1, '2025-05-12 20:31:38'),
(18, 1, 15, 'Pending', 3, '2025-05-12 20:31:42'),
(19, 1, 12, 'Pending', 3, '2025-05-12 20:31:42'),
(20, 1, 13, 'Pending', 13, '2025-05-12 20:31:42'),
(21, 1, 14, 'Pending', 1, '2025-05-12 20:31:42'),
(22, 1, 15, 'Pending', 3, '2025-05-12 20:31:42'),
(23, 1, 12, 'Pending', 3, '2025-05-12 20:31:42'),
(24, 1, 13, 'Cancelled', 13, '2025-05-12 20:31:42'),
(25, 1, 14, 'Pending', 1, '2025-05-12 20:31:42'),
(26, 1, 15, 'Pending', 3, '2025-05-12 20:33:48'),
(27, 1, 12, 'Fulfilled', 3, '2025-05-12 20:33:48'),
(28, 1, 13, 'Fulfilled', 13, '2025-05-12 20:33:48'),
(29, 1, 14, 'Fulfilled', 1, '2025-05-12 20:33:48'),
(30, 1, 13, 'Pending', 1, '2025-05-13 14:22:11'),
(31, 1, 13, 'Pending', 1, '2025-05-13 14:25:13'),
(32, 1, 9, 'Pending', 1, '2025-05-13 14:27:54'),
(33, 1, 13, 'Pending', 1, '2025-05-13 14:27:54'),
(34, 1, 14, 'Pending', 1, '2025-05-13 14:37:24'),
(35, 1, 8, 'Pending', 1, '2025-05-13 14:37:24'),
(36, 1, 10, 'Pending', 1, '2025-05-13 14:48:57'),
(37, 1, 8, 'Pending', 1, '2025-05-13 15:13:34'),
(38, 1, 5, 'Pending', 1, '2025-05-13 15:13:34'),
(39, 6, 9, 'Pending', 1, '2025-05-14 13:30:34'),
(40, 6, 10, 'Cancelled', 1, '2025-05-14 13:30:34'),
(41, 6, 12, 'Pending', 1, '2025-05-14 13:31:04'),
(42, 6, 13, 'Fulfilled', 1, '2025-05-14 13:31:04'),
(43, 6, 13, 'Fulfilled', 1, '2025-05-14 20:35:23'),
(44, 6, 9, 'Pending', 1, '2025-05-14 20:35:23'),
(45, 6, 11, 'Pending', 1, '2025-05-14 21:11:44'),
(46, 6, 12, 'Cancelled', 1, '2025-05-14 21:11:44'),
(47, 6, 10, 'Pending', 1, '2025-05-14 21:46:13'),
(48, 6, 11, 'Fulfilled', 1, '2025-05-14 21:46:13'),
(49, 6, 11, 'Pending', 1, '2025-05-14 22:19:32'),
(50, 6, 12, 'Cancelled', 1, '2025-05-14 22:19:32'),
(51, 6, 10, 'Pending', 1, '2025-05-14 22:19:32'),
(52, 6, 7, 'Pending', 1, '2025-05-14 22:44:44'),
(53, 6, 2, 'Pending', 1, '2025-05-14 22:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_requests`
--

CREATE TABLE `password_reset_requests` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset_requests`
--

INSERT INTO `password_reset_requests` (`id`, `user_id`, `ip_address`, `requested_at`) VALUES
(1, 2, '::1', '2025-05-14 17:02:35'),
(2, 3, '::1', '2025-05-14 20:05:59'),
(3, 3, '::1', '2025-05-14 20:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `user_id`, `token`, `expires_at`, `created_at`) VALUES
(1, 3, '3c7f0905280d6e3b6a5646cf87a09b49874a5f0d2a7b41cb6d4b30d18ed7bfef', '2025-05-14 16:13:31', '2025-05-14 13:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int NOT NULL,
  `Name` varchar(99) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `Price` double NOT NULL,
  `Keywords` varchar(225) NOT NULL,
  `Average Rating` double NOT NULL,
  `Comments` varchar(225) NOT NULL,
  `Images` varchar(512) NOT NULL,
  `Pokemon` varchar(99) NOT NULL,
  `Location` varchar(99) NOT NULL,
  `listed` tinyint(1) DEFAULT NULL,
  `owner_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Description`, `Price`, `Keywords`, `Average Rating`, `Comments`, `Images`, `Pokemon`, `Location`, `listed`, `owner_id`) VALUES
(1, 'Bebek Goreng', 'Crispy Fried Duck with Sambal', 8.99, 'Goreng', 8.8, '', 'https://cf.shopee.co.id/file/210cea52729b87cb13c82630e286e613', 'Pikachu', 'Tokyo', 1, 0),
(2, 'Bebek Betutu', 'Balinese Duck with Sambal Matah', 13.99, 'Spicy, Balinese, Matah', 10, '', 'https://www.masakapahariini.com/wp-content/uploads/2021/07/Bebek-Betutu-rumah-makan-Bali.jpg', 'Squirtle', 'Jakarta', 1, 0),
(3, 'Bebek Madura', 'Maduranese Style Duck with Toasted Coconuts and Sambal', 8.99, 'Savory, Madura, Maduranese', 9.5, '', 'https://www.finnafood.com/blog/wp-content/uploads/2023/10/13.-Resep-Bebek-Madura-Bumbu-Hitam-Pedas-Gurih.jpg', 'Bulbasaur', 'Seoul', 1, 0),
(4, 'Bebek Kuwali', 'Spicy and Sour-based Javanese Duck', 10.99, 'Spicy, Sour, Javanese', 9.3, '', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/dbd30f5c-0411-4827-bca8-33e0f98716be_Go-Biz_20200906_135120.jpeg', 'Clodsire', 'Shanghai', 1, 0),
(5, 'Bebek Bacem', 'Dry-based Sweetened Javanese Duck with Fresh Vegetables', 9.99, 'Sweet, Dry, Javanese', 8.8, '', 'https://www.dapurkobe.co.id/wp-content/uploads/bebek-bacem-bakar-kecap.jpg', 'Ditto', 'Tucson', 1, 0),
(6, 'Bebek Garo Rica', 'Spicy Rica-Rica Ducks fresh from Manado', 11.99, 'Spicy, Manado, Rica-rica', 9.8, '', 'https://www.primarasa.co.id/images/images/Bebek%20Garo%20Rica%20Resep%281%29.jpg', 'Quagsire', 'Bangkok', 1, 0),
(7, 'Bebek Padang', 'Savory and spicy Minang style duck', 10.99, 'Savory, Spicy, Minang, Padang', 9.4, '', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/9/3/a399365b-ae64-4778-9c62-b664b5be2513.jpg', 'Wooper', 'Saigon', 1, 0),
(8, 'Bebek Timbungan', 'Balinese Duck served in Bamboo', 18.99, 'Balinese, Fresh, Savory, Bamboo', 9.2, '', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi6N7bH3eSjXnHbVkG25b61i4SUNWIIE1sgg&s', 'Mewtwo', 'Phnom Penh', 1, 0),
(9, 'Bebek Songkem', 'Spicy steamed duck steamed from bamboo leaves', 12.99, 'Spicy, Steamed Bamboo', 9, '', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6tEQrm2qPzYSYuRUViJFTa3-2NBXWjnGX1A&s', 'Persian', 'New York', 1, 0),
(10, 'Soto Bebek', 'Bebek Served in Indonesian Soto', 8.99, 'Soto', 9, '', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUFNSb9AAfihrAnwoEbRIKXFxtLjIigaLO7p0Pjhl1tpXNnmpFmAlpNUeTGiTG6wSxSHY&usqp=CAU', 'Beedrill', 'Sao Paulo', 1, 0),
(11, 'Nasi Goreng Bebek', 'Nasi Goreng with Duck', 10.99, 'Nasi Goreng, Fried Rice', 8.9, '', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.kompas.com%2Ffood%2Fread%2F2023%2F01%2F06%2F210300575%2Fresep-nasi-goreng-bebek-gurih-dan-nikmat&psig=AOvVaw0dAF3QVIxQyCjrXJqANAzV&ust=1743559056453000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPDvgeTdtYwDFQAAAAAdAAAAABAE', 'Charizard', 'Rome', 1, 0),
(12, 'Bebek Palekko', 'Spicy duck served with ketupat', 13.99, 'Spicy, Ketupat', 8, '', 'https://img.kurio.network/u6GS4ISxXjdtHr9KtISb6_z1mFw=/1200x1200/filters:quality(80)/https://kurio-img.kurioapps.com/21/11/09/8abb659e-d2f0-4a05-82cd-3387b3ce198c.jpe', 'Venusaur', 'Madrid', 1, 0),
(13, 'Bebek Sinjay', 'Spicy-mango Maduranese duck', 14.99, 'Spicy, Mango, Madura, Maduranese', 9.1, '', 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/74/2023/10/31/WhatsApp-Image-2023-10-31-at-103610-922638482.jpeg', 'Metapod', 'Berlin', 1, 0),
(14, 'Bebek Bakar', 'Grilled Duck', 9.99, 'Grilled', 8.7, '', 'https://sultantv.co/wp-content/uploads/2023/03/e21c65a0dbb9d7d1fd5ba98374a4fe64.png', 'Butterfree', 'Paris', 1, 0),
(27, 'Donald Duck', 'He\'s from Disney', 12, 'Spicy, Madura', 8, '', 'uploads/6824b981c3d7e_pngimg.com - donald_duck_PNG21.png', 'Pikachu', 'Jakarta', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_alerts_user` (`user_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `FK_Username` (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_user_email` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_messages_receiver` (`receiver_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orders_buyer` (`buyer_id`);

--
-- Indexes for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_product_keywords` (`Keywords`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alerts`
--
ALTER TABLE `alerts`
  ADD CONSTRAINT `alerts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `data` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `data` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `data` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `data` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `data` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
