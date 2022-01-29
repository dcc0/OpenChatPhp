-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 12 2019 г., 23:18
-- Версия сервера: 5.7.23-24
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u0643076_sneg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `chatname` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chat`
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
(410, 'qdq', 'dsdsdlakjds', 'chat'),
(411, 'qdq', 'asdsadasdlk', 'chat'),
(412, 'qdq', 'asdlsa;dklskd;slkdkkdkd;alskd;aslkdasdkk', 'chat'),
(413, 'qdq', 'asd;alsdk;aslkd', 'chat'),
(414, 'qdq', 'asdka;lsdkas;lkdsa', 'chat'),
(415, 'qdq', 'rrrrrrrrrrrrrrrrrrrr', 'chat'),
(416, 'ывыв', 'ццвц', 'chat'),
(417, 'ывыв', 'ычыч', 'chat'),
(418, 'ывыв', 'ычыч', 'chat'),
(419, 'ывыв', 'ыфыфы', 'chat'),
(420, 'ывыв', '2132123', 'chat'),
(421, 'ывыв', 'ццццццццццццц', 'chat'),
(422, 'iv', '123', 'chat'),
(423, 'iv', '123', 'chat'),
(424, 'ывыв', 'qwqd', 'chat'),
(425, 'qwd', 'qwd', 'linux'),
(426, 'qwd', 'wqdqwd', 'linux'),
(427, 'qwd', 'qwdqwd', 'программирование'),
(428, 'qwd', '23432', 'программирование');

-- --------------------------------------------------------

--
-- Структура таблицы `chat2`
--

CREATE TABLE `chat2` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chat2`
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
-- Структура таблицы `english`
--

CREATE TABLE `english` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `english`
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
-- Структура таблицы `gentoo`
--

CREATE TABLE `gentoo` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `gentoo`
--

INSERT INTO `gentoo` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Поговорим о Gentoo'),
(2, 'isdsd', 'color-&gt;red sdsdsd'),
(3, 'isdsd', 'color-&gt;blue asdsad');

-- --------------------------------------------------------

--
-- Структура таблицы `latin`
--

CREATE TABLE `latin` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `linux`
--

CREATE TABLE `linux` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `linux`
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
-- Структура таблицы `lor`
--

CREATE TABLE `lor` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `mopesoft`
--

CREATE TABLE `mopesoft` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `mopesoft`
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
-- Структура таблицы `php`
--

CREATE TABLE `php` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `unix`
--

CREATE TABLE `unix` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `unix`
--

INSERT INTO `unix` (`id`, `login`, `text`) VALUES
(1, 'qwewe', 'color-&gt;red ssadsdsdsss'),
(2, 'qdqwd', '-&gt; sdsdsd'),
(3, 'qdqwd', '-&gt;sdsd'),
(4, 'qdqwd', '-&gt; sdsddsdd'),
(5, 'qwdqw', 'q');

-- --------------------------------------------------------

--
-- Структура таблицы `анекдоты`
--

CREATE TABLE `анекдоты` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `анекдоты`
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
-- Структура таблицы `дизайн`
--

CREATE TABLE `дизайн` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `дизайн`
--

INSERT INTO `дизайн` (`id`, `login`, `text`) VALUES
(1, 'a', 'meta');

-- --------------------------------------------------------

--
-- Структура таблицы `игры`
--

CREATE TABLE `игры` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `игры`
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
-- Структура таблицы `искусство`
--

CREATE TABLE `искусство` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `искусство`
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
-- Структура таблицы `книги`
--

CREATE TABLE `книги` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `курсы`
--

CREATE TABLE `курсы` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `наука`
--

CREATE TABLE `наука` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `наука`
--

INSERT INTO `наука` (`id`, `login`, `text`) VALUES
(1, 'uf', 'meta');

-- --------------------------------------------------------

--
-- Структура таблицы `программирование`
--

CREATE TABLE `программирование` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `программирование`
--

