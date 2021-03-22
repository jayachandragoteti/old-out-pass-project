-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 12:35 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arum_iotdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Device` (IN `Auth_token` VARCHAR(255), IN `type` INT(2), IN `pin` INT)  NO SQL
BEGIN

INSERT INTO devices (device_id, type, pin) VALUES(Auth_token, type, pin);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Item` (IN `item_id` VARCHAR(100), IN `auth_id` VARCHAR(100), IN `type_id` INT)  NO SQL
BEGIN

INSERT INTO items (item_id, device_id,item_name) VALUES(item_id, auth_id, 'temp name');

INSERT INTO item_configuration (item_id, type_id, value) VALUES (item_id, type_id, 0 );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_New_project_SP` (IN `p_id` VARCHAR(120), IN `p_name` VARCHAR(150), IN `uid` VARCHAR(120))  NO SQL
BEGIN
	INSERT INTO projects (projects.project_id, projects.ProjectName, 			projects.uid) VALUES (p_id,p_name,uid);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Assign_device_SP` (IN `dev_id` VARCHAR(100), IN `proj_id` VARCHAR(100), IN `dev_name` VARCHAR(100), IN `pin_num` INT)  NO SQL
BEGIN
	DECLARE tot INT DEFAULT 0;
    SELECT COUNT(devices.device_id) FROM devices WHERE devices.device_id = dev_id AND devices.pin = pin_num INTO tot;
    IF tot = 1
    THEN
    	UPDATE devices SET devices.device_name = dev_name WHERE devices.device_id = dev_id;
        INSERT INTO project_configure (project_configure.project_id, project_configure.device_id) VALUES (proj_id, dev_id);
        SELECT 1 res;
    ELSE
    	SELECT 0 res;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `change_password_Sp` (IN `user_id` VARCHAR(100), IN `old_pass` VARCHAR(100), IN `new_pass` VARCHAR(100))  NO SQL
BEGIN
	DECLARE old_db_pass INT DEFAULT 0;
    
    SELECT COUNT(users.uid) FROM users WHERE users.uid = user_id
    AND users.user_pass = old_pass INTO old_db_pass;
    
    IF old_db_pass = 1 THEN
		UPDATE users SET users.user_pass = new_pass WHERE users.uid = user_id; 
        SELECT 1 res;
    ELSE 
    	SELECT 0 res;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `change_pin_SP` (IN `auth_num` VARCHAR(120), IN `old_pin` INT(11), IN `new_pin` INT(11))  NO SQL
BEGIN
	DECLARE isoldpin INT DEFAULT 0;
    SELECT COUNT(devices.device_id) FROM devices WHERE devices.device_id = auth_num AND devices.pin = old.pin INTO isoldpin;
    
    IF isoldpin = 1 THEN
     UPDATE devices SET devices.pin = new_pin WHERE devices.device_id = auth_num;
     	SELECT 1;
   	ELSE
    	SELECT 0 ;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DoLogin_Sp` (IN `email` VARCHAR(50), IN `password` VARCHAR(50))  NO SQL
SELECT uid, user_name ,type from users WHERE email_id = email AND user_pass = password$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DoSignup_Sp` (IN `uid` VARCHAR(30), IN `email` VARCHAR(50), IN `pass` VARCHAR(50), IN `name` VARCHAR(50))  NO SQL
INSERT INTO users (uid,user_name,email_id,user_pass,type) VALUES(uid,name,email,pass,1)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ex_Assign_device_SP` (IN `dev_id` VARCHAR(120), IN `p_id` VARCHAR(120), IN `pin_num` INT)  NO SQL
BEGIN
	DECLARE tot INT DEFAULT 0;
    DECLARE ass INT DEFAULT 0;
    SELECT COUNT(devices.device_id) FROM devices WHERE devices.device_id = dev_id AND devices.pin = pin_num INTO tot;
    SELECT COUNT(project_configure.project_id) FROM project_configure WHERE project_configure.project_id = p_id AND project_configure.device_id = dev_id INTO ass;
    
    IF tot = 1 AND ass = 0
    THEN
        INSERT INTO project_configure (project_configure.project_id, project_configure.device_id) VALUES (p_id, dev_id);
        SELECT 1 res;
    ELSEIF tot = 0 
    THEN
    	SELECT 0 res;
    ELSEIF ass = 1
    THEN
    	SELECT 2 res;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `forgot_password_Sp` (IN `email` VARCHAR(100), IN `forgot_pass` VARCHAR(200))  NO SQL
BEGIN
	DECLARE isuser INT DEFAULT 0;
    
    SELECT COUNT(users.uid) FROM users WHERE users.email_id = email INTO isuser;
    
    IF isuser = 1 THEN
		UPDATE users SET users.user_pass = forgot_pass WHERE users.email_id = email;
       
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_projects_SP` (IN `us_id` VARCHAR(100))  NO SQL
BEGIN
 IF us_id = (SELECT users.uid FROM users WHERE users.type = 2)
 THEN
 	SELECT projects.project_id, projects.ProjectName, project_configure.device_id, devices.device_name, devices.type, items.item_id, items.item_name, item_configuration.type_id, item_configuration.value, item_types.component FROM projects JOIN project_configure ON projects.project_id = project_configure.project_id JOIN devices on project_configure.device_id = devices.device_id JOIN items ON items.device_id = project_configure.device_id JOIN item_configuration ON items.item_id = item_configuration.item_id JOIN item_types on item_configuration.type_id = item_types.type_id
    
