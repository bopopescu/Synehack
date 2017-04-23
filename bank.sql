-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2017 at 09:50 AM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `BANKCODE` varchar(50) DEFAULT NULL,
  `ACCOUNTID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`BANKCODE`, `ACCOUNTID`) VALUES
('SBINUS39XXX', 891272),
('SBINUS39XXX', 567538),
('SBINUS39XXX', 500724),
('SBINUS39XXX', 914466),
('SBINUS39XXX', 783774),
('SBINUS39XXX', 663702),
('SBINUS39XXX', 636714),
('SBINUS39XXX', 878538),
('SBINUS39XXX', 450148),
('SBINUS39XXX', 839923);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `BANKCODE` varchar(50) DEFAULT NULL,
  `COUNTRYID` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`BANKCODE`, `COUNTRYID`, `NAME`, `ADDRESS`) VALUES
('AZBAAFKAXXX', 1, 'AZIZI BANK', 'kabul'),
('SBINUS39XXX', 185, 'STATE BANK OF INDIA', 'New York NY'),
('RNABUS41XXX', 185, 'RIO NATIONAL BANK', 'MCALLEN,TX'),
('RBBCUS6LXXX', 185, 'ROYAL BUSINESS BANK', 'LOS ANGELES,CA'),
('ALLAINBBAGC', 77, 'ALLAHABAD BANK', 'Agra City');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `billerid` int(11) NOT NULL,
  `billername` varchar(45) DEFAULT NULL,
  `billerdesc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`billerid`, `billername`, `billerdesc`) VALUES
(1, 'Syne-Mortgage', 'Mortgage');

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `ID` int(11) NOT NULL,
  `PVALUE` varchar(70) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`ID`, `NAME`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria');

-- --------------------------------------------------------

--
-- Table structure for table `countrydetails`
--

CREATE TABLE `countrydetails` (
  `COUNTRY` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countrydetails`
--

INSERT INTO `countrydetails` (`COUNTRY`) VALUES
('Afghanistan'),
('Albania'),
('Algeria'),
('Andorra'),
('Angola'),
('Antigua and Barbuda'),
('Argentina'),
('Armenia'),
('Australia'),
('Austria');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `MIDDLENAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DATEOFBIRTH` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MARITALSTATUS` int(11) DEFAULT NULL,
  `PRIMARYOCCUPATION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `FIRSTNAME`, `MIDDLENAME`, `LASTNAME`, `ALIAS`, `DATEOFBIRTH`, `MARITALSTATUS`, `PRIMARYOCCUPATION`) VALUES
(1, 'Maria', 'Matthew', 'Brown', 'Maria', '1994-11-11 10:00:00', 2, 2),
(2, 'Carl', 'Beverly', 'Duncan', 'Carl', '1986-04-14 10:00:00', 2, 2),
(3, 'Bruce', 'Kimberly', 'Harris', 'Bruce', '2014-06-25 08:00:00', 2, 2),
(4, 'Michelle', 'Patrick', 'Moore', 'Michelle', '2003-01-11 10:00:00', 3, 2),
(5, 'Jason', 'Russell', 'Jacobs', 'Jason', '1997-06-21 08:00:00', 3, 2),
(6, 'Judy', 'Heather', 'Andrews', 'Judy', '1988-05-07 08:00:00', 3, 2),
(7, 'Tammy', 'Denise', 'Richards', 'Tammy', '1970-07-08 08:00:00', 2, 2),
(8, 'Karen', 'Amy', 'Dean', 'Karen', '1975-06-28 08:00:00', 3, 2),
(9, 'Terry', 'Pamela', 'Bennett', 'Terry', '2005-08-27 08:00:00', 3, 2),
(10, 'Gerald', 'Earl', 'Willis', 'Gerald', '1979-05-19 08:00:00', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `CUSTOMERID` int(11) DEFAULT NULL,
  `ACCOUNTID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`CUSTOMERID`, `ACCOUNTID`) VALUES
(1, 891272),
(2, 567538),
(3, 500724),
(4, 914466),
(5, 783774),
(6, 663702),
(7, 636714),
(8, 878538),
(9, 450148),
(10, 839923);

-- --------------------------------------------------------

--
-- Table structure for table `customer_transactions`
--

CREATE TABLE `customer_transactions` (
  `id` bigint(20) NOT NULL,
  `ACCOUNTID` bigint(20) DEFAULT NULL,
  `TRANSACTIONID` bigint(20) DEFAULT NULL,
  `BALANCE` double DEFAULT NULL,
  `TRANSACTIONTYPEID` int(11) DEFAULT NULL,
  `CLASSIFICATIONID` int(11) DEFAULT NULL,
  `PASSID` int(11) DEFAULT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `OClassificationid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_transactions`
--

INSERT INTO `customer_transactions` (`id`, `ACCOUNTID`, `TRANSACTIONID`, `BALANCE`, `TRANSACTIONTYPEID`, `CLASSIFICATIONID`, `PASSID`, `comments`, `OClassificationid`) VALUES
(1, 891272, 1, 0, 2, NULL, NULL, NULL, NULL),
(2, 567538, 2, 0, 2, NULL, NULL, NULL, NULL),
(3, 500724, 3, 0, 2, NULL, NULL, NULL, NULL),
(4, 914466, 4, 0, 2, NULL, NULL, NULL, NULL),
(5, 783774, 5, 0, 2, NULL, NULL, NULL, NULL),
(6, 663702, 6, 0, 2, NULL, NULL, NULL, NULL),
(7, 636714, 7, 0, 2, NULL, NULL, NULL, NULL),
(8, 878538, 8, 0, 2, NULL, NULL, NULL, NULL),
(9, 450148, 9, 0, 2, NULL, NULL, NULL, NULL),
(10, 839923, 10, 0, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `ACCOUNTID` bigint(20) DEFAULT NULL,
  `NUMBER_OF_TRANSACTIONS` int(11) DEFAULT NULL,
  `PROBLEM_DOMAIN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`ACCOUNTID`, `NUMBER_OF_TRANSACTIONS`, `PROBLEM_DOMAIN`) VALUES
(891272, 18, 'call Issues'),
(567538, 23, 'Others'),
(500724, 31, 'ATM Issues'),
(914466, 27, 'Bank Services'),
(783774, 35, NULL),
(663702, 26, 'ATM Issues'),
(636714, 14, 'Call Issues'),
(878538, 12, 'Others'),
(450148, 32, 'Call Issues'),
(839923, 22, 'ATM Issues');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`billerid`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD UNIQUE KEY `PRIMARY_KEY_63` (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD UNIQUE KEY `PRIMARY_KEY_5` (`ID`);

--
-- Indexes for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `billerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_transactions`
--
ALTER TABLE `customer_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37509;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