INSERT INTO `программирование` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Поговорим о  JavaScript'),
(2, 'hh', 'jlkjsa'),
(3, 'hh', 'meta'),
(4, 'testload', 'testload'),
(5, 'wwwd', '&lt;?php require_once __DIR__ . \'../../conf/class_config.php\'; require_once \'./view/class_list_of_channels.php\';  //Проверим, что данные о канале пришли  if(!isset($_GET[\'canal\']) || empty($_GET[\'canal\'])) { $_GET[\'canal\'] = \'chat\'; }  //Проверим данные в переменной канал if(preg_match(\'/[^a-zа-яё0-9]{1,30}/ui\',$_GET[\'canal\'])) $_GET[\'canal\'] = \'chat\';  /*Текст и имя из формы*/ if (!empty($_GET[\'text\']) &amp;&amp; !empty($_GET[\'userlogin\']))   {     $gettext   = $_GET[\'text\'];     $userlogin = $');

-- --------------------------------------------------------

--
-- Структура таблицы `русский`
--

CREATE TABLE `русский` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `русский`
--

INSERT INTO `русский` (`id`, `login`, `text`) VALUES
(1, 'asdsd', 'color-&gt;red dsdsd');

-- --------------------------------------------------------

--
-- Структура таблицы `статьи`
--

CREATE TABLE `статьи` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `статьи`
--

INSERT INTO `статьи` (`id`, `login`, `text`) VALUES
(1, 'Чат', 'Запрещенный символ!'),
(2, 'Чат', 'Запрещенный символ!'),
(3, 'Чат', 'Запрещенный символ!');

-- --------------------------------------------------------

--
-- Структура таблицы `фильмы`
--

CREATE TABLE `фильмы` (
  `id` int(255) NOT NULL,
  `login` text CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `фильмы`
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
(36, 'meta', 'https://www.original.combat.org.ru/chat/'),
(37, 'meta', 'https://i.stack.imgur.com/hf1bi.jpg?s=32&amp;g=1'),
(38, 'fef', 'у3у3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chat2`
--
ALTER TABLE `chat2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gentoo`
--
ALTER TABLE `gentoo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `latin`
--
ALTER TABLE `latin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `linux`
--
ALTER TABLE `linux`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lor`
--
ALTER TABLE `lor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mopesoft`
--
ALTER TABLE `mopesoft`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `unix`
--
ALTER TABLE `unix`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `анекдоты`
--
ALTER TABLE `анекдоты`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `дизайн`
--
ALTER TABLE `дизайн`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `игры`
--
ALTER TABLE `игры`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `искусство`
--
ALTER TABLE `искусство`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `книги`
--
ALTER TABLE `книги`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `курсы`
--
ALTER TABLE `курсы`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `наука`
--
ALTER TABLE `наука`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `программирование`
--
ALTER TABLE `программирование`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `русский`
--
ALTER TABLE `русский`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `статьи`
--
ALTER TABLE `статьи`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `фильмы`
--
ALTER TABLE `фильмы`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT для таблицы `chat2`
--
ALTER TABLE `chat2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `english`
--
ALTER TABLE `english`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `gentoo`
--
ALTER TABLE `gentoo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `latin`
--
ALTER TABLE `latin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `linux`
--
ALTER TABLE `linux`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `lor`
--
ALTER TABLE `lor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mopesoft`
--
ALTER TABLE `mopesoft`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `php`
--
ALTER TABLE `php`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `unix`
--
ALTER TABLE `unix`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `анекдоты`
--
ALTER TABLE `анекдоты`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `дизайн`
--
ALTER TABLE `дизайн`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `игры`
--
ALTER TABLE `игры`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `искусство`
--
ALTER TABLE `искусство`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `книги`
--
ALTER TABLE `книги`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `курсы`
--
ALTER TABLE `курсы`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `наука`
--
ALTER TABLE `наука`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `программирование`
--
ALTER TABLE `программирование`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `русский`
--
ALTER TABLE `русский`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `статьи`
--
ALTER TABLE `статьи`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `фильмы`
--
ALTER TABLE `фильмы`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
