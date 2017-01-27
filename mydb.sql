-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2017 at 09:25 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id_article` int(11) NOT NULL,
  `nom_article` varchar(255) DEFAULT NULL,
  `object` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_category_id` int(11) NOT NULL,
  `auteurs_id_auteurs` int(11) NOT NULL,
  `date_entred` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id_article`, `nom_article`, `object`, `photo`, `category_category_id`, `auteurs_id_auteurs`, `date_entred`) VALUES
(3, 'الحرب العالمية', 'الحرب العالمية الأولى هي حرب عالمية نشبت بين القوى الأوروبية في 28 يوليو 1914 وانتهت في 11 نوفمبر من عام 1918. كانت تسمى بالحرب العالمية والحرب العُظمى حتى تغيير التسمية بسبب وقوع الحرب العالمية الثانية.[5][6][7] بينما سُميت في الولايات المتحدة بالحرب الأوروبية.[8] تقدر خسائر الحرب العالمية الأولى بأكثر من 9 ملايين مقاتل لقي حتفه؛ وتفاقم معدل الإصابات بسبب التطور التقني والصناعي للمتحاربين، وتعد أحد أعنف صراعات التاريخ، وتسببت في التمهيد لتغييرات سياسية كبيرة تضمنت ثورات في العديد من الدول.[9]', 'wildwar.jpg', 6, 1, '2017-01-26 00:00:00'),
(4, 'كمال الأجسام', 'تمارين كمال الاجسام للمبتدئين برنامج رائع للاعبى كمال الاجسام للمبتدئين حتى يصلوا لمراحل متقدمة فى لعبة كمال الاجسام تمارين كمال اجسام الخاصة و الهامة بالنسبة للاعبى كمال الاجسام واترككم مع البرنامج تمارين كمال الاجسام للمبتدئين بالصور كامل', 'body.jpg', 2, 2, '2017-01-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id_auteurs` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auteurs`
--

INSERT INTO `auteurs` (`id_auteurs`, `nom`, `prenom`, `date_add`) VALUES
(1, 'عبد الرزاق', 'بنبوية', '2017-01-17 00:00:00'),
(2, 'زهير', 'لروش', '2017-01-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'المضبخ'),
(2, 'الدراسة'),
(3, 'اللياقة'),
(4, 'المنزل'),
(5, 'الجمال'),
(6, 'التعليم');

-- --------------------------------------------------------

--
-- Table structure for table `paragraphes`
--

CREATE TABLE IF NOT EXISTS `paragraphes` (
  `id_para` int(11) NOT NULL,
  `nom_para` varchar(255) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `content_para` mediumtext,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paragraphes`
--

INSERT INTO `paragraphes` (`id_para`, `nom_para`, `photo_path`, `content_para`, `article_id`) VALUES
(1, 'الجري المتوازن', 'run', 'SQL is a standard language for accessing databases.\r\n\r\nOur SQL tutorial will teach you how to use SQL to access and manipulate data in: MySQL, SQL Server, Access, Oracle, Sybase, DB2, and other database systems.', 3),
(2, 'ممارسة السباحة', 'swim', 'SQL is a standard language for accessing databases.\r\n\r\nOur SQL tutorial will teach you how to use SQL to access and manipulate data in: MySQL, SQL Server, Access, Oracle, Sybase, DB2, and other database systems.\r\nSQL is a standard language for accessing databases.\r\n\r\nOur SQL tutorial will teach you how to use SQL to access and manipulate data in: MySQL, SQL Server, Access, Oracle, Sybase, DB2, and other database systems.', 3),
(3, 'ويكيبيديا', 'wiki', 'في ويكيبيديا العربية 459,797 صفحة حتى الآن، لذا فاحتمال وجود مقالةٍ حول الموضوع الذي تريد الكتابة عنه كبير، استخدم صفحة البحث لمعرفة ما إذا كانت المقالة موجودةً ...\r\n', 3),
(4, 'واو', 'nice', 'عذر علينا الخصم من ‏الحساب الإعلاني‏ الخاص بك باستخدام ‏‏‎MasterCard‎‏ * ‏4077‏‏ لأن ‏ربما تكون وصلت للحد الأقصى للبطاقة‏. يرجى إضافة طريقة دفع جديدة أو ‏دفع رصيد بطاقتك‏ وتجربة دفع الرسوم مرة أخرى.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`,`category_category_id`,`auteurs_id_auteurs`),
  ADD KEY `fk_articles_category_idx` (`category_category_id`),
  ADD KEY `fk_articles_auteurs1_idx` (`auteurs_id_auteurs`);

--
-- Indexes for table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id_auteurs`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `paragraphes`
--
ALTER TABLE `paragraphes`
  ADD PRIMARY KEY (`id_para`),
  ADD KEY `fk_paragraphes_articles1_idx` (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id_auteurs` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `paragraphes`
--
ALTER TABLE `paragraphes`
  MODIFY `id_para` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_auteurs1` FOREIGN KEY (`auteurs_id_auteurs`) REFERENCES `auteurs` (`id_auteurs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articles_category` FOREIGN KEY (`category_category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `paragraphes`
--
ALTER TABLE `paragraphes`
  ADD CONSTRAINT `fk_paragraphes_articles1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id_article`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
