-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 08:40 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `census_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `mname` text NOT NULL,
  `extension` text NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `fname`, `lname`, `mname`, `extension`, `address`, `status`) VALUES
(2, 'e_123', 'jsh', 'rcngl', 'p', '', 'sccp', 'active'),
(3, 'e_1osk2', 'sample', 'sample', 'sample', 'sample', 'sample', 'active'),
(4, 'e_MzJXe', 'james', 'bond', 'c', '007', 'address', 'active'),
(5, 'e_WwAGB', 'tony', 'stark', 'i', '(iron man)', 'new york', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `employee_user`
--

CREATE TABLE `employee_user` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `access` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_user`
--

INSERT INTO `employee_user` (`id`, `employee_id`, `username`, `password`, `access`) VALUES
(1, 'e_123', 'user_123', '$2y$10$A9cE6i5BQCMvJMqO5H2Qqud67KU4EZi/cWSX.oZohhj.4GlfVCro2', 'employee'),
(2, 'e_MzJXe', 'james', '$2y$10$D4qBnCjJ4dKDaNWhmq8xHuspjIGNwv6WMKAPd/f38/nE1GLNjC1aG', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `form_id` varchar(500) NOT NULL,
  `form_title` varchar(200) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `house_no` text NOT NULL,
  `dos` text NOT NULL,
  `informant` text NOT NULL,
  `surveyed_by` text NOT NULL,
  `brgy` text NOT NULL,
  `sitio` text NOT NULL,
  `status` enum('saved','unsaved') NOT NULL DEFAULT 'unsaved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`form_id`, `form_title`, `date_created`, `house_no`, `dos`, `informant`, `surveyed_by`, `brgy`, `sitio`, `status`) VALUES
('ID-21-10-20-9iY5O4', 'Form-9iY5O4', '2021-10-20 08:09:24', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-20-Fp7OGE', 'Form-Fp7OGE', '2021-10-20 08:09:36', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-20-IToEsi', 'Form-IToEsi', '2021-10-20 08:10:40', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-20-RFMr0d', 'Form-RFMr0d', '2021-10-20 07:21:18', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-20-rR8sJ5', 'Form-rR8sJ5', '2021-10-20 07:20:42', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-20-Xrg5jE', 'Form-Xrg5jE', '2021-10-20 02:59:47', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-21-BNer47', 'Form-BNer47', '2021-10-21 09:15:23', '', '', '', '', '', '', 'unsaved'),
('ID-21-10-23-6ttr$Z', 'Form-6ttr$Z', '2021-10-23 12:21:33', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-01-wez9gM', 'Form-wez9gM', '2021-11-01 16:33:50', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-02-bMMJ$A', 'Form-bMMJ$A', '2021-11-02 05:32:33', 'awd', '2021-11-25', 'awdaw', 'awdawd', 'Ambonao', 'awd', 'saved'),
('ID-21-11-02-jzdEu7', 'Form-jzdEu7', '2021-11-02 08:51:35', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-02-LuzssA', 'Form-LuzssA', '2021-11-02 05:30:40', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-04-7CMe2J', 'Form-7CMe2J', '2021-11-04 13:55:31', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-04-9doad$', 'Form-9doad$', '2021-11-04 13:51:38', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-04-mh1GoR', 'Form-mh1GoR', '2021-11-04 13:53:54', '', '', '', '', '', '', 'unsaved'),
('ID-21-11-08-L9AjCu', 'Form-L9AjCu', '2021-11-08 07:06:28', '#123', '2021-11-08', 'asdwda', 'awdaw', 'Ambonao', '', 'saved'),
('ID-21-11-08-pduONA', 'Form-pduONA', '2021-11-08 07:13:45', '', '', '', '', '', '', 'unsaved');

-- --------------------------------------------------------

--
-- Table structure for table `form_table_2`
--

CREATE TABLE `form_table_2` (
  `id` int(11) NOT NULL,
  `form_id` varchar(500) NOT NULL,
  `House` text NOT NULL,
  `Lot` text NOT NULL,
  `Type` text NOT NULL,
  `Materials` text NOT NULL,
  `HousingRiskFactors` text NOT NULL,
  `Electricity` text NOT NULL,
  `Telecommunications` text NOT NULL,
  `toilet_facilities` text NOT NULL,
  `RefuseDisposal` text NOT NULL,
  `Personal_Transporatation` text NOT NULL,
  `fuel` text NOT NULL,
  `WaterSupply` text NOT NULL,
  `bussiness_at_home` text NOT NULL,
  `floor_area` text NOT NULL,
  `no_of_employees` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_table_2`
--

INSERT INTO `form_table_2` (`id`, `form_id`, `House`, `Lot`, `Type`, `Materials`, `HousingRiskFactors`, `Electricity`, `Telecommunications`, `toilet_facilities`, `RefuseDisposal`, `Personal_Transporatation`, `fuel`, `WaterSupply`, `bussiness_at_home`, `floor_area`, `no_of_employees`) VALUES
(3, 'ID-21-11-01-wez9gM', '[\"Owned\",\"Rented\"]', '[\"Owned\",\"Rented\"]', '[\"Single, Duplex\",\"Two Storey, Duplex\",\"Two Storey\"]', '[\"Wood\",\"Mixed\",\"Nipa\"]', '[\"Along PNR\",\"Along Highway\",\"Others\"]', '[\"CENPELCO\"]', '[\"PLDT\",\"DIGITAL\",\"SMART\"]', '{\"no\":\"3\",\"type\":[\"WS\",\"AT\"]}', '[\"Burning\",\"Burying\"]', '{\"GCar\":\"1\",\"WagonVanPickUp\":\"2\",\"TruckBus\":\"3\",\"MiniBus\":\"4\",\"Jeepney\":0,\"OwnerJeep\":0,\"Tricycle\":0,\"Motorcycle\":\"2\"}', '[\"LPG\",\"Wood\",\"taep\"]', '{\"deep well\":[\"Public\",\"Private\"],\"shallow well\":[\"Public\",\"Private\"],\"Pressure Pump\":\"1\",\"Individual Connection\":\"1\"}', 'N/A', '500s.q m.', '3'),
(13, 'ID-21-11-02-bMMJ$A', '[\"Owned\"]', '[\"Owned\"]', '[\"Two Storey\"]', '[\"Concrete\",\"Wood\",\"Mixed\"]', '[\"Along Highway\"]', '[\"CENPELCO\"]', '[\"PLDT\",\"SMART\",\"GLOBE\",\"SUN\"]', '{\"no\":\"2\",\"type\":[\"WS\"]}', '[\"Burning\",\"Animal Feeds\"]', '{\"GCar\":\"1\",\"WagonVanPickUp\":0,\"TruckBus\":0,\"MiniBus\":0,\"Jeepney\":0,\"OwnerJeep\":0,\"Tricycle\":\"1\",\"Motorcycle\":\"2\"}', '[\"LPG\",\"Wood\",\"\"]', '{\"deep well\":[],\"shallow well\":[],\"Pressure Pump\":\"1\",\"Individual Connection\":0}', 'N/A', '500 s.q. m.', '4'),
(14, 'ID-21-11-02-jzdEu7', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '{\"no\":0,\"type\":[]}', '[]', '{\"GCar\":0,\"WagonVanPickUp\":0,\"TruckBus\":0,\"MiniBus\":0,\"Jeepney\":0,\"OwnerJeep\":0,\"Tricycle\":0,\"Motorcycle\":0}', '[\"\"]', '{\"deep well\":[],\"shallow well\":[],\"Pressure Pump\":0,\"Individual Connection\":0}', '', '', ''),
(15, 'ID-21-11-08-L9AjCu', '[\"Owned\"]', '[\"Owned\"]', '[\"Two Storey\"]', '[\"Concrete\",\"Mixed\"]', '[\"Along Highway\"]', '[\"CENPELCO\"]', '[\"PLDT\",\"SMART\",\"GLOBE\",\"SUN\"]', '{\"no\":\"2\",\"type\":[\"WS\"]}', '[\"Burning\",\"Dumping\",\"Burying\",\"Composting\"]', '{\"GCar\":\"1\",\"WagonVanPickUp\":0,\"TruckBus\":0,\"MiniBus\":0,\"Jeepney\":0,\"OwnerJeep\":0,\"Tricycle\":\"1\",\"Motorcycle\":\"2\"}', '[\"LPG\",\"Wood\",\"Charcoal\",\"\"]', '{\"deep well\":[\"Private\"],\"shallow well\":[],\"Pressure Pump\":\"1\",\"Individual Connection\":0}', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `household information`
--

CREATE TABLE `household information` (
  `id` int(11) NOT NULL,
  `form_id` varchar(500) NOT NULL,
  `h_i_prim` varchar(500) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `age` int(11) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `nationality` text NOT NULL,
  `Civil Status` text NOT NULL,
  `migrated_from` text NOT NULL,
  `education_attainment` text NOT NULL,
  `School Attended` text NOT NULL,
  `OSY` text NOT NULL,
  `Can Read Write` text NOT NULL,
  `Employement` text NOT NULL,
  `Combined Monthly Income` text NOT NULL,
  `Major Dialect` text NOT NULL,
  `Main Religion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `household information`
--

INSERT INTO `household information` (`id`, `form_id`, `h_i_prim`, `firstname`, `middlename`, `lastname`, `age`, `sex`, `nationality`, `Civil Status`, `migrated_from`, `education_attainment`, `School Attended`, `OSY`, `Can Read Write`, `Employement`, `Combined Monthly Income`, `Major Dialect`, `Main Religion`) VALUES
(1, 'ID-21-10-20-Xrg5jE', 'HI_qdc2jB7W', '', '', '', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(2, 'ID-21-10-20-Xrg5jE', 'HI_5gzOHV..', 'awdadas', 'dawda', 'awdaw', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(3, 'ID-21-10-20-Xrg5jE', 'HI_v00r7plV', '', '', '', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(4, 'ID-21-10-20-RFMr0d', 'HI_zH5UPLie', 'asdasda', 'asdasdas', 'asdasdas', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(5, 'ID-21-10-20-RFMr0d', 'HI_9bPegvox', '123123', 'asdasdas', 'asdasdas', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(6, 'ID-21-10-20-RFMr0d', 'HI_7RxrICQ0', 'dawd', '', '', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(7, 'ID-21-10-20-IToEsi', 'HI_h2KqneLn', 'joshua', 'arca', '', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(8, 'ID-21-10-20-IToEsi', 'HI_cQw$HHTX', 'joshua', 'pidlaoan', 'arcangel', 24, 'male', 'Filipino', 'Single', 'no', 'CG', 'both', 'no', 'yes', '{\"employ\":\"private\",\"work\":\"S\",\"type\":\"FT\"}', '60000', 'P', 'RC'),
(9, 'ID-21-10-20-IToEsi', 'HI_rdXS5KHg', 'james', 'p.', 'bond', 46, 'male', 'american', 'Married', 'yes', 'VTG', 'private', 'no', 'yes', '{\"employ\":\"government\",\"work\":\"P\",\"type\":\"FT\"}', '100,000,000.00', 'T', 'RC'),
(10, 'ID-21-10-21-BNer47', 'HI_QmfEdcdP', 'joshua', 'Pidlaoan', 'arcangel', 23, 'male', 'Filipino', 'Single', 'no', 'CG', 'public', 'no', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '50000', 'P', 'RC'),
(11, 'ID-21-10-21-BNer47', 'HI_Pmup605P', 'dad', 'daw', 'dawdaw', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(12, 'ID-21-10-21-BNer47', 'HI_knybJ3V6', 'ddds', 'aaa', 'sdsds', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(13, 'ID-21-10-21-BNer47', 'HI_HyH532Vp', 'ddds', 'aaaasdawd', 'sdsdsawdawd', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(14, 'ID-21-10-21-BNer47', 'HI_CV8HwJaA', 'dawdas', 'asdsa', 'asasadsads', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(15, 'ID-21-11-01-wez9gM', 'HI_$Hu6EYWS', 'james', '1dw', 'awda', 22, 'male', 'Filipino', 'Single', 'yes', 'VTG', 'private', '', 'yes', '{\"employ\":\"government\",\"work\":\"B\",\"type\":\"FT\"}', '1000000', 'P', 'RC'),
(16, 'ID-21-11-01-wez9gM', 'HI_2hLqMGUW', 'asds', 'dwdasd', 'awdsd', 22, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(17, 'ID-21-11-02-bMMJ$A', 'HI_jUm0ZGC5', 'user 1', 'user1 middle name', 'user 1 last name', 22, 'male', 'Filipino', 'Single', 'yes', 'VT', 'both', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '500', 'P', 'RC'),
(18, 'ID-21-11-02-bMMJ$A', 'HI_rfqmw1Ch', 'aa', 'aa', 'aa', 23, 'male', 'Filipino', 'Single', 'no', 'VT', 'public', '', 'yes', '{\"employ\":\"private\",\"work\":\"S\",\"type\":\"PT\"}', '100000', 'P', 'RC'),
(19, 'ID-21-11-02-bMMJ$A', 'HI_Pz7h8tTX', 'zzZ', 'ZZZ', 'XZCXZXC', 342, 'male', 'Filipino', 'Married', 'yes', 'C3', 'private', '', 'yes', '{\"employ\":\"private\",\"work\":\"S\",\"type\":\"FT\"}', '50000', 'T', 'RC'),
(20, 'ID-21-11-02-bMMJ$A', 'HI_h2i4g1GE', 'dd', 'dd', '', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(21, 'ID-21-11-02-bMMJ$A', 'HI_NE7nmfYF', 'c', 'v', 'v', 0, 'male', 'Filipino', '', '', '', '', '', 'yes', '{\"employ\":null,\"work\":null,\"type\":null}', '', '', ''),
(22, 'ID-21-11-08-L9AjCu', 'HI_zai.GdnS', 'james', 'S.', 'harden', 36, 'male', 'American', 'Married', 'yes', 'CG', 'private', '', 'yes', '{\"employ\":\"private\",\"work\":\"S\",\"type\":\"FT\"}', '10000000', 'T', 'RC');

-- --------------------------------------------------------

--
-- Table structure for table `housing_info`
--

CREATE TABLE `housing_info` (
  `id` int(11) NOT NULL,
  `form_id` varchar(500) NOT NULL,
  `House` text NOT NULL,
  `Lot` text NOT NULL,
  `Type` text NOT NULL,
  `Materials` text NOT NULL,
  `HousingRiskFactors` text NOT NULL,
  `Electricity` text NOT NULL,
  `Telecommunications` text NOT NULL,
  `toilet_facilities` text NOT NULL,
  `RefuseDisposal` text NOT NULL,
  `GCar` int(11) NOT NULL DEFAULT 0,
  `WagonVanPickUp` int(11) NOT NULL DEFAULT 0,
  `TruckBus` int(11) NOT NULL DEFAULT 0,
  `MiniBus` int(11) NOT NULL DEFAULT 0,
  `Jeepney` int(11) NOT NULL DEFAULT 0,
  `OwnerJeep` int(11) NOT NULL DEFAULT 0,
  `Tricycle` int(11) NOT NULL DEFAULT 0,
  `Motorcycle` int(11) NOT NULL DEFAULT 0,
  `Fuel` text NOT NULL,
  `WaterSupply` text NOT NULL,
  `PressurePump` tinyint(1) NOT NULL DEFAULT 0,
  `IndividualConnection` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_user`
--
ALTER TABLE `employee_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `form_table_2`
--
ALTER TABLE `form_table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `household information`
--
ALTER TABLE `household information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `housing_info`
--
ALTER TABLE `housing_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_user`
--
ALTER TABLE `employee_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_table_2`
--
ALTER TABLE `form_table_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `household information`
--
ALTER TABLE `household information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `housing_info`
--
ALTER TABLE `housing_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `household information`
--
ALTER TABLE `household information`
  ADD CONSTRAINT `household information_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `forms` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `housing_info`
--
ALTER TABLE `housing_info`
  ADD CONSTRAINT `housing_info_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `forms` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