UNION ALL 

SELECT projects.project_id, projects.ProjectName, '','','','','','','','' FROM projects LEFT JOIN project_configure ON projects.project_id = project_configure.project_id WHERE project_configure.device_id is NULL;

  ELSE
  SELECT projects.project_id, projects.ProjectName, project_configure.device_id, devices.device_name, devices.type, items.item_id, items.item_name, item_configuration.type_id, item_configuration.value, item_types.component FROM projects JOIN project_configure ON projects.project_id = project_configure.project_id JOIN devices on project_configure.device_id = devices.device_id JOIN items ON items.device_id = project_configure.device_id JOIN item_configuration ON items.item_id = item_configuration.item_id JOIN item_types on item_configuration.type_id = item_types.type_id WHERE projects.uid = us_id
  
UNION ALL 

SELECT projects.project_id, projects.ProjectName, '','','','','','','','' FROM projects LEFT JOIN project_configure ON projects.project_id = project_configure.project_id WHERE projects.uid = us_id AND project_configure.device_id is NULL;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_assigned_devices_sp` (IN `id` VARCHAR(120))  NO SQL
BEGIN
	SELECT devices.device_id FROM devices LEFT JOIN project_configure on devices.device_id = project_configure.device_id WHERE project_configure.combo_id IS NOT NULL AND devices.device_id LIKE CONCAT('%',id,'%');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_config_dev_items_Sp` (IN `dev_id` VARCHAR(100))  NO SQL
BEGIN
	SELECT devices.device_id, devices.type,items.item_id,items.item_name,item_configuration.type_id, item_types.type_name FROM devices JOIN items ON devices.device_id = items.device_id JOIN item_configuration ON items.item_id = item_configuration.item_id join item_types ON item_configuration.type_id = item_types.type_id WHERE devices.device_id = dev_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_My_Projects_Sp` (IN `user_id` VARCHAR(120))  NO SQL
BEGIN
	SELECT * FROM projects WHERE projects.uid = user_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_projects_sp` (IN `projname` VARCHAR(100), IN `use_id` VARCHAR(120))  NO SQL
BEGIN
	SELECT * FROM projects WHERE projects.ProjectName LIKE 	CONCAT('%',projname,'%') AND projects.uid = use_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_project_data_sp` (IN `pid` VARCHAR(1000))  NO SQL
BEGIN
	SELECT projects.project_id, projects.ProjectName, project_configure.device_id, devices.device_name, devices.type, items.item_id, items.item_name, item_configuration.type_id, item_configuration.value, item_types.component FROM projects JOIN project_configure ON projects.project_id = project_configure.project_id JOIN devices on project_configure.device_id = devices.device_id JOIN items ON items.device_id = project_configure.device_id JOIN item_configuration ON items.item_id = item_configuration.item_id JOIN item_types on item_configuration.type_id = item_types.type_id WHERE projects.project_id = pid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_unassigned_devices_sp` (IN `id` VARCHAR(200))  NO SQL
BEGIN
	SELECT devices.device_id FROM devices LEFT JOIN project_configure on devices.device_id = project_configure.device_id WHERE project_configure.combo_id IS NULL AND devices.device_id LIKE CONCAT('%',id,'%');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `set_item_status_Sp` (IN `iid` VARCHAR(100), IN `val` INT)  NO SQL
