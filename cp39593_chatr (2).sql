-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2020 at 08:32 AM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp39593_chatr`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `message` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `username`, `message`, `ip`, `date`) VALUES
(14, 'Ø­ÛŒØ¯Ø±ÛŒ', 'Ø³Ù„Ø§Ù…', '5.122.57.242', '2020-04-23 22:50:09'),
(15, 'Ø­ÛŒØ¯Ø±ÛŒ', 'Ú†Ø´Ù… ÙØ±Ø¯Ø§ Ø±Ùˆ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ú©Ø§Ø± Ù…ÛŒÚ©Ù†Ù… Ú©Ù‡ Ø´Ù†Ø¨Ù‡ Ø¬Ø¯ÛŒØ¯ Ø¨ÙØ±Ø³ØªÛŒÙ… Ú©Ù‡ Ø¨Ø¯ÙˆÙ† Ù…Ø´Ú©Ù„ Ø¨Ø§Ø´Ù‡', '5.122.57.242', '2020-04-23 22:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `hash` varchar(32) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`hash`, `ip`, `last_update`) VALUES
('d5e7f4ca2178b233081db1ac3ffe88d0', '151.246.238.21', '2020-04-24 11:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ar`
--

CREATE TABLE `tbl_ar` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ar`
--

INSERT INTO `tbl_ar` (`id`, `url`, `value`) VALUES
(3, 'https://persianv.com/tanz/wp-content/uploads/sites/33/2016/02/%D8%A7%D8%B3-%D8%A7%D9%85-%D8%A7%D8%B3-%D8%AA%D8%A8%D8%B1%DB%8C%DA%A9-%D8%B9%DB%8C%D8%AF-%D9%86%D9%88%D8%B1%D9%88%D8%B2-99-15.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/fd04de2fb129f4d27bf8beac68e0b60120314315-240p__18453.mp4'),
(4, 'https://mahanmusic.net/wp-content/uploads/2020/02/Golchin-Best-Eid-Nowruz-Songs-1399-460x423.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/fbaf226b1c7ce20066f7802db08d685a20312698-240p__86097.mp4'),
(5, 'https://imgix.bustle.com/mic/eelbogf5seevwdxnrgrichzmcj2o4m8stl8g6sffa5qscg4lqbdx9uhtfox7lbpf.jpg', 'https://aspb3.cdn.asset.aparat.com/aparat-video/20a10686b8bdda9cc60ec2ed30332c9d14192570-240p__87170.mp4'),
(6, 'https://www.3rockar.com/wp-content/uploads/2019/08/Ferrari-Augmented-Reality-App.jpg', 'https://hw13.cdn.asset.aparat.com/aparat-video/a370558e54d6900d91bc4d2cec1624e518287528-240p__86630.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audiobook`
--

CREATE TABLE `tbl_audiobook` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audiobook`
--

INSERT INTO `tbl_audiobook` (`id`, `title`, `id_category`, `img`, `url`) VALUES
(1, 'دیوان اشعار پروین اعتصامی', 1, 'http://book.iranseda.ir/Picture/?attid=214396&s=c', 'http://player.iranseda.ir/book-player/?g=265123&w=43&VALID=TRUE'),
(2, 'قاضی و بهلول / علم و تجربه ', 2, 'http://book.iranseda.ir/Picture?attid=211074&s=c', 'http://player.iranseda.ir/book-player/?g=248288&w=43&VALID=TRUE'),
(3, 'درنگ جلد یک', 1, 'http://book.iranseda.ir/picture/?attid=222690&s=c', 'http://player.iranseda.ir/book-player/?g=283200&w=43&VALID=TRUE'),
(4, 'درنگ جلد دوم', 1, 'http://book.iranseda.ir/picture/?attid=222690&s=c', 'http://player.iranseda.ir/book-player/?g=283304&w=43&VALID=TRUE'),
(5, 'درنگ جلد سوم', 1, 'http://book.iranseda.ir/picture/?attid=222690&s=c', 'http://player.iranseda.ir/book-player/?g=283353&w=43&VALID=TRUE'),
(6, 'چاپلبین - داستان کودکی من', 1, 'http://book.iranseda.ir/picture/?attid=227300&s=c', 'http://player.iranseda.ir/book-player/?g=286280&w=43&VALID=TRUE'),
(7, 'ریش آبی', 1, 'http://book.iranseda.ir/picture/?attid=224262&s=c', 'http://player.iranseda.ir/book-player/?g=287314&w=43&VALID=TRUE'),
(8, 'پهلوانان', 1, 'http://book.iranseda.ir/picture/?attid=221586&s=c', 'http://player.iranseda.ir/book-player/?g=282603&w=43&VALID=TRUE'),
(9, 'مزایای منزوی بودن', 1, 'http://player.iranseda.ir/picture/?attid=227692&s=c', 'http://player.iranseda.ir/book-player/?g=290074&w=43&VALID=TRUE'),
(10, 'مردی که می خندد', 1, 'http://book.iranseda.ir/picture/?attid=229848&s=c', 'http://player.iranseda.ir/book-player/?g=291654&w=43&VALID=TRUE'),
(11, 'افسانه‌های ایرانی', 1, 'http://book.iranseda.ir/picture/?attid=234930&s=c', 'http://player.iranseda.ir/book-player/?g=299102&w=43&VALID=TRUE'),
(12, 'مردان مخوف', 1, 'http://book.iranseda.ir/picture/?attid=230639&s=c', 'http://player.iranseda.ir/book-player/?g=291043&w=43&VALID=TRUE'),
(13, 'حماقت مرده', 1, 'http://book.iranseda.ir/picture/?attid=239156&s=c', 'http://player.iranseda.ir/book-player/?g=303562&w=43&VALID=TRUE'),
(14, 'مردان دیهِ سامان', 1, 'http://book.iranseda.ir/picture/?attid=225632&s=c', 'http://player.iranseda.ir/book-player/?g=289007&w=43&VALID=TRUE'),
(15, 'ایلومیاتی، سیزده خاندان تاج دار، سیزده خط خونین', 1, 'http://book.iranseda.ir/picture/?attid=227945&s=c', 'http://player.iranseda.ir/book-player/?g=292650&w=43&VALID=TRUE'),
(16, 'ساده خط خطی', 1, 'http://book.iranseda.ir/picture/?attid=232024&s=c', 'http://player.iranseda.ir/book-player/?g=293848&w=43&VALID=TRUE'),
(17, 'موش ها و آدم‌ها', 1, 'http://book.iranseda.ir/picture/?attid=231303&s=c', 'http://player.iranseda.ir/book-player/?g=296556&w=43&VALID=TRUE'),
(18, 'چراگاه‌های آسمان', 1, 'http://book.iranseda.ir/picture/?attid=235057&s=c', 'http://player.iranseda.ir/book-player/?g=301222&w=43&VALID=TRUE'),
(19, 'قاطینای پهلوان', 1, 'http://book.iranseda.ir/picture/?attid=233550&s=c', 'http://player.iranseda.ir/book-player/?g=298588&w=43&VALID=TRUE'),
(20, 'ساده خط خطی', 1, 'http://book.iranseda.ir/picture/?attid=232026&s=c', 'http://player.iranseda.ir/book-player/?g=294487&w=43&VALID=TRUE'),
(21, 'وارث', 1, 'http://book.iranseda.ir/picture/?attid=232682&s=c', 'http://player.iranseda.ir/book-player/?g=260844&w=43&VALID=TRUE'),
(22, ' دو گام تا رهایی', 1, 'http://book.iranseda.ir/picture/?attid=237247&s=c', 'http://player.iranseda.ir/book-player/?g=298715&w=43&VALID=TRUE'),
(23, 'فایل سیزده', 1, 'http://book.iranseda.ir/picture/?attid=237291&s=c', 'http://player.iranseda.ir/book-player/?g=298714&w=43&VALID=TRUE'),
(24, 'شعبده باز', 1, 'http://book.iranseda.ir/picture/?attid=238952&s=c', 'http://player.iranseda.ir/book-player/?g=66678&w=43&VALID=TRUE'),
(25, 'ایلومیاتی، سیزده خاندان تاج دار، سیزده خط خونین', 1, 'http://book.iranseda.ir/picture/?attid=227945&s=c', 'http://player.iranseda.ir/book-player/?g=292650&w=43&VALID=TRUE'),
(26, 'موش ها و آدم‌ها', 1, 'http://book.iranseda.ir/picture/?attid=231303&s=c', 'http://player.iranseda.ir/book-player/?g=296556&w=43&VALID=TRUE'),
(27, 'چراگاه‌های آسمان', 1, 'http://book.iranseda.ir/picture/?attid=235057&s=c', 'http://player.iranseda.ir/book-player/?g=301222&w=43&VALID=TRUE'),
(28, 'چراگاه‌های آسمان', 1, 'http://book.iranseda.ir/picture/?attid=235057&s=c', 'http://player.iranseda.ir/book-player/?g=301222&w=43&VALID=TRUE'),
(29, 'قاطینای پهلوان', 1, 'http://book.iranseda.ir/picture/?attid=233550&s=c', 'http://player.iranseda.ir/book-player/?g=298588&w=43&VALID=TRUE'),
(30, 'به صحرا شدم', 1, 'http://book.iranseda.ir/picture/?attid=239021&s=c', 'http://player.iranseda.ir/book-player/?g=304500&w=43&VALID=TRUE'),
(31, 'معجزه', 1, 'http://book.iranseda.ir/picture/?attid=240427&s=c', 'http://player.iranseda.ir/book-player/?g=296210&w=43&VALID=TRUE'),
(32, 'بیگانگان', 1, 'http://book.iranseda.ir/picture/?attid=239759&s=c', 'http://player.iranseda.ir/book-player/?g=304502&w=43&VALID=TRUE'),
(33, 'همسر نامرئی', 1, 'http://book.iranseda.ir/picture/?attid=239026&s=c', 'http://player.iranseda.ir/book-player/?g=292240&w=43&VALID=TRUE'),
(34, 'امنیت شکم', 1, 'http://book.iranseda.ir/picture/?attid=238481&s=c', 'http://player.iranseda.ir/book-player/?g=299127&w=43&VALID=TRUE'),
(35, 'خواب یک فرشته', 1, 'http://book.iranseda.ir/picture/?attid=240869&s=c', 'http://player.iranseda.ir/book-player/?g=298006&w=43&VALID=TRUE'),
(36, 'زلیات وحشی بافقی', 1, 'http://book.iranseda.ir/picture/?attid=240782&s=c', 'http://player.iranseda.ir/book-player/?g=302364&w=43&VALID=TRUE'),
(37, 'تماشاگه راز', 1, 'http://book.iranseda.ir/picture/?attid=238919&s=c', 'http://player.iranseda.ir/book-player/?g=308666&w=43&VALID=TRUE'),
(38, 'نامه به پدر', 1, 'http://book.iranseda.ir/picture/?attid=240286&s=c', 'http://player.iranseda.ir/book-player/?g=304410&w=43&VALID=TRUE'),
(39, 'تماشاگه راز', 1, 'http://book.iranseda.ir/picture/?attid=238922&s=c', 'http://player.iranseda.ir/book-player/?g=308406&w=43&VALID=TRUE'),
(40, 'عباس بر جاده بی‌انتها', 1, 'http://book.iranseda.ir/picture/?attid=240293&s=c', 'http://player.iranseda.ir/book-player/?g=304176&w=43&VALID=TRUE'),
(41, ' بارون درخت نشین', 1, 'http://book.iranseda.ir/picture/?attid=239967&s=c', 'http://player.iranseda.ir/book-player/?g=303542&w=43&VALID=TRUE'),
(42, 'درک شکوه', 1, 'http://book.iranseda.ir/picture/?attid=238263&s=c', 'http://player.iranseda.ir/book-player/?g=303610&w=43&VALID=TRUE'),
(43, 'افسانه‌های ایرانی', 1, 'http://book.iranseda.ir/picture/?attid=234930&s=c', 'http://player.iranseda.ir/book-player/?g=299102&w=43&VALID=TRUE'),
(44, 'حماقت مرده', 1, 'http://book.iranseda.ir/picture/?attid=239156&s=c', 'http://player.iranseda.ir/book-player/?g=303562&w=43&VALID=TRUE'),
(45, 'شعبده باز', 1, 'http://book.iranseda.ir/picture/?attid=238952&s=c', 'http://player.iranseda.ir/book-player/?g=66678&w=43&VALID=TRUE'),
(46, 'موش ها و آدم‌ها', 1, 'موش ها و آدم‌ها\r\n', 'http://player.iranseda.ir/book-player/?g=296556&w=43&VALID=TRUE'),
(47, 'زنی در کابین ۱۰', 1, 'http://book.iranseda.ir/picture/?attid=240919&s=c', 'http://player.iranseda.ir/book-player/?g=310889&w=43&VALID=TRUE'),
(48, 'نامه به پدر', 1, 'http://book.iranseda.ir/picture/?attid=240286&s=c', 'http://player.iranseda.ir/book-player/?g=304410&w=43&VALID=TRUE'),
(49, 'مردان بدون زنان', 1, 'http://book.iranseda.ir/picture/?attid=241031&s=c', 'http://player.iranseda.ir/book-player/?g=295324&w=43&VALID=TRUE'),
(50, 'چراگاه‌های آسمان', 1, 'http://book.iranseda.ir/picture/?attid=235057&s=c', 'http://player.iranseda.ir/book-player/?g=301222&w=43&VALID=TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carton`
--

CREATE TABLE `tbl_carton` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `seriesname` text NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_carton`
--

INSERT INTO `tbl_carton` (`id`, `title`, `seriesname`, `id_category`, `img`, `url`) VALUES
(1, 'باب اسفنجی', 'دانستن نامها!یک حیوان خانگی یا چند تا!دفاع اختاپوست!تو اخراجی باب اسفنجی!الان نگاه نکن!شاخ به شاخ!خار پوست!فرار از زندان!اسباب بازی جدید گری!مبارزان افراطی!اختاپوست نوزاد!گواهینامه درست کردن میلک شلک!پسر عمه جک!', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2019-06-17/220_8cad6fe9bc49034de21009541478bd5e.png', 'https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2015-01-06/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA1OjU2OjM5IEFNJmhhc2hfdmFsdWU9SzllNWJLQ3N2dmswYWp6clNQN1Q2Zz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2015-01-05/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA1OjU3OjUwIEFNJmhhc2hfdmFsdWU9SXgvT1g1N1paQmhETUM4dHBIRHUzZz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2015-01-04/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI6NDYgQU0maGFzaF92YWx1ZT05bTAxR0YvOXA1TVRGTkthRlRMQ3VBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2015-01-03/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjM6NTIgQU0maGFzaF92YWx1ZT1PaUUzQ0J1RlRONFgvejRIUTRhQ3lBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2015-01-01/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjU6MTggQU0maGFzaF92YWx1ZT1DTnVaWHI1cTlpUm91R1VFWmVkNjJRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-31/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjY6MiBBTSZoYXNoX3ZhbHVlPXhRNmJkL3dCaXdnNWVsR1FaZXVRNWc9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2014-12-29/normalProgram/1946/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjY6NDIgQU0maGFzaF92YWx1ZT1VcFJicVMraFBUQXJkbFBSTzR6cW1BPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2014-12-29/normalProgram/1946/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjY6NDIgQU0maGFzaF92YWx1ZT1VcFJicVMraFBUQXJkbFBSTzR6cW1BPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-28/normalProgram/1946/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2Ojc6NDkgQU0maGFzaF92YWx1ZT0ybVltOEtQMTE4MGxWOXBMTkUrV0R3PT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2014-12-25/normalProgram/1947/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjE0OjkgQU0maGFzaF92YWx1ZT16MExiWlFCb1hQWEwzd2tYYlpwTFlRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-24/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjE0OjU5IEFNJmhhc2hfdmFsdWU9c0dLWjNGcHIxZTk0c2ZYeXZUbmRLZz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-24/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjE0OjU5IEFNJmhhc2hfdmFsdWU9c0dLWjNGcHIxZTk0c2ZYeXZUbmRLZz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-23/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2Ojg6NDIgQU0maGFzaF92YWx1ZT02Mm8zeUMxVURjMXkwZVdzWHBRamVRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-19/normalProgram/1944/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2Ojg6NDIgQU0maGFzaF92YWx1ZT02Mm8zeUMxVURjMXkwZVdzWHBRamVRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2014-12-18/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2Ojg6NDQgQU0maGFzaF92YWx1ZT0vbytlVmxER20wTjNINmR6Qmc0b0xBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2014-12-17/normalProgram/1945/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2Ojg6NDUgQU0maGFzaF92YWx1ZT1Ka2VnZldlR1ROdjJRMHY5M3habmh3PT0mdmFsaWRtaW51dGVzPTYwMDA='),
(2, 'بچه رئیس', 'بازگشت به کار!شش گربه در جای مناسب!دوام بیار رفیق!گروه پلیس!در هواپیما!مهمونی سالانه!پولیورهای گربه ای!پرستار بچه رئیس!ماموریت غیر ممکن!مسابقه کوچولوها!', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2019-07-22/220_5279720ce389028a91ec776668b8dba6.png', 'https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-06-07/normalProgram/172944/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI1OjIwIEFNJmhhc2hfdmFsdWU9VUxqeDRWUTMrd2tjUjVrTDFyOG00dz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-06-06/normalProgram/172935/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI2OjcgQU0maGFzaF92YWx1ZT02WEU4YzVZc1FIQ3JGSFZoY0l1cGxBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-31/normalProgram/173243/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI2OjU0IEFNJmhhc2hfdmFsdWU9VFU5bzZMVmpMY0VrUGdYZ3VmVXRMUT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-30/normalProgram/172955/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI3OjMzIEFNJmhhc2hfdmFsdWU9elRoK0JpSXgrdmV1UGpDYVBLMG1Vdz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-24/normalProgram/173157/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI4OjEyIEFNJmhhc2hfdmFsdWU9R0ttS1BGOEhsUThYRTgwQ2g1akxrZz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-23/normalProgram/172932/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjI5OjIzIEFNJmhhc2hfdmFsdWU9UEFHY0VYQkc0NFBNVnJRNG5pWDh6QT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-17/normalProgram/172804/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjMwOjYgQU0maGFzaF92YWx1ZT13Vm5TeEM4cUl3Nk1vNzhIME0rWWdBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-05-16/normalProgram/172933/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjMwOjQwIEFNJmhhc2hfdmFsdWU9bENzUjB6N3lETFlnNzZlZHVMenFSUT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-05-10/normalProgram/173001/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjMxOjI3IEFNJmhhc2hfdmFsdWU9NW43UzBZdUVXMEdiRVJMUGZXeTVOdz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-05-09/normalProgram/160004/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjMyOjI0IEFNJmhhc2hfdmFsdWU9cmR4dDd3a0NaN25oc1hxa3FPRk4vQT09JnZhbGlkbWludXRlcz02MDAw!'),
(3, 'ببعی', 'بازی کاغذ!متاسفم!خوردن سبزیجات!روز خرید!کمک کردن!ببعی عجول', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-02-19/220_132dda4ea6bd1b0124b821d4f9d03d97.png', 'https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-10-29/normalProgram/103033/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjQ4OjQgQU0maGFzaF92YWx1ZT1qUHZGSkFDZzFxaU5xZHJvQ3I2S1h3PT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-10-28/normalProgram/102954/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjQ4OjU0IEFNJmhhc2hfdmFsdWU9WVpiY3VoY1FNei8vUmY0MDRlWllKUT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-10-27/normalProgram/102943/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjQ5OjM3IEFNJmhhc2hfdmFsdWU9OStVVHBuU0kyNXRaZDNia2I3SUMrdz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-10-26/normalProgram/102939/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjUwOjEzIEFNJmhhc2hfdmFsdWU9OUFZUmNMR0dSdDNOaVVTRUIwa2NFQT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-10-25/normalProgram/103009/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjUwOjU4IEFNJmhhc2hfdmFsdWU9MkxkQjdIOS9qaWdxSE05ZHRnRzBLZz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-10-24/normalProgram/103029/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjUxOjMyIEFNJmhhc2hfdmFsdWU9Zzl4ZHByY3ExZHpFbGNPRmIrdHNNQT09JnZhbGlkbWludXRlcz02MDAw'),
(4, 'خاله سارا', 'مسافر!مادری!ای آرام کننده دلها!بیماری پرهام!جایزه!دوست داشتنی ها!هدیه سارا', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2019-11-03/220_59de94365f4ef7f0b91362ae9afe4932.png', 'https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2019-11-11/normalProgram/102949/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjU1OjU2IEFNJmhhc2hfdmFsdWU9a1JON04zeG9obDFKS0pzZDIyb0orUT09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2019-11-10/normalProgram/102944/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjU2OjUzIEFNJmhhc2hfdmFsdWU9c0liQVhibWM5SXllZzRFOWhCT0Z5dz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2019-11-09/normalProgram/103001/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjU4OjAgQU0maGFzaF92YWx1ZT1CM2lmNUpTQmhsK1cvUVVlY0NUcE5BPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2019-11-08/normalProgram/103018/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA2OjU5OjE1IEFNJmhhc2hfdmFsdWU9a1l3WWJpRDZGY3ZmTUtDNmwvL2xNQT09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2019-11-07/normalProgram/102942/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA3OjA6OCBBTSZoYXNoX3ZhbHVlPWpHWi9NRm5WMEI1NEVUUERRcU41SEE9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-11-06/normalProgram/103005/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA3OjE6MjYgQU0maGFzaF92YWx1ZT1adEZXYmQ4Z1JnVm5TQ1NnYXZmNG5BPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-11-05/normalProgram/103004/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTIvMjkvMjAyMCA3OjE6NTUgQU0maGFzaF92YWx1ZT0rWDZta1diRE5IWk5ZQ1VjcVh0dVdnPT0mdmFsaWRtaW51dGVzPTYwMDA='),
(5, 'دیجیمون', 'قسمت ۱!قسمت ۲!قسمت ۳!قسمت ۴!قسمت ۵!قسمت ۶!قسمت ۷!قسمت ۸!قسمت ۹', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-12-12/220_1b7f860f0874f582a9118ec56a879e56.png', 'https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-07-14/normalProgram/170140/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjY6MTEgQU0maGFzaF92YWx1ZT1VNnNBQzBQa1dIL1hmS2tHNkNXRWRRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-07-16/normalProgram/170331/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4Ojc6MTUgQU0maGFzaF92YWx1ZT1uZXovM3BhdmJid3hKWEQ0ckZFdzRRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-07-21/normalProgram/170151/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4Ojg6NTEgQU0maGFzaF92YWx1ZT10MWh6NG4wN1dtZnJ0UVRJMUZqUWZRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-07-23/normalProgram/165952/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4Ojk6NDggQU0maGFzaF92YWx1ZT1FdE5FWWxJUG9uRFBnYUdmRUVZY3NRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-07-28/normalProgram/170003/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjEwOjE5IEFNJmhhc2hfdmFsdWU9NHJxcitDbHBuQldwUzhrU0ZzM1pOUT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-07-30/normalProgram/165939/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjExOjAgQU0maGFzaF92YWx1ZT1nRlpaTFF6ejRKQzlDbjJQbUliSkhnPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-08-04/normalProgram/170002/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjExOjQ0IEFNJmhhc2hfdmFsdWU9NjQ3SE80eTBiYyt0SmhrWXlJa1J2Zz09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2019-08-06/normalProgram/170115/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjEyOjI0IEFNJmhhc2hfdmFsdWU9T29qSEdCY29aY2dlTFVlYS9vOEhqUT09JnZhbGlkbWludXRlcz02MDAw!https://st3.telewebion.com/vod/_definst_//media_c/telewebion/pooya/2019-08-11/normalProgram/170016/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjEzOjIgQU0maGFzaF92YWx1ZT1yN0JUVmIzaCtRdnZ4WlJrVjNZUUJBPT0mdmFsaWRtaW51dGVzPTYwMDA='),
(6, 'بلینکی بیل', 'انجماد مغزی!شکار بانیپ!فرار!بلینکی شجاع!ماشین زمان!قرار', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-16/220_5c161c914735369523d560cf825e380a.png', 'https://sa20.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-17/normalProgram/154519/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MjYgQU0maGFzaF92YWx1ZT10bW1EbjE1ZDkzR2RWaVJBMEFVL2lnPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa20.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-18/normalProgram/154510/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MTQgQU0maGFzaF92YWx1ZT13bzVJcVdzV1UydjRnRVZFT1Q3MHZ3PT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa14.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2020-03-20/normalProgram/154519/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MTggQU0maGFzaF92YWx1ZT05eThSQ2dDRWVqQ0lrWWdkeGNOUmpRPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa20.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-21/normalProgram/154935/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MTkgQU0maGFzaF92YWx1ZT1NRlRQTmk0ajI5b2NKNHBMZjVlYVVBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa20.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-22/normalProgram/154446/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MjEgQU0maGFzaF92YWx1ZT03OWFwM1pOTlNiWTZ5eDZWSXdSMnBBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa23.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-23/normalProgram/154819/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI6MjIgQU0maGFzaF92YWx1ZT1PbEE4NTBjSU9uK3hZNEphbnN2V1FnPT0mdmFsaWRtaW51dGVzPTYwMDA='),
(7, 'نیک و نیکو', 'مرخصی!بله قربان!تبعید!نیک شجاع!گل مهتاب!نمایش دوستان!قورقوری!تئو', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-11/220_45169d5a586b202cfa7445a92c7c76f0.png', 'https://sa17.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-18/normalProgram/081411/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI0OjMyIEFNJmhhc2hfdmFsdWU9Tm5kdWl5QXhBQ3pITkxyc3RHZkJvZz09JnZhbGlkbWludXRlcz02MDAw!https://sa15.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2020-03-19/normalProgram/081415/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI1OjYgQU0maGFzaF92YWx1ZT1HV1QrSFU0MVlacEJuS1ovN29Yb3FBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa23.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-20/normalProgram/103030/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI1OjM5IEFNJmhhc2hfdmFsdWU9cDJIZVYvRE1rVUZPVUdicThvT0dsQT09JnZhbGlkbWludXRlcz02MDAw!https://sa15.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2020-03-21/normalProgram/101445/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI2OjI5IEFNJmhhc2hfdmFsdWU9eTZNQ091cmhLMWpyamY2aUFTa1p3QT09JnZhbGlkbWludXRlcz02MDAw!https://sa17.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-22/normalProgram/101504/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI3OjI4IEFNJmhhc2hfdmFsdWU9YjBFYUtuWjd6Um42OHhsWUZNc0MwZz09JnZhbGlkbWludXRlcz02MDAw!https://sa21.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-23/normalProgram/101519/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI4OjggQU0maGFzaF92YWx1ZT1pY2FXK3JZcUZEYWhtRkxOc2NHZGFBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa14.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2020-03-24/normalProgram/101501/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI4OjQ3IEFNJmhhc2hfdmFsdWU9VHIyd01KWkE1SzNPZ2JsK3psZ3BPUT09JnZhbGlkbWludXRlcz02MDAw!https://sa15.telewebion.com/vod/_definst_//media_b/telewebion/pooya/2020-03-25/normalProgram/101513/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjI5OjI0IEFNJmhhc2hfdmFsdWU9TlErOGVUd1ZGU0VlOERqWFBzQ3htUT09JnZhbGlkbWludXRlcz02MDAw'),
(8, 'دالتون ها', 'اورل باهوش!دالتون هنرمند', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-11/220_4e81f0efcdff7d2b9cdef48be59cbe26.png', 'https://sa23.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-17/normalProgram/185939/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQwOjIxIEFNJmhhc2hfdmFsdWU9MTRoOTFtQUZQdnUwWU44Z0toamVpUT09JnZhbGlkbWludXRlcz02MDAw!https://sa17.telewebion.com/vod/_definst_//media/telewebion/pooya/2020-03-17/normalProgram/190701/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQwOjUzIEFNJmhhc2hfdmFsdWU9UDZEYzdBelBFQTh2d1E4ZUpKeUc4dz09JnZhbGlkbWludXRlcz02MDAw'),
(9, 'پت و مت', 'قسمت ۱', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-01/220_7e6cb5628570987e8f2da936009b4043.png', 'https://sa23.telewebion.com/vod/_definst_//media/telewebion/kordestan/2020-02-29/normalProgram/152021/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQyOjI3IEFNJmhhc2hfdmFsdWU9WGNjOXI0NkRSZndlTkRBbXBhRUErUT09JnZhbGlkbWludXRlcz02MDAw'),
(10, 'ورجه وورجه', 'قسمت ۱!قسمت ۲', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-02-03/220_4ec221aa564664cef80022caa5546b28.png', 'https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2020-02-02/normalProgram/163007/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ0OjE0IEFNJmhhc2hfdmFsdWU9TWVteFQxNllJRi9NeEg5SVM1eEtHUT09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2020-02-04/normalProgram/162941/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ1OjggQU0maGFzaF92YWx1ZT1zNDNnQzQvbVB6YlRXMHR2VmN0RitnPT0mdmFsaWRtaW51dGVzPTYwMDA='),
(11, 'شکرستان', 'قسمت ۱!قسمت ۲!قسمت ۳', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-02-03/220_9b7a0234ffb5aaa254c75241b573afb0.png', 'https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/omid/2020-01-27/normalProgram/084328/file.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ2OjE4IEFNJmhhc2hfdmFsdWU9cmpiK2dxVEFRZHhrdWdvZWFGZmwwZz09JnZhbGlkbWludXRlcz02MDAw!https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/omid/2020-01-28/normalProgram/084517/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ3OjUgQU0maGFzaF92YWx1ZT1pNFV4aXkzR3RJUUdnTHVQaVFIUUhnPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/omid/2020-01-30/normalProgram/084426/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ3OjM4IEFNJmhhc2hfdmFsdWU9SEROQm9vUTdmenpKczk1YlVCSTY4dz09JnZhbGlkbWludXRlcz02MDAw'),
(12, 'اژدهای مهربان من', 'حباب های براق کننده!نمایش آبی', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-01-20/220_2a040b83b92d03ddd234195b3b5f0cb5.png', 'https://st1.telewebion.com/vod/_definst_//media_b1/telewebion/pooya/2020-01-20/normalProgram/094537/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ5OjAgQU0maGFzaF92YWx1ZT16a1E4L2x0a0JHY1NubG1CeFdQWVFBPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://st1.telewebion.com/vod/_definst_//media_b2/telewebion/pooya/2020-01-21/normalProgram/094436/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjUvMjAyMCA4OjQ5OjI3IEFNJmhhc2hfdmFsdWU9MXRsMWl2YnJWZWNlb3VCQUNIWjBRZz09JnZhbGlkbWludXRlcz02MDAw');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`) VALUES
(1, 'متون کهن'),
(2, 'رمان و داستان'),
(3, 'کارتون'),
(4, 'بازی ماشین'),
(5, 'متفرقه'),
(6, 'کمدی'),
(7, 'اکشن'),
(8, 'پاپ'),
(9, 'سنتی'),
(10, 'نوحه'),
(11, 'مجلسی'),
(12, 'پلیسی'),
(13, 'ملودرام'),
(14, 'خدمات پرداخت'),
(15, 'بلیط'),
(16, 'کودکان'),
(17, 'نوجوانان');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_channel`
--

CREATE TABLE `tbl_channel` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `type` varchar(1) NOT NULL,
  `img` varchar(255) NOT NULL,
  `music` varchar(255) NOT NULL,
  `movie` varchar(255) NOT NULL,
  `survey` varchar(255) NOT NULL,
  `location` varchar(22) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_channel`
--

INSERT INTO `tbl_channel` (`id`, `text`, `type`, `img`, `music`, `movie`, `survey`, `location`, `phone`) VALUES
(1, 'باسلام، ضمن خوش آمد گویی \r\nاین کانال جهت اطلاع رسانی برنامه ها وفعالیت های اداره فرهنگی کارکنان خانواده نیروی انتظامی استان گیلان می باشد.', '1', '', '', '', '', '', ''),
(2, 'تسلیت شهادت سردار شهید اسلام حاج قاسم سلیمانی\r\nهمه در اندوه غم از دست دادنش سوگواریم', '2', 'https://static3.rasadeghtesadi.com/thumbnail/Z8STV7VKFSa9/uSSGbqh_w3AC8nQILkStnkrX4Lmti6cgoyj82slCLXg9pbKclbRrRfKMOBsUvYY3vtNhokjfrHBTMlFjhEvn38THyAytEnw8_Ecv4TSzI10rRHu_1S14n9fH413QyPziGzrC3451CnE,/%D8%B3%D9%84%D8%A8%D9%85%D8%A7%D9%86%DB%8C.jpg', '', '', '', '', ''),
(4, 'کلیپ کوتاهی از اردوی بانوان شهر مقدس قم در آبان ماه 1398', '4', 'http://chatr.anzalepoxy.ir/img/abc.jpg', '', 'http://chatr.anzalepoxy.ir/video/video.mp4', '', '', ''),
(6, 'آدرس اداره فرهنگی خانواده', '6', '', '', '', '', '37.294508, 49.597222', ''),
(7, 'شماره تماس اداره فرهنگی خانواده', '7', '', '', '', '', '', '01321825609'),
(8, 'برگزاری کلاس های قلاب بافی و خیاطی در روز های شنبه و یکشنبه هر هفته برای اطلاعات بیشتر با شماره تلفن مرکز تماس حاصل فرمایید', '2', 'http://chatr.anzalepoxy.ir/img/class.jpg', '', '', '', '', ''),
(9, 'خرید عینک های طبی، آفتابی، مطالعه با 50 درصد تخفیف ویژه کارکنان و خانواده محترمشان', '2', 'http://chatr.anzalepoxy.ir/img/glass.jpg', '', '', '', '', ''),
(10, 'مرکز مشاوره امین مشاوره و درمان اختلالات شخصیتی به صورت کاملا رایگان', '2', 'http://chatr.anzalepoxy.ir/img/pylogy.jpg', '', '', '', '', ''),
(11, 'تمامی فعالیت های مرکز در یک قاب\r\nبرای اطلاعات بیشتر با شماره: 013-21825609 تماس حاصل فرمایید.', '2', 'http://chatr.anzalepoxy.ir/img/all.jpg', '', '', '', '', ''),
(13, 'همایش رای اولی ها - با حضور رئیس عقیدتی سیاسی فرماندهی انتظامی استان گیلان', '4', 'http://chatr.anzalepoxy.ir/img/negahno.JPG', '', 'https://upinja.com/up/My-Video-1-.mp4', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_game`
--

CREATE TABLE `tbl_game` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_game`
--

INSERT INTO `tbl_game` (`id`, `title`, `id_category`, `img`, `url`) VALUES
(3, 'آبنبات', 17, 'https://img.gamedistribution.com/1ca71aab20f8422bb6f2b0deaf3db3bc-512x384.jpeg', 'https://html5.gamedistribution.com/1ca71aab20f8422bb6f2b0deaf3db3bc/'),
(5, 'لوله گذاری', 17, 'https://img.gamedistribution.com/f5dbf848500d4f0886d41809e5e9705b-512x512.jpeg', 'https://html5.gamedistribution.com/f5dbf848500d4f0886d41809e5e9705b/'),
(6, 'پازل', 17, 'https://img.gamedistribution.com/7e5f2d550b824b9ebde0789d065b9290-512x340.jpeg', 'https://html5.gamedistribution.com/7e5f2d550b824b9ebde0789d065b9290/'),
(9, 'پازل آبنباتی', 17, 'https://images-eu.ssl-images-amazon.com/images/I/71blqYDTBoL.png', 'https://html5.gamedistribution.com/639df47033804f18bf39e113ef29f4fa/'),
(10, 'جاده موشکی', 17, 'https://gamasexual.com/c/i/g/rocket-road.jpg', 'https://html5.gamedistribution.com/f88469ad843d41c0bbf2bec6de0bd62e/'),
(11, 'نینی پاندا', 16, 'https://img.gamedistribution.com/3984c5c35634455dbfe1e3161eabb97d-512x384.jpeg', 'https://html5.gamedistribution.com/3984c5c35634455dbfe1e3161eabb97d/'),
(12, 'پرستاری بچه', 16, 'https://img.gamedistribution.com/75051fe589a34cd8a68d72993a2c6a70-512x384.jpeg', 'https://html5.gamedistribution.com/75051fe589a34cd8a68d72993a2c6a70/'),
(13, 'پنگوئن', 17, 'https://img.gamedistribution.com/c8b4df234ad345599b967aa9e3fc7070-512x384.jpeg', 'https://html5.gamedistribution.com/c8b4df234ad345599b967aa9e3fc7070/'),
(14, 'توپ فضایی', 17, 'https://img.gamedistribution.com/f88469ad843d41c0bbf2bec6de0bd62e-512x512.jpeg', 'https://html5.gamedistribution.com/f88469ad843d41c0bbf2bec6de0bd62e/'),
(15, 'فوتبال', 5, 'https://img.gamedistribution.com/38396a4cf1064adc961e704c9893a494-512x512.jpeg', 'https://html5.gamedistribution.com/38396a4cf1064adc961e704c9893a494/'),
(16, 'گلوله برفی', 5, 'https://img.gamedistribution.com/76499477666b4e4d81d04a4baa9ca61b-512x512.jpeg', 'https://html5.gamedistribution.com/76499477666b4e4d81d04a4baa9ca61b/'),
(17, 'کرونا ویروس', 5, 'https://img.gamedistribution.com/d2a2209a95ea4d55a933c68683e25e94-512x512.jpeg', 'https://html5.gamedistribution.com/d2a2209a95ea4d55a933c68683e25e94/'),
(18, 'پازل 1', 5, 'https://img.gamedistribution.com/f07eaaca83574801b7d0bbaccdb7e9f5-512x512.jpeg', 'https://html5.gamedistribution.com/f07eaaca83574801b7d0bbaccdb7e9f5/'),
(19, 'پازل 2', 5, 'https://img.gamedistribution.com/268707153ee941d48b9d1309dd983257-512x512.jpeg', 'https://html5.gamedistribution.com/268707153ee941d48b9d1309dd983257/'),
(20, 'زنبور عسل', 5, 'https://img.gamedistribution.com/2fb3676d226649ccbff5dfdea11faeb8-512x512.jpeg', 'https://html5.gamedistribution.com/2fb3676d226649ccbff5dfdea11faeb8/'),
(21, 'دوز', 5, 'https://img.gamedistribution.com/9ca8e4d3f2b74338bc12df7a2c4299a4-512x512.jpeg', 'https://html5.gamedistribution.com/9ca8e4d3f2b74338bc12df7a2c4299a4/'),
(22, 'حلقه بازی', 5, 'https://img.gamedistribution.com/18df670823444c7fb65106eaeaaab9ec-512x512.jpeg', 'https://html5.gamedistribution.com/18df670823444c7fb65106eaeaaab9ec/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_li_mafatih`
--

CREATE TABLE `tbl_li_mafatih` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_li_mafatih`
--

INSERT INTO `tbl_li_mafatih` (`id`, `title`, `img`, `url`) VALUES
(1, 'باب اول: ادعیه', 'https://s.cafebazaar.ir/1/icons/com.pars20.mafatih_512x512.png', 'http://www.erfan.ir/farsi/mafatih/index/1#firstpage'),
(2, 'باب دوم: اعمال سال', 'https://s.cafebazaar.ir/1/icons/com.pars20.mafatih_512x512.png', 'http://www.erfan.ir/farsi/mafatih/index/2#firstpage'),
(3, 'باب سوم: زیارات', 'https://s.cafebazaar.ir/1/icons/com.pars20.mafatih_512x512.png', 'http://www.erfan.ir/farsi/mafatih/index/3#firstpage'),
(4, 'ملحقات مفاتیح الجنان', 'https://s.cafebazaar.ir/1/icons/com.pars20.mafatih_512x512.png', 'http://www.erfan.ir/farsi/mafatih/index/4#firstpage');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_li_nahj`
--

CREATE TABLE `tbl_li_nahj` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_li_nahj`
--

INSERT INTO `tbl_li_nahj` (`id`, `title`, `img`, `url`) VALUES
(1, '( خطبه 1 ) خطبه در ابتداى آفرينش آسمان و زمين و آدم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-1/%D8%AE%D8%B7%D8%A8%D9%87-1-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A7%D8%A8%D8%AA%D8%AF%D8%A7%D9%89-%D8%A2%D9%81%D8%B1%D9%8A%D9%86%D8%B4-%D8%A2%D8%B3%D9%85%D8%A7%D9%86-%D9%88-%D8%B2%D9%85%D9%8A%D9%86-%D9%88-%D8%A2%D8%AF%D9%85'),
(2, '( خطبه 2 ) خطبه پس از بازگشت از صفّين', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-2/%D8%AE%D8%B7%D8%A8%D9%87-2-%D8%AE%D8%B7%D8%A8%D9%87---%D9%BE%D8%B3-%D8%A7%D8%B2-%D8%A8%D8%A7%D8%B2%DA%AF%D8%B4%D8%AA-%D8%A7%D8%B2-%D8%B5%D9%81%D9%91%D9%8A%D9%86'),
(3, '( خطبه 3 ) خطبه معروف به شِقشِقيّه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-3/%D8%AE%D8%B7%D8%A8%D9%87-3-%D8%AE%D8%B7%D8%A8%D9%87-%D9%85%D8%B9%D8%B1%D9%88%D9%81-%D8%A8%D9%87--%D8%B4%D9%90%D9%82%D8%B4%D9%90%D9%82%D9%8A%D9%91%D9%87'),
(4, '( خطبه 4 ) خطبه بعد از كشته شدن طلحه و زبير ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-4/%D8%AE%D8%B7%D8%A8%D9%87-4-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D9%83%D8%B4%D8%AA%D9%87-%D8%B4%D8%AF%D9%86-%D8%B7%D9%84%D8%AD%D9%87-%D9%88-%D8%B2%D8%A8%D9%8A%D8%B1'),
(5, '( خطبه 5 ) خطبه بعد از وفات پيامبر(صلى الله عليه وآله) در خطاب به عباس و ابوسفيان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-5/%D8%AE%D8%B7%D8%A8%D9%87-5-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D9%88%D9%81%D8%A7%D8%AA-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)-%D8%AF%D8%B1-%D8%AE%D8%B7%D8%A7%D8%A8-%D8%A8%D9%87-%D8%B9%D8%A8%D8%A7%D8%B3-%D9%88-%D8%A7%D8%A8%D9%88%D8%B3%D9%81%D9%8A%D8%A7%D9%86'),
(6, '( خطبه 6 ) خطبه هنگامى كه از او خواستند طلحه و زبير را دنبال نكند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-6/%D8%AE%D8%B7%D8%A8%D9%87-6-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89-%D9%83%D9%87-%D8%A7%D8%B2-%D8%A7%D9%88-%D8%AE%D9%88%D8%A7%D8%B3%D8%AA%D9%86%D8%AF-%D8%B7%D9%84%D8%AD%D9%87-%D9%88-%D8%B2%D8%A8%D9%8A%D8%B1-%D8%B1%D8%A7-%D8%AF%D9%86%D8%A8%D8%A7%D9%84-%D9%86%D9%83%D9%86%D8%AF'),
(7, '( خطبه 7 ) خطبه مريدان شيطان را مذمت مى نمايد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-7/%D8%AE%D8%B7%D8%A8%D9%87-7-%D8%AE%D8%B7%D8%A8%D9%87-%D9%85%D8%B1%D9%8A%D8%AF%D8%A7%D9%86-%D8%B4%D9%8A%D8%B7%D8%A7%D9%86-%D8%B1%D8%A7-%D9%85%D8%B0%D9%85%D8%AA--%D9%85%D9%89-%D9%86%D9%85%D8%A7%D9%8A%D8%AF'),
(8, '( خطبه 8 ) خطبه براى برگرداندن زبير به بيعت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-8/%D8%AE%D8%B7%D8%A8%D9%87-8-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B1%D8%A7%D9%89-%D8%A8%D8%B1%DA%AF%D8%B1%D8%AF%D8%A7%D9%86%D8%AF%D9%86---%D8%B2%D8%A8%D9%8A%D8%B1-%D8%A8%D9%87-%D8%A8%D9%8A%D8%B9%D8%AA'),
(9, '( خطبه 9 ) خطبه در وصف خود و دشمنانش در جمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-9/%D8%AE%D8%B7%D8%A8%D9%87-9-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D8%AE%D9%88%D8%AF-%D9%88---%D8%AF%D8%B4%D9%85%D9%86%D8%A7%D9%86%D8%B4-%D8%AF%D8%B1-%D8%AC%D9%85%D9%84'),
(10, '( خطبه 10 ) خطبه در تحريك شيطان نسبت به اهل جمل و عواقب وخيم آن ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-10/%D8%AE%D8%B7%D8%A8%D9%87-10-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%AD%D8%B1%D9%8A%D9%83-%D8%B4%D9%8A%D8%B7%D8%A7%D9%86--%D9%86%D8%B3%D8%A8%D8%AA-%D8%A8%D9%87-%D8%A7%D9%87%D9%84-%D8%AC%D9%85%D9%84-%D9%88-%D8%B9%D9%88%D8%A7%D9%82%D8%A8-%D9%88%D8%AE%D9%8A%D9%85-%D8%A2%D9%86'),
(11, '( خطبه 11 ) خطبه وقتی که در نبرد جمل پرچم را بهدست فرزندش محمّد حنفيه داد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-11/%D8%AE%D8%B7%D8%A8%D9%87-11-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%DB%8C-%DA%A9%D9%87-%D8%AF%D8%B1-%D9%86%D8%A8%D8%B1%D8%AF-%D8%AC%D9%85%D9%84-%D9%BE%D8%B1%DA%86%D9%85-%D8%B1%D8%A7-%D8%A8%D9%87%D8%AF%D8%B3%D8%AA-%D9%81%D8%B1%D8%B2%D9%86%D8%AF%D8%B4-%D9%85%D8%AD%D9%85%D9%91%D8%AF-%D8%AD%D9%86%D9%81%D9%8A%D9%87---%D8%AF%D8%A7%D8%AF'),
(12, '( خطبه 12 ) خطبه وقتى كه در نبرد جمل پيروز شد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-12/%D8%AE%D8%B7%D8%A8%D9%87-12-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D8%AF%D8%B1-%D9%86%D8%A8%D8%B1%D8%AF-%D8%AC%D9%85%D9%84-%D9%BE%D9%8A%D8%B1%D9%88%D8%B2--%D8%B4%D8%AF'),
(13, '( خطبه 13 ) خطبه در نكوهش بصره و اهل آن پس از نبرد جمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-13/%D8%AE%D8%B7%D8%A8%D9%87-13-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A8%D8%B5%D8%B1%D9%87-%D9%88-%D8%A7%D9%87%D9%84-%D8%A2%D9%86-%D9%BE%D8%B3--%D8%A7%D8%B2-%D9%86%D8%A8%D8%B1%D8%AF-%D8%AC%D9%85%D9%84'),
(14, '( خطبه 14 ) خطبه در همين موضوع (بصره و مردم آن) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-14/%D8%AE%D8%B7%D8%A8%D9%87-14-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%87%D9%85%D9%8A%D9%86-%D9%85%D9%88%D8%B6%D9%88%D8%B9--(%D8%A8%D8%B5%D8%B1%D9%87-%D9%88-%D9%85%D8%B1%D8%AF%D9%85-%D8%A2%D9%86)'),
(15, '( خطبه 15 ) خطبه در رابطه با برگرداندن املاك بيت المال ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-15/%D8%AE%D8%B7%D8%A8%D9%87-15-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B1%D8%A7%D8%A8%D8%B7%D9%87-%D8%A8%D8%A7-%D8%A8%D8%B1%DA%AF%D8%B1%D8%AF%D8%A7%D9%86%D8%AF%D9%86-%D8%A7%D9%85%D9%84%D8%A7%D9%83-%D8%A8%D9%8A%D8%AA-%D8%A7%D9%84%D9%85%D8%A7%D9%84'),
(16, '( خطبه 16 ) خطبه هنگامى كه در مدينه با او بيعت شد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-16/%D8%AE%D8%B7%D8%A8%D9%87-16-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89-%D9%83%D9%87-%D8%AF%D8%B1-%D9%85%D8%AF%D9%8A%D9%86%D9%87-%D8%A8%D8%A7-%D8%A7%D9%88-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%B4%D8%AF'),
(17, '( خطبه 17 ) خطبه درباره كسىكه در ميان مردم عهدهدار منصب قضاوت شود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-17/%D8%AE%D8%B7%D8%A8%D9%87-17-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%83%D8%B3%D9%89%D9%83%D9%87-%D8%AF%D8%B1-%D9%85%D9%8A%D8%A7%D9%86-%D9%85%D8%B1%D8%AF%D9%85-%D8%B9%D9%87%D8%AF%D9%87%D8%AF%D8%A7%D8%B1-%D9%85%D9%86%D8%B5%D8%A8-%D9%82%D8%B6%D8%A7%D9%88%D8%AA--%D8%B4%D9%88%D8%AF'),
(18, '( خطبه 18 ) خطبه در نكوهش اختلاف علما در فتاوى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-18/%D8%AE%D8%B7%D8%A8%D9%87-18-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A7%D8%AE%D8%AA%D9%84%D8%A7%D9%81-%D8%B9%D9%84%D9%85%D8%A7-%D8%AF%D8%B1-%D9%81%D8%AA%D8%A7%D9%88%D9%89'),
(19, '( خطبه 19 ) خطبه به اشعث بن قيس ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-19/%D8%AE%D8%B7%D8%A8%D9%87-19-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D8%A7%D8%B4%D8%B9%D8%AB-%D8%A8%D9%86-%D9%82%D9%8A%D8%B3'),
(20, '( خطبه 20 ) خطبه در بيدارى از غفلت و توجه به حضرت حق ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-20/%D8%AE%D8%B7%D8%A8%D9%87-20-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%AF%D8%A7%D8%B1%D9%89-%D8%A7%D8%B2-%D8%BA%D9%81%D9%84%D8%AA-%D9%88-%D8%AA%D9%88%D8%AC%D9%87-%D8%A8%D9%87-%D8%AD%D8%B6%D8%B1%D8%AA-%D8%AD%D9%82'),
(21, '( خطبه 21 ) خطبه در توجه به قيامت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-21/%D8%AE%D8%B7%D8%A8%D9%87-21-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AC%D9%87-%D8%A8%D9%87-%D9%82%D9%8A%D8%A7%D9%85%D8%AA'),
(22, '( خطبه 22 ) خطبه هنگامى كه خبر بيعت شكنان جمل به حضرتش رسيد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-22/%D8%AE%D8%B7%D8%A8%D9%87-22-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89-%D9%83%D9%87-%D8%AE%D8%A8%D8%B1-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%B4%D9%83%D9%86%D8%A7%D9%86-%D8%AC%D9%85%D9%84-%D8%A8%D9%87-%D8%AD%D8%B6%D8%B1%D8%AA%D8%B4-%D8%B1%D8%B3%D9%8A%D8%AF'),
(23, '( خطبه 23 ) خطبه در دلدارى به تهيدستان و تأديب ثروتمندان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-23/%D8%AE%D8%B7%D8%A8%D9%87-23-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AF%D9%84%D8%AF%D8%A7%D8%B1%D9%89-%D8%A8%D9%87-%D8%AA%D9%87%D9%8A%D8%AF%D8%B3%D8%AA%D8%A7%D9%86-%D9%88-%D8%AA%D8%A3%D8%AF%D9%8A%D8%A8-%D8%AB%D8%B1%D9%88%D8%AA%D9%85%D9%86%D8%AF%D8%A7%D9%86'),
(24, '( خطبه 24 ) خطبه در جنگ با مخالفان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-24/%D8%AE%D8%B7%D8%A8%D9%87-24-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AC%D9%86%DA%AF-%D8%A8%D8%A7-%D9%85%D8%AE%D8%A7%D9%84%D9%81%D8%A7%D9%86'),
(25, '( خطبه 25 ) خطبه وقتى به او خبر رسيد كه ارتش معاويه به شهرها دستاندازى كرده اند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-25/%D8%AE%D8%B7%D8%A8%D9%87-25-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D8%A8%D9%87-%D8%A7%D9%88-%D8%AE%D8%A8%D8%B1-%D8%B1%D8%B3%D9%8A%D8%AF-%D9%83%D9%87-%D8%A7%D8%B1%D8%AA%D8%B4-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87-%D8%A8%D9%87-%D8%B4%D9%87%D8%B1%D9%87%D8%A7-%D8%AF%D8%B3%D8%AA%D8%A7%D9%86%D8%AF%D8%A7%D8%B2%D9%89-%D9%83%D8%B1%D8%AF%D9%87-%D8%A7%D9%86%D8%AF'),
(26, '( خطبه 26 ) خطبه در وصف حال مردم جاهلى و دوران سكوت خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-26/%D8%AE%D8%B7%D8%A8%D9%87-26-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D8%AD%D8%A7%D9%84-%D9%85%D8%B1%D8%AF%D9%85-%D8%AC%D8%A7%D9%87%D9%84%D9%89-%D9%88-%D8%AF%D9%88%D8%B1%D8%A7%D9%86-%D8%B3%D9%83%D9%88%D8%AA-%D8%AE%D9%88%D8%AF'),
(27, '( خطبه 27 ) خطبه در نكوهش اصحاب از نرفتن به جهاد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-27/%D8%AE%D8%B7%D8%A8%D9%87-27-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A7%D8%B5%D8%AD%D8%A7%D8%A8-%D8%A7%D8%B2-%D9%86%D8%B1%D9%81%D8%AA%D9%86-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF'),
(28, '( خطبه 28 ) خطبه در بىوفايى دنيا و توجه به آخرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-28/%D8%AE%D8%B7%D8%A8%D9%87-28-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%89%D9%88%D9%81%D8%A7%D9%8A%D9%89-%D8%AF%D9%86%D9%8A%D8%A7-%D9%88-%D8%AA%D9%88%D8%AC%D9%87-%D8%A8%D9%87-%D8%A2%D8%AE%D8%B1%D8%AA'),
(29, '( خطبه 29 ) خطبه پس از برنامه حكمين و تاخت و تاز ضحّاك بن قيس ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-29/%D8%AE%D8%B7%D8%A8%D9%87-29-%D8%AE%D8%B7%D8%A8%D9%87-%D9%BE%D8%B3-%D8%A7%D8%B2-%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%AD%D9%83%D9%85%D9%8A%D9%86-%D9%88-%D8%AA%D8%A7%D8%AE%D8%AA-%D9%88-%D8%AA%D8%A7%D8%B2-%D8%B6%D8%AD%D9%91%D8%A7%D9%83-%D8%A8%D9%86-%D9%82%D9%8A%D8%B3'),
(30, '( خطبه 30 ) خطبه درباره قتل عثمان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-30/%D8%AE%D8%B7%D8%A8%D9%87-30-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%82%D8%AA%D9%84-%D8%B9%D8%AB%D9%85%D8%A7%D9%86'),
(31, '( خطبه 31 ) خطبه قبل از جنگ جمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-31/%D8%AE%D8%B7%D8%A8%D9%87-31-%D8%AE%D8%B7%D8%A8%D9%87-%D9%82%D8%A8%D9%84-%D8%A7%D8%B2-%D8%AC%D9%86%DA%AF-%D8%AC%D9%85%D9%84'),
(32, '( خطبه 32 ) خطبه در نكوهش زمان خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-32/%D8%AE%D8%B7%D8%A8%D9%87-32-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%B2%D9%85%D8%A7%D9%86-%D8%AE%D9%88%D8%AF'),
(33, '( خطبه 33 ) خطبه به هنگام خروجش براى جنگ با اهل بصره ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-33/%D8%AE%D8%B7%D8%A8%D9%87-33-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%AE%D8%B1%D9%88%D8%AC%D8%B4-%D8%A8%D8%B1%D8%A7%D9%89-%D8%AC%D9%86%DA%AF-%D8%A8%D8%A7-%D8%A7%D9%87%D9%84-%D8%A8%D8%B5%D8%B1%D9%87'),
(34, '( خطبه 34 ) خطبه در تحريك مردم براى جنگ با شاميان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-34/%D8%AE%D8%B7%D8%A8%D9%87-34-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%AD%D8%B1%D9%8A%D9%83-%D9%85%D8%B1%D8%AF%D9%85-%D8%A8%D8%B1%D8%A7%D9%89-%D8%AC%D9%86%DA%AF-%D8%A8%D8%A7-%D8%B4%D8%A7%D9%85%D9%8A%D8%A7%D9%86'),
(35, '( خطبه 35 ) خطبه بعد از جريان حكميت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-35/%D8%AE%D8%B7%D8%A8%D9%87-35-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D8%AC%D8%B1%D9%8A%D8%A7%D9%86-%D8%AD%D9%83%D9%85%D9%8A%D8%AA'),
(36, '( خطبه 36 ) خطبه در ترساندن اهل نهروان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-36/%D8%AE%D8%B7%D8%A8%D9%87-36-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B1%D8%B3%D8%A7%D9%86%D8%AF%D9%86-%D8%A7%D9%87%D9%84-%D9%86%D9%87%D8%B1%D9%88%D8%A7%D9%86'),
(37, '( خطبه 37 ) خطبه در ذكر فضائل خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-37/%D8%AE%D8%B7%D8%A8%D9%87-37-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B0%D9%83%D8%B1-%D9%81%D8%B6%D8%A7%D8%A6%D9%84-%D8%AE%D9%88%D8%AF'),
(38, '( خطبه 38 ) خطبه در تعريف شبهه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-38/%D8%AE%D8%B7%D8%A8%D9%87-38-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B9%D8%B1%D9%8A%D9%81-%D8%B4%D8%A8%D9%87%D9%87'),
(39, '( خطبه 39 ) خطبه در نكوهش ياران، و دعوت به جهاد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-39/%D8%AE%D8%B7%D8%A8%D9%87-39-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%8C-%D9%88-%D8%AF%D8%B9%D9%88%D8%AA-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF'),
(40, '( خطبه 40 ) خطبه زمانى كه شنيد خوارج نهروان مىگويند: لا حُكْمُ اِلاّ لِلّه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-40/%D8%AE%D8%B7%D8%A8%D9%87-40-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%B4%D9%86%D9%8A%D8%AF-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D9%86%D9%87%D8%B1%D9%88%D8%A7%D9%86-%D9%85%D9%89%DA%AF%D9%88%D9%8A%D9%86%D8%AF:-%D9%84%D8%A7-%D8%AD%D9%8F%D9%83%D9%92%D9%85%D9%8F-%D8%A7%D9%90%D9%84%D8%A7%D9%91-%D9%84%D9%90%D9%84%D9%91%D9%87'),
(41, '( خطبه 41 ) خطبه در تحذير از مكر و حيله ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-41/%D8%AE%D8%B7%D8%A8%D9%87-41-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%AD%D8%B0%D9%8A%D8%B1-%D8%A7%D8%B2-%D9%85%D9%83%D8%B1-%D9%88-%D8%AD%D9%8A%D9%84%D9%87'),
(42, '( خطبه 42 ) خطبه در نكوهش آرزوى دراز و پيروزى از هواى نفس ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-42/%D8%AE%D8%B7%D8%A8%D9%87-42-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A2%D8%B1%D8%B2%D9%88%D9%89-%D8%AF%D8%B1%D8%A7%D8%B2-%D9%88-%D9%BE%D9%8A%D8%B1%D9%88%D8%B2%D9%89-%D8%A7%D8%B2-%D9%87%D9%88%D8%A7%D9%89--%D9%86%D9%81%D8%B3'),
(43, '( خطبه 43 ) خطبه پس از آنكه جرير بن عبداللّه بَجَلى را براى بيعت گرفتن از معاويه فرستاد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-43/%D8%AE%D8%B7%D8%A8%D9%87-43-%D8%AE%D8%B7%D8%A8%D9%87-%D9%BE%D8%B3-%D8%A7%D8%B2-%D8%A2%D9%86%D9%83%D9%87-%D8%AC%D8%B1%D9%8A%D8%B1-%D8%A8%D9%86-%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%84%D9%91%D9%87-%D8%A8%D9%8E%D8%AC%D9%8E%D9%84%D9%89-%D8%B1%D8%A7-%D8%A8%D8%B1%D8%A7%D9%89-%D8%A8%D9%8A%D8%B9%D8%AA-%DA%AF%D8%B1%D9%81%D8%AA%D9%86-%D8%A7%D8%B2-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87-%D9%81%D8%B1%D8%B3%D8%AA%D8%A7%D8%AF'),
(44, '( خطبه 44 ) خطبه وقتى كه مصلقه بن هُبَيره شيبانى به سوى معاويه فرار كرد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-44/%D8%AE%D8%B7%D8%A8%D9%87-44-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D9%85%D8%B5%D9%84%D9%82%D9%87-%D8%A8%D9%86--%D9%87%D9%8F%D8%A8%D9%8E%D9%8A%D8%B1%D9%87-%D8%B4%D9%8A%D8%A8%D8%A7%D9%86%D9%89-%D8%A8%D9%87-%D8%B3%D9%88%D9%89-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87-%D9%81%D8%B1%D8%A7%D8%B1-%D9%83%D8%B1%D8%AF'),
(45, '( خطبه 45 ) خطبه در روز فطر در نكوهش دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-45/%D8%AE%D8%B7%D8%A8%D9%87-45-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B1%D9%88%D8%B2-%D9%81%D8%B7%D8%B1-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%AF%D9%86%D9%8A%D8%A7'),
(46, '( خطبه 46 ) خطبه وقتى كه براى حركت به شام تصميم گرفت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-46/%D8%AE%D8%B7%D8%A8%D9%87-46-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D8%A8%D8%B1%D8%A7%D9%89-%D8%AD%D8%B1%D9%83%D8%AA-%D8%A8%D9%87-%D8%B4%D8%A7%D9%85-%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%DA%AF%D8%B1%D9%81%D8%AA'),
(47, '( خطبه 47 ) خطبه درباره كوفه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-47/%D8%AE%D8%B7%D8%A8%D9%87-47-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%83%D9%88%D9%81%D9%87'),
(48, '( خطبه 48 ) خطبه زمان رفتن به سوى شام ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-48/%D8%AE%D8%B7%D8%A8%D9%87-48-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86-%D8%B1%D9%81%D8%AA%D9%86-%D8%A8%D9%87-%D8%B3%D9%88%D9%89-%D8%B4%D8%A7%D9%85'),
(49, '( خطبه 49 ) خطبه در توحيد الهى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-49/%D8%AE%D8%B7%D8%A8%D9%87-49-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89'),
(50, '( خطبه 50 ) خطبه در بيان فتنه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-50/%D8%AE%D8%B7%D8%A8%D9%87-50-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%81%D8%AA%D9%86%D9%87'),
(51, '( خطبه 51 ) خطبه زمانى كه ارتش معاويه در جنگ صفين آب را بر ياران آنحضرت بست ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-51/%D8%AE%D8%B7%D8%A8%D9%87-51-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%A7%D8%B1%D8%AA%D8%B4-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87-%D8%AF%D8%B1-%D8%AC%D9%86%DA%AF-%D8%B5%D9%81%D9%8A%D9%86-%D8%A2%D8%A8-%D8%B1%D8%A7-%D8%A8%D8%B1-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%A2%D9%86%D8%AD%D8%B6%D8%B1%D8%AA-%D8%A8%D8%B3%D8%AA'),
(52, '( خطبه 52 ) خطبه در بىوفايى دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-52/%D8%AE%D8%B7%D8%A8%D9%87-52-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%89%D9%88%D9%81%D8%A7%D9%8A%D9%89-%D8%AF%D9%86%D9%8A%D8%A7'),
(53, '( خطبه 53 ) خطبه در مسأله بيعت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-53/%D8%AE%D8%B7%D8%A8%D9%87-53-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%85%D8%B3%D8%A3%D9%84%D9%87-%D8%A8%D9%8A%D8%B9%D8%AA'),
(54, '( خطبه 54 ) خطبه وقتىكه به نظر يارانش در اجازه براى آغاز جنگ صفّين تأخير نمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-54/%D8%AE%D8%B7%D8%A8%D9%87-54-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89%D9%83%D9%87-%D8%A8%D9%87-%D9%86%D8%B8%D8%B1-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D8%AF%D8%B1-%D8%A7%D8%AC%D8%A7%D8%B2%D9%87-%D8%A8%D8%B1%D8%A7%D9%89-%D8%A2%D8%BA%D8%A7%D8%B2-%D8%AC%D9%86%DA%AF-%D8%B5%D9%81%D9%91%D9%8A%D9%86-%D8%AA%D8%A3%D8%AE%D9%8A%D8%B1-%D9%86%D9%85%D9%88%D8%AF'),
(55, '( خطبه 55 ) خطبه در مقايسه ياران پيامبر با ياران خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-55/%D8%AE%D8%B7%D8%A8%D9%87-55-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%85%D9%82%D8%A7%D9%8A%D8%B3%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D8%A8%D8%A7-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%AE%D9%88%D8%AF'),
(56, '( خطبه 56 ) خطبه در وصف معاويه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-56/%D8%AE%D8%B7%D8%A8%D9%87-56-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87'),
(57, '( خطبه 57 ) خطبه در خطاب به خوارج نهروان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-57/%D8%AE%D8%B7%D8%A8%D9%87-57-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AE%D8%B7%D8%A7%D8%A8-%D8%A8%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D9%86%D9%87%D8%B1%D9%88%D8%A7%D9%86'),
(58, '( خطبه 58 ) خطبه زمانى كه عزم بر جنگ خوارج داشت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-58/%D8%AE%D8%B7%D8%A8%D9%87-58-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%B9%D8%B2%D9%85-%D8%A8%D8%B1-%D8%AC%D9%86%DA%AF-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D8%AF%D8%A7%D8%B4%D8%AA'),
(59, '( خطبه 59 ) خطبه وقتى كه خوارج به قتل رسيدند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-59/%D8%AE%D8%B7%D8%A8%D9%87-59-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D8%A8%D9%87-%D9%82%D8%AA%D9%84-%D8%B1%D8%B3%D9%8A%D8%AF%D9%86%D8%AF'),
(60, '( خطبه 60 ) خطبه درباره خوارج ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-60/%D8%AE%D8%B7%D8%A8%D9%87-60-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC'),
(61, '( خطبه 61 ) خطبه زمانى كه او را از ترور ترساندند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-61/%D8%AE%D8%B7%D8%A8%D9%87-61-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%A7%D9%88-%D8%B1%D8%A7-%D8%A7%D8%B2-%D8%AA%D8%B1%D9%88%D8%B1-%D8%AA%D8%B1%D8%B3%D8%A7%D9%86%D8%AF%D9%86%D8%AF'),
(62, '( خطبه 62 ) خطبه در نكوهش دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-62/%D8%AE%D8%B7%D8%A8%D9%87-62-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%AF%D9%86%D9%8A%D8%A7'),
(63, '( خطبه 63 ) خطبه در تشويق به عمل صالح ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-63/%D8%AE%D8%B7%D8%A8%D9%87-63-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B4%D9%88%D9%8A%D9%82-%D8%A8%D9%87-%D8%B9%D9%85%D9%84-%D8%B5%D8%A7%D9%84%D8%AD'),
(64, '( خطبه 64 ) خطبه در توحيد الهى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-64/%D8%AE%D8%B7%D8%A8%D9%87-64-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89'),
(65, '( خطبه 65 ) خطبه در آداب جنگ ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-65/%D8%AE%D8%B7%D8%A8%D9%87-65-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A2%D8%AF%D8%A7%D8%A8-%D8%AC%D9%86%DA%AF'),
(66, '( خطبه 66 ) خطبه در حق انصار ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-66/%D8%AE%D8%B7%D8%A8%D9%87-66-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AD%D9%82-%D8%A7%D9%86%D8%B5%D8%A7%D8%B1'),
(67, '( خطبه 67 ) خطبه وقتى كه امارت مصر را به محمد بن ابوبكر واگذاشت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-67/%D8%AE%D8%B7%D8%A8%D9%87-67-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D8%A7%D9%85%D8%A7%D8%B1%D8%AA-%D9%85%D8%B5%D8%B1-%D8%B1%D8%A7-%D8%A8%D9%87-%D9%85%D8%AD%D9%85%D8%AF-%D8%A8%D9%86-%D8%A7%D8%A8%D9%88%D8%A8%D9%83%D8%B1-%D9%88%D8%A7%DA%AF%D8%B0%D8%A7%D8%B4%D8%AA'),
(68, '( خطبه 68 ) خطبه در سرزنش اصحاب سست پيمان خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-68/%D8%AE%D8%B7%D8%A8%D9%87-68-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D8%B1%D8%B2%D9%86%D8%B4-%D8%A7%D8%B5%D8%AD%D8%A7%D8%A8-%D8%B3%D8%B3%D8%AA-%D9%BE%D9%8A%D9%85%D8%A7%D9%86-%D8%AE%D9%88%D8%AF'),
(69, '( خطبه 69 ) خطبه سحرگاه روزى كه ضربت به فرق مباركش رسيد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-69/%D8%AE%D8%B7%D8%A8%D9%87-69-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B3%D8%AD%D8%B1%DA%AF%D8%A7%D9%87-%D8%B1%D9%88%D8%B2%D9%89-%D9%83%D9%87-%D8%B6%D8%B1%D8%A8%D8%AA-%D8%A8%D9%87-%D9%81%D8%B1%D9%82-%D9%85%D8%A8%D8%A7%D8%B1%D9%83%D8%B4-%D8%B1%D8%B3%D9%8A%D8%AF'),
(70, '( خطبه 70 ) خطبه در سرزنش اهل عراق ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-70/%D8%AE%D8%B7%D8%A8%D9%87-70-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D8%B1%D8%B2%D9%86%D8%B4-%D8%A7%D9%87%D9%84-%D8%B9%D8%B1%D8%A7%D9%82'),
(71, '( خطبه 71 ) خطبه در آن درود فرستادن به پيامبر(صلى الله عليه وآله) را تعليم مىدهد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-71/%D8%AE%D8%B7%D8%A8%D9%87-71-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A2%D9%86-%D8%AF%D8%B1%D9%88%D8%AF-%D9%81%D8%B1%D8%B3%D8%AA%D8%A7%D8%AF%D9%86-%D8%A8%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)-%D8%B1%D8%A7-%D8%AA%D8%B9%D9%84%D9%8A%D9%85-%D9%85%D9%89%D8%AF%D9%87%D8%AF'),
(72, '( خطبه 72 ) خطبه در بصره درباره مروان بن حَكَم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-72/%D8%AE%D8%B7%D8%A8%D9%87-72-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D8%B5%D8%B1%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%85%D8%B1%D9%88%D8%A7%D9%86-%D8%A8%D9%86-%D8%AD%D9%8E%D9%83%D9%8E%D9%85'),
(73, '( خطبه 73 ) خطبه زمانى كه شوراى خلافت قصد بيعت با عثمان كرد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-73/%D8%AE%D8%B7%D8%A8%D9%87-73-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%B4%D9%88%D8%B1%D8%A7%D9%89-%D8%AE%D9%84%D8%A7%D9%81%D8%AA-%D9%82%D8%B5%D8%AF-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%A8%D8%A7-%D8%B9%D8%AB%D9%85%D8%A7%D9%86-%D9%83%D8%B1%D8%AF'),
(74, '( خطبه 74 ) خطبه زمانى كه شنيد بنىاميّه او را متهم به قتل عثمان مىكنند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-74/%D8%AE%D8%B7%D8%A8%D9%87-74-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%B4%D9%86%D9%8A%D8%AF-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%91%D9%87-%D8%A7%D9%88-%D8%B1%D8%A7-%D9%85%D8%AA%D9%87%D9%85-%D8%A8%D9%87-%D9%82%D8%AA%D9%84-%D8%B9%D8%AB%D9%85%D8%A7%D9%86--%D9%85%D9%89%D9%83%D9%86%D9%86%D8%AF'),
(75, '( خطبه 75 ) خطبه در تشويق به عمل صالح ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-75/%D8%AE%D8%B7%D8%A8%D9%87-75-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B4%D9%88%D9%8A%D9%82-%D8%A8%D9%87-%D8%B9%D9%85%D9%84-%D8%B5%D8%A7%D9%84%D8%AD'),
(76, '( خطبه 76 ) خطبه هنگامىكه سعيد بن عاص حق او را بازداشت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-76/%D8%AE%D8%B7%D8%A8%D9%87-76-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89%D9%83%D9%87-%D8%B3%D8%B9%D9%8A%D8%AF-%D8%A8%D9%86-%D8%B9%D8%A7%D8%B5-%D8%AD%D9%82-%D8%A7%D9%88-%D8%B1%D8%A7-%D8%A8%D8%A7%D8%B2%D8%AF%D8%A7%D8%B4%D8%AA'),
(77, '( خطبه 77 ) خطبه از دعاهاى آنحضرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-77/%D8%AE%D8%B7%D8%A8%D9%87-77-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A7%D8%B2-%D8%AF%D8%B9%D8%A7%D9%87%D8%A7%D9%89-%D8%A2%D9%86%D8%AD%D8%B6%D8%B1%D8%AA'),
(78, '( خطبه 78 ) خطبه وقتى كه قصد حركت به سوى خوارج نمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-78/%D8%AE%D8%B7%D8%A8%D9%87-78-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D9%82%D8%B5%D8%AF-%D8%AD%D8%B1%D9%83%D8%AA-%D8%A8%D9%87-%D8%B3%D9%88%D9%89-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D9%86%D9%85%D9%88%D8%AF'),
(79, '( خطبه 79 ) خطبه پس از پايان جنگ جمل در مذمّت زنان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-79/%D8%AE%D8%B7%D8%A8%D9%87-79-%D8%AE%D8%B7%D8%A8%D9%87-%D9%BE%D8%B3-%D8%A7%D8%B2-%D9%BE%D8%A7%D9%8A%D8%A7%D9%86-%D8%AC%D9%86%DA%AF-%D8%AC%D9%85%D9%84-%D8%AF%D8%B1-%D9%85%D8%B0%D9%85%D9%91%D8%AA-%D8%B2%D9%86%D8%A7%D9%86'),
(80, '( خطبه 80 ) خطبه درباره زهد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-80/%D8%AE%D8%B7%D8%A8%D9%87-80-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%B2%D9%87%D8%AF'),
(81, '( خطبه 81 ) خطبه در وصف دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-81/%D8%AE%D8%B7%D8%A8%D9%87-81-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D8%AF%D9%86%D9%8A%D8%A7'),
(82, '( خطبه 82 ) خطبه موسوم به «غرّاء» كه از خطبههاى اعجابانگيز اوست ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-82/%D8%AE%D8%B7%D8%A8%D9%87-82-%D8%AE%D8%B7%D8%A8%D9%87-%D9%85%D9%88%D8%B3%D9%88%D9%85-%D8%A8%D9%87-%C2%AB%D8%BA%D8%B1%D9%91%D8%A7%D8%A1%C2%BB-%D9%83%D9%87-%D8%A7%D8%B2-%D8%AE%D8%B7%D8%A8%D9%87%D9%87%D8%A7%D9%89-%D8%A7%D8%B9%D8%AC%D8%A7%D8%A8%D8%A7%D9%86%DA%AF%D9%8A%D8%B2-%D8%A7%D9%88%D8%B3%D8%AA'),
(83, '( خطبه 83 ) خطبه درباره عمروعاص ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-83/%D8%AE%D8%B7%D8%A8%D9%87-83-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%B9%D9%85%D8%B1%D9%88%D8%B9%D8%A7%D8%B5'),
(84, '( خطبه 84 ) خطبه در صفات خداوند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-84/%D8%AE%D8%B7%D8%A8%D9%87-84-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B5%D9%81%D8%A7%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF'),
(85, '( خطبه 85 ) خطبه در توحيد الهى و سفارش به تقوا و مشورت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-85/%D8%AE%D8%B7%D8%A8%D9%87-85-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7-%D9%88-%D9%85%D8%B4%D9%88%D8%B1%D8%AA'),
(86, '( خطبه 86 ) خطبه در وصف پرهيزكاران و فاسقان و مقام خاندان نبوت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-86/%D8%AE%D8%B7%D8%A8%D9%87-86-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D9%BE%D8%B1%D9%87%D9%8A%D8%B2%D9%83%D8%A7%D8%B1%D8%A7%D9%86-%D9%88-%D9%81%D8%A7%D8%B3%D9%82%D8%A7%D9%86-%D9%88-%D9%85%D9%82%D8%A7%D9%85-%D8%AE%D8%A7%D9%86%D8%AF%D8%A7%D9%86-%D9%86%D8%A8%D9%88%D8%AA'),
(87, '( خطبه 87 ) خطبه در بيان هلاكت مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-87/%D8%AE%D8%B7%D8%A8%D9%87-87-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%87%D9%84%D8%A7%D9%83%D8%AA-%D9%85%D8%B1%D8%AF%D9%85'),
(88, '( خطبه 88 ) خطبه در حال مردم پيش از بعثت و پس از آن ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-88/%D8%AE%D8%B7%D8%A8%D9%87-88-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AD%D8%A7%D9%84-%D9%85%D8%B1%D8%AF%D9%85-%D9%BE%D9%8A%D8%B4-%D8%A7%D8%B2-%D8%A8%D8%B9%D8%AB%D8%AA-%D9%88-%D9%BE%D8%B3-%D8%A7%D8%B2-%D8%A2%D9%86'),
(89, '( خطبه 89 ) خطبه در توحيد الهى و پند و اندرز ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-89/%D8%AE%D8%B7%D8%A8%D9%87-89-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2'),
(90, '( خطبه 90 ) خطبه معروف به خطبه اشباح ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-90/%D8%AE%D8%B7%D8%A8%D9%87-90-%D8%AE%D8%B7%D8%A8%D9%87-%D9%85%D8%B9%D8%B1%D9%88%D9%81-%D8%A8%D9%87-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A7%D8%B4%D8%A8%D8%A7%D8%AD'),
(91, '( خطبه 91 ) خطبه به هنگامى كه مردم پس از كشته شدن عثمان خواستند با او بيعت كنند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-91/%D8%AE%D8%B7%D8%A8%D9%87-91-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89-%D9%83%D9%87-%D9%85%D8%B1%D8%AF%D9%85-%D9%BE%D8%B3-%D8%A7%D8%B2-%D9%83%D8%B4%D8%AA%D9%87-%D8%B4%D8%AF%D9%86-%D8%B9%D8%AB%D9%85%D8%A7%D9%86-%D8%AE%D9%88%D8%A7%D8%B3%D8%AA%D9%86%D8%AF-%D8%A8%D8%A7-%D8%A7%D9%88-%D8%A8%D9%8A%D8%B9%D8%AA-%D9%83%D9%86%D9%86%D8%AF'),
(92, '( خطبه 92 ) خطبه در بيان فضل و علم خود، و خبر از فتنه بنىاميه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-92/%D8%AE%D8%B7%D8%A8%D9%87-92-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%81%D8%B6%D9%84-%D9%88-%D8%B9%D9%84%D9%85-%D8%AE%D9%88%D8%AF%D8%8C-%D9%88-%D8%AE%D8%A8%D8%B1-%D8%A7%D8%B2-%D9%81%D8%AA%D9%86%D9%87-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%87'),
(93, '( خطبه 93 ) خطبه در فضل رسول اكرم(صلى الله عليه وآله) و پند و اندرز ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-93/%D8%AE%D8%B7%D8%A8%D9%87-93-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D8%B6%D9%84-%D8%B1%D8%B3%D9%88%D9%84-%D8%A7%D9%83%D8%B1%D9%85(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)-%D9%88-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2'),
(94, '( خطبه 94 ) خطبه در حال مردم هنگام بعثت پيامبر(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-94/%D8%AE%D8%B7%D8%A8%D9%87-94-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AD%D8%A7%D9%84-%D9%85%D8%B1%D8%AF%D9%85-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%A8%D8%B9%D8%AB%D8%AA-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(95, '( خطبه 95 ) خطبه درباره پيامبر(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-95/%D8%AE%D8%B7%D8%A8%D9%87-95-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(96, '( خطبه 96 ) خطبه در مقايسه ياران خود با ياران رسول خدا(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-96/%D8%AE%D8%B7%D8%A8%D9%87-96-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%85%D9%82%D8%A7%D9%8A%D8%B3%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%AE%D9%88%D8%AF-%D8%A8%D8%A7-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%B1%D8%B3%D9%88%D9%84-%D8%AE%D8%AF%D8%A7(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(97, '( خطبه 97 ) خطبه در ستم بنىاميّه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-97/%D8%AE%D8%B7%D8%A8%D9%87-97-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D8%AA%D9%85-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%91%D9%87'),
(98, '( خطبه 98 ) خطبه در گريز از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-98/%D8%AE%D8%B7%D8%A8%D9%87-98-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%DA%AF%D8%B1%D9%8A%D8%B2-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(99, '( خطبه 99 ) خطبه درباره پيامبر و خاندان او ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-99/%D8%AE%D8%B7%D8%A8%D9%87-99-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D8%AE%D8%A7%D9%86%D8%AF%D8%A7%D9%86-%D8%A7%D9%88'),
(100, '( خطبه 100 ) خطبه مشتمل بر خبر از حوادث ناگوار ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-100/%D8%AE%D8%B7%D8%A8%D9%87-100-%D8%AE%D8%B7%D8%A8%D9%87-%D9%85%D8%B4%D8%AA%D9%85%D9%84-%D8%A8%D8%B1-%D8%AE%D8%A8%D8%B1-%D8%A7%D8%B2-%D8%AD%D9%88%D8%A7%D8%AF%D8%AB-%D9%86%D8%A7%DA%AF%D9%88%D8%A7%D8%B1'),
(101, '( خطبه 101 ) خطبه در زمينه سختىها ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-101/%D8%AE%D8%B7%D8%A8%D9%87-101-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B2%D9%85%D9%8A%D9%86%D9%87-%D8%B3%D8%AE%D8%AA%D9%89%D9%87%D8%A7'),
(102, '( خطبه 102 ) خطبه در تشويق به زهد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-102/%D8%AE%D8%B7%D8%A8%D9%87-102-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B4%D9%88%D9%8A%D9%82-%D8%A8%D9%87-%D8%B2%D9%87%D8%AF'),
(103, '( خطبه 103 ) خطبه درباره پيامبر و فضيلت خويش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-103/%D8%AE%D8%B7%D8%A8%D9%87-103-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D9%81%D8%B6%D9%8A%D9%84%D8%AA-%D8%AE%D9%88%D9%8A%D8%B4'),
(104, '( خطبه 104 ) خطبه در وصف پيامبر(صلى الله عليه وآله) و تهديد بنىاميّه و پند به مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-104/%D8%AE%D8%B7%D8%A8%D9%87-104-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)-%D9%88-%D8%AA%D9%87%D8%AF%D9%8A%D8%AF-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%91%D9%87-%D9%88-%D9%BE%D9%86%D8%AF-%D8%A8%D9%87-%D9%85%D8%B1%D8%AF%D9%85'),
(105, '( خطبه 105 ) خطبه در زمينه برترى اسلام، و توصيف پيامبر اكرم، آنگاه توبيخ اصحاب ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-105/%D8%AE%D8%B7%D8%A8%D9%87-105-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B2%D9%85%D9%8A%D9%86%D9%87-%D8%A8%D8%B1%D8%AA%D8%B1%D9%89-%D8%A7%D8%B3%D9%84%D8%A7%D9%85%D8%8C-%D9%88-%D8%AA%D9%88%D8%B5%D9%8A%D9%81-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D8%A7%D9%83%D8%B1%D9%85%D8%8C-%D8%A2%D9%86%DA%AF%D8%A7%D9%87-%D8%AA%D9%88%D8%A8%D9%8A%D8%AE-%D8%A7%D8%B5%D8%AD%D8%A7%D8%A8'),
(106, '( خطبه 106 ) خطبه در يكى از ايّام صفّين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-106/%D8%AE%D8%B7%D8%A8%D9%87-106-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%8A%D9%83%D9%89-%D8%A7%D8%B2-%D8%A7%D9%8A%D9%91%D8%A7%D9%85-%D8%B5%D9%81%D9%91%D9%8A%D9%86'),
(107, '( خطبه 107 ) خطبه در پيشگويى از حوادث آينده ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-107/%D8%AE%D8%B7%D8%A8%D9%87-107-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D9%8A%D8%B4%DA%AF%D9%88%D9%8A%D9%89-%D8%A7%D8%B2-%D8%AD%D9%88%D8%A7%D8%AF%D8%AB-%D8%A2%D9%8A%D9%86%D8%AF%D9%87'),
(108, '( خطبه 108 ) خطبه درباره قدرت خداوند و حوادث مرگ و قيامت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-108/%D8%AE%D8%B7%D8%A8%D9%87-108-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%82%D8%AF%D8%B1%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF-%D9%88-%D8%AD%D9%88%D8%A7%D8%AF%D8%AB-%D9%85%D8%B1%DA%AF-%D9%88-%D9%82%D9%8A%D8%A7%D9%85%D8%AA'),
(109, '( خطبه 109 ) خطبه چيزى كه متوسلان به خداوند پاك و بزرگ به آن توسل جستند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-109/%D8%AE%D8%B7%D8%A8%D9%87-109-%D8%AE%D8%B7%D8%A8%D9%87-%DA%86%D9%8A%D8%B2%D9%89-%D9%83%D9%87-%D9%85%D8%AA%D9%88%D8%B3%D9%84%D8%A7%D9%86-%D8%A8%D9%87-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF-%D9%BE%D8%A7%D9%83-%D9%88-%D8%A8%D8%B2%D8%B1%DA%AF-%D8%A8%D9%87-%D8%A2%D9%86-%D8%AA%D9%88%D8%B3%D9%84-%D8%AC%D8%B3%D8%AA%D9%86%D8%AF'),
(110, '( خطبه 110 ) خطبه در نكوهش دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-110/%D8%AE%D8%B7%D8%A8%D9%87-110-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%AF%D9%86%D9%8A%D8%A7'),
(111, '( خطبه 111 ) خطبه درباره ملكالموت و قبض روح مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-111/%D8%AE%D8%B7%D8%A8%D9%87-111-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%85%D9%84%D9%83%D8%A7%D9%84%D9%85%D9%88%D8%AA-%D9%88-%D9%82%D8%A8%D8%B6-%D8%B1%D9%88%D8%AD-%D9%85%D8%B1%D8%AF%D9%85'),
(112, '( خطبه 112 ) خطبه در نكوهش دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-112/%D8%AE%D8%B7%D8%A8%D9%87-112-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%AF%D9%86%D9%8A%D8%A7'),
(113, '( خطبه 113 ) خطبه در پند و اندرز مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-113/%D8%AE%D8%B7%D8%A8%D9%87-113-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2-%D9%85%D8%B1%D8%AF%D9%85'),
(114, '( خطبه 114 ) خطبه در طلب باران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-114/%D8%AE%D8%B7%D8%A8%D9%87-114-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B7%D9%84%D8%A8-%D8%A8%D8%A7%D8%B1%D8%A7%D9%86'),
(115, '( خطبه 115 ) خطبه در اندرز به ياران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-115/%D8%AE%D8%B7%D8%A8%D9%87-115-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2-%D8%A8%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86'),
(116, '( خطبه 116 ) خطبه در نكوهش كسانى كه به مال و جان بُخل مىورزند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-116/%D8%AE%D8%B7%D8%A8%D9%87-116-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D9%83%D8%B3%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%A8%D9%87-%D9%85%D8%A7%D9%84-%D9%88-%D8%AC%D8%A7%D9%86-%D8%A8%D9%8F%D8%AE%D9%84-%D9%85%D9%89%D9%88%D8%B1%D8%B2%D9%86%D8%AF'),
(117, '( خطبه 117 ) خطبه درباره ياران شايسته خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-117/%D8%AE%D8%B7%D8%A8%D9%87-117-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%B4%D8%A7%D9%8A%D8%B3%D8%AA%D9%87-%D8%AE%D9%88%D8%AF'),
(118, '( خطبه 118 ) خطبه زمانىكه مردم را جمع نمود و آنان را به جهاد ترغيب فرمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-118/%D8%AE%D8%B7%D8%A8%D9%87-118-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89%D9%83%D9%87-%D9%85%D8%B1%D8%AF%D9%85-%D8%B1%D8%A7-%D8%AC%D9%85%D8%B9-%D9%86%D9%85%D9%88%D8%AF-%D9%88-%D8%A2%D9%86%D8%A7%D9%86-%D8%B1%D8%A7-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF-%D8%AA%D8%B1%D8%BA%D9%8A%D8%A8-%D9%81%D8%B1%D9%85%D9%88%D8%AF'),
(119, '( خطبه 119 ) خطبه در فضيلت خود و موعظه ياران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-119/%D8%AE%D8%B7%D8%A8%D9%87-119-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D8%B6%D9%8A%D9%84%D8%AA-%D8%AE%D9%88%D8%AF-%D9%88-%D9%85%D9%88%D8%B9%D8%B8%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86'),
(120, '( خطبه 120 ) خطبه بعد از ليلة الهرير ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-120/%D8%AE%D8%B7%D8%A8%D9%87-120-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D9%84%D9%8A%D9%84%D8%A9-%D8%A7%D9%84%D9%87%D8%B1%D9%8A%D8%B1'),
(121, '( خطبه 121 ) خطبه در خطاب به خوارج ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-121/%D8%AE%D8%B7%D8%A8%D9%87-121-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AE%D8%B7%D8%A7%D8%A8-%D8%A8%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC');
INSERT INTO `tbl_li_nahj` (`id`, `title`, `img`, `url`) VALUES
(122, '( خطبه 122 ) خطبه هنگام نبرد صفين به يارانش فرمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-122/%D8%AE%D8%B7%D8%A8%D9%87-122-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D9%86%D8%A8%D8%B1%D8%AF-%D8%B5%D9%81%D9%8A%D9%86-%D8%A8%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D9%81%D8%B1%D9%85%D9%88%D8%AF'),
(123, '( خطبه 123 ) خطبه در فرار ياران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-123/%D8%AE%D8%B7%D8%A8%D9%87-123-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D8%B1%D8%A7%D8%B1-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86'),
(124, '( خطبه 124 ) خطبه در ترغيب يارانش به جهاد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-124/%D8%AE%D8%B7%D8%A8%D9%87-124-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B1%D8%BA%D9%8A%D8%A8-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF'),
(125, '( خطبه 125 ) خطبه در رابطه با خوارج وقتى كه حكميت را انكار كردند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-125/%D8%AE%D8%B7%D8%A8%D9%87-125-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B1%D8%A7%D8%A8%D8%B7%D9%87-%D8%A8%D8%A7-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D9%88%D9%82%D8%AA%D9%89-%D9%83%D9%87-%D8%AD%D9%83%D9%85%D9%8A%D8%AA-%D8%B1%D8%A7-%D8%A7%D9%86%D9%83%D8%A7%D8%B1-%D9%83%D8%B1%D8%AF%D9%86%D8%AF'),
(126, '( خطبه 126 ) خطبه وقتى به او گفتند كه چرا در تقسيم بيتالمال ميان همه مساوات مىكند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-126/%D8%AE%D8%B7%D8%A8%D9%87-126-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D8%A8%D9%87-%D8%A7%D9%88-%DA%AF%D9%81%D8%AA%D9%86%D8%AF-%D9%83%D9%87-%DA%86%D8%B1%D8%A7-%D8%AF%D8%B1-%D8%AA%D9%82%D8%B3%D9%8A%D9%85-%D8%A8%D9%8A%D8%AA%D8%A7%D9%84%D9%85%D8%A7%D9%84-%D9%85%D9%8A%D8%A7%D9%86-%D9%87%D9%85%D9%87-%D9%85%D8%B3%D8%A7%D9%88%D8%A7%D8%AA-%D9%85%D9%89%D9%83%D9%86%D8%AF'),
(127, '( خطبه 127 ) خطبه باز هم به خوارج ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-127/%D8%AE%D8%B7%D8%A8%D9%87-127-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%A7%D8%B2-%D9%87%D9%85-%D8%A8%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC'),
(128, '( خطبه 128 ) خطبه از پيشامدها و فتنههاى بصره خبر مىدهد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-128/%D8%AE%D8%B7%D8%A8%D9%87-128-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A7%D8%B2-%D9%BE%D9%8A%D8%B4%D8%A7%D9%85%D8%AF%D9%87%D8%A7-%D9%88-%D9%81%D8%AA%D9%86%D9%87%D9%87%D8%A7%D9%89-%D8%A8%D8%B5%D8%B1%D9%87-%D8%AE%D8%A8%D8%B1-%D9%85%D9%89%D8%AF%D9%87%D8%AF'),
(129, '( خطبه 129 ) خطبه درباره پيمانهها و ترازوها ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-129/%D8%AE%D8%B7%D8%A8%D9%87-129-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%BE%D9%8A%D9%85%D8%A7%D9%86%D9%87%D9%87%D8%A7-%D9%88-%D8%AA%D8%B1%D8%A7%D8%B2%D9%88%D9%87%D8%A7'),
(130, '( خطبه 130 ) خطبه به ابوذر(رحمه الله) هنگامىكه او را به ربذه تبعيد كردند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-130/%D8%AE%D8%B7%D8%A8%D9%87-130-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D8%A7%D8%A8%D9%88%D8%B0%D8%B1(%D8%B1%D8%AD%D9%85%D9%87-%D8%A7%D9%84%D9%84%D9%87)-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89%D9%83%D9%87-%D8%A7%D9%88-%D8%B1%D8%A7-%D8%A8%D9%87-%D8%B1%D8%A8%D8%B0%D9%87-%D8%AA%D8%A8%D8%B9%D9%8A%D8%AF-%D9%83%D8%B1%D8%AF%D9%86%D8%AF'),
(131, '( خطبه 131 ) خطبه در فلسفه قبول حكومت و توصيف امام حق ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-131/%D8%AE%D8%B7%D8%A8%D9%87-131-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D9%84%D8%B3%D9%81%D9%87-%D9%82%D8%A8%D9%88%D9%84-%D8%AD%D9%83%D9%88%D9%85%D8%AA-%D9%88-%D8%AA%D9%88%D8%B5%D9%8A%D9%81-%D8%A7%D9%85%D8%A7%D9%85-%D8%AD%D9%82'),
(132, '( خطبه 132 ) خطبه در پند و اندرز و انديشيدن از مرگ ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-132/%D8%AE%D8%B7%D8%A8%D9%87-132-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2-%D9%88-%D8%A7%D9%86%D8%AF%D9%8A%D8%B4%D9%8A%D8%AF%D9%86-%D8%A7%D8%B2-%D9%85%D8%B1%DA%AF'),
(133, '( خطبه 133 ) خطبه در عظمت خداوند، قرآن، پيامبر و در رابطه با دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-133/%D8%AE%D8%B7%D8%A8%D9%87-133-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B9%D8%B8%D9%85%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF%D8%8C-%D9%82%D8%B1%D8%A2%D9%86%D8%8C-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D8%AF%D8%B1-%D8%B1%D8%A7%D8%A8%D8%B7%D9%87-%D8%A8%D8%A7-%D8%AF%D9%86%D9%8A%D8%A7'),
(134, '( خطبه 134 ) خطبه به عمر بن خطاب وقتى براى رفتن به جنگ با روميان با حضرت مشورت كرد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-134/%D8%AE%D8%B7%D8%A8%D9%87-134-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D8%B9%D9%85%D8%B1-%D8%A8%D9%86-%D8%AE%D8%B7%D8%A7%D8%A8-%D9%88%D9%82%D8%AA%D9%89-%D8%A8%D8%B1%D8%A7%D9%89-%D8%B1%D9%81%D8%AA%D9%86-%D8%A8%D9%87-%D8%AC%D9%86%DA%AF-%D8%A8%D8%A7-%D8%B1%D9%88%D9%85%D9%8A%D8%A7%D9%86-%D8%A8%D8%A7-%D8%AD%D8%B6%D8%B1%D8%AA-%D9%85%D8%B4%D9%88%D8%B1%D8%AA-%D9%83%D8%B1%D8%AF'),
(135, '( خطبه 135 ) خطبه وقتى بين آنحضرت و عثمان مشاجرهاى درگرفت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-135/%D8%AE%D8%B7%D8%A8%D9%87-135-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D8%A8%D9%8A%D9%86-%D8%A2%D9%86%D8%AD%D8%B6%D8%B1%D8%AA-%D9%88-%D8%B9%D8%AB%D9%85%D8%A7%D9%86-%D9%85%D8%B4%D8%A7%D8%AC%D8%B1%D9%87%D8%A7%D9%89-%D8%AF%D8%B1%DA%AF%D8%B1%D9%81%D8%AA'),
(136, '( خطبه 136 ) خطبه درباره بيعت خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-136/%D8%AE%D8%B7%D8%A8%D9%87-136-%D8%AE%D8%B7%D8%A8%D9%87--%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%AE%D9%88%D8%AF'),
(137, '( خطبه 137 ) خطبه درباره طلحه و زبير ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-137/%D8%AE%D8%B7%D8%A8%D9%87-137-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%B7%D9%84%D8%AD%D9%87-%D9%88-%D8%B2%D8%A8%D9%8A%D8%B1'),
(138, '( خطبه 138 ) خطبه در آن به فتنهها (و حكومت امام عصر(عليه السلام)) اشاره مىفرمايد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-138/%D8%AE%D8%B7%D8%A8%D9%87-138-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A2%D9%86-%D8%A8%D9%87-%D9%81%D8%AA%D9%86%D9%87%D9%87%D8%A7-(%D9%88-%D8%AD%D9%83%D9%88%D9%85%D8%AA-%D8%A7%D9%85%D8%A7%D9%85-%D8%B9%D8%B5%D8%B1(%D8%B9%D9%84%D9%8A%D9%87-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85))-%D8%A7%D8%B4%D8%A7%D8%B1%D9%87-%D9%85%D9%89%D9%81%D8%B1%D9%85%D8%A7%D9%8A%D8%AF'),
(139, '( خطبه 139 ) خطبه به هنگام شورا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-139/%D8%AE%D8%B7%D8%A8%D9%87-139-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%B4%D9%88%D8%B1%D8%A7'),
(140, '( خطبه 140 ) خطبه در نهى از غيبت مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-140/%D8%AE%D8%B7%D8%A8%D9%87-140-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%87%D9%89-%D8%A7%D8%B2-%D8%BA%D9%8A%D8%A8%D8%AA-%D9%85%D8%B1%D8%AF%D9%85'),
(141, '( خطبه 141 ) خطبه درباره نهى از غيبت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-141/%D8%AE%D8%B7%D8%A8%D9%87-141-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%86%D9%87%D9%89-%D8%A7%D8%B2-%D8%BA%D9%8A%D8%A8%D8%AA'),
(142, '( خطبه 142 ) خطبه درباره نيكى به نااهل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-142/%D8%AE%D8%B7%D8%A8%D9%87-142-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%86%D9%8A%D9%83%D9%89-%D8%A8%D9%87-%D9%86%D8%A7%D8%A7%D9%87%D9%84'),
(143, '( خطبه 143 ) خطبه در طلب ياران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-143/%D8%AE%D8%B7%D8%A8%D9%87-143-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B7%D9%84%D8%A8-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86'),
(144, '( خطبه 144 ) خطبه در بعثت پيامبر و فضل اهلبيت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-144/%D8%AE%D8%B7%D8%A8%D9%87-144-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D8%B9%D8%AB%D8%AA-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D9%81%D8%B6%D9%84-%D8%A7%D9%87%D9%84%D8%A8%D9%8A%D8%AA'),
(145, '( خطبه 145 ) خطبه در فناى دنيا و نكوهش بدعت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-145/%D8%AE%D8%B7%D8%A8%D9%87-145-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D9%86%D8%A7%D9%89-%D8%AF%D9%86%D9%8A%D8%A7-%D9%88-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A8%D8%AF%D8%B9%D8%AA'),
(146, '( خطبه 146 ) خطبه بهعمربنخطاب وقتىكه براى رفتن به جنگ ايرانيان با حضرت مشورت كرد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-146/%D8%AE%D8%B7%D8%A8%D9%87-146-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87%D8%B9%D9%85%D8%B1%D8%A8%D9%86%D8%AE%D8%B7%D8%A7%D8%A8-%D9%88%D9%82%D8%AA%D9%89%D9%83%D9%87-%D8%A8%D8%B1%D8%A7%D9%89-%D8%B1%D9%81%D8%AA%D9%86-%D8%A8%D9%87-%D8%AC%D9%86%DA%AF-%D8%A7%D9%8A%D8%B1%D8%A7%D9%86%D9%8A%D8%A7%D9%86-%D8%A8%D8%A7-%D8%AD%D8%B6%D8%B1%D8%AA-%D9%85%D8%B4%D9%88%D8%B1%D8%AA-%D9%83%D8%B1%D8%AF'),
(147, '( خطبه 147 ) خطبه در فلسفه بعثت، حوادث آينده و پند و اندرز ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-147/%D8%AE%D8%B7%D8%A8%D9%87-147-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D9%84%D8%B3%D9%81%D9%87-%D8%A8%D8%B9%D8%AB%D8%AA%D8%8C-%D8%AD%D9%88%D8%A7%D8%AF%D8%AB-%D8%A2%D9%8A%D9%86%D8%AF%D9%87-%D9%88-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2'),
(148, '( خطبه 148 ) خطبه درباره اهل بصره ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-148/%D8%AE%D8%B7%D8%A8%D9%87-148-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A7%D9%87%D9%84-%D8%A8%D8%B5%D8%B1%D9%87'),
(149, '( خطبه 149 ) خطبه پيش از درگذشت از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-149/%D8%AE%D8%B7%D8%A8%D9%87-149-%D8%AE%D8%B7%D8%A8%D9%87-%D9%BE%D9%8A%D8%B4-%D8%A7%D8%B2-%D8%AF%D8%B1%DA%AF%D8%B0%D8%B4%D8%AA-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(150, '( خطبه 150 ) خطبه در آن اشاره به فتنهها دارد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-150/%D8%AE%D8%B7%D8%A8%D9%87-150-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A2%D9%86-%D8%A7%D8%B4%D8%A7%D8%B1%D9%87-%D8%A8%D9%87-%D9%81%D8%AA%D9%86%D9%87%D9%87%D8%A7-%D8%AF%D8%A7%D8%B1%D8%AF'),
(151, '( خطبه 151 ) خطبه در تحذير از فتنهها ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-151/%D8%AE%D8%B7%D8%A8%D9%87-151-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%AD%D8%B0%D9%8A%D8%B1-%D8%A7%D8%B2-%D9%81%D8%AA%D9%86%D9%87%D9%87%D8%A7'),
(152, '( خطبه 152 ) خطبه در صفات خداوند و پيشوايان دين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-152/%D8%AE%D8%B7%D8%A8%D9%87-152-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B5%D9%81%D8%A7%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF-%D9%88-%D9%BE%D9%8A%D8%B4%D9%88%D8%A7%D9%8A%D8%A7%D9%86-%D8%AF%D9%8A%D9%86'),
(153, '( خطبه 153 ) خطبه در فضائل اهل بيت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-153/%D8%AE%D8%B7%D8%A8%D9%87-153-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D8%B6%D8%A7%D8%A6%D9%84-%D8%A7%D9%87%D9%84-%D8%A8%D9%8A%D8%AA'),
(154, '( خطبه 154 ) خطبه در آن شگفتيهاى آفرينش شبپره را بيان مىكند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-154/%D8%AE%D8%B7%D8%A8%D9%87-154-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A2%D9%86-%D8%B4%DA%AF%D9%81%D8%AA%D9%8A%D9%87%D8%A7%D9%89-%D8%A2%D9%81%D8%B1%D9%8A%D9%86%D8%B4-%D8%B4%D8%A8%D9%BE%D8%B1%D9%87-%D8%B1%D8%A7-%D8%A8%D9%8A%D8%A7%D9%86-%D9%85%D9%89%D9%83%D9%86%D8%AF'),
(155, '( خطبه 155 ) خطبه خطاب به اهل بصره در خبر از پيشامدهاى سخت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-155/%D8%AE%D8%B7%D8%A8%D9%87-155-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AE%D8%B7%D8%A7%D8%A8-%D8%A8%D9%87-%D8%A7%D9%87%D9%84-%D8%A8%D8%B5%D8%B1%D9%87-%D8%AF%D8%B1-%D8%AE%D8%A8%D8%B1-%D8%A7%D8%B2-%D9%BE%D9%8A%D8%B4%D8%A7%D9%85%D8%AF%D9%87%D8%A7%D9%89-%D8%B3%D8%AE%D8%AA'),
(156, '( خطبه 156 ) خطبه در تشويق به پرهيزكارى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-156/%D8%AE%D8%B7%D8%A8%D9%87-156-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B4%D9%88%D9%8A%D9%82-%D8%A8%D9%87-%D9%BE%D8%B1%D9%87%D9%8A%D8%B2%D9%83%D8%A7%D8%B1%D9%89'),
(157, '( خطبه 157 ) خطبه درباره پيامبر و قرآن، و دولت بنىاميّه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-157/%D8%AE%D8%B7%D8%A8%D9%87-157-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D9%82%D8%B1%D8%A2%D9%86%D8%8C-%D9%88-%D8%AF%D9%88%D9%84%D8%AA-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%91%D9%87'),
(158, '( خطبه 158 ) خطبه درباره خوشرفتارى خود با مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-158/%D8%AE%D8%B7%D8%A8%D9%87-158-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%AE%D9%88%D8%B4%D8%B1%D9%81%D8%AA%D8%A7%D8%B1%D9%89-%D8%AE%D9%88%D8%AF-%D8%A8%D8%A7-%D9%85%D8%B1%D8%AF%D9%85'),
(161, '( خطبه 159 ) خطبه در توحيد الهى و شرح حال برخى از پيامبران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-159/%D8%AE%D8%B7%D8%A8%D9%87-159-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D8%B4%D8%B1%D8%AD-%D8%AD%D8%A7%D9%84-%D8%A8%D8%B1%D8%AE%D9%89-%D8%A7%D8%B2-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1%D8%A7%D9%86'),
(162, '( خطبه 160 ) خطبه در وصف پيامبر و خاندان آن حضرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-160/%D8%AE%D8%B7%D8%A8%D9%87-160-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D8%AE%D8%A7%D9%86%D8%AF%D8%A7%D9%86-%D8%A2%D9%86-%D8%AD%D8%B6%D8%B1%D8%AA'),
(163, '( خطبه 161 ) خطبه در پاسخ يكى از يارانش كه پرسيد... ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-161/%D8%AE%D8%B7%D8%A8%D9%87-161-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D8%A7%D8%B3%D8%AE-%D9%8A%D9%83%D9%89-%D8%A7%D8%B2-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D9%83%D9%87--%D9%BE%D8%B1%D8%B3%D9%8A%D8%AF...'),
(164, '( خطبه 162 ) خطبه در توحيد الهى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-162/%D8%AE%D8%B7%D8%A8%D9%87-162-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89'),
(165, '( خطبه 163 ) خطبه به هنگامىكه نزد آنحضرت آمدند و از اعمال ناپسند عثمان شكايت كردند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-163/%D8%AE%D8%B7%D8%A8%D9%87-163-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85%D9%89%D9%83%D9%87-%D9%86%D8%B2%D8%AF-%D8%A2%D9%86%D8%AD%D8%B6%D8%B1%D8%AA-%D8%A2%D9%85%D8%AF%D9%86%D8%AF-%D9%88-%D8%A7%D8%B2-%D8%A7%D8%B9%D9%85%D8%A7%D9%84-%D9%86%D8%A7%D9%BE%D8%B3%D9%86%D8%AF-%D8%B9%D8%AB%D9%85%D8%A7%D9%86-%D8%B4%D9%83%D8%A7%D9%8A%D8%AA-%D9%83%D8%B1%D8%AF%D9%86%D8%AF'),
(166, '( خطبه 164 ) خطبه در شگفتىهاى آفرينش طاووس ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-164/%D8%AE%D8%B7%D8%A8%D9%87-164-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B4%DA%AF%D9%81%D8%AA%D9%89%D9%87%D8%A7%D9%89--%D8%A2%D9%81%D8%B1%D9%8A%D9%86%D8%B4-%D8%B7%D8%A7%D9%88%D9%88%D8%B3'),
(167, '( خطبه 165 ) خطبه در امر به الفت، و وصف بنىاميّه و ياران خويش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-165/%D8%AE%D8%B7%D8%A8%D9%87-165-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A7%D9%85%D8%B1-%D8%A8%D9%87-%D8%A7%D9%84%D9%81%D8%AA%D8%8C--%D9%88-%D9%88%D8%B5%D9%81-%D8%A8%D9%86%D9%89%D8%A7%D9%85%D9%8A%D9%91%D9%87-%D9%88-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%AE%D9%88%D9%8A%D8%B4'),
(168, '( خطبه 166 ) خطبه در ابتداى حكومتش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-166/%D8%AE%D8%B7%D8%A8%D9%87-166-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A7%D8%A8%D8%AA%D8%AF%D8%A7%D9%89-%D8%AD%D9%83%D9%88%D9%85%D8%AA%D8%B4'),
(169, '( خطبه 167 ) خطبه پس از بيعت با حضرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-167/%D8%AE%D8%B7%D8%A8%D9%87-167-%D8%AE%D8%B7%D8%A8%D9%87-%D9%BE%D8%B3-%D8%A7%D8%B2-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%A8%D8%A7-%D8%AD%D8%B6%D8%B1%D8%AA'),
(170, '( خطبه 168 ) خطبه به هنگام رفتن اصحاب جمل به شهر بصره ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-168/%D8%AE%D8%B7%D8%A8%D9%87-168-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%B1%D9%81%D8%AA%D9%86-%D8%A7%D8%B5%D8%AD%D8%A7%D8%A8-%D8%AC%D9%85%D9%84-%D8%A8%D9%87-%D8%B4%D9%87%D8%B1-%D8%A8%D8%B5%D8%B1%D9%87'),
(171, '( خطبه 169 ) خطبه چون به بصره نزديك شد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-169/%D8%AE%D8%B7%D8%A8%D9%87-169-%D8%AE%D8%B7%D8%A8%D9%87-%DA%86%D9%88%D9%86-%D8%A8%D9%87-%D8%A8%D8%B5%D8%B1%D9%87-%D9%86%D8%B2%D8%AF%D9%8A%D9%83-%D8%B4%D8%AF'),
(172, '( خطبه 170 ) خطبه به وقت تصميم رويارويى با لشگر معاويه در صفّين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-170/%D8%AE%D8%B7%D8%A8%D9%87-170-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%88%D9%82%D8%AA-%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D8%B1%D9%88%D9%8A%D8%A7%D8%B1%D9%88%D9%8A%D9%89-%D8%A8%D8%A7--%D9%84%D8%B4%DA%AF%D8%B1-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87-%D8%AF%D8%B1-%D8%B5%D9%81%D9%91%D9%8A%D9%86'),
(173, '( خطبه 171 ) خطبه در دفاع از حق خويش، و نكوهش اهل جمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-171/%D8%AE%D8%B7%D8%A8%D9%87-171-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AF%D9%81%D8%A7%D8%B9-%D8%A7%D8%B2-%D8%AD%D9%82-%D8%AE%D9%88%D9%8A%D8%B4%D8%8C-%D9%88-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A7%D9%87%D9%84-%D8%AC%D9%85%D9%84'),
(174, '( خطبه 172 ) خطبه در اينكه چه كسى شايسته خلافت است، و سفارش به تقوا و گريز از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-172/%D8%AE%D8%B7%D8%A8%D9%87-172-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A7%D9%8A%D9%86%D9%83%D9%87-%DA%86%D9%87-%D9%83%D8%B3%D9%89-%D8%B4%D8%A7%D9%8A%D8%B3%D8%AA%D9%87-%D8%AE%D9%84%D8%A7%D9%81%D8%AA-%D8%A7%D8%B3%D8%AA%D8%8C-%D9%88-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7-%D9%88-%DA%AF%D8%B1%D9%8A%D8%B2-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(175, '( خطبه 173 ) خطبه درباره طلحه بن عبيداللّه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-173/%D8%AE%D8%B7%D8%A8%D9%87-173-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%B7%D9%84%D8%AD%D9%87-%D8%A8%D9%86-%D8%B9%D8%A8%D9%8A%D8%AF%D8%A7%D9%84%D9%84%D9%91%D9%87'),
(176, '( خطبه 174 ) خطبه در پند و اندرز، و بيان نزديكى خود به پيامبر(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-174/%D8%AE%D8%B7%D8%A8%D9%87-174-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2%D8%8C-%D9%88-%D8%A8%D9%8A%D8%A7%D9%86-%D9%86%D8%B2%D8%AF%D9%8A%D9%83%D9%89-%D8%AE%D9%88%D8%AF-%D8%A8%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(177, '( خطبه 175 ) خطبه در پند و اندرز و فضل قرآن و نهى از بدعت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-175/%D8%AE%D8%B7%D8%A8%D9%87-175-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2-%D9%88-%D9%81%D8%B6%D9%84-%D9%82%D8%B1%D8%A2%D9%86-%D9%88-%D9%86%D9%87%D9%89-%D8%A7%D8%B2-%D8%A8%D8%AF%D8%B9%D8%AA'),
(178, '( خطبه 176 ) خطبه در باره حكمين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-176/%D8%AE%D8%B7%D8%A8%D9%87-176-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D8%A7%D8%B1%D9%87-%D8%AD%D9%83%D9%85%D9%8A%D9%86'),
(179, '( خطبه 177 ) خطبه در توحيد و تقواى الهى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-177/%D8%AE%D8%B7%D8%A8%D9%87-177-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D9%88-%D8%AA%D9%82%D9%88%D8%A7%D9%89-%D8%A7%D9%84%D9%87%D9%89'),
(180, '( خطبه 178 ) خطبه در پاسخ ذِغلِب يَمانى در رؤيت خداوند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-178/%D8%AE%D8%B7%D8%A8%D9%87-178-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D8%A7%D8%B3%D8%AE-%D8%B0%D9%90%D8%BA%D9%84%D9%90%D8%A8-%D9%8A%D9%8E%D9%85%D8%A7%D9%86%D9%89-%D8%AF%D8%B1-%D8%B1%D8%A4%D9%8A%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF'),
(181, '( خطبه 179 ) خطبه در نكوهش اصحابش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-179/%D8%AE%D8%B7%D8%A8%D9%87-179-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%A7%D8%B5%D8%AD%D8%A7%D8%A8%D8%B4'),
(182, '( خطبه 180 ) خطبه در حق كسانى كه قصد داشتند به خوارج ملحق شوند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-180/%D8%AE%D8%B7%D8%A8%D9%87-180-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AD%D9%82-%D9%83%D8%B3%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D9%82%D8%B5%D8%AF-%D8%AF%D8%A7%D8%B4%D8%AA%D9%86%D8%AF-%D8%A8%D9%87-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D9%85%D9%84%D8%AD%D9%82-%D8%B4%D9%88%D9%86%D8%AF'),
(183, '( خطبه 181 ) خطبه در توحيد الهى و يادى از ياران شهيد خود در صفّين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-181/%D8%AE%D8%B7%D8%A8%D9%87-181-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D9%8A%D8%A7%D8%AF%D9%89-%D8%A7%D8%B2-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%B4%D9%87%D9%8A%D8%AF-%D8%AE%D9%88%D8%AF-%D8%AF%D8%B1-%D8%B5%D9%81%D9%91%D9%8A%D9%86'),
(184, '( خطبه 182 ) خطبه در بيان قدرت خداوند و فضل قرآن و سفارش به تقوا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-182/%D8%AE%D8%B7%D8%A8%D9%87-182-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%82%D8%AF%D8%B1%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF-%D9%88-%D9%81%D8%B6%D9%84-%D9%82%D8%B1%D8%A2%D9%86-%D9%88-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7'),
(185, '( خطبه 183 ) خطبه به برج بن مُسهِر طائى كه از خوارج بود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-183/%D8%AE%D8%B7%D8%A8%D9%87-183-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D8%A8%D8%B1%D8%AC-%D8%A8%D9%86-%D9%85%D9%8F%D8%B3%D9%87%D9%90%D8%B1-%D8%B7%D8%A7%D8%A6%D9%89-%D9%83%D9%87-%D8%A7%D8%B2-%D8%AE%D9%88%D8%A7%D8%B1%D8%AC-%D8%A8%D9%88%D8%AF'),
(186, '( خطبه 184 ) خطبه به همّام دربارة پرهيزكاران ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-184/%D8%AE%D8%B7%D8%A8%D9%87-184-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%85%D9%91%D8%A7%D9%85-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D8%A9-%D9%BE%D8%B1%D9%87%D9%8A%D8%B2%D9%83%D8%A7%D8%B1%D8%A7%D9%86'),
(187, '( خطبه 185 ) خطبه درباره منافقين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-185/%D8%AE%D8%B7%D8%A8%D9%87-185-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%85%D9%86%D8%A7%D9%81%D9%82%D9%8A%D9%86'),
(188, '( خطبه 186 ) خطبه در ستايش خدا و پيامبر و پند و اندرز ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-186/%D8%AE%D8%B7%D8%A8%D9%87-186-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D8%AA%D8%A7%D9%8A%D8%B4-%D8%AE%D8%AF%D8%A7-%D9%88-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D9%BE%D9%86%D8%AF-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2'),
(189, '( خطبه 187 ) خطبه درباره بعثت پيامبر و گريز از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-187/%D8%AE%D8%B7%D8%A8%D9%87-187-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A8%D8%B9%D8%AB%D8%AA-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%DA%AF%D8%B1%D9%8A%D8%B2-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(190, '( خطبه 188 ) خطبه درباره اختصاص خود به پيامبر(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-188/%D8%AE%D8%B7%D8%A8%D9%87-188-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A7%D8%AE%D8%AA%D8%B5%D8%A7%D8%B5-%D8%AE%D9%88%D8%AF-%D8%A8%D9%87-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(191, '( خطبه 189 ) خطبه در سفارش به تقوا و وصف اسلام و پيامبر(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-189/%D8%AE%D8%B7%D8%A8%D9%87-189-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7-%D9%88-%D9%88%D8%B5%D9%81-%D8%A7%D8%B3%D9%84%D8%A7%D9%85-%D9%88-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(192, '( خطبه 190 ) خطبه در وصيّت به يارانش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-190/%D8%AE%D8%B7%D8%A8%D9%87-190-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%8A%D9%91%D8%AA-%D8%A8%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4'),
(193, '( خطبه 191 ) خطبه درباره معاويه ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-191/%D8%AE%D8%B7%D8%A8%D9%87-191-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%85%D8%B9%D8%A7%D9%88%D9%8A%D9%87'),
(194, '( خطبه 192 ) خطبه در پايدارى در راه حق ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-192/%D8%AE%D8%B7%D8%A8%D9%87-192-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%BE%D8%A7%D9%8A%D8%AF%D8%A7%D8%B1%D9%89-%D8%AF%D8%B1-%D8%B1%D8%A7%D9%87-%D8%AD%D9%82'),
(195, '( خطبه 193 ) خطبه هنگام دفن سرور زنان جهان حضرت فاطمه(عليها السلام) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-193/%D8%AE%D8%B7%D8%A8%D9%87-193-%D8%AE%D8%B7%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%AF%D9%81%D9%86-%D8%B3%D8%B1%D9%88%D8%B1-%D8%B2%D9%86%D8%A7%D9%86-%D8%AC%D9%87%D8%A7%D9%86-%D8%AD%D8%B6%D8%B1%D8%AA-%D9%81%D8%A7%D8%B7%D9%85%D9%87(%D8%B9%D9%84%D9%8A%D9%87%D8%A7-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85)'),
(196, '( خطبه 194 ) خطبه در گريز از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-194/%D8%AE%D8%B7%D8%A8%D9%87-194-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%DA%AF%D8%B1%D9%8A%D8%B2-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(197, '( خطبه 195 ) خطبه ياران خود را در بسيارى از اوقات به آن پند مىداد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-195/%D8%AE%D8%B7%D8%A8%D9%87-195-%D8%AE%D8%B7%D8%A8%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%AE%D9%88%D8%AF-%D8%B1%D8%A7-%D8%AF%D8%B1-%D8%A8%D8%B3%D9%8A%D8%A7%D8%B1%D9%89-%D8%A7%D8%B2-%D8%A7%D9%88%D9%82%D8%A7%D8%AA-%D8%A8%D9%87-%D8%A2%D9%86-%D9%BE%D9%86%D8%AF-%D9%85%D9%89%D8%AF%D8%A7%D8%AF'),
(198, '( خطبه 196 ) خطبه بعد از بيعت طلحه و زبير به آنها فرمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-196/%D8%AE%D8%B7%D8%A8%D9%87-196-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D8%A8%D9%8A%D8%B9%D8%AA-%D8%B7%D9%84%D8%AD%D9%87-%D9%88-%D8%B2%D8%A8%D9%8A%D8%B1-%D8%A8%D9%87-%D8%A2%D9%86%D9%87%D8%A7-%D9%81%D8%B1%D9%85%D9%88%D8%AF'),
(199, '( خطبه 197 ) خطبه شنيد عدهاىاز يارانش بهوقت نبرد صفّين بهاهلشام دشناممىدهند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-197/%D8%AE%D8%B7%D8%A8%D9%87-197-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B4%D9%86%D9%8A%D8%AF-%D8%B9%D8%AF%D9%87%D8%A7%D9%89%D8%A7%D8%B2-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D8%A8%D9%87%D9%88%D9%82%D8%AA-%D9%86%D8%A8%D8%B1%D8%AF-%D8%B5%D9%81%D9%91%D9%8A%D9%86-%D8%A8%D9%87%D8%A7%D9%87%D9%84%D8%B4%D8%A7%D9%85--%D8%AF%D8%B4%D9%86%D8%A7%D9%85%D9%85%D9%89%D8%AF%D9%87%D9%86%D8%AF'),
(200, '( خطبه 198 ) خطبه در نبرد صفّين دربارهفرزند خود حسن(عليه السلام) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-198/%D8%AE%D8%B7%D8%A8%D9%87-198-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%86%D8%A8%D8%B1%D8%AF-%D8%B5%D9%81%D9%91%D9%8A%D9%86-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87%D9%81%D8%B1%D8%B2%D9%86%D8%AF-%D8%AE%D9%88%D8%AF-%D8%AD%D8%B3%D9%86(%D8%B9%D9%84%D9%8A%D9%87--%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85)'),
(201, '( خطبه 199 ) خطبه زمانىكه يارانش درباره حكميت با او دچار اختلاف شدند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-199/%D8%AE%D8%B7%D8%A8%D9%87-199-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89%D9%83%D9%87-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%AD%D9%83%D9%85%D9%8A%D8%AA-%D8%A8%D8%A7-%D8%A7%D9%88-%D8%AF%DA%86%D8%A7%D8%B1-%D8%A7%D8%AE%D8%AA%D9%84%D8%A7%D9%81-%D8%B4%D8%AF%D9%86%D8%AF'),
(202, '( خطبه 200 ) خطبه زمانى كه در بصره به عيادت علاء بن زياد حارثى رفت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-200/%D8%AE%D8%B7%D8%A8%D9%87-200-%D8%AE%D8%B7%D8%A8%D9%87-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%AF%D8%B1-%D8%A8%D8%B5%D8%B1%D9%87-%D8%A8%D9%87-%D8%B9%D9%8A%D8%A7%D8%AF%D8%AA-%D8%B9%D9%84%D8%A7%D8%A1-%D8%A8%D9%86-%D8%B2%D9%8A%D8%A7%D8%AF-%D8%AD%D8%A7%D8%B1%D8%AB%D9%89-%D8%B1%D9%81%D8%AA'),
(203, '( خطبه 201 ) خطبه وقتى از او درباره احاديث دروغ و اخبار ضد و نقيض پرسيدند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-201/%D8%AE%D8%B7%D8%A8%D9%87-201-%D8%AE%D8%B7%D8%A8%D9%87-%D9%88%D9%82%D8%AA%D9%89-%D8%A7%D8%B2-%D8%A7%D9%88-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A7%D8%AD%D8%A7%D8%AF%D9%8A%D8%AB-%D8%AF%D8%B1%D9%88%D8%BA-%D9%88-%D8%A7%D8%AE%D8%A8%D8%A7%D8%B1-%D8%B6%D8%AF-%D9%88-%D9%86%D9%82%D9%8A%D8%B6-%D9%BE%D8%B1%D8%B3%D9%8A%D8%AF%D9%86%D8%AF'),
(204, '( خطبه 202 ) خطبه در قدرت خداوند و خلقت زمين ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-202/%D8%AE%D8%B7%D8%A8%D9%87-202-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%82%D8%AF%D8%B1%D8%AA-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF-%D9%88-%D8%AE%D9%84%D9%82%D8%AA-%D8%B2%D9%85%D9%8A%D9%86'),
(205, '( خطبه 203 ) خطبه در تحريك ياران خود به جهاد با شاميان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-203/%D8%AE%D8%B7%D8%A8%D9%87-203-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%AD%D8%B1%D9%8A%D9%83-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86-%D8%AE%D9%88%D8%AF-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF-%D8%A8%D8%A7-%D8%B4%D8%A7%D9%85%D9%8A%D8%A7%D9%86'),
(206, '( خطبه 204 ) خطبه در تمجيد خداوند ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-204/%D8%AE%D8%B7%D8%A8%D9%87-204-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%85%D8%AC%D9%8A%D8%AF-%D8%AE%D8%AF%D8%A7%D9%88%D9%86%D8%AF'),
(207, '( خطبه 205 ) خطبه در وصف پيامبر و عالمان، و اندرز مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-205/%D8%AE%D8%B7%D8%A8%D9%87-205-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D8%B9%D8%A7%D9%84%D9%85%D8%A7%D9%86%D8%8C-%D9%88-%D8%A7%D9%86%D8%AF%D8%B1%D8%B2-%D9%85%D8%B1%D8%AF%D9%85'),
(208, '( خطبه 206 ) خطبه از دعاهاى آنحضرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-206/%D8%AE%D8%B7%D8%A8%D9%87-206-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A7%D8%B2-%D8%AF%D8%B9%D8%A7%D9%87%D8%A7%D9%89-%D8%A2%D9%86%D8%AD%D8%B6%D8%B1%D8%AA'),
(209, '( خطبه 207 ) خطبه در صفّين بيان فرمود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-207/%D8%AE%D8%B7%D8%A8%D9%87-207-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B5%D9%81%D9%91%D9%8A%D9%86-%D8%A8%D9%8A%D8%A7%D9%86-%D9%81%D8%B1%D9%85%D9%88%D8%AF'),
(210, '( خطبه 208 ) خطبه در شكايت از قريش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-208/%D8%AE%D8%B7%D8%A8%D9%87-208-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B4%D9%83%D8%A7%D9%8A%D8%AA-%D8%A7%D8%B2-%D9%82%D8%B1%D9%8A%D8%B4'),
(211, '( خطبه 209 ) خطبه در جمل وقتى از كنار كشته طلحه و عبدالرّحمن بن عتّاب عبور كرد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-209/%D8%AE%D8%B7%D8%A8%D9%87-209-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AC%D9%85%D9%84-%D9%88%D9%82%D8%AA%D9%89-%D8%A7%D8%B2-%D9%83%D9%86%D8%A7%D8%B1-%D9%83%D8%B4%D8%AA%D9%87-%D8%B7%D9%84%D8%AD%D9%87-%D9%88-%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B1%D9%91%D8%AD%D9%85%D9%86-%D8%A8%D9%86-%D8%B9%D8%AA%D9%91%D8%A7%D8%A8-%D8%B9%D8%A8%D9%88%D8%B1-%D9%83%D8%B1%D8%AF'),
(212, '( خطبه 210 ) خطبه در وصف سالكان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-210/%D8%AE%D8%B7%D8%A8%D9%87-210-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D8%B3%D8%A7%D9%84%D9%83%D8%A7%D9%86'),
(213, '( خطبه 211 ) خطبه در ترغيب يارانش به جهاد ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-211/%D8%AE%D8%B7%D8%A8%D9%87-211-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B1%D8%BA%D9%8A%D8%A8-%D9%8A%D8%A7%D8%B1%D8%A7%D9%86%D8%B4-%D8%A8%D9%87-%D8%AC%D9%87%D8%A7%D8%AF'),
(214, '( خطبه 212 ) خطبه بعد از تلاوت آيه «الهيكم التكاثر حتى زرتم المقابر» ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-212/%D8%AE%D8%B7%D8%A8%D9%87-212-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%B9%D8%AF-%D8%A7%D8%B2-%D8%AA%D9%84%D8%A7%D9%88%D8%AA-%D8%A2%D9%8A%D9%87-%C2%AB%D8%A7%D9%84%D9%87%D9%8A%D9%83%D9%85-%D8%A7%D9%84%D8%AA%D9%83%D8%A7%D8%AB%D8%B1-%D8%AD%D8%AA%D9%89-%D8%B2%D8%B1%D8%AA%D9%85-%D8%A7%D9%84%D9%85%D9%82%D8%A7%D8%A8%D8%B1%C2%BB'),
(215, '( خطبه 213 ) خطبه به وقت تلاوت آيه «رجال لاتلهيهم تجارة و لا بيع عن ذكر الله» ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-213/%D8%AE%D8%B7%D8%A8%D9%87-213-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%88%D9%82%D8%AA-%D8%AA%D9%84%D8%A7%D9%88%D8%AA-%D8%A2%D9%8A%D9%87-%C2%AB%D8%B1%D8%AC%D8%A7%D9%84-%D9%84%D8%A7%D8%AA%D9%84%D9%87%D9%8A%D9%87%D9%85-%D8%AA%D8%AC%D8%A7%D8%B1%D8%A9-%D9%88-%D9%84%D8%A7-%D8%A8%D9%8A%D8%B9-%D8%B9%D9%86-%D8%B0%D9%83%D8%B1-%D8%A7%D9%84%D9%84%D9%87%C2%BB'),
(216, '( خطبه 214 ) خطبه به هنگام تلاوت آيه «يا ايها الانسان ما غرّك بربك الكريم» ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-214/%D8%AE%D8%B7%D8%A8%D9%87-214-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%87%D9%86%DA%AF%D8%A7%D9%85-%D8%AA%D9%84%D8%A7%D9%88%D8%AA-%D8%A2%D9%8A%D9%87-%C2%AB%D9%8A%D8%A7-%D8%A7%D9%8A%D9%87%D8%A7-%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86-%D9%85%D8%A7-%D8%BA%D8%B1%D9%91%D9%83-%D8%A8%D8%B1%D8%A8%D9%83-%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85%C2%BB'),
(217, '( خطبه 215 ) خطبه در بيزارى از ظلم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-215/%D8%AE%D8%B7%D8%A8%D9%87-215-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%B2%D8%A7%D8%B1%D9%89-%D8%A7%D8%B2-%D8%B8%D9%84%D9%85'),
(218, '( خطبه 216 ) خطبه در طلب فراوانى روزى ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-216/%D8%AE%D8%B7%D8%A8%D9%87-216-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B7%D9%84%D8%A8-%D9%81%D8%B1%D8%A7%D9%88%D8%A7%D9%86%D9%89-%D8%B1%D9%88%D8%B2%D9%89'),
(219, '( خطبه 217 ) خطبه در گريز از دنيا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-217/%D8%AE%D8%B7%D8%A8%D9%87-217-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%DA%AF%D8%B1%D9%8A%D8%B2-%D8%A7%D8%B2-%D8%AF%D9%86%D9%8A%D8%A7'),
(220, '( خطبه 218 ) خطبه در وصف عاشقان خدا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-218/%D8%AE%D8%B7%D8%A8%D9%87-218-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%88%D8%B5%D9%81-%D8%B9%D8%A7%D8%B4%D9%82%D8%A7%D9%86-%D8%AE%D8%AF%D8%A7'),
(221, '( خطبه 219 ) خطبه درباره يكى از حاكمان ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-219/%D8%AE%D8%B7%D8%A8%D9%87-219-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%8A%D9%83%D9%89-%D8%A7%D8%B2-%D8%AD%D8%A7%D9%83%D9%85%D8%A7%D9%86'),
(222, '( خطبه 220 ) خطبه در توصيف بيعت مردم با آن جناب بر خلافت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-220/%D8%AE%D8%B7%D8%A8%D9%87-220-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%B5%D9%8A%D9%81-%D8%A8%D9%8A%D8%B9%D8%AA-%D9%85%D8%B1%D8%AF%D9%85-%D8%A8%D8%A7-%D8%A2%D9%86-%D8%AC%D9%86%D8%A7%D8%A8-%D8%A8%D8%B1-%D8%AE%D9%84%D8%A7%D9%81%D8%AA'),
(223, '( خطبه 221 ) خطبه درباره تقوا و كوشش در عمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-221/%D8%AE%D8%B7%D8%A8%D9%87-221-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%AA%D9%82%D9%88%D8%A7-%D9%88-%D9%83%D9%88%D8%B4%D8%B4-%D8%AF%D8%B1-%D8%B9%D9%85%D9%84'),
(224, '( خطبه 222 ) خطبه در ذىقار به وقت حركت به بصره ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-222/%D8%AE%D8%B7%D8%A8%D9%87-222-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B0%D9%89%D9%82%D8%A7%D8%B1-%D8%A8%D9%87-%D9%88%D9%82%D8%AA-%D8%AD%D8%B1%D9%83%D8%AA-%D8%A8%D9%87-%D8%A8%D8%B5%D8%B1%D9%87'),
(225, '( خطبه 223 ) خطبه به عبدالله بن زمعه كه از شيعيان بود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-223/%D8%AE%D8%B7%D8%A8%D9%87-223-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87--%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%84%D9%87-%D8%A8%D9%86-%D8%B2%D9%85%D8%B9%D9%87-%D9%83%D9%87-%D8%A7%D8%B2-%D8%B4%D9%8A%D8%B9%D9%8A%D8%A7%D9%86-%D8%A8%D9%88%D8%AF'),
(226, '( خطبه 224 ) خطبه در فضل اهلبيت و نكوهش زمانه خود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-224/%D8%AE%D8%B7%D8%A8%D9%87-224-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D9%81%D8%B6%D9%84-%D8%A7%D9%87%D9%84%D8%A8%D9%8A%D8%AA-%D9%88-%D9%86%D9%83%D9%88%D9%87%D8%B4-%D8%B2%D9%85%D8%A7%D9%86%D9%87-%D8%AE%D9%88%D8%AF'),
(227, '( خطبه 225 ) خطبه در بيان علت اختلاف ظاهر و باطن مردم ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-225/%D8%AE%D8%B7%D8%A8%D9%87-225-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D8%B9%D9%84%D8%AA-%D8%A7%D8%AE%D8%AA%D9%84%D8%A7%D9%81-%D8%B8%D8%A7%D9%87%D8%B1-%D9%88-%D8%A8%D8%A7%D8%B7%D9%86-%D9%85%D8%B1%D8%AF%D9%85'),
(228, '( خطبه 226 ) خطبه به وقت غسل و تجهيز رسول خدا(صلى الله عليه وآله) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-226/%D8%AE%D8%B7%D8%A8%D9%87-226-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%88%D9%82%D8%AA-%D8%BA%D8%B3%D9%84-%D9%88-%D8%AA%D8%AC%D9%87%D9%8A%D8%B2-%D8%B1%D8%B3%D9%88%D9%84-%D8%AE%D8%AF%D8%A7(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)'),
(229, '( خطبه 227 ) خطبه در حمد و ستايش پيامبر و عجايب آفرينش ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-227/%D8%AE%D8%B7%D8%A8%D9%87-227-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AD%D9%85%D8%AF-%D9%88-%D8%B3%D8%AA%D8%A7%D9%8A%D8%B4-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1-%D9%88-%D8%B9%D8%AC%D8%A7%D9%8A%D8%A8-%D8%A2%D9%81%D8%B1%D9%8A%D9%86%D8%B4'),
(230, '( خطبه 228 ) خطبه در توحيد حق ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-228/%D8%AE%D8%B7%D8%A8%D9%87-228-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D9%88%D8%AD%D9%8A%D8%AF-%D8%AD%D9%82'),
(231, '( خطبه 229 ) خطبه در بيان پيشامدهاى ناگوار ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-229/%D8%AE%D8%B7%D8%A8%D9%87-229-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%BE%D9%8A%D8%B4%D8%A7%D9%85%D8%AF%D9%87%D8%A7%D9%89-%D9%86%D8%A7%DA%AF%D9%88%D8%A7%D8%B1'),
(232, '( خطبه 230 ) خطبه در سفارش به تقوا و ياد مرگ ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-230/%D8%AE%D8%B7%D8%A8%D9%87-230-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7-%D9%88-%D9%8A%D8%A7%D8%AF-%D9%85%D8%B1%DA%AF'),
(233, '( خطبه 231 ) خطبه در ستايش الهى و سفارش به تقوا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-231/%D8%AE%D8%B7%D8%A8%D9%87-231-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B3%D8%AA%D8%A7%D9%8A%D8%B4-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7'),
(234, '( خطبه 232 ) خطبه درباره ايمان و هجرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-231/%D8%AE%D8%B7%D8%A8%D9%87-231-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%A7%D9%8A%D9%85%D8%A7%D9%86-%D9%88-%D9%87%D8%AC%D8%B1%D8%AA'),
(235, '( خطبه 233 ) خطبه باز هم در ستايش الهى و سفارش به تقوا ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-232/%D8%AE%D8%B7%D8%A8%D9%87-232-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D8%A7%D8%B2-%D9%87%D9%85-%D8%AF%D8%B1-%D8%B3%D8%AA%D8%A7%D9%8A%D8%B4-%D8%A7%D9%84%D9%87%D9%89-%D9%88-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%D8%A8%D9%87-%D8%AA%D9%82%D9%88%D8%A7'),
(236, '( خطبه 234 ) خطبه به نام قاصعه در مذمّت ابليس ملعون ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-233/%D8%AE%D8%B7%D8%A8%D9%87-233-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D9%86%D8%A7%D9%85-%D9%82%D8%A7%D8%B5%D8%B9%D9%87-%D8%AF%D8%B1-%D9%85%D8%B0%D9%85%D9%91%D8%AA-%D8%A7%D8%A8%D9%84%D9%8A%D8%B3-%D9%85%D9%84%D8%B9%D9%88%D9%86'),
(237, '( خطب 235 ) خطبه به عبداللّه بن عباس در زمانى كه عثمان در محاصره بود ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-234/%D8%AE%D8%B7%D8%A8%D9%87-234-%D8%AE%D8%B7%D8%A8%D9%87-%D8%A8%D9%87-%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D9%84%D9%91%D9%87-%D8%A8%D9%86-%D8%B9%D8%A8%D8%A7%D8%B3-%D8%AF%D8%B1-%D8%B2%D9%85%D8%A7%D9%86%D9%89-%D9%83%D9%87-%D8%B9%D8%AB%D9%85%D8%A7%D9%86-%D8%AF%D8%B1-%D9%85%D8%AD%D8%A7%D8%B5%D8%B1%D9%87-%D8%A8%D9%88%D8%AF'),
(238, '( خطبه 236 ) خطبه در بيان وضع خود پس از هجرت پيامبر(صلى الله عليه وآله) و ملحق شدن به آن حضرت ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-235/%D8%AE%D8%B7%D8%A8%D9%87-235-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%A8%D9%8A%D8%A7%D9%86-%D9%88%D8%B6%D8%B9-%D8%AE%D9%88%D8%AF-%D9%BE%D8%B3-%D8%A7%D8%B2-%D9%87%D8%AC%D8%B1%D8%AA-%D9%BE%D9%8A%D8%A7%D9%85%D8%A8%D8%B1(%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%A2%D9%84%D9%87)-%D9%88-%D9%85%D9%84%D8%AD%D9%82-%D8%B4%D8%AF%D9%86-%D8%A8%D9%87-%D8%A2%D9%86-%D8%AD%D8%B6%D8%B1%D8%AA'),
(239, '( خطبه237 ) خطبه در تشويق به عمل ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-236/%D8%AE%D8%B7%D8%A8%D9%87-236-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%AA%D8%B4%D9%88%D9%8A%D9%82-%D8%A8%D9%87-%D8%B9%D9%85%D9%84');
INSERT INTO `tbl_li_nahj` (`id`, `title`, `img`, `url`) VALUES
(240, '( خطبه 238 ) خطبه درباره حكمين و سرزنش اهل شام ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-237/%D8%AE%D8%B7%D8%A8%D9%87-237-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%AD%D9%83%D9%85%D9%8A%D9%86-%D9%88-%D8%B3%D8%B1%D8%B2%D9%86%D8%B4-%D8%A7%D9%87%D9%84-%D8%B4%D8%A7%D9%85'),
(241, '( خطبه239  ) خطبه در رابطه با فضائل آل محمّد(عليهم السلام) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-238/%D8%AE%D8%B7%D8%A8%D9%87-238-%D8%AE%D8%B7%D8%A8%D9%87-%D8%AF%D8%B1-%D8%B1%D8%A7%D8%A8%D8%B7%D9%87-%D8%A8%D8%A7-%D9%81%D8%B6%D8%A7%D8%A6%D9%84-%D8%A2%D9%84-%D9%85%D8%AD%D9%85%D9%91%D8%AF(%D8%B9%D9%84%D9%8A%D9%87%D9%85-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85)'),
(242, '( خطبه 240 ) در رابطه با فضائل آل محمد(ع) ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmlKUC6oL5iVAuYHaWAcsmwFshAd_7tZt_dKGLJWV7KPUGeQqzA', 'http://www.erfan.ir/farsi/nahj1-239/%D8%AE%D8%B7%D8%A8%D9%87-239-%D8%AF%D8%B1-%D8%B1%D8%A7%D8%A8%D8%B7%D9%87-%D8%A8%D8%A7-%D9%81%D8%B6%D8%A7%D8%A6%D9%84-%D8%A2%D9%84-%D9%85%D8%AD%D9%85%D8%AF(%D8%B9)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_li_quran`
--

CREATE TABLE `tbl_li_quran` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_li_quran`
--

INSERT INTO `tbl_li_quran` (`id`, `title`, `img`, `url`) VALUES
(1, 'الحمد', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=1'),
(2, 'البقرة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=2'),
(3, 'آل عمران', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=3'),
(4, 'النساء', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=4'),
(5, 'المائدة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=5'),
(6, 'الأنعام', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=6'),
(7, 'الأعراف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=7'),
(8, 'الأنفال', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=8'),
(9, 'التوبة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=9'),
(10, 'يونس', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=10'),
(11, 'هود', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=11'),
(12, 'يوسف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=12'),
(13, 'الرعد', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=13'),
(14, 'إبراهيم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=14'),
(15, 'الحجر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=15'),
(16, 'النحل', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=16'),
(17, 'الإسراء', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=17'),
(18, 'الكهف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=18'),
(19, 'مريم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=19'),
(20, 'طه', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=20'),
(21, 'الأنبياء', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=21'),
(22, 'الحج', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=22'),
(23, 'المؤمنون', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=23'),
(24, 'النور', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=24'),
(25, 'الفرقان', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=25'),
(26, 'الشعراء ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=26'),
(27, 'النمل', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=27'),
(28, 'القصص', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=28'),
(29, 'العنكبوت', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=29'),
(30, 'الروم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=30'),
(31, 'لقمان', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=31'),
(32, 'السجدة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=32'),
(33, 'الأحزاب', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=33'),
(34, 'سبأ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=34'),
(35, 'فاطر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=35'),
(36, 'يس', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=36'),
(37, 'الصافات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=37'),
(38, 'ص', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=38'),
(39, 'الزمر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=39'),
(40, 'غافر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=40'),
(41, 'فصلت', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=41'),
(42, 'الشورى', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=42'),
(43, 'الزخرف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=43'),
(44, 'الدخان', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=44'),
(45, 'الجاثية', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=45'),
(46, 'الأحقاف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=46'),
(47, 'محمد', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=47'),
(48, 'الفتح', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=48'),
(49, 'الحجرات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=49'),
(50, 'ق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=50'),
(51, 'الذاريات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=51'),
(52, 'الطور', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=52'),
(53, 'النجم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=53'),
(54, 'القمر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=54'),
(55, 'الرحمن', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=55'),
(56, 'الواقعة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=56'),
(57, 'الحديد', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=57'),
(58, 'المجادلة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=58'),
(59, 'الحشر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=59'),
(60, 'الممتحنة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=60'),
(61, 'الصف', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=61'),
(62, 'الجمعة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=62'),
(63, 'المنافقون', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=63'),
(64, 'التغبن', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=64'),
(65, 'الطلاق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=65'),
(66, 'التحريم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=66'),
(67, 'الملك', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=67'),
(68, 'القلم', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=68'),
(69, 'الحاقة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=69'),
(70, 'المعارج', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=70'),
(71, 'نوح', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=71'),
(72, 'الجن', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=72'),
(73, 'المزمل', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=73'),
(74, 'المدثر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=74'),
(75, 'القيامة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=75'),
(76, 'الإنسان', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=76'),
(77, 'المرسلات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=77'),
(78, 'النبأ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=78'),
(79, 'النازعات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=79'),
(80, 'عبس', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=80'),
(81, 'التكوير', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=81'),
(82, 'الإنفطار', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=82'),
(83, 'المطففين', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=83'),
(84, 'الانشقاق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=84'),
(85, 'البروج', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=85'),
(86, 'الطارق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=86'),
(87, 'الأعلى', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=87'),
(88, 'الغاشية', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=88'),
(89, 'الفجر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=89'),
(90, 'البلد', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=90'),
(91, 'الشمس', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=91'),
(92, 'الليل', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=92'),
(93, 'الضحى', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=93'),
(94, 'الانشراح', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=94'),
(95, 'التين', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=95'),
(96, 'العلق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=96'),
(97, 'القدر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=97'),
(98, 'البينة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=98'),
(99, 'الزلزال', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=99'),
(100, 'العاديات', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=100'),
(101, 'القارعة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=101'),
(102, 'التكاثر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=102'),
(103, 'العصر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=103'),
(104, 'الهمزة', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=104'),
(105, 'الفيل', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=105'),
(106, 'قريش', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=106'),
(107, 'الماعون', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=107'),
(108, 'الكوثر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=108'),
(109, 'الكافرون', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=109'),
(110, 'النصر', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=110'),
(111, 'لهب', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=111'),
(112, 'الإخلاص', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=112'),
(113, 'الفلق', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=113'),
(114, 'الناس', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVdnRwiXOyANRbXib-GaZ7OyjIlEgkAE_ixqZa_BQq6Oe9KNd', 'http://www.parsquran.com/data/show.php?user=far&lang=far&ayat=1&sura=114');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_li_resale`
--

CREATE TABLE `tbl_li_resale` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_li_resale`
--

INSERT INTO `tbl_li_resale` (`id`, `title`, `img`, `url`) VALUES
(1, 'امام خمینی', 'http://ahkam.persiangig.com/Pics/emam%20khomeini.jpg', 'http://ahkam.persiangig.com/resaleh-%20emam%20khomeini/resaleh-%20emam%20khomeini.htm'),
(2, 'آیت الله تبریزی', 'http://ahkam.persiangig.com/Pics/tabrizi.jpg', 'http://ahkam.persiangig.com/resale_tabrizi/resale_tabrizi.htm'),
(3, 'آیت الله اردبیلی', 'http://ahkam.persiangig.com/Pics/ardebili.jpg', 'http://ahkam.persiangig.com/resale-far_ardebili/resale-far_ardebili.htm'),
(4, 'استفتائات آیت الله خامنه ای ', 'http://ahkam.persiangig.com/Pics/khameneyi.jpg', 'http://ahkam.persiangig.com/resale_khamenei/resale_khamenei.htm'),
(5, 'آیت الله فاضل لنکرانی ', 'http://ahkam.persiangig.com/Pics/fazel.jpg', 'http://ahkam.persiangig.com/resale_fazel/resale_fazel.htm'),
(6, 'آیت الله مکارم شیرازی', 'http://ahkam.persiangig.com/Pics/makarem.jpg', 'http://ahkam.persiangig.com/resale_makarem/resale_makarem.htm'),
(7, 'آیت الله صافی', 'http://ahkam.persiangig.com/Pics/safi.jpg', 'http://ahkam.persiangig.com/resale_safi/resale_safi.htm'),
(8, 'آیت الله شاهرودی', 'http://ahkam.persiangig.com/Pics/shahroodi.jpg', 'http://ahkam.persiangig.com/resale-shahroodi/resale-shahroodi.htm'),
(9, 'آیت الله سیستانی', 'http://ahkam.persiangig.com/Pics/sistani.jpg', 'http://ahkam.persiangig.com/resale_sistani/resale_sistani.htm'),
(10, 'آیت الله بهجت ', 'http://ahkam.persiangig.com/Pics/bahjat.jpg', 'http://ahkam.persiangig.com/resale_bahjat/resale_bahjat.htm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_magazin`
--

CREATE TABLE `tbl_magazin` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_magazin`
--

INSERT INTO `tbl_magazin` (`id`, `title`, `url`) VALUES
(1, '1', 'http://idc0-cdn0.khamenei.ir/ndata/news/weekly/files/264//page_1.jpg'),
(2, '2', 'http://idc0-cdn0.khamenei.ir/ndata/news/weekly/files/264//page_2.jpg'),
(3, '3', 'http://idc0-cdn0.khamenei.ir/ndata/news/weekly/files/264//page_3.jpg'),
(4, '4', 'http://idc0-cdn0.khamenei.ir/ndata/news/weekly/files/264//page_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`id`, `title`, `id_category`, `img`, `url`) VALUES
(1, 'دنیای بهتر\r\n', 6, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-04-20/220_eaa9bf7df753a0756ace3d7553bc11ff.png', 'https://sa15.telewebion.com/vod/_definst_//media_b/telewebion/tv3/2020-04-19/normalProgram/153136/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTQvMjIvMjAyMCA1OjEyOjAgQU0maGFzaF92YWx1ZT1LV3hJWXZ2TmhQd2x1K0pQMndrUlZ3PT0mdmFsaWRtaW51dGVzPTYwMDA='),
(2, 'دو پلیس زبل', 6, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2017-12-30/220_412b5c6d4a88a03e91dfc16dd4d494ff.png', 'https://wa1.telewebion.com/smil/1247451.m3u8?filepath=/media/telewebion/namayesh/2019-11-13/normalProgram/010744/file.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTExLzEzLzIwMTkgOToxODoyMyBBTSZoYXNoX3ZhbHVlPTR0MTQ0Tis0Yk0wSWtiVGo5ZUljN0E9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==&server=st2.telewebion.com&file=360p,480p'),
(3, 'سریع و خشن ۶', 7, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-11-30/220_8b33ab221257b074d1d967042ad1d9d0.png', 'https://wa1.telewebion.com/smil/1163194.m3u8?filepath=/media/telewebion/namayesh/2019-11-12/normalProgram/185804/file.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTExLzEzLzIwMTkgOTo3OjM0IEFNJmhhc2hfdmFsdWU9anhJaUJRK2J6T2k3d2FDSDUvKy9zQT09JnZhbGlkbWludXRlcz02MDAw&server=st2.telewebion.com&file=360p,480p'),
(4, 'بسته بندی جعلی', 7, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-11-27/220_f313a347b430b215abe0aaf72a6fe05d.png', 'https://wa1.telewebion.com/smil/1672889.m3u8?filepath=/media/telewebion/khorasanrazavi/2019-11-12/normalProgram/141502/file.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTExLzEzLzIwMTkgOToyNDozMyBBTSZoYXNoX3ZhbHVlPThBL0lTOTRrcjFhRE8yZGQxblZpWEE9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==&server=st2.telewebion.com&file=360p,480p'),
(5, 'تنگنا', 13, 'https://static.televebion.net/web/content_images/promotion_images/large/mb_6d99bcd116b9e12ff6f859b399c04b97.jpg', 'https://w33.telewebion.com/smil/1374862.m3u8?filepath=/media_b/telewebion/namayesh/2019-10-09/normalProgram/130124/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjIwIEFNJmhhc2hfdmFsdWU9WW9SYUlHVmVXbjF4ZldGWnh3Wm9zdz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p'),
(6, 'ماشین دیوانه', 2, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-12-22/220_182a44d6a3e1d6a41fa520d4f3721479.png', 'https://w34.telewebion.com/smil/1790551.m3u8?filepath=/media/telewebion/tv2/2020-03-28/normalProgram/021448/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjIxIEFNJmhhc2hfdmFsdWU9b3dQUzdweWxFRGNJWkc2TWxRc2hEQT09JnZhbGlkbWludXRlcz02MDAw&server=sa21.telewebion.com&file=360p,480p'),
(7, 'قرار تصادفی من با زندگی', 4, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_370fa509c4141fabc9a9d4c31e3ab1f2.png', 'https://w33.telewebion.com/smil/2240747.m3u8?filepath=/media/telewebion/tehran/2020-03-27/normalProgram/133523/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI1IEFNJmhhc2hfdmFsdWU9alhMblh6QlppR0pRS0d5V1p0UnJLdz09JnZhbGlkbWludXRlcz02MDAw&server=sa21.telewebion.com&file=360p,480p'),
(8, 'عروسک های زشت', 5, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_7ffe2080c0404dd33f3f57ae88324c24.png', 'https://w33.telewebion.com/smil/2240785.m3u8?filepath=/media_b/telewebion/pooya/2020-03-27/normalProgram/141339/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI0IEFNJmhhc2hfdmFsdWU9ZlhOU2dRQ3NDVkZOUW5VK2UwdG4rZz09JnZhbGlkbWludXRlcz02MDAw&server=sa14.telewebion.com&file=360p,480p'),
(9, 'مرز سه گانه', 6, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_98aec38c209bfba58307258e91673285.png', 'https://w33.telewebion.com/smil/2240800.m3u8?filepath=/media/telewebion/tv3/2020-03-27/normalProgram/151136/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI0IEFNJmhhc2hfdmFsdWU9YkhWcVJ3ZzVxbkpqQlRYckkxRzRPUT09JnZhbGlkbWludXRlcz02MDAw&server=sa21.telewebion.com&file=360p,480p'),
(10, 'رمی', 4, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_0c3af7dcb1f3a5f540893f3b629f3e5f.png', 'https://w34.telewebion.com/smil/2240848.m3u8?filepath=/media_b/telewebion/tv2/2020-03-27/normalProgram/165926/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjQyOjQ1IEFNJmhhc2hfdmFsdWU9R0FxcnU4SXhLL1BTREVTVElGZElIQT09JnZhbGlkbWludXRlcz02MDAw&server=sa15.telewebion.com&file=360p,480p'),
(11, 'لوراکس', 2, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-13/220_66fc580be47fe3ede1959fca149140a8.png', 'https://w2.telewebion.com/smil/1276107.m3u8?filepath=/media_b/telewebion/aflak/2020-03-27/normalProgram/103136/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI2OjIwIEFNJmhhc2hfdmFsdWU9UjRGMXp6T2Nad25vdktrTkVXMUREQT09JnZhbGlkbWludXRlcz02MDAw&server=sa15.telewebion.com&file=360p,480p'),
(12, 'آقای تشویق', 1, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-11-26/220_1e8104634a61ffdedaf3568890107eea.png', 'https://w2.telewebion.com/smil/1931770.m3u8?filepath=/media_b/telewebion/namayesh/2020-03-27/normalProgram/103903/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI2IEFNJmhhc2hfdmFsdWU9KzdYVlNuY1VRYngwNjhKRFU5cmxQZz09JnZhbGlkbWludXRlcz02MDAw&server=sa14.telewebion.com&file=360p,480p'),
(13, 'هریت', 2, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_20af5276ab9207610e392aba94a17e19.png', 'https://w2.telewebion.com/smil/2240676.m3u8?filepath=/media_b/telewebion/tv1/2020-03-27/normalProgram/111132/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjQ3OjggQU0maGFzaF92YWx1ZT0xZ2E4YWsxQVF6VHAwOVVUQ0xVNG53PT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa15.telewebion.com&file=360p,480p'),
(14, 'شعله', 1, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2018-01-14/220_a1556de466ecd65a7961698fcf6c9823.png', 'https://w34.telewebion.com/smil/1427997.m3u8?filepath=/media_b/telewebion/namayesh/2020-03-27/normalProgram/121142/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI1OjQ5IEFNJmhhc2hfdmFsdWU9RkI3VXRKcnJVZStRanJsdkhXeHVnZz09JnZhbGlkbWludXRlcz02MDAw&server=sa15.telewebion.com&file=360p,480p'),
(15, 'تبدیل‌ شوندگان ۲ انتقام شکست‌ خوردگان', 3, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_d64565c0beb5f0d0d8b6f0aeaef086ed.png', 'https://w34.telewebion.com/smil/1750052.m3u8?filepath=/media_b/telewebion/namayesh/2020-03-26/normalProgram/185453/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI3IEFNJmhhc2hfdmFsdWU9Wk11RUZiM1N3ak5BTjZmWWJ4cXQwQT09JnZhbGlkbWludXRlcz02MDAw&server=sa14.telewebion.com&file=360p,480p'),
(16, 'به سوی ستارگان', 13, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_fe0cdd659ff88db65dc29352c82cb314.png', 'https://w34.telewebion.com/smil/2240378.m3u8?filepath=/media/telewebion/tv4/2020-03-26/normalProgram/203436/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjIzOjUgQU0maGFzaF92YWx1ZT1zazNkbWo3WWUxSmZ5M0FBQmt5Tm9nPT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa21.telewebion.com&file=360p,480p'),
(17, 'اسب بالدار', 14, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_679f2c1aa78027edc44af25c0a52c27f.png', 'https://w2.telewebion.com/smil/2240478.m3u8?filepath=/media_b/telewebion/namayesh/2020-03-26/normalProgram/230255/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI1OjUxIEFNJmhhc2hfdmFsdWU9b2EzWkFJelV3WDJmYTJ3ZXhTYmVyQT09JnZhbGlkbWludXRlcz02MDAw&server=sa14.telewebion.com&file=360p,480p'),
(18, 'کتاب جنگل', 10, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-14/220_9876b43ac1d19e78b15dade574ebfd9a.png', 'https://w33.telewebion.com/smil/1596223.m3u8?filepath=/media/telewebion/namayesh/2020-03-27/normalProgram/003703/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI2IEFNJmhhc2hfdmFsdWU9YStFOCtqbUxyTWxSNVZFTW9ZYVE1dz09JnZhbGlkbWludXRlcz02MDAw&server=sa21.telewebion.com&file=360p,480p'),
(19, 'سفر بزرگ', 8, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-26/220_bc18634bef88a2757124bbecffe58f6c.png', 'https://w32.telewebion.com/smil/2240150.m3u8?filepath=/media_b/telewebion/pooya/2020-03-26/normalProgram/141515/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA3OjI4OjI4IEFNJmhhc2hfdmFsdWU9RmhseEkzQnduV2lhUjNGZWVqNjd6Zz09JnZhbGlkbWludXRlcz02MDAw&server=sa14.telewebion.com&file=360p,480p'),
(21, 'خالکوبی', 9, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_40965efa19c345bfd62e38846d71eb85.png', 'https://w33.telewebion.com/smil/1200871.m3u8?filepath=/media/telewebion/namayesh/2020-03-26/normalProgram/153508/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojc6MiBBTSZoYXNoX3ZhbHVlPU1rSU4xZEN5QzM5NlRidHlablNSRmc9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==&server=sa21.telewebion.com&file=360p,480p'),
(22, 'جوی', 10, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-26/220_0de24e6e74570849d7ee7cf704794037.png', 'https://w2.telewebion.com/smil/2240295.m3u8?filepath=/media_b/telewebion/tv2/2020-03-26/normalProgram/170114/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojg6MTQgQU0maGFzaF92YWx1ZT1Dd05Kb2NSSzNhNUgycXNjcmxwWjV3PT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa14.telewebion.com&file=360p,480p'),
(23, 'ضربه فنی', 10, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_ced2d4454b6e5ea4b1b02d12daf4f875.png', 'https://w2.telewebion.com/smil/2240294.m3u8?filepath=/media_b/telewebion/omid/2020-03-26/normalProgram/174716/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojk6MjcgQU0maGFzaF92YWx1ZT1scFZpeklYWVk5by9BT1VoYzh1d1R3PT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa14.telewebion.com&file=360p,480p'),
(24, 'قهرمان خیالی', 10, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_39332ecd0f17eda90f20369c8a0f7673.png', 'https://w33.telewebion.com/smil/1568537.m3u8?filepath=/media/telewebion/namayesh/2020-03-26/normalProgram/112224/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojk6NTcgQU0maGFzaF92YWx1ZT1ISi9VZzdPeFpaZzdxbmM1bUUwcUF3PT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa21.telewebion.com&file=360p,480p'),
(25, 'قتل در قطار سریع السیر', 8, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-27/220_c453c9a8d92f1f6aacc21f424469c20c.png', 'https://w33.telewebion.com/smil/2034353.m3u8?filepath=/media/telewebion/namayesh/2020-03-26/normalProgram/133454/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjExOjMzIEFNJmhhc2hfdmFsdWU9cGNiZFhOL1pocTJZZkJMbHBzTlpoZz09JnZhbGlkbWludXRlcz02MDAw&server=sa20.telewebion.com&file=360p,480p'),
(26, 'میراث خون سرد', 11, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-26/220_eb40796cf57200721ee723c56f17b0e3.png', 'https://w32.telewebion.com/smil/2240076.m3u8?filepath=/media/telewebion/tehran/2020-03-26/normalProgram/133810/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjEyOjExIEFNJmhhc2hfdmFsdWU9dm9yakNGb1NjVXNwY2x0UG12enpsQT09JnZhbGlkbWludXRlcz02MDAw&server=sa21.telewebion.com&file=360p,480p');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `actor` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`id`, `title`, `actor`, `id_category`, `img`, `url`) VALUES
(1, 'دشت مهتاب ', 'عباس بهادری ', 8, 'http://player.iranseda.ir/picture/?attid=215622&s=c', 'http://player.iranseda.ir/music-player/?VALID=TRUE&g=277661&t=1&w=4'),
(2, ' پناه آخر ', 'محمد معتمدی ', 8, 'http://musicmedia.ir/wp-content/uploads/2019/10/984489-335x335.jpg', 'http://player.iranseda.ir/music-player/?VALID=TRUE&g=280337&t=1&w=4'),
(3, 'دریا ', ' اردوان كامكار', 9, 'http://www.my98iamusic.ir/wp-content/uploads/2016/04/Ardavan-Kamkar.jpg', 'http://player.iranseda.ir/music-player/?VALID=TRUE&g=277862&t=1&w=4'),
(4, 'اتفاق نود و نو', 'حجت اشرف زاده', 8, 'http://player.iranseda.ir/Picture?AttID=247021&s=c', 'http://player.iranseda.ir/music-player/?g=319439&w=4&VALID=TRUE'),
(5, 'عشق حقیقی', 'محمدجواد شوهانی', 8, 'http://player.iranseda.ir/Picture?AttID=243040&s=c', 'http://player.iranseda.ir/music-player/?g=315762&w=4&VALID=TRUE'),
(6, 'کوچ', 'حجت اشرف زاده', 8, 'http://player.iranseda.ir/Picture?AttID=123605&s=c', 'http://player.iranseda.ir/music-player/?g=146019&w=4&VALID=TRUE'),
(7, 'دست حق', 'حجت اشرف زاده', 8, 'http://player.iranseda.ir/Picture?AttID=123233&s=c', 'http://player.iranseda.ir/music-player/?g=145921&w=4&VALID=TRUE'),
(8, 'بهارانه', 'حجت اشرف زاده', 8, 'http://player.iranseda.ir/Picture?AttID=130753&s=c', 'http://player.iranseda.ir/music-player/?g=145875&w=4&VALID=TRUE'),
(9, 'شیدایی', 'حجت‌ اشرف‌ زاده', 8, 'http://player.iranseda.ir/Picture?AttID=53059&s=c', 'http://player.iranseda.ir/music-player/?g=56389&w=4&VALID=TRUE'),
(10, 'سردار دل ها', 'صمد آقاپور', 5, 'http://player.iranseda.ir/Picture?AttID=244129&s=c', 'http://player.iranseda.ir/music-player/?g=315942&w=4&VALID=TRUE'),
(11, 'ایران عشق بی پایان', 'حمیدرضا مانیان', 8, 'http://player.iranseda.ir/Picture?AttID=244136&s=c', 'http://player.iranseda.ir/music-player/?g=315947&w=4&VALID=TRUE'),
(12, 'میانبر', 'مجید اخشابی', 8, 'http://player.iranseda.ir/Picture?AttID=247029&s=c', 'http://player.iranseda.ir/music-player/?g=319441&w=4&VALID=TRUE'),
(13, 'کامیون', 'حمید عابدی', 8, 'http://player.iranseda.ir/Picture?AttID=247004&s=c', 'http://player.iranseda.ir/music-player/?g=319440&w=4&VALID=TRUE'),
(14, 'کنار غریب', 'حمید گلستان', 8, 'http://player.iranseda.ir/Picture?AttID=243916&s=c', 'http://player.iranseda.ir/music-player/?g=315841&w=4&VALID=TRUE'),
(15, 'عاشق تر از لاله ها', 'غلامرضا صنعتگر,حمید بشم,مجید كمالی,محمد آرامباش', 5, 'http://player.iranseda.ir/Picture?AttID=243029&s=c', 'http://player.iranseda.ir/music-player/?g=315750&w=4&VALID=TRUE'),
(16, 'عید عید عید', 'بهرام حصیری,پیام حصیری', 8, 'http://player.iranseda.ir/Picture?AttID=187017&s=c', 'http://player.iranseda.ir/music-player/?g=237269&w=4&VALID=TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_fars`
--

CREATE TABLE `tbl_ne_fars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_fars`
--

INSERT INTO `tbl_ne_fars` (`id`, `title`, `img`, `url`) VALUES
(1, 'آخرین اخبار خبرگزاری فارس', 'https://asrtabriz.com/wp-content/uploads/2020/01/%D8%AE%D8%A8%D8%B1%DA%AF%D8%B2%D8%A7%D8%B1%DB%8C-%D9%81%D8%A7%D8%B1%D8%B3.jpg', 'https://www.farsnews.com/rss'),
(2, 'پربازدیدترین اخبار خبرگزاری فارس', 'https://asrtabriz.com/wp-content/uploads/2020/01/%D8%AE%D8%A8%D8%B1%DA%AF%D8%B2%D8%A7%D8%B1%DB%8C-%D9%81%D8%A7%D8%B1%D8%B3.jpg', 'https://www.farsnews.com/rss/mostvisitednews'),
(3, 'عناوین برتر خبرگزاری فارس', 'https://asrtabriz.com/wp-content/uploads/2020/01/%D8%AE%D8%A8%D8%B1%DA%AF%D8%B2%D8%A7%D8%B1%DB%8C-%D9%81%D8%A7%D8%B1%D8%B3.jpg', 'https://www.farsnews.com/rss/topnews'),
(4, 'آخرین اخبار گروه اجتماعی', 'https://asrtabriz.com/wp-content/uploads/2020/01/%D8%AE%D8%A8%D8%B1%DA%AF%D8%B2%D8%A7%D8%B1%DB%8C-%D9%81%D8%A7%D8%B1%D8%B3.jpg', 'https://www.farsnews.com/rss/social');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_fory`
--

CREATE TABLE `tbl_ne_fory` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ne_fory`
--

INSERT INTO `tbl_ne_fory` (`id`, `title`, `img`, `url`) VALUES
(1, '???????? ?????', 'https://khabarfoori.com/bundles/data/images/filemanager/1/goonagoon/IMG_20170801_154942.jpg', 'http://khabarfoori.com/rss/ln');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_isna`
--

CREATE TABLE `tbl_ne_isna` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_isna`
--

INSERT INTO `tbl_ne_isna` (`id`, `title`, `img`, `url`) VALUES
(1, 'آخرین اخبار', 'https://dadgostari-kh.eadl.ir/portals/dadgostarikhr/Gallery/images/isna.png', 'https://www.isna.ir/rss'),
(2, 'تاپ یک صفحه اصلی', 'https://dadgostari-kh.eadl.ir/portals/dadgostarikhr/Gallery/images/isna.png', 'https://www.isna.ir/rss?pl=260'),
(3, 'موبایل ورزشی ۱', 'https://dadgostari-kh.eadl.ir/portals/dadgostarikhr/Gallery/images/isna.png', 'https://www.isna.ir/rss?pl=197'),
(4, 'علمی و دانشگاهی', 'https://dadgostari-kh.eadl.ir/portals/dadgostarikhr/Gallery/images/isna.png', 'https://www.isna.ir/rss/tp/5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_jamjam`
--

CREATE TABLE `tbl_ne_jamjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_jamjam`
--

INSERT INTO `tbl_ne_jamjam` (`id`, `title`, `img`, `url`) VALUES
(1, 'فرهنگی', 'https://static2.borna.news/servev2/u2XuzdKMWitX/KxuoffTghAA,/n82641974-71825152.jpg', 'http://jamejamonline.ir/RssFeed/01-01-01-118'),
(2, 'فعالیت های قرآنی', 'https://static2.borna.news/servev2/u2XuzdKMWitX/KxuoffTghAA,/n82641974-71825152.jpg', 'http://jamejamonline.ir/RssFeed/01-01-01-118-679'),
(3, 'دفاع مقدس', 'https://static2.borna.news/servev2/u2XuzdKMWitX/KxuoffTghAA,/n82641974-71825152.jpg', 'http://jamejamonline.ir/RssFeed/01-01-05-118-142'),
(4, 'گردشگری', 'https://static2.borna.news/servev2/u2XuzdKMWitX/KxuoffTghAA,/n82641974-71825152.jpg', 'http://jamejamonline.ir/RssFeed/01-01-01-118-680');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_tabnak`
--

CREATE TABLE `tbl_ne_tabnak` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_tabnak`
--

INSERT INTO `tbl_ne_tabnak` (`id`, `title`, `img`, `url`) VALUES
(1, 'فرهنگي', 'https://img9.irna.ir/old/Image/1393/13930419/81232629/81232629-5814919.jpg', 'https://www.tabnak.ir/fa/rss/1/1'),
(2, 'سیاسی', 'https://img9.irna.ir/old/Image/1393/13930419/81232629/81232629-5814919.jpg', 'https://www.tabnak.ir/fa/rss/1/2'),
(3, 'اجتماعی', 'https://img9.irna.ir/old/Image/1393/13930419/81232629/81232629-5814919.jpg', 'https://www.tabnak.ir/fa/rss/1/3'),
(4, 'اقتصادی', 'https://img9.irna.ir/old/Image/1393/13930419/81232629/81232629-5814919.jpg', 'https://www.tabnak.ir/fa/rss/1/4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_tasnim`
--

CREATE TABLE `tbl_ne_tasnim` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_tasnim`
--

INSERT INTO `tbl_ne_tasnim` (`id`, `title`, `img`, `url`) VALUES
(1, 'مهمترین اخبار تسنیم', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1394/10/01/139410011036272706762304.jpg', 'https://www.tasnimnews.com/fa/rss/feed/0/8/0/%D9%85%D9%87%D9%85%D8%AA%D8%B1%DB%8C%D9%86-%D8%A7%D8%AE%D8%A8%D8%A7%D8%B1-%D8%AA%D8%B3%D9%86%DB%8C%D9%85'),
(2, 'پربیننده‌ترین اخبار', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1394/10/01/139410011036272706762304.jpg', 'https://www.tasnimnews.com/fa/rss/feed/0/7/0/%D9%BE%D8%B1%D8%A8%DB%8C%D9%86%D9%86%D8%AF%D9%87-%D8%AA%D8%B1%DB%8C%D9%86-%D8%A7%D8%AE%D8%A8%D8%A7%D8%B1?hit=1'),
(3, 'اخبار برگزیده', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1394/10/01/139410011036272706762304.jpg', 'https://www.tasnimnews.com/fa/rss/feed/0/9/0/%D8%A7%D8%AE%D8%A8%D8%A7%D8%B1-%D8%A8%D8%B1%DA%AF%D8%B2%DB%8C%D8%AF%D9%87'),
(4, 'یادداشت', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1394/10/01/139410011036272706762304.jpg', 'https://www.tasnimnews.com/fa/rss/feed/0/135/0/%DB%8C%D8%A7%D8%AF%D8%AF%D8%A7%D8%B4%D8%AA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_varzeshnavad`
--

CREATE TABLE `tbl_ne_varzeshnavad` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_varzeshnavad`
--

INSERT INTO `tbl_ne_varzeshnavad` (`id`, `title`, `img`, `url`) VALUES
(1, 'آخرین اخبار ورزشی 90', 'http://limoographic.com/wp-content/uploads/2016/04/90.logo_.limoographic.jpg', 'https://90tv.ir/rss/news');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_varzeshthree`
--

CREATE TABLE `tbl_ne_varzeshthree` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_varzeshthree`
--

INSERT INTO `tbl_ne_varzeshthree` (`id`, `title`, `img`, `url`) VALUES
(1, 'آخرین اخبار ورزشی', 'https://static.farakav.com/files/pictures/thumb/01026070.jpg', 'http://www.varzesh3.com/rss/all'),
(2, 'آخرین خبرهای فوتبال ایران', 'https://static.farakav.com/files/pictures/thumb/01026070.jpg', 'http://www.varzesh3.com/rss/domesticFootball'),
(3, 'آخرین خبرهای فوتبال خارجی', 'https://static.farakav.com/files/pictures/thumb/01026070.jpg', 'http://www.varzesh3.com/rss/foreignFootball'),
(4, 'آخرین خبرهای ورزشی رشته های غیر از فوتبال', 'https://static.farakav.com/files/pictures/thumb/01026070.jpg', 'http://www.varzesh3.com/rss/otherSports');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ne_yjc`
--

CREATE TABLE `tbl_ne_yjc` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ne_yjc`
--

INSERT INTO `tbl_ne_yjc` (`id`, `title`, `img`, `url`) VALUES
(1, 'سیاسی', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Logo_%26_LogoType_YJC.jpg', 'https://www.yjc.ir/fa/rss/3'),
(2, 'بین‌الملل', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Logo_%26_LogoType_YJC.jpg', 'https://www.yjc.ir/fa/rss/9'),
(3, 'ورزشی', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Logo_%26_LogoType_YJC.jpg', 'https://www.yjc.ir/fa/rss/8'),
(4, 'اجتماعی', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Logo_%26_LogoType_YJC.jpg', 'https://www.yjc.ir/fa/rss/5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nohe`
--

CREATE TABLE `tbl_nohe` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `actor` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nohe`
--

INSERT INTO `tbl_nohe` (`id`, `title`, `actor`, `id_category`, `img`, `url`) VALUES
(1, ' حجت الله یگانه پسرم مهدی جان ', 'سعید حدادیان', 10, 'http://nava.iranseda.ir/picture/?attid=218205&s=c', 'http://player.iranseda.ir/islam-player/?VALID=TRUE&g=277755&t=1&w=45'),
(2, ' زهر افتاده به جان جگرم مهدی جان ', 'مجید بنی فاطمه ', 10, 'http://nava.iranseda.ir/picture/?attid=218150&s=c', 'http://player.iranseda.ir/islam-player/?VALID=TRUE&g=277255&t=1&w=45'),
(3, 'فاطمیه اول ۹۶، شب دوم', 'حنیف طاهری و حسین خلجی', 10, 'http://quran.iranseda.ir/Picture?AttID=243625&s=c', 'http://player.iranseda.ir/islam-player/?g=286833&w=45&VALID=TRUE'),
(4, 'وفات حضرت زینب (س)۹۷', 'حنیف طاهری', 10, 'http://quran.iranseda.ir/Picture?AttID=240517&s=c', 'http://player.iranseda.ir/islam-player/?g=309999&w=45&VALID=TRUE'),
(5, 'شهادت امام موسی کاظم (ع)', 'مجید بنی فاطمه و حسین طاهری', 10, 'http://quran.iranseda.ir/Picture?AttID=245521&s=c', 'http://player.iranseda.ir/islam-player/?g=318790&w=45&VALID=TRUE'),
(6, 'شهادت امام موسی کاظم (ع)', 'سید مهدی میرداماد', 10, 'http://quran.iranseda.ir/Picture?AttID=245517&s=c', 'http://player.iranseda.ir/islam-player/?g=318831&w=45&VALID=TRUE'),
(7, '۳۰ صفر شهادت امام رضا (ع)', 'حسن خلج و مهدی میرداماد', 10, 'http://quran.iranseda.ir/Picture?AttID=216568&s=c', 'http://player.iranseda.ir/islam-player/?g=275733&w=45&VALID=TRUE'),
(8, 'وفات حضرت زینب (س)', 'سید مهدی میرداماد', 10, 'http://quran.iranseda.ir/Picture?AttID=243086&s=c', 'http://player.iranseda.ir/islam-player/?g=315592&w=45&VALID=TRUE'),
(9, 'ای خدا را آیت عظمی رضا', 'محمود كریمی', 10, 'http://quran.iranseda.ir/Picture?AttID=63566&s=c', 'http://player.iranseda.ir/islam-player/?g=58511&w=45&VALID=TRUE'),
(10, 'وفات حضرت ام البنین (س)', 'محمود کریمی', 10, 'http://quran.iranseda.ir/Picture?AttID=237567&s=c', 'http://player.iranseda.ir/islam-player/?g=306341&w=45&VALID=TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_onlineservices`
--

CREATE TABLE `tbl_onlineservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_onlineservices`
--

INSERT INTO `tbl_onlineservices` (`id`, `title`, `id_category`, `img`, `url`) VALUES
(1, 'خدمات پرداخت', 14, 'https://365web.ir/wp-content/uploads/2018/07/payment.jpg', 'http://chatr.anzalepoxy.ir/charge/'),
(2, 'خرید بلیط هواپیما', 15, 'https://i.pinimg.com/originals/89/bc/ca/89bcca07e2169b9eef3a5edea6ec61f3.png', 'http://flight.zial724.com/'),
(3, 'پرداخت قبوض', 14, 'https://img9.irna.ir/d/r2/2019/06/24/4/156423960.jpg', 'https://bill.pec.ir/Bill/Payment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quran`
--

CREATE TABLE `tbl_quran` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `actor` varchar(50) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quran`
--

INSERT INTO `tbl_quran` (`id`, `title`, `actor`, `id_category`, `img`, `url`) VALUES
(1, 'تلاوت تحقیق - نجم ، قمر ، رحمن', 'ابوالعینین شعیشع ', 11, 'http://quran.iranseda.ir/picture/?attid=52448&s=c', 'http://player.iranseda.ir/quran-player/?VALID=TRUE&g=56908&t=2&w=46'),
(2, 'تلاوت تحقیق - دخان ، جاثیه', ' احمد احمد نعینع ', 11, 'http://quran.iranseda.ir/picture/?attid=122208&s=c', 'http://player.iranseda.ir/quran-player/?VALID=TRUE&g=142868&t=1&w=46'),
(3, 'لاوت تحقیق - یونس ، حمد ، بقره', 'احمد رزیقی', 11, 'http://quran.iranseda.ir/Picture?AttID=121968&s=c', 'http://player.iranseda.ir/quran-player/?g=143016&w=46&VALID=TRUE'),
(4, 'تلاوت تحقیق - آل عمران', 'شعبان عبدالعزیز صیاد', 11, 'http://quran.iranseda.ir/Picture?AttID=163375&s=c', 'http://player.iranseda.ir/quran-player/?g=206013&w=46&VALID=TRUE'),
(5, 'تلاوت تحقیق - قمر ، رحمن ، علق', 'سید متولی عبدالعال', 11, 'http://quran.iranseda.ir/Picture?AttID=121774&s=c', 'http://player.iranseda.ir/quran-player/?g=142943&w=46&VALID=TRUE'),
(6, 'تلاوت تحقیق - ابراهیم', 'کامل یوسف بهتیمی', 11, 'http://quran.iranseda.ir/Picture?AttID=114532&s=c', 'http://player.iranseda.ir/quran-player/?g=124384&w=46&VALID=TRUE'),
(7, 'تلاوت تحقیق - کهف ، شمس', 'شحات محمد انور', 11, 'http://quran.iranseda.ir/Picture?AttID=87508&s=c', 'http://player.iranseda.ir/quran-player/?g=63935&w=46&VALID=TRUE'),
(8, 'تلاوت تحقیق - ملک ، تکویر', 'عنتر سعید مسلم', 11, 'http://quran.iranseda.ir/Picture?AttID=115659&s=c', 'http://player.iranseda.ir/quran-player/?g=60829&w=46&VALID=TRUE'),
(9, 'تلاوت تحقیق - حاقه ، حج', 'عبدالباسط محمد عبدالصمد', 11, 'http://quran.iranseda.ir/Picture?AttID=115642&s=c', 'http://player.iranseda.ir/quran-player/?g=60794&w=46&VALID=TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_radio`
--

CREATE TABLE `tbl_radio` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_radio`
--

INSERT INTO `tbl_radio` (`id`, `title`, `img`, `url`) VALUES
(1, 'رادیو گیلان', 'https://shimaiptv.ir/wp-content/uploads/2018/07/Rasht_TV.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=515&t=b&auto=true&SAVE=TRUE'),
(2, 'رادیو محرم', 'http://www.aryanews.com/Uploads/NewsPics/20190831103506908.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=26&t=b&auto=true&SAVE=TRUE'),
(3, 'رادیو اقتصاد', 'http://www.pririb.ir/files/pr/newspics/thumb_360_1626451154egtesad%20%20%202.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=19&t=b&auto=true&SAVE=TRUE'),
(4, 'رادیو آوا', 'https://mytuner.global.ssl.fastly.net/media/tvos_radios/33nlqlgumgmf.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=21&t=b&auto=true&SAVE=TRUE'),
(5, 'رادیو ایران', 'https://cdn.yjc.ir/files/fa/news/1394/12/28/4288616_700.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=11&t=b&auto=true&SAVE=TRUE'),
(6, 'رادیو پیام', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Radio.Payam.png/1200px-Radio.Payam.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=12&t=b&auto=true&SAVE=TRUE'),
(7, 'رادیو تلاوت', 'http://up.katrin.ir/up/tvt/live/radio/internal/ra-talavat.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=28&t=b&auto=true&SAVE=TRUE'),
(8, 'رادیو تهران', 'https://media.mehrnews.com/d/2015/10/21/4/1876710.jpg?ts=1486462047399', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=20&t=b&auto=true&SAVE=TRUE'),
(9, 'رادیو جوان', 'https://media.mehrnews.com/d/2015/10/21/4/1876710.jpg?ts=1486462047399', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=13&t=b&auto=true&SAVE=TRUE'),
(10, 'رادیو سلامت', 'http://irfederation.ir/wp-content/uploads/2018/07/20150816175938280.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=17&t=b&auto=true&SAVE=TRUE'),
(11, 'رادیو صبا', 'https://upload.wikimedia.org/wikipedia/fa/thumb/a/a3/%D8%B1%D8%A7%D8%AF%DB%8C%D9%88_%D8%B5%D8%A8%D8%A7.svg/200px-%D8%B1%D8%A7%D8%AF%DB%8C%D9%88_%D8%B5%D8%A8%D8%A7.svg.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=23&t=b&auto=true&SAVE=TRUE'),
(12, 'رادیو فرهنگ', 'http://accvs.com/wp-content/uploads/2018/12/D1736453T16873179web.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=16&t=b&auto=true&SAVE=TRUE'),
(13, 'رادیو قرآن', 'https://media.mehrnews.com/d/2017/06/12/3/2484339.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=15&t=b&auto=true&SAVE=TRUE'),
(14, 'رادیو گفتگو', 'http://www.opex.ir/opex_content/media/image/2014/08/3045_orig.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=29&t=b&auto=true&SAVE=TRUE'),
(15, 'رادیو معارف', 'http://ha.entekhabgroup.ir/v5/wp-content/uploads/2014/10/49.jpg', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=14&t=b&auto=true&SAVE=TRUE'),
(16, 'رادیو نمایش', 'https://upload.wikimedia.org/wikipedia/fa/1/13/Logo-radionamayesh1.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=22&t=b&auto=true&SAVE=TRUE'),
(17, 'رادیو ورزش', 'https://upload.wikimedia.org/wikipedia/fa/thumb/f/fa/Radio_Varzesh_Logo.png/200px-Radio_Varzesh_Logo.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=18&t=b&auto=true&SAVE=TRUE'),
(18, 'رادیو عربی', 'http://www.4androidapk.com/data/programs/images/google-play-app_50450.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=202&t=b&auto=true&SAVE=TRUE'),
(19, 'رادیو انگلیسی', 'http://radio.iranseda.ir/images/icons_Logo/radio-english.png', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=201&t=b&auto=true&SAVE=TRUE'),
(20, 'رادیو زیارت', 'http://radio.iranseda.ir/channelLogo/?s=c&c=radio-ziarat', 'http://player.iranseda.ir/live-player/?VALID=TRUE&CH=203&t=b&auto=true&SAVE=TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_chef`
--

CREATE TABLE `tbl_sa_chef` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_chef`
--

INSERT INTO `tbl_sa_chef` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'آموزش سالاد سزار ایرانی تصویری', 'https://irancook.ir/wp-content/uploads/2016/01/Ceasar-Salad.jpg', 'https://hw17.cdn.asset.aparat.com/aparat-video/e3ba42ca102fa7562da0321a0e884ddc10814725-240p__40148.mp4', '0'),
(2, 'آموزش استیک خوشمزه تصویری', 'https://salamat.life/wp-content/uploads/2015/09/%D8%B1%D8%A7%D8%B2-%D9%BE%D8%AE%D8%AA%D9%86-%DB%8C%DA%A9-%D8%A7%D8%B3%D8%AA%DB%8C%DA%A9-%D8%AE%D9%88%D8%B4%D9%85%D8%B2%D9%87.jpg', 'https://hw19.cdn.asset.aparat.com/aparat-video/adca0ef2869a04b79389fe63a34deaef10811271-240p__44964.mp4', '0'),
(3, 'کیک کیله ای مربا دار', 'https://static.cdn.asset.aparat.com/avt/18663303-1202-b__556629526.jpg', 'https://hw4.cdn.asset.aparat.com/aparat-video/b3e879ce0ab72fd206834f996dbcb92918674098-360p__82028.mp4', '0'),
(4, 'طرز تهیه نان کیکی', 'https://irancook.ir/wp-content/uploads/2015/10/Cornbread.jpg', 'https://hw15.cdn.asset.aparat.com/aparat-video/4aeb4172c4b9cc2509a3dbd149280e9018674246-360p__57748.mp4', '0'),
(5, 'چبلی کباب از بادنجان', 'https://static.cdn.asset.aparat.com/avt/18663384-2152-b__412530958.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/708f6b66f746a0cf018e27f28cd748b218674154-360p__47463.mp4', '0'),
(6, 'پختن کباب چوبکی', 'http://naghdeghaza.ir/wp-content/uploads/2019/05/0122000100.jpg', 'https://as3.cdn.asset.aparat.com/aparat-video/bedf974e7e9c9a2fb29094a44c0a979918674368-360p__67325.mp4', '0'),
(7, '25 دستور پخت برای غذاهای لذیذ و خوشمزه که میتوان زیر پنج دقیقه درست کرد', 'https://picsanat.com/wp-content/uploads/2019/05/%D8%B9%DA%A9%D8%A7%D8%B3%DB%8C-%D8%AA%D8%A8%D9%84%DB%8C%D8%BA%D8%A7%D8%AA%DB%8C-%D8%A7%D8%B2-%D8%BA%D8%B0%D8%A7.jpg', 'https://hw18.cdn.asset.aparat.com/aparat-video/8312902c9f03f00a2534a8d7a385fce418725680-240p__99759.mp4', '0'),
(8, 'طرز تهیه سوپ میسو با قارچ', 'http://www.alamto.com/wp-content/uploads/2020/01/Miso-Mushroom-Final-Shot-1.jpg', 'http://www.alamto.com/miso-soup-recipe.html', '1'),
(9, 'طرز تهیه نوشیدنی های گرم زمستانی', 'http://www.alamto.com/wp-content/uploads/2013/01/9614528567.jpg', 'http://www.alamto.com/seven-hot-offer-for-winter.html', '1'),
(10, 'لذت آشپزی طرز تهیه سمبوسه\r\n', 'https://irancook.ir/wp-content/uploads/2018/10/sambose.sibzamini.jpg', 'https://hw15.cdn.asset.aparat.com/aparat-video/49a25767410ec4a01f7f5b6ae1b8b38d21534273-240p.mp4', '0'),
(11, 'دسر موس شکلات با آشپزی خانگی', 'https://irancook.ir/wp-content/uploads/2012/03/chocolate-mousse-1.jpg', 'https://as2.cdn.asset.aparat.com/aparat-video/39fbc453a3760a3e39c777f97b0837ab21536549-240p.mp4', '0'),
(12, 'لذت آشپزی - مربای انار و سیب', 'https://static.cdn.asset.aparat.com/avt/18245154-3002-b__123074513.jpg', 'https://hw6.cdn.asset.aparat.com/aparat-video/d9c83662b2cfd46322da2abef60b222521531638-240p.mp4', '0'),
(13, 'ترفند های آشپزی با استفاده از نان در خانه', 'https://static.cdn.asset.aparat.com/avt/21528963-6912__6048.jpg', 'https://hw4.cdn.asset.aparat.com/aparat-video/5d13a5ea9e9e50cd8ec5dd13d71af1c621528963-240p.mp4', '0'),
(14, 'آموزش آشپزی خورشت قیمه خوش رنگ و بو و خوش طعم', 'https://static.cdn.asset.aparat.com/avt/21533791-9788-b.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/013a99397a349e167ca972db304bb31f21533791-240p.mp4', '0'),
(15, 'طرز تهیه خورش قرمه سبزی', 'https://www.2nafare.com/wp-content/uploads/2015/01/ghormeh-sabzi-1000x667.jpg', 'https://as7.cdn.asset.aparat.com/aparat-video/3967ba7c59ac99d10708ab618a9b2e5b21513997-240p.mp4', '0'),
(16, 'آموزش بامیه خانگی\r\n', 'https://photokade.com/wp-content/uploads/bamieh-rmz-photokade-1.jpg', 'https://as4.cdn.asset.aparat.com/aparat-video/3d3b3a46d0a9d4cd5bda69b73c90875a21512982-240p.mp4', '0'),
(17, 'ماکارون فرانسوی', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/92190062_110639533755349_134300905466344574_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=6iKHb_Lcx1QAX-a48G3&oh=48033f81d90c8fde1b99161617582', 'https://hw4.cdn.asset.aparat.com/aparat-video/3657333023dee7c69f4ba7f682c9fa7021512387-360p.mp4', '0'),
(18, 'زولبیا خانگی با طعم قنادی‎\r\n', 'https://static.cdn.asset.aparat.com/avt/21319898-7722-b.jpg', 'https://hw1.cdn.asset.aparat.com/aparat-video/d98eee070efb6269c639298775e78e0621319898-360p.mp4', '0'),
(19, 'بستنی خانگی شکلاتی', 'https://arga-mag.com/file/img/2017/04/Create-a-chocolate-ice-cream-at-home-5.jpg', 'https://as2.cdn.asset.aparat.com/aparat-video/31b6014264373057cb952ab212a5d6dc21310307-360p.mp4', '0'),
(20, 'کیک یزدی\r\n', 'https://irancook.ir/wp-content/uploads/2013/07/PicsArt_10-20-04.12.53.jpg', 'https://as2.cdn.asset.aparat.com/aparat-video/370c3a23b5d78881e851ded8512fef9d21334696-360p.mp4', '0'),
(21, 'ترفندهای آشپزی برای پختن کباب', 'https://dl.cafefilim.com/2020/04/D7c4M5127251Big.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/eddb18a401d18328eb9bd92881e1ef6321352515-360p.mp4', '0'),
(22, '20 ترفند و دستور آشپزی با پنیر\r\n', 'https://dl.cafefilim.com/2020/04/P4dUv5129069Big.jpg', 'https://as7.cdn.asset.aparat.com/aparat-video/4e2e22d6c9af852ac866284566c8dcac21418960-360p.mp4', '0'),
(23, '\r\n\r\n\r\n\r\nآموزش درست کردن دونات', 'https://irancook.ir/wp-content/uploads/2011/11/%D9%BE%DB%8C%D8%B1%D8%A7%D8%B4%DA%A9%DB%8C-%D8%AF%D9%88%D9%86%D8%A7%D8%AA.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/7e8b89a8c76a5cbaf0fbaddde46bf47d21335016-360p.mp4', '0'),
(24, 'آش رشته', 'https://irancook.ir/wp-content/uploads/2012/07/ash-reshteh-62.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/95a7191cdf7eacb87d9872d4108fa47f21431085-360p.mp4', '0'),
(25, 'آموزش آشپزی قزل آلا با سس انار\r\n', 'https://dl.foodkook.ir/2020/02/fWa5A1522665-FoodKook.jpg', 'https://as7.cdn.asset.aparat.com/aparat-video/e0f64625784db9ce3e339b3bedb206b121358132-360p.mp4', '0'),
(26, 'طرز تهیه کشک بادمجان', 'https://www.sooran.com/public/images/upload/3083', 'https://hw2.cdn.asset.aparat.com/aparat-video/1a48136aca202e7a62ebed9b6c1595cc21332934-360p.mp4', '0'),
(27, 'طرزتهیه مرغ بریان', 'https://irancook.ir/wp-content/uploads/2017/02/Lemon-Rosemary-Roasted-Chicken.jpg', 'https://hw2.cdn.asset.aparat.com/aparat-video/0aa659afe9522361a31966b8cac0f78521375290-360p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_employ`
--

CREATE TABLE `tbl_sa_employ` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_employ`
--

INSERT INTO `tbl_sa_employ` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'اموزش درست کردن یک مدل ساک دستی ساده', 'https://shopgramapp.com/s3/media/product_images/67687238_124916815498510_557226658343068984_n.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/5b8949555b2ffa9bb10a9c8f8253ef1c18509675-240p__54209.mp4', '0'),
(2, 'چگونه یک ماشین دستی کوچک بسازیم ؟', 'https://static.cdn.asset.aparat.com/avt/18499770-3433-b__591817272.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/2166d9551552ff79f005c373aa96dcf618499770-240p__32363.mp4', '0'),
(3, 'خیاطی مبتدی تا پیشرفته دوخت لبه دوزی', 'https://static.cdn.asset.aparat.com/avt/18561785-7557__3566.jpg', 'https://hw5.cdn.asset.aparat.com/aparat-video/e9d363f73d08e7aba9cef91046e2b67318667839-360p__29589.mp4', '0'),
(4, 'خیاطی دوخت شلوار زیبا', 'http://www.kichidareh.com/images/pins/20190505/r3x3r8sr4s4sj32.jpg', 'https://hw20.cdn.asset.aparat.com/aparat-video/8d595a00b5e1d17419a8c5f67e88584518573084-360p__74236.mp4', '0'),
(5, 'خیاطی دوخت پیراهن بچگانه زیبا', 'http://model24.ir/wp-content/uploads/2018/03/lebas-dokhtarane-16.jpg', 'https://hw4.cdn.asset.aparat.com/aparat-video/efc5b33e9507a152318bcac51ce012fd18572873-360p__82665.mp4', '0'),
(6, 'خیاطی دوخت کیف پارچه ای زیبا', 'https://ms-z3-mnm.mancdn.com/media/1ea33729-9ba8-4287-8321-50252008ab06.jpeg', 'https://hw5.cdn.asset.aparat.com/aparat-video/0a0ff77039e4f6bd4685c62634edff4518573107-360p__76554.mp4', '0'),
(11, 'شغل‌های خانگی پولساز را بشناسید', 'https://cdn.isna.ir/d/2019/09/07/3/57939563.jpg', 'https://www.isna.ir/news/98061809104/%D8%B4%D8%BA%D9%84-%D9%87%D8%A7%DB%8C-%D8%AE%D8%A7%D9%86%DA%AF%DB%8C-%D9%BE%D9%88%D9%84%D8%B3%D8%A7%D8%B2-%D8%B1%D8%A7-%D8%A8%D8%B4%D9%86%D8%A7%D8%B3%DB%8C%D8%AF', '1'),
(12, 'آشنایی با انواع مشاغل خانگی\r\n\r\n', 'https://www.beytoote.com/images/stories/scientific/carpet-weaving-5.jpg', 'https://www.beytoote.com/scientific/gozaresh-elmi/different1-types-businesses.html', '1'),
(13, 'آموزش ساخت اجاق هیزمی\r\n', 'https://static.cdn.asset.aparat.com/avt/9214382-2615__4105.jpg', 'https://hw3.cdn.asset.aparat.com/aparat-video/7d171f7b21477e2e700f0e7548dddc7921544715-360p.mp4', '0'),
(14, 'آموزش ساخت زيورالات دخترونه', 'https://static.cdn.asset.aparat.com/avt/21529268-4546-b.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/2ef715ab13bd76c4804d5ba9ef2b84b721529268-240p.mp4', '0'),
(15, 'آموزش ساخت انگشتر\r\n', 'https://www.tasvirezendegi.com/wp-content/uploads/2014/11/rose_ring_93_3_banner.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/df4e2d426d4c46f2d5e5f5df09139ebe21527129-360p.mp4', '0'),
(16, 'آموزش ساخت محافظ صورت\r\n', 'https://cdn01.zoomit.ir/2020/4/49fdc7b1-53a4-4cb1-bb47-7fde31c0d553.jpg', 'https://hw14.cdn.asset.aparat.com/aparat-video/b10f236f73fa0e6a71681f4537beb62b21515335-240p.mp4', '0'),
(17, 'آموزش ساخت دستگاه اسپرسو', 'https://s-v1.tamasha.com/statics/images/posters/12/0f/bZm4q_120fea04cb29273a12885632a18aade87a7e6820_1280x737.jpg', 'https://hw5.cdn.asset.aparat.com/aparat-video/34a0ad90df07816851367e370099b2bc21512239-360p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_food`
--

CREATE TABLE `tbl_sa_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_food`
--

INSERT INTO `tbl_sa_food` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'مشاور تغذیه', 'https://chizaridiet.com/wp-content/uploads/2019/02/dietmin.jpg', 'https://as9.cdn.asset.aparat.com/aparat-video/c23ed5204af353c37e31bfc5948b9e5418418019-240p__65436.mp4', '0'),
(2, 'تغذیه سالم', 'https://mosbate1.ir/wp-content/uploads/2019/09/buena-alimentaci%C3%B4n-1.-1024x1011.jpg', 'https://hw18.cdn.asset.aparat.com/aparat-video/095b796fa8d33805ead996375229a8fe18406820-240p__42612.mp4', '0'),
(3, 'چه هورمون هایی در رشد بچه تاثیر دارند؟', 'https://static.cdn.asset.aparat.com/avt/21504414-9110-b.jpg', 'https://hw15.cdn.asset.aparat.com/aparat-video/0c0030572816c7e10dab2a566558cdaa21504414-360p.mp4', '0'),
(4, 'نقش تغذیه دو سال اول در قد کودک', 'https://files.namnak.com/users/km/aup/201806/905_pics/%D8%AA%D8%BA%D8%B0%DB%8C%D9%87-%D8%A8%D8%B1%D8%A7%DB%8C-%D8%B1%D8%B4%D8%AF-%D9%82%D8%AF-%DA%A9%D9%88%D8%AF%DA%A9%D8%A7%D9%86.jpg', 'https://hw13.cdn.asset.aparat.com/aparat-video/ee279566adbbd7ba83e0cf646d75375221504407-360p.mp4', '0'),
(5, 'نقش وراثت در رشد کودک', 'https://arameshemandegar.com/wp-content/uploads/2017/07/developmental.jpg', 'https://hw17.cdn.asset.aparat.com/aparat-video/d0d39ac9b70633758784b74d02d2e98421504392-360p.mp4', '0'),
(6, 'تفاوت رشد و نمو', 'https://dr-mardani.ir//fa/upload/8ea0bfb/o_c47be247.jpg', 'https://as4.cdn.asset.aparat.com/aparat-video/3bad635cf03906b10deddd005c04104b20752026-360p.mp4', '0'),
(7, 'سوتغذیه و عوارض آن', 'https://irnak.com/media/k2/items/cache/6f5560453c79f1b9be6d6c675f462b60_XL.jpg', 'https://hw19.cdn.asset.aparat.com/aparat-video/31a008f2eed21bfe1710a383bb6829dd20142371-360p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_plant`
--

CREATE TABLE `tbl_sa_plant` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_plant`
--

INSERT INTO `tbl_sa_plant` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'خواص دارویی برنج', 'http://www.ibehtash.com/wp-content/uploads/rice-1.jpg', 'https://hw19.cdn.asset.aparat.com/aparat-video/8219a9821b37135012958077c280f97418570739-240p__19923.mp4', '0'),
(2, 'خواص گیاهان دارویی', 'https://s.cafebazaar.ir/1/icons/kurdsofts.net.khavas_mive_512x512.png', 'https://hw3.cdn.asset.aparat.com/aparat-video/c6e1c3441e00831feb94fda48403d5a718167677-240p__44818.mp4', '0'),
(3, 'مراقبت از گیاهان در برابر سرما', 'https://www.niksalehi.com/khanedari/wp-content/uploads/sites/53/2012/12/%DA%AF%DB%8C%D8%A7%D9%87%D8%A7%D9%86-%D8%A2%D9%BE%D8%A7%D8%B1%D8%AA%D9%85%D8%A7%D9%86%DB%8C.jpg', 'https://hw4.cdn.asset.aparat.com/aparat-video/d3bb4f5a02157c96a06b2751497d384c18563811-360p__53864.mp4', '0'),
(4, 'گیاهان دارویی - گل گاو زبان', 'http://yarpooz.ir/wp-content/uploads/2019/05/1.jpg', 'https://as3.cdn.asset.aparat.com/aparat-video/3be1595d54727108673b8278e91591bf18577842-360p__57509.mp4', '0'),
(5, 'راه های مقابله با آلودگی هوا (کاشت گیاهان خانگی)', 'https://www.airtouch.ir/wp-content/uploads/2017/12/air-purifying-plants-for-indoors.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/a26487d3822ab2f96eec175fb6a1107d18549876-360p__87860.mp4', '0'),
(6, 'درمان نقرس با گیاهان دارویی', 'https://tmedical.ir/wp-content/uploads/2014/04/%D8%AF%D8%B1%D9%85%D8%A7%D9%86-%D9%86%D9%82%D8%B1%D8%B3-%D8%AF%D8%B1-%D8%B7%D8%A8-%D8%B3%D9%86%D8%AA%DB%8C-%D8%A8%D8%A7-%DA%AF%DB%8C%D8%A7%D9%87%D8%A7%D9%86-%D8%AF%D8%A7%D8%B1%D9%88%DB%8C%DB%8C.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/e159fbc3a32bfe0140c7d91077219ea421497004-360p.mp4', '0'),
(7, 'رفع کسالت بهاری با گیاهان دارویی', 'https://cdn.yjc.ir/files/fa/news/1399/1/16/11651306_251.jpeg', 'https://hw6.cdn.asset.aparat.com/aparat-video/3979af1dff2290a1ec3efec0335f3a5521413862-360p.mp4', '0'),
(8, 'رفع زردی نوزاد با گیاهان دارویی', 'https://bestkid.ir/wp-content/uploads/2018/10/%D8%B2%D8%B1%D8%AF%DB%8C-%D9%86%D9%88%D8%B2%D8%A7%D8%AF.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/486cabeea44cf8933912c28e315b7e2b21440504-360p.mp4', '0'),
(9, 'درمان بیماری دیابت با گیاهان دارویی', 'https://behdasht.news/images/news/24569/thumbs/24569.jpg', 'https://as9.cdn.asset.aparat.com/aparat-video/264223828db6dd14c6d13c3633118e4321425955-360p.mp4', '0'),
(10, 'درمان دمل و جوش با گیاهان دارویی', 'https://static.cdn.asset.aparat.com/avt/21305142-5685-b.jpg', 'https://hw17.cdn.asset.aparat.com/aparat-video/88ffb3f77457e0a7165d8008266beebc21305142-360p.mp4', '0'),
(11, 'تاثیر گیاهان دارویی بر اعصاب و روان | گیاهان داروی', 'https://zendegionline.ir/zendegionline/8cc3/files/1122911.jpg', 'https://as5.cdn.asset.aparat.com/aparat-video/8a0ad03348982daa114c60c155607ede20979344-360p.mp4', '0'),
(12, 'درمان یبوست با گیاهان دارویی', 'https://bahalmag.ir/wp-content/uploads/2019/07/%D8%AF%D8%B1%D9%85%D8%A7%D9%86-%DB%8C%D8%A8%D9%88%D8%B3%D8%AA-%D8%A8%D8%A7-%DA%AF%DB%8C%D8%A7%D9%87%D8%A7%D9%86-%D8%AF%D8%A7%D8%B1%D9%88%DB%8C%DB%8C-730x410.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/9ffa50fabcd70a64a73e3ee968d7c31b20994767-360p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_pray`
--

CREATE TABLE `tbl_sa_pray` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_pray`
--

INSERT INTO `tbl_sa_pray` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'آموزش وضو صحیح و درست', 'http://s9.picofile.com/file/8349041892/98357248548540138.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/ae8da58253a66ddf2a3cb345c4537a1418280238-144p__73407.mp4', '0'),
(2, 'نحوه خواندن نماز ایات', 'https://media.alalamtv.net/uploads/855x495/151051495516769100.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/a26a0708beae9bf6182138ddce28d70218491317-240p__64905.mp4', '0'),
(6, 'خیاطی دوخت کیف پارچه ای زیبا', 'https://ms-z3-mnm.mancdn.com/media/1ea33729-9ba8-4287-8321-50252008ab06.jpeg', 'https://hw5.cdn.asset.aparat.com/aparat-video/0a0ff77039e4f6bd4685c62634edff4518573107-360p__76554.mp4', '0'),
(3, 'سحر و نماز شب', 'https://static.cdn.asset.aparat.com/avt/18671498-7521-b__217665754.jpg', 'https://hw20.cdn.asset.aparat.com/aparat-video/da8465eceadedc0b01b966623620b86a18671498-240p__93193.mp4', '0'),
(4, 'آیا بین نماز نافله صبح و نماز صبح می شود نماز قضا ', 'https://static.cdn.asset.aparat.com/avt/18635214-4166-b__561686069.jpg', 'https://as4.cdn.asset.aparat.com/aparat-video/2a054e6e8aedb03452c09510f2c469d418635214-360p__91866.mp4', '0'),
(5, 'حفظ قرآن سوره کوثر برای کودکان', 'https://s-v1.tamasha.com/statics/images/posters/3c/ad/VEJwm_3cad20abdb3b6cae13e9758e835178805263ff4f_854x470.jpg', 'https://hw16.cdn.asset.aparat.com/aparat-video/4fe7614b0fa1b271d08bfb657fa2d8e918670278-352p__65158.mp4', '0'),
(7, 'الهی قمشه ای:نماز و پرستش', 'https://static.cdn.asset.aparat.com/avt/21061139-5839__8906.jpg', 'https://hw1.cdn.asset.aparat.com/aparat-video/f814190bc7f8d0a251e99961bc883f4321520806-360p.mp4', '0'),
(8, 'آثار نماز شب/ آیت الله وحید خراسانی', 'https://static.cdn.asset.aparat.com/avt/21316134-2581-b.jpg', 'https://as2.cdn.asset.aparat.com/aparat-video/81066f7e7a9219441850538b8a03644f21316134-144p.mp4', '0'),
(9, 'دعای بعد از هر نماز ماه رمضان (یا علی و یا عظیم)', 'https://static.cdn.asset.aparat.com/avt/21486897-7129-b.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/ed6730345a3c752b7277767117de73c321486897-360p.mp4', '0'),
(10, 'حکایتی زیبا درباره اهمّیّت نماز', 'https://takvid.ir/img/PostImage/19333879-4473-b__502417497.webp', 'https://hw3.cdn.asset.aparat.com/aparat-video/8fa362fa25814d77d5d8b4492f7f145f21381890-240p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_psychology`
--

CREATE TABLE `tbl_sa_psychology` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_psychology`
--

INSERT INTO `tbl_sa_psychology` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'روانشناسی کودک', 'https://bestkid.ir/wp-content/uploads/2018/07/%D8%B1%D9%88%D8%A7%D9%86%D8%B4%D9%86%D8%A7%D8%B3-%DA%A9%D9%88%D8%AF%DA%A92.jpg', 'https://as4.cdn.asset.aparat.com/aparat-video/e6dff7b193e8aac00873d609c03ca5bd18514957-240p__19440.mp4', '0'),
(2, 'روانشناسی خوابیدن', 'http://cdn.bartarinha.ir/files/fa/news/1391/5/7/98776_419.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/590eed787b8b6f7fbd1b2cddf4f4210f18552480-240p__80900.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sa_sport`
--

CREATE TABLE `tbl_sa_sport` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sa_sport`
--

INSERT INTO `tbl_sa_sport` (`id`, `title`, `img`, `url`, `action`) VALUES
(1, 'صبحانه - ورزش صبحگاهی', 'https://static.cdn.asset.aparat.com/avt/18492723-3376.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/a44366a070c126f019dcd503d3463b3b18492723-240p__98483.mp4', '0'),
(2, 'ورزش درخانه برای تقویت عضلات شکم و پایین تنه', 'https://www.digikala.com/mag/wp-content/uploads/2018/12/daily-exercise.jp_.jpg', 'https://as7.cdn.asset.aparat.com/aparat-video/3c2adcab423118db05d9a1a1e3f6cb5218517406-240p__34815.mp4', '0'),
(3, 'آموزش تی آر ایکس | ورزش تی آر ایکس ( تمرین پا )', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXGBcYFxgYGRsYGBgYGBgXHRoYFxgdHSggGholHRcYIjEhJSkrLi4uGh8zODMtNygtLisBCgoKDg0OGhAQGi0mICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAL4BCgMBIgACEQEDEQH/', 'https://hw1.cdn.asset.aparat.com/aparat-video/1265e911d281786731675aba2195aae421460583-360p.mp4', '0'),
(4, 'تمرین کامل برای ورزش در خانه ', 'https://static.cdn.asset.aparat.com/avt/21092755-5673__3971.jpg', 'https://as5.cdn.asset.aparat.com/aparat-video/f89c519d9a22d4b169c84b5819512b8221092755-360p.mp4', '0'),
(5, 'ورزش در خانه (تمرین با وزن بدن)', 'https://application98.ir/wp-content/uploads/Arm-Workout-Biceps-ExerciseE2808F-icon.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/d9736e34c119848502f0ff2fe4dba38421005686-360p.mp4', '0'),
(6, 'ورزش در بارداری - تمرین هنگام راه رفتن', 'https://static.cdn.asset.aparat.com/avt/20905240-5240-b.jpg', 'https://as4.cdn.asset.aparat.com/aparat-video/678cdb04c57ac44876bb91f35db9765020905240-360p.mp4', '0'),
(7, '10 تمرین که مردان باید انجام دهند', 'https://static.cdn.asset.aparat.com/avt/20986406-7519-b.jpg', 'https://as5.cdn.asset.aparat.com/aparat-video/452368649c8d713c388bbb5383d2752e20986406-360p.mp4', '0'),
(8, 'تمرین کامل برای ورزش در خانه', 'https://static.cdn.asset.aparat.com/avt/20171321-7495-b.jpg', 'https://hw16.cdn.asset.aparat.com/aparat-video/cb6b40d9c788d19827329d358cf039f420171321-360p.mp4', '0'),
(9, '12 تمرین مناسب ورزش روزانه', 'https://img.dalfak.com/60/60857981-7899296502.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/b6f96b86f362b1f0b916520550e4d2923071580-360p.mp4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_series`
--

CREATE TABLE `tbl_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `seriesname` varchar(255) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_series`
--

INSERT INTO `tbl_series` (`id`, `title`, `seriesname`, `id_category`, `img`, `url`) VALUES
(1, 'تلاطم', 'قسمت 1 ! قسمت 2 ! قسمت ۳', 12, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2019-09-30/220_4537892d3b5a210cf1969c0cffc327e5.png', 'https://w32.telewebion.com/smil/2120827.m3u8?filepath=/media_b/telewebion/tehran/2019-10-01/normalProgram/230001/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI3OjEyIEFNJmhhc2hfdmFsdWU9enAvUGtycFp6RWtQWGE4Z09hRGdtdz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p!https://w32.telewebion.com/smil/2121550.m3u8?filepath=/media_c/telewebion/tehran/2019-10-02/normalProgram/225701/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI3OjE0IEFNJmhhc2hfdmFsdWU9NFlJMmliTC9aVFhNVHpCVC9ERUt5Zz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p!https://w32.telewebion.com/smil/2122186.m3u8?filepath=/media_c/telewebion/tehran/2019-10-03/normalProgram/230029/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI3OjE4IEFNJmhhc2hfdmFsdWU9M2VrUUFLeTVyckxXL3VpRDNWU3U3dz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p'),
(2, 'ستایش 3', 'قسمت 1 ! قسمت 2 ! قسمت 3', 13, 'http://static3.moroornews.com/thumbnail/7DB56pdxNfPc/M2CdUDwG5PC4IluXhQ_tqQlhqr14PimNu6AWkbSjxHNc0NtTBt195G7wa8wbxQC9ypyTc0rytfSl4vp3NS199P5ksZnBweW5n9uUWZ3ws8WOk8DdVvF0fQ,,/%D8%B3%D8%B1%DB%8C%D8%A7%D9%84+%D8%B3%D8%AA%D8%A7%DB%8C%D8%B4+3.jpg', 'https://api.telewebion.com/smil/2108696.m3u8?filepath=/media/telewebion/tv3/2019-09-13/normalProgram/204414/file.mp4&amp;secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTEwLzUvMjAxOSA2Ojg6MzMgQU0maGFzaF92YWx1ZT0ybFBaVW1HZWJGUytwYWxrRUdGd013PT0mdmFsaWRtaW51dGVzPTYwMDA=&amp;server=st2.telewebion.com&amp;file=480p!https://api.telewebion.com/smil/2109354.m3u8?filepath=/media/telewebion/tv3/2019-09-14/normalProgram/204509/file.mp4&amp;secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTEwLzUvMjAxOSA2OjE5OjQ4IEFNJmhhc2hfdmFsdWU9YmcwMkpDRnZSSXNHUFdhMklCQVl4UT09JnZhbGlkbWludXRlcz02MDAw&amp;server=st2.telewebion.com&amp;file=480p!https://api.telewebion.com/smil/2111416.m3u8?filepath=/media/telewebion/tv3/2019-09-17/normalProgram/205619/file.mp4&amp;secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTEwLzUvMjAxOSA1OjUyOjU1IEFNJmhhc2hfdmFsdWU9RTJRYmw3c3grSTAxM2tQM1NRSHNFdz09JnZhbGlkbWludXRlcz02MDAw&amp;server=st2.telewebion.com&amp;file=360p,480p'),
(3, 'پایتخت 6', 'قسمت 1 ! قسمت 2 ! قسمت 3', 13, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-18/220_c4c4314e940211ff8ccb65ab30e4d364.png', 'https://w33.telewebion.com/smil/2236378.m3u8?filepath=/media_b/telewebion/tv1/2020-03-20/normalProgram/220724/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojg6MjggQU0maGFzaF92YWx1ZT1hYmF4V2dMTHFqK21mQ1p5N1V4K0lRPT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa15.telewebion.com&file=360p,480p!https://w33.telewebion.com/smil/2237033.m3u8?filepath=/media/telewebion/tv1/2020-03-21/normalProgram/222424/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4Ojk6MCBBTSZoYXNoX3ZhbHVlPWREUm9IUHNGcWh0U1I1ZXhDd2NnZ1E9PSZ2YWxpZG1pbnV0ZXM9NjAwMA==&server=sa17.telewebion.com&file=360p,480p!https://w34.telewebion.com/smil/2237687.m3u8?filepath=/media/telewebion/tv1/2020-03-22/normalProgram/220712/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjE4OjM0IEFNJmhhc2hfdmFsdWU9SVIyNlAvdjAzTDRmUHowNmNKcmxmZz09JnZhbGlkbWludXRlcz02MDAw&server=sa20.telewebion.com&file=360p,480p'),
(4, 'یوسف پیامبر', 'قسمت 1 ! قسمت 2 ! قسمت 3', 13, 'http://navayeramsheh.com/shop/wp-content/uploads/2017/11/yoosefe-payambar-300x375.jpg', 'https://w34.telewebion.com/smil/1648227.m3u8?filepath=/media_b/telewebion/ifilm/2019-10-03/normalProgram/055835/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjE1OjMzIEFNJmhhc2hfdmFsdWU9MmVpNVMxOXlWU08yTk5zamlIZWZSZz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p!https://w34.telewebion.com/smil/1648731.m3u8?filepath=/media_c/telewebion/ifilm/2019-10-04/normalProgram/215823/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjE2OjUgQU0maGFzaF92YWx1ZT1Ga3lqRUFiZnNkVW4zOEtsOUh3UnVBPT0mdmFsaWRtaW51dGVzPTYwMDA=&server=st3.telewebion.com&file=360p,480p!https://w34.telewebion.com/smil/1649028.m3u8?filepath=/media_b/telewebion/ifilm/2019-10-05/normalProgram/215844/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjE2OjQ2IEFNJmhhc2hfdmFsdWU9OVNLbksvajFLaDVpOUltbXN1WDdOZz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p'),
(5, 'مختارنامه', 'قسمت ۱!قسمت ۲!قسمت ۳', 13, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2019-09-02/220_76e2c7418c7293151dde68a770b6fc56.png', 'https://w34.telewebion.com/smil/2099974.m3u8?filepath=/media_c/telewebion/tv4/2019-08-31/normalProgram/000342/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI5OjUwIEFNJmhhc2hfdmFsdWU9a3BLY3M2QVA2S0Y5MUVibWJ0SGE3UT09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p!https://w33.telewebion.com/smil/2100594.m3u8?filepath=/media_c/telewebion/tv4/2019-09-01/normalProgram/000812/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI5OjQ1IEFNJmhhc2hfdmFsdWU9TDFkNU9IZHJjV082V2FFSlkxbWxjdz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p!https://w2.telewebion.com/smil/2101312.m3u8?filepath=/media_b/telewebion/tv4/2019-09-02/normalProgram/000038/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjI5OjQ2IEFNJmhhc2hfdmFsdWU9TytSeVZ5NHB4RnRYUHJzOTJUdm9wZz09JnZhbGlkbWludXRlcz02MDAw&server=st3.telewebion.com&file=360p,480p'),
(6, 'کامیون', 'قسمت ۱!قسمت ۲!قسمت ۳', 5, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-18/220_346f825d9d8ca67c200acb3e92e2bf7a.png', 'https://w34.telewebion.com/smil/2236383.m3u8?filepath=/media_b/telewebion/tv2/2020-03-20/normalProgram/210632/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjE3OjM3IEFNJmhhc2hfdmFsdWU9NGJzZHdkNXB1L00wOXZQZ2pILzE4UT09JnZhbGlkbWludXRlcz02MDAw&server=sa15.telewebion.com&file=360p,480p!https://w32.telewebion.com/smil/2237044.m3u8?filepath=/media/telewebion/tv2/2020-03-21/normalProgram/210926/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjMyOjggQU0maGFzaF92YWx1ZT1rZHRLN2daSzd5dnlTWXNUbCtCdy9RPT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa23.telewebion.com&file=360p,480p\",\r\n  \"embedUrl\": \"https://m.telewebion.com/embed/vod?EpisodeID=2237044!https://w33.telewebion.com/smil/2237764.m3u8?filepath=/media/telewebion/tv2/2020-03-22/normalProgram/210621/file_224_32.mp4&secure_token=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMjgvMjAyMCA4OjMyOjkgQU0maGFzaF92YWx1ZT1wc3VteEZHVFhWVVlyWjR6UmFOUVhBPT0mdmFsaWRtaW51dGVzPTYwMDA=&server=sa20.telewebion.com&file=360p,480p'),
(10, 'دوپینگ', 'قسمت ۱!قسمت ۲!قسمت ۳', 15, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-18/220_7961833f773f9e9804d7008b1ae3fa6e.png', 'https://sa17.telewebion.com/vod/_definst_//media/telewebion/tv3/2020-03-16/normalProgram/204047/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA0OjU4OjggQU0maGFzaF92YWx1ZT1vbE1vRE1WRTJDb1lLRE1udWlmblhnPT0mdmFsaWRtaW51dGVzPTYwMDA=!https://sa17.telewebion.com/vod/_definst_//media/telewebion/tv3/2020-03-17/normalProgram/204504/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA0OjU4OjEzIEFNJmhhc2hfdmFsdWU9K3JKK1k3RXV1aGJiMTNWcGEvVFVqQT09JnZhbGlkbWludXRlcz02MDAw!https://sa15.telewebion.com/vod/_definst_//media_b/telewebion/tv3/2020-03-20/normalProgram/195448/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA1OjEwOjU2IEFNJmhhc2hfdmFsdWU9VnFNZW1nVmFIanpLYk5BbjB3bDc0UT09JnZhbGlkbWludXRlcz02MDAw'),
(11, 'مرد دو هزار چهره', 'قسمت ۱!قسمت ۲!قسمت ۳', 2, 'https://static.televebion.net/web/content_images/program_images/background_images/thumbs/2020-03-10/220_459a7729a31e972dddb6de614c0f004c.png', 'https://sa20.telewebion.com/vod/_definst_//media/telewebion/tv3/2020-03-07/normalProgram/205010/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA1OjEzOjEyIEFNJmhhc2hfdmFsdWU9K2M2UHdVRnlmaTlHWFk0cFQvKzRoQT09JnZhbGlkbWludXRlcz02MDAw!https://sa14.telewebion.com/vod/_definst_//media_b/telewebion/tv3/2020-03-08/normalProgram/205550/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA1OjEzOjEzIEFNJmhhc2hfdmFsdWU9SVJLN1pNakVHZzdLN3ZwQWFaZHpPUT09JnZhbGlkbWludXRlcz02MDAw!https://sa21.telewebion.com/vod/_definst_//media/telewebion/tv3/2020-03-10/normalProgram/205024/file_224_32.mp4/chunk.m3u8?wmsAuthSign=aXNfZnJlZT0xJnNlcnZlcl90aW1lPTMvMzAvMjAyMCA1OjEzOjEzIEFNJmhhc2hfdmFsdWU9ekJvNUlab3VheFo2ZFU4MXlaMXM0dz09JnZhbGlkbWludXRlcz02MDAw');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `action` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `description`, `img`, `action`) VALUES
(1, 'مشروح  بیانیه مهم و راهبردی رهبر معظم انقلاب با عنوان(گام دوم)', ' انقلاب کبیر اسلامی ایران در حالی چهلمین سالگرد پیروزی خود را پشت سر گذاشت و قدم به دهه‌ی پنجم حیات خود نهاد که اگرچه دشمنان مستکبرش گمان‌های باطلی در سر داشتند اما دوستانش در سراسر جهان، امیدوارانه آن را در گذر از چالش‌ها و به دست آوردن پیشرفت‌های خیره‌کننده، همواره سربلند دیده‌اند.\r\nدر چنین نقطه‌ی عطفی، رهبر حکیم انقلاب اسلامی با صدور «بیانیه‌ی گام دوم انقلاب» و برای ادامه‌ی این راه روشن، به تبیین دستاوردهای شگرف چهار دهه‌ی گذشته پرداخته و توصیه‌هایی اساسی به‌منظور «جهاد بزرگ برای ساختن ایران اسلامی بزرگ» ارائه فرموده‌اند.\r\nبیانیه‌ی «گام دوم انقلاب» تجدید مطلعی است خطاب به ملت ایران و به‌ویژه جوانان که به‌مثابه منشوری برای «دومین مرحله‌ی خودسازی، جامعه‌پردازی و تمدن‌سازی» خواهد بود و «فصل جدید زندگی جمهوری اسلامی» را رقم خواهد زد.\r\nاین گام دوم، انقلاب را «به آرمان بزرگش که ایجاد تمدن نوین اسلامی و آمادگی برای طلوع خورشید ولایت عظمیٰ (ارواحنافداه) هست» نزدیک خواهد کرد.\r\nمتن کامل این بیانیه به شرح زیر است.\r\n\r\nبسم الله الرّحمن الرّحیم\r\nالحمدلله ربّ العالمین و الصّلاة و السّلام علی سیّدنا محمّد و آله‌ الطّاهرین و صحبه المنتجبین و من تبعهم باحسان الی یوم الدّین.\r\n\r\nورود انقلاب اسلامی به دومین مرحله‌‌ی خودسازی، جامعه‌پردازی و تمدن‌سازی (۱)\r\nاز میان همه‌ی ملّتهای زیر ستم، کمتر ملّتی به انقلاب همّت میگمارد؛ و در میان ملّتهایی که به‌پاخاسته و انقلاب کرده‌اند، کمتر دیده شده که توانسته باشند کار را به نهایت رسانده و به‌جز تغییر حکومتها، آرمانهای انقلابی را حفظ کرده باشند. امّا انقلاب پُرشکوه ملّت ایران که بزرگ‌ترین و مردمی‌ترین انقلاب عصر جدید است، تنها انقلابی است که یک چلّه‌ی پُرافتخار را بدون خیانت به آرمانهایش پشت سر نهاده و در برابر همه‌ی وسوسه‌هایی که غیر قابل مقاومت به نظر میرسیدند، از کرامت خود و اصالت شعارهایش صیانت کرده و اینک وارد دوّمین مرحله‌ی خودسازی و جامعه‌پردازی و تمدّن‌سازی شده ‌است. درودی از اعماق دل بر این ملّت؛ بر نسلی که آغاز کرد و ادامه داد و بر نسلی که اینک وارد فرایند بزرگ و جهانیِ چهل سال دوّم میشود.\r\n\r\nپیروزی انقلاب اسلامی؛ آغازگر عصر جدید عالم\r\nآن روز که جهان میان شرق و غرب مادّی تقسیم شده بود و کسی گمان یک نهضت بزرگ دینی را نمیبُرد، انقلاب اسلامی ایران، با قدرت و شکوه پا به میدان نهاد؛ چهارچوب‌ها را شکست؛ کهنگی کلیشه‌ها را به رخ دنیا کشید؛ دین و دنیا را در کنار هم مطرح کرد و آغاز عصر جدیدی را اعلام نمود. طبیعی بود که سردمداران گمراهی و ستم واکنش نشان دهند، امّا این واکنش ناکام ماند. چپ و راستِ مدرنیته، از تظاهر به نشنیدن این صدای جدید و متفاوت، تا تلاش گسترده و گونه‌گون برای خفه کردن آن، هرچه کردند به اجلِ محتوم خود نزدیک‌تر شدند. اکنون با گذشت چهل جشن سالانه‌ی انقلاب و چهل دهه‌ی فجر، یکی از آن دو کانون دشمنی نابود شده و دیگری با مشکلاتی که خبر از نزدیکی احتضار میدهند، دست‌وپنجه نرم میکند! و انقلاب اسلامی با حفظ و پایبندی به شعارهای خود همچنان به پیش میرود.\r\n\r\nشعارهای جهانی، فطری، درخشان و همیشه‌زنده‌ی انقلاب اسلامی\r\nبرای همه‌چیز میتوان طول عمر مفید و تاریخ مصرف فرض کرد، امّا شعارهای جهانی این انقلاب دینی از این قاعده مستثنا است؛ آنها هرگز بی‌مصرف و بی‌فایده نخواهند شد، زیرا فطرت بشر در همه‌ی عصرها با آن سرشته است. آزادی، اخلاق، معنویّت، عدالت، استقلال، عزّت، عقلانیّت، برادری، هیچ یک به یک نسل و یک جامعه مربوط نیست تا در دوره‌ای بدرخشد و در دوره‌ای دیگر افول کند. هرگز نمیتوان مردمی را تصوّر کرد که از این چشم‌اندازهای مبارک دل‌زده شوند. هرگاه دل‌زدگی پیش آمده، از روی‌گردانی مسئولان از این ارزشهای دینی بوده است و نه از پایبندی به آنها و کوشش برای تحقّق آنها.\r\n\r\nدفاع ابدی از نظریه‌ی نظام انقلابی\r\nانقلاب اسلامی همچون پدیده‌ای زنده و بااراده، همواره دارای انعطاف و آماده‌ی تصحیح خطاهای خویش است، امّا تجدیدنظرپذیر و اهل انفعال نیست. به نقدها حسّاسیّت مثبت نشان میدهد و آن را نعمت خدا و هشدار به صاحبان حرفهای بی‌عمل میشمارد، امّا به هیچ بهانه‌ای از ارزشهایش که بحمدالله با ایمان دینی مردم آمیخته است، فاصله نمیگیرد. انقلاب اسلامی پس از نظام‌سازی، به رکود و خموشی دچار نشده و نمیشود و میان جوشش انقلابی و نظم سیاسی و اجتماعی تضاد و ناسازگاری نمیبیند، بلکه از نظریّه‌ی نظام انقلابی تا ابد دفاع میکند.\r\n\r\nجمهوری اسلامی و فاصله‌ی میان بایدها و واقعیتها\r\nجمهوری اسلامی، متحجّر و در برابر پدیده‌ها و موقعیّتهای نو به نو، فاقد احساس و ادراک نیست، امّا به اصول خود بشدّت پایبند و به مرزبندی‌های خود با رقیبان و دشمنان بشدّت حسّاس است. با خطوط اصلی خود هرگز بی‌مبالاتی نمیکند و برایش مهم است که چرا بماند و چگونه بماند. بی‌شک فاصله‌ی میان بایدها و واقعیّتها، همواره وجدانهای آرمان‌خواه را عذاب داده و میدهد، امّا این، فاصله‌ای طی‌شدنی است و در چهل سال گذشته در مواردی بارها طی شده است و بی‌شک در آینده، با حضور نسل جوان مؤمن و دانا و پُرانگیزه، با قدرت بیشتر طی خواهد شد.\r\n\r\nانقلاب اسلامی؛ مایه‌ی سربلندی ایران و ایرانی\r\nانقلاب اسلامی ملّت ایران، قدرتمند امّا مهربان و باگذشت و حتّی مظلوم بوده است. مرتکب افراط‌ها و چپ‌روی‌هایی که مایه‌ی ننگ بسیاری از قیامها و جنبشها است، نشده است. در هیچ معرکه‌ای حتّی با آمریکا و صدّام، گلوله‌ی اوّل را شلّیک نکرده و در همه‌ی موارد، پس ‌از حمله‌ی دشمن از خود دفاع کرده و البتّه ضربت متقابل را محکم فرود آورده است. این انقلاب از آغاز تا امروز نه بی‌رحم و خون‌ریز بوده و نه منفعل و مردّد. با صراحت و شجاعت در برابر زورگویان و گردنکشان ایستاده و از مظلومان و مستضعفان دفاع کرده است. این جوانمردی و مروّت انقلابی، این صداقت و صراحت و اقتدار، این دامنه‌ی عمل جهانی و منطقه‌ای در کنار مظلومان جهان، مایه‌ی سربلندی ایران و ایرانی است، و همواره چنین باد.\r\n\r\nبرای برداشتن گامهای استوار در آینده، باید گذشته را درست شناخت\r\nاینک در آغاز فصل جدیدی از زندگی جمهوری اسلامی، این بنده‌ی ناچیز مایلم با جوانان عزیزم، نسلی که پا به میدان عمل میگذارد تا بخش دیگری از جهاد بزرگ برای ساختن ایران اسلامی بزرگ را آغاز کند، سخن بگویم. سخن اوّل درباره‌ی گذشته است.\r\n\r\nعزیزان! نادانسته‌ها را جز با تجربه‌ی خود یا گوش سپردن به تجربه‌ی دیگران نمیتوان دانست. بسیاری از آنچه را ما دیده و آزموده‌ایم، نسل شما هنوز نیازموده و ندیده است. ما دیده‌ایم و شما خواهید دید. دهه‌های آینده دهه‌های شما است و شمایید که باید کارآزموده و پُرانگیزه از انقلاب خود حراست کنید و آن را هرچه بیشتر به آرمان بزرگش که ایجاد تمدّن نوین اسلامی و آمادگی برای طلوع خورشید ولایت عظمیٰ (ارواحنافداه) است، نزدیک کنید. برای برداشتن گامهای استوار در آینده، باید گذشته را درست شناخت و از تجربه‌ها درس گرفت؛ اگر از این راهبرد غفلت شود، دروغها به جای حقیقت خواهند نشست و آینده مورد تهدیدهای ناشناخته قرار خواهد گرفت. دشمنان انقلاب با انگیزه‌ای قوی، تحریف و دروغ‌پردازی درباره‌ی گذشته و حتّی زمان حال را دنبال میکنند و از پول و همه‌ی ابزارها برای آن بهره میگیرند. رهزنان فکر و عقیده و آگاهی بسیارند؛ حقیقت را از دشمن و پیاده‌نظامش نمیتوان شنید.\r\n\r\nآغاز انقلاب و نظام اسلامی از نقطه‌ی صفر\r\nانقلاب اسلامی و نظام برخاسته از آن، از نقطه‌ی صفر آغاز شد؛ اوّلاً: همه‌چیز علیه ما بود، چه رژیم فاسد طاغوت که علاوه ‌بر وابستگی و فساد و استبداد و کودتایی بودن، اوّلین رژیم سلطنتی در ایران بود که به دست بیگانه -و نه به زور شمشیر خود- بر سرِ کار آمده بود، و چه دولت آمریکا و برخی دیگر از دولتهای غربی، و چه وضع بشدّت نابسامان داخلی و عقب‌افتادگی شرم‌آور در علم و فنّاوری و سیاست و معنویّت و هر فضیلت دیگر.\r\n\r\nثانیاً: هیچ تجربه‌ی پیشینی و راه طی‌شده‌ای در برابر ما وجود نداشت. بدیهی است که قیامهای مارکسیستی و امثال آن نمیتوانست برای انقلابی که از متن ایمان و معرفت اسلامی پدید آمده است، الگو محسوب شود. انقلابیون اسلامی بدون سرمشق و تجربه آغاز کردند و ترکیب جمهوریّت و اسلامیّت و ابزارهای تشکیل و پیشرفت آن، جز با هدایت الهی و قلب نورانی و اندیشه‌ی بزرگ امام خمینی، به دست نیامد. و این نخستین درخشش انقلاب بود.\r\n\r\nتقابل دوگانه‌ی جدید «اسلام و استکبار»؛ پدیده‌ی برجسته‌ی جهان معاصر\r\nپس آ‌نگاه انقلاب ملّت ایران، جهان دوقطبی آن روز را به جهان سه‌قطبی تبدیل کرد و سپس با سقوط و حذف شوروی و اقمارش و پدید آمدن قطبهای جدید قدرت، تقابل دوگانه‌ی جدید «اسلام و استکبار» پدیده‌ی برجسته‌ی جهان معاصر و کانون توجّه جهانیان شد. از سویی نگاه امیدوارانه‌ی ملّتهای زیر ستم و جریانهای آزادی‌خواه جهان و برخی دولتهای مایل به استقلال، و از سویی نگاه کینه‌ورزانه و بدخواهانه‌ی رژیم‌های زورگو و قلدرهای باج‌طلب عالم، بدان دوخته شد. بدین‌گونه مسیر جهان تغییر یافت و زلزله‌ی انقلاب، فرعونهای در بسترِ راحت آرمیده را بیدار کرد؛ دشمنی‌ها با همه‌ی شدّت آغاز شد و اگر نبود قدرت عظیم ایمان و انگیزه‌ی این ملّت و رهبری آسمانی و تأییدشده‌ی امام عظیم‌الشّأن ما، تاب آوردن در برابر آن‌همه خصومت و شقاوت و توطئه و خباثت، امکان‌پذیر نمیشد.\r\n\r\nمدیریت جهادی و اعتقاد به اصل «ما میتوانیم»؛ عامل عزت و پیشرفت ایران در همه‌ی عرصه‌ها\r\nبه‌رغم همه‌ی این مشکلات طاقت‌فرسا، جمهوری اسلامی روزبه‌روز گامهای بلندتر و استوارتری به جلو برداشت. این چهل سال، شاهد جهادهای بزرگ و افتخارات درخشان و پیشرفتهای شگفت‌آور در ایران اسلامی است. عظمت پیشرفتهای چهل‌ساله‌ی ملّت ایران آنگاه بدرستی دیده میشود که این مدّت، با مدّتهای مشابه در انقلابهای بزرگی همچون انقلاب فرانسه و انقلاب اکتبر شوروی و انقلاب هند مقایسه شود. مدیریّتهای جهادی الهام‌گرفته از ایمان اسلامی و اعتقاد به اصل «ما میتوانیم» که امام بزرگوار به همه‌ی ما آموخت، ایران را به عزّت و پیشرفت در همه‌ی عرصه‌ها رسانید.\r\n\r\n* برکات بزرگ انقلاب اسلامی:\r\nانقلاب به یک انحطاط تاریخی طولانی پایان داد و کشور که در دوران پهلوی و قاجار بشدّت تحقیر شده و بشدّت عقب مانده بود، در مسیر پیشرفت سریع قرار گرفت؛ در گام نخست، رژیم ننگین سلطنت استبدادی را به حکومت مردمی و مردم‌سالاری تبدیل کرد و عنصر اراده‌ی ملّی را که جان‌مایه‌‌ی پیشرفت همه‌جانبه و حقیقی است در کانون مدیریّت کشور وارد کرد؛ آنگاه جوانان را میدان‌دار اصلی حوادث و وارد عرصه‌ی مدیریّت کرد؛ روحیه‌ و باور «ما میتوانیم» را به همگان منتقل کرد؛ به برکت تحریم دشمنان،‌ اتّکاء به توانایی داخلی را به همه آموخت و این منشأ برکات بزرگ شد:\r\n\r\nیک) ثبات و امنیت و حفظ تمامیت ارضی ایران\r\nاوّلاً: ثبات و امنیّت کشور و تمامیّت ارضی و حفاظت از مرزها را که آماج تهدید جدّی دشمنان قرار گرفته بود ضمانت کرد و معجزه‌ی پیروزی در جنگ هشت‌ساله و شکست رژیم بعثی و پشتیبانان آمریکایی و اروپایی و شرقی‌اش را پدید ‌آورد.\r\n\r\nدو) موتور پیشران کشور در عرصه‌ی علم و فنّاوری و ایجاد زیرساخت‌های حیاتی و اقتصادی و عمرانی\r\nثانیاً: موتور پیشران کشور در عرصه‌ی علم و فنّاوری و ایجاد زیرساخت‌های حیاتی و اقتصادی و عمرانی شد که تا اکنون ثمرات بالنده‌ی آن روزبه‌روز فراگیرتر میشود. هزاران شرکت دانش‌بنیان، هزاران طرح زیرساختی و ضروری برای کشور در حوزه‌های عمران و حمل‌ونقل و صنعت و نیرو و معدن و سلامت و کشاورزی و آب و غیره، میلیون‌ها تحصیل‌کرده‌ی دانشگاهی یا در حال تحصیل، هزاران واحد دانشگاهی در سراسر کشور، ده‌ها طرح بزرگ از قبیل چرخه‌ی سوخت هسته‌ای، سلّول‌های بنیادی، فنّاوری نانو، زیست‌فنّاوری و غیره با رتبه‌های نخستین در کلّ جهان، شصت برابر شدن صادرات غیرنفتی، نزدیک به ده برابر شدن واحدهای صنعتی، ده‌ها برابر شدن صنایع از نظر کیفی، تبدیل صنعت مونتاژ به فنّاوری بومی، برجستگی محسوس در رشته‌های گوناگون مهندسی از جمله در صنایع دفاعی، درخشش در رشته‌های مهم و حسّاس پزشکی و جایگاه مرجعیّت در آن و ده‌ها نمونه‌ی دیگر از پیشرفت، محصول آن روحیه و آن حضور و آن احساس جمعی است که انقلاب برای کشور به ارمغان آورد. ایرانِ پیش ‌از انقلاب، در تولید علم و فنّاوری صفر بود، در صنعت به‌جز مونتاژ و در علم به‌جز ترجمه هنری نداشت.\r\n\r\nسه) به اوج رسانیدن مشارکت مردمی و مسابقه‌ی خدمت‌رسانی\r\nثالثاً: مشارکت مردمی را در مسائل سیاسی مانند انتخابات، مقابله با فتنه‌های داخلی، حضور در صحنه‌های ملّی و استکبارستیزی به اوج رسانید و در موضوعات اجتماعی مانند کمک‌رسانی‌ها و فعّالیّتهای نیکوکاری که از پیش ‌از انقلاب آغاز شده بود، افزایش چشمگیر داد. پس ‌از انقلاب، مردم در مسابقه‌‌ی خدمت‌رسانی در حوادث طبیعی و کمبودهای اجتماعی مشتاقانه شرکت میکنند.\r\n\r\nچهار) ارتقاء شگفت‌آور بینش سیاسی آحاد مردم\r\nرابعاً: بینش سیاسی آحاد مردم و نگاه آنان به مسائل بین‌المللی را به گونه‌ی شگفت‌آوری ارتقاء داد. تحلیل سیاسی و فهم مسائل بین‌المللی در موضوعاتی همچون جنایات غرب بخصوص آمریکا، مسئله‌ی فلسطین و ظلم تاریخی به ملّت آن، مسئله‌ی جنگ‌افروزی‌ها و رذالتها و دخالتهای قدرتهای قلدر در امور ملّتها و امثال آن را از انحصار طبقه‌ی محدود و عزلت‌‌گزیده‌ای به نام روشنفکر، بیرون آورد؛ این‌گونه، روشنفکری میان عموم مردم در همه‌ی کشور و همه‌ی ساحتهای زندگی جاری شد و مسائلی از این دست حتّی برای نوجوانان و نونهالان، روشن و قابل فهم گشت.\r\n\r\nپنج) سنگین کردن کفه‌ی عدالت در تقسیم امکانات عمومی کشور\r\nخامساً: کفّه‌ی عدالت را در تقسیم امکانات عمومی کشور سنگین کرد. نارضایتی این حقیر از کارکرد عدالت در کشور به دلیل آنکه این ارزش والا باید گوهر بی‌همتا بر تارک نظام جمهوری اسلامی باشد و هنوز نیست، نباید به این معنی گرفته شود که برای استقرار عدالت کار انجام نگرفته است. واقعیّت آن است که دستاوردهای مبارزه با بی‌عدالتی در این چهار دهه، با هیچ دوره‌ی دیگر گذشته قابل مقایسه نیست. در رژیم طاغوت بیشترین خدمات و درآمدهای کشور در اختیار گروه کوچکی از پایتخت‌نشینان یا همسانان آنان در برخی دیگر از نقاط کشور بود. مردم بیشتر شهرها بویژه مناطق دوردست و روستاها در آخر فهرست و غالباً محروم از نیازهای اوّلیّه‌ی زیرساختی و خدمت‌رسانی بودند. جمهوری اسلامی در شمار موفّق‌ترین حاکمیّتهای جهان در جابه‌جایی خدمت و ثروت از مرکز به همه‌جای کشور، و از مناطق مرفّه‌نشین شهرها به مناطق پایین‌دست آن بوده است. آمار بزرگ راه‌سازی و خانه‌سازی و ایجاد مراکز صنعتی و اصلاح امور کشاورزی و رساندن برق و آب و مراکز درمانی و واحدهای دانشگاهی و سد و نیروگاه و امثال آن به دورترین مناطق کشور، حقیقتاً افتخارآفرین است؛ بی‌شک این همه، نه در تبلیغات نارسای مسئولان انعکاس یافته‌ و نه زبان بدخواهان خارجی و داخلی به آن اعتراف کرده است؛ ولی هست و حسنه‌ای برای مدیران جهادی و بااخلاص نزد خدا و خلق است. البتّه عدالت مورد انتظار در جمهوری اسلامی که مایل است پیرو حکومت علوی شناخته شود، بسی برتر از اینها است و چشم امید برای اجرای آن به شما جوانها است که در ادامه بدان خواهم پرداخت.\r\n\r\nشش) افزایش چشمگیر معنویت و اخلاق در فضای عمومی جامعه\r\nسادساً: عیار معنویّت و اخلاق را در فضای عمومی جامعه بگونه‌ای چشمگیر افزایش داد. این پدیده‌ی مبارک را رفتار و منش حضرت امام خمینی در طول دوران مبارزه و پس ‌از پیروزی انقلاب، بیش ‌از هر چیز رواج داد؛ آن انسان معنوی و عارف و وارسته از پیرایه‌های مادّی، در رأس کشوری قرار گرفت که مایه‌های ایمان مردمش بسی ریشه‌دار و عمیق بود. هرچند دست تطاول تبلیغات مروّج فساد و بی‌بندوباری در طول دوران پهلوی‌ها به آن ضربه‌های سخت زده و لجنزاری از آلودگی اخلاقی غربی را به درون زندگی مردم متوسّط و بخصوص جوانان کشانده بود، ولی رویکرد دینی و اخلاقی در جمهوری اسلامی، دلهای مستعد و نورانی بویژه جوانان را مجذوب کرد و فضا به سود دین و اخلاق دگرگون شد. مجاهدتهای جوانان در میدانهای سخت از جمله دفاع مقدّس، با ذکر و دعا و روحیه‌ی برادری و ایثار همراه شد و ماجراهای صدر اسلام را زنده و نمایان در برابر چشم همه نهاد. پدران و مادران و همسران با احساس وظیفه‌ی دینی از عزیزان خود که به جبهه‌های گوناگون جهاد می‌شتافتند دل کندند و سپس، آنگاه که با پیکر خون‌آلود یا جسم آسیب‌دیده‌ی آنان روبه‌رو شدند، مصیبت را با شکر همراه کردند. مساجد و فضاهای دینی رونقی بی‌سابقه گرفت. صف نوبت برای اعتکاف از هزاران جوان و استاد و دانشجو و زن و مرد و صف نوبت برای اردوهای جهادی و جهاد سازندگی و بسیج سازندگی از هزاران جوان داوطلب و فداکار آکنده شد. نماز و حج و روزه‌داری و پیاده‌روی زیارت و مراسم گوناگون دینی و انفاقات و صدقات واجب و مستحب در همه‌جا بویژه میان جوانان رونق یافت و تا امروز، روزبه‌روز بیشتر و باکیفیّت‌تر شده است. و اینها همه در دورانی اتّفاق افتاده که سقوط اخلاقی روزافزون غرب و پیروانش و تبلیغات پُرحجم آنان برای کشاندن مرد و زن به لجنزارهای فساد، اخلاق و معنویّت را در بخشهای عمده‌ی عالم منزوی کرده است؛ و این معجزه‌ای دیگر از انقلاب و نظام اسلامی فعّال و پیشرو است.\r\n\r\nهفت) ایستادگی روزافزون در برابر قلدران و زورگویان و مستکبران جهان\r\nسابعاً: نماد پُرابّهت و باشکوه و افتخارآمیز ایستادگی در برابر قلدران و زورگویان و مستکبران جهان و در رأس آنان آمریکای جهان‌خوار و جنایت‌کار، روزبه‌روز برجسته‌تر شد. در تمام این چهل سال، تسلیم‌ناپذیری و صیانت و پاسداری از انقلاب و عظمت و هیبت الهی آن و گردن برافراشته‌ی آن در مقابل دولتهای متکبّر و مستکبر، خصوصیّت شناخته‌شده‌ی ایران و ایرانی بویژه جوانان این مرز و بوم به‌شمار میرفته است. قدرتهای انحصارگر جهان که همواره حیات خود را در دست‌اندازی به استقلال دیگر کشورها و پایمال کردن منافع حیاتی آنها برای مقاصد شوم خود دانسته‌اند، در برابر ایران اسلامی و انقلابی، اعتراف به ناتوانی کردند. ملّت ایران در فضای حیات‌بخش انقلاب توانست نخست دست‌نشانده‌ی آمریکا و عنصر خائن به ملّت را از کشور برانَد و پس از ‌آن هم تا امروز از سلطه‌ی دوباره‌ی قلدران جهانی بر کشور با قدرت و شدّت جلوگیری کند.\r\n\r\n* انقلاب چهل‌ساله و گام بزرگ دوم\r\nجوانان عزیز! اینها بخشی محدود از سرفصل‌های عمده در سرگذشت چهل‌ساله‌ی انقلاب اسلامی است؛ انقلاب عظیم و پایدار و درخشانی که شما به توفیق الهی باید گام بزرگ دوّم را در پیشبرد آن بردارید.\r\n\r\nمحصول تلاش چهل‌ساله، اکنون برابر چشم ما است: کشور و ملّتی مستقل، آزاد، مقتدر، باعزّت، متدیّن، پیشرفته در علم، انباشته از تجربه‌هایی گران‌بها، مطمئن و امیدوار، دارای تأثیر اساسی در منطقه و دارای منطق قوی در مسائل جهانی، رکورددار در شتاب پیشرفتهای علمی، ر کورددار در رسیدن به رتبه‌های بالا در دانشها و فنّاوری‌های مهم از قبیل هسته‌ای و سلّول‌های بنیادی و نانو و هوافضا و امثال آن، سرآمد در گسترش خدمات اجتماعی، سرآمد در انگیزه‌های جهادی میان جوانان، سرآمد در جمعیّت جوان کارآمد، و بسی ویژگی‌های افتخارآمیز دیگر که همگی محصول انقلاب و نتیجه‌ی جهت‌گیری‌های انقلابی و جهادی است. و بدانید که اگر بی‌توجّهی به شعارهای انقلاب و غفلت از جریان انقلابی در برهه‌هایی از تاریخ چهل‌ساله نمیبود -که متأسّفانه بود و خسارت‌بار هم بود- بی‌شک دستاوردهای انقلاب از این بسی بیشتر و کشور در مسیر رسیدن به آرمانهای بزرگ بسی جلوتر بود و بسیاری از مشکلات کنونی وجود نمیداشت.\r\n\r\nاقتدار انقلاب اسلامی و تغییر چالشها و شکست مستکبران\r\nایران مقتدر، امروز هم مانند آغاز انقلاب با چالشهای مستکبران روبه‌رو است امّا با تفاوتی کاملاً معنی‌دار. اگر آن روز چالش با آمریکا بر سر کوتاه کردن دست عمّال بیگانه یا تعطیلی سفارت رژیم صهیونیستی در تهران یا رسوا کردن لانه‌ی جاسوسی بود، امروز چالش بر سرِ حضور ایران مقتدر در مرزهای رژیم صهیونیستی و برچیدن بساط نفوذ نامشروع آمریکا از منطقه‌ی غرب آسیا و حمایت جمهوری اسلامی از مبارزات مجاهدان فلسطینی در قلب سرزمین‌های اشغالی و دفاع از پرچم برافراشته‌ی حزب‌الله و مقاومت در سراسر این منطقه است. و اگر آن روز، مشکل غرب جلوگیری از خرید تسلیحات ابتدایی برای ایران بود،‌ امروز مشکل او جلوگیری از انتقال سلاحهای پیشرفته‌ی ایرانی به نیروهای مقاومت است. و اگر آن روز گمان آمریکا آن بود که با چند ایرانی خودفروخته یا با چند هواپیما و بالگرد خواهد توانست بر نظام اسلامی و ملّت ایران فائق آید، امروز برای مقابله‌ی سیاسی و امنیّتی با جمهوری اسلامی، خود را محتاج به یک ائتلاف بزرگ از ده‌ها دولت معاند یا مرعوب میبیند و البتّه باز هم در رویارویی، شکست میخورد. ایران به برکت انقلاب، اکنون در جایگاهی متعالی و شایسته‌ی ملّت ایران در چشم جهانیان و عبورکرده از بسی گردنه‌های دشوار در مسائل اساسی خویش است.\r\n\r\nجوانان؛ محور تحقق نظام پیشرفته‌ی اسلامی\r\nامّا راه طی‌شده فقط قطعه‌ای از مسیر افتخارآمیز به سوی آرمانهای بلند نظام جمهوری اسلامی است. دنباله‌ی این مسیر که به گمان زیاد، به دشواریِ گذشته‌ها نیست، باید با همّت و هشیاری و سرعت عمل و ابتکار شما جوانان طی شود. مدیران جوان، کارگزاران جوان، اندیشمندان جوان، فعّالان جوان، در همه‌ی میدانهای سیاسی و اقتصادی و فرهنگی و بین‌المللی و نیز در عرصه‌های دین و اخلاق و معنویّت و عدالت، باید شانه‌های خود را به زیر بار مسئولیّت دهند، از تجربه‌ها و عبرتهای گذشته بهره گیرند، نگاه انقلابی و روحیه‌ی انقلابی و عمل جهادی را به کار بندند و ایران عزیز را الگوی کامل نظام پیشرفته‌ی اسلامی بسازند.\r\n\r\nنیروی انسانی مستعد و کارآمد با زیربنای عمیق و اصیل ایمانی و دینی؛ مهم‌ترین ظرفیت امیدبخش کشور\r\nنکته‌ی مهمّی که باید آینده‌سازان در نظر داشته باشند، این است که در کشوری زندگی میکنند که از نظر ظرفیّتهای طبیعی و انسانی، کم‌نظیر است و بسیاری از این ظرفیّتها با غفلت دست‌اندرکاران تاکنون بی‌استفاده یا کم‌استفاده مانده است. همّتهای بلند و انگیزه‌های جوان و انقلابی، خواهند توانست آنها را فعّال و در پیشرفت مادّی و معنوی کشور به معنی واقعی جهش ایجاد کنند.\r\n\r\nمهم‌ترین ظرفیّت امیدبخش کشور، نیروی انسانی مستعد و کارآمد با زیربنای عمیق و اصیل ایمانی و دینی است. جمعیّت جوان زیر ۴۰ ‌سال که بخش مهمّی از آن نتیجه‌ی موج جمعیّتی ایجادشده در دهه‌ی ۶۰ است، فرصت ارزشمندی برای کشور است. ۳۶ میلیون نفر در سنین میانه‌ی ۱۵ و ۴۰ سالگی، نزدیک به ۱۴ میلیون نفر دارای تحصیلات عالی، رتبه‌ی دوّم جهان در دانش‌آموختگان علوم و مهندسی، انبوه جوانانی که با روحیه‌ی انقلابی رشد کرده و آماده‌ی تلاش جهادی برای کشورند، و جمع چشمگیر جوانان محقّق و اندیشمندی که به آفرینشهای علمی و فرهنگی و صنعتی و غیره اشتغال دارند؛ اینها ثروت عظیمی برای کشور است که هیچ اندوخته‌ی مادّی با آن مقایسه نمیتواند شد.\r\n\r\nفهرست طولانی فرصتهای مادی کشور\r\nبه‌جز اینها، فرصتهای مادّی کشور نیز فهرستی طولانی را تشکیل میدهد که مدیران کارآمد و پُرانگیزه و خردمند میتوانند با فعّال کردن و بهره‌گیری از آن، درآمدهای ملّی را با جهشی نمایان افزایش داده و کشور را ثروتمند و بی‌نیاز و به معنی واقعی دارای اعتمادبه‌نفس کنند و مشکلات کنونی را برطرف نمایند. ایران با دارا بودن یک درصد جمعیّت جهان، دارای ۷ درصد ذخایر معدنی جهان است: منابع عظیم زیرزمینی، موقعیت استثنائی جغرافیایی میان شرق و غرب و شمال و جنوب، بازار بزرگ ملّی، بازار بزرگ منطقه‌ای با داشتن ۱۵ همسایه با ۶۰۰ میلیون جمعیّت، سواحل دریایی طولانی، حاصلخیزی زمین با محصولات متنوّع کشاورزی و باغی، اقتصاد بزرگ و متنوّع، بخشهایی از ظرفیّتهای کشور است؛ بسیاری از ظرفیّتها دست‌نخورده مانده است. گفته شده‌ است که ایران از نظر ظرفیّتهای استفاده‌نشده‌ی طبیعی و انسانی در رتبه‌ی اوّل جهان است. بی‌شک شما جوانان مؤمن و پُرتلاش خواهید توانست این عیب بزرگ را برطرف کنید. دهه‌ی دوّم چشم‌انداز، باید زمان تمرکز بر بهره‌برداری از دستاوردهای گذشته و نیز ظرفیّتهای استفاده‌نشده باشد و پیشرفت کشور از جمله در بخش تولید و اقتصاد ملّی ارتقاء یابد.\r\n\r\n* گام دوم و سرفصلها و توصیه‌های اساسی در پرتو امید و نگاه خوش‌بینانه به آینده\r\nاکنون به شما فرزندان عزیزم در مورد چند سرفصل اساسی توصیه‌هایی میکنم. این سرفصل‌ها عبارتند از: علم و پژوهش، معنویّت و اخلاق، اقتصاد، عدالت و مبارزه با فساد، استقلال و آزادی، عزّت ملّی و روابط خارجی و مرزبندی با دشمن، سبک زندگی.\r\n\r\nامّا پیش از همه‌چیز، نخستین توصیه‌ی من امید و نگاه خوش‌بینانه به آینده است. بدون این کلید اساسیِ همه‌ی قفلها، هیچ گامی نمیتوان برداشت. آنچه میگویم یک امید صادق و متّکی به واقعیّتهای عینی است. اینجانب همواره از امید کاذب و فریبنده‌ دوری جسته‌ام، امّا خود و همه را از نومیدی بیجا و ترس کاذب نیز برحذر داشته‌‌ام و برحذر میدارم. در طول این چهل سال -و اکنون مانند همیشه- سیاست تبلیغی و رسانه‌ای دشمن و فعّال‌ترین برنامه‌های آن، مأیوس‌سازی مردم و حتّی مسئولان و مدیران ما از آینده است. خبرهای دروغ، تحلیل‌های مغرضانه، وارونه‌ نشان دادن واقعیّتها، پنهان کردن جلوه‌های امیدبخش، بزرگ کردن عیوب کوچک و کوچک نشان دادن یا انکار محسّنات بزرگ، برنامه‌‌ی همیشگی هزاران رسانه‌ی صوتی و تصویری و اینترنتی دشمنان ملّت ایران است؛ و البتّه دنباله‌های آنان در داخل کشور نیز قابل مشاهده‌اند که با استفاده از آزادی‌ها در خدمت دشمن حرکت میکنند. شما جوانان باید پیش‌گام در شکستن این محاصره‌ی تبلیغاتی باشید. در خود و دیگران نهال امید به آینده را پرورش دهید. ترس و نومیدی را از خود و دیگران برانید. این نخستین و ریشه‌ای‌ترین جهاد شما است. نشانه‌های امیدبخش -که به برخی از آنها اشاره شد- در برابر چشم شما است. رویشهای انقلاب بسی فراتر از ریزشها است و دست‌ودلهای امین و خدمتگزار، بمراتب بیشتر از مفسدان و خائنان و کیسه‌دوختگان است. دنیا به جوان ایرانی و پایداری ایرانی و ابتکارهای ایرانی، در بسیاری از عرصه‌ها با چشم تکریم و احترام مینگرد. قدر خود را بدانید و با قوّت خداداد، به سوی ‌آینده خیز بردارید و حماسه بیافرینید.\r\nو امّا توصیه‌ها:\r\n\r\nیک) علم و پژوهش\r\n۱) علم و پژوهش: دانش،‌ آشکارترین وسیله‌ی عزّت و قدرت یک کشور است. روی دیگر دانایی، توانایی است. دنیای غرب به برکت دانش خود بود که توانست برای خود ثروت و نفوذ و قدرت دویست‌ساله فراهم کند و با وجود تهیدستی در بنیانهای اخلاقی و اعتقادی، با تحمیل سبک زندگی غربی به جوامع عقب‌مانده از کاروان علم، اختیار سیاست و اقتصاد آنها را به دست گیرد. ما به سوءاستفاده از دانش مانند آنچه غرب کرد، توصیه نمیکنیم، امّا مؤکّداً به نیاز کشور به جوشاندن چشمه‌ی دانش در میان خود اصرار می‌ورزیم. بحمدالله استعداد علم و تحقیق در ملّت ما از متوسّط جهان بالاتر است. اکنون نزدیک به دو دهه است که رستاخیز علمی در کشور آغاز شده و با سرعتی که برای ناظران جهانی غافلگیرکننده بود -یعنی یازده برابر شتاب رشد متوسّط علم در جهان- به پیش رفته است. دستاوردهای دانش و فنّاوری ما در این مدّت که ما را به رتبه‌ی شانزدهم در میان بیش از دویست کشور جهان رسانید و مایه‌ی شگفتی ناظران جهانی شد و در برخی از رشته‌های حسّاس و نوپدید به رتبه‌های نخستین ارتقاء داد، همه‌وهمه در حالی اتّفاق افتاده که کشور دچار تحریم مالی و تحریم علمی بوده است. ما با وجود شنا در جهت مخالف جریان دشمن‌ساز، به رکوردهای بزرگ دست یافته‌ایم و این نعمت بزرگی است که به‌خاطر آن باید روز و شب خدا را سپاس گفت.\r\n\r\nامّا آنچه من میخواهم بگویم این است که این راه طی‌شده، با همه‌ی اهمّیّتش فقط یک آغاز بوده است و نه بیشتر. ما هنوز از قلّه‌های دانش جهان بسیار عقبیم؛ باید به قلّه‌ها دست یابیم. باید از مرزهای کنونی دانش در مهم‌ترین رشته‌ها عبور کنیم. ما از این مرحله هنوز بسیار عقبیم؛ ما از صفر شروع کرده‌ایم. عقب‌ماندگی شرم‌آور علمی در دوران پهلوی‌ها و قاجارها در هنگامی که مسابقه‌ی علمی دنیا تازه شروع شده بود، ضربه‌ی سختی بر ما وارد کرده و ما را از این کاروان شتابان، فرسنگها عقب نگه داشته بود. ما اکنون حرکت را ‌آغاز کرده و با شتاب پیش میرویم ولی این شتاب باید سالها با شدّت بالا ادامه یابد تا آن عقب‌افتادگی جبران شود. اینجانب همواره به دانشگاه‌ها و دانشگاهیان و مراکز پژوهش و پژوهندگان، گرم و قاطع و جدّی دراین‌باره تذکّر و هشدار و فراخوان داده‌ام، ولی اینک مطالبه‌ی عمومی من از شما جوانان آن است که این راه را با احساس مسئولیّت بیشتر و همچون یک جهاد در پیش گیرید. سنگ بنای یک انقلاب علمی در کشور گذاشته شده و این انقلاب، شهیدانی از قبیل شهدای هسته‌ای نیز داده است. به‌پاخیزید و دشمن بدخواه و کینه‌توز را که از جهاد علمی شما بشدّت بیمناک است ناکام سازید.\r\n\r\nدو) معنویّت و اخلاق\r\n۲) معنویّت و اخلاق: معنویّت به معنی برجسته کردن ارزشهای معنوی از قبیل: اخلاص، ایثار، توکّل، ایمان در خود و در جامعه است، و اخلاق به معنی رعایت فضیلت‌هایی چون خیرخواهی، گذشت، کمک به نیازمند، راستگویی، شجاعت، تواضع، اعتمادبه‌نفس و دیگر خلقیّات نیکو است. معنویّت و اخلاق، جهت‌دهنده‌ی همه‌ی حرکتها و فعّالیّتهای فردی و اجتماعی و نیاز اصلی جامعه است؛ بودن آنها، محیط زندگی را حتّی با کمبودهای مادّی، بهشت میسازد و نبودن آن حتّی با برخورداری مادّی، جهنّم می‌آفریند.\r\n\r\nشعور معنوی و وجدان اخلاقی در جامعه هرچه بیشتر رشد کند برکات بیشتری به بار می‌آورد؛ این، بی‌گمان محتاج جهاد و تلاش است و این تلاش و جهاد، بدون همراهی حکومتها توفیق چندانی نخواهد یافت. اخلاق و معنویّت، البتّه با دستور و فرمان به دست نمی‌آید، پس حکومتها نمیتوانند آن را با قدرت قاهره ایجاد کنند، امّا اوّلاً خود باید منش و رفتار اخلاقی و معنوی داشته باشند، و ثانیاً زمینه‌ را برای رواج آن در جامعه فراهم کنند و به نهادهای اجتماعی دراین‌باره میدان دهند و کمک برسانند؛ با کانونهای ضدّ معنویّت و اخلاق، به شیوه‌ی معقول بستیزند و خلاصه اجازه ندهند که جهنّمی‌ها مردم را با زور و فریب، جهنّمی کنند.\r\n\r\nابزارهای رسانه‌ای پیشرفته و فراگیر، امکان بسیار خطرناکی در اختیار کانونهای ضدّ معنویّت و ضدّ اخلاق نهاده است و هم‌اکنون تهاجم روزافزون دشمنان به دلهای پاک جوانان و نوجوانان و حتّی نونهالان با بهره‌گیری از این ابزارها را به چشم خود می‌بینیم. دستگاه‌های مسئول حکومتی دراین‌باره وظایفی سنگین بر عهده دارند که باید هوشمندانه و کاملاً مسئولانه صورت گیرد. و این البتّه به معنی رفع مسئولیّت از اشخاص و نهادهای غیرحکومتی نیست. در دوره‌ی پیش‌ِرو باید دراین‌باره‌ها برنامه‌های کوتاه‌مدّت و میان‌مدّت جامعی تنظیم و اجرا شود؛ ان‌شاء‌الله.\r\n\r\nسه) اقتصاد\r\n۳) اقتصاد: اقتصاد یک نقطه‌ی کلیدیِ تعیین‌کننده است. اقتصاد قوی، نقطه‌ی قوّت و عامل مهمّ سلطه‌ناپذیری و نفوذناپذیری کشور است و اقتصاد ضعیف، نقطه‌ی ضعف و زمینه‌‌ساز نفوذ و سلطه و دخالت دشمنان است. فقر و غنا در مادّیّات و معنویّات بشر، اثر میگذارد. اقتصاد البتّه هدف جامعه‌ی اسلامی نیست، امّا وسیله‌ای است که بدون آن نمیتوان به هدفها رسید. تأکید بر تقویت اقتصاد مستقلّ کشور که مبتنی‌ بر تولید انبوه و باکیفیّت، و توزیع عدالت‌محور، و مصرف به‌اندازه و بی‌اسراف، و مناسبات مدیریّتی خردمندانه است و در سالهای اخیر از سوی اینجانب بارها تکرار و بر آن تأکید شده، به‌خاطر همین تأثیر شگرفی است که اقتصاد میتواند بر زندگی امروز و فردای جامعه بگذارد.\r\n\r\nانقلاب اسلامی راه نجات از اقتصاد ضعیف و وابسته و فاسد دوران طاغوت را به ما نشان داد، ولی عملکردهای ضعیف، اقتصاد کشور را از بیرون و درون دچار چالش ساخته است. چالش بیرونی تحریم و وسوسه‌ها‌ی دشمن است که در صورت اصلاح مشکل درونی، کم‌اثر و حتّی بی‌اثر خواهد شد. چالش درونی عبارت از عیوب ساختاری و ضعفهای مدیریّتی است.\r\n\r\nمهم‌ترین عیوب، وابستگی اقتصاد به نفت، دولتی بودن بخشهایی از اقتصاد که در حیطه‌ی وظایف دولت نیست، نگاه به خارج و نه به توان و ظرفیّت داخلی، استفاده‌ی اندک از ظرفیّت نیروی انسانی کشور، بودجه‌بندی معیوب و نامتوازن، و سرانجام عدم ثبات سیاستهای اجرائی اقتصاد و عدم رعایت اولویّتها و وجود هزینه‌های زائد و حتّی مسرفانه در بخشهایی از دستگاه‌های حکومتی است. نتیجه‌ی اینها مشکلات زندگی مردم از قبیل بیکاری جوانها، فقر درآمدی در طبقه‌ی ضعیف و امثال آن است.\r\n\r\nراه‌حلّ این مشکلات، سیاستهای اقتصاد مقاومتی است که باید برنامه‌های اجرائی برای همه‌ی بخشهای آن تهیّه و با قدرت و نشاط کاری و احساس مسئولیّت، در دولتها پیگیری و اقدام شود. درون‌زایی اقتصاد کشور، مولّد شدن و دانش‌بنیان شدن آن، مردمی کردن اقتصاد و تصدّیگری نکردن دولت، برون‌گرایی با استفاده از ظرفیّتهایی که قبلاً به آن اشاره شد، بخشهای مهمّ این راه‌حل‌ها است. بی‌گمان یک مجموعه‌ی جوان و دانا و مؤمن و مسلّط بر دانسته‌های اقتصادی در درون دولت خواهند توانست به این مقاصد برسند. دوران پیشِ‌رو باید میدان فعّالیّت چنین مجموعه‌ای باشد.\r\n\r\nجوانان عزیز در سراسر کشور بدانند که همه‌ی راه‌حل‌ها در داخل کشور است. اینکه کسی گمان کند که «مشکلات اقتصادی صرفاً ناشی از تحریم است و علّت تحریم هم مقاومت ضدّ استکباری و تسلیم نشدن در برابر دشمن است؛ پس راه‌حل، زانو زدن در برابر دشمن و بوسه زدن بر پنجه‌ی گرگ است» خطایی نابخشودنی است. این تحلیل سراپا غلط، هرچند گاه از زبان و قلم برخی غفلت‌زدگان داخلی صادر میشود، امّا منشأ آن، کانونهای فکر و توطئه‌ی خارجی است که با صد زبان به تصمیم‌سازان و تصمیم‌گیران و افکار عمومی داخلی القاء میشود.\r\n\r\nچهار) عدالت و مبارزه با فساد\r\n۴) عدالت و مبارزه با فساد: این دو لازم و ملزوم یکدیگرند. فساد اقتصادی و اخلاقی و سیاسی، توده‌ی چرکین کشورها و نظامها و اگر در بدنه‌ی حکومتها عارض شود، زلزله‌ی ویرانگر و ضربه‌زننده به مشروعیّت آنها است؛ و این برای نظامی چون جمهوری اسلامی که نیازمند مشروعیّتی فراتر از مشروعیّتهای مرسوم و مبنائی‌تر از مقبولیّت اجتماعی است، بسیار جدّی‌تر و بنیانی‌تر از دیگر نظامها است. وسوسه‌ی مال و مقام و ریاست، حتّی در عَلَوی‌ترین حکومت تاریخ یعنی حکومت خود حضرت امیر‌‌المؤمنین (علیه‌السّلام) کسانی را لغزاند، پس خطر بُروز این تهدید در جمهوری اسلامی هم که روزی مدیران و مسئولانش مسابقه‌ی زهد انقلابی و ساده‌زیستی میدادند، هرگز بعید نبوده و نیست؛ و این ایجاب میکند که دستگاهی کارآمد با نگاهی تیزبین و رفتاری قاطع در قوای سه‌گانه حضور دائم داشته باشد و به‌معنای واقعی با فساد مبارزه کند، بویژه در درون دستگاه‌های حکومتی.\r\n\r\nالبتّه نسبت فساد در میان کارگزاران حکومت جمهوری اسلامی در مقایسه با بسیاری از کشورهای دیگر و بخصوص با رژیم طاغوت که سرتاپا فساد و فسادپرور بود، بسی کمتر است و بحمدالله مأموران این نظام غالباً سلامت خود را نگاه داشته‌اند، ولی حتّی آنچه هست غیر قابل قبول است. همه باید بدانند که طهارت اقتصادی شرط مشروعیّت همه‌ی مقامات حکومت جمهوری اسلامی است. همه باید از شیطانِ حرص برحذر باشند و از لقمه‌ی حرام بگریزند و از خداوند دراین‌باره کمک بخواهند و دستگاه‌های نظارتی و دولتی باید با قاطعیّت و حسّاسیّت، از تشکیل نطفه‌ی فساد پیشگیری و با رشد آن مبارزه کنند. این مبارزه نیازمند انسانهایی باایمان و جهادگر، و منیع‌الطّبع با دستانی پاک و دلهایی نورانی است. این مبارزه بخش اثرگذاری است از تلاش همه‌جانبه‌ای که نظام جمهوری اسلامی باید در راه استقرار عدالت به کار برد.\r\n\r\nعدالت در صدر هدفهای اوّلیّه‌ی همه‌‌ی بعثتهای الهی است و در جمهوری اسلامی نیز دارای همان شأن و جایگاه است؛ این، کلمه‌ای مقدّس در همه‌ی زمانها و سرزمین‌ها است و به‌صورت کامل، جز در حکومت حضرت ولیّ‌عصر (ارواحنافداه) میسّر نخواهد شد ولی به‌صورت نسبی، همه جا و همه وقت ممکن و فریضه‌ای بر عهده‌ی همه بویژه حاکمان و قدرتمندان است. جمهوری اسلامی ایران در این راه گامهای بلندی برداشته است که قبلاً بدان اشاره‌ای کوتاه رفت؛ و البتّه در توضیح و تشریح آن باید کارهای بیشتری صورت گیرد و توطئه‌ی واژگونه‌نمایی و لااقل سکوت و پنهان‌سازی که اکنون برنامه‌ی جدّی دشمنان انقلاب است، خنثی گردد.\r\n\r\nبا این همه، اینجانب به جوانان عزیزی که آینده‌ی کشور، چشم‌انتظار آنها است صریحاً میگویم آنچه تاکنون شده با آنچه باید میشده و بشود، دارای فاصله‌‌ای ژرف است. در جمهوری اسلامی، دلهای مسئولان به‌طور دائم باید برای رفع محرومیّتها بتپد و از شکافهای عمیق طبقاتی بشدّت بیمناک باشد. در جمهوری اسلامی کسب ثروت نه‌تنها جرم نیست که مورد تشویق نیز هست، امّا تبعیض در توزیع منابع عمومی و میدان دادن به ویژه‌خواری و مدارا با فریبگران اقتصادی که همه به بی‌عدالتی می‌انجامد، بشدّت ممنوع است؛ همچنین غفلت از قشرهای نیازمند حمایت، به‌هیچ‌رو مورد قبول نیست. این سخنان در قالب سیاستها و قوانین، بارها تکرار شده است ولی برای اجرای شایسته‌ی آن، چشم امید به شما جوانها است؛ و اگر زمام اداره‌ی بخشهای گوناگون کشور به جوانان مؤمن و انقلابی و دانا و کاردان -که بحمدالله کم نیستند- سپرده شود، این امید برآورده خواهد شد؛ ان‌شاءالله.\r\n\r\nپنج) استقلال و آزادی\r\n۵) استقلال و آزادی: استقلال ملّی به معنی آزادی ملّت و حکومت از تحمیل و زورگویی قدرتهای سلطه‌گر جهان است. و آزادی اجتماعی به‌معنای حقّ تصمیم‌گیری و عمل کردن و اندیشیدن برای همه‌ی افراد جامعه است؛ و این هر دو از جمله‌ی ارزشهای اسلامی‌اند و این هر دو عطیّه‌ی الهی به انسانها‌یند و هیچ کدام تفضّل حکومتها به مردم نیستند. حکومتها موظّف به تأمین این دو اند. منزلت آزادی و استقلال را کسانی بیشتر میدانند که برای آن جنگیده‌اند. ملّت ایران با جهاد چهل‌ساله‌ی خود از جمله‌ی آنها است. استقلال و آزادی کنونی ایران اسلامی، دستاورد، بلکه خون‌آوردِ صدها هزار انسان والا و شجاع و فداکار است؛ غالباً جوان، ولی همه در رتبه‌های رفیع انسانیّت. این ثمر شجره‌ی طیّبه‌ی انقلاب را با تأویل و توجیه‌های ساده‌لوحانه و بعضاً مغرضانه، نمیتوان در خطر قرار داد. همه -مخصوصاً دولت جمهوری اسلامی‌- موظّف به حراست از آن با همه‌ی وجودند. بدیهی است که «استقلال» نباید به معنی زندانی کردن سیاست و اقتصاد کشور در میان مرزهای خود، و «آزادی» نباید در تقابل با اخلاق و قانون و ارزشهای الهی و حقوق عمومی تعریف شود.\r\n\r\nشش) عزت ملی، روابط خارجی، مرزبندی با دشمن\r\n۶) عزّت ملّی، روابط خارجی، مرزبندی با دشمن: این هر سه، شاخه‌هایی از اصلِ «عزّت، حکمت، و مصلحت» در روابط بین‌المللی‌اند. صحنه‌ی جهانی، امروز شاهد پدیده‌هایی است که تحقّق یافته یا در آستانه‌‌ی ظهورند: تحرّک جدید نهضت بیداری اسلامی بر اساس الگوی مقاومت در برابر سلطه‌ی آمریکا و صهیونیسم؛ شکست سیاست‌های آمریکا در منطقه‌ی غرب آسیا و زمین‌گیر شدن همکاران خائن آنها در منطقه؛ گسترش حضور قدرتمندانه‌ی سیاسی جمهوری اسلامی در غرب آسیا و بازتاب وسیع آن در سراسر جهان سلطه.\r\n\r\nاینها بخشی از مظاهر عزّت جمهوری اسلامی است که جز با شجاعت و حکمت مدیران جهادی به دست نمی‌آمد. سردمداران نظام سلطه نگرانند؛ پیشنهادهای آنها عموماً شامل فریب و خدعه و دروغ است. امروز ملّت ایران علاوه‌ بر آمریکای جنایت‌کار، تعدادی از دولتهای اروپایی را نیز خدعه‌گر و غیر قابل اعتماد میداند. دولت جمهوری اسلامی باید مرزبندی خود را با آنها با دقّت حفظ کند؛ از ارزشهای انقلابی و ملّی خود، یک گام هم عقب‌نشینی نکند؛ از تهدیدهای پوچ آنان نهراسد؛ و در همه‌حال، عزّت کشور و ملّت خود را در نظر داشته باشد و حکیمانه و مصلحت‌جویانه و البتّه از موضع انقلابی، مشکلات قابل حلّ خود را با آنان حل کند. در مورد آمریکا حلّ هیچ مشکلی متصوّر نیست و مذاکره با آن جز زیان مادّی و معنوی محصولی نخواهد داشت.\r\n\r\nهفت) سبک زندگی\r\n۷) سبک زندگی: سخن لازم دراین‌باره بسیار است. آن را به فرصتی دیگر وامیگذارم و به همین جمله اکتفا میکنم که تلاش غرب در ترویج سبک زندگی غربی در ایران، زیانهای بی‌جبران اخلاقی و اقتصادی و دینی و سیاسی به کشور و ملّت ما زده است؛ مقابله با آن، جهادی همه‌جانبه و هوشمندانه میطلبد که باز چشم امید در آن به شما جوانها است.\r\n\r\nدر پایان از حضور سرافرازانه و افتخارانگیز و دشمن‌شکن ملّت عزیز در بیست‌ودوّم بهمن و چهلمین سالگرد انقلاب عظیم اسلامی تشکّر میکنم و پیشانی سپاس بر درگاه حضرت حق میسایم. سلام بر حضرت بقیّة‌الله (ارواحنافداه)؛ سلام بر ارواح طیّبه‌ی شهیدان والامقام و روح مطهّر امام بزرگوار؛ و سلام بر همه‌ی ملّت عزیز ایران و سلام ویژه به جوانان.\r\n\r\nدعاگوی شما   \r\nسیّدعلی خامنه‌ای\r\n۲۲ بهمن‌ماه ۱۳۹۷', 'http://idc0-cdn0.khamenei.ir/ndata/news/41678/smpl.jpg', '1'),
(3, 'پیام تسلیت شهادت سردار شهید اسلام حاج قاسم سلیمانی', 'بسم الله الرحمن الرحیم\r\n\r\n سلام بر سردار دلها شهید حاج قاسم سلیمانی\r\n\r\n از صبح زود و در وقت نماز که زیرنویس سیمای جمهوری اسلامی ایران شبکه ۶ اخباری مبنی بر تجاوز آمریکاییان ملعون به فرودگاه بغداد را درج کرد و در ادامه از قول آنها اشاره داشتند که هدف 2 نفر ایرانی و عراقی بودند؛  دلم ریخت که نکند هدف حاج‌قاسم باشد و بعد از لحظاتی خبر شهادتت را اعلام کردند.\r\n\r\n من هم مثل همه مردم ایران، عراق، لبنان، سوریه و... غرق در ماتم هستم.\r\n\r\nپیام حضرت آقا پخش شد که تو همواره فرماندهی با اخلاص، شجاع، با تدبیر و دانش برای او بودی.\r\n\r\nتو مظهر غرور ملی ما ایرانیان در طول تاریخ هستی.\r\n\r\n هر کسی را که می دیدم با هر گرایشی در برابر نام تو ادای احترام می نمود و غرور داشت و دارد.\r\n\r\n تو با ذهن و قلب کامل در میدان رزم حضور داشتی و خداوند تبارک و تعالی روز به روز به عزتت افزود.\r\n\r\n میدانم که میبینی،  کشور رنگ و بوی ایام دفاع مقدس را گرفته است.\r\n\r\n شهد شیرین شهادت گوارای وجودت باد.\r\n\r\nبرای ما اشک و ماتم و حسرت باقی می ماند.\r\n\r\n به حضرت ولی عصر عجل الله تعالی فرجه الشریف و نایب بر حقش مولا و سرورمان حضرت آیت‌الله العظمی خامنه‌ای و همه ملت ایران و خصوصاً کرمانی های عزیز و دوستان عزیز در میدکو تسلیت عرض می کنم.\r\n\r\nدوستان تو در میدکو در میدان جنگ ناجوانمردانه اقتصادی دشمنان اسلام و انقلاب و نظام جمهوری اسلامی حضور داشته و انشاالله با قدرت تمام به ساختن ادامه خواهند داد.\r\n\r\n این ساختن ان‌شاءالله به سراسر کشور گسترش خواهد یافت.\r\n\r\n امیدوار شفاعتت در آن دنیا خواهیم ماند.', 'http://chatr.anzalepoxy.ir/img/solimani.jpg', '1'),
(4, 'رهبر معظم انقلاب در پیامی به‌ مناسبت آغاز سال ۱۳۹۹، سال جدید را سال «جهش تولید» نام‌گذاری کردند.', 'حضرت آیت الله خامنه‌ای با تسلیت و تبریک به خانواده‌های شهدای سال ۹۸ از جمله شهدای دفاع از حرم و مرزها و در رأس آنان شهید بزرگوار سردار سلیمانی، شهید ابومهدی المهندس و همراهان آنها و همچنین شهدای حادثه کرمان و حادثه هواپیما و شهدای سلامت، سال ۹۸ را سالی پر تلاطم برای ملت ایران خواندند و خاطرنشان کردند: سال قبل با سیل آغاز و با کرونا تمام شد و در طول سال نیز حوادث گوناگونی مانند زلزله و تحریم‌ها پدید آمد اما اوج این حوادث، جنایت تروریستی آمریکا و شهادت سردار نامدار ایران و اسلام، شهید سلیمانی بود.\r\n\r\nرهبر انقلاب اسلامی افزودند: سال قبل، سال سختی بود و گرفتاری‌های مردم نیز کم نبود اما در کنار سختی‌ها، سربلندی‌های بعضاً بی‌سابقه‌ای وجود داشت و ملت ایران واقعاً خوش درخشید.\r\n\r\nایشان روانه شدن سیل مردم مؤمن و با همت برای کمک به مناطق آسیب‌دیده در قضیه سیل اول سال را از جمله زیبایی‌های سال ۹۸ برشمردند و افزودند: هیجان عمومی و حضور دهها میلیونی مردم در حادثه شهادت بزرگ شهید سلیمانی و خلق اجتماعات شکوهمند در تهران، قم، اهواز، اصفهان، مشهد و کرمان که در دنیا و در تاریخ کشورمان بی‌نظیر بود، جلوه دیگری از سربلندی مردم و مایه آبروی کشور و عزت ملت بود.\r\n\r\nحضرت آیت الله خامنه‌ای فداکاری‌های چشمگیر و تحسین‌برانگیز مردم در قضیه کرونا را نمونه دیگری از درخشش ملت در سال ۹۸ خواندند و گفتند: زحمات مجموعه‌های درمانی یعنی پزشکان، پرستاران، بهیاران، مدیران و کارکنان مراکز درمانی و در کنار آنها خدمات مجموعه‌های داوطلب مردمی مانند دانشجویان، طلاب و بسیجیان، همگی مایه عزت و آبرو است.\r\n\r\nرهبر انقلاب اسلامی با برشمردن مصادیقی از همکاری و تعاون اجتماعی مردم در این روزها مانند تولید و توزیع اقلام بهداشتی، ضدعفونی کردن معابر، کمک به افراد سالمند، بخشودگی اجاره‌ها و به تأخیر انداختن دریافت مطالبات، افزودند: ملت ایران زیبایی‌ها و فضائل خود را در خلال حوادث سخت نشان داد و من قلباً و صمیمانه از همه این فعالیتها و افراد تشکر می‌کنم و مژده می‌دهم که پاداش الهی در انتظار آنها است.\r\n\r\nایشان آزمونهای سال ۹۸ را آزمونهایی دشوار خواندند و با تأکید بر اینکه هیچ ملتی با راحت‌طلبی و رفاه‌جویی محض به جایی نمی‌رسد، گفتند: غلبه بر دشواریها و عبورِ با روحیه از آنها موجب قدرتمند شدن یک ملت و کسب اقتدار و اعتبار است، همچنانکه ملت ایران تاکنون به این شکل بر مشکلات غلبه کرده و بعد از این نیز خواهد کرد.\r\n\r\nحضرت آیت‌الله خامنه‌ای درس دیگر حوادث مختلف را شناخت ضعف‌های درونی، خارج شدن از غرور و غفلت و لزوم توجه به پروردگار دانستند و با درخواست از خداوند برای قرار دادن سال ۹۹ به‌عنوان سال پیروزی‌های بزرگ و با استمداد از پیشگاه حضرت بقیة‌الله برای حمایت از مردم مؤمن ایران گفتند: ملت همچنانکه در طول سالهای متمادی، شجاعانه و با روحیه با حوادث مواجه شدند، از این پس نیز با روحیه و امید با همه حوادث برخورد کنند و مطمئن باشند که تلخی‌ها می‌گذرد و یُسر و آسانی در انتظار ملت ایران خواهد بود چرا که اِنَّ مَعَ العُسرِ یُسرا.\r\n\r\nایشان با اشاره به جریان داشتن کار و تلاش در بخشهای مختلف کشور از جمله در بخشهای علمی، تحقیقی، اجتماعی، دولتی و قضایی، افزودند: خداوند متعال به همه این تلاشها برکت می‌دهد و ملت را از این گذرگاه با عافیت و سربلندی عبور خواهد داد.\r\n\r\nحضرت آیت الله خامنه‌ای در ادامه به ارزیابی میزان پیشرفت شعار سال ۹۸ یعنی رونق تولید پرداختند و با اشاره به گزارشهای موثق از بازگشت به کار برخی از کارخانه‌های راکد یا تعطیل، افزایش ظرفیت تولید بعضی از واحدها، به میدان آمدن شرکتهای دانش‌بنیان و برداشتن گام‌های جدی در پژوهش و تحقیق به‌عنوان سرچشمه تولید، گفتند: این گزارشها نشان می‌دهد در سال ۹۸ علاوه بر استقبال صاحبنظران از شعار رونق تولید، در عمل نیز از آن استقبال شد و با کار و تلاش دستگاههای مختلف، تولید تا حدودی به راه افتاد البته اثر آن در زندگی مردم محسوس نشد.\r\n\r\nرهبر انقلاب اسلامی با تأکید بر اینکه باید با کار ده برابری، تولید به جایی برسد که در زندگی مردم اثر بگذارد، افزودند: مسائل اقتصادی کشور متعدد است از جمله «اصلاحات بانکی، گمرکی و مالیاتی» و «بهبود فضای کسب‌وکار» اما نقش تولید بی‌همتا است و با راه افتادن تولید و استفاده از بازار فروش ۸۰ میلیونی در داخل و ضمناً ارتباط با فروش و بازارهای خارجی، مشکلات اقتصادی قطعاً پایان می‌یابد و تحریم‌ها به نفع کشور تمام خواهد شد.\r\n\r\nایشان افزودند: تحریم تاکنون در کنار ضررهایش، سودهایی نیز داشته و ما را وادار کرده است که به فکر تهیه لوازم زندگی و نیازهای کشور از طریق امکانات داخلی باشیم که این حرکت بسیار مغتنم ان‌شاءالله ادامه خواهد یافت.\r\n\r\nحضرت آیت‌الله خامنه‌ای با جمع‌بندی سخنانشان در خصوص نیاز قطعی کشور به تولید، سال ۹۹ را سال «جهش تولید» نامگذاری کردند و خطاب به دست‌اندرکاران تأکید کردند: جوری عمل کنید که با جهش تولید، تغییری محسوس در زندگی مردم به‌وجود آید.\r\n\r\nایشان افزودند: البته لازمه تحقق این هدف برنامه‌ریزی است و بخشهای مختلف مانند سازمان برنامه، مجلس و مرکز تحقیقات آن، قوه‌قضائیه، مجموعه‌های دانش‌بنیان و گروههای پر شمار جوان، مبتکر و فعال باید در این برنامه‌ریزی‌ها شرکت کنند.\r\n\r\nرهبر انقلاب اسلامی در پایان با تبریک مجدد سال جدید و عید مبعث و آرزوی جلب توجهات الهی، از ملت ایران خواستند به‌طور روزافزون به توجهات، توسلات و معنویات خود بیفزایند.\r\n', 'https://99taghvim.ir/wp-content/uploads/2019/09/%D8%B3%D8%A7%D9%84-99-%D8%AC%D9%87%D8%B4-%D8%AA%D9%88%D9%84%DB%8C%D8%AF.jpg', '1'),
(5, 'سایت روابط عمومی ناجا', 'http://saas.police.ir/', 'http://saas.police.ir/uploads/hedr_final%2023.jpg', '2'),
(6, 'نسخه نشریه خط حزب الله (کلیک کنید)', 'http://farsi.khamenei.ir/ndata/news/weekly/files/277//page_1.jpg!http://farsi.khamenei.ir/ndata/news/weekly/files/277//page_2.jpg!http://farsi.khamenei.ir/ndata/news/weekly/files/277//page_3.jpg!http://farsi.khamenei.ir/ndata/news/weekly/files/277//page_4.jpg', 'http://chatr.anzalepoxy.ir/img/hezbslider.jpg', '3'),
(7, 'آمار رسمی ویروس کرونا در جهان', 'http://co19.anzalepoxy.ir/back.php', 'http://chatr.anzalepoxy.ir/img/corona.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_telvition`
--

CREATE TABLE `tbl_telvition` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_telvition`
--

INSERT INTO `tbl_telvition` (`id`, `title`, `img`, `url`) VALUES
(1, 'شبکه 1', 'https://upload.wikimedia.org/wikipedia/fa/d/d6/IRIBTV1.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tv1/tv1.m3u8'),
(2, 'شبکه 2', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/139110090001874.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tv2/tv2.m3u8'),
(3, 'شبکه 3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4KvLkW8shZ-aMvq7fYnX58PuxJ_Aj4NnQ0ZFxNW4xbPWEzsGs', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tv3/tv3.m3u8'),
(4, 'شبکه 4', 'https://static3.mojnews.com/thumbnail/rzL9IovzHHOe/ZRF7Lmw5ugQZ9M8xIGBQMqD9e54XxTUIZI1mWhJUOkt6oPJY0u4mI8NubOhGu0AP/%D8%B4%D8%A8%DA%A9%D9%87+4.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tv4/tv4.m3u8'),
(5, 'شبکه 5', 'https://img9.irna.ir/old/Image/1396/13961019/82790198/N82790198-72100163.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tv5/tv5.m3u8'),
(6, 'شبکه خبر', 'https://upload.wikimedia.org/wikipedia/fa/thumb/a/a1/IRINN_LOGO_IRIB.svg/1024px-IRINN_LOGO_IRIB.svg.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/irinn/irinn.m3u8'),
(7, 'شبکه ورزش', 'http://chatr.anzalepoxy.ir/img/varzesh.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/varzesh/varzesh.m3u8\r\n'),
(8, 'شبکه نسیم', 'https://www.gostaresh.news/images/gallery/98/11/nasim.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/nasim/nasim.m3u8'),
(9, 'شبکه مستند', 'https://lh5.googleusercontent.com/proxy/c7PJBZq_fLKNgVs0iecBSBJVh5NJt7AxokiEZG3V-HvDj8vtmqBTfg7tVDS3C--saqLAJnU7nRhmxS9KGKUZpawZnuqB8eWKzNWMrv5KKiufEJitRQwsGDvNGvQF4giYFJR5H7aJ', 'http://cdn1.shimaiptv.ir/livelive2/sp3/mostanad/mostanad.m3u8'),
(10, 'شبکه قرآن', 'https://upload.wikimedia.org/wikipedia/fa/thumb/6/6a/%D9%84%D9%88%DA%AF%D9%88_%D8%B4%D8%A8%DA%A9%D9%87_%D9%82%D8%B1%D8%A2%D9%86.png/150px-%D9%84%D9%88%DA%AF%D9%88_%D8%B4%D8%A8%DA%A9%D9%87_%D9%82%D8%B1%D8%A2%D9%86.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/quran/quran.m3u8'),
(11, 'شبکه آموزش', 'https://cdn.yjc.ir/files/fa/news/1397/12/13/9536554_497.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/amoozesh/amoozesh.m3u8'),
(12, 'شبکه باران', 'https://shimaiptv.ir/wp-content/uploads/2018/07/Rasht_TV.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/baran/baran.m3u8'),
(13, 'شبکه تماشا', 'https://upload.wikimedia.org/wikipedia/fa/b/b9/Tamasha_tv.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/tamasha/tamasha.m3u8'),
(14, 'شبکه نمایش', 'https://lh5.googleusercontent.com/proxy/xJQhK3a14MdgZz8IoY5Q8xOIfCYyzlQXgGf15uQT05xlV_dqJY0FS3Eo6X7Dfi78t7KNC6E4mYC5hOdFB4G3L_cJpuMzbaPTzLCNHi2iybHsXrQROwkDl6BJ', 'http://cdn1.shimaiptv.ir/livelive2/sp3/namayesh/namayesh.m3u8'),
(15, 'شبکه پویا', 'https://media.mehrnews.com/d/2017/01/15/3/2338362.jpg?ts=1486462047399', 'http://cdn1.shimaiptv.ir/livelive2/sp3/pooya/pooya.m3u8'),
(18, 'سلامت', 'https://upload.wikimedia.org/wikipedia/fa/f/f0/IRIB_Salamat_Logo.png', 'http://cdn1.shimaiptv.ir/livelive2/sp3/salamat/salamat.m3u8'),
(19, 'افق', 'https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1393/09/26/139309261548593504316044.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/ofogh/ofogh.m3u8'),
(20, 'شما', 'https://iqna.ir/files/fa/news/1398/12/25/1656918_615.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/shoma/shoma.m3u8'),
(21, 'امید', 'https://www.iribnews.ir/files/fa/news/1398/4/2/3652017_888.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/omid/omid.m3u8'),
(22, 'آی فیلم', 'https://bayanbox.ir/view/5419634663321112217/ifilm-first-logo-3.jpg', 'http://cdn1.shimaiptv.ir/livelive2/sp3/ifilm/ifilm.m3u8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`id`, `id_user`, `token`) VALUES
(19, 1020, '8d91f1974ce167b2017422cf7df1a265'),
(18, 58, '91593fc088f83088c4b40a0525216a1b'),
(17, 1019, '5f5a6a2af5cd44154f5f10e814025964'),
(14, 1018, '102b8dfab61fdcd31d2ff6103d1d792f'),
(16, 18, 'a024cb69fc1418b95943a9be75ad8b6d');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_update`
--

CREATE TABLE `tbl_update` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(3) NOT NULL,
  `version_code` varchar(3) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_update`
--

INSERT INTO `tbl_update` (`id`, `version`, `version_code`, `description`, `url`) VALUES
(1, '1.0', '8', '-بهبود عملکرد برنامه', 'http://chatr.anzalepoxy.ir/dl/chatr9.apk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supervisor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `related` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ranks` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pcode` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fullname`, `supervisor`, `related`, `ranks`, `pcode`, `phone`) VALUES
(1, 'فرشيدرمضاني', '*', 'سرپرست', 'سرهنگ2', '402980813', '9111374060'),
(2, 'كوروش كريمي', '*', 'سرپرست', 'سرگرد', '403372663', '9113392870'),
(3, 'محمدرضا شفقي', '*', 'سرپرست', 'ستوانيكم', '403796001', '9118296320'),
(4, 'سيده مرضيه سجادي فر', '*', 'سرپرست', 'كارمند14', '400239095', '9112336411'),
(5, 'جوادحقگو', '*', 'سرپرست', 'ستوانيكم', '402486193', '9115614352'),
(6, 'اسماعيل باوفا', '*', 'سرپرست', 'كارمند13', '400197441', '9374464769'),
(7, 'مريم محمدي', 'اسماعيل باوفا', 'همسر', 'كارمند13', '400197441', '9113316127'),
(8, 'يوسفعلي فلاح ', '*', 'سرپرست', 'سرهنگ2', '403093750', '9113374248'),
(9, 'شهرام نقدي پور', '*', 'سرپرست', 'ستواندوم', '402948966', '9117571871'),
(10, 'ايمان جهانديده', '*', 'سرپرست', 'سرگرد', '403367692', '9113328246'),
(11, 'اكبراميدي', '*', 'سرپرست', 'سروان', '403683279', '9112340289'),
(12, 'محسن جوينده', '*', 'سرپرست', 'سروان', '403727106', '9351813998'),
(13, 'علي خوش نشين', '*', 'سرپرست', 'گروهبانيكم', '404580681', '9394321872'),
(14, 'حسين عاشورنژاد', '*', 'سرپرست', 'سرگرد', '400350097', '9112456009'),
(15, 'ابراهيم كشاورز', '*', 'سرپرست', 'سروان', '403989368', '9119434159'),
(16, 'يعقوب ابراهيمي', '*', 'سرپرست', 'سروان', '403553761', '9113475765'),
(17, 'حسن  حسن پور', '*', 'سرپرست', 'ستوانيكم', '402486284', '9119436298'),
(18, 'بهرام حيدري', '*', 'سرپرست', 'كارمند14', '400289621', '9111305510'),
(19, 'علي اسماعيل نژاد', '*', 'سرپرست', 'گروهبانيكم', '404550482', '9901541926'),
(20, 'عباس  قربان پور', '*', 'سرپرست', 'كارمند14', '400396620', '9118427206'),
(21, 'سيدحسين فلسفي', '*', 'سرپرست', 'سرگرد', '403378653', '933174151'),
(22, 'ابراهيم نادم', '*', 'سرپرست', 'ستوانيكم', '402848418', '9368373435'),
(23, 'عباس قاضي', '*', 'سرپرست', 'سروان', '402442633', '9113811970'),
(24, 'محمدصادق كشاورز', '*', 'سرپرست', 'استواريكم', '403671125', '9113361065'),
(25, 'يعقوب ملكي فر', '*', 'سرپرست', 'سرهنگ2', '402777679', '9111403471'),
(26, 'حميدرضاايرواني', '*', 'سرپرست', 'سرهنگ2', '402900775', '9114649807'),
(27, 'مهردادگلدسته', '*', 'سرپرست', 'ستوانيكم', '404025340', '9112376188'),
(28, 'سيدجليل حسيني', '*', 'سرپرست', 'سروان', '402587763', '9118250986'),
(29, 'رحمت دادرس', '*', 'سرپرست', 'ستوانيكم', '404022544', '911238871'),
(30, 'علي اصغرشهيدنيا', '*', 'سرپرست', 'ستواندوم', '404151630', '9119311828'),
(31, 'محموداحمدپور', '*', 'سرپرست', 'سرهنگ2', '401102474', '9112360081'),
(32, 'مجيدمحموديان', '*', 'سرپرست', 'كارمند14', '400210226', '9113393611'),
(33, 'محمدرضا آذربهار', '*', 'سرپرست', 'سروان', '402499862', '9194758801'),
(34, 'حامدكشاورز', '*', 'سرپرست', 'ستوانيكم', '403382887', '9918031368'),
(35, 'اسحاق فتحي', '*', 'سرپرست', 'ستواندوم', '404266871', '9117058156'),
(36, 'محمدمظفري', '*', 'سرپرست', 'كارمند13', '400267236', '9128134310'),
(37, 'رامين داداشي', '*', 'سرپرست', 'كارمند13', '400243098', '9173081457'),
(38, 'سعيد دائمي', '*', 'سرپرست', 'سرگرد', '402712855', '9903165090'),
(39, 'صفرعلي خوشه چين', '*', 'سرپرست', 'سرگرد', '402585924', '9119316327'),
(40, 'رضا شمسايي', '*', 'سرپرست', 'سرهنگ2', '403180646', '9111459600'),
(41, 'سيدحسين سيددلدار', '*', 'سرپرست', 'ستوانيكم', '402618383', '9118338303'),
(42, 'علي اصغررستمي', '*', 'سرپرست', 'سرگرد', '403046528', '9194474091'),
(43, 'عليرضا دانش', '*', 'سرپرست', 'كارمند15', '400267261', '9119303051'),
(44, 'سيدرضا ذاكري', '*', 'سرپرست', 'سرهنگ2', '402865519', '9111302759'),
(45, 'رحمان رجبي', '*', 'سرپرست', 'كارمند15', '400267250', '9112418624'),
(46, 'حميدبابايي', '*', 'سرپرست', 'ستوانيكم', '403682342', '9358963631'),
(47, 'حامدعلي پور', '*', 'سرپرست', 'ستوانيكم', '402832587', '9113387422'),
(48, 'حسين واسع جهانبخش', '*', 'سرپرست', 'سروان', '403840105', '9119376292'),
(49, 'محمدموقري', '*', 'سرپرست', 'استواردوم', '404185895', '9119308638'),
(50, 'حسين روشان', '*', 'سرپرست', '*', '462712210', '9119363345'),
(51, 'جابرنجف پور', '*', 'سرپرست', '*', '463611542', '9358065561'),
(52, 'محمدمولايي', '*', 'سرپرست', '*', '462712211', '9111866044'),
(53, 'مرتضي عادلي', '*', 'سرپرست', '*', '462712213', '9115026960'),
(54, 'محمدرضايوسفي', '*', 'سرپرست', '*', '462712212', '9113326314'),
(55, ' علي اصغر محمدنيا', '*', 'سرپرست', 'سروان', '403552082', '9192621185'),
(56, 'شاهين جهانزاد', '*', 'سرپرست', '', '401146441', '9118821237'),
(57, 'اميرحسين اصلاحي', 'عليرضا اصلاحي', 'فرزند', 'ستوانسوم', '400326964', '9353297993'),
(58, 'اكبرصادقي', '*', 'سرپرست', 'سرگرد', '403602711', '9119055942'),
(59, 'مصطفي حسينعلي نژاد', '*', 'سرپرست', 'استواريكم', '403816899', '9112395003'),
(60, 'حسين تقي زاده', '*', 'سرپرست', 'سرگرد', '403602590', '9118360667'),
(61, 'علي نقي علي نيا', 'اعظم شادمان', 'همسر', 'ستوانيكم', '402863742', '9112354410'),
(62, 'مهدي محبت دوست', '*', 'سرپرست', 'ستوانيكم', '403398858', '9112361479'),
(63, 'محمدرضا رحماني', 'محمدرضا رحماني', 'سرپرست', 'روحاني', '*', '9116199087'),
(64, 'صابر مهدی پور', 'صابر مهدی پور', 'سرپرست', 'استوار دوم', '404151952', '9119409757'),
(65, 'جواد اکبری', 'جواد اکبری', 'سرپرست', 'استوار دوم', '404218967', '9330510905'),
(66, 'محمدجواد یعقوبی', 'محمدجواد یعقوبی', 'سرپرست', 'استوار دوم', '404417125', '9117560976'),
(67, 'ابراهیم عباسی', 'ابراهیم عباسی', 'سرپرست', 'سرگرد', '403093920', '9013732765'),
(68, 'آرمین پژوهان', 'آرمین پژوهان', 'سرپرست', 'استوار دوم', '404151400', '9116494304'),
(69, 'نقی عبدالله پور', 'نقی عبدالله پور', 'سرپرست', 'ستوانیکم', '402831560', '9356087052'),
(70, 'عمار نجفی', 'عمار نجفی', 'سرپرست', 'سروان', '403900140', '9118156373'),
(71, 'مهرداد نظری', ' مهرداد نظری', 'سرپرست', 'استوار دوم', '403629110', '9196616632'),
(72, 'رضا جانعلی پور', 'رضا جانعلی پور', 'سرپرست', 'سروان', '403207998', '9118190883'),
(73, 'فاطمه حسنی', 'فاطمه حسنی', 'سرپرست', 'ستوانسوم', '404440068', '9114296199'),
(74, 'هادی علیپور', 'هادی علیپور', 'سرپرست', 'ستوانیکم', '402713859', '9179445024'),
(75, 'علی اسلام پناه', ' -', 'سرپرست', 'استوار دوم', '404301159', '9113417174'),
(76, 'علی موسی پور', ' -', 'سرپرست', 'ستواندوم', '403089758', '9116536589'),
(77, 'مجید نیکوئی', ' -', 'سرپرست', 'سرهنگ', '402480846', '9111447882'),
(78, 'مجید رمضانی', ' -', 'سرپرست', 'کارمند رتبه 13', '400245022', '9113445794'),
(79, 'لقمان اسماعیل پور', ' -', 'سرپرست', 'ستوانیکم', '403149792', '9115011598'),
(80, 'جعفر مهری', ' -', 'سرپرست', 'ستوانیکم', '402392253', '9116181537'),
(81, 'حسن جعفری', ' -', 'سرپرست', 'سروان', '403632510', '9112428287'),
(82, 'میثم بابائی', ' -', 'سرپرست', 'استوار دوم', '404276750', '9119909949'),
(83, 'ایمان فهیم', ' -', 'سرپرست', 'استوار دوم', '404277467', '9117606034'),
(84, 'میلاد طوفانی', ' -', 'سرپرست', 'استوار دوم', '404416790', '9117561407'),
(85, 'مرتضی بابائی', ' -', 'سرپرست', 'استوار دوم', '404301238', '9395825625'),
(86, 'اسماعیل صبوری', ' -', 'سرپرست', 'سروان', '402252984', '9113420832'),
(87, 'اسد اسدنیا', ' -', 'سرپرست', 'سرگرد', '403261490', '9391427318'),
(88, 'فرج الله چنگالی', ' -', 'سرپرست', 'ستوانیکم', '402491590', '9117167608'),
(89, 'سجاد عشوری', ' -', 'سرپرست', 'استوار یکم', '403506941', '9119437426'),
(90, 'حسن محبی', ' -', 'سرپرست', 'سروان', '403602796', '9113454166'),
(91, 'ابراهیم فلاح توشه', ' -', 'سرپرست', 'ستوانیکم', '402618577', '9118414772'),
(92, 'حسن معتمدی', ' -', 'سرپرست', 'ستوانیکم', '403196526', '9111457472'),
(93, 'یاسر شیرزاد', ' -', 'سرپرست', 'ستوانیکم', '403190720', '9112418207'),
(94, 'جلال شمسی', ' -', 'سرپرست', 'ستواندوم', '403342804', '9118061401'),
(95, 'سیدجلال هاشمی', ' - ', 'سرپرست', 'کارمند رتبه 12', '401176226', '9113455318'),
(96, 'اسماعیل حاجی پور', ' -', 'سرپرست', 'استواردوم', '404276864', '9116515324'),
(97, 'حسین مقتدری', ' -', 'سرپرست', 'سرهنگ', '402873450', '9111490276'),
(98, 'عزیز صحن سرائی', ' -', 'سرپرست', 'سروان', '403149688', '9118469508'),
(99, 'سامان شکری', ' -', 'سرپرست', 'استوار دوم', '404416741', '9370788497'),
(100, 'روح الله فلاح', ' -', 'سرپرست', 'سرگرد', '403480599', '9111448530'),
(101, 'مهدی آقاجانی', ' -', 'سرپرست', 'کارمند رتبه 13', '400400362', '9118490860'),
(102, 'رضا رمضانی', ' -', 'سرپرست', 'استواریکم', '404256592', '9115628297'),
(103, 'ایمان آقایی', ' -', 'سرپرست', '', '404383383', '9114665130'),
(104, 'حسین امیری', ' -', 'سرپرست', 'ستواندوم', '403631620', '9118415475'),
(105, 'رسول موحدی فر', ' -', 'سرپرست', 'استواردوم', '404513606', '9115503276'),
(106, 'محسن عباسی نسب', ' -', 'سرپرست', 'استواریکم', '403883773', '9115564396'),
(107, 'وحید امیری', ' -', 'سرپرست', 'استواردوم', '404256269', '9365608837'),
(108, 'عیسی رنجبر', ' -', 'سرپرست', 'سرگرد', '402138970', '9113434137'),
(109, 'کیانوش رسولی', ' -', 'سرپرست', 'گروهبانیکم', '404580711', '9118881496'),
(110, 'یاسین جانعلی پور', ' -', 'سرپرست', 'سروان', '402963347', '9118209505'),
(111, 'بهمن جعفری', ' -', 'سرپرست', 'سرهنگ دوم', '402540734', '9116183321'),
(112, 'شهروز علیجانپور', ' -', 'سرپرست', 'سرهنگ دوم', '402980837', '9125696707'),
(113, 'حسینعلی جانی نژاد', ' -', 'سرپرست', 'سرهنگ دوم', '403093828', '9111456353'),
(114, 'ابراهیم جواهری', ' -', 'سرپرست', 'ستواندوم', '400320858', '9117629954'),
(115, 'اکبر شعبانزاده', ' -', 'سرپرست', 'ستواندوم', '402138932', '9116114942'),
(116, 'محمود احدی', ' -', 'سرپرست', 'سروان', '402187207', '9118607525'),
(117, 'حمید نصرتی', ' -', 'سرپرست', 'سرگرد', '402778179', '9192421867'),
(118, 'محسن شفقت', ' -', 'سرپرست', 'ستوانسوم', '403382917', '9112411911'),
(119, 'روح الله احمدی نژاد', ' -', 'سرپرست', 'ستوانسوم', '403259639', '9198039006'),
(120, 'محمد محمدپور', ' -', 'سرپرست', 'ستوانیکم', '403089734', '9908906959'),
(121, 'حمید آقابابائی', ' -', 'سرپرست', 'ستوانیکم', '402353200', '9114695305'),
(122, 'سیدمهدی فلاح علیپور', ' -', 'سرپرست', 'ستواندوم', '403599723', '9116150392'),
(123, 'شهریار توحیدی', ' -', 'سرپرست', 'استوار دوم', '404276803', '9115059924'),
(124, 'جابر کوهی ', ' -', 'سرپرست', 'استواریکم', '403418717', '9112458493'),
(125, 'عطاالله دلاوران', ' -', 'سرپرست', 'سروان', '400268356', '9907092326'),
(126, 'رضا سلیمی', ' -', 'سرپرست', 'گروهبانیکم', '404650221', '9116989637'),
(127, 'مجتبی امیدبخش', ' -', 'سرپرست', 'استواریکم', '403834774', '9119425898'),
(128, 'محمدرضا شرافتی', ' - ', 'سرپرست', 'سروان', '402188285', '9392254230'),
(129, 'قاسم نظری', ' -', 'سرپرست', 'استواردوم', '404256993', '9117082775'),
(130, 'نادر بخشی', ' -', 'سرپرست', 'استواردوم', '404256312', '9117095578'),
(131, 'ایمان بلاژ', ' -', 'سرپرست', 'استواردوم', '404185275', '9115059349'),
(132, 'قائم آقابراری', ' -', 'سرپرست', 'استواریکم', '403883347', '9113430309'),
(133, 'کامبیز حسینی دامانی', ' -', 'سرپرست', 'سرهنگ 2', '403132822', '9113451223'),
(134, 'حسین محجوب', ' -', 'سرپرست', 'ستوانیکم', '402392186', '9115027427'),
(135, 'مهدی اسماعیل پور', ' -', 'سرپرست', 'ستوانیکم', '402786474', '9113426042'),
(136, 'محمدرضا مهدوی', ' -', 'سرپرست', 'ستوانیکم', '402664332', '9112446793'),
(137, 'رسول گلعلی زاده', ' -', 'سرپرست', 'ستوانسوم', '402500244', '9900360993'),
(138, 'یدالله روحی', ' -', 'سرپرست', 'ستوانسوم', '403027248', '9354477632'),
(139, 'مینا قرباندوست', ' - ', 'سرپرست', 'ستوانسوم', '404327800', '9116503228'),
(140, 'علی محمد کاظمی', ' -', 'سرپرست', 'ستوانسوم', '403506527', '9118463902'),
(141, 'فرهاد قنبرزاده', ' -', 'سرپرست', 'استواریکم', '404045337', '9117576636'),
(142, 'یاسر محمدی', ' -', 'سرپرست', 'استواردوم', '404302383', '9118285919'),
(143, 'عباس نظری', ' -', 'سرپرست', 'استواردوم', '404185901', '9116074309'),
(144, 'محمد علی پور ', ' -', 'سرپرست', 'استواردوم', '404277352', '9118454609'),
(145, 'فرشاد حیدری', ' -', 'سرپرست', 'استواردوم', '404416522', '9902706860'),
(146, 'محمد احمدی', ' -', 'سرپرست', 'استواردوم', '404359873', '9191466492'),
(147, 'احمد میرزایی توستانی', ' -', 'سرپرست', 'ستوانیکم', '402237673', '9113642532'),
(148, 'سید اسماعیل مرتضوی', ' -', 'سرپرست', 'ستوانیکم', '402446754', '9355349558'),
(149, 'سید فخرالدین حسینی', ' -', 'سرپرست', 'ستواندوم', '403089850', '9112426916'),
(150, 'صادق قربانعلی زاده', ' -', 'سرپرست', 'ستواندوم', '403342701', '9113361582'),
(151, 'رضا دلپیشه', ' -', 'سرپرست', 'استواریکم', '403634098', '9111404252'),
(152, 'متین خستوان', ' -', 'سرپرست', 'استواردوم', '404383530', '9010376740'),
(153, 'صادق جاویدان', ' -', 'سرپرست', 'استواردوم', '404156925', '9358680701'),
(154, 'کاظم اکبرپور', ' -', 'سرپرست', 'استواردوم', '404120232', '9115635119'),
(155, 'علی مهربان طلب', ' -', 'سرپرست', 'سروان', '402949533', '9368879097'),
(156, 'حسین علی نیا', ' -', 'سرپرست', 'ستوانیکم', '402353077', '9103984272'),
(157, 'مجید ابراهیمیان', ' -', 'سرپرست', 'ستواندوم', '4024344193', '9119439653'),
(158, 'محمود تیزهوش', ' -', 'سرپرست', 'استواردوم', '404301305', '9114797918'),
(159, 'مهدی رحیمی', ' -', 'سرپرست', 'استواردوم', '404301494', '9114543403'),
(160, 'محمدعلی افضلی پور', ' -', 'سرپرست', 'ستواندوم', '402526178', '9111405192'),
(161, 'فرهاد عروجی', ' -', 'سرپرست', 'ستواندوم', '402747043', '9116100689'),
(162, 'کیانوش برجی', ' -', 'سرپرست', 'استواردوم', '404256324', '9117632812'),
(163, 'انوش نقدی', ' -', 'سرپرست', 'استواردوم', '404513620', '9199065785'),
(164, 'عیسی شمسی', ' -', 'سرپرست', 'استواردوم', '404219443', '9306673376'),
(165, 'مهران نوروزی', ' -', 'سرپرست', 'استواردوم', '404302498', '9118413629'),
(166, 'سید یاسر سیدی', ' -', 'سرپرست', 'استواردوم', '4043833670', '9118061923'),
(167, 'محمد فلاح', ' -', 'سرپرست', 'ستوانسوم', '404084203', '9118414172'),
(168, 'ابراهیم استادی', ' -', 'سرپرست', 'استواردوم', '404256208', '9117201680'),
(169, 'علی حاجی پور', ' -', 'سرپرست', 'ستوانیکم', '404266676', '9113418040'),
(170, 'حسین رجبی', ' -', 'سرپرست', 'ستوانسوم', '403507957', '9187764880'),
(171, 'علی الهی قلعه', ' -', 'سرپرست', 'استواردوم', '404256233', '9118415694'),
(172, 'سبحان عزیزی', ' -', 'سرپرست', 'استواردوم', '404277339', '9372859493'),
(173, 'یعقوب سعیدی', ' -', 'سرپرست', 'استواردوم', '404301603', '9114359317'),
(174, 'عیسی حسین پور', ' -', 'سرپرست', 'استواردوم', '404301380', '9118457785'),
(175, 'وحید سرمست', ' - ', 'سرپرست', 'استواردوم', '404501410', '9119435042'),
(176, 'فرزاد صفری', ' -', 'سرپرست', 'سرگرد', '402138646', '9111303258'),
(177, 'جواد میرزاجانزاده', ' -', 'سرپرست', 'سروان', '403508172', '9119298393'),
(178, 'ایوب صبور رشت آبادی', ' -', 'سرپرست', 'ستوانیکم', '404266810', '9112410295'),
(179, 'محمد رمضانپور', ' -', 'سرپرست', 'ستوانیکم', '404054089', '9359989454'),
(180, 'حسین شعبانژاد', ' -', 'سرپرست', 'ستواندوم', '404010098', '9116150050'),
(181, 'نادر فلاح', ' -', 'سرپرست', 'ستواندوم', '403951067', '9116009403'),
(182, 'محمد صف شکن', ' -', 'سرپرست', 'ستوانیکم', '403633203', '9117625002'),
(183, 'بهمن مرمری', ' -', 'سرپرست', 'سرگرد', '402785690', '9112323523'),
(184, 'عبدالرضا خجسته', ' -', 'سرپرست', 'سروان', '401495538', '9118277969'),
(185, 'رامین کاویار', ' -', 'سرپرست', 'سروان', '402746981', '919393532'),
(186, 'افسانه بابائیان', ' -', 'سرپرست', 'کارمند 13', '400239010', '9118815208'),
(187, 'مصطفی رضائی', ' -', 'سرپرست', 'سروان', '403602620', '9118208848'),
(188, 'مهدی یوسفی پور', ' -', 'سرپرست', 'استواردوم', '404120846', '9117579878'),
(189, 'رضا همتی', ' -', 'سرپرست', 'استواردوم', '404257031', '9118418452'),
(190, 'سجاد سمامی', ' -', 'سرپرست', 'گروهبانیکم', '404527770', '9302042304'),
(191, 'یوسف محمدپور', ' -', 'سرپرست', 'ستوانیکم', '403917989', '9198948219'),
(192, 'سیدرضا موسوی', ' -', 'سرپرست', 'سروان', '403796062', '9369395515'),
(193, 'میلاد اسماعیل زاده', ' -', 'سرپرست', '', '404401385', '9117100331'),
(194, 'عادل حکیمی', ' -', 'سرپرست', 'ستوانیکم', '404266688', '9112451724'),
(195, 'ایوب مهدوی ملکوتی', ' -', 'سرپرست', 'ستواندوم', '403418390', '9116153189'),
(196, 'قاسم رضائی', ' -', 'سرپرست', 'استواردوم', '404383590', '9112432409'),
(197, 'سیده فاطمه میرعباسی', ' -', 'سرپرست', 'کارمند 15', '400252658', '9112426376'),
(198, 'علیرضا خیری', ' -', 'سرپرست', 'سرهنگ 2', '403102180', '9112451047'),
(199, 'رضا وفایی', ' -', 'سرپرست', 'سروان', '402353480', '9170173458'),
(200, 'هادی حسنی', ' -', 'سرپرست', 'ستوانیکم', '402585948', '9112441523'),
(201, 'حسین اسدی', ' -', 'سرپرست', 'استواردوم', '404318391', '9116602301'),
(202, 'امید غفاری', ' -', 'سرپرست', 'استواردوم', '404277431', '9116283913'),
(203, 'علی جمشیدی', ' -', 'سرپرست', 'سروان', '403380489', '9907144054'),
(204, 'جواد عوضی', '', 'سرپرست', 'سروان', '402470215', '9117576962'),
(205, 'توحید سال مه', ' -', 'سرپرست', 'استواردوم', '404151629', '9335064949'),
(206, 'حامد محبیان', ' -', 'سرپرست', 'استواردوم', '404256889', '9117602605'),
(207, 'اکبر کریمی', ' -', 'سرپرست', 'سرگرد', '403378677', '9111496046'),
(208, 'محمدعادل اصغری', ' -', 'سرپرست', 'ستوانیکم', '404466112', '9338171993'),
(209, 'وحید کشاورز ', ' -', 'سرپرست', 'ستوانسوم', '404256841', '9394562812'),
(210, 'مرتضی قلی پور', ' -', 'سرپرست', 'سروان', '403408554', '9117651389'),
(211, 'اکبر احسانپور', ' -', 'سرپرست', 'سروان', '403027121', '9175260642'),
(212, 'احمد اکبرشاهی کهن', ' -', 'سرپرست', 'سروان', '401544495', '9118154045'),
(213, 'مجتبی مسعودی', ' -', 'سرپرست', 'ستواندوم', '404440202', '9111405912'),
(214, 'سعید یوسف خواه', ' -', 'سرپرست', 'سرگرد', '403480654', '9372195561'),
(215, 'احمد احمدی مجرد', ' -', 'سرپرست', 'روحانی رتبه 15', '400347049', '9113413524'),
(216, 'ارسلان صبح زاهدی', ' -', 'سرپرست', 'سرهنگ دوم', '403262274', '9192642430'),
(217, 'محمدحسن مرادی', ' -', 'سرپرست', 'استواریکم', '403461507', '9113424721'),
(218, 'تقی خرمدل', ' -', 'سرپرست', 'ستواندوم', '402782663', '9118414269'),
(219, 'قدرت الله رمضانی', ' -', 'سرپرست', 'سرهنگ 2', '401144237', '9113433861'),
(220, 'عباس گل پاگون', ' -', 'سرپرست', 'استواردوم', '404243937', '9118419425'),
(221, 'محمد نجف زاده', '*', '*', 'ستوانیکم', '404466367', '9350710108'),
(222, 'میثم تخوار', '*', '*', 'ستوانیکم', '403671319', '9117096552'),
(223, 'عظیم علیزاده', '*', '*', 'استواردوم', '404527836', '9358259912'),
(224, 'زهرا عبدالله پور', 'عظیم علیزاده', 'همسر', '*', '*', '9017396689'),
(225, 'جعفر خلیلی', '*', '*', 'ستوانیکم', '404164200', '9113269907'),
(226, 'صالح حق طلب', '*', '*', 'ستوانیکم', '402584891', '9118369917'),
(227, 'حمید محمدی نسب', '*', '*', 'سرهنگ دوم', '403038040', '9119159156'),
(228, 'علیرضا وهاب زاده', '*', '*', 'سرگرد', '403408517', '9112328425'),
(229, 'ابراهیم اسماعیل پور', '*', '*', 'ستواندوم', '403568170', '9118428782'),
(230, 'سید مهدی افروزه', '*', '*', 'ستواندوم', '403502595', '9334460394'),
(231, 'سمیه چک', 'سید مهدی افروزه', 'همسر', '*', '*', '9119461585'),
(232, 'محمد جعفر غفاری', '*', '*', 'استواردوم', '404383784', '9118839176'),
(233, 'حسن نعمتی', '*', '*', 'استواردوم', '404417058', '9383325659'),
(234, 'حامد علیخواه', '*', '*', 'ستوانیکم', '403508263', '9119441439'),
(235, 'رضا عاشوری', '*', '*', 'استواردوم', '404148084', '9101910223'),
(236, 'زهره عاشوری', 'رضا عاشوری', 'همسر', '*', '*', '9198896943'),
(237, 'سعدی حسینی', '*', '*', 'سرگرد', '402138580', '9113414476'),
(238, 'اسماعیل ایزدی دوست', '*', '*', 'استواردوم', '404083624', '9359775805'),
(239, 'سجاد رستم زاده', '*', '*', 'استواردوم', '404376536', '9118426295'),
(240, 'کیوان یار علی پور', '*', '*', 'سروان', '403367023', '9356405356'),
(241, 'یاسین جعفری', '*', '*', 'سروان', '403277824', '9113447314'),
(242, 'مطهره  شعبانی', 'یاسین جعفری', 'همسر', '*', '*', '9114813139'),
(243, 'سعید سهیلی', '*', '*', 'ستوانیکم', '402320497', '9149468218'),
(244, 'یوسف لشکریانی', '*', '*', 'ستواندوم', '403596840', '9112458009'),
(245, 'مهدی ابراهیمی', '*', '*', 'ستوانسوم', '403417520', '99013183256'),
(246, 'مهتاب رضایی', 'مهدی ابراهیمی', 'همسر', '*', '*', '9903183256'),
(247, 'رسول داودی', '*', '*', '*', '402739101', '9118950029'),
(248, 'مازیار صدیقی', '*', '*', 'ستوانسوم', '402442748', '9112433715'),
(249, 'فریبا یوسفی', 'مازیار صدیقی', 'همسر', '*', '*', '9113433715'),
(250, 'ابوذر بی آلایش', '*', '*', 'سروان', '404021680', '9365713859'),
(251, 'مهوش نوروزی', 'ابوذر بی آلایش', 'همسر', '*', '*', '9359184517'),
(252, 'آصف قربانی', '*', '*', 'ستوانیکم', '404023998', '9118424760'),
(253, 'سهیلا حسین نیا', 'آصف قربانی', 'همسر', '*', '*', '9118421216'),
(254, 'محمد فکری', '*', '*', 'ستوانیکم', '403200736', '9111455330'),
(255, 'یاسر سرمست', '*', '*', 'ستوانسوم', '403744220', '9119462044'),
(256, 'بهروز صفری', '*', '*', 'ستوانیکم', '402588093', '9119442007'),
(257, 'جعفر پنام', '*', '*', 'ستوانیکم', '402500396', '9114547369'),
(258, 'عادل بستام ', '*', '*', 'ستواندوم', '402880806', '9196584812'),
(259, 'حسین امید خواه', '', '', 'سرهنگ دوم', '403085870', '9113437357'),
(260, 'وهاب شمس درخشان', '*', '*', 'سروان', '402352218', '9111853817'),
(261, 'هادی حسنی', '*', '*', 'استواریکم', '402759483', '9196438100'),
(262, 'سمیه عاشوری', 'هادی حسنی', 'همسر', '*', '*', '9116438100'),
(263, 'علی مهدی پور', '*', '*', 'سروان', '402320114', '9112422166'),
(264, 'فرزاد تاسه', '*', '*', 'ستوانسوم', '403507143', '9119455823'),
(265, 'محمد آقابیگی', '*', '*', 'ستوانیکم', '404401348', '9119292622'),
(266, 'سید مجتبی سعادتمند', '*', '*', 'استواردوم', '404277182', '9337766959'),
(267, 'مجید حسنی', '*', '*', 'سروان', '402448234', '9112441652'),
(268, 'ابوذر غلام نژاد', '*', '*', 'ستوانیکم', '402618220', '9112444047'),
(269, 'علی معبودی', '*', '*', 'رتبه 7', '400389901', '9117087876'),
(270, 'جابر محمد زاده', '*', '*', 'استواردوم', '404251582', '9117168010'),
(271, 'جواد نوروزی', '*', '*', 'استواردوم', '404120852', '9117655186'),
(272, 'محمود نوروزی', '*', '*', 'استواردوم', '404302516', '9118270593'),
(273, 'محمد فلاح', '*', '*', 'استواردوم', '404219674', '9117084105'),
(274, 'مجتبی مهدویان', '*', '*', 'استواردوم', '404501604', '9118272059'),
(275, 'حمید استوار', '*', '*', 'رتبه 13', '400247470', '9362929312'),
(276, 'غلامحسین پیر خندان', '*', '*', 'ستواندوم', '402664162', '9119417805'),
(277, 'مصطفی شکوهی فر', '*', '*', 'سروان', '403258076', '9389507788'),
(278, 'امیر بخشوده', '*', '*', 'استواردوم', '404483687', '9359310299'),
(279, 'رسول مهری', '*', '*', 'استواردوم', '404376688', '9116074899'),
(280, 'زینب فرهاد نیا', 'میثم تخوار', 'همسر', '*', '*', '9117096890'),
(281, 'محمد رضا حاجی آقازاده', '*', '*', 'استواردوم', '404256427', '9026673842'),
(282, 'زهرا فلاح', 'محمد رضا حاجی آقازاده', 'همسر', '*', '*', '9114349720'),
(283, 'ابراهیم خلیل زاده', '*', '*', 'ستوانسوم', '402419740', '9193263827'),
(284, 'اسماعیل خورسندی', '*', '*', 'ستوانیکم', '402714165', '9112425810'),
(285, 'زهرا زارع', 'اسماعیل خورسندی', 'همسر', '*', '*', '9112435810'),
(286, 'ابراهیم جعفری', '*', '*', 'ستوانیکم', '402786954', '9116542699'),
(287, 'شقایق دهدار', 'شهید  درویشعلی دهدار', 'فرزند', '*', '*', '9117106482'),
(288, 'جانباز قاسم خورسندی', '*', '*', 'سرهنگ دوم ', '*', '9191834799'),
(289, 'آرزو سعیدی', 'شهید  پژو سعیدی', 'فرزند', 'استواریکم', '*', '9112420193'),
(290, 'جانباز اردشیر پور صفر', '*', '*', 'سرباز', '*', '9352391434'),
(291, 'حميدرضا بابايي نژاد', 'حميدرضا بابايي نژاد', 'سرپرست', 'ستواندوم', '402818839', '9113876887'),
(292, 'سيد محمود حسينيان', 'سيد محمود حسينيان', 'سرپرست', 'ستوانيكم', '402716770', '9118881480'),
(293, 'سجاد صادقي', 'سجاد صادقي', 'سرپرست', 'استواردوم', '404301962', '9119850848'),
(294, 'مالك رضايي', 'مالك رضايي', 'سرپرست', 'سروان', '402592928', '9919176028'),
(295, 'مهدي ملكي', 'مهدي ملكي', 'سرپرست', 'سروان', '403727271', '9111405070'),
(296, 'جمشيد شاهدي', 'جمشيد شاهدي', 'سرپرست', 'ستوانيكم', '403790205', '9190822600'),
(297, 'ياسر يخي', 'ياسر يخي', 'سرپرست', 'استواردوم', '404257067', '9119356908'),
(298, 'امين كاظميان', 'امين كاظميان', 'سرپرست', 'ستوانسوم', '404257067', '9119890614'),
(299, 'محسن شيرعلي زاده', 'محسن شيرعلي زاده', 'سرپرست', 'استواردوم', '404277224', '9119844079'),
(300, 'بهنام فرجودي', 'بهنام فرجودي', 'سرپرست', 'استواردوم', '404157050', '9118261883'),
(301, 'سيد اكبر نيازي', 'سيد اكبر نيازي', 'سرپرست', 'ستواندوم', '403817399', '9398822470'),
(302, 'زرغام سيفي نژاد', 'زرغام سيفي نژاد', 'سرپرست', 'سرگرد', '403372535', '9367597572'),
(303, 'فاطمه مظلومي', 'خشايار مظلومي', 'فرزند', 'سروان', '404163966', '9126392707'),
(304, 'عوض فرهمندي', 'عوض فرهمندي', 'سرپرست', 'سرگرد', '403277368', '9112835886'),
(305, 'حامد جمالي ', 'حامد جمالي', 'سرپرست', 'استواردوم', '404243986', '9112830216'),
(306, 'فرشاد صفاتيان', 'فرشاد صفاتيان', 'سرپرست', 'سرگرد', '402363680', '9119821612'),
(307, 'عليرضا رضوي محجوب', 'عليرضا رضوي محجوب', 'سرپرست', 'سروان', '402546372', '9916983728'),
(308, 'محمد طلوعي', 'محمد طلوعي', 'سرپرست', 'استواردوم', '404360152', '9111850891'),
(309, 'محمدجوادعزتي', 'محمدجواد عزتي', 'سرپرست', 'گروهبانيكم', '404650269', '9921297169'),
(310, 'محمد رضائي', 'محمد رضائي', 'سرپرست', 'گروهبانيكم', '404650208', '9386936855'),
(311, 'مهدي صبركار', 'مهدي صبركار', 'سرپرست', 'استواردوم', '404219480', '9384455815'),
(312, 'بلال احمد پور', 'بلال احمدپور', 'سرپرست', 'ستوانسوم', '403494987', '9111490615'),
(313, 'حسن عليپور', 'حسن عليپور', 'سرپرست', 'گروهبانيكم', '404653740', '9302819470'),
(314, 'مهدي تقي پور', 'مهدي تقي پور', 'سرپرست', 'گروهبانيكم', '404650178', '9368987561'),
(315, 'مجيد تقي زاده ', 'مجيد تقي زاده', 'سرپرست', 'سرهنگ دوم', '402652652', '9113351284'),
(316, 'وحيد كلامي', 'وحيد كلامي', 'سرپرست', 'ستوانيكم', '403951146', '9365296372'),
(317, 'سعيد سلماني ', 'سعيد سلماني', 'سرپرست', 'ستوانيكم', '402598610', '9116592343'),
(318, 'پورنگ صفرزاده', 'پورنگ صفرزاده', 'سرپرست', 'سرگرد', '403480666', '9113842008'),
(319, 'يوسف اكبري ', 'يوسف اكبري', 'سرپرست', 'سروان', '403989207', '91172208970'),
(320, 'علي ابراهيم پور', 'علي ابراهيم پور', 'سرپرست', 'روحاني', '400401871', '9191496648'),
(321, 'يونس كريميان', 'يونس كريميان', 'سرپرست', 'استواردوم', '404302292', '9017041413'),
(322, 'فريد مقدم زرنگ', 'فريد مقدم زرنگ', 'سرپرست', 'ستوانسوم', '403753695', '9119874405'),
(323, 'اسماعيل رزمجو', 'اسماعيل رزمجو', 'سرپرست', 'ستواندوم', '403560686', '9116536238'),
(324, 'مرتضي محبوبي فر', 'مرتضي محبوبي فر', 'سرپرست', 'ستوانيكم', '404401531', '9394447850'),
(325, 'فرنام ميرزادخت', 'فرنام ميرزادخت', 'سرپرست', 'سروان', '402255160', '9119885088'),
(326, 'مهدي محبي', 'مهدي محبي', 'سرپرست', 'سروان', '404506961', '9112361488'),
(327, 'مرتضي آقايي', 'مرتضي آقايي', 'سرپرست', 'ستواندوم', '403816735', '9119319438'),
(328, 'داود بهرامي راد', 'داود بهرامي راد', 'سرپرست', 'سروان', '402499886', '9357626680'),
(329, 'داود شايان', 'داود شايان', 'سرپرست', 'سرگرد', '403403453', '9116198968'),
(330, 'محسن رحيمي', 'محسن رحيمي', 'سرپرست', 'استواردوم', '404295433', '9147474741'),
(331, 'اسماعيل فرمانبر', 'اسماعيل فرمانبر', 'سرپرست', 'ستوانسوم', '403196071', '9192349982'),
(332, 'مهدي رحماني', 'مهدي رحماني', 'سرپرست', 'استواردوم', '404318755', '9119847361'),
(333, 'علي رضايتي', 'علي رضايتي', 'سرپرست', 'سروان', '402202944', '9113835790'),
(334, 'سيد امير لطيفي', 'سيد امير لطيفي', 'سرپرست', 'ستواندوم', '403835365', '9119874053'),
(335, 'عليرضا كبريان', 'عليرضا كبريان', 'سرپرست', 'استواردوم', '404277510', '9386288215'),
(336, 'وحيد نجفي لاله', 'وحيد نجفي لاله', 'سرپرست', 'استواردوم', '404235151', '9117623145'),
(337, 'ابراهيم برومند', 'ابراهيم برومند', 'سرپرست', 'سروان', '403727052', '9119874959'),
(338, 'مجيد محمدي', 'مجيد محمدي', 'سرپرست', 'استواردوم', '404218839', '9119843766'),
(339, 'سامان فرجي', 'سامان فرجي', 'سرپرست', 'استواردوم', '404219637', '9119891702'),
(340, 'ميلاد يارپور', 'ميلاد يارپور', 'سرپرست', 'استواردوم', '404513655', '9119895391'),
(341, 'بهنام رنجبر', 'بهنام رنجبر', 'سرپرست', 'استواردوم', '404244036', '9378814706'),
(342, 'داريوش تاجديني', 'داريوش تاجديني', 'سرپرست', 'ستواندوم', '403065882', '9109250727'),
(343, 'جليل ابراهيم زاده', 'جليل ابراهيم زاده', 'سرپرست', 'سرهنگ پاسدار', '401148838', '9111832775'),
(344, '   مجيد  حسيني', '   مجيد  حسيني', '', 'سرهنگ', '400122570', '91112835205'),
(345, '  رويا نصيري', 'مجيد حسيني', 'همسر', '', '', ''),
(346, 'حجت  انتظار', 'حجت انتظار', 'حجت انتظار', 'روحاني', '400397831', '9113863263'),
(347, 'عباس حقيقي نيا', 'عباس حقيقي نيا', '', 'سرهنگ دوم', '402653700', '9116198473'),
(348, ' زهرا   سبيل گشتي', 'زهرا سبيل گشتي', '', 'سرهنگ دوم', '400333221', '9111861365'),
(349, 'فرشاد  نظري', 'فرشاد  نظري', '', 'سرگرد ', '403327918', '9378104880'),
(350, 'نبي علي  منافي', 'نبي علي  منافي', 'همسر', 'سرگرد ', '403086666', '9114645217'),
(351, 'مرتضي  احدي', 'مرتضي  احدي', '', 'سرگرد ', '402832915', '9114805761'),
(352, ' سروش   صانعي مقدم', ' سروش   صانعي مقدم', '', ' سروان', ' 403728860', '9119817266'),
(353, ' رضا   عطائي كاشكي', ' رضا   عطائي كاشكي', '', 'سرگرد ', ' 402292726', '9111843550'),
(354, ' افراسياب   زاهدنيا', ' افراسياب   زاهدنيا', '', ' سرگرد', ' 403277617', '9117104273'),
(355, 'امير  وهاب زاده', 'امير  وهاب زاده', '', ' سرگرد', '403094043', '09117493545'),
(356, ' سيد رضا   كاظمي دافچاهي', ' سيد رضا   كاظمي دافچاهي', '', ' سروان', ' 401495927', '9118815561'),
(357, ' محسن   ساعدي', ' محسن   ساعدي', '', ' سروان', ' 403792779', '9364920214'),
(358, ' مجيد   نژادصفري گورابجيري', ' مجيد   نژادصفري گورابجيري', '', ' سروان', ' 402321970', '9375757425'),
(359, 'علی   خوش نما', 'علی   خوش نما', '', ' سروان', '403795987', '09118848797'),
(360, ' محمد   رضايي زاده پيشكناري', ' محمد   رضايي زاده پيشكناري', '', ' سروان', ' 401597888', '9115298951'),
(361, ' مرتضي   مختاري حاجي بكنده', ' مرتضي   مختاري حاجي بكنده', '', ' سروان', ' 403372596', '9119320850'),
(362, ' محمدرضا   كبودوند', ' محمدرضا   كبودوند', '', ' سروان', ' 402759574', '9116044403'),
(363, ' بهروز   قرباني مژدهي', ' بهروز   قرباني مژدهي', '', 'سروان', '402228519', '9113834725'),
(364, 'مهدي  محوي', 'مهدي  محوي', '', 'سروان', '403141847', '9117564613'),
(365, ' صادق   اسماعيلي كراني', ' صادق   اسماعيلي كراني', '', ' سروان', ' 401806088', '9111844338'),
(366, ' مجيد   جوافشان بيدريغ', ' مجيد   جوافشان بيدريغ', '', ' سروان', ' 401505970', '9112301104'),
(367, ' مجيد   عليزاده مژدهي', ' مجيد   عليزاده مژدهي', '', ' سروان', ' 402228647', '9113352686'),
(368, ' بهروز   ابراهيم پور', ' بهروز   ابراهيم پور', '', 'سروان', ' 402415010', '9113830629'),
(369, 'علي  معبودي', 'علي  معبودي', '', 'سروان', '403278130', '9191920218'),
(370, ' سينا   لقماني فرد', ' سينا   لقماني فرد', '', 'سروان', ' 403989370', '9118346610'),
(371, ' جواد   فلاح پور', ' جواد   فلاح پور', '', ' ستوان يکم', ' 403843015', '9118259316'),
(372, ' ظاهر   محمدي', ' ظاهر   محمدي', '', ' ستوان يکم', ' 402217637', '9113828605'),
(373, 'جمشيد  صفري', 'جمشيد  صفري', '', 'ستوان يكم', '404466239', '9118330243'),
(374, ' امين   رشت', ' امين   رشت', '', ' ستوان يکم', ' 403394658', '9909533734'),
(375, 'نوروز  مقدم زرنگ', 'نوروز  مقدم زرنگ', '', ' ستوان يکم', '403817314', '9119863656'),
(376, ' مصطفي   پوراسماعيل', ' مصطفي   پوراسماعيل', '', ' ستوان يکم', ' 402245591', '9113831676'),
(377, ' ابراهيم   سرفراز', ' ابراهيم   سرفراز', '', ' ستوان دوم', ' 402552517', '9113817502'),
(378, ' محمدرضا   نقي زاده خواج كيني', ' محمدرضا   نقي زاده خواج كيني', '', ' ستوان يکم', ' 403291857', '9116705180'),
(379, ' مسعود   پورگنجي طولارود', ' مسعود   پورگنجي طولارود', '', 'ستوان يكم', ' 404466045', '9118873085'),
(380, ' زهرا   يكتاپيلمبرائي', ' زهرا   يكتاپيلمبرائي', '', ' ستوان يکم', ' 400249908', '9117042462'),
(381, ' امين   خياط', ' امين   خياط', '', ' ستوان يکم', ' 404266718', '09111865908'),
(382, 'کیوان  سلطانی', 'کیوان  سلطانی', '', ' ستوان يکم', '402714141', '9116101084'),
(383, ' حامد   يحيي زاده چمني', ' حامد   يحيي زاده چمني', '', ' ستوان يکم', ' 404164028', '9351815947'),
(384, ' سيد جواد   معصومي ساداتي', ' سيد جواد   معصومي ساداتي', '', ' ستوان يکم', ' 402552839', '9113399078'),
(385, 'مهرداد  شكوري ', 'مهرداد  شكوري ', '', 'ستوانيكم', '402447953', '9116125696'),
(386, ' محمد   شيخ نيا', ' محمد   شيخ نيا', '', ' ستوان يکم', ' 403772343', '9118277702'),
(387, ' محمدرضا   عبداله زاده ضيابري', ' محمدرضا   عبداله زاده ضيابري', '', ' ستوان يکم', ' 402313780', '9331663059'),
(388, ' عقيل   قلي زاده هنده خاله', ' عقيل   قلي زاده هنده خاله', '', 'ستوان دوم', ' 403671174', '9118170363'),
(389, ' بهرام   قويدل رشت آبادي', ' بهرام   قويدل رشت آبادي', '', ' ستوان دوم', ' 403671150', '9118441622'),
(390, 'مجيد  همتي', 'مجيد  همتي', '', ' ستوان دوم', '403528031', '9118373415'),
(391, ' رحيم   رفيع زاده', ' رحيم   رفيع زاده', '', ' ستوان دوم', ' 402914385', '9112329124'),
(392, ' علي   اصغري شفت محله', ' علي   اصغري شفت محله', '', ' ستوان دوم', '402545859', '9112302837'),
(393, ' عليرضا   لطيفي برسري', ' عليرضا   لطيفي برسري', '', ' ستوان دوم', ' 402742537', '9114664795'),
(394, ' فخرالدين   شمسائي', ' فخرالدين   شمسائي', '', ' ستوان دوم', ' 403510592', '9389422447'),
(395, ' سيد مصطفي   حقيقي پاشاكي', ' سيد مصطفي   حقيقي پاشاكي', '', ' ستوان سوم', ' 402568379', '9113362862'),
(396, ' محمدجواد   سماك اماني', ' محمدجواد   سماك اماني', '', 'ستوانسوم', ' 403149998', '9117042415'),
(397, ' ميلاد   دخت هادي فلاح', ' ميلاد   دخت هادي فلاح', '', ' ستوان سوم', ' 403495396', '9119830516'),
(398, ' محمد   جمالي سقالكسار', ' محمد   جمالي سقالكسار', '', ' ستوان سوم', ' 402567272', '9332991501'),
(399, ' ابراهيم   غلامعلي نژاد', ' ابراهيم   غلامعلي نژاد', '', ' استواريكم', ' 402587246', '9112472193'),
(400, ' بهروز   روستازاده هند خاله', ' بهروز   روستازاده هند خاله', '', 'استواريكم ', ' 403302776', '9914270772'),
(401, ' ميثم   نوروزي', ' ميثم   نوروزي', '', ' استواريكم', ' 403548637', '9119337683'),
(402, ' عادل   آقايي پورليمويي', ' عادل   آقايي پورليمويي', '', ' استواريكم', ' 403716315', '9118174474'),
(403, ' سجاد   تقي زاده', ' سجاد   تقي زاده', '', ' استواريكم', ' 403715992', '9909414714'),
(404, ' هاني   سراي پاس', ' هاني   سراي پاس', '', ' استواريكم', ' 403847562', '9116145700'),
(405, ' مرتضي   آرستن', ' مرتضي   آرستن', '', ' استواريكم', ' 403816656', '9118307299'),
(406, ' يوسف   اجدادي شهيداني', ' يوسف   اجدادي شهيداني', '', ' استواريكم', ' 403980456', '9119289850'),
(407, 'مرتضي  خاكزاد', 'مرتضي  خاكزاد', '', ' استواريكم', '403996968', '9157188765'),
(408, ' اسماعيل   خاكسارتاسنده', ' اسماعيل   خاكسارتاسنده', '', ' استواريكم', ' 404083776', '9119411059'),
(409, ' رسول   حبيبي خشت مسجدي', ' رسول   حبيبي خشت مسجدي', '', ' استواردوم', ' 403960860', '9115627393'),
(410, ' داود   وثوقي نودهي', ' داود   وثوقي نودهي', '', ' استواردوم', ' 403817417', '9118251886'),
(411, ' ميلاد   صادق', ' ميلاد   صادق', '', ' استواردوم', ' 404084082', '9116188301'),
(412, ' سعيد   فتاحي شيجاني', ' سعيد   فتاحي شيجاني', '', 'استواردوم', ' 404120694', '9119371052'),
(413, ' ميلاد   محمدي چلكي', ' ميلاد   محمدي چلكي', '', ' استواردوم', ' 404120785', '9032995040'),
(414, 'مسعود  تيموريان', 'مسعود  تيموريان', '', 'استواردوم', '404219108', '9111841070'),
(415, ' مجتبي   ربيعي جيلداني', ' مجتبي   ربيعي جيلداني', '', ' استواردوم', ' 404256555', '9119308619'),
(416, ' محمدرضا   احترامي دواجي', ' محمدرضا   احترامي دواجي', '', ' استواردوم', '404416315', '9117647893'),
(417, ' ميلاد   طبيبي دافچاهي', ' ميلاد   طبيبي دافچاهي', '', ' استواردوم', ' 404312686', '9119396617'),
(418, ' سيدعلي   هاشمي جفرودي', ' سيدعلي   هاشمي جفرودي', '', ' استواردوم', ' 404219947', '9395859699'),
(419, ' علي اصغر   شهسواري كپورچالي', ' علي اصغر   شهسواري كپورچالي', '', 'استواردوم', ' 404219467', '9119855380'),
(420, ' مرتضي   غلامي نژاد', ' مرتضي   غلامي نژاد', '', ' استواردوم', ' 404219601', '9334002124'),
(421, 'ميثم  صابري ابراهيم سرائي', 'ميثم  صابري ابراهيم سرائي', '', ' استواردوم', '404277250', '9111491601'),
(422, ' فرشاد   عامري جيفرودي', ' فرشاد   عامري جيفرودي', '', 'استواردوم', ' 404483924', '09393576281'),
(423, ' ايمان   بخشي جيفرودي', ' ايمان   بخشي جيفرودي', '', 'استواردوم', ' 404359952', '9033466399'),
(424, ' روح اله   كريمي بركادهي', ' روح اله   كريمي بركادهي', '', 'استواردوم', ' 404383851', '9036094384'),
(425, ' محسن   يعقوبي پلكوئي', ' محسن   يعقوبي پلكوئي', '', 'استواردوم', ' 404384041', '9115064905'),
(426, 'شايان  علي اصغري', 'شايان  علي اصغري', '', 'استواردوم', '404302152', '9116010573'),
(427, ' مرتضي   مهدي زاده كته سري', ' مرتضي   مهدي زاده كته سري', '', 'استواردوم', ' 404376676', '9388336519'),
(428, ' دانيال   عاشوري چيراني', ' دانيال   عاشوري چيراني', '', 'استواردوم', ' 404302085', '9116068016'),
(429, ' معين   فتحي چوكامي', ' معين   فتحي چوكامي', '', 'استواردوم', ' 404385240', '9355079346'),
(430, ' محسن   ابراهيمي', ' محسن   ابراهيمي', '', 'استواردوم', ' 404383395', '9216782320'),
(431, ' حسن   رمضانيان لله كاء', ' حسن   رمضانيان لله كاء', '', 'استواردوم', ' 404383632', '9115521289'),
(432, 'سجاد  منصوري', 'سجاد  منصوري', '', 'استواردوم', ' 404376664', '9118341681'),
(433, ' هادي   اقدامي كلاشمي', ' هادي   اقدامي كلاشمي', '', 'استواردوم', ' 404376380', '09115475449'),
(434, 'حميدرضا  شعباني', 'حميدرضا  شعباني', '', 'استواردوم', '404084057', '9118819015'),
(435, ' رضا   جمالي گلباغي', ' رضا   جمالي گلباغي', '', 'استواردوم', ' 404383474', '9113427736'),
(436, 'مجتبي  ضيابخش طالمي', 'مجتبي  ضيابخش طالمي', '', 'استواردوم', '404302036', '9011721406'),
(437, ' ايمان   گل پيكر', ' ايمان   گل پيكر', '', 'استواردوم', ' 404416273', '9116942454'),
(438, ' حسين   همتي طبالونداني', ' حسين   همتي طبالونداني', '', ' گروهبان يکم', ' 404535560', '9397049062'),
(439, ' منصور   حاتمي تملي', ' منصور   حاتمي تملي', '', ' گروهبان يکم', ' 404416479', '9355904677'),
(440, 'سیدفرزین حسینی', 'سیدفرزین  حسینی', 'سرپرست', 'ستواندوم', '403269372', '9118206295'),
(441, 'علی شریفی', 'علی شریفی', 'سرپرست', 'ستوانسوم', '403980602', '9116382610'),
(442, 'حبیب  قرباندوست', 'حبیب قرباندوست', 'سرپرست', 'استواریکم', '40395110', '9397427526'),
(443, 'حسن امجدی', 'حسن امجدی', 'سرپرست', 'ستوانیکم', '402351561', '9114784932'),
(444, 'زینب  نوروزی', 'اسماعیل  احمدی', 'همسر', 'ستوانسوم', '403196563', '9113449764'),
(445, 'زینب  سرشار', 'حسام  یاقوتی', 'همسر', 'استواردوم', '404279622', '9119439651'),
(446, 'شهلا  وکیلی', 'هادی احمدخانی', 'همسر', 'سروان', '403553736', '9112448824'),
(447, 'مسعود  مشت آهنین ', 'مسعود مشت آهنین', '', 'ستوانیکم', '403817296', '9118369936'),
(448, 'هاجر  عبداللهی', 'فریبرز  دست گشاده', 'همسر', 'ستواندوم', '403462111', '9113419715'),
(449, 'زهرا  حبیبی', 'مرتضی قربانی ', 'همسر', 'استواریکم', '403883864', '9359305181'),
(450, 'امیر دهقان', 'زهرا   رجبی پور', 'پسر', 'کارمند13', '400203362', '9352227404'),
(451, 'آزاده   اکبرنژاد', 'محمد  منتظری ', 'همسر', 'استواردوم', '404302425', '9377465753'),
(452, 'یاسر  ایزدی دوست ', 'یاسر  ایزدی دوست', '', 'استواریکم', '403911525', '9119455118'),
(453, 'کبری  حقیقی', 'فرهاد  محمدنژاد', 'همسر', 'سروان', '4012284006', '9119439771'),
(454, 'آتیه  نخست روان', 'حسن  پورعلی ', 'همسر', 'ستوانیکم', '402465074', '9116305714'),
(455, 'بشیر  بابایی ', 'بشیر  بابایی', '', 'ستواندوم', '403149652', '9117093865'),
(456, 'علی  کشت پرور', 'علی کشت پرور', '', 'ستوانیکم', '401090782', '9121874039'),
(457, 'مانا  قنبرزاده', 'حمید  قنبرزاده', 'دختر', 'ستوانیکم', '402643183', '9927864655'),
(458, 'حیدر  نوروزی', 'حیدر  نوروزی', '', 'سروان', '403792860', '9112412183'),
(459, 'مهدی  محمدی', 'مهدی  محمدی', 'پسر', 'کارمند16', '400212892', '9118282124'),
(460, 'علیرضا  فیضی ', 'علیرضا  فیضی', '', 'سروان', '402237960', '9101040982'),
(461, 'سکینه  فخرایی ', 'جواد  ساجدی فر', 'همسر', 'ستوانیکم ', '402552803', '9112420258'),
(462, 'مصطفی  جهانی ', 'مصطفی جهانی', '', 'ستوانیکم', '404543817', '9393386975'),
(463, 'عیسی  شعبانپور', 'عیسی شعبانپور', '', 'سرهنگ2', '402850863', '9116967966'),
(464, 'محمد  حسین پور', 'محمد  حسین پور', '', 'کارمند12', '400245095', '9119433987'),
(465, 'جواد ساجدی فر', 'جواد  ساجدی فر', '', 'ستوانیکم', '402552803', '9112420528'),
(466, 'ماهان  آقازاده', 'مجید  آقازاده', 'دختر', 'سرگرد', '404133202', '91025555'),
(467, 'مبین   کاظمی', 'علی   کاظمی', 'پسر', 'سرگرد', '403184731', '9114324418'),
(468, 'مائده  سیدی', 'ابوالحسن  سیدی', 'دختر', 'ستواندوم', '402486570', '9381170238'),
(469, 'محدثه آقابیگی', 'فرهاد  آقابیگی', 'دختر', 'ستوانیکم', '403078992', '9114811814'),
(470, 'محدثه  کشاورز', 'پوریا  ترابی', 'دختر', 'استواریکم', '403996841', '9126972744'),
(471, 'سیدحامد  جعفرپور', 'سیدحامد  جعفرپور', '', 'سروان', '403346408', '9123381148'),
(472, 'میثم  فرخی', 'میثم  فرخی', '', 'استواردوم', '404256798', '9114308304'),
(473, 'محمد  آقاجانیان', 'محمد آقاجانیان', '', 'سروان', '403679495', '9113431308'),
(474, 'سجاد  اکبری ', 'سجاد  اکبری ', '', 'ستوانیکم', '403897784', '9111458961'),
(475, 'محمدمهدی  پورعینعلی', 'کامران  پورعینعلی', 'پسر', 'ستواندوم', '402664290', '9112457958'),
(476, 'جواد علی نژاد', 'جواد علی نژاد', '', 'استواردوم', '404302371', '9778440037'),
(477, 'حسن  خوش منش ', 'حسن خوش منش ', '', 'سروان', '402313821', '9122019846'),
(478, 'سید میرمعصوم  سیدی', 'سیدمیرمعصوم  سیدی', '', 'سرهنگ2', '400336258', '9112381675'),
(479, 'فاطمه اخوت', 'مصطفی نوروزی ', 'همسر', 'استواردوم', '404483985', '9118201366'),
(480, 'میلاد رمضانی', 'میلاد رمضانی', '', 'استواریکم', '403996993', '9118348641'),
(481, 'سعید  اخباری', 'سعید اخباری', '', 'استواریکم', '403671903', '9112422685'),
(482, 'لطفعلی طاهری', 'لطفعلی  طاهری', '', 'ستوانسوم', '403141963', '9111398955'),
(483, 'میثم یگانه ', 'میثم یگانه', '', 'استواردوم', '402853311', '9116071035'),
(484, 'ظریف پالیزبان', 'ظریف پالیزبان', '', 'ستواندوم', '402470914', '9113391624'),
(485, 'احسان حسن آور', 'احسان حسن آور', '', 'ستواندوم', '402880752', '9333030021'),
(486, 'سعید نصرتی ', 'سعید نصرتی', '', 'ستوانیکم', '404164004', '9106981145'),
(487, 'اسماعیل  محمدیان ', 'اسماعیل محمدیان', '', 'ستواندوم', '403418780', '9111459040'),
(488, 'حسین علی محمدی', 'حسین علی محمدی', '', 'ستوانیکم ', '402903510', '9395901945'),
(489, 'سجاد مشعوف', 'سجاد مشعوف', '', 'ستوانیکم', '403417567', '9112416728'),
(490, 'سجاد  کریم نژاد', 'سجاد کریم نژاد', '', 'ستواندوم', '403578022', '9388769827'),
(491, 'محمد  بازیار', 'محمد بازیار', '', 'سروان', '402283660', '9113356698'),
(492, 'مهدی  برمچ', 'مهدی  برمچ', '', 'سروان', '403894114', '9112827196'),
(493, 'سیدمحسن  کیائی', 'سیدمحسن کیائی', '', 'گروهبانیکم', '404564791', '9356162475'),
(494, 'سیده فاطمه خوش گذران', 'امین باقری پور', 'همسر', 'استواردوم', '404256300', '9359427483'),
(495, 'مصطفی  سرپناه', 'محدثه  امیری', '', 'ستوانیکم', '404476610', '9119459324'),
(496, 'مهدی  ابراهیمی', 'مهدی ابراهیمی', '', 'ستوانسوم', '403561216', '9118436579'),
(497, 'محمد ضمامی', 'محمد ضمامی', '', 'استواردوم', '404084124', '9112415562'),
(498, 'صادق  جادی', 'صادق  جادی', '', 'ستوانیکم', '403774297', '9196419025'),
(499, 'منصور یوسف زاده', 'منصور یوسف زاده', '', 'سروان', '402713896', '9139977005'),
(500, 'علیرضا ترومیده', 'علیرضا ترومیده', 'سرپرست', 'سرهنگ دوم', '403100857', '9122899220'),
(501, 'ایمان حسین زاده', 'ایمان حسین زاده', ' سرپرست', 'استوار دوم', '403715906', '9381419568'),
(502, 'شیرزاد قاسمی', 'شیرزاد قاسمی', 'سرپرست', 'ستواندوم', '404130286', '9396999243'),
(503, 'قربان علیپور', 'قربان علیپور', 'سرپرست', 'رتبه14', '400226301', '9118461251'),
(504, 'جواد شکری', 'جواد شکری', 'سرپرست', 'ستوانسوم', '404663770', '9118426437'),
(505, 'محمد زاهدی', 'محمد زاهدی', ' سرپرست', 'گروهبانیکم', '404383644', '9117570162'),
(506, 'اسماعیل هنر خواه', 'اسماعیل هنر خواه', 'سرپرست', 'ستواندوم', '402586941', '9116001013'),
(507, 'مرتضی اعتمادی', 'مرتضی اعتمادی', 'سرپرست', 'ستوانیکم', '403196022', '9358808260'),
(508, 'حجت عباس نژاد', 'حجت عباس نژاد', 'سرپرست', 'ستوانیکم', '404130262', '9365317111'),
(509, 'رمضانعلی مهر علی', 'رمضانعلی مهر علی', 'سرپرست', 'ستوانیکم', '404266949', '9119440433'),
(510, 'قاسم شعبانی', 'قاسم شعبانی', 'سرپرست', 'سرهنگ دوم', '403180592', '9113456316'),
(511, 'ایوب میرزائی', 'ایوب میرزائی', 'سرپرست', 'ستوانسوم', '402392198', '9118844417'),
(512, 'مهدی سعادتی فرد', 'مهدی سعادتی فرد', 'سرپرست', 'سروان', '403383041', '9112441871'),
(513, 'مسعود اسدی', '', '', 'ستوانسوم', '402540590', '9115645632'),
(514, 'مجتبی رضائی', '', '', '', '404083909', '9115619380'),
(515, 'ولی اله محمود نیا', '', '', 'سروان', '403401316', '9193846377'),
(516, 'سجاد فدوی', '', '', 'استواردوم', '404383796', '9119435983'),
(517, 'مهدی یحیایی', '', '', 'ستوانسوم', '403951286', '9113337819'),
(518, 'مهدی دلنواز', '', '', 'سرگرد', '404677652', '9382064337'),
(519, 'حسن لطفی', '', '', 'سروان', '404025510', '9117107344'),
(520, 'مصطفی توحیدی', '', '', 'سروان', '403989228', '9111459143'),
(521, 'مجتبی پورمیرزائی', '', '', 'گروهبانیکم', '404550937', '9199710234'),
(522, 'حمید قلی نیا', '', '', 'گروهبانیکم', '404677652', '9119848381'),
(523, 'مهدی پرمون', '', '', 'ستواندوم', '403190690', '9112435119'),
(524, 'امیر حسین رجبی', '', '', 'گروهبانیکم', '404372415', '9386965544'),
(525, 'روح الله شیرزاد', '', '', 'سروان', '402962963', '9114680494'),
(526, 'صادق عبدی نیا', '', '', 'استوار دوم', '404277327', '9391605413'),
(527, 'مهدی فاتحی', '', '', 'استواريكم', '403510774', '9395991219'),
(528, 'صفرعلی رفیعی', '', '', 'ستوانسوم', '403302880', '9112327585'),
(529, 'جعفر حاجی پور', '', '', 'ستوانیکم', '403510476', '9119447737'),
(530, 'علی شریفی', '', '', 'ستواندوم', '402759525', '9111444975'),
(531, 'سید محمد قاسمی', '', '', 'ستواندوم', '403716340', '9117095892'),
(532, 'علیرضا رمضانی', '', '', 'ستوانسوم', '403382723', '9377964466'),
(533, 'سید ماکان جوادیان', '', '', 'استواريكم', '403577790', '9013373969'),
(534, 'کوروش جهاندیده', '', '', 'ستواندوم', '403079583', '9115422957'),
(535, 'عیسی رمضانی', '', '', 'ستوانسوم', '402759513', '9115520742'),
(536, 'مطلب حسین زاده', '', '', 'سرهنگ دوم', '402851132', '9117096826'),
(537, 'سید احمد تقوی', '', '', 'استوار دوم', '404296188', '9909727216'),
(538, 'مرتضی محمود پور', '', '', 'سرگرد', '403372602', '9111455587'),
(539, 'مسعود خوشحال', '', '', 'استواردوم', '404256490', '9368220748'),
(540, 'علی واحدی', '', '', 'ستوانسوم', '403670947', '9119318197'),
(541, 'حمیدرضا خروجی', '', '', 'استوار دوم', '404378417', '9114559822'),
(542, 'اسدالله سوسن بلوچی', '', '', 'ستواندوم', '402809991', '9112329296'),
(543, 'خالق طهماسب پور', '', '', 'استوار دوم', '404302050', '9116167757'),
(544, 'رضا حسنی', '', '', 'سروان', '402284341', '9111444061'),
(545, 'حسین محمدی', '', '', 'استوار یکم', '403670637', '9119432328'),
(546, 'ناصر مهری پور', '', '', 'ستوانسوم', '402944950', '9192051346'),
(547, 'بهراد ایمانی', '', '', 'سروان', '403842278', '9118448249'),
(548, 'بهرام صدیق مقدم', '', '', '', '403671356', '9112426692'),
(549, 'علیرضا ابراهیم نژاد', '', '', 'استوار یکم', '404045052', '9116487242'),
(550, 'مصطفی امیدوار دیلمی', '', '', 'استوار یکم', '403788302', '9113454408'),
(551, 'محمد میرزاپورماشک', '', '', 'استوار دوم', '404501616', '9118442066'),
(552, 'ابراهیم عبد الله پور پنچاه', '', '', 'استوار دوم', '404360190', '9394226870'),
(553, 'امیر قربان پور', '', '', 'استوار یکم', '403784590', '9112414384'),
(554, 'ابوذر دقیق', '', '', 'ستوانیکم', '402759495', '9119277061'),
(555, 'محمد قمری', '', '', 'ستواندوم', '403141859', '9362577573'),
(556, 'سینا کفاش', '', '', 'استواردوم', '404277560', '9363628732'),
(557, 'مجتبي زرين', 'مجتبي زرين', 'سرپرست', 'استواردوم', '404360097', '9115510916'),
(558, 'سعید فتحی', 'سعید فتحی', 'سرپرست', 'سرگرد', '404360097', '9112346330'),
(559, 'ياسر اكوان', 'ياسر اكوان', 'سرپرست', 'سروان', '402786498', '9112342448'),
(560, 'کامبیز مرادزاده', 'کامبیز مرادزاده', 'سرپرست', 'سرگرد', '403679276', '9111378624'),
(561, 'هادی نصرتی مقدم', 'هادی نصرتی مقدم', 'سرپرست', 'سروان', '403078694', '9113399606'),
(562, 'فرهاد اکوان', 'فرهاد اکوان', 'سرپرست', 'سرگرد', '402170670', '9119471504'),
(563, 'مصطفی احمدی', 'مصطفی احمدی', 'سرپرست', 'سروان', '404025351', '9111859448'),
(564, 'مينا قاسم زاده', 'مينا قاسم زاده', 'سرپرست', 'رتبه 13', '400186467', '9112355439'),
(565, 'سجاد عليدوست', 'سجاد عليدوست', 'سرپرست', 'سروان', '403727209', '9113367360'),
(566, 'رضا خجسته', '', 'سرپرست', 'ستوانيكم', '402664319', '9113446591'),
(567, 'ولی صوفی مقدم', '', 'سرپرست', 'ستوانيكم', '402391420', '9366442424'),
(568, 'روح الله عزیزی ', '', 'سرپرست', 'ستوانيكم', '403418298', '9112351450'),
(569, 'منصور شیرزاد', '', 'سرپرست', 'سروان', '403199539', '9112337014'),
(570, 'محمد مجیدی', '', 'سرپرست', 'ستوانيكم', '402830580', '9113448738'),
(571, 'عبدالله مریدانی', '', 'سرپرست', 'ستوانيكم', '403395304', '9113491158'),
(572, 'داود قمری', '', 'سرپرست', 'ستوانيكم', '402486120', '9114691244'),
(573, 'فرهاد پورمخدومی', '', 'سرپرست', 'ستوانيكم', '403561022', '9383181281'),
(574, 'رضا صارمی', '', 'سرپرست', 'ستواندوم', '402379285', '0916 751732'),
(575, 'اصغر یعقوبی', '', 'سرپرست', 'ستواندوم', '403636137', '911808266'),
(576, 'حامد دریانورد', '', 'سرپرست', 'ستواندوم', '403816917', '9112478245'),
(577, 'حسین قاسم جانی', '', 'سرپرست', 'ستواندوم', '403417993', '9118372988'),
(578, 'اسماعیل آسوده', '', 'سرپرست', 'ستواندوم', '403507994', '9017777301'),
(579, 'سجاد قلی پور', '', 'سرپرست', 'ستواندوم', '403635145', '9114631638'),
(580, 'حشمت فاضلی', '', 'سرپرست', 'ستواندوم', '402586412', '9112381479'),
(581, 'رضا باقرزاده', '', 'سرپرست', 'ستواندوم', '403716303', '9117573193'),
(582, 'قاسم وطن خواه', '', 'سرپرست', 'ستواندوم', '402831601', '9118080931'),
(583, 'سجاد تجسسی', '', 'سرپرست', 'ستواندوم', '404327744', '9108464245'),
(584, 'فرامرز مرادی', '', 'سرپرست', 'ستواندوم', '403078700', '9112360778'),
(585, 'حسن مکاری', '', 'سرپرست', 'ستواندوم', '402515417', '9118434316'),
(586, 'عباس مرادی', '', 'سرپرست', 'ستواندوم', '403395298', '9118953415'),
(587, 'كاظم رحيمي', '', 'سرپرست', 'ستواندوم', '403816966', '9112350914'),
(588, 'اکرم دوستار', 'رسول نوروزی', 'همسر', '', '', '9395843173'),
(589, 'مهدی سالاری', '', 'سرپرست', 'ستوانسوم', '404083995', '9118098462'),
(590, 'محمد  احمدي', '', 'سرپرست', 'ستوانسوم', '403508238', '9115460425'),
(591, 'صادق باغچه ای', '', 'سرپرست', 'ستوانسوم', '403747981', '9360484967'),
(592, 'رشید داداش زاده', '', 'سرپرست', 'ستوانسوم', '403418663', '9119297880'),
(593, 'علیرضا سمیع زاده', '', 'سرپرست', 'ستوانسوم', '403342889', '9374173081'),
(594, 'محمد حسن زاده', '', 'سرپرست', 'ستوانسوم', '403256390', '9118312142'),
(595, 'جواد همتی', '', 'سرپرست', 'ستواندوم', '403167010', '9113384521'),
(596, 'جهانگیر افروز', '', 'سرپرست', 'ستوانسوم', '403167010', '9192563271'),
(597, 'مسلم صالحی', '', 'سرپرست', 'استواريكم', '403716078', '9117488020'),
(598, 'حامد تیغ کار', '', 'سرپرست', 'استواريكم', '403784321', '9119400469'),
(599, 'نادر عبدالهی', '', 'سرپرست', 'استواريكم', '400389949', '9111405883'),
(600, 'ابراهیم فرج پور', '', 'سرپرست', 'ستوانسوم', '403577947', '9116195943'),
(601, 'محمدعلی غلامی', '', 'سرپرست', 'استواريكم', '403382980', '9114633487'),
(602, 'محمد خوشنود', '', 'سرپرست', 'استواردوم', '404256488', '9361797086'),
(603, 'محمدجواد یزدانی', '', 'سرپرست', 'استواردوم', '404277870', '9371316018'),
(604, 'حسین ریحانی', '', 'سرپرست', 'استواريكم', '403950907', '9119295603'),
(605, 'حسین بکران', '', 'سرپرست', 'استواردوم', '404151514', '9905164150'),
(606, 'الیاس اصغری', '', 'سرپرست', 'استواردوم', '404039684', '9118384575'),
(607, 'ایمان کامیاب', '', 'سرپرست', 'استواردوم', '404450438', '9119317429'),
(608, 'علی حاجی پور', '', 'سرپرست', 'استواردوم', '404360012', '9119349936'),
(609, 'مجید حسینی', '', 'سرپرست', 'استواردوم', '404185354', '9116165464'),
(610, 'سیدمجتبی موسوی نیا', '', 'سرپرست', 'استواردوم', '404187508', '9363285847'),
(611, 'مجتبی سپاهی', '', 'سرپرست', 'استواردوم', '404385872', '9157960318'),
(612, 'رحیم غلاملونیا', '', 'سرپرست', 'استواردوم', '404219595', '9117105764'),
(613, 'موسي  احدي', '', 'سرپرست', 'كارمند رتبه 13', '401188733', '9113395479'),
(614, 'سيدمحمود  عبدالله زاده', '', 'سرپرست', 'بازنشسته', '', '9119402174'),
(615, 'عبدالعلی شعبانی', '', 'سرپرست', 'سرهنگ', '402474610', '9117652362'),
(616, 'سید رضا شریفی', '', 'سرپرست', 'استواردوم', '404141776', '9118268513'),
(617, 'رضا حسینی', '', 'سرپرست', 'استواردوم', '404276918', '9115488480'),
(618, 'سعید حق دوست', '', 'سرپرست', 'استواردوم', '404083752', '9116214339'),
(619, 'حمیدرضا عباسی', '', 'سرپرست', 'استواردوم', '400389731', '9113356509'),
(620, 'علي اعظم سعيدي', '', 'سرپرست', 'سرهنگ 2', '401145746', '9112425506'),
(621, 'محمود اميدي', '', 'سرپرست', 'سرهنگ 2', '403208188', '9111843575'),
(622, 'محسن آقايي', '', 'سرپرست', 'سروان', '402998180', '9113481432'),
(623, 'محمد رضا دنيادوست', '', 'سرپرست', 'ستوانيكم', '403634074', '9111363243'),
(624, 'حسين رفيع پور', '', 'سرپرست', 'ستوانيكم', '403769691', '9117497991'),
(625, 'مرتضي حسن زاده', '', 'سرپرست', 'ستوانيكم', '403671654', '9111481857'),
(626, 'حسين مهرگان', '', 'سرپرست', 'ستوانيكم', '403671022', '9118390161'),
(627, 'حسين رئوفي', '', 'سرپرست', 'ستوانسوم', '403671538', '9118311538'),
(628, 'محمد باقر معصومي', '', 'سرپرست', 'ستواندوم', '403993438', '9112345938');
INSERT INTO `tbl_users` (`id`, `fullname`, `supervisor`, `related`, `ranks`, `pcode`, `phone`) VALUES
(629, 'حسين بخشي', '', 'سرپرست', 'ستواندوم', '403671794', '9111458621'),
(630, 'امير پورمظفر', '', 'سرپرست', 'ستواندوم', '403716250', '9119835062'),
(631, 'محمد يعقوبي پور', '', 'سرپرست', 'ستوانسوم', '404152002', '9115004627'),
(632, 'كامبيز شيري', '', 'سرپرست', 'ستواندوم', '403089692', '9392643272'),
(633, 'محمد جواد اسماعيل پور', '', 'سرپرست', 'استواردوم', '403561265', '9119271973'),
(634, 'محمد رضا عاقبتي', '', 'سرپرست', 'استواريكم', '403671289', '9112360851'),
(635, 'اسماعيل ذكاوت', '', 'سرپرست', 'استواريكم', '403671540', '9128911811'),
(636, 'نبي رحماني', '', 'سرپرست', 'استواردوم', '404219336', '9192092796'),
(637, 'حسين حسن زاده', '', 'سرپرست', 'سرگرد', '402399565', '9194156115'),
(638, 'پوريا نعمتي', '', 'سرپرست', 'ستواندوم', '404440238', '9118055170'),
(639, 'سيد مدبر شهابي', '', 'سرپرست', 'روحاني', '400398744', '9149558792'),
(640, 'محمد جعفري', '', 'سرپرست', 'ستوانيكم', '404337981', '9113398010'),
(641, 'فاطمه صفري', '', 'سرپرست', 'بازنشسته', '', '9118295970'),
(642, 'پيمان خجسته', '', 'سرپرست', 'استواريكم', '403671599', '9116388289'),
(643, 'ارحام عفت دوست ', '', '', 'سرهنگ ', '40240636743', '9111389041'),
(644, 'رمضانعلي صالح پور', '', '', 'سرگرد', '402406367', '9116504419'),
(645, 'سيد هاشم جليلي ', '', '', 'سروان', '402419544', '9125367181'),
(646, 'مرتضي پاسبان ', '', '', 'ستوانيكم ', '403461866', '9366067603'),
(647, 'فرشيد توانايي ', '', '', 'ستواندوم ', '403749540', '9118295450'),
(648, 'امير صالحي زاهد', '', '', 'ستوانيكم ', '402831571', '9113302845'),
(649, 'سيد نور محمد جعفري ', '', '', 'ستواندوم ', '400215406', '9119891191'),
(650, 'ياسين اسفرم', '', '', 'سروان', '404466100', '911560227'),
(651, 'رضا قويدل ', '', '', 'سروان', '4031449986', '9119416263'),
(652, 'زهرا دوستي ', '', '', 'استوار دوم', '404261162', '9374676407'),
(653, 'سعيد بيگ', '', '', 'ستوانسوم', '403508203', '9114295076'),
(654, 'بهرام بامداد', '', '', 'سروان ', '402963542', '9115551044'),
(655, 'ارسلان ابراهيم خاني ', '', '', 'ستوانسوم ', '403698283', '9119852070'),
(656, 'عليرضا حسن زاده ', '', '', 'سروان ', '403238326', '9399757785'),
(657, 'هادي تاجي', '', '', 'استوار دوم', '403598200', '9118205450'),
(658, 'محمد رضا پيمان طلب', '', '', 'ستواندوم ', '403418043', '9118818538'),
(659, 'مازيار يوسفي', '', '', 'استوار دوم', '404417149', '9119402078'),
(660, 'حبيب ربيعي درگاه', '', '', 'سروان', '403205680', '9350834604'),
(661, 'مجتبي فلاح', '', '', 'گروهبانيكم ', '404513473', '9198105433'),
(662, 'شهاب اسماعيل زاده', '', '', 'گروهبانيكم ', '404603358', '9114533647'),
(663, 'مجيد طهوري ', '', '', 'گروهبانيكم ', '404251466', '9369038005'),
(664, 'ابولقاسم شكوري ', '', '', 'ستوانسوم ', '403418092', '9396187505'),
(665, 'مهرداد حسين زاده ', '', '', 'سروان', '403816887', '9386008680'),
(666, 'مصطفي محسني نصب ', '', '', 'استوار دوم ', '403810538', '9184989110'),
(667, 'ميلاد قدرتي', '', '', 'استوار يكم', '40451495', '9371439159'),
(668, 'مرتضي خاكي', '', '', 'استوار يكم', '403418500', '901954922'),
(669, 'ارسلان ابراهيم خاني ', '', '', 'ستوانسوم', '403698283', '9117060324'),
(670, 'محمد عاشوري', '', '', 'كارمند رنبه 13', '400285093', '9118842636'),
(671, 'معين شايسته ', '', '', 'استوار دوم', '404301640', '939944606'),
(672, 'جابر اصغري', '', '', 'استوار يكم', '403786263', '9111286941'),
(673, 'ياسر نيازمند ', '', '', 'استوار دوم', '403185937', '9119851621'),
(674, 'محمد نوروزي', '', '', 'سروان', '402104525', '9119881463'),
(675, 'خسرو داودي ', '', '', 'استوار دوم', '403715827', '9351322522'),
(676, 'نبي الله قلي نيا', '', '', 'ستوانيكم ', '404456802', '9337833190'),
(677, 'مجمد كوچكي', '', '', 'سروان', '403329873', '9111490753'),
(678, 'علي فدايي', '', '', 'ستوانيكم ', '403416635', '9113387987'),
(679, 'غلامرضا آزادي ', '', '', 'سروان', '402364919', '911387987'),
(680, 'مازيار يوسفي ', '', '', 'استوار دوم ', '403417149', '9116402087'),
(681, 'حسام شامخي', '', '', 'استوار يكم ', '403418365', '9115883553'),
(682, 'محمد عليانژاد', '', '', 'ستوانيكم ', '403196540', '919194046'),
(683, 'سيد باقر عليزاده', '', '', 'ستوانيكم ', '404120670', '9398216989'),
(684, 'مجتبي اميني ', '', '', 'ستوان سوم', '4031345214', '9119351747'),
(685, 'حسن كرامت دوست ', '', '', 'استوار دوم', '404277522', '9370792616'),
(686, 'مهدي شعباني', '', '', 'استوار دوم', '403504361', '938880787'),
(687, 'ابوذر كاظمي', '', '', 'استوار يكم', '404010153', '9118818311'),
(688, 'حامد مهربان ', '', '', 'استوار دوم', '404084318', '911235749'),
(689, 'محمد موسي پور', '', '', 'گروهبانيكم ', '404653957', '9304185899'),
(690, 'شايان اسد', '', '', 'ستوانيكم ', '403773955', '9119838542'),
(691, 'ابراهيم كورده ', '', '', 'استوار دوم', '404219765', '9118360845'),
(692, 'علي مدد فياض', 'علي مدد فياض', 'همکار', 'سرهنگ دوم', '402479565', '9113413632'),
(693, 'حسین علیپور', 'حسین علیپور', 'همکار', 'سرهنگ دوم', '402254531', '9111448449'),
(694, 'مجيد کوه پيما ', 'مجيد کوه پيما ', 'همکار', 'سرهنگ دوم', '403207688', '9118831847'),
(695, 'علي حسيني', 'علي حسيني', 'همکار', 'سرهنگ دوم', '403180579', '9116533977'),
(696, 'صنمبر عليجاني', 'صنمبر عليجاني', 'همکار', 'كارمند رتبه 15', '400165154', '9112437128'),
(697, 'زيور آقاجاني', 'زيور آقاجاني', 'همکار', 'كارمند رتبه 15', '400164976', '9111457699'),
(698, 'معصومه شعبانپور', 'معصومه شعبانپور', 'همکار', 'کارمند رتبه 15', '400167412', '9112400566'),
(699, 'فریدون دستگشاده ', 'فریدون دستگشاده ', 'همکار', 'سرهنگ دوم', '403180737', '9111450955'),
(700, 'عباس بابايي', 'عباس بابايي', 'همکار', 'سرگرد', '403367709', '9119290648'),
(701, 'محمد رضا امیدی راد', 'محمد رضا امیدی راد', 'همکار', 'سرگرد', '402721870', '9112425483'),
(702, 'اسداله خندان', 'اسداله خندان', 'همکار', 'سرگرد', '402138579', '9119031804'),
(703, 'خدايار براري', 'خدايار براري', 'همکار', 'سرگرد', '403480691', '9112470650'),
(704, 'قاسم احمدي', 'قاسم احمدي', 'همکار', 'سرگرد', '402199593', '9111405720'),
(705, 'رضا ملک محمدی', 'رضا ملک محمدی', 'همکار', 'سرگرد', '402427632', '9112400554'),
(706, 'سليمان رستمي', 'سليمان رستمي', 'همکار', 'كارمند رتبه 14', '400186029', '9111457193'),
(707, 'بهرام آدينه زاده', 'بهرام آدينه زاده', 'همکار', 'سروان ', '402283968', '9112427764'),
(708, 'احمد اميري', 'احمد اميري', 'همکار', 'سروان', '402880764', '9119335606'),
(709, 'اسماعیل اله بهداشتي', 'اسماعیل اله بهداشتي', 'همکار', 'سروان', '402199581', '9119444469'),
(710, 'رمضان شاهنظزي', 'رمضان شاهنظزي', 'همکار', 'سروان', '402315921', '9111448391'),
(711, 'مهدی دهسال', 'مهدی دهسال', 'همکار', 'سروان ', '402237934', '9111486686'),
(712, 'حميد رضا حسن پور', 'حميد رضا حسن پور', 'همکار', 'سروان ', '403406399', '9362149224'),
(713, 'فاضل فرجي', 'فاضل فرجي', 'همکار', 'سروان', '403434050', '9112427037'),
(714, 'حمید مرادی', 'حمید مرادی', 'همکار', 'سروان', '403078748', '9111447187'),
(715, 'غلامرضا قربان زاده', 'غلامرضا قربان زاده', 'همکار', 'سروان', '402237089', '9111856239'),
(716, 'حسن جعفري', 'حسن جعفري', 'همکار', 'سروان', '403632510', '9112428284'),
(717, 'مصيب محمد پور', 'مصيب محمد پور', 'همکار', 'سروان', '402293263', '9116712378'),
(718, 'رضا رحمتي', 'رضا رحمتي', 'همکار', 'سروان', '403372572', '9119468700'),
(719, 'عزيزالله رحماني', 'عزيزالله رحماني', 'همکار', 'كارمند رتبه 13', '402326232', '9116167964'),
(720, 'شهلا جانعلی پور', 'شهلا جانعلی پور', 'همکار', 'کارمند رتبه 13', '400238996', '9113433674'),
(721, 'علي رمضاني', 'علي رمضاني', 'همکار', 'کارمند رتبه 13', '401188009', '9117569952'),
(722, 'اسد عليزاده سيزرود ', 'اسد عليزاده سيزرود ', 'همکار', 'ستوانيكم', '403508160', '9119456259'),
(723, 'سلمان منزوي', 'سلمان منزوي', 'همکار', 'ستوانيكم', '402963396', '9112426596'),
(724, 'جواد مهدي پور', 'جواد مهدي پور', 'همکار', 'ستوانيكم', '403770371', '9118268911'),
(725, 'احمد مهدوی', 'احمد مهدوی', 'همکار', 'ستوانيكم', '401536152', '91134301490'),
(726, 'ابراهيم پورحسن', 'ابراهيم پورحسن', 'همکار', 'ستوانيكم', '402398589', '9352807574'),
(727, 'علي آپرويز ', 'علي آپرويز ', 'همکار', 'ستوانيكم', '403842072', '9113430392'),
(728, 'ستار اشکانی', 'ستار اشکانی', 'همکار', 'ستوانيكم', '403045299', '9116152189'),
(729, 'ياسر علي نيا', 'ياسر علي نيا', 'همکار', 'ستوانيكم', '403149664', '9112415128'),
(730, 'عليرضا قرباني بلدسر', 'عليرضا قرباني بلدسر', 'همکار', 'ستوانيكم', '402713835', '9113437512'),
(731, 'علي عليدخت', 'علي عليدخت', 'همکار', 'ستوانيكم', '404334165', '9364833266'),
(732, 'ايمان طاهري', 'ايمان طاهري', 'همکار', 'ستوانيكم', '403418596', '9013720855'),
(733, 'اسماعيل اميري', 'اسماعيل اميري', 'همکار', 'ستوانيكم', '403461799', '9112440848'),
(734, 'خيراله كريمي', 'خيراله كريمي', 'همکار', 'ستوانيكم', '404466306', '9193091938'),
(735, 'ابوذر دوهندو', 'ابوذر دوهندو', 'همکار', 'ستوانيكم', '403596450', '9114305693'),
(736, 'حسين سپهري نيا', 'حسين سپهري نيا', 'همکار', 'ستوانيكم', '402538247', '9360053307'),
(737, 'رضا راهمي گلسفيدي', 'رضا راهمي گلسفيدي', 'همکار', 'ستوانيكم', '404266720', '9112451542'),
(738, 'احمد پرسه', 'احمد پرسه', 'همکار', 'ستوانيكم', '403561010', '9112411164'),
(739, 'آيت پورنقدي', 'آيت پورنقدي', 'همکار', 'ستوانيكم', '403507878', '9112427176'),
(740, 'مقداد صنايع', 'مقداد صنايع', 'همکار', 'ستوانيكم', '403417555', '9118444424'),
(741, 'منصور رجبی', 'منصور رجبی', 'همکار', 'ستوانيكم', '402524431', '9127821854'),
(742, 'مجتبی حسن نیا', 'مجتبی حسن نیا', 'همکار', 'ستوانيكم', '404195580', '9118429604'),
(743, 'نوراله پور آقاجاني', 'نوراله پور آقاجاني', 'همکار', 'ستوانيكم', '402832642', '9116951662'),
(744, 'امين شهدي', 'امين شهدي', 'همکار', 'ستوانيكم ', '403418377', '9119440429'),
(745, 'حامد مباركي املشي', 'حامد مباركي املشي', 'همکار', 'ستوانيكم', '403596796', '9119442791'),
(746, 'عسکر محمدنسب', 'عسکر محمدنسب', 'همکار', 'ستوانيكم', '402714086', '9112429914'),
(747, 'محمد مهدي زارع', 'محمد مهدي زارع', 'همکار', 'ستواندوم', '403332318', '9117085504'),
(748, 'ابراهيم آقاجاني', 'ابراهيم آقاجاني', 'همکار', 'ستواندوم', '402747109', '9115029714'),
(749, 'کامران علی نیا', 'کامران علی نیا', 'همکار', 'ستواندوم', '402353284', '9119413276'),
(750, 'منصور احمدي', 'منصور احمدي', 'همکار', 'ستواندوم', '402880818', '9195917386'),
(751, 'موسي فدوي', 'موسي فدوي', 'همکار', 'ستواندوم', '40230374', '9112437031'),
(752, 'علی غفاری', 'علی غفاری', 'همکار', 'ستواندوم', '402441902', '9119043674'),
(753, 'مهدي پور مومن كنگاچر  ', 'مهدي پور مومن كنگاچر  ', 'همکار', 'ستواندوم', '402664253', '9117083732'),
(754, 'اسماعیل شفقی', 'اسماعیل شفقی', 'همکار', 'ستواندوم', '403027236', '9114801560'),
(755, 'روح ا.. خزران', 'روح ا.. خزران', 'همکار', 'ستواندوم', '403103731', '9116550394'),
(756, 'مرتضي حاجي مير صادقي', 'مرتضي حاجي مير صادقي', 'همکار', 'ستواندوم', '404466150', '9115476887'),
(757, 'خسرو رجب پور', 'خسرو رجب پور', 'همکار', 'ستواندوم', '402963414', '9111399982'),
(758, 'علي علي نيا', 'علي علي نيا', 'همکار', 'ستواندوم', '402553194', '9111445124'),
(759, 'علي احدي چلارسي ', 'علي احدي چلارسي ', 'همکار', 'ستواندوم', '403167125', '9217650523'),
(760, 'مهرداد شريفي ', 'مهرداد شريفي ', 'همکار', 'ستواندوم', '403027273', '91114509930'),
(761, 'عبدالله مرادنژاد', 'عبدالله مرادنژاد', 'همکار', 'ستواندوم', '403395286', '9112416931'),
(762, 'حسن عشوري لاتي', 'حسن عشوري لاتي', 'همکار', 'ستواندوم', '403596693', '9193498748'),
(763, 'اصغر محمدي', 'اصغر محمدي', 'همکار', 'ستواندوم', '402587015', '09176486762'),
(764, 'قنبر رحماني', 'قنبر رحماني', 'همکار', 'ستواندوم', '403166984', '9111444812'),
(765, 'رضا کریمی', 'رضا کریمی', 'همکار', 'ستواندوم', '403951134', '9118462735'),
(766, 'مظاهر قربانيان', 'مظاهر قربانيان', 'همکار', 'ستوانسوم', '402830530', '9114313017'),
(767, 'فریدون رمضانی', 'فریدون رمضانی', 'همکار', 'ستوانسوم', '402746932', '9116493505'),
(768, 'الياس علي اكبري', 'الياس علي اكبري', 'همکار', 'ستوانسوم', '402587258', '9116004658'),
(769, 'مسعود رضايي', 'مسعود رضايي', 'همکار', 'ستوانسوم', '403950877', '9119413694'),
(770, 'روح الله قائمی', 'روح الله قائمی', 'همکار', 'ستوانسوم', '402783576', '9115526903'),
(771, 'احمد جمالی', 'احمد جمالی', 'همکار', 'ستوانسوم ', '403342555', '9111450631'),
(772, 'محسن پروايي', 'محسن پروايي', 'همکار', 'ستوانسوم', '403382607', '9111405187'),
(773, 'منوچهر پور آقاجاني', 'منوچهر پور آقاجاني', 'همکار', 'ستوانسوم', '403466244', '9114550184'),
(774, 'محمدرضا رحمتي', 'محمدرضا رحمتي', 'همکار', 'ستوانسوم', '403302909', '91167174170'),
(775, 'حسن پوراسماعیلی', 'حسن پوراسماعیلی', 'همکار', 'کارمند رتبه 10', '400405967', '9113401384'),
(776, 'فتح ا... امیری', 'فتح ا... امیری', 'همکار', 'استواریکم', '403631486', '9118418547'),
(777, 'سيد علي حسيني روفچائي ', 'سيد علي حسيني روفچائي ', 'همکار', 'استواريكم', '403560832', '9111388893'),
(778, 'ستار عاشوریان', 'ستار عاشوریان', 'همکار', 'استواريكم', '403716947', '9118103356'),
(779, 'وحيد قاسم زاده', 'وحيد قاسم زاده', 'همکار', 'استواريكم', '403571945', '9118445705'),
(780, 'یونس جهاندیده', 'یونس جهاندیده', 'همکار', 'استواریکم', '403671678', '9119428427'),
(781, 'اسدالله منزوي', 'اسدالله منزوي', 'همکار', 'استواریکم', '403817340', '9386157710'),
(782, 'سجاد اسماعيل زاده', 'سجاد اسماعيل زاده', 'همکار', 'استواریکم', '403883402', '9337620988'),
(783, 'اميد جانعلي زاده', 'اميد جانعلي زاده', 'همکار', 'استواريكم', '403715621', '9112483565'),
(784, 'صادق آهنكار', 'صادق آهنكار', 'همکار', 'استواريكم', '403977081', '9390660475'),
(785, 'مهدي رمضان زاده', 'مهدي رمضان زاده', 'همکار', 'استواردوم', '404185469', '9111406015'),
(786, 'اميد اميدي', 'اميد اميدي', 'همکار', 'استوار دوم', '404256257', '9115015396'),
(787, 'سجاد عباسي مطلاكوه', 'سجاد عباسي مطلاكوه', 'همکار', 'استواردوم', '404151691', '9114630173'),
(788, 'حسين درپسند', 'حسين درپسند', 'همکار', 'استواردوم', '404151551', '9119462246'),
(789, 'محمد عليزاده پرشه ', 'محمد عليزاده پرشه ', 'همکار', 'استواردوم', '404120645', '9118158559'),
(790, 'محمود شريف زاده', 'محمود شريف زاده', 'همکار', 'استواردوم', '404185550', '9117560814'),
(791, 'مهدي شادپور', 'مهدي شادپور', 'همکار', 'استوار دوم', '404219420', '9114554588'),
(792, 'يعقوب قاسمي', 'يعقوب قاسمي', 'همکار', 'استوار دوم', '404151800', '9902706771'),
(793, 'سروش نظري', 'سروش نظري', 'همکار', 'استوار دوم', '404277790', '9332944592'),
(794, 'مهرشاد رضائي صوفي ', 'مهرشاد رضائي صوفي ', 'همکار', 'استواردوم', '404156974', '9118468863'),
(795, 'رضا اسفندياري', 'رضا اسفندياري', 'همکار', 'استواردوم', '404256210', '9116002776'),
(796, 'وحيد عليزاده', 'وحيد عليزاده', 'همکار', 'استوار دوم', '404256749', '9331739261'),
(797, 'هادی نجف پور', 'هادی نجف پور', 'همکار', 'استوار دوم', '404256970', '9118863980'),
(798, 'جواد عليزاده', 'جواد عليزاده', 'همکار', 'استواردوم', '404277390', '9397255018'),
(799, 'رامین نوراله زاده', 'رامین نوراله زاده', 'همکار', 'استواردوم', '404214380', '9118420837'),
(800, 'كامبيز رستم پور', 'كامبيز رستم پور', 'همکار', 'استواردوم', '404277110', '9118458082'),
(801, 'مرتضي هدايت زاده', 'مرتضي هدايت زاده', 'همکار', 'استواردوم', '404277844', '9374221474'),
(802, 'محمد اكبر نژاد', 'محمد اكبر نژاد', 'همکار', 'استواردوم', '404301214', '9118415967'),
(803, 'امير عزيزي', 'امير عزيزي', 'همکار', 'استواردوم', '404302115', '9364424359'),
(804, 'رضا نوروزي', 'رضا نوروزي', 'همکار', 'استواردوم', '404302504', '9399510027'),
(805, 'علي خيري', 'علي خيري', 'همکار', 'استواردوم', '404276980', '9116056720'),
(806, 'نادر علي بابائي', 'نادر علي بابائي', 'همکار', 'استواردوم', '404277376', '9117990496'),
(807, 'سيد فرشاد غياثي ملكوتي', 'سيد فرشاد غياثي ملكوتي', 'همکار', 'استواردوم', '404360334', '9117107401'),
(808, 'محمود محمدي زازلي', 'محمود محمدي زازلي', 'همکار', 'استواردوم', '404360425', '9118072286'),
(809, 'حسین رمضانی', 'حسین رمضانی', 'همکار', 'استواردوم', '404383607', '9114665147'),
(810, 'صابر ملكي فر', 'صابر ملكي فر', 'همکار', 'استواردوم', '404383929', '9118462814'),
(811, 'اسماعيل شفيعي', 'اسماعيل شفيعي', 'همکار', 'استواردوم', '404383711', '9118258674'),
(812, 'محمد اللهي قلعه', 'محمد اللهي قلعه', 'همکار', 'استواردوم', '404449850', '9116296048'),
(813, 'محمد رضا خندان', 'محمد رضا خندان', 'همکار', 'استواردوم', '404416558', '9381350453'),
(814, 'سعيد قاسمي', 'سعيد قاسمي', 'همکار', 'استواردوم', '404151812', '9192592962'),
(815, 'حامد آقاجاني سياه خلكي', 'حامد آقاجاني سياه خلكي', 'همکار', 'استواردوم', '404416303', '9116077312'),
(816, 'حسن بابانيا', 'حسن بابانيا', 'همکار', 'استواردوم', '404483675', '9116508913'),
(817, 'رضا لردي اصلي', 'رضا لردي اصلي', 'همکار', 'استواردوم', '404302334', '9116576920'),
(818, 'روح اله بهاري', 'روح اله بهاري', 'همکار', 'استواردوم', '404372397', '9054718247'),
(819, 'حسن رضايي صوفي', 'حسن رضايي صوفي', 'همکار', 'استواردوم', '404416649', '9115473844'),
(820, 'امیرحسین پاکزاد', 'امیرحسین پاکزاد', 'همکار', 'گروهبانيكم', '404491969', '9014450748'),
(821, 'عبدالله دهپاسي', 'عبدالله دهپاسي', 'همکار', 'گروهبانيكم', '404277030', '9385256583'),
(822, 'محسن یادی', 'محسن یادی', 'همکار', 'کارمندخریدخدمت', '409091600', '9389542985'),
(823, 'اعظم حسن پور', 'اعظم حسن پور', 'همکار', 'کارمند خرید خدمت ', '409072744', '9112427413'),
(824, 'مصطفی نژادعباسی', 'مصطفی نژادعباسی', 'همکار', 'سرهنگ دوم', '403074809', '9352819794'),
(825, 'محمد پورحسین ', 'محمد پورحسین ', 'همکار', 'کارمندرتبه13', '400397223', '9116970292'),
(826, 'صادق فهیمی', 'صادق فهیمی', 'همکار', 'سروان', '403894230', '9116155679'),
(827, 'علی سرابی', 'علی سرابی', 'همکار', 'ستواندوم', '404437045', '9906653199'),
(828, 'محمد اکبردوست', 'محمد اکبردوست', 'همکار', 'استواردوم', '404416352', '9117083432'),
(829, 'حسین  شریف زاده', 'حسین  شریف زاده', 'همکار', 'ستوانیکم', '403634864', '9118445475'),
(830, 'احمد فاتح', 'احمد فاتح', 'همکار', 'سرهنگ دوم', '403093993', '91123819670'),
(831, 'بهروزمحمودخواه', 'بهروزمحمودخواه', 'همکار', 'سروان ', '403207937', '9114283273'),
(832, 'میلاداصغرخواه', 'میلاداصغرخواه', 'همکار', 'استواریکم', '404466161', '9117200849'),
(833, 'رضا اسلامی پرست', 'رضا اسلامی پرست', 'همکار', 'استواردوم', '404185184', '9357093664'),
(834, 'مهدی داودی نیا', 'مهدی داودی نیا', 'همکار', 'استواردوم', '404219212', '9118184501'),
(835, 'میثم سعادتخواه', 'میثم سعادتخواه', 'همکار', 'گروهبانیکم', '404527769', '9119452761'),
(836, 'اسماعیل قربانی', 'اسماعیل قربانی', 'همکار', 'گروهبانیکم', '404527850', '9116494438'),
(837, 'جوادابراهیمیان', 'جوادابراهیمیان', 'همکار', 'استواردوم', '404359850', '9352909981'),
(838, 'علی رنجور', 'علی رنجور', 'همکار', 'سروان', '403227640', '9114797873'),
(839, 'افشین ولی زاده', 'افشین ولی زاده', 'همکار', 'استواردوم', '404277856', '9116195898'),
(840, 'سید زهرا حسنی', ' استواردوم سروش نظری ', 'همسر', 'استوار دوم', '404277790', '9363276460'),
(841, 'سيده زهرا قريشي ملاطي', ' سروان مصیب محمدپور', 'همسر', 'سروان', '402293263', '91167123780'),
(842, 'آيدا يوسفي', ' ستواندوم مرتضي حاجي مير صادقي', 'همسر', 'ستواندوم', '404466150', '91154768870'),
(843, 'كلثوم قرباني شمشادسرا ', 'ستواندوم رحيم بابايي', 'همسر', '', '', '9108154131'),
(844, 'سونيا متقي پور ', 'استواردوم امير عزيزي', 'همسر', 'استواردوم', '404302115', '9115459254'),
(845, 'زهرا عوض خواه ', 'استواردوم علي خيري', 'همسر', 'استواردوم', '404276980', '9226747950'),
(846, 'سيده زهرا حسيني', 'ستواندوم سید عادل موسوی', 'همسر', '', '', '9116505415'),
(847, 'حليمه اسماعيلي', 'ستوانیکم علي فرج زاده لشکان', 'همسر', '', '', '9117165650'),
(848, 'نسيبه جعفري', 'ستواندوم ابراهيم آقاجاني', 'همسر', 'ستواندوم', '402747109', '9112429714'),
(849, 'زهرا صبوئي', 'استواردوم سجاد قلي نيا شوكي', 'همسر', '', '', '9368104524'),
(850, 'طاهره اروندي خرشتمي', 'سروان غلامرضا قربان زاده', 'همسر', 'سروان', '402237089', '93056823160'),
(851, 'صغري شريفي', 'ستونیکم سلمان منزوي', 'همسر', 'ستوانيكم', '402963396', '91124265960'),
(852, 'عطيه اميري تليكاني ', 'ستوانیکم ايمانعلي نصيري', 'همسر', '', '', '9111452081'),
(853, 'حديثه قلي نياشوكي ', 'ستوانسوم محسن پروايي', 'همسر', 'ستوانسوم', '403382607', '9114305334'),
(854, 'زيبا مهري', 'استواردوم اسماعيل نظري', 'همسر', '', '', '9115453268'),
(855, 'هانيه توكلي سويري ', 'استواردوم مرتضي تقي نژاد', 'همسر', 'استواريكم', '403996853', '9118398151'),
(856, 'آرزو عبدالهي فشكل پشته ', 'سرهنگ دوم فریدون دستگشاده', 'همسر', 'سرهنگ دوم', '403180737', '91114509550'),
(857, 'فتانه قاضي', 'ستوانیکم ابراهيم پورحسن', 'همسر', 'ستوانيكم', '402398589', '93528075740'),
(858, 'طيبه دلخوش', 'ستواندوم اصغر محمدي', 'همسر', 'ستواندوم', '402587015', '9176486762'),
(859, 'هانيه حدادي املشي ', 'استواردوم مهرشاد رضائي صوفي', 'همسر', 'استواردوم', '404156974', '9118468862'),
(860, 'الهام بحركاظمي ', 'ستواندوم منصور احمدي', 'همسر', 'ستواندوم', '402880818', '9378190828'),
(861, 'حامد طبائی فر', 'حامد طبائی فر', 'همکار', 'ستوانیکم', '402585997', '9111341258'),
(862, 'مهدی امام پناهی', 'محسن امام پناهی', 'فرزند', '', '', '9113817432'),
(863, 'عطیه قربانی', 'حیدر اکبری', 'همسر', 'کارمند 12', '400399402', '9116766173'),
(864, 'نادر رجب پور', 'نادر رجب پور', 'سرپرست', 'استواردوم', '404277091', '9118075928'),
(865, 'محسن بیاتی', 'محسن بیاتی', 'سرپرست', 'ستواندوم', '403638020', '9138720513'),
(866, 'سیده صغرا جلالی', 'علی بهزادی', 'همسر', 'سروان', '402252194', '9111383185'),
(867, 'معصومه زارع', 'فرزاد فیاض', 'همسر', 'ستوانیکم', '402797459', '9111854206'),
(868, 'الهام فتحی', 'سجاد بخشی زاده', 'همسر', 'ستواندوم', '403883487', '9118826010'),
(869, 'فرشید هادی پور', 'فرشید هادی پور', 'سرپرست', 'سرگرد', '403679227', '9112329373'),
(870, 'قاسم مجیدی', 'قاسم مجیدی', 'سرپرست', 'سروان', '403554420', '9302427959'),
(871, 'رضا اورنگ', 'رضا اورنگ', 'سرپرست', 'ستواندوم', '402922450', '9118857211'),
(872, 'لیلا عسلی', 'محمد جواد خسرو نیا', 'همسر', 'ستوانیکم', '403744244', '9369331443'),
(873, 'حسین وحدت نیا', 'حسین وحدت نیا', 'سرپرست', 'استواردوم', '404084422', '9374596214'),
(874, 'ام البنین سبحانی', 'غلامحسین میرزایی', 'همسر', 'ستوانیکم', '402442062', '9128591270'),
(875, 'نیما نوروزی', 'نیما نوروزی', 'سرپرست', 'ستوانیکم', '404195700', '9369675506'),
(876, 'سالار اصلاحی', 'سالار اصلاحی', 'سرپرست', 'ستواندوم', '402963232', '9370960341'),
(877, 'فروزان معینی ', 'ابراهیم آزاده', 'همسر', 'سرهنگ دوم', '402873474', '9112811422'),
(878, 'رضا کریم نظر', 'رضا کریم نظر', 'سرپرست', 'ستوانیکم', '404401695', '9118914149'),
(879, 'رحیم نیک کار', 'رحیم نیک کار', 'سرپرست', 'ستوانیکم', '404401695', '9132427831'),
(880, 'مجتبی محمودی', 'مجتبی محمودی', 'سرپرست', 'ستوانسوم', '404010177', '9112325639'),
(881, 'اسماعیل لطیفی', 'اسماعیل لطیفی', 'سرپرست', 'استواریکم', '403817260', '9119389047'),
(882, 'سید رضا برنده', 'سید رضا برنده', 'سرپرست', 'استواردوم', '404083648', '9384360414'),
(883, 'عباس قویدل', 'عباس قویدل', 'سرپرست', 'ستوانسوم', '403508299', '9116482064'),
(884, 'کیومرث پرکان', 'کیومرث پرکان', 'سرپرست', 'استواردوم', '403716042', '9358579514'),
(885, 'منصور محبی', 'منصور محبی', 'سرپرست', 'ستواندوم', '404168885', '9117083365'),
(886, 'ندا پیراسته', 'علیرضا علوی زاده', 'همسر', 'سروان', '403797418', '9191858526'),
(887, 'عرفان ابراهیمی', 'عرفان ابراهیمی', 'سرپرست', 'ستوانیکم', '404195554', '9118077248'),
(888, 'محمد علی عاصی شاد', 'محمد علی عاصی شاد', 'سرپرست', 'سروان', '402539720', '9118495034'),
(889, 'مجتبی اسدی', 'مجتبی اسدی', 'سرپرست', 'استواردوم', '404276700', '9111361076'),
(890, 'ایوب صفاجو', 'ایوب صفاجو', 'سرپرست', 'ستواندوم', '402515247', '9116308438'),
(891, 'سید باقر حسینی', 'سید باقر حسینی', 'سرپرست', 'ستوانیکم', '402391108', '9119386979'),
(892, 'سید حمزه مرتضوی', 'سید حمزه مرتضوی', 'سرپرست', 'استواردوم', '404416972', '9362518653'),
(893, 'مرتضی یکتا', 'مرتضی یکتا', 'سرپرست', 'ستواندوم', '403418018', '9371645290'),
(894, 'کاظم رفعتی', 'کاظم رفعتی', 'سرپرست', 'ستواندوم', '403079017', '99110848480'),
(895, 'ابراهیم تائب', 'ابراهیم تائب', 'سرپرست', 'استواردوم', '404301299', '9117067663'),
(896, 'محمدرضا بخشی', 'محمد رضا بخشی', 'سرپرست', 'استواردوم', '404449930', '9363819257'),
(897, 'ناهید یوسفی پور', 'کریم بالاپور', 'همسر', 'ستواندوم', '402984570', '9118206239'),
(898, 'حمید آقالایی', 'حمید آقالایی', 'سرپرست', 'ستوان یکم', '403561290', '9116836202'),
(899, 'سید احمد شهابی', 'سید احمد شهابی', 'سرپرست', 'ستواندوم', '403847598', '9115447038'),
(900, 'یوسف کریمی', 'یوسف کریمی', 'سرپرست', 'سرگرد', '403208050', '9116954070'),
(901, 'حمید انسان دوست', 'حمید انسان دوست', 'سرپرست', 'سرهنگ دوم', '402712764', '9113396487'),
(902, 'عباس علی پناه', 'عباس علی پناه', 'سرپرست', 'سروان', '402399417', '9112327053'),
(903, 'محسن حاجتی', 'محسن حاجتی', 'سرپرست', 'ستوانیکم', '403602607', '9118825837'),
(904, 'محمد امین برزگر', 'محمد امین برزگر', 'سرپرست', 'استوار دوم', '404416418', '9308694129'),
(905, 'سید امین آل یاسین', 'سید امین آل یاسین', 'سرپرست', 'استوار دوم', '404449801', '9116204913'),
(906, 'جواد رمضانی', 'جواد رمضانی', 'سرپرست', 'سروان', '403679343', '9112411876'),
(907, 'حسن ارشد', 'حسن ارشد', 'سرپرست', 'سروان', '402500219', '9113397220'),
(908, 'مهدی حسنی', 'مهدی حسنی', 'سرپرست', 'ستواندوم', '403560819', '9118366102'),
(909, 'حسن امیرپور', 'حسن امیرپور', 'سرپرست', 'ستوانیکم', '402853347', '9171698994'),
(910, 'مرتضی حسین زاده', 'مرتضی حسین زاده', 'سرپرست', 'استواردوم', '404185342', '9397031535'),
(911, 'رضا مختاری', 'رضا مختاری', 'سرپرست', 'ستوانیکم', '404466320', '9116489652'),
(912, 'محمد عباسی', 'محمد عباسی', 'سرپرست', 'ستوانیکم', '404401506', '9118875610'),
(913, 'رضا رمضانی', 'رضا رمضانی', 'سرپرست', 'گروهبانیکم', '404501379', '9116010730'),
(914, 'محمد میرزایی', 'محمد میرزایی', 'سرپرست', 'ستوانسوم', '403333839', '9116035668'),
(915, 'شعبان مهری', 'شعبان مهری', 'سرپرست', 'کارمند12', '400174313', '9118143634'),
(916, 'فاطمه ذکی بخش', 'علیرضازکی بخش', 'دختر', 'ستوانیکم', '403079236', '9113394512'),
(917, 'ارمان میزبان', 'ارمان میزبان', 'سرپرست', 'استواردوم', '404277777', '9116106051'),
(918, 'مجتبی محبوب', 'مجتبی محبوب', 'سرپرست', 'استواریکم', '403782658', '9903980126'),
(919, 'یوسف پورموسی زاده', 'یوسف پورموسی زاده', 'سرپرست', 'کارمند11', '400357274', '9111302644'),
(920, 'هادی ساعدی', 'هادی ساعدی', 'سرپرست', 'ستوانسوم', '403634438', '9336219539'),
(921, 'غلام همت پور چناری', 'غلام همت پور چناری', 'سرپرست', 'استواردوم', '402742320', '9112345068'),
(922, 'ایمان عبدی', 'ایمان عبدی', 'سرپرست', 'ستوانیکم', '403461672', '9112395855'),
(923, 'حسن آیین', 'حسن آیین', 'سرپرست', 'سروان', '401742803', '9119849239'),
(924, 'حسن صالح', 'حسن صالح', 'سرپرست', 'سروان', '402375279', '9111372672'),
(925, 'معصومه صالح', 'حسن صالح', 'دختر', 'سروان', '402375279', '9111372673'),
(926, 'محمد علی محبی', 'محمد علی محبی', 'سرپرست', 'ستوانسوم', '403507842', '9119279689'),
(927, 'هاجر رضازاد', 'محمد علی محبی', 'همسر', 'ستوانسوم', '403507842', '9119279690'),
(928, 'ستایش محبی', 'محمد علی محبی', 'پسر', 'ستوانسوم', '403507842', '9119279691'),
(929, 'علی شعبانی', 'علی شعبانی', 'سرپرست', 'استواریکم', '403692062', '9159689483'),
(930, 'داود هوشیار محبوب', 'داود هوشیار محبوب', 'سرپرست', 'استواردوم', '404084410', '9119329632'),
(931, 'سپیده غلامی پور ', 'داود هوشیار محبوب', 'همسر', 'استواردوم', '404084410', '9119329633'),
(932, 'علی ملکزاده', 'علی ملکزاده', 'سرپرست', 'ستوانیکم', '403395328', '9119874347'),
(933, 'حامد خوشکار', 'حامد خوشکار', 'سرپرست', 'استواردوم', '404256506', '936245053'),
(934, 'محمد رضا محسنی', 'محمد رضا محسنی', 'سرپرست', 'استواردوم', '404416923', '9302255849'),
(935, 'شهرام شیعه نژاد', 'شهرام شیعه نژاد', 'سرپرست', 'ستواندوم', '402588299', '9115494250'),
(936, 'معصومه پورجمشیدی', 'شهرام شیعه نژاد', 'همسر', 'ستواندوم', '402588299', '9115494251'),
(937, 'زهرا شیعه نژاد', 'شهرام شیعه نژاد', 'دختر', 'ستواندوم', '402588299', '9115494252'),
(938, 'رضا نادم', 'رضا نادم', 'سرپرست', 'بازنشسته', '22260051890', '9111340869'),
(939, 'وحید اصلانی', 'وحید اصلانی', 'سرپرست', 'بازنشسته', '22401128864', '9113395257'),
(940, 'الیاس ارشدی', 'الیاس ارشدی', 'سرپرست', 'بازنشسته', '22107060157', '9111304407'),
(941, 'صفر جوادی', 'صفر جوادی', 'سرپرست', 'بازنشسته', '22401053013', '9113480840'),
(942, 'حسین حسین زاده', 'حسین حسین زاده', 'سرپرست', 'بازنشسته', '22401078502', '9113479817'),
(943, 'محمد خداجو', 'محمد خداجو', 'سرپرست', 'بازنشسته', '22401175160', '9113480964'),
(944, 'علی اکبر شعبانی', 'علی اکبر شعبانی', 'سرپرست', 'بازنشسته', '22248013382', '9119372250'),
(945, 'سید طاهر شریفی', 'سید طاهر شریفی', 'سرپرست', 'بازنشسته', '22258021708', '9113337794'),
(946, 'پوران درویشی', 'پوران درویشی', 'سرپرست', 'بازنشسته', '22400170575', '9119354201'),
(947, 'محمدعلی ذاکری', 'محمدعلی ذاکری', 'سرپرست', 'بازنشسته', '22201095405', '9118270394'),
(948, 'غلامرضا رضائی', 'غلامرضا رضائی', 'سرپرست', 'بازنشسته', '22260063388', '9112384473'),
(949, 'محمد رحمان پور', 'محمد رحمان پور', 'سرپرست', 'بازنشسته', '22401143634', '9118258057'),
(950, 'اسماعیل رحمتی', 'اسماعیل رحمتی', 'سرپرست', 'بازنشسته', '22401164716', '9112382915'),
(951, 'محمد شیرمحمدی', 'محمد شیرمحمدی', 'سرپرست', 'بازنشسته', '22107279170', '9119400585'),
(952, 'حسین اصغری', 'محمود اصغری', 'فرزند', 'بازنشسته', '10325378100', '9113355163'),
(953, 'محمدعلی عالم خوش خلق', 'محمدعلی عالم خوش خلق', 'سرپرست', 'بازنشسته', '22246001121', '9116035079'),
(954, 'محسن نظر علی دخت', 'محسن نظر علی دخت', 'سرپرست', 'بازنشسته', '22401078526', '9118107798'),
(955, 'غلامحسین احمدجانی', 'غلامحسین احمدجانی', 'سرپرست', 'بازنشسته', '22107011457', '9118258029'),
(956, 'عباس اشکانی', 'عباس اشکانی', 'سرپرست', 'بازنشسته', '22401110690', '9112394969'),
(957, 'علی اکبر جمالی', 'علی اکبر جمالی', 'سرپرست', 'بازنشسته', '22263035756', '9112384922'),
(958, 'طاهر پورکریمیان', 'طاهر پورکریمیان', 'سرپرست', 'بازنشسته', '22262031354', '9113855592'),
(959, 'ام لیلا حسن زاده', 'ام لیلا حسن زاده', 'سرپرست', 'بازنشسته', '22400165543', '9112826324'),
(960, 'ابوالقاسم حسینی پور', 'ابوالقاسم حسینی پور', 'سرپرست', 'بازنشسته', '22103145077', '9389802120'),
(961, 'ناصر حقیقت طلب', 'ناصر حقیقت طلب', 'سرپرست', 'بازنشسته', '22253020106', '9119329638'),
(962, 'ابراهیم شفیع پور', 'ابراهیم شفیع پور', 'سرپرست', 'بازنشسته', '22107291015', '9113396396'),
(963, 'یونس سحرخیز', 'یونس سحرخیز', 'سرپرست', 'بازنشسته', '22263029331', '9112395025'),
(964, 'ولی خوش گفتار', 'ولی خوش گفتار', 'سرپرست', 'بازنشسته', '22261016539', '9112385456'),
(965, 'احمد دریادل', 'احمد دریادل', 'سرپرست', 'بازنشسته', '22402306373', '9111490620'),
(966, 'نازعلی رحمانی', 'نازعلی رحمانی', 'سرپرست', 'بازنشسته', '22250088910', '9117069366'),
(967, 'محرمعلی راستاد', 'محرمعلی راستاد', 'سرپرست', 'بازنشسته', '22262026097', '9113318766'),
(968, 'سیف اله روئین تن', 'سیف اله روئین تن', 'سرپرست', 'بازنشسته', '22256001032', '9112385106'),
(969, 'حسین شکوری', 'حسین شکوری', 'سرپرست', 'بازنشسته', '22401164923', '9012361191'),
(970, 'فاطمه شعبانیان', 'محمود اصغری', 'همسر', 'بازنشسته', '103253871', '9113481104'),
(971, 'محمدرضا اصغری', 'محمود اصغری', 'فرزند', 'بازنشسته', '22103253781', '9385793031'),
(972, 'شجاع عاشوری', 'شجاع عاشوری', 'سرپرست', 'بازنشسته', '22401079087', '9111373772'),
(973, 'مرتضی رمضان نژاد', 'سرپرست', 'سرپرست', 'سرهنگ2', '402962987', '9112353727'),
(974, 'رضا صابری', 'سرپرست', 'سرپرست', 'ستوانیکم', '4030716236', '9112341966'),
(975, 'علی رمضانی', 'سرپرست', 'سرپرست', 'سرهنگ2', '401174503', '91138774187'),
(976, 'اروین پورحنیفه', 'سرپرست', 'سرپرست', '', '4044231153', '9307329651'),
(977, 'محسن نشترودی', 'سرپرست', 'سرپرست', 'ستوانیکم', '402786012', '9116539406'),
(978, 'مهرداد طاهری', 'سرپرست', 'سرپرست', 'سروان', '404025454', '9117190310'),
(979, 'امین قربانی', 'سرپرست', 'سرپرست', 'ستوانیکم', '402486508', '9113384055'),
(980, 'ابوذر عاطفی', 'سرپرست', 'سرپرست', 'ستوانیکم', '403737689', '9112383715'),
(981, 'امیر رضایی', 'سرپرست', 'سرپرست', 'ستوانیکم', '403158926', '9118434303'),
(982, 'محمدعلی زارع', 'سرپرست', 'سرپرست', 'سرهنگ2', '402341026', '9113390314'),
(983, 'کامبیز غلامی فرد', 'سرپرست', 'سرپرست', 'سرگرد', '402713770', '9112382163'),
(984, 'سید باقر قمری ', 'سرپرست', 'سرپرست', 'کارمند16', '402326402', '9119391434'),
(985, 'رضا فلاح', 'سرپرست', 'سرپرست', 'کارمند14', '400297915', '9111375663'),
(986, 'سیما سلیمانی', 'سرپرست', 'سرپرست', 'کارمند15', '400251435', '9371804730'),
(987, 'خدیجه احدی', 'سرپرست', 'سرپرست', '', '404617266', '9035948131'),
(988, 'ارش طالبیان', 'سرپرست', 'سرپرست', 'سرگرد', '403180786', '9360153609'),
(989, 'میثم پورحسن', 'سرپرست', 'سرپرست', 'ستوان 3', '400344516', '9115504923'),
(990, 'همزه علی کریمی', 'سرپرست', 'سرپرست', 'سرهنگ2', '403046565', '9112427356'),
(991, 'رسول حسن پور', 'سرپرست', 'سرپرست', 'ستواندوم', '403507430', '9113491264'),
(992, 'عیسی پیله ور', 'سرپرست', 'سرپرست', 'سرگرد', '402720300', '9117106678'),
(993, 'جلیل یعقوبی', 'سرپرست', 'سرپرست', 'سرگرد', '403372717', '9113411573'),
(994, 'مهدی مرادی', 'سرپرست', 'سرپرست', 'ستواندوم', '404339849', '9112366642'),
(995, 'سجاد سلطانی', 'سرپرست', 'سرپرست', 'استواردوم', '404256634', '9359725313'),
(996, 'شهروز پورنجفی', 'سرپرست', 'سرپرست', 'ستوانیکم', '402420121', '9117632924'),
(997, 'لقمان غلامی', 'سرپرست', 'سرپرست', 'سرهنگ', '401468869', '9111351296'),
(998, 'محمد جواد عبدی', 'سرپرست', 'سرپرست', 'سروان', '403302685', '9111395112'),
(999, 'محمد حسین حسینی', 'سرپرست', 'سرپرست', 'ستوانیکم', '403413975', '9304509258'),
(1000, 'مجتبی تقی پور', 'سرپرست', 'سرپرست', 'ستوانیکم', '403560935', '9111497435'),
(1001, 'ابوذر درمانی', 'سرپرست', 'سرپرست', 'ستواندوم', '403462123', '9119458452'),
(1002, 'جواد پهلوان', 'سرپرست', 'سرپرست', 'ستوانیکم', '403577753', '9118446015'),
(1003, 'سیامک محمدی', 'سرپرست', 'سرپرست', 'ستوانیکم', '403089485', '9118091939'),
(1004, 'حسن پرسا', 'سرپرست', 'سرپرست', 'سرگرد', '402879154', '9369387256'),
(1005, 'سید محمد مهدی هادی پور', 'سرپرست', 'سرپرست', 'استواردوم', '404480352', '9119420408'),
(1006, 'حمیدرضا طالبی', 'سرپرست', 'سرپرست', 'سروان', '403727180', '9371885485'),
(1007, 'هادی سلیمانی', 'سرپرست', 'سرپرست', 'سرهنگ2', '403180634', '9111841590'),
(1008, 'حسن مرادی', 'سرپرست', 'سرپرست', 'سرهنگ2', '403085911', '9199240711'),
(1009, 'مجتبی کاوش', 'سرپرست', 'سرپرست', 'ستوانیکم', '403392479', '9127868395'),
(1010, 'سینا حبیب زاده', 'سرپرست', 'سرپرست', 'گروهبانيكم', '404564742', '9118379287'),
(1011, 'هادی صفری', 'سرپرست', 'سرپرست', 'سرگرد', '400273509', '9113383150'),
(1012, 'سید مرتضی مهدی زاده', 'سرپرست', 'سرپرست', 'روحاني15', '400332230', '9111357736'),
(1013, 'قاسم رافعی', 'سرپرست', 'سرپرست', 'رتبه14', '400399207', '9015483091'),
(1014, 'عطاالله وفادار', 'سرپرست', 'سرپرست', 'ستواندوم', '404257055', '9119382457'),
(1015, 'حسین صفری بازرگانی', 'سرپرست', 'سرپرست', 'ستواندوم', '402664230', '9112435177'),
(1016, 'محمدکاظم ثانی', 'سرپرست', 'سرپرست', 'سروان', '402283993', '9113439472'),
(1017, 'شهرام طاهریان', 'سرپرست', 'سرپرست', '', '402661800', '9112435202'),
(1018, 'مازیار غفاری پور', '*', 'سرپرست', 'ستوان سوم', '402980813', '9119376871'),
(1019, 'aaaaa', '*', 'سرپرست', 'سرهنگ2', '402980813', '9019077366'),
(1020, 'آقای ماهوتی', '*', '*', '*', '402980813', '9389512748');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `tbl_ar`
--
ALTER TABLE `tbl_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_audiobook`
--
ALTER TABLE `tbl_audiobook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_carton`
--
ALTER TABLE `tbl_carton`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_li_mafatih`
--
ALTER TABLE `tbl_li_mafatih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_li_nahj`
--
ALTER TABLE `tbl_li_nahj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_li_quran`
--
ALTER TABLE `tbl_li_quran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_li_resale`
--
ALTER TABLE `tbl_li_resale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_magazin`
--
ALTER TABLE `tbl_magazin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_ne_fars`
--
ALTER TABLE `tbl_ne_fars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_fory`
--
ALTER TABLE `tbl_ne_fory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_isna`
--
ALTER TABLE `tbl_ne_isna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_jamjam`
--
ALTER TABLE `tbl_ne_jamjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_tabnak`
--
ALTER TABLE `tbl_ne_tabnak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_tasnim`
--
ALTER TABLE `tbl_ne_tasnim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_varzeshnavad`
--
ALTER TABLE `tbl_ne_varzeshnavad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_varzeshthree`
--
ALTER TABLE `tbl_ne_varzeshthree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ne_yjc`
--
ALTER TABLE `tbl_ne_yjc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nohe`
--
ALTER TABLE `tbl_nohe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_onlineservices`
--
ALTER TABLE `tbl_onlineservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_quran`
--
ALTER TABLE `tbl_quran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_radio`
--
ALTER TABLE `tbl_radio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_chef`
--
ALTER TABLE `tbl_sa_chef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_employ`
--
ALTER TABLE `tbl_sa_employ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_food`
--
ALTER TABLE `tbl_sa_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_plant`
--
ALTER TABLE `tbl_sa_plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_pray`
--
ALTER TABLE `tbl_sa_pray`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_psychology`
--
ALTER TABLE `tbl_sa_psychology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sa_sport`
--
ALTER TABLE `tbl_sa_sport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_series`
--
ALTER TABLE `tbl_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_telvition`
--
ALTER TABLE `tbl_telvition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_update`
--
ALTER TABLE `tbl_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_ar`
--
ALTER TABLE `tbl_ar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_audiobook`
--
ALTER TABLE `tbl_audiobook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_carton`
--
ALTER TABLE `tbl_carton`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_game`
--
ALTER TABLE `tbl_game`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_li_mafatih`
--
ALTER TABLE `tbl_li_mafatih`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_li_nahj`
--
ALTER TABLE `tbl_li_nahj`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `tbl_li_quran`
--
ALTER TABLE `tbl_li_quran`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tbl_li_resale`
--
ALTER TABLE `tbl_li_resale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_magazin`
--
ALTER TABLE `tbl_magazin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_ne_fars`
--
ALTER TABLE `tbl_ne_fars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_fory`
--
ALTER TABLE `tbl_ne_fory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ne_isna`
--
ALTER TABLE `tbl_ne_isna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_jamjam`
--
ALTER TABLE `tbl_ne_jamjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_tabnak`
--
ALTER TABLE `tbl_ne_tabnak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_tasnim`
--
ALTER TABLE `tbl_ne_tasnim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_varzeshnavad`
--
ALTER TABLE `tbl_ne_varzeshnavad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ne_varzeshthree`
--
ALTER TABLE `tbl_ne_varzeshthree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ne_yjc`
--
ALTER TABLE `tbl_ne_yjc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nohe`
--
ALTER TABLE `tbl_nohe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_onlineservices`
--
ALTER TABLE `tbl_onlineservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_quran`
--
ALTER TABLE `tbl_quran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_radio`
--
ALTER TABLE `tbl_radio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_sa_chef`
--
ALTER TABLE `tbl_sa_chef`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_sa_employ`
--
ALTER TABLE `tbl_sa_employ`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_sa_food`
--
ALTER TABLE `tbl_sa_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sa_plant`
--
ALTER TABLE `tbl_sa_plant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_sa_pray`
--
ALTER TABLE `tbl_sa_pray`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sa_psychology`
--
ALTER TABLE `tbl_sa_psychology`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sa_sport`
--
ALTER TABLE `tbl_sa_sport`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_series`
--
ALTER TABLE `tbl_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_telvition`
--
ALTER TABLE `tbl_telvition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_update`
--
ALTER TABLE `tbl_update`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_audiobook`
--
ALTER TABLE `tbl_audiobook`
  ADD CONSTRAINT `tbl_audiobook_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_carton`
--
ALTER TABLE `tbl_carton`
  ADD CONSTRAINT `tbl_carton_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD CONSTRAINT `tbl_game_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD CONSTRAINT `tbl_movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD CONSTRAINT `tbl_music_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_nohe`
--
ALTER TABLE `tbl_nohe`
  ADD CONSTRAINT `tbl_nohe_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_onlineservices`
--
ALTER TABLE `tbl_onlineservices`
  ADD CONSTRAINT `tbl_onlineservices_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`);

--
-- Constraints for table `tbl_quran`
--
ALTER TABLE `tbl_quran`
  ADD CONSTRAINT `tbl_quran_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_series`
--
ALTER TABLE `tbl_series`
  ADD CONSTRAINT `tbl_series_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
