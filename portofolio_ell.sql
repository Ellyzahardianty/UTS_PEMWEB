-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2024 at 03:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio_ell`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `interests` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `birthdate`, `age`, `university`, `description`, `interests`) VALUES
(1, 'Ellyza Hardianty', '2004-03-01', 20, 'Pembangunan Jaya University', 'Informatics Engineering student who served as Secretary of the student association and is active in organizational activities that help develop leadership, teamwork, and communication skills.', 'Interested in technology, especially in UI/UX design, and committed to creating attractive and easy-to-use interface designs.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Female','Male','Others') NOT NULL,
  `message` text NOT NULL,
  `send_copy` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `title`, `image_path`) VALUES
(1, 'Ellyza Hardianty', 'Always strive to grow and learn from every experience.', 'ellyza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `project_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `project_type`) VALUES
(1, 'Design UI/UX', 'I have experience in designing UI/UX through various projects in my courses. I learned to understand user needs and translate them into intuitive and engaging interfaces. The projects include: The Parents, Fash Love, Kids Land, Try Makeup.', 'Project'),
(2, 'Applications', 'I have experience in developing applications be it web-based or desktop, from planning to implementation. I design responsive and functional user interfaces that are attractive, easy to use, and accessible. Projects include: Desktop-based School Payment Application, WEB-Based Portfolio, Fash Love web-based application.', 'Application'),
(3, 'SRS', 'A Software Requirements Specification (SRS) document is a document that details the complete needs and functions of the software. This document aims to explain how the software to be developed can meet user needs and meet certain standards. It includes: Use Case, Sequence Diagram, State Diagram, Data Flow Diagram (DFD).', 'Documentation');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `sekolah`, `deskripsi`) VALUES
(1, 'SMP NEGERI 03 KOTA TANGERANG', 'While attending SMP Negeri 03 Tangerang City, I was active in the student council organization. Through the student council, I had the opportunity to hone my leadership, communication, and teamwork skills. In addition, I also learned to organize school activities and play a role in various events involving students, thus increasing my experience and sense of responsibility in the organization.'),
(2, 'SMA YADIKA 5, JAKARTA BARAT', 'During my time at SMA YADIKA 5, I was active in the student council and served on the Pensi (Pentas Seni) committee. This experience allowed me to develop my leadership, communication, and teamwork skills while gaining valuable knowledge in event management and a sense of responsibility in contributing to school activities.'),
(3, 'PEMBANGUNAN JAYA UNIVERSITY', 'Currently, I am studying at Pembangunan Jaya University majoring in Informatics. On campus, I am active in the Himaforka organization, which gives me the opportunity to develop my technical and leadership skills, as well as contribute to various academic and social activities.');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `percentage`) VALUES
(1, 'Data Processing (Ms.Word & Excel)', 90),
(2, 'Figma', 90),
(3, 'SQL', 85),
(4, 'Team Work', 80),
(5, 'Communication', 75),
(6, 'HTML', 70),
(7, 'Basic Programming (HTML, CSS, PHP, C, JAVA, JS, Python)', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
