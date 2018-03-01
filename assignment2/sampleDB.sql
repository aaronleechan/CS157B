-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2018 at 09:39 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs157b`
--

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `ClassID` int(11) NOT NULL,
  `ClassName` varchar(50) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `ProfessorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Class`
--

INSERT INTO `Class` (`ClassID`, `ClassName`, `DepartmentID`, `ProfessorID`) VALUES
(10, 'CS157b', 120, 2),
(11, 'CS154', 120, 5),
(12, 'CMPE133', 150, 3),
(13, 'CMPE172', 150, 3),
(14, 'Math64', 160, 4),
(15, 'KIN27A', 155, 1),
(16, 'ME130', 159, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `SchoolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`DepartmentID`, `DepartmentCode`, `DepartmentName`, `SchoolID`) VALUES
(100, 'AED', 'Aerospace Engineering Department,', 1000),
(101, 'ASDAFROTC', 'Aerospace Studies Department (Air Force ROTC)', 1000),
(102, 'ASP', 'African Studies Program', 1000),
(103, 'AASD', 'African-American Studies Department', 1000),
(104, 'ASP', 'American Studies Program', 1000),
(105, 'AD', 'Anthropology Department', 1000),
(106, 'AAHD', 'Art and Art History Department', 1000),
(107, 'ASP', 'Asian Studies Program', 1000),
(108, 'AI', 'Athletics (Intercollegiate)', 1000),
(109, 'A', 'Aviation', 1000),
(110, 'BSP', 'Behavioral Sciences Program', 1000),
(111, 'BSD', 'Biological Sciences Department', 1000),
(112, 'BCMED', 'Biomedical, Chemical and Materials Engineering Dep', 1000),
(113, 'B', 'Business', 1000),
(114, 'CWDCE', 'Charles W. Davidson College of Engineering', 1000),
(115, 'CD', 'Chemistry Department', 1000),
(116, 'CADD', 'Child and Adolescent Development, Department of', 1000),
(117, 'CEED', 'Civil and Environmental Engineering Department', 1000),
(118, 'CASA', 'College of Applied Sciences and Arts', 1000),
(119, 'CHA', 'College of Humanities and Arts', 1000),
(120, 'CS', 'College of Science', 1000),
(121, 'CSS', 'College of Social Science', 1000),
(122, 'CSD', 'Communication Studies Department', 1000),
(123, 'CE', 'Computer Engineering', 1000),
(124, 'CSD', 'Computer Science Department', 1000),
(125, 'CLLCE', 'Connie L. Lurie College of Education', 1000),
(126, 'CAP', 'Creative Arts Program', 1000),
(127, 'D', 'Dance', 1000),
(128, 'DD', 'Design Department', 1000),
(129, 'DSLCGSB', 'Donald and Sally Lucas College and Graduate School', 1000),
(130, 'ED', 'Economics Department', 1000),
(131, 'ECDSD', 'Education - Communicative Disorders and Sciences, ', 1000),
(132, 'ECED', 'Education - Counselor Education, Department of', 1000),
(133, 'EEDEL', 'Education - Ed.D. Educational Leadership', 1000),
(134, 'EELD', 'Education - Educational Leadership, Department of', 1000),
(135, 'ESED', 'Education - Special Education, Department of', 1000),
(136, 'ETED', 'Education - Teacher Education, Department of', 1000),
(137, 'EED', 'Electrical Engineering Department', 1000),
(138, 'ECL', 'English and Comparative Literature', 1000),
(139, 'ESD', 'Environmental Studies, Department of', 1000),
(140, 'FTD', 'Film and Theatre, Department of', 1000),
(141, 'GE', 'General Engineering', 1000),
(142, 'GD', 'Geography Department', 1000),
(143, 'GD', 'Geology Department', 1000),
(144, 'GS', 'Global Studies', 1000),
(145, 'HSRD', 'Health Science and Recreation Department', 1000),
(146, 'HD', 'History Department', 1000),
(147, 'HTEM', 'Hospitality, Tourism, and Event Management', 1000),
(148, 'HD', 'Humanities Department', 1000),
(149, 'ISE', 'Industrial and Systems Engineering', 1000),
(150, 'IS', 'Information School', 1000),
(151, 'IS', 'Interdisciplinary Studies', 1000),
(152, 'JSP', 'Jewish Studies Program', 1000),
(153, 'JMC', 'Journalism and Mass Communications', 1000),
(154, 'JSD', 'Justice Studies Department', 1000),
(155, 'KD', 'Kinesiology Department', 1000),
(156, 'LASP', 'Latin American Studies Program', 1000),
(157, 'LLDD', 'Linguistics and Language Development Department', 1000),
(158, 'MSD', 'Mathematics and Statistics Department', 1000),
(159, 'MED', 'Mechanical Engineering Department', 1000),
(160, 'MPDM', 'Medical Product Development Management', 1000),
(161, 'MCSD', 'Meteorology and Climate Science Department', 1000),
(162, 'MASD', 'Mexican American Studies Department', 1000),
(163, 'MESP', 'Middle East Studies Program', 1000),
(164, 'MSDAROTC', 'Military Science Department (Army ROTC)', 1000),
(165, 'MLML', 'Moss Landing Marine Laboratories', 1000),
(166, 'MDS', 'Music and Dance, School of', 1000),
(167, 'NSP', 'Nuclear Science Program', 1000),
(168, 'NS', 'Nursing, School of', 1000),
(169, 'NFSPD', 'Nutrition, Food Science and Packaging Department', 1000),
(170, 'OTD', 'Occupational Therapy Department', 1000),
(171, 'PD', 'Philosophy Department', 1000),
(172, 'PAD', 'Physics and Astronomy Department', 1000),
(173, 'PSD', 'Political Science Department', 1000),
(174, 'PD', 'Psychology Department', 1000),
(175, 'SEP', 'Science Education Program', 1000),
(176, 'SWP', 'Social Work Program', 1000),
(177, 'SISSD', 'Sociology and Interdisciplinary Social Sciences De', 1000),
(178, 'T', 'Technology', 1000),
(179, 'US', 'Undergraduate Studies', 1000),
(180, 'UCS', 'University Counseling Services', 1000),
(181, 'UL', 'University Library', 1000),
(182, 'URPD', 'Urban and Regional Planning Department', 1000),
(183, 'WGSS', 'Women, Gender and Sexuality Studies', 1000),
(184, 'WLL', 'World Languages and Literatures', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Note`
--

CREATE TABLE `Note` (
  `Definition` varchar(126) NOT NULL,
  `Term` varchar(100) NOT NULL,
  `NoteID` int(11) NOT NULL,
  `NotebookID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Note`
--

INSERT INTO `Note` (`Definition`, `Term`, `NoteID`, `NotebookID`) VALUES
('Brain of the computer that performs instructions defined by software', 'Central Processing Unit (CPU)', 1, 1000),
('Storage device that stores digitally encoded data on rapidly rotating rigid disks with magnetic surfaces. The device is either', 'Hard Drive', 2, 1001),
('Printed circuit board on which the CPU, RAM chips and other electronic circuit elements of a digital computer are frequently l', 'Motherboard', 3, 1003),
('Random Access Memory - temporary place to store material that works quickly. erased when computer turns off. Volatile.', 'RAM', 4, 1002),
('Set of instructions that tells the hardware what to do. It is what guides the hardware and tells it how to accomplish each tas', 'Software', 5, 1006),
('Any type of computer network that is not connected by cables of any kind.', 'Wireless Network', 6, 1004),
('Software used to control the computer and its peripheral equipment.', 'Operating System (OS)', 7, 1005),
('A device that provides power to a computer', 'Power Supply', 8, 1007);

-- --------------------------------------------------------

--
-- Table structure for table `Notebook`
--

CREATE TABLE `Notebook` (
  `NotebookID` int(11) NOT NULL,
  `NotebookName` varchar(50) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ClassID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notebook`
--

INSERT INTO `Notebook` (`NotebookID`, `NotebookName`, `UserID`, `ClassID`) VALUES
(1000, 'Database', 10001, 10),
(1001, 'Operating system', 10002, 11),
(1002, 'Data structure', 10004, 12),
(1003, 'AI', 10003, 13),
(1004, 'Software Engineering', 10005, 14),
(1005, 'Project Management', 10006, 16),
(1006, 'Mobile Development', 10000, 15),
(1007, 'Software Security', 10003, 11),
(1008, 'OOD', 10004, 13);

-- --------------------------------------------------------

--
-- Table structure for table `Professor`
--

CREATE TABLE `Professor` (
  `ProfessorID` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professor`
--

INSERT INTO `Professor` (`ProfessorID`, `LastName`, `FirstName`) VALUES
(1, 'Bott', 'John '),
(2, 'Burkhart ', 'Irma'),
(3, 'Tzivya', 'Zabel'),
(4, 'Albina', 'Krzysiek'),
(5, 'Gulumbu', 'Alkmene'),
(6, 'Ankita', 'Zodwa');

-- --------------------------------------------------------

--
-- Table structure for table `Professor_Email`
--

CREATE TABLE `Professor_Email` (
  `Email` varchar(50) NOT NULL,
  `ProfessorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professor_Email`
--

INSERT INTO `Professor_Email` (`Email`, `ProfessorID`) VALUES
('ahevuqav-5847@yopmail.com', 1),
('keffakyssopa-6104@yopmail.com', 6),
('offiserrimm-3287@yopmail.com', 5),
('sywibuteg-6517@yopmail.com', 3),
('tojyqubuss-8083@yopmail.com', 2),
('xaxaffoquro-8158@yopmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Professor_Phone`
--

CREATE TABLE `Professor_Phone` (
  `Phone` varchar(50) NOT NULL,
  `ProfessorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professor_Phone`
--

INSERT INTO `Professor_Phone` (`Phone`, `ProfessorID`) VALUES
('2808736332', 6),
('4159871209', 2),
('5209876543', 3),
('6809875426', 4),
('7809872657', 1),
('9807654234', 5);

-- --------------------------------------------------------

--
-- Table structure for table `School`
--

CREATE TABLE `School` (
  `SchoolName` varchar(50) NOT NULL,
  `SchoolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School`
--

INSERT INTO `School` (`SchoolName`, `SchoolID`) VALUES
('San Jose State University', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `TeachAt`
--

CREATE TABLE `TeachAt` (
  `ProfessorID` int(11) NOT NULL,
  `SchoolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TeachAt`
--

INSERT INTO `TeachAt` (`ProfessorID`, `SchoolID`) VALUES
(1, 1000),
(2, 1000),
(3, 1000),
(4, 1000),
(5, 1000),
(6, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `UserName`, `Email`, `password`) VALUES
(10000, 'thurgood8', 'aqufirrop-1556@yopmail.com', '99>Kq8ErCLp\'ac??'),
(10001, 'strainerstate', 'pimmiliqaj-8270@yopmail.com', 'QT@4D8[9\"7\'!2[s>'),
(10002, 'immersiontraits', 'xigopecu-2293@yopmail.com', 'st\"YyUUNRA($(8t4'),
(10003, 'assetthere', 'qabazimo-8291@yopmail.com', '}X_N#e+8?W\"]R4JQ'),
(10004, 'spokenoften', 'uddavewiss-2629@yopmail.com', 'u_qZM9q`w9r-9rc-'),
(10005, 'Aaron', 'jehebosih-4040@yopmail.com', 'u_6$*QC*r*Ps[8)\"'),
(10006, 'barexiphoid', 'umellittul-5472@yopmail.com', '^rVK5WqzC{GYw%dc');

-- --------------------------------------------------------

--
-- Table structure for table `Vote`
--

CREATE TABLE `Vote` (
  `UserRating` int(11) NOT NULL,
  `NotebookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Vote`
--

INSERT INTO `Vote` (`UserRating`, `NotebookID`, `UserID`) VALUES
(5, 1000, 10000),
(4, 1001, 10002),
(4, 1002, 10005),
(3, 1003, 10003),
(5, 1003, 10006),
(5, 1004, 10004),
(3, 1005, 10003),
(2, 1006, 10001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`ClassID`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `ProfessorID` (`ProfessorID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `SchoolID` (`SchoolID`);

--
-- Indexes for table `Note`
--
ALTER TABLE `Note`
  ADD PRIMARY KEY (`NoteID`),
  ADD KEY `NotebookID` (`NotebookID`);

--
-- Indexes for table `Notebook`
--
ALTER TABLE `Notebook`
  ADD PRIMARY KEY (`NotebookID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `Professor`
--
ALTER TABLE `Professor`
  ADD PRIMARY KEY (`ProfessorID`);

--
-- Indexes for table `Professor_Email`
--
ALTER TABLE `Professor_Email`
  ADD PRIMARY KEY (`Email`,`ProfessorID`),
  ADD KEY `ProfessorID` (`ProfessorID`);

--
-- Indexes for table `Professor_Phone`
--
ALTER TABLE `Professor_Phone`
  ADD PRIMARY KEY (`Phone`,`ProfessorID`),
  ADD KEY `ProfessorID` (`ProfessorID`);

--
-- Indexes for table `School`
--
ALTER TABLE `School`
  ADD PRIMARY KEY (`SchoolID`);

--
-- Indexes for table `TeachAt`
--
ALTER TABLE `TeachAt`
  ADD PRIMARY KEY (`ProfessorID`,`SchoolID`),
  ADD KEY `SchoolID` (`SchoolID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `Vote`
--
ALTER TABLE `Vote`
  ADD PRIMARY KEY (`NotebookID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Class`
--
ALTER TABLE `Class`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `Note`
--
ALTER TABLE `Note`
  MODIFY `NoteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Notebook`
--
ALTER TABLE `Notebook`
  MODIFY `NotebookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;
--
-- AUTO_INCREMENT for table `Professor`
--
ALTER TABLE `Professor`
  MODIFY `ProfessorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `School`
--
ALTER TABLE `School`
  MODIFY `SchoolID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Class`
--
ALTER TABLE `Class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`ProfessorID`) REFERENCES `Professor` (`ProfessorID`);

--
-- Constraints for table `Department`
--
ALTER TABLE `Department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`SchoolID`) REFERENCES `School` (`SchoolID`);

--
-- Constraints for table `Note`
--
ALTER TABLE `Note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`NotebookID`) REFERENCES `Notebook` (`NotebookID`);

--
-- Constraints for table `Notebook`
--
ALTER TABLE `Notebook`
  ADD CONSTRAINT `notebook_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`),
  ADD CONSTRAINT `notebook_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `CLASS` (`ClassID`);

--
-- Constraints for table `Professor_Email`
--
ALTER TABLE `Professor_Email`
  ADD CONSTRAINT `professor_email_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `Professor` (`ProfessorID`);

--
-- Constraints for table `Professor_Phone`
--
ALTER TABLE `Professor_Phone`
  ADD CONSTRAINT `professor_phone_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `Professor` (`ProfessorID`);

--
-- Constraints for table `TeachAt`
--
ALTER TABLE `TeachAt`
  ADD CONSTRAINT `teachat_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `Professor` (`ProfessorID`),
  ADD CONSTRAINT `teachat_ibfk_2` FOREIGN KEY (`SchoolID`) REFERENCES `School` (`SchoolID`);

--
-- Constraints for table `Vote`
--
ALTER TABLE `Vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`NotebookID`) REFERENCES `Notebook` (`NotebookID`),
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
