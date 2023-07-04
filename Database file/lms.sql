-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 07:11 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_admin`
--

CREATE TABLE `lms_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_admin`
--

INSERT INTO `lms_admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(6, 'arooj@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `lms_author`
--

CREATE TABLE `lms_author` (
  `author_id` int(5) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_status` varchar(50) NOT NULL,
  `author_created_on` datetime NOT NULL,
  `author_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_author`
--

INSERT INTO `lms_author` (`author_id`, `author_name`, `author_status`, `author_created_on`, `author_updated_on`) VALUES
(3, 'Stephen King', 'Enable', '2023-01-28 13:27:00', '0000-00-00 00:00:00'),
(4, 'J.K. Rowling', 'Enable', '2023-01-28 13:27:21', '0000-00-00 00:00:00'),
(5, 'John Green', 'Enable', '2023-01-28 13:27:37', '0000-00-00 00:00:00'),
(6, 'Elif Shafak', 'Enable', '2023-01-28 13:27:52', '0000-00-00 00:00:00'),
(7, 'Alice Walker', 'Enable', '2023-01-28 13:28:06', '2023-01-28 13:30:15'),
(8, 'Khaled Hosseini', 'Enable', '2023-01-28 13:28:21', '0000-00-00 00:00:00'),
(9, 'Brian Evenson', 'Enable', '2023-01-28 13:28:36', '0000-00-00 00:00:00'),
(10, 'Kazuo Ishiguro', 'Enable', '2023-01-28 13:28:50', '0000-00-00 00:00:00'),
(11, 'Jerry Jenkins', 'Enable', '2023-01-28 13:29:07', '0000-00-00 00:00:00'),
(12, 'Michael Chabon', 'Enable', '2023-01-28 13:29:23', '0000-00-00 00:00:00'),
(13, 'Rachel Kushner', 'Enable', '2023-01-28 13:29:35', '0000-00-00 00:00:00'),
(14, 'George Saunders', 'Enable', '2023-01-28 13:29:48', '0000-00-00 00:00:00'),
(15, 'Allama Iqbal', 'Enable', '2023-01-28 13:29:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lms_book`
--

CREATE TABLE `lms_book` (
  `book_id` int(5) NOT NULL,
  `book_category` varchar(100) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_location_rack` varchar(50) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_isbn_number` varchar(50) NOT NULL,
  `book_no_of_copy` int(5) NOT NULL,
  `book_status` varchar(50) NOT NULL,
  `book_added_on` datetime NOT NULL,
  `book_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_book`
--

INSERT INTO `lms_book` (`book_id`, `book_category`, `book_author`, `book_location_rack`, `book_name`, `book_isbn_number`, `book_no_of_copy`, `book_status`, `book_added_on`, `book_updated_on`) VALUES
(2, 'Romance', 'Jerry Jenkins', 'K1', 'Anna Karenina by Leo Tolstoy', '08008-123211-45542', 4, 'Enable', '2023-01-28 13:39:01', '2023-01-28 14:40:45'),
(3, 'Adventure Stories', 'Alice Walker', 'K2', 'To Kill a Mockingbird by Harper Lee', '08008-123211-45543', 2, 'Enable', '2023-01-28 13:39:46', '2023-02-03 23:23:11'),
(4, 'Fantasy', 'Khaled Hosseini', 'K3', 'Where the Sidewalk Ends by Shel Silverstein', '08008-123211-45544', 5, 'Enable', '2023-01-28 13:40:23', '2023-01-28 14:41:07'),
(5, 'Literary fiction', 'J.K. Rowling', 'K4', 'Valley of the Dolls by Jacqueline Susann', '08008-123211-45545', 5, 'Enable', '2023-01-28 13:40:57', '2023-02-03 23:23:25'),
(6, 'Thrillers', 'Michael Chabon', 'K5', 'The Shining by Stephen King', '08008-123211-45546', 5, 'Enable', '2023-01-28 13:41:50', '0000-00-00 00:00:00'),
(7, 'Historical Fiction', 'Alice Walker', 'H1', 'The Little Prince by Antoine de Saint-Exupéry', '08008-123211-45547', 8, 'Enable', '2023-01-28 13:42:33', '2023-01-28 14:42:33'),
(8, 'Romance', 'George Saunders', 'H2', 'Beloved by Toni Morrison', '08008-123211-45547', 1, 'Enable', '2023-01-28 13:43:25', '2023-01-28 14:42:33'),
(9, 'Biography', 'Elif Shafak', 'H3', 'In Cold Blood by Truman Capote', '08008-123211-45548', 3, 'Enable', '2023-01-28 14:27:49', '2023-02-03 23:23:38'),
(10, 'Science fiction', 'Stephen King', 'H4', 'Dune by Frank Herbert', '08008-123211-45549', 7, 'Enable', '2023-01-28 14:28:27', '2023-02-03 23:24:02'),
(11, 'Poetry', 'Allama Iqbal', 'H4', 'Bal e Jibreel', '08008-123211-45550', 3, 'Enable', '2023-01-28 14:30:49', '0000-00-00 00:00:00'),
(12, 'Poetry', 'Allama Iqbal', 'H5', 'Sharah e Masnavi Pas Cheh Bayed Kard ai Aqwam-e-Sharq', '08008-123211-45551', 8, 'Enable', '2023-01-28 14:31:24', '0000-00-00 00:00:00'),
(13, 'Poetry', 'Allama Iqbal', 'H5', 'The Secret of the Self', '08008-123211-45552', 3, 'Enable', '2023-01-28 14:32:10', '2023-07-04 22:09:49'),
(14, 'Poetry', 'Allama Iqbal', 'S1', 'The Reconstruction of Religious', '08008-123211-45553', 6, 'Enable', '2023-01-28 14:32:55', '0000-00-00 00:00:00'),
(15, 'Programing Base', 'Khaled Hosseini', 'S2', 'Clean Code', '08008-123211-45554', 3, 'Enable', '2023-01-28 14:33:42', '2023-02-03 23:24:53'),
(16, 'Programing Base', 'George Saunders', 'S3', 'The Programmatic Programmer', '08008-123211-45556', 8, 'Enable', '2023-01-28 14:34:20', '2023-01-28 14:38:29'),
(17, 'AI Base', 'J.K. Rowling', 'S4', 'Human Capitable', '08008-123211-45557', 6, 'Enable', '2023-01-28 14:35:17', '2023-01-28 14:43:42'),
(18, 'AI Base', 'Michael Chabon', 'S5', 'The Alignment Problem', '08008-123211-45560', 4, 'Enable', '2023-01-28 14:35:57', '2023-01-28 14:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `lms_category`
--

CREATE TABLE `lms_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_status` varchar(50) NOT NULL,
  `category_created_on` datetime NOT NULL,
  `category_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_category`
--

INSERT INTO `lms_category` (`category_id`, `category_name`, `category_status`, `category_created_on`, `category_updated_on`) VALUES
(5, 'Programing Base', 'Enable', '2023-01-28 13:19:48', '0000-00-00 00:00:00'),
(6, 'AI Base', 'Disable', '2023-01-28 13:20:04', '2023-07-04 20:39:34'),
(7, 'Physics', 'Enable', '2023-01-28 13:20:15', '0000-00-00 00:00:00'),
(8, 'Chemicals', 'Enable', '2023-01-28 13:20:29', '0000-00-00 00:00:00'),
(9, 'Adventure Stories', 'Enable', '2023-01-28 13:20:49', '2023-01-31 20:32:53'),
(10, 'Classic', 'Enable', '2023-01-28 13:21:06', '0000-00-00 00:00:00'),
(11, 'Fantasy', 'Enable', '2023-01-28 13:21:21', '0000-00-00 00:00:00'),
(12, 'Biography', 'Enable', '2023-01-28 13:21:47', '0000-00-00 00:00:00'),
(13, 'Literary fiction', 'Enable', '2023-01-28 13:22:21', '0000-00-00 00:00:00'),
(14, 'Science fiction', 'Enable', '2023-01-28 13:22:42', '0000-00-00 00:00:00'),
(15, 'Romance', 'Enable', '2023-01-28 13:23:05', '0000-00-00 00:00:00'),
(16, 'Poetry', 'Enable', '2023-01-28 13:23:20', '0000-00-00 00:00:00'),
(17, 'Thrillers', 'Enable', '2023-01-28 13:23:51', '0000-00-00 00:00:00'),
(18, 'Essays', 'Enable', '2023-01-28 13:24:19', '0000-00-00 00:00:00'),
(19, 'Self-Help', 'Enable', '2023-01-28 13:24:27', '0000-00-00 00:00:00'),
(20, 'Historical Fiction', 'Enable', '2023-01-28 13:24:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lms_issue_book`
--

CREATE TABLE `lms_issue_book` (
  `issue_book_id` int(11) NOT NULL,
  `book_id` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `issue_date_time` datetime NOT NULL,
  `expected_return_date` datetime NOT NULL,
  `return_date_time` datetime NOT NULL,
  `book_fines` varchar(10) NOT NULL,
  `book_issue_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_issue_book`
--

INSERT INTO `lms_issue_book` (`issue_book_id`, `book_id`, `user_id`, `issue_date_time`, `expected_return_date`, `return_date_time`, `book_fines`, `book_issue_status`) VALUES
(12, '08008-123211-45543', 'U14152068', '2023-02-03 23:23:11', '2023-02-13 23:23:11', '0000-00-00 00:00:00', '3600', 'Not Return'),
(13, '08008-123211-45545', 'U14152068', '2023-02-03 23:23:25', '2023-02-13 23:23:25', '0000-00-00 00:00:00', '3600', 'Not Return'),
(14, '08008-123211-45548', 'U14152068', '2023-02-03 23:23:38', '2023-02-13 23:23:38', '0000-00-00 00:00:00', '3600', 'Not Return'),
(15, '08008-123211-45549', 'U24279590', '2023-02-03 23:24:02', '2023-02-13 23:24:02', '0000-00-00 00:00:00', '3600', 'Not Return'),
(16, '08008-123211-45552', 'U24279590', '2023-02-03 23:24:17', '2023-02-13 23:24:17', '0000-00-00 00:00:00', '3600', 'Not Return'),
(17, '08008-123211-45554', 'U24279590', '2023-02-03 23:24:53', '2023-02-13 23:24:53', '0000-00-00 00:00:00', '3600', 'Not Return'),
(18, '08008-123211-45552', 'U27602236', '2023-07-04 22:09:49', '2023-07-14 22:09:49', '0000-00-00 00:00:00', '0', 'Issue');

-- --------------------------------------------------------

--
-- Table structure for table `lms_location_rack`
--

CREATE TABLE `lms_location_rack` (
  `location_rack_id` int(11) NOT NULL,
  `location_rack_name` varchar(100) NOT NULL,
  `location_rack_status` varchar(50) NOT NULL,
  `location_rack_created_on` datetime NOT NULL,
  `location_rack_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_location_rack`
--

INSERT INTO `lms_location_rack` (`location_rack_id`, `location_rack_name`, `location_rack_status`, `location_rack_created_on`, `location_rack_updated_on`) VALUES
(2, 'K1', 'Enable', '2023-01-28 13:34:20', '0000-00-00 00:00:00'),
(3, 'K2', 'Enable', '2023-01-28 13:34:26', '0000-00-00 00:00:00'),
(4, 'K3', 'Enable', '2023-01-28 13:34:32', '0000-00-00 00:00:00'),
(5, 'K4', 'Enable', '2023-01-28 13:34:38', '0000-00-00 00:00:00'),
(6, 'K5', 'Enable', '2023-01-28 13:34:43', '0000-00-00 00:00:00'),
(7, 'H1', 'Enable', '2023-01-28 13:34:48', '0000-00-00 00:00:00'),
(8, 'H2', 'Enable', '2023-01-28 13:34:53', '0000-00-00 00:00:00'),
(9, 'H3', 'Enable', '2023-01-28 13:34:59', '0000-00-00 00:00:00'),
(10, 'H4', 'Enable', '2023-01-28 13:35:07', '0000-00-00 00:00:00'),
(11, 'H5', 'Enable', '2023-01-28 13:35:14', '0000-00-00 00:00:00'),
(12, 'S1', 'Enable', '2023-01-28 13:35:22', '0000-00-00 00:00:00'),
(13, 'S2', 'Enable', '2023-01-28 13:35:27', '0000-00-00 00:00:00'),
(14, 'S3', 'Enable', '2023-01-28 13:35:37', '0000-00-00 00:00:00'),
(15, 'S4', 'Enable', '2023-01-28 13:35:50', '0000-00-00 00:00:00'),
(16, 'S5', 'Enable', '2023-01-28 13:35:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lms_setting`
--

CREATE TABLE `lms_setting` (
  `setting_id` int(11) NOT NULL,
  `library_name` varchar(200) NOT NULL,
  `library_address` text NOT NULL,
  `library_contact_number` varchar(30) NOT NULL,
  `library_email_address` varchar(100) NOT NULL,
  `library_total_book_issue_day` int(5) NOT NULL,
  `library_one_day_fine` int(5) NOT NULL,
  `library_issue_total_book_per_user` int(3) NOT NULL,
  `library_currency` varchar(30) NOT NULL,
  `library_timezone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_setting`
--

INSERT INTO `lms_setting` (`setting_id`, `library_name`, `library_address`, `library_contact_number`, `library_email_address`, `library_total_book_issue_day`, `library_one_day_fine`, `library_issue_total_book_per_user`, `library_currency`, `library_timezone`) VALUES
(2, 'Arooj Library', '225 N Michigan Ave Suite 1300, Chicago, IL 60601, United States', '123-345678890', 'Arooj_Library@gmail.com', 10, 200, 3, 'PKR', 'Asia/Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE `lms_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_address` text NOT NULL,
  `user_contact_no` varchar(50) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_email_address` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_verificaton_code` varchar(100) NOT NULL,
  `user_verification_status` enum('Yes','No') NOT NULL,
  `user_unique_id` varchar(50) NOT NULL,
  `user_status` enum('Enable','Disable') NOT NULL,
  `user_created_on` datetime NOT NULL,
  `user_updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`user_id`, `user_name`, `user_address`, `user_contact_no`, `user_profile`, `user_email_address`, `user_password`, `user_verificaton_code`, `user_verification_status`, `user_unique_id`, `user_status`, `user_created_on`, `user_updated_on`) VALUES
(19, 'George', 'USA', '123-45678909', '1675448396-1329566054.jpg', 'george@gmail.com', '123', '', 'No', 'U20448072', 'Enable', '2023-02-03 23:19:56', '0000-00-00 00:00:00'),
(20, 'Jennifer', 'UK', '123-45678909', '1675448426-2015440536.jpg', 'Jeniffer@gmail.com', '123', '', 'No', 'U82395202', 'Enable', '2023-02-03 23:20:26', '0000-00-00 00:00:00'),
(21, 'David', 'Canada', '123-45678909', '1675448475-800477286.jpg', 'dave@gmail.com', '123', '', 'No', 'U14152068', 'Enable', '2023-02-03 23:21:15', '0000-00-00 00:00:00'),
(23, 'Arooj', 'Johr Town', '123-45678909', '1688490421-1323846501.jpg', 'arooj@gmail.com', '123', '', 'No', 'U27602236', 'Enable', '2023-07-04 22:07:01', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lms_admin`
--
ALTER TABLE `lms_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `lms_author`
--
ALTER TABLE `lms_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `lms_book`
--
ALTER TABLE `lms_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lms_category`
--
ALTER TABLE `lms_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  ADD PRIMARY KEY (`issue_book_id`);

--
-- Indexes for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  ADD PRIMARY KEY (`location_rack_id`);

--
-- Indexes for table `lms_setting`
--
ALTER TABLE `lms_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `lms_user`
--
ALTER TABLE `lms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lms_admin`
--
ALTER TABLE `lms_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lms_author`
--
ALTER TABLE `lms_author`
  MODIFY `author_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lms_book`
--
ALTER TABLE `lms_book`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lms_category`
--
ALTER TABLE `lms_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lms_issue_book`
--
ALTER TABLE `lms_issue_book`
  MODIFY `issue_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lms_location_rack`
--
ALTER TABLE `lms_location_rack`
  MODIFY `location_rack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lms_setting`
--
ALTER TABLE `lms_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lms_user`
--
ALTER TABLE `lms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