BEGIN
	UPDATE item_configuration SET item_configuration.value = val WHERE item_configuration.item_id = iid; 
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `device_id` varchar(50) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `last_Active` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`device_id`, `device_name`, `type`, `pin`, `last_Active`) VALUES
('Auth15ecf8faa17001', '', 1, 27399, '2020-05-28 10:17:14'),
('Auth15edba947950ea', '', 1, 13833, '2020-06-06 14:33:43'),
('Auth25edba94c58964', '', 2, 17261, '2020-06-06 14:33:48'),
('Auth25edba94dba2c4', 'test2', 2, 14854, '2020-06-06 14:39:01'),
('Auth25edc94d21eaae', 'some new test', 2, 34491, '2020-06-07 07:20:24'),
('Auth35edba953bbfe6', '', 3, 11018, '2020-06-06 14:33:55'),
('Auth35edba953f3f4f', '', 3, 99478, '2020-06-06 14:33:55'),
('Auth45edba9595e04f', '', 4, 35902, '2020-06-06 14:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `device_cofig`
--

CREATE TABLE `device_cofig` (
  `type_id` int(11) NOT NULL,
  `item_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `device_types`
--

CREATE TABLE `device_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `TotalItems` int(5) NOT NULL,
  `isfixed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_types`
--

INSERT INTO `device_types` (`type_id`, `type_name`, `TotalItems`, `isfixed`) VALUES
(1, 'Arum_4A', 4, 0),
(2, 'Arum-8A', 8, 0),
(3, 'Arum-Water', 2, 0),
(4, 'Arum-security', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(50) NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `device_id`, `item_name`) VALUES
('Item5ecf8faa25405', 'Auth15ecf8faa17001', 'temp name'),
('Item5ecf8faa257f5', 'Auth15ecf8faa17001', 'temp name'),
('Item5ecf8faa259ee', 'Auth15ecf8faa17001', 'temp name'),
('Item5ecf8faa25b6c', 'Auth15ecf8faa17001', 'temp name'),
('Item5edba947b78cb', 'Auth15edba947950ea', 'temp name'),
('Item5edba947bdae6', 'Auth15edba947950ea', 'temp name'),
('Item5edba947bdbd1', 'Auth15edba947950ea', 'temp name'),
('Item5edba947bdc8b', 'Auth15edba947950ea', 'temp name'),
('Item5edba94ca0f24', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db2e7d', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db30c9', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db3236', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db342d', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db3581', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db3685', 'Auth25edba94c58964', 'temp name'),
('Item5edba94db3759', 'Auth25edba94c58964', 'temp name'),
('Item5edba94dba94e', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbabdb', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbacc8', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbade5', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbafe6', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbb1ac', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbb2d6', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba94dbb38a', 'Auth25edba94dba2c4', 'temp name'),
('Item5edba953c2d2e', 'Auth35edba953bbfe6', 'temp name'),
('Item5edba953c3517', 'Auth35edba953bbfe6', 'temp name'),
('Item5edba954002c8', 'Auth35edba953f3f4f', 'temp name'),
('Item5edba95400534', 'Auth35edba953f3f4f', 'temp name'),
('Item5edba9595e58d', 'Auth45edba9595e04f', 'temp name'),
('Item5edc94d2408e8', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d291325', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d29151a', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d2916d9', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d29182f', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d291987', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d29b713', 'Auth25edc94d21eaae', 'temp name'),
('Item5edc94d29b954', 'Auth25edc94d21eaae', 'temp name');

-- --------------------------------------------------------

--
-- Table structure for table `item_configuration`
--

CREATE TABLE `item_configuration` (
  `item_id` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_configuration`
--

INSERT INTO `item_configuration` (`item_id`, `type_id`, `value`) VALUES
('Item5ecf8faa25405', 1, 0),
('Item5ecf8faa257f5', 1, 0),
('Item5ecf8faa259ee', 1, 0),
('Item5ecf8faa25b6c', 2, 0),
('Item5edba947b78cb', 1, 0),
('Item5edba947bdae6', 1, 0),
('Item5edba947bdbd1', 1, 0),
('Item5edba947bdc8b', 2, 0),
('Item5edba94ca0f24', 1, 0),
('Item5edba94db2e7d', 1, 0),
('Item5edba94db30c9', 1, 0),
('Item5edba94db3236', 1, 0),
('Item5edba94db342d', 1, 0),
('Item5edba94db3581', 2, 0),
('Item5edba94db3685', 2, 0),
('Item5edba94db3759', 2, 0),
('Item5edba94dba94e', 1, 0),
('Item5edba94dbabdb', 1, 0),
('Item5edba94dbacc8', 1, 0),
('Item5edba94dbade5', 1, 0),
('Item5edba94dbafe6', 1, 0),
('Item5edba94dbb1ac', 2, 0),
('Item5edba94dbb2d6', 2, 0),
('Item5edba94dbb38a', 2, 0),
('Item5edba953c2d2e', 1, 0),
('Item5edba953c3517', 4, 0),
('Item5edba954002c8', 1, 0),
('Item5edba95400534', 4, 0),
('Item5edba9595e58d', 3, 0),
('Item5edc94d2408e8', 1, 0),
('Item5edc94d291325', 1, 0),
('Item5edc94d29151a', 1, 0),
('Item5edc94d2916d9', 1, 0),
('Item5edc94d29182f', 1, 0),
('Item5edc94d291987', 2, 0),
('Item5edc94d29b713', 2, 0),
('Item5edc94d29b954', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

CREATE TABLE `item_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `component` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`type_id`, `type_name`, `component`) VALUES
(1, 'Switch ', 'toggle_button'),
(2, 'Switch with regulator', 'slider_button'),
(3, 'Lock button', 'lock_button'),
(4, 'Tank Status Indicator', 'gauge_status');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` varchar(50) NOT NULL,
  `ProjectName` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `ProjectName`, `uid`) VALUES
('AP5ecf901404bc6', 'test', 'uid5ec11d674d80a'),
('AP5edba98e95dc8', 'test2', 'uid5ec11d674d80a'),
('AP5edbaafe94512', 'test2', 'uid5ec11d674d80a');

-- --------------------------------------------------------

--
-- Table structure for table `project_configure`
--

CREATE TABLE `project_configure` (
  `combo_id` int(11) NOT NULL,
  `project_id` varchar(50) NOT NULL,
  `device_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_configure`
--

INSERT INTO `project_configure` (`combo_id`, `project_id`, `device_id`) VALUES
(5, 'AP5edba98e95dc8', 'Auth25edba94dba2c4'),
(6, 'AP5edba98e95dc8', 'Auth25edba94dba2c4'),
(7, 'AP5edba98e95dc8', 'Auth25edba94dba2c4'),
(8, 'AP5ecf901404bc6', 'Auth25edc94d21eaae');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `idd` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`idd`, `name`, `id_number`) VALUES
(1, 'jay', '1'),
(2, 'chandra', '2'),
(3, 'jay', '3'),
(4, 'chandra', '4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `lastLogin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `user_name`, `email_id`, `user_pass`, `lastLogin`, `type`) VALUES
('uid548455asdff', 'admin', 'admin@admin.com', 'admin', '2020-05-17 11:43:24', 2),
('uid5ec11d674d80a', 'test user ', 'test@test.com', 'test', '2020-06-08 12:13:28', 1),
('uid5edc8f6d28da0', 'some test', 'some@some.co', 'RBnjg2r81F', '2020-06-07 08:14:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`type_id`, `type_name`) VALUES
(1, 'user'),
(2, 'adimn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`device_id`),
  ADD KEY `Devices_fk0` (`type`);

--
-- Indexes for table `device_cofig`
--
ALTER TABLE `device_cofig`
  ADD KEY `device_cofig_fk0` (`type_id`),
  ADD KEY `device_cofig_fk1` (`item_type`);

--
-- Indexes for table `device_types`
--
ALTER TABLE `device_types`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `Items_fk0` (`device_id`);

--
-- Indexes for table `item_configuration`
--
ALTER TABLE `item_configuration`
  ADD KEY `item_configuration_fk0` (`item_id`),
  ADD KEY `item_configuration_fk1` (`type_id`);

--
-- Indexes for table `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `Projects_fk0` (`uid`);

--
-- Indexes for table `project_configure`
--
ALTER TABLE `project_configure`
  ADD PRIMARY KEY (`combo_id`),
  ADD KEY `project_configure_fk0` (`project_id`),
  ADD KEY `project_configure_fk1` (`device_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idd`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD KEY `users_fk0` (`type`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_types`
--
ALTER TABLE `device_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_types`
--
ALTER TABLE `item_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_configure`
--
ALTER TABLE `project_configure`
  MODIFY `combo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `Devices_fk0` FOREIGN KEY (`type`) REFERENCES `device_types` (`type_id`);

--
-- Constraints for table `device_cofig`
--
ALTER TABLE `device_cofig`
  ADD CONSTRAINT `device_cofig_fk0` FOREIGN KEY (`type_id`) REFERENCES `device_types` (`type_id`),
  ADD CONSTRAINT `device_cofig_fk1` FOREIGN KEY (`item_type`) REFERENCES `item_types` (`type_id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `Items_fk0` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`);

--
-- Constraints for table `item_configuration`
--
ALTER TABLE `item_configuration`
  ADD CONSTRAINT `item_configuration_fk0` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `item_configuration_fk1` FOREIGN KEY (`type_id`) REFERENCES `item_types` (`type_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `Projects_fk0` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `project_configure`
--
ALTER TABLE `project_configure`
  ADD CONSTRAINT `project_configure_fk0` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `project_configure_fk1` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fk0` FOREIGN KEY (`type`) REFERENCES `user_types` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
