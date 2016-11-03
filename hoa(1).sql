-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 31, 2016 at 11:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoa_account_type`
--

CREATE TABLE `hoa_account_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastr_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_account_type`
--

INSERT INTO `hoa_account_type` (`id`, `name`, `image`, `status`, `created_date`, `lastr_updated`) VALUES
(1, 'Home Owners', 'assets/images/avatar_1.jpg', 0, '2016-08-05 15:59:56', '0000-00-00 00:00:00'),
(2, 'Management Company', 'assets/images/avatar_1.jpg', 0, '2016-08-05 15:59:56', '0000-00-00 00:00:00'),
(3, 'HOA Admin', 'assets/images/avatar_1.jpg', 1, '2016-08-05 15:59:56', '0000-00-00 00:00:00'),
(4, 'Vendor', 'assets/images/avatar_1.jpg', 0, '2016-08-05 15:59:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_activity_stream`
--

CREATE TABLE `hoa_activity_stream` (
  `id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `video` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_activity_stream`
--

INSERT INTO `hoa_activity_stream` (`id`, `community_id`, `creator_id`, `message`, `photo`, `video`, `status`, `created_date`) VALUES
(1, 1, 3, 'Hloooooooooo', '', '', 0, '2016-08-30 15:53:58'),
(3, 1, 3, '', 'assets/images/stream/photo/logo_brand_ES.gif', '', 0, '2016-08-30 16:21:59'),
(5, 1, 3, '', 'assets/images/stream/photo/7.jpg', '', 0, '2016-08-30 16:29:42'),
(6, 1, 3, '', '', 'assets/images/stream/video/VID-20151215-WA0003.mp4', 0, '2016-08-30 16:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_classifieds`
--

CREATE TABLE `hoa_classifieds` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ad_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photos` text NOT NULL,
  `street1` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_classifieds`
--

INSERT INTO `hoa_classifieds` (`id`, `user_id`, `ad_name`, `description`, `photos`, `street1`, `street2`, `city`, `state`, `country`, `zipcode`, `latitude`, `longitude`, `created_date`, `last_updated`) VALUES
(1, 1, 'Test Classifieds', 'Test Classifieds Desc', '1.jpg,2.jpg,3.jpg,4.jpg', 'SVS Nagar, 2nd Main Road', 'Valasaravakkam', 'Chennai', 'TN', 'IN', '600087', '13.039999', '80.173277', '2016-08-29 16:20:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_community`
--

CREATE TABLE `hoa_community` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `banner` text NOT NULL,
  `desc` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_community`
--

INSERT INTO `hoa_community` (`id`, `name`, `banner`, `desc`, `code`, `website`, `address`, `phone`, `mobile`, `fax`, `latitude`, `longitude`, `status`, `created_by`, `created_date`, `last_updated`) VALUES
(1, 'Test Community', 'assets/images/3.jpg', 'Test Community Desc', 'TE74TY0', 'http://www.google.com', 'No 2/2,Third Floor, SVS Nagar 2nd Main Road,<br />\r\nValasaravakkam,<br />\r\nChennai,<br />\r\nIndia.<br />\r\n600087', '1234567890', '1234567890', '1234567890', '13.0492724', '80.1760637', 0, 3, '2016-08-30 12:32:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_community_docs`
--

CREATE TABLE `hoa_community_docs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `doc` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_community_docs`
--

INSERT INTO `hoa_community_docs` (`id`, `user_id`, `community_id`, `doc`, `created_date`) VALUES
(1, 3, 1, 'assets/2.jpg', '2016-08-30 18:24:47'),
(5, 3, 1, 'assets/docs/AdzepaMMS.docx', '2016-08-30 18:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_emergency_notification`
--

CREATE TABLE `hoa_emergency_notification` (
  `id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_emergency_notification`
--

INSERT INTO `hoa_emergency_notification` (`id`, `community_id`, `user_id`, `title`, `description`, `created_date`) VALUES
(1, 1, 3, 'Test Notification', 'Test Notification', '2016-08-31 11:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_form`
--

CREATE TABLE `hoa_form` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_form`
--

INSERT INTO `hoa_form` (`id`, `form_name`, `user_id`) VALUES
(1, 'Ram', 1),
(2, 'Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_form_data`
--

CREATE TABLE `hoa_form_data` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_form_data`
--

INSERT INTO `hoa_form_data` (`id`, `form_id`, `data`, `created_date`) VALUES
(1, 1, '{"Title":"Personal Info","Firstname":"Ramkumar","Lastname":"S","Email-ID":"ramkumar.izaap@gmail.com","Age":"25","PayTo":"To Camp Registration","Amount":"$5.00","TransID":"","Status":"Pending"}', '2016-08-26 13:18:40'),
(2, 2, '{"Gender":"Male","PayTo":"To Camp Registration","Amount":"$5.00","TransID":"","Status":"Pending"}', '2016-08-31 15:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_form_fields`
--

CREATE TABLE `hoa_form_fields` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_form_fields`
--

INSERT INTO `hoa_form_fields` (`id`, `form_id`, `field`, `sort`) VALUES
(6, 1, '{"form_id":"1","label":"Test Form","type":"title-field","options":",,","required":"off"}', 0),
(18, 1, '{"form_id":"1","label":"Personal Info","type":"personal-field","options":",,","required":"on"}', 1),
(19, 1, '{"form_id":"1","label":"Save Form","type":"submit-field","options":",,","required":"off"}', 3),
(21, 1, '{"form_id":"1","label":"To Camp Registration","type":"payment-field","options":",,","amount":"5.00","required":"off"}', 1),
(22, 2, '{"form_id":"2","label":"Gender","type":"select-field","options":"Male,Female,","amount":"5.00","required":"on"}', 0),
(23, 2, '{"form_id":"2","label":"Test","type":"radio-field","options":"1,2,4","amount":"5.00","required":"on"}', 2),
(24, 2, '{"form_id":"2","label":"Teste 1","type":"check-field","options":"1,3,4,5","amount":"5.00","required":"on"}', 1),
(25, 2, '{"form_id":"2","label":"To Camp Registration","type":"payment-field","options":",,","amount":"5.00","required":"on"}', 3),
(26, 2, '{"form_id":"2","label":"Save","type":"submit-field","options":",,","amount":"5.00","required":"off"}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_form_payment`
--

CREATE TABLE `hoa_form_payment` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_to` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_form_payment`
--

INSERT INTO `hoa_form_payment` (`id`, `form_id`, `user_id`, `pay_to`, `amount`, `trans_id`, `status`, `created_date`) VALUES
(1, 1, 1, 'To Camp Registration', '5.00', '', 'Pending', '2016-08-26 13:18:40'),
(2, 2, 1, 'To Camp Registration', '5.00', '', 'Pending', '2016-08-31 15:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_users`
--

CREATE TABLE `hoa_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `about_me` text NOT NULL,
  `usertype` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoa_users`
--

INSERT INTO `hoa_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `code`, `address`, `phone`, `mobile`, `about_me`, `usertype`, `created_date`, `last_updated`) VALUES
(1, 'Ramkumar', 'Srinivasan', 'ramkumar', 'ramkumar.izaap@gmail.com', '123456', 1, 'Chennai', '1234567890', '1234567890', 'Good Boy										', 1, '2016-08-08 13:34:50', '0000-00-00 00:00:00'),
(2, 'Ramkumars', 'Srinivasans', 'ramkumars', 'ramkumar.izaap@gmail.coms', '1234567', 1, 'Chennais', '1234567890', '1234567890', 'Good Boy										', 1, '2016-08-08 13:34:50', '0000-00-00 00:00:00'),
(3, 'admin', 'Trator', 'admin', 'admin@admin.com', '123456', 0, '', '123546790', '1234567980', '', 2, '2016-08-29 16:51:43', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoa_account_type`
--
ALTER TABLE `hoa_account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_activity_stream`
--
ALTER TABLE `hoa_activity_stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_classifieds`
--
ALTER TABLE `hoa_classifieds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_community`
--
ALTER TABLE `hoa_community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_community_docs`
--
ALTER TABLE `hoa_community_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_emergency_notification`
--
ALTER TABLE `hoa_emergency_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_form`
--
ALTER TABLE `hoa_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_form_data`
--
ALTER TABLE `hoa_form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_form_fields`
--
ALTER TABLE `hoa_form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_form_payment`
--
ALTER TABLE `hoa_form_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_users`
--
ALTER TABLE `hoa_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoa_account_type`
--
ALTER TABLE `hoa_account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hoa_activity_stream`
--
ALTER TABLE `hoa_activity_stream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hoa_classifieds`
--
ALTER TABLE `hoa_classifieds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hoa_community`
--
ALTER TABLE `hoa_community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hoa_community_docs`
--
ALTER TABLE `hoa_community_docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hoa_emergency_notification`
--
ALTER TABLE `hoa_emergency_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hoa_form`
--
ALTER TABLE `hoa_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hoa_form_data`
--
ALTER TABLE `hoa_form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hoa_form_fields`
--
ALTER TABLE `hoa_form_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `hoa_form_payment`
--
ALTER TABLE `hoa_form_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hoa_users`
--
ALTER TABLE `hoa_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
