-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 06:11 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'psun', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b85857d00f34', '5b85857d0ab77'),
(5, '5b85857d333f0', '5b85857d391b2'),
(6, '5b85857d59559', '5b85857d69efd'),
(7, '5b85857d917d6', '5b85857d97980'),
(8, '5b85857db810f', '5b85857dbd701'),
(9, '5e9b5fbbdf3c9', '5e9b5fbc155a1'),
(10, '5e9b5fbc74fc3', '5e9b5fbc7f2fd'),
(11, '5e9b5fbcb3974', '5e9b5fbcbb12b'),
(12, '5e9b5fbcdfc91', '5e9b5fbce40e0'),
(13, '5e9b5fbd32576', '5e9b5fbd4152a'),
(14, '5e9b5fbd78c34', '5e9b5fbd810da'),
(15, '5e9b5fbdadf68', '5e9b5fbdba0a3'),
(16, '5e9b5fbe05930', '5e9b5fbe170f8'),
(17, '5e9b5fbe6f01c', '5e9b5fbe83178'),
(18, '5e9b5fbf24a42', '5e9b5fbf28b17'),
(19, '600d5058e163e', '600d5059d0774'),
(20, '600d505a1957e', '600d505a1d66c'),
(21, '600d505a4d49f', '600d505a55420'),
(22, '600d505a76724', '600d505a7ebb8'),
(23, '600d505a97841', '600d505a9b937');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5b86784504039', 'pravin', 'fyvgh@vgyvy.in', 'ytiu', 'yty', '2018-08-29', '03:41:09pm'),
('600d511a25002', 'Kamlesh', 'Kamlesh@gmail.com', 'Mathematics', 'Mathematics question were easy try to put bit difficult level question', '2021-01-24', '11:51:06am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(1, 'pravin', '5b85847bbe794', 3, 5, 2, 3, '2018-08-29 10:37:59', 1535538968, 'finished', 'true'),
(2, 'mugunth', '5b85847bbe794', 11, 5, 4, 1, '2018-08-29 10:39:42', 1535539122, 'finished', 'true'),
(3, 'psun6789@', '5b85847bbe794', 3, 3, 2, 3, '2020-04-18 20:16:55', 1587240920, 'finished', 'true'),
(4, 'psun6789@', '5e9b5ca49288c', 20, 10, 6, 4, '2020-04-18 20:18:02', 1587241032, 'finished', 'true'),
(5, 'psun1234', '5e9b5ca49288c', 5, 10, 3, 7, '2020-12-30 07:02:37', 1609311609, 'finished', 'true'),
(6, 'kamlesh', '5e9b5ca49288c', 2, 10, 2, 6, '2021-01-24 10:43:54', 1611484984, 'finished', 'true'),
(7, 'kamlesh', '600d4fbd147c1', 6, 5, 2, 2, '2021-01-24 10:49:44', 1611485331, 'finished', 'true'),
(8, 'kamlesh', '5b85847bbe794', 0, 0, 0, 0, '2021-01-25 16:34:53', 1611592371, 'finished', 'true'),
(9, 'sachinkites', '600d4fbd147c1', 12, 4, 3, 0, '2021-01-25 16:42:49', 1611592913, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b85857d00f34', ' Hello World!Hello World!', '5b85857d0ab77'),
(14, '5b85857d00f34', ' Hello World! * 2', '5b85857d0af5f'),
(15, '5b85857d00f34', 'Hello World!', '5b85857d0b347'),
(16, '5b85857d00f34', 'None of the above.', '5b85857d0b72f'),
(17, '5b85857d333f0', '( ''abcd'', 786 , 2.23, ''john'', 70.2 )', '5b85857d389e2'),
(18, '5b85857d333f0', 'abcd', '5b85857d38dca'),
(19, '5b85857d333f0', '(786, 2.23)', '5b85857d391b2'),
(20, '5b85857d333f0', 'None of the above.', '5b85857d3959a'),
(21, '5b85857d59559', 'int(x [,base])', '5b85857d69b15'),
(22, '5b85857d59559', 'long(x [,base] )', '5b85857d69efd'),
(23, '5b85857d59559', 'float(x)', '5b85857d6a2e5'),
(24, '5b85857d59559', 'str(x)', '5b85857d6a6cd'),
(25, '5b85857d917d6', 'unichr(x)', '5b85857d97980'),
(26, '5b85857d917d6', 'ord(x)', '5b85857d97d68'),
(27, '5b85857d917d6', 'hex(x)', '5b85857d98150'),
(28, '5b85857d917d6', 'oct(x)', '5b85857d98538'),
(29, '5b85857db810f', 'choice(seq)', '5b85857dbd701'),
(30, '5b85857db810f', 'randrange ([start,] stop [,step])', '5b85857dbdae9'),
(31, '5b85857db810f', 'random()', '5b85857dbded1'),
(32, '5b85857db810f', 'seed([x])', '5b85857dbe2b9'),
(33, '5e9b5fbbdf3c9', 'Katherine Parr', '5e9b5fbc1559a'),
(34, '5e9b5fbbdf3c9', 'Jane Seymour', '5e9b5fbc1559f'),
(35, '5e9b5fbbdf3c9', 'Catherine Howard', '5e9b5fbc155a1'),
(36, '5e9b5fbbdf3c9', 'Lady Jane Grey', '5e9b5fbc155a3'),
(37, '5e9b5fbc74fc3', 'James I', '5e9b5fbc7f2ef'),
(38, '5e9b5fbc74fc3', 'James II', '5e9b5fbc7f2f9'),
(39, '5e9b5fbc74fc3', 'Charles I', '5e9b5fbc7f2fd'),
(40, '5e9b5fbc74fc3', 'Charles II', '5e9b5fbc7f301'),
(41, '5e9b5fbcb3974', '1554', '5e9b5fbcbb106'),
(42, '5e9b5fbcb3974', '1564', '5e9b5fbcbb12b'),
(43, '5e9b5fbcb3974', '1574', '5e9b5fbcbb130'),
(44, '5e9b5fbcb3974', '1584', '5e9b5fbcbb134'),
(45, '5e9b5fbcdfc91', 'Wandsworth', '5e9b5fbce40b9'),
(46, '5e9b5fbcdfc91', 'Wycombe', '5e9b5fbce40c9'),
(47, '5e9b5fbcdfc91', 'Walberswick', '5e9b5fbce40d6'),
(48, '5e9b5fbcdfc91', 'Windsor', '5e9b5fbce40e0'),
(49, '5e9b5fbd32576', '10,000 years', '5e9b5fbd41517'),
(50, '5e9b5fbd32576', '7000 years', '5e9b5fbd41524'),
(51, '5e9b5fbd32576', '5000 years', '5e9b5fbd4152a'),
(52, '5e9b5fbd32576', '3000 years', '5e9b5fbd4152f'),
(53, '5e9b5fbd78c34', 'Harold I', '5e9b5fbd810d4'),
(54, '5e9b5fbd78c34', 'Harold II', '5e9b5fbd810da'),
(55, '5e9b5fbd78c34', 'Harold III', '5e9b5fbd810dc'),
(56, '5e9b5fbd78c34', 'Edward the Confessor', '5e9b5fbd810de'),
(57, '5e9b5fbdadf68', 'Stamford Bridge', '5e9b5fbdba0a3'),
(58, '5e9b5fbdadf68', 'Boleyn Ground', '5e9b5fbdba0ad'),
(59, '5e9b5fbdadf68', 'Bramall Lane', '5e9b5fbdba0b2'),
(60, '5e9b5fbdadf68', 'The Ricoh Arena', '5e9b5fbdba0b6'),
(61, '5e9b5fbe05930', '28', '5e9b5fbe170e8'),
(62, '5e9b5fbe05930', '29', '5e9b5fbe170f3'),
(63, '5e9b5fbe05930', '30', '5e9b5fbe170f8'),
(64, '5e9b5fbe05930', '31', '5e9b5fbe170fd'),
(65, '5e9b5fbe6f01c', '1719', '5e9b5fbe8316a'),
(66, '5e9b5fbe6f01c', '1739', '5e9b5fbe83172'),
(67, '5e9b5fbe6f01c', '1769', '5e9b5fbe83175'),
(68, '5e9b5fbe6f01c', '1789', '5e9b5fbe83178'),
(69, '5e9b5fbf24a42', 'Wolf', '5e9b5fbf28b08'),
(70, '5e9b5fbf24a42', 'Wastrel', '5e9b5fbf28b12'),
(71, '5e9b5fbf24a42', 'Wake', '5e9b5fbf28b17'),
(72, '5e9b5fbf24a42', 'Watchful', '5e9b5fbf28b1b'),
(73, '600d5058e163e', '3', '600d5059d0745'),
(74, '600d5058e163e', '2', '600d5059d0763'),
(75, '600d5058e163e', '5', '600d5059d0774'),
(76, '600d5058e163e', '1', '600d5059d0784'),
(77, '600d505a1957e', '13', '600d505a1d65c'),
(78, '600d505a1957e', '18', '600d505a1d66c'),
(79, '600d505a1957e', '19', '600d505a1d672'),
(80, '600d505a1957e', '20', '600d505a1d678'),
(81, '600d505a4d49f', '3', '600d505a55420'),
(82, '600d505a4d49f', '4', '600d505a55438'),
(83, '600d505a4d49f', '2', '600d505a55443'),
(84, '600d505a4d49f', '1', '600d505a5544e'),
(85, '600d505a76724', '6', '600d505a7eb9f'),
(86, '600d505a76724', '5', '600d505a7ebb1'),
(87, '600d505a76724', '9', '600d505a7ebb8'),
(88, '600d505a76724', '10', '600d505a7ebbf'),
(89, '600d505a97841', '14', '600d505a9b937'),
(90, '600d505a97841', '18', '600d505a9b957'),
(91, '600d505a97841', '12', '600d505a9b969'),
(92, '600d505a97841', '20', '600d505a9b97c');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(4, '5b85847bbe794', '5b85857d00f34', 'What is the output of print str * 2 if str = ''Hello World!''?', 4, 1),
(5, '5b85847bbe794', '5b85857d333f0', 'What is the output of print tuple[1:3] if tuple = ( ''abcd'', 786 , 2.23, ''john'', 70.2 )?', 4, 2),
(6, '5b85847bbe794', '5b85857d59559', 'Which of the following function convert a string to a long in python?', 4, 3),
(7, '5b85847bbe794', '5b85857d917d6', 'Which of the following function convert an integer to an unicode character in python?', 4, 4),
(8, '5b85847bbe794', '5b85857db810f', 'Which of the following function returns a random item from a list, tuple, or string?', 4, 5),
(9, '5e9b5ca49288c', '5e9b5fbbdf3c9', 'Two of Henry VIII''s six wives were executed. Anne Boleyn was one. Who was the second?', 4, 1),
(10, '5e9b5ca49288c', '5e9b5fbc74fc3', 'Who had his head chopped off in 1649?', 4, 2),
(11, '5e9b5ca49288c', '5e9b5fbcb3974', 'When was William Shakespeare born?', 4, 3),
(12, '5e9b5ca49288c', '5e9b5fbcdfc91', 'The Merry Wives of...', 4, 4),
(13, '5e9b5ca49288c', '5e9b5fbd32576', 'Approximately how long ago was Stonehenge built?', 4, 5),
(14, '5e9b5ca49288c', '5e9b5fbd78c34', 'Who was English king at the time of the battle of Hastings?', 4, 6),
(15, '5e9b5ca49288c', '5e9b5fbdadf68', 'It did not help the English army that it had just fought a battle before Hastings. That battle is now the name of a football ground. And no, Baverstock, I don''t know why. Is it â€¦', 4, 7),
(16, '5e9b5ca49288c', '5e9b5fbe05930', 'How many years did the 30 Years War last?', 4, 8),
(17, '5e9b5ca49288c', '5e9b5fbe6f01c', 'When did the French revolution begin?', 4, 9),
(18, '5e9b5ca49288c', '5e9b5fbf24a42', 'Hereward the ...', 4, 10),
(19, '600d4fbd147c1', '600d5058e163e', '2+3=?', 4, 1),
(20, '600d4fbd147c1', '600d505a1957e', '6*3=', 4, 2),
(21, '600d4fbd147c1', '600d505a4d49f', '6/2=?', 4, 3),
(22, '600d4fbd147c1', '600d505a76724', '3^2=?', 4, 4),
(23, '600d4fbd147c1', '600d505a97841', '[4+(5*2)]', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b85847bbe794', 'Python', 3, 1, 5, 2, '2018-08-29 10:40:38', 'enabled'),
(3, '5e9b5ca49288c', 'History', 4, 1, 10, 10, '2020-04-18 20:14:59', 'enabled'),
(4, '600d4fbd147c1', 'Mathematics', 4, 1, 5, 5, '2021-01-24 10:47:58', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(1, 'pravin', 3, '2018-08-29 10:37:59'),
(2, 'mugunth', 11, '2018-08-29 10:39:42'),
(3, 'psun6789@', 23, '2020-04-18 20:18:02'),
(4, 'psun1234', 5, '2020-12-30 07:02:37'),
(5, 'kamlesh', 8, '2021-01-25 16:34:53'),
(6, 'sachinkites', 12, '2021-01-25 16:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(7, '', '', '', '', '', 0, 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Kadhamburi', '732116104026', 'ECE', 'M', 'kadhu', 9887661361, 'b59c67bf196a4758191e42f76670ceba'),
(9, 'Kamlesh', '', 'CSE', 'M', 'kamlesh', 9342223238, 'fca5abd59b385e783b5c896c851372ab'),
(3, 'Kiran', '732116104022', 'CSE', 'M', 'kiran', 9876543212, 'b59c67bf196a4758191e42f76670ceba'),
(2, 'Mugunthan', '732116104036', 'CSE', 'M', 'mugunth', 9514444471, 'b59c67bf196a4758191e42f76670ceba'),
(5, 'Pravin', '732116104049', 'CSE', 'M', 'pravin', 8769891099, 'c86da2729ab8f79d8f582e9abc469eb0'),
(8, 'Peter', '0254656', 'CSE', 'M', 'psun1234', 9964236497, '8017d0408f41b75489701e3fb1c3e773'),
(6, 'Peter', '123', 'CSE', 'M', 'psun6789@', 9964236497, '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Sachin', '', 'ECE', 'M', 'sachinkites', 9916537523, 'f8ab119552e89c9b2dee9c1565dd274d');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth'),
(14, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'psun6789@'),
(15, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'psun6789@'),
(16, '5b85857db810f', '5b85857dbd701', '5b85857dbd701', '5b85847bbe794', 'psun6789@'),
(17, '5b85857d917d6', '5b85857d97d68', '5b85857d97980', '5b85847bbe794', 'psun6789@'),
(18, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'psun6789@'),
(19, '5e9b5fbbdf3c9', '5e9b5fbc1559a', '5e9b5fbc155a1', '5e9b5ca49288c', 'psun6789@'),
(20, '5e9b5fbc74fc3', '5e9b5fbc7f2f9', '5e9b5fbc7f2fd', '5e9b5ca49288c', 'psun6789@'),
(21, '5e9b5fbcb3974', '5e9b5fbcbb12b', '5e9b5fbcbb12b', '5e9b5ca49288c', 'psun6789@'),
(22, '5e9b5fbcdfc91', '5e9b5fbce40c9', '5e9b5fbce40e0', '5e9b5ca49288c', 'psun6789@'),
(23, '5e9b5fbd32576', '5e9b5fbd4152a', '5e9b5fbd4152a', '5e9b5ca49288c', 'psun6789@'),
(24, '5e9b5fbd78c34', '5e9b5fbd810da', '5e9b5fbd810da', '5e9b5ca49288c', 'psun6789@'),
(25, '5e9b5fbdadf68', '5e9b5fbdba0a3', '5e9b5fbdba0a3', '5e9b5ca49288c', 'psun6789@'),
(26, '5e9b5fbe05930', '5e9b5fbe170f8', '5e9b5fbe170f8', '5e9b5ca49288c', 'psun6789@'),
(27, '5e9b5fbe6f01c', '5e9b5fbe83175', '5e9b5fbe83178', '5e9b5ca49288c', 'psun6789@'),
(28, '5e9b5fbf24a42', '5e9b5fbf28b17', '5e9b5fbf28b17', '5e9b5ca49288c', 'psun6789@'),
(29, '5e9b5fbbdf3c9', '5e9b5fbc1559a', '5e9b5fbc155a1', '5e9b5ca49288c', 'psun1234'),
(30, '5e9b5fbc74fc3', '5e9b5fbc7f2f9', '5e9b5fbc7f2fd', '5e9b5ca49288c', 'psun1234'),
(31, '5e9b5fbcb3974', '5e9b5fbcbb12b', '5e9b5fbcbb12b', '5e9b5ca49288c', 'psun1234'),
(32, '5e9b5fbcdfc91', '5e9b5fbce40c9', '5e9b5fbce40e0', '5e9b5ca49288c', 'psun1234'),
(33, '5e9b5fbd32576', '5e9b5fbd41517', '5e9b5fbd4152a', '5e9b5ca49288c', 'psun1234'),
(34, '5e9b5fbd78c34', '5e9b5fbd810da', '5e9b5fbd810da', '5e9b5ca49288c', 'psun1234'),
(35, '5e9b5fbdadf68', '5e9b5fbdba0a3', '5e9b5fbdba0a3', '5e9b5ca49288c', 'psun1234'),
(36, '5e9b5fbe05930', '5e9b5fbe170e8', '5e9b5fbe170f8', '5e9b5ca49288c', 'psun1234'),
(37, '5e9b5fbe6f01c', '5e9b5fbe83172', '5e9b5fbe83178', '5e9b5ca49288c', 'psun1234'),
(38, '5e9b5fbf24a42', '5e9b5fbf28b12', '5e9b5fbf28b17', '5e9b5ca49288c', 'psun1234'),
(39, '5e9b5fbcb3974', '5e9b5fbcbb12b', '5e9b5fbcbb12b', '5e9b5ca49288c', 'kamlesh'),
(40, '5e9b5fbcdfc91', '5e9b5fbce40b9', '5e9b5fbce40e0', '5e9b5ca49288c', 'kamlesh'),
(41, '5e9b5fbd32576', '5e9b5fbd41524', '5e9b5fbd4152a', '5e9b5ca49288c', 'kamlesh'),
(42, '5e9b5fbd78c34', '5e9b5fbd810da', '5e9b5fbd810da', '5e9b5ca49288c', 'kamlesh'),
(43, '5e9b5fbdadf68', '5e9b5fbdba0ad', '5e9b5fbdba0a3', '5e9b5ca49288c', 'kamlesh'),
(44, '5e9b5fbe05930', '5e9b5fbe170f3', '5e9b5fbe170f8', '5e9b5ca49288c', 'kamlesh'),
(45, '5e9b5fbe6f01c', '5e9b5fbe8316a', '5e9b5fbe83178', '5e9b5ca49288c', 'kamlesh'),
(46, '5e9b5fbf24a42', '5e9b5fbf28b12', '5e9b5fbf28b17', '5e9b5ca49288c', 'kamlesh'),
(47, '600d5058e163e', '600d5059d0774', '600d5059d0774', '600d4fbd147c1', 'kamlesh'),
(48, '600d505a1957e', '600d505a1d672', '600d505a1d66c', '600d4fbd147c1', 'kamlesh'),
(49, '600d505a76724', '600d505a7ebb8', '600d505a7ebb8', '600d4fbd147c1', 'kamlesh'),
(50, '600d505a97841', '600d505a9b97c', '600d505a9b937', '600d4fbd147c1', 'kamlesh'),
(51, '600d5058e163e', '600d5059d0774', '600d5059d0774', '600d4fbd147c1', 'sachinkites'),
(52, '600d505a4d49f', '600d505a55420', '600d505a55420', '600d4fbd147c1', 'sachinkites'),
(53, '600d505a76724', '600d505a7ebb8', '600d505a7ebb8', '600d4fbd147c1', 'sachinkites');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
