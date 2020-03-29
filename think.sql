-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2020-03-29 17:26:51
-- 服务器版本： 5.7.26
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `think`
--
CREATE DATABASE IF NOT EXISTS `think` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `think`;

-- --------------------------------------------------------

--
-- 表的结构 `think_person`
--

DROP TABLE IF EXISTS `think_person`;
CREATE TABLE `think_person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `repassword` char(32) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_person`
--

INSERT INTO `think_person` (`id`, `name`, `password`, `repassword`, `create_time`, `update_time`) VALUES
(1, 'xxk', '123456', '0', '2020-03-29 21:48:18', '2020-03-29 21:48:18');

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `repassword` char(32) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `delete_time` datetime DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`id`, `name`, `password`, `repassword`, `create_time`, `update_time`, `delete_time`, `ip`, `email`) VALUES
(1, '巴菲特1', 'e10adc3949ba59abbe56e057f20f883e', 'c26be8aaf53b15054896983b43eb6a65', '2020-03-29 17:14:00', '2020-03-29 18:07:46', '2020-03-29 18:07:46', '127.0.0.1', 'bafeite@qq.com'),
(2, 'shaukon', 'e10adc3949ba59abbe56e057f20f883e', '14e1b600b1fd579f47433b88e8d85291', '2020-03-29 17:16:13', '2020-03-29 18:07:52', '2020-03-29 18:07:52', '127.0.0.1', 'shaukon@qq.com'),
(3, '扎特伯格', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '2020-03-29 17:32:58', '2020-03-29 17:32:58', NULL, '127.0.0.1', 'ztbg@qq.com'),
(4, '习近平', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '2020-03-29 17:33:32', '2020-03-29 17:33:32', NULL, '127.0.0.1', 'xijinping@qq.com'),
(5, '毛泽东', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '2020-03-29 17:33:58', '2020-03-29 17:33:58', NULL, '127.0.0.1', 'maozedong@qq.com'),
(6, 'xxk', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '2020-03-29 21:01:17', '2020-03-29 21:01:17', NULL, '127.0.0.1', 'xxk@qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `think_person`
--
ALTER TABLE `think_person`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `think_user`
--
ALTER TABLE `think_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `think_person`
--
ALTER TABLE `think_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `think_user`
--
ALTER TABLE `think_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
