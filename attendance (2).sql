-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 05:19 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `btechcs5a`
--

CREATE TABLE `btechcs5a` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `stud_class_roll` int(11) DEFAULT NULL,
  `stud_name` varchar(30) DEFAULT NULL,
  `stud_father_name` varchar(30) DEFAULT NULL,
  `stud_password` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechcs5a`
--

INSERT INTO `btechcs5a` (`stud_univ_roll`, `stud_class_roll`, `stud_name`, `stud_father_name`, `stud_password`) VALUES
('1011410', 1, 'Anant Rawat', 'Gaurav Rawat', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `btechcs5b`
--

CREATE TABLE `btechcs5b` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `stud_class_roll` int(11) DEFAULT NULL,
  `stud_name` varchar(30) DEFAULT NULL,
  `stud_father_name` varchar(30) DEFAULT NULL,
  `stud_password` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechcs5b`
--

INSERT INTO `btechcs5b` (`stud_univ_roll`, `stud_class_roll`, `stud_name`, `stud_father_name`, `stud_password`) VALUES
('1011493', 35, 'Saransh Mundepi', 'Sanjay Kumar Mundepi', '123456789'),
('1011494', 36, 'Saurabh Badola', 'Suresh Badola', '123456789'),
('1011519', 59, 'Vaibhav Goyal', 'Subhash Gupta', '123456789'),
('1011475', 28, 'Robin Khan', 'Dont know', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `btechit5`
--

CREATE TABLE `btechit5` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `stud_class_roll` int(11) DEFAULT NULL,
  `stud_name` varchar(30) DEFAULT NULL,
  `stud_father_name` varchar(30) DEFAULT NULL,
  `stud_password` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechit5`
--

INSERT INTO `btechit5` (`stud_univ_roll`, `stud_class_roll`, `stud_name`, `stud_father_name`, `stud_password`) VALUES
('1011590', 16, 'Nishant Amoli', 'Dont know', '123456789'),
('1011471', 21, 'Rahul Khanduri', 'dont know', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
('btechcs5a', 'B.Tech CSE Sem-5 Sec-A'),
('btechcs5b', 'B.Tech CSE Sem-5 Sec-B'),
('btechit5', 'B.Tech IT Sem-5 ');

-- --------------------------------------------------------

--
-- Table structure for table `fac100`
--

CREATE TABLE `fac100` (
  `day` varchar(10) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(12) DEFAULT NULL,
  `schedule_time` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac100`
--

INSERT INTO `fac100` (`day`, `sub_code`, `class`, `schedule_time`) VALUES
('Monday', 'tcs505', 'btechcs5a', '2 PM'),
('Monday', 'tit505', 'btechit5', '11 AM'),
('Monday', 'tcs505', 'btechcs5b', '4 PM'),
('Tuesday', 'tcs505', 'btechcs5a', '2 PM'),
('Tuesday', 'tcs505', 'btechcs5b', '3 PM'),
('Wednesday', 'tcs505', 'btechcs5a', '4 PM'),
('Wednesday', 'tit505', 'btechit5', '1 PM'),
('Thursday', 'tcs505', 'btechcs5b', '4 PM'),
('Thursday', 'tit505', 'btechit5', '11 AM'),
('Friday', 'tcs505', 'btechcs5a', '2 PM'),
('Friday', 'tcs505', 'btechcs5b', '4 PM'),
('Friday', 'tit505', 'btechit5', '11 AM');

-- --------------------------------------------------------

--
-- Table structure for table `fac101`
--

CREATE TABLE `fac101` (
  `day` varchar(8) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `schedule_time` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fac102`
--

CREATE TABLE `fac102` (
  `day` varchar(8) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `schedule_time` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fac103`
--

CREATE TABLE `fac103` (
  `day` varchar(8) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `schedule_time` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fac104`
--

CREATE TABLE `fac104` (
  `day` varchar(8) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `schedule_time` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fac105`
--

CREATE TABLE `fac105` (
  `day` varchar(8) DEFAULT NULL,
  `sub_code` varchar(8) DEFAULT NULL,
  `class` varchar(8) DEFAULT NULL,
  `schedule_time` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` varchar(10) NOT NULL,
  `fac_name` varchar(30) NOT NULL,
  `fac_password` varchar(12) NOT NULL,
  `fac_dept` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `fac_password`, `fac_dept`) VALUES
('fac100', 'Mahesh Manchanda', '123456789', 'B.tech CS'),
('fac101', 'B. P. Dubey', '123456789', 'B.tech CS'),
('fac102', 'Nishu Chawla', '123456789', 'PDP'),
('fac103', 'Shashi Sharma', '123456789', 'B.Tech CS'),
('fac105', 'Deepak Rana', '123456789', 'B.tech CS'),
('fac104', 'Ajay Verma', '123456789', 'B.tech CS');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_code` varchar(10) DEFAULT NULL,
  `sub_name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcs501`
--

CREATE TABLE `tcs501` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `total_lect` int(11) DEFAULT NULL,
  `attended_lect` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcs502`
--

CREATE TABLE `tcs502` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `total_lect` int(11) DEFAULT NULL,
  `attended_lect` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcs503`
--

CREATE TABLE `tcs503` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `total_lect` int(11) DEFAULT NULL,
  `attended_lect` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcs504`
--

CREATE TABLE `tcs504` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `total_lect` int(11) DEFAULT NULL,
  `attended_lect` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcs505`
--

CREATE TABLE `tcs505` (
  `stud_univ_roll` varchar(10) DEFAULT NULL,
  `total_lect` int(11) DEFAULT NULL,
  `attended_lect` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
