-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2022 at 01:47 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `uhid` int(20) NOT NULL,
  `doc_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `ward` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doc_areas`
--

DROP TABLE IF EXISTS `doc_areas`;
CREATE TABLE IF NOT EXISTS `doc_areas` (
  `doc_id` int(10) NOT NULL AUTO_INCREMENT,
  `streetno` int(10) NOT NULL,
  `streetname` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_areas`
--

INSERT INTO `doc_areas` (`doc_id`, `streetno`, `streetname`, `country`, `city`, `nationality`) VALUES
(1, 21, 'raj kumar', 'India', 'madurai', 'indian'),
(2, 1, 'raj nagar', 'India', 'madurai', 'indian');

-- --------------------------------------------------------

--
-- Table structure for table `doc_consults`
--

DROP TABLE IF EXISTS `doc_consults`;
CREATE TABLE IF NOT EXISTS `doc_consults` (
  `doc_id` int(10) NOT NULL AUTO_INCREMENT,
  `availability` int(10) NOT NULL,
  `intime` time(6) NOT NULL,
  `outtime` time(6) NOT NULL,
  `max_patients` int(10) NOT NULL,
  `fee` int(10) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_consults`
--

INSERT INTO `doc_consults` (`doc_id`, `availability`, `intime`, `outtime`, `max_patients`, `fee`) VALUES
(1, 10, '18:00:00.000000', '03:00:00.000000', 25, 1000),
(2, 23, '21:00:00.000000', '10:00:00.000000', 50, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `doc_infos`
--

DROP TABLE IF EXISTS `doc_infos`;
CREATE TABLE IF NOT EXISTS `doc_infos` (
  `doc_id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `doj` date NOT NULL,
  `department` varchar(10) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_infos`
--

INSERT INTO `doc_infos` (`doc_id`, `firstname`, `lastname`, `dob`, `gender`, `phno`, `qualification`, `designation`, `age`, `email`, `doj`, `department`) VALUES
(1, 'ramraj', 'shankar', '1988-03-02', 'Male', '9873635112', 'MBBS', 'cardiologist', 35, 'ramaraj@gmail.com', '2007-04-17', 'cardiology'),
(2, 'ramraj', 'shankar', '1988-03-02', 'Male', '9873635112', 'MBBS', 'cardiologist', 35, 'ramaraj@gmail.com', '2007-04-17', 'cardiology'),
(3, 'ram', 'rak', '1960-07-02', 'Male', '9876543210', 'MD', 'gynacologist', 35, 'ramrak@gmail.com', '1980-04-03', 'gynocology');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_10_08_133545_create_patient_infos_table', 1),
(2, '2022_10_08_135257_create_patient_areas_table', 2),
(3, '2022_10_08_135840_create_patient_foreigns_table', 2),
(4, '2022_10_08_140349_create_patient_hospital_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_infos`
--

DROP TABLE IF EXISTS `nurse_infos`;
CREATE TABLE IF NOT EXISTS `nurse_infos` (
  `nurse_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `room` int(20) NOT NULL,
  `ward` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `doj` date NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  PRIMARY KEY (`nurse_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_infos`
--

INSERT INTO `nurse_infos` (`nurse_id`, `name`, `room`, `ward`, `age`, `phno`, `doj`, `dob`, `street`, `area`, `district`, `country`, `nationality`) VALUES
(1, 'selvakani', 3, 'cardiology', 23, '9876543210', '2007-05-12', '2000-11-17', 'rajkumar street', 'bastin nagar', 'madurai', 'india', 'indian');

-- --------------------------------------------------------

--
-- Table structure for table `patient_areas`
--

DROP TABLE IF EXISTS `patient_areas`;
CREATE TABLE IF NOT EXISTS `patient_areas` (
  `uhid` int(20) NOT NULL AUTO_INCREMENT,
  `street1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uhid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_areas`
--

INSERT INTO `patient_areas` (`uhid`, `street1`, `street2`, `area`, `district`, `state`, `country`, `nationality`) VALUES
(1, 'kamarajar street', 'gandhi nagar', 'madurai', 'madurai', '', 'tamil nadu', 'indian'),
(2, 'keelavasal 1st street', 'svd nagar', 'Select Town/City', 'Select Town/City', 'Tamilnadu', 'India', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `patient_hospital_details`
--

DROP TABLE IF EXISTS `patient_hospital_details`;
CREATE TABLE IF NOT EXISTS `patient_hospital_details` (
  `uhid` int(20) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uhid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_hospital_details`
--

INSERT INTO `patient_hospital_details` (`uhid`, `bill_type`, `auth_no`, `insurance_no`, `id_no`, `policy_no`, `insurance_type`) VALUES
(1, 'normal', '7236736676', '5365656533', '1', '6476647876', 'LIC');

-- --------------------------------------------------------

--
-- Table structure for table `patient_infos`
--

DROP TABLE IF EXISTS `patient_infos`;
CREATE TABLE IF NOT EXISTS `patient_infos` (
  `uhid` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `aadhar` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_foreign` int(11) NOT NULL,
  `blood` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civil` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uhid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_infos`
--

INSERT INTO `patient_infos` (`uhid`, `title`, `firstname`, `lastname`, `father`, `mother`, `gender`, `dob`, `age`, `aadhar`, `phone`, `is_foreign`, `blood`, `civil`, `religion`) VALUES
(1, 'Mr.', 'kumar', 'raj', 'ramu', 'janu', 'm', '1970-05-02', 34, '6366565356', '9847556521', 0, 'A', 'married', 'Hindu');

-- --------------------------------------------------------

--
-- Table structure for table `ward_5`
--

DROP TABLE IF EXISTS `ward_5`;
CREATE TABLE IF NOT EXISTS `ward_5` (
  `ward_id` int(20) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_5`
--

INSERT INTO `ward_5` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `starting_value`) VALUES
(1, 'IMCU(FF)-108', 0, 0, 0, 0, 0, 0),
(2, 'NICU(FF)-102A', 0, 0, 0, 0, 0, 0),
(3, 'PICU(FF)-102A', 0, 0, 0, 0, 0, 0),
(4, 'SEP_ICU(FF)-102A', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_7`
--

DROP TABLE IF EXISTS `ward_7`;
CREATE TABLE IF NOT EXISTS `ward_7` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_7`
--

INSERT INTO `ward_7` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `starting_value`) VALUES
(1, 'DERMATOLOGY FEMALE(FF)-110', 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'ENT FEMALE(SF)-207', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'OPTHTHOMOLOGY FEMALE(FF)-306', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'PHYSCHIATRY FEMALE(FF)-109', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_8`
--

DROP TABLE IF EXISTS `ward_8`;
CREATE TABLE IF NOT EXISTS `ward_8` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_8`
--

INSERT INTO `ward_8` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `starting_value`) VALUES
(1, 'DERMATOLOGY MALE(FF)-111', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'ENT MALE(SF)-207', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'HDU(FF)-108', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'ICU(FF)-108', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'LABOUR WARD(FF)-006', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'OPTHTHAMOLOGY MALE(TF)-306', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'GYE ROOM 1124', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'SURGERY VI 212(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_9`
--

DROP TABLE IF EXISTS `ward_9`;
CREATE TABLE IF NOT EXISTS `ward_9` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_9`
--

INSERT INTO `ward_9` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `starting_value`) VALUES
(1, 'PRE LABOUR WARD 055(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_10`
--

DROP TABLE IF EXISTS `ward_10`;
CREATE TABLE IF NOT EXISTS `ward_10` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_10`
--

INSERT INTO `ward_10` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `starting_value`) VALUES
(1, 'TB AND CHEST FEMALE(TF)-307', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'TB AND CHEST MALE(TF)-307', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_12`
--

DROP TABLE IF EXISTS `ward_12`;
CREATE TABLE IF NOT EXISTS `ward_12` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_12`
--

INSERT INTO `ward_12` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `starting_value`) VALUES
(1, 'CASAULTY(GF)-100', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'DEADDICTION(SF)-206', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_15`
--

DROP TABLE IF EXISTS `ward_15`;
CREATE TABLE IF NOT EXISTS `ward_15` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `room_13` int(11) DEFAULT NULL,
  `room_14` int(11) DEFAULT NULL,
  `room_15` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_15`
--

INSERT INTO `ward_15` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `room_13`, `room_14`, `room_15`, `starting_value`) VALUES
(1, 'POST OPERATIVE FEMALE 214(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'POST OPERATIVE MALE 214(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_17`
--

DROP TABLE IF EXISTS `ward_17`;
CREATE TABLE IF NOT EXISTS `ward_17` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `room_13` int(11) DEFAULT NULL,
  `room_14` int(11) DEFAULT NULL,
  `room_15` int(11) DEFAULT NULL,
  `room_16` int(11) DEFAULT NULL,
  `room_17` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_17`
--

INSERT INTO `ward_17` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `room_13`, `room_14`, `room_15`, `room_16`, `room_17`, `starting_value`) VALUES
(1, 'RICU-108(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_20`
--

DROP TABLE IF EXISTS `ward_20`;
CREATE TABLE IF NOT EXISTS `ward_20` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `room_13` int(11) DEFAULT NULL,
  `room_14` int(11) DEFAULT NULL,
  `room_15` int(11) DEFAULT NULL,
  `room_16` int(11) DEFAULT NULL,
  `room_17` int(11) DEFAULT NULL,
  `room_18` int(11) DEFAULT NULL,
  `room_19` int(11) DEFAULT NULL,
  `room_20` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_20`
--

INSERT INTO `ward_20` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `room_13`, `room_14`, `room_15`, `room_16`, `room_17`, `room_18`, `room_19`, `room_20`, `starting_value`) VALUES
(1, 'ORTHOPAETICS MALE III(SF)-210', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_25`
--

DROP TABLE IF EXISTS `ward_25`;
CREATE TABLE IF NOT EXISTS `ward_25` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `room_13` int(11) DEFAULT NULL,
  `room_14` int(11) DEFAULT NULL,
  `room_15` int(11) DEFAULT NULL,
  `room_16` int(11) DEFAULT NULL,
  `room_17` int(11) DEFAULT NULL,
  `room_18` int(11) DEFAULT NULL,
  `room_19` int(11) DEFAULT NULL,
  `room_20` int(11) DEFAULT NULL,
  `room_21` int(11) DEFAULT NULL,
  `room_22` int(11) DEFAULT NULL,
  `room_23` int(11) DEFAULT NULL,
  `room_24` int(11) DEFAULT NULL,
  `room_25` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_25`
--

INSERT INTO `ward_25` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `room_13`, `room_14`, `room_15`, `room_16`, `room_17`, `room_18`, `room_19`, `room_20`, `room_21`, `room_22`, `room_23`, `room_24`, `room_25`, `starting_value`) VALUES
(1, 'CASUALITY WARD(GF)-006', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ward_30`
--

DROP TABLE IF EXISTS `ward_30`;
CREATE TABLE IF NOT EXISTS `ward_30` (
  `ward_id` int(25) NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `room_1` int(11) DEFAULT NULL,
  `room_2` int(11) DEFAULT NULL,
  `room_3` int(11) DEFAULT NULL,
  `room_4` int(11) DEFAULT NULL,
  `room_5` int(11) DEFAULT NULL,
  `room_6` int(11) DEFAULT NULL,
  `room_7` int(11) DEFAULT NULL,
  `room_8` int(11) DEFAULT NULL,
  `room_9` int(11) DEFAULT NULL,
  `room_10` int(11) DEFAULT NULL,
  `room_11` int(11) DEFAULT NULL,
  `room_12` int(11) DEFAULT NULL,
  `room_13` int(11) DEFAULT NULL,
  `room_14` int(11) DEFAULT NULL,
  `room_15` int(11) DEFAULT NULL,
  `room_16` int(11) DEFAULT NULL,
  `room_17` int(11) DEFAULT NULL,
  `room_18` int(11) DEFAULT NULL,
  `room_19` int(11) DEFAULT NULL,
  `room_20` int(11) DEFAULT NULL,
  `room_21` int(11) DEFAULT NULL,
  `room_22` int(11) DEFAULT NULL,
  `room_23` int(11) DEFAULT NULL,
  `room_24` int(11) DEFAULT NULL,
  `room_25` int(11) DEFAULT NULL,
  `room_26` int(11) DEFAULT NULL,
  `room_27` int(11) DEFAULT NULL,
  `room_28` int(11) DEFAULT NULL,
  `room_29` int(11) DEFAULT NULL,
  `room_30` int(11) DEFAULT NULL,
  `starting_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_30`
--

INSERT INTO `ward_30` (`ward_id`, `ward_name`, `room_1`, `room_2`, `room_3`, `room_4`, `room_5`, `room_6`, `room_7`, `room_8`, `room_9`, `room_10`, `room_11`, `room_12`, `room_13`, `room_14`, `room_15`, `room_16`, `room_17`, `room_18`, `room_19`, `room_20`, `room_21`, `room_22`, `room_23`, `room_24`, `room_25`, `room_26`, `room_27`, `room_28`, `room_29`, `room_30`, `starting_value`) VALUES
(1, 'GYNECOLOGY(FF)-101', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'MEDICINE FEMALE IV(TF)-304', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'MEDICINE FEMALE V(TF)-305', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'MEDICINE MALE I(TF)-301', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'MEDICINE MALE II(TF)-302', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'MEDICINE MALE III(TF)-303', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'OBSTETRICS I(FF)-105', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'OBSTETRICS II(FF)-106', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'ORTHOPAEDICS FEMALE II(SF)-209', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'ORTHOPAEDICS MALE I(SF)-208', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'PEDIATRICS I(102)(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'PEDIATRICS II(103)(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'PEDIATRICS III(104)(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'SURGERY FEMALE III 204(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'SURGERY FEMALE V 205(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'SURGERY MALE I 201(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'SURGERY MALE II 202(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'SURGERY MALE IV 203(SF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
