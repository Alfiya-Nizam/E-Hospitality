-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 04:54 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can view log entry', 1, 'view_logentry'),
(20, 'Can view permission', 2, 'view_permission'),
(21, 'Can view group', 3, 'view_group'),
(22, 'Can view user', 4, 'view_user'),
(23, 'Can view content type', 5, 'view_contenttype'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add login table', 7, 'add_logintable'),
(26, 'Can change login table', 7, 'change_logintable'),
(27, 'Can delete login table', 7, 'delete_logintable'),
(28, 'Can view login table', 7, 'view_logintable'),
(29, 'Can add user register', 8, 'add_userregister'),
(30, 'Can change user register', 8, 'change_userregister'),
(31, 'Can delete user register', 8, 'delete_userregister'),
(32, 'Can view user register', 8, 'view_userregister'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add hospital details', 10, 'add_hospitaldetails'),
(38, 'Can change hospital details', 10, 'change_hospitaldetails'),
(39, 'Can delete hospital details', 10, 'delete_hospitaldetails'),
(40, 'Can view hospital details', 10, 'view_hospitaldetails'),
(41, 'Can add resource', 11, 'add_resource'),
(42, 'Can change resource', 11, 'change_resource'),
(43, 'Can delete resource', 11, 'delete_resource'),
(44, 'Can view resource', 11, 'view_resource'),
(45, 'Can add doctor details', 12, 'add_doctordetails'),
(46, 'Can change doctor details', 12, 'change_doctordetails'),
(47, 'Can delete doctor details', 12, 'delete_doctordetails'),
(48, 'Can view doctor details', 12, 'view_doctordetails'),
(49, 'Can add appointment details', 13, 'add_appointmentdetails'),
(50, 'Can change appointment details', 13, 'change_appointmentdetails'),
(51, 'Can delete appointment details', 13, 'delete_appointmentdetails'),
(52, 'Can view appointment details', 13, 'view_appointmentdetails'),
(53, 'Can add user appointment', 14, 'add_userappointment'),
(54, 'Can change user appointment', 14, 'change_userappointment'),
(55, 'Can delete user appointment', 14, 'delete_userappointment'),
(56, 'Can view user appointment', 14, 'view_userappointment'),
(57, 'Can add appointment details', 15, 'add_appointmentdetails'),
(58, 'Can change appointment details', 15, 'change_appointmentdetails'),
(59, 'Can delete appointment details', 15, 'delete_appointmentdetails'),
(60, 'Can view appointment details', 15, 'view_appointmentdetails'),
(61, 'Can add appointment', 16, 'add_appointment'),
(62, 'Can change appointment', 16, 'change_appointment'),
(63, 'Can delete appointment', 16, 'delete_appointment'),
(64, 'Can view appointment', 16, 'view_appointment'),
(65, 'Can add treatment plan', 17, 'add_treatmentplan'),
(66, 'Can change treatment plan', 17, 'change_treatmentplan'),
(67, 'Can delete treatment plan', 17, 'delete_treatmentplan'),
(68, 'Can view treatment plan', 17, 'view_treatmentplan'),
(69, 'Can add prescription table', 18, 'add_prescriptiontable'),
(70, 'Can change prescription table', 18, 'change_prescriptiontable'),
(71, 'Can delete prescription table', 18, 'delete_prescriptiontable'),
(72, 'Can view prescription table', 18, 'view_prescriptiontable');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$mShplya3N5dyGxNvhGDOMN$WHbR3S1KeKIgBJhpPOfa+jm/j8wmMOqB/vkWCP7MROU=', NULL, 0, 'ashiq', '', '', 'ashiq@gmail.com', 0, 1, '2024-05-09 02:24:18'),
(2, 'pbkdf2_sha256$320000$qfzCirLdFEjLw9UBjWTVfx$HFNP3phzj5ha/NielW3OT39u5FFDWD1VWGSI1FcQ3uU=', '2024-05-13 02:08:40', 1, 'admin', '', '', '', 1, 1, '2024-05-13 02:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-13 02:09:30', '1', 'Appointment for Alfiya with Dr. Anju on 2024-05-11 at 10-1 PM (Status: confirmed)', 2, '[]', 16, 2),
(2, '2024-05-13 02:10:11', '5', 'admin1', 1, '[{"added": {}}]', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(18, 'doctorApp', 'prescriptiontable'),
(17, 'doctorApp', 'treatmentplan'),
(15, 'hospitalapp', 'appointmentdetails'),
(9, 'hospitalapp', 'department'),
(12, 'hospitalapp', 'doctordetails'),
(10, 'hospitalapp', 'hospitaldetails'),
(11, 'hospitalapp', 'resource'),
(14, 'hospitalapp', 'userappointment'),
(6, 'sessions', 'session'),
(16, 'userApp', 'appointment'),
(13, 'userApp', 'appointmentdetails'),
(7, 'userApp', 'logintable'),
(8, 'userApp', 'userregister');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-28 06:39:32'),
(2, 'auth', '0001_initial', '2022-02-28 06:39:32'),
(3, 'admin', '0001_initial', '2022-02-28 06:39:32'),
(4, 'contenttypes', '0002_remove_content_type_name', '2022-02-28 06:39:32'),
(5, 'auth', '0002_alter_permission_name_max_length', '2022-02-28 06:39:32'),
(6, 'auth', '0003_alter_user_email_max_length', '2022-02-28 06:39:32'),
(7, 'auth', '0004_alter_user_username_opts', '2022-02-28 06:39:32'),
(8, 'auth', '0005_alter_user_last_login_null', '2022-02-28 06:39:32'),
(9, 'auth', '0006_require_contenttypes_0002', '2022-02-28 06:39:32'),
(10, 'sessions', '0001_initial', '2022-02-28 06:39:32'),
(11, 'admin', '0002_logentry_remove_auto_add', '2024-05-07 16:52:54'),
(12, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-07 16:52:54'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-05-07 16:52:54'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-05-07 16:52:54'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-05-07 16:52:54'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-05-07 16:52:54'),
(17, 'auth', '0011_update_proxy_permissions', '2024-05-07 16:52:54'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-05-07 16:52:54'),
(19, 'userApp', '0001_initial', '2024-05-07 16:52:54'),
(20, 'userApp', '0002_logintable_password2_userregister_password2', '2024-05-07 17:03:02'),
(21, 'hospitalapp', '0001_initial', '2024-05-08 16:34:07'),
(22, 'hospitalapp', '0002_doctordetails', '2024-05-09 01:39:32'),
(23, 'hospitalapp', '0003_doctordetails_password_doctordetails_username', '2024-05-09 02:22:47'),
(24, 'hospitalapp', '0004_doctordetails_password2', '2024-05-09 02:42:20'),
(25, 'userApp', '0003_appointmentdetails', '2024-05-09 12:20:37'),
(26, 'hospitalapp', '0005_userappointment_appointmentdetails', '2024-05-09 15:25:02'),
(27, 'userApp', '0004_delete_appointmentdetails', '2024-05-09 15:25:02'),
(28, 'userApp', '0003_appointment', '2024-05-09 16:07:57'),
(29, 'doctorApp', '0001_initial', '2024-05-11 09:07:45'),
(30, 'doctorApp', '0002_prescriptiontable', '2024-05-11 15:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('19737jvecwgoyrmlewxk9hovvihfpadt', 'N2ZmOTA1OGQzOWI0ZWY5NzcwYmE1NWQ5ODJjZTVhMTBmNDhmNWU4NTp7InR5cGUiOiJ1c2VyIiwiaWQiOjR9', '2022-11-21 07:34:17'),
('28kotfuwgebuulldiu609ifo7rlfncmx', 'YWIyODYxYzExOWZkNDA2ODZiYWU2ODQ0ZWEyOTNlZmMxNjJkZWJiZTp7InR5cGUiOiJhZG1pbiIsImlkIjoxfQ==', '2022-11-20 20:05:59'),
('29if2eyu78fzjy6370bapwiuh98q7w7n', 'ZGI3ZjVkZmJiODBmZGFmYjJiZDhkYmE3NmNmNmE2ZjdiY2VkODU1ODp7InR5cGUiOiJ1c2VyIiwiaWQiOjF9', '2022-04-23 16:34:16'),
('2ga2x0lgeul3f3jmq7y3o8j42hf3k6zz', 'ZGI3ZjVkZmJiODBmZGFmYjJiZDhkYmE3NmNmNmE2ZjdiY2VkODU1ODp7InR5cGUiOiJ1c2VyIiwiaWQiOjF9', '2022-04-24 15:08:28'),
('31vyi74mt1uldqag9h5ybg1wl6wemp27', 'NzM0MGNlNDEyMGMzODU0MzQzYjcxMWNlMTMzNmIwOTJkMWJjYmIxNDp7InR5cGUiOiJ1c2VyIiwiZW1haWwiOiJyZWV0aHVzaGFqaUBnbWFpbC5jb20iLCJpZCI6MX0=', '2022-04-23 05:42:43'),
('3evv7euq182rpeecsmktgyrtjyh66q76', 'eyJ1c2VybmFtZSI6ImFsZml5YSJ9:1s5Yjh:ZA4mx6oDBmF_dFmBMyeLB5UREO0nZox9m8KEBivse3s', '2024-05-24 22:29:05'),
('50xeiq65meam6e6y64q7acq2r91e5c28', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1ptsbt:6PJ0DECYWHLN0BzKFTM9hc8OYqaswDR4ePwqRAZE8Dg', '2023-05-16 16:12:13'),
('63emwbn31nqkxu5rass6le9tar832up5', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1py7yC:6WUgfjx42iAORWpghkwhRjWxF3E7GRaDNyeyuI_nfFo', '2023-05-28 09:24:48'),
('6ufrpxfatkjwgfgwp1r4d47ta8qylgpd', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1puPOW:Dz_wywXugm_7XlGcefJkpY1977GnKBDvJm4LM4nGUfM', '2023-05-18 03:12:36'),
('783hk250hu3ab54hhosk84us2ljmhtw5', 'YWIyODYxYzExOWZkNDA2ODZiYWU2ODQ0ZWEyOTNlZmMxNjJkZWJiZTp7InR5cGUiOiJhZG1pbiIsImlkIjoxfQ==', '2022-10-23 16:33:39'),
('8lttl8ck52mvhjvklxpqeu1s5zfrtjgt', 'eyJ1c2VybmFtZSI6ImFsZml5YSJ9:1s4OEr:yxNKjLc9a8LYlKy_Yan6UATbOn7TXmiZkz37heRNnJc', '2024-05-21 17:04:25'),
('9stcvahc0q61ala5q20558sshqby1m8i', 'Mjg2ZjFiZjJmZWJlMzhlNmZjOThlZWIzMmI3NDE3YjQyOGI2ZjU2YTp7InR5cGUiOiJidWlsZGVyIiwiZW1haWwiOjF9', '2022-03-30 14:45:03'),
('c1dwdyttjlpkby76tmb7ypduk972xx54', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1pzhdq:Yu8FM4ARlQRHYEPFPZ9EGeR0B1DqT4CGB67qW6eIPOc', '2023-06-01 17:42:18'),
('c629696y9dmdnkck7dca8w3dhg3t7prv', 'N2ZmOTA1OGQzOWI0ZWY5NzcwYmE1NWQ5ODJjZTVhMTBmNDhmNWU4NTp7InR5cGUiOiJ1c2VyIiwiaWQiOjR9', '2022-11-14 12:53:43'),
('kixcuakh7cx0rqv8a68axg5sly58jl25', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1ovXDS:o4rAr0tY62A4tKKJwl8HL4Y4besW9kdeUVP5WIdbYQs', '2022-12-01 05:13:34'),
('lrsdq2935xqg0ntg3l2wxfsycpuffuyk', 'eyJ1c2VybmFtZSI6ImFsZml5YSJ9:1s6NZb:F8bkXgG3Ojgm3nmeqv4rgYJ3_4tG1tLpQC4_rp70-IQ', '2024-05-27 04:46:03'),
('ot4nzrk4jz9wx283f6qxdsuldgjs1c9w', 'eyJ1c2VybmFtZSI6ImFsZml5YSJ9:1s62So:-lQQD-0Ecx-y-WdSGDUCRdeV70Hlg2by_vn_dVVlbiI', '2024-05-26 06:13:38'),
('qupq6i83w1qgqgwcl7kmx1stvnkrql78', 'N2ZmOTA1OGQzOWI0ZWY5NzcwYmE1NWQ5ODJjZTVhMTBmNDhmNWU4NTp7InR5cGUiOiJ1c2VyIiwiaWQiOjR9', '2022-11-21 06:51:04'),
('rk113xdeway6zrqyij6d47tfbnmpg5s0', 'N2ZmOTA1OGQzOWI0ZWY5NzcwYmE1NWQ5ODJjZTVhMTBmNDhmNWU4NTp7InR5cGUiOiJ1c2VyIiwiaWQiOjR9', '2022-11-21 04:29:45'),
('ruda6ve46lm7trr9m2qty3vwygmms8sl', 'YWIyODYxYzExOWZkNDA2ODZiYWU2ODQ0ZWEyOTNlZmMxNjJkZWJiZTp7InR5cGUiOiJhZG1pbiIsImlkIjoxfQ==', '2022-11-21 07:47:30'),
('sceoazvlj29xsus3vvmxhzhpjp1v6zml', 'eyJ1aWQiOjEsInV0eXBlIjoidXNlciJ9:1pyrke:_v-eq0uskinEUe_k1FThRcCzkXySx2lvVedRlggmCNQ', '2023-05-30 10:17:52'),
('wfmszz9pidle9htjx7u6dywphlan8h0t', 'eyJ1aWQiOjAsInV0eXBlIjoiYWRtaW4ifQ:1puQGy:cszh9adoFPOnEjnboayMEephhxzRjFYl4r8cAhD7BJ4', '2023-05-18 04:08:52'),
('zncj4alnj7ulrpdn1l8667ahnjuugsyo', 'YWIyODYxYzExOWZkNDA2ODZiYWU2ODQ0ZWEyOTNlZmMxNjJkZWJiZTp7InR5cGUiOiJhZG1pbiIsImlkIjoxfQ==', '2022-11-10 09:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_prescriptiontable`
--

CREATE TABLE IF NOT EXISTS `doctorapp_prescriptiontable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `doctorapp_prescriptiontable`
--

INSERT INTO `doctorapp_prescriptiontable` (`id`, `name`) VALUES
(1, 'Asthalin');

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp_treatmentplan`
--

CREATE TABLE IF NOT EXISTS `doctorapp_treatmentplan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `doctorapp_treatmentplan`
--

INSERT INTO `doctorapp_treatmentplan` (`id`, `plan`) VALUES
(1, 'consult next Monday and take scan');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalapp_department`
--

CREATE TABLE IF NOT EXISTS `hospitalapp_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hospitalapp_department`
--

INSERT INTO `hospitalapp_department` (`id`, `name`) VALUES
(1, 'Gynecology'),
(2, 'Neuro');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalapp_doctordetails`
--

CREATE TABLE IF NOT EXISTS `hospitalapp_doctordetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospitalapp_doctorde_department_id_60b090c2_fk_hospitala` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hospitalapp_doctordetails`
--

INSERT INTO `hospitalapp_doctordetails` (`id`, `name`, `address`, `place`, `state`, `country`, `phone`, `qualification`, `experience`, `email`, `image`, `department_id`, `password`, `username`, `password2`) VALUES
(1, 'Aashiq', 'Ashiq villa', 'Pazhakulam', 'Kerala', 'India', '9561035282', 'MBBS', '3', 'ashiq@gmail.com', 'picture/Aadujeevitham.jpg', 1, '', '', ''),
(2, 'annie', 'annievilla', 'Pathanamthitta', 'Kerala', 'India', '1231231231', 'MBBS', '3', 'annie@gmail.com', 'picture/criminal2.jpg', 1, '123', 'annie', '123'),
(3, 'Anju', 'Anju villa', 'Adoor', 'Kerala', 'India', '9080809090', 'MBBS', '3', 'anju@gmail.com', 'picture/charity5.jpg', 1, 'anju', 'anju', 'anju');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalapp_hospitaldetails`
--

CREATE TABLE IF NOT EXISTS `hospitalapp_hospitaldetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hospitalapp_hospitaldetails`
--

INSERT INTO `hospitalapp_hospitaldetails` (`id`, `name`, `address`, `place`, `state`, `country`, `postal_code`, `phone`, `email`, `image`) VALUES
(1, 'Life Line', 'LifelIne Hospital,crown plaza', 'Adoor', 'Kerala', 'India', '691554', '9020304050', 'life@gmail.com', 'pictures/harry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalapp_resource`
--

CREATE TABLE IF NOT EXISTS `hospitalapp_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hospitalapp_resource`
--

INSERT INTO `hospitalapp_resource` (`id`, `name`, `description`) VALUES
(1, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine'),
(2, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine'),
(3, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine'),
(4, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine'),
(5, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine'),
(6, 'Fever', 'stream two times daily,don''t use cold water,take prpoer medicine');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_appointment`
--

CREATE TABLE IF NOT EXISTS `userapp_appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userApp_appointment_department_id_f44e22e6_fk_hospitala` (`department_id`),
  KEY `userApp_appointment_doctor_id_654901fe_fk_hospitala` (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `userapp_appointment`
--

INSERT INTO `userapp_appointment` (`id`, `card_id`, `name`, `appointment_date`, `appointment_time`, `problem`, `status`, `department_id`, `doctor_id`) VALUES
(1, '12345', 'Alfiya', '2024-05-11', '10-1 PM', 'vomiting', 'confirmed', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_logintable`
--

CREATE TABLE IF NOT EXISTS `userapp_logintable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `userapp_logintable`
--

INSERT INTO `userapp_logintable` (`id`, `username`, `password`, `type`, `password2`) VALUES
(0, 'admin', 'admin', 'admin', 'admin'),
(1, 'alfiya', '123', 'user', '123'),
(2, 'anju', 'anju', 'doctor', 'anju');

-- --------------------------------------------------------

--
-- Table structure for table `userapp_userregister`
--

CREATE TABLE IF NOT EXISTS `userapp_userregister` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `place` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userapp_userregister`
--

INSERT INTO `userapp_userregister` (`id`, `name`, `address`, `place`, `district`, `state`, `pincode`, `phone`, `email`, `username`, `password`, `password2`) VALUES
(1, 'Alfiya Nizam', 'Charuvila', 'Pazhakulam', 'Pathanamthitta', 'Kerala', '691554', '7561035282', 'alfi@gmail.com', 'alfiya', '123', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `hospitalapp_doctordetails`
--
ALTER TABLE `hospitalapp_doctordetails`
  ADD CONSTRAINT `hospitalapp_doctorde_department_id_60b090c2_fk_hospitala` FOREIGN KEY (`department_id`) REFERENCES `hospitalapp_department` (`id`);

--
-- Constraints for table `userapp_appointment`
--
ALTER TABLE `userapp_appointment`
  ADD CONSTRAINT `userApp_appointment_doctor_id_654901fe_fk_hospitala` FOREIGN KEY (`doctor_id`) REFERENCES `hospitalapp_doctordetails` (`id`),
  ADD CONSTRAINT `userApp_appointment_department_id_f44e22e6_fk_hospitala` FOREIGN KEY (`department_id`) REFERENCES `hospitalapp_department` (`id`);
