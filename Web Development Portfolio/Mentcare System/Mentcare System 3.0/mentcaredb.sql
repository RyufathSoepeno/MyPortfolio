-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 04:29 AM
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
-- Database: `mentcaredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int UNSIGNED NOT NULL,
  `patientName` varchar(50) NOT NULL,
  `startDate` datetime NOT NULL,
  `description` text NOT NULL,
  `appointmentType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patientName`, `startDate`, `description`, `appointmentType`) VALUES
(1, 'Budi Setiawan', '2024-08-17 10:45:00', 'I\'d like to check on my mental health', 'Consultation');

-- --------------------------------------------------------

--
-- Table structure for table `assignmedication`
--

CREATE TABLE `assignmedication` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `medication_id` int NOT NULL,
  `assigned_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `id` int NOT NULL,
  `name` varchar(199) NOT NULL,
  `formulation` varchar(199) NOT NULL,
  `class` varchar(199) NOT NULL,
  `manufacturer` varchar(199) NOT NULL,
  `comment` varchar(999) NOT NULL,
  `link` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'LINK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`id`, `name`, `formulation`, `class`, `manufacturer`, `comment`, `link`) VALUES
(1, 'Koller', 'Tablet', 'Doses', 'LPS', '500mg of Acethyl, expiry date 8/15/2030', 'LINK');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `full_name` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_of_birth` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `birth_place` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telephone_code` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telephone_number` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(199) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Image` varchar(599) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `link` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'LINK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `full_name`, `date_of_birth`, `birth_place`, `gender`, `telephone_code`, `telephone_number`, `email`, `Image`, `link`) VALUES
(1, 'Budi Setiawan', '1945-08-17', 'MyBirthPlace, City, Country', 'male', '+44', '91169554432', 'BPS@mail.com', '\\htdocs\\php-projects\\imgfolder', 'LINK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignmedication`
--
ALTER TABLE `assignmedication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `medication_id` (`medication_id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignmedication`
--
ALTER TABLE `assignmedication`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignmedication`
--
ALTER TABLE `assignmedication`
  ADD CONSTRAINT `assignmedication_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `assignmedication_ibfk_2` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
