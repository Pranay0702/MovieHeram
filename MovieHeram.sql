-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2025 at 07:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_heram`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Is_Admin` tinyint(1) NOT NULL,
  `Membership_ID` int(11) DEFAULT NULL,
  `Created_Date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Name`, `Email`, `Password`, `Image`, `Is_Admin`, `Membership_ID`, `Created_Date`) VALUES
(12, 'admin', 'admin@gmail.com', '4LnQXqBzqLZxvJBBhnwtsRFcEI7rI3Vz8SLNqG/6Pvtse2GsvWn8dtDgcb5IYibeSJg7Kg==', NULL, 1, NULL, NULL),
(25, 'najibb', 'najib@gmail.com', 'Q5QqRK8SnIGE5JR0RDtcjXstm7H+fhE5ZixoEY+VErWWaqU6Z7JPygIEb+VJaQ72nn7tqpE=', 'avatar4.jpeg', 0, 1, '2025-04-20'),
(52, 'ram', 'ram@gmail.com', 'Z1f6e1Luq8nnnYrphDolOvqHjJeR1qLeYMAWCGijOIAUOLqGO8z4EtSso3nKToAzC0mzPA==', 'avatar6.jpeg', 0, 3, '2025-05-20'),
(53, 'Hari', 'hari@gmail.com', 'XNTUK7CMEAPt36bNQrFQTFbaiae4sKpTK3LVHmDalPjNkOd09W7vuZzdxcgnoVpTp6R9Rg==', 'avatar1.png', 0, 2, '2025-05-20'),
(54, 'Reeya', 'reeya@gmail.com', 'CyJwZtPR+O9HwRfrfabpA1AwGjm4bWvYms0p5MsFiw7ikhLWLFvxteuaPpXADzNhsPeNDQ==', 'avatar3.png', 0, 2, '2025-05-20'),
(55, 'Austin', 'austin@gmail.com', 'cKkWLffF5J0/l/0DUNbz7gXZkZTdeu42z4ZYqV5Tkb5sbNPDxq5MQqTNpur/lFj1h7LkNYQ=', 'avatar4.jpeg', 0, 1, '2025-05-20'),
(56, 'Shreya', 'shreya@gmail.com', 'Al+nOjkY3bGOiZkTokfHcoC3FJyJDXMo4ouwcr1oJNJZyMqK1a0KfMYnKtsG3a2NAG0R98Q=', 'avatar5.png', 0, 1, '2025-05-20'),
(60, 'Krish', 'krish@gmail.com', 'eS1UxUb3bBSBbApF8ga20yhJSuUVb/GR8KWYXloMTvEv0+wXq/P/WndSJ2gL3koMe7DQcy0=', 'avatar4.jpeg', 0, 2, '2025-05-21'),
(61, 'Sita', 'sita@gmail.com', 'TQwGG1m4QgMh1y0XvFjjWvlmM4CKwvzXWLkEkkGZSQXU+fvEFuzZJJsPXRsAIaV0xbkKsA==', 'avatar5.png', 0, 3, '2025-05-21'),
(62, 'Raj', 'raj@gmail.com', 'h9hXrKt3iH3e3nI097ZeDIAASfrn0PR6S5f+Evv4pUPMyFA+xcOxQEG4ITuoDMkNFaD7hA==', 'avatar1.png', 0, 3, '2025-05-21'),
(63, 'Rose', 'rose@gmail.com', 'puliUmQAP2noRdRXHibaTmr5O/BOoh/ZJwFg205MKxYsnDdpkTKPlDa5xWpRDN1haRc7mQ==', 'avatar5.png', 0, 1, '2025-05-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `user_membership_fk` (`Membership_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_membership_fk` FOREIGN KEY (`Membership_ID`) REFERENCES `membership` (`Membership_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
