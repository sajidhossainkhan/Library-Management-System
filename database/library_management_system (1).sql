-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 07:05 AM
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
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `Book_ID` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Author` varchar(40) NOT NULL,
  `Publisher` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`Book_ID`, `Name`, `Author`, `Publisher`) VALUES
('102', 'queen diana', 'diana', 'daini'),
('103', 'Theory of Computation', 'Dr Farin nur', 'Fernaz'),
('105', 'Database Management System', 'Uncleloster', 'AUSTIN');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `Book_ID` varchar(20) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Issue_Date` varchar(20) NOT NULL,
  `Due_Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`Book_ID`, `Student_ID`, `Issue_Date`, `Due_Date`) VALUES
('1210', '201120036', '06-12-2021', '26-12-2021'),
('101', '20112004', '06-12-2021', '15-12-2021'),
('02', '1215120', '15-03-2021', '25-02-2021');

-- --------------------------------------------------------

--
-- Table structure for table `newbook`
--

CREATE TABLE `newbook` (
  `New_Book` varchar(50) NOT NULL,
  `Book_ID` varchar(20) NOT NULL,
  `Publisher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newbook`
--

INSERT INTO `newbook` (`New_Book`, `Book_ID`, `Publisher`) VALUES
('Programming Language', '201', 'community'),
('Finance', '150', 'library'),
('English', '105', 'Worldwide'),
('Bangla', '103', 'RupKatha'),
('Biology', '505', 'Mother\'s Publications'),
('', '', ''),
('abcde', '1521', 'abserfd');

-- --------------------------------------------------------

--
-- Table structure for table `new_student`
--

CREATE TABLE `new_student` (
  `Department` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `ID` varchar(25) NOT NULL,
  `Batch` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_student`
--

INSERT INTO `new_student` (`Department`, `Name`, `ID`, `Batch`) VALUES
('CSE', 'Md Naimul Islam', '201120005', 'CSE 17'),
('BBA', 'Tanvir Kasas', '201120008', 'BBA 6'),
('CSE', 'abcd', '1254', 'cse 25');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `Book_ID` varchar(20) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Issue_Date` varchar(20) NOT NULL,
  `Due_Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`Book_ID`, `Student_ID`, `Issue_Date`, `Due_Date`) VALUES
('01', '36', '31-01-2022', '14-02-2021');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
