-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 01:56 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `chatname` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `login`, `text`, `chatname`) VALUES
(354, 'Чат', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'linux'),
(355, 'Чат', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'mopesoft'),
(356, 'Чат', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'php'),
(357, 'Чат', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'программирование'),
(358, 'Чат', '&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'русский'),
(359, 'Чат', 'b-&gt; &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'искусство'),
(360, 'Чат', 'i-&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'gentoo'),
(361, 'Чат', 'tt-&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'english'),
(362, 'Чат', 'color-&gt;maroon &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'игры'),
(363, 'Чат', 'color-&gt;red &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'наука'),
(364, 'Чат', 'color-&gt;green &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'разное'),
(365, 'Чат', 'color-&gt;blue &quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;', 'программы'),
(368, 'asc', 'qwdqwd', 'анекдоты'),
(377, 'sds', 'sdsd', 'анекдоты'),
(378, 'sds', 'qwwqdqwd', 'анекдоты'),
(379, 'qwd', 'qwdwdqwd', 'анекдоты'),
(380, 'qwd', 'qwdqd', 'анекдоты'),
(381, 'qwd', 'qdqwd', 'анекдоты'),
(382, 'ssa', '123', 'анекдоты'),
(405, 'qdq', 'ascsac', 'chat'),
(406, 'qdq', 'asdasd', 'chat'),
(407, 'qdq', 'asdsad', 'chat'),
(408, 'qdq', 'asdasd', 'chat'),
(409, 'qdq', 'asdasd', 'chat'),
(410, 'qdq', 'dsdsdlakjds', 'chat');

-- --------------------------------------------------------

--
-- Table structure for table `chat2`
--

CREATE TABLE `chat2` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat2`
--

INSERT INTO `chat2` (`id`, `login`, `text`) VALUES
(34, 'acsac', 'meta'),
(35, 'acsac', 'meta'),
(36, 'iv ', '<meta'),
(37, 'iv ', '<meta'),
(38, 'iv ', 'asas'),
(39, 'iv ', '>'),
(40, 'iv ', 'sas'),
(41, 'iv', '123'),
(42, 'iv', '123');

-- --------------------------------------------------------

--
-- Table structure for table `english`
--

CREATE TABLE `english` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `english`
--

INSERT INTO `english` (`id`, `login`, `text`) VALUES
(1, 'd', '\''),
(2, 'Чат', 'Запрещенный символ!'),
(3, 'd', '<?=dsd?>'),
(4, 'Чат', 'Запрещенный символ!'),
(5, 'd', ' '),
(6, 'd', '              '),
(7, 'd', '>>>>>>>>>>>>>>>.'),
(8, 'd', '>>>>>>>>>>>>.'),
(9, 'd', '>'),
(10, 'd', '>>>>>>>>>>>>>>>>>');

-- --------------------------------------------------------

--
-- Table structure for table `gentoo`
--

CREATE TABLE `gentoo` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gentoo`
--

INSERT INTO `gentoo` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Поговорим о Gentoo'),
(2, 'isdsd', 'color-&gt;red sdsdsd'),
(3, 'isdsd', 'color-&gt;blue asdsad');

-- --------------------------------------------------------

--
-- Table structure for table `latin`
--

CREATE TABLE `latin` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `linux`
--

CREATE TABLE `linux` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linux`
--

INSERT INTO `linux` (`id`, `login`, `text`) VALUES
(48, 'saasc', 'font color-&gt;red dsdsd'),
(49, 'sd', 'font color-&gt;red dsdsd'),
(50, 'sd', 'font color-&gt;red  dsdsd'),
(51, 'йвйцв', 'font color-&gt;red dsdsd'),
(52, 'йвйцв', 'color-&gt;red dsdsd'),
(53, 'йвйцв', 'color-&gt;red dsdsdцйвцв'),
(54, 'йвйцв', '='),
(55, 'hello', 'color-&gt;gi ssdd'),
(56, 'hello', 'color-&gt;red dsd'),
(57, 'hello', 'color-&gt;333 sdsdsd'),
(58, 'hello', 'color-&gt;999 dsdsd'),
(59, 'hello', 'color-&gt;maroon Привет'),
(60, 'р', 'color-&gt;red Проверка'),
(61, 'Iv', 'color-&gt;red hello'),
(62, 'Iv', 'b-&gt;провер');

-- --------------------------------------------------------

--
-- Table structure for table `lor`
--

CREATE TABLE `lor` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mopesoft`
--

CREATE TABLE `mopesoft` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mopesoft`
--

INSERT INTO `mopesoft` (`id`, `login`, `text`) VALUES
(1, 'qdqwd', '-&gt;red adasdasd'),
(2, 'qdqwd', 'sdasd'),
(3, 'sdaasd', '-&gt;red sdsd'),
(4, 'sdaasd', 'sdsd'),
(5, 'sdaasd', '-&gt; red sdsd'),
(6, 'sdaasd', '-&gt;red dsdsd'),
(7, 'sdaasd', '-&gt;black sdsdsd'),
(8, 'sdaasd', '-&gt;green sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `php`
--

CREATE TABLE `php` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unix`
--

CREATE TABLE `unix` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unix`
--

INSERT INTO `unix` (`id`, `login`, `text`) VALUES
(1, 'qwewe', 'color-&gt;red ssadsdsdsss'),
(2, 'qdqwd', '-&gt; sdsdsd'),
(3, 'qdqwd', '-&gt;sdsd'),
(4, 'qdqwd', '-&gt; sdsddsdd'),
(5, 'qwdqw', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `анекдоты`
--

CREATE TABLE `анекдоты` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `анекдоты`
--

INSERT INTO `анекдоты` (`id`, `login`, `text`) VALUES
(1, 'qdqwd', '-&gt;red adasdasd'),
(2, 'qdqwd', 'sdasd'),
(3, 'sdaasd', '-&gt;red sdsd'),
(4, 'sdaasd', 'sdsd'),
(5, 'sdaasd', '-&gt; red sdsd'),
(6, 'sdaasd', '-&gt;red dsdsd'),
(7, 'sdaasd', '-&gt;black sdsdsd'),
(8, 'sdaasd', '-&gt;green sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `дизайн`
--

CREATE TABLE `дизайн` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `дизайн`
--

INSERT INTO `дизайн` (`id`, `login`, `text`) VALUES
(1, 'a', 'meta');

-- --------------------------------------------------------

--
-- Table structure for table `игры`
--

CREATE TABLE `игры` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `игры`
--

INSERT INTO `игры` (`id`, `login`, `text`) VALUES
(1, 'qwdqw', 'Обсуждение игры'),
(2, 'qwdqw', 'В основном браузерных'),
(3, 'ваыа', 'авыавыа'),
(4, 'ваыа', 'ваывавы'),
(5, 'Ктотут', 'Кто тут'),
(6, 'Ктотут', '?'),
(7, 'Ктотут', 'Хто здеся?');

-- --------------------------------------------------------

--
-- Table structure for table `искусство`
--

CREATE TABLE `искусство` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `искусство`
--

INSERT INTO `искусство` (`id`, `login`, `text`) VALUES
(1, 'csac', 'meta'),
(2, 'csac', 'meta'),
(3, 'Чат', 'Запрещенный символ!'),
(4, 'Чат', 'Запрещенный символ!'),
(5, 'Чат', 'Запрещенный символ!'),
(6, 'Чат', 'Запрещенный символ!'),
(7, 'Чат', 'Запрещенный символ!'),
(8, 'Чат', 'Запрещенный символ!'),
(9, 'Чат', 'Запрещенный символ!');

-- --------------------------------------------------------

--
-- Table structure for table `книги`
--

CREATE TABLE `книги` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `курсы`
--

CREATE TABLE `курсы` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `наука`
--

CREATE TABLE `наука` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `наука`
--

INSERT INTO `наука` (`id`, `login`, `text`) VALUES
(1, 'uf', 'meta');

-- --------------------------------------------------------

--
-- Table structure for table `программирование`
--

CREATE TABLE `программирование` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `программирование`
--

INSERT INTO `программирование` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Поговорим о  JavaScript'),
(2, 'hh', 'jlkjsa'),
(3, 'hh', 'meta'),
(4, 'testload', 'testload'),
(5, 'wwwd', '&lt;?php require_once __DIR__ . \'../../conf/class_config.php\'; require_once \'./view/class_list_of_channels.php\';  //Проверим, что данные о канале пришли  if(!isset($_GET[\'canal\']) || empty($_GET[\'canal\'])) { $_GET[\'canal\'] = \'chat\'; }  //Проверим данные в переменной канал if(preg_match(\'/[^a-zа-яё0-9]{1,30}/ui\',$_GET[\'canal\'])) $_GET[\'canal\'] = \'chat\';  /*Текст и имя из формы*/ if (!empty($_GET[\'text\']) &amp;&amp; !empty($_GET[\'userlogin\']))   {     $gettext   = $_GET[\'text\'];     $userlogin = $');

-- --------------------------------------------------------

--
-- Table structure for table `русский`
--

CREATE TABLE `русский` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `русский`
--

INSERT INTO `русский` (`id`, `login`, `text`) VALUES
(1, 'asdsd', 'color-&gt;red dsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `статьи`
--

CREATE TABLE `статьи` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `статьи`
--

INSERT INTO `статьи` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Запрещенный символ!'),
(2, 'Чат', 'Запрещенный символ!'),
(3, 'Чат', 'Запрещенный символ!');

-- --------------------------------------------------------

--
-- Table structure for table `фильмы`
--

CREATE TABLE `фильмы` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `фильмы`
--

INSERT INTO `фильмы` (`id`, `login`, `text`) VALUES
(24, 'Чат', 'Запрещенный символ!'),
(25, 'Чат', 'Запрещенный символ!'),
(26, 'meta', 'as'),
(27, 'meta', '<'),
(28, 'meta', '<me'),
(29, 'Чат', 'Запрещенный символ!'),
(30, 'Чат', 'Запрещенный символ!'),
(31, 'Чат', 'Запрещенный символ!'),
(32, 'meta', '&lt;font&gt;'),
(33, 'meta', '&lt;b&gt;sss&lt;/b&gt;'),
(34, 'meta', '&lt;meta'),
(35, 'Чат', 'Запрещенный символ!'),
(36, 'meta', 'http://www.original.combat.org.ru/chat/'),
(37, 'meta', 'https://i.stack.imgur.com/hf1bi.jpg?s=32&amp;g=1'),
(38, 'fef', 'у3у3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat2`
--
ALTER TABLE `chat2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gentoo`
--
ALTER TABLE `gentoo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latin`
--
ALTER TABLE `latin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linux`
--
ALTER TABLE `linux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lor`
--
ALTER TABLE `lor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mopesoft`
--
ALTER TABLE `mopesoft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unix`
--
ALTER TABLE `unix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `анекдоты`
--
ALTER TABLE `анекдоты`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `дизайн`
--
ALTER TABLE `дизайн`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `игры`
--
ALTER TABLE `игры`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `искусство`
--
ALTER TABLE `искусство`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `книги`
--
ALTER TABLE `книги`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `курсы`
--
ALTER TABLE `курсы`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `наука`
--
ALTER TABLE `наука`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `программирование`
--
ALTER TABLE `программирование`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `русский`
--
ALTER TABLE `русский`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `статьи`
--
ALTER TABLE `статьи`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `фильмы`
--
ALTER TABLE `фильмы`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `chat2`
--
ALTER TABLE `chat2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `english`
--
ALTER TABLE `english`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gentoo`
--
ALTER TABLE `gentoo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `latin`
--
ALTER TABLE `latin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linux`
--
ALTER TABLE `linux`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `lor`
--
ALTER TABLE `lor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mopesoft`
--
ALTER TABLE `mopesoft`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `php`
--
ALTER TABLE `php`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unix`
--
ALTER TABLE `unix`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `анекдоты`
--
ALTER TABLE `анекдоты`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `дизайн`
--
ALTER TABLE `дизайн`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `игры`
--
ALTER TABLE `игры`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `искусство`
--
ALTER TABLE `искусство`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `книги`
--
ALTER TABLE `книги`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `курсы`
--
ALTER TABLE `курсы`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `наука`
--
ALTER TABLE `наука`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `программирование`
--
ALTER TABLE `программирование`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `русский`
--
ALTER TABLE `русский`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `статьи`
--
ALTER TABLE `статьи`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `фильмы`
--
ALTER TABLE `фильмы`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
