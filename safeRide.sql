-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： lab.ylws.me
-- 生成日期： 2019-08-16 21:14:43
-- 服务器版本： 5.7.27
-- PHP 版本： 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `safeRide`
--

-- --------------------------------------------------------

--
-- 表的结构 `drivers`
--

CREATE TABLE `drivers` (
  `ID` int(11) NOT NULL,
  `driversRCSID` text,
  `driversPhone` text,
  `tasks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `pickupQueue`
--

CREATE TABLE `pickupQueue` (
  `ID` int(11) NOT NULL,
  `clientName` text,
  `pickup Location` text,
  `destination` text,
  `email` text,
  `phone` text,
  `pickupTime` datetime DEFAULT NULL,
  `assignedDrivers` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转储表的索引
--

--
-- 表的索引 `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `pickupQueue`
--
ALTER TABLE `pickupQueue`
  ADD PRIMARY KEY (`ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `drivers`
--
ALTER TABLE `drivers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pickupQueue`
--
ALTER TABLE `pickupQueue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
